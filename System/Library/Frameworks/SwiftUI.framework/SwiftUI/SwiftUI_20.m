uint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root> and conformance <> _VariadicView.Tree<A, B>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 assignWithTake for _PresentationTransitionOutputs.Content(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for ReadDestinationsModifier<ResolvedNavigationDestinations>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationDestinationKey>, &type metadata for NavigationDestinationKey, &protocol witness table for NavigationDestinationKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

void UIKitNavigationController.configure(environment:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  if (v3)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
  if ((v8 & 1) == 0)
  {
LABEL_3:
    v4 = [v2 navigationBar];
    [v4 setPreferredBehavioralStyle_];
  }

LABEL_4:
  v5 = 1;
  *(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isDataDriven) = 1;
  v6 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure;
  if ((*(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure) & 1) == 0)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();
    if (v3)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v5 = v7;
  }

  *(v2 + v6) = v5;
}

uint64_t destroy for NavigationState.StackContent.PositionedView(uint64_t a1)
{

  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 24);
    }

    result = *(a1 + 72);
    if (result != 1)
    {
    }
  }

  else if (!*(a1 + 88))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, MEMORY[0x1E6981910], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>, &type metadata for ContainerBackgroundKeys.HostTransparency, &protocol witness table for ContainerBackgroundKeys.HostTransparency, MEMORY[0x1E6980750]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>();
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, MEMORY[0x1E6981910], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>();
    lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>, &type metadata for ContainerBackgroundKeys.HostTransparency, &protocol witness table for ContainerBackgroundKeys.HostTransparency, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of NavigationState.StackContent?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for UINavigationPresentationAdaptor?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

id specialized NavigationStackCoordinator.init(context:navigationAuthority:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x1E69E7D40];
  v11 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x70));
  v11[1] = 0;
  v11[2] = 0;
  *v11 = 0;
  *(v4 + *((*v10 & *v4) + 0x78)) = 2;
  *(v4 + *((*v10 & *v4) + 0x80)) = 0;
  *(v4 + *((*v10 & *v4) + 0x88)) = 0;
  *(v4 + *((*v10 & *v4) + 0x90)) = 0;
  *(v4 + *((*v10 & *v4) + 0x98)) = 0;
  v12 = (v4 + *((*v10 & *v4) + 0xA0));
  *v12 = 0;
  v12[1] = 0;
  *(v4 + *((*v10 & *v4) + 0xA8)) = -1;
  v13 = v4 + *((*v10 & *v4) + 0xB0);
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 3) = 0u;
  *(v13 + 4) = 0u;
  *(v13 + 5) = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 7) = 0u;
  *(v13 + 8) = 0u;
  *(v13 + 9) = 0u;
  *(v13 + 10) = 0u;
  *(v13 + 11) = 0u;
  *(v13 + 12) = 0u;
  *(v13 + 13) = 0u;
  *(v13 + 14) = 0u;
  *(v13 + 15) = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 17) = 0u;
  *(v13 + 18) = 0u;
  *(v13 + 19) = 0u;
  *(v13 + 20) = 0u;
  *(v13 + 21) = 0u;
  *(v13 + 22) = 0u;
  *(v13 + 23) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 25) = 0u;
  *(v13 + 26) = 0u;
  *(v13 + 27) = 0u;
  v13[448] = -1;
  v14 = v4 + *((*v10 & *v4) + 0x60);
  *v14 = a1;
  v14[8] = a2;
  *(v14 + 2) = a3;
  outlined init with copy of NavigationAuthority(a4, v4 + *((*v10 & *v4) + 0x68));
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  outlined destroy of NavigationAuthority(a4);
  return v15;
}

uint64_t outlined destroy of UINavigationPresentationAdaptor?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for UINavigationPresentationAdaptor?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *specialized NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v74 = a3;
  *&v73 = a1;
  *(&v73 + 1) = a2;
  v98 = a4;
  v99 = a5;
  v100 = a6;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x70));
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  *v12 = a4;
  v12[1] = a5;
  v12[2] = a6;

  outlined consume of NavigationStrategy_Phone?(v13, v14, v15);
  v16 = *((*v11 & *v7) + 0x68);
  Strong = swift_weakLoadStrong();
  if (Strong && (v18 = Strong, swift_beginAccess(), v19 = v18[8], v93 = v18[7], v94 = v19, v95[0] = v18[9], *(v95 + 10) = *(v18 + 154), v20 = v18[4], v90 = v18[3], v91 = v20, v21 = v18[6], *v92 = v18[5], *&v92[16] = v21, v22 = v18[2], v88 = v18[1], v89 = v22, outlined init with copy of NavigationState.StackContent?(&v88, v96, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v82 = v93, v83 = v94, v84[0] = v95[0], *(v84 + 10) = *(v95 + 10), v79 = v90, v80 = v91, *v81 = *v92, *&v81[16] = *&v92[16], v77 = v88, v78 = v89, getEnumTag for AccessibilityActionCategory.Category(&v77) != 1))
  {
    v97[6] = v82;
    v97[7] = v83;
    v97[8] = v84[0];
    *(&v97[8] + 10) = *(v84 + 10);
    v97[2] = v79;
    v97[3] = v80;
    v97[4] = *v81;
    v97[5] = *&v81[16];
    v97[0] = v77;
    v97[1] = v78;
    v63 = v7 + *((*v11 & *v7) + 0x60);
    NavigationState.stackContent(for:)(*v63, v63[8], *(v63 + 2), v96);
    v75[6] = v97[6];
    v75[7] = v97[7];
    v76[0] = v97[8];
    *(v76 + 10) = *(&v97[8] + 10);
    v75[2] = v97[2];
    v75[3] = v97[3];
    v75[4] = v97[4];
    v75[5] = v97[5];
    v75[0] = v97[0];
    v75[1] = v97[1];
    outlined destroy of NavigationState(v75);
    if (LOBYTE(v96[28]) != 255)
    {
      memcpy(v97, v96, 0x1C1uLL);
      goto LABEL_7;
    }
  }

  else
  {
    memset(v96, 0, 448);
  }

  v23 = v7 + *((*v11 & *v7) + 0x60);
  v24 = *v23;
  v25 = v23[8];
  v26 = *(v23 + 2);
  if (v25 == 4)
  {
    LOBYTE(v25) = 0;
  }

  *&v97[0] = v24;
  BYTE8(v97[0]) = v25;
  *&v97[1] = v26;
  LOBYTE(v97[28]) = 0;
LABEL_7:
  outlined init with copy of NavigationState.StackContent(v97, v96);
  v27 = *((*v11 & *v7) + 0xB0);
  swift_beginAccess();
  outlined assign with take of NavigationState.StackContent?(v96, v7 + v27, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  swift_endAccess();
  outlined init with copy of NavigationState.Base(v97, &v88);
  v29 = v98;
  v28 = v99;
  v30 = v100;
  outlined init with copy of NavigationState.Base(&v88, &v77);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v28;
  v31[4] = v30;
  v85 = implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply;
  v86 = v31;
  v87 = v30;
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v77, v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);

  swift_bridgeObjectRetain_n();

  specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v77, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  v32 = outlined destroy of NavigationState.StackContent.Views(&v88);
  v34 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v32);
  v36 = v35;
  v38 = v37;
  v39 = v33;
  if ((v35 & 1) != 0 && v33 >= 2u)
  {
    result = outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    __break(1u);
    goto LABEL_16;
  }

  specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v34, v36 & 1, v38, v39);
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  v79 = v90;
  v80 = v91;
  *v81 = *v92;
  *&v81[9] = *&v92[9];
  v77 = v88;
  v78 = v89;
  outlined init with copy of NavigationAuthority(v7 + v16, v96);
  NavigationAuthority.controllerCache.getter();
  v40 = outlined destroy of NavigationAuthority(v96);
  MEMORY[0x1EEE9AC00](v40);
  v72 = &v77;
  MEMORY[0x1EEE9AC00](v41);
  v70 = &v98;
  v71 = &v77;
  MEMORY[0x1EEE9AC00](v42);
  v64[16] = v43;
  v65 = v44;
  v66 = partial apply for closure #1 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:);
  v67 = v45;
  v68 = partial apply for specialized closure #2 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:);
  v69 = v46;
  specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(0, partial apply for closure #1 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:), v64, closure #2 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:), 0);
  v48 = v47;

  specialized NavigationStackCoordinator.configureAsRoot(_:transparentBackground:)(v48, v74 & 1);
  result = [v48 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v50 = result;
  [result setClipsToBounds_];

  v51 = direct field offset for UIHostingController.host;
  v52 = *&v48[direct field offset for UIHostingController.host];
  v75[0] = v29;
  type metadata accessor for MainActor();
  swift_retain_n();
  v53 = v52;
  v54 = static MainActor.shared.getter();
  v55 = swift_allocObject();
  v56 = MEMORY[0x1E69E85E0];
  *(v55 + 16) = v54;
  *(v55 + 24) = v56;
  *(v55 + 32) = 0;
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v58 = static MainActor.shared.getter();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = v56;
  *(v59 + 32) = 0;
  *(v59 + 40) = v57;

  Binding.init(get:set:)();
  v88 = v96[0];
  LOBYTE(v89) = v96[1];
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();

  v96[0] = v75[0];
  UIHostingViewBase.inheritedEnvironment.setter();

  v96[0] = v73;
  v60 = EnvironmentValues.preferenceBridge.getter();
  if (v60)
  {
    v61 = v60;
    v62 = *&v48[v51];
    specialized ViewRendererHost.setPreferenceBridge(_:)(v61);
  }

  outlined destroy of NavigationState.StackContent(v97);
  outlined destroy of NavigationState.StackContent.PositionedView(&v77);
  return v48;
}

{
  v7 = v6;
  v74 = a3;
  *&v73 = a1;
  *(&v73 + 1) = a2;
  v98 = a4;
  v99 = a5;
  v100 = a6;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x70));
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  *v12 = a4;
  v12[1] = a5;
  v12[2] = a6;

  outlined consume of NavigationStrategy_Phone?(v13, v14, v15);
  v16 = *((*v11 & *v7) + 0x68);
  Strong = swift_weakLoadStrong();
  if (Strong && (v18 = Strong, swift_beginAccess(), v19 = v18[8], v93 = v18[7], v94 = v19, v95[0] = v18[9], *(v95 + 10) = *(v18 + 154), v20 = v18[4], v90 = v18[3], v91 = v20, v21 = v18[6], *v92 = v18[5], *&v92[16] = v21, v22 = v18[2], v88 = v18[1], v89 = v22, outlined init with copy of NavigationState.StackContent?(&v88, v96, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v82 = v93, v83 = v94, v84[0] = v95[0], *(v84 + 10) = *(v95 + 10), v79 = v90, v80 = v91, *v81 = *v92, *&v81[16] = *&v92[16], v77 = v88, v78 = v89, getEnumTag for AccessibilityActionCategory.Category(&v77) != 1))
  {
    v97[6] = v82;
    v97[7] = v83;
    v97[8] = v84[0];
    *(&v97[8] + 10) = *(v84 + 10);
    v97[2] = v79;
    v97[3] = v80;
    v97[4] = *v81;
    v97[5] = *&v81[16];
    v97[0] = v77;
    v97[1] = v78;
    v63 = v7 + *((*v11 & *v7) + 0x60);
    NavigationState.stackContent(for:)(*v63, v63[8], *(v63 + 2), v96);
    v75[6] = v97[6];
    v75[7] = v97[7];
    v76[0] = v97[8];
    *(v76 + 10) = *(&v97[8] + 10);
    v75[2] = v97[2];
    v75[3] = v97[3];
    v75[4] = v97[4];
    v75[5] = v97[5];
    v75[0] = v97[0];
    v75[1] = v97[1];
    outlined destroy of NavigationState(v75);
    if (LOBYTE(v96[28]) != 255)
    {
      memcpy(v97, v96, 0x1C1uLL);
      goto LABEL_7;
    }
  }

  else
  {
    memset(v96, 0, 448);
  }

  v23 = v7 + *((*v11 & *v7) + 0x60);
  v24 = *v23;
  v25 = v23[8];
  v26 = *(v23 + 2);
  if (v25 == 4)
  {
    LOBYTE(v25) = 0;
  }

  *&v97[0] = v24;
  BYTE8(v97[0]) = v25;
  *&v97[1] = v26;
  LOBYTE(v97[28]) = 0;
LABEL_7:
  outlined init with copy of NavigationState.StackContent(v97, v96);
  v27 = *((*v11 & *v7) + 0xB0);
  swift_beginAccess();
  outlined assign with take of NavigationState.StackContent?(v96, v7 + v27, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  swift_endAccess();
  outlined init with copy of NavigationState.Base(v97, &v88);
  v29 = v98;
  v28 = v99;
  v30 = v100;
  outlined init with copy of NavigationState.Base(&v88, &v77);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v28;
  v31[4] = v30;
  v85 = partial apply for specialized implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:);
  v86 = v31;
  v87 = v30;
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v77, v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);

  swift_bridgeObjectRetain_n();

  specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(&v77, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  v32 = outlined destroy of NavigationState.StackContent.Views(&v88);
  v34 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v32);
  v36 = v35;
  v38 = v37;
  v39 = v33;
  if ((v35 & 1) != 0 && v33 >= 2u)
  {
    result = outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    __break(1u);
    goto LABEL_16;
  }

  specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v34, v36 & 1, v38, v39);
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v96, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  v79 = v90;
  v80 = v91;
  *v81 = *v92;
  *&v81[9] = *&v92[9];
  v77 = v88;
  v78 = v89;
  outlined init with copy of NavigationAuthority(v7 + v16, v96);
  NavigationAuthority.controllerCache.getter();
  v40 = outlined destroy of NavigationAuthority(v96);
  MEMORY[0x1EEE9AC00](v40);
  v72 = &v77;
  MEMORY[0x1EEE9AC00](v41);
  v70 = &v98;
  v71 = &v77;
  MEMORY[0x1EEE9AC00](v42);
  v64[16] = v43;
  v65 = v44;
  v66 = closure #1 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)partial apply;
  v67 = v45;
  v68 = partial apply for specialized closure #2 in NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:);
  v69 = v46;
  specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(0, closure #1 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:)partial apply, v64, closure #2 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:), 0);
  v48 = v47;

  specialized NavigationStackCoordinator.configureAsRoot(_:transparentBackground:)(v48, v74 & 1);
  result = [v48 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v50 = result;
  [result setClipsToBounds_];

  v51 = direct field offset for UIHostingController.host;
  v52 = *&v48[direct field offset for UIHostingController.host];
  v75[0] = v29;
  type metadata accessor for MainActor();
  swift_retain_n();
  v53 = v52;
  v54 = static MainActor.shared.getter();
  v55 = swift_allocObject();
  v56 = MEMORY[0x1E69E85E0];
  *(v55 + 16) = v54;
  *(v55 + 24) = v56;
  *(v55 + 32) = 0;
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v58 = static MainActor.shared.getter();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = v56;
  *(v59 + 32) = 0;
  *(v59 + 40) = v57;

  Binding.init(get:set:)();
  v88 = v96[0];
  LOBYTE(v89) = v96[1];
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();

  v96[0] = v75[0];
  UIHostingViewBase.inheritedEnvironment.setter();

  v96[0] = v73;
  v60 = EnvironmentValues.preferenceBridge.getter();
  if (v60)
  {
    v61 = v60;
    v62 = *&v48[v51];
    specialized ViewRendererHost.setPreferenceBridge(_:)(v61);
  }

  outlined destroy of NavigationState.StackContent(v97);
  outlined destroy of NavigationState.StackContent.PositionedView(&v77);
  return v48;
}

uint64_t sub_18BE9B42C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BE9B464()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t outlined consume of NavigationStrategy_Phone?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

char *initializeWithCopy for NavigationState.StackContent(char *__dst, unsigned __int8 *__src)
{
  v4 = __src[448];
  if (v4 == 2)
  {
    *__dst = *__src;
    v10 = __dst + 8;
    v11 = *(__src + 3);

    if (v11 == 1)
    {
      v12 = *(__src + 24);
      v13 = *(__src + 56);
      *(__dst + 40) = *(__src + 40);
      *(__dst + 56) = v13;
      *(__dst + 36) = *(__src + 36);
      *v10 = *(__src + 8);
      *(__dst + 24) = v12;
LABEL_34:
      v24 = 2;
LABEL_53:
      __dst[448] = v24;
      return __dst;
    }

    *(__dst + 1) = *(__src + 1);
    if (v11)
    {
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = v11;
      __dst[32] = __src[32];
    }

    else
    {
      *(__dst + 1) = *(__src + 1);
      __dst[32] = __src[32];
    }

    v21 = *(__src + 5);
    __dst[33] = __src[33];
    if (v21)
    {
      v22 = *(__src + 6);
      *(__dst + 5) = v21;
      *(__dst + 6) = v22;

      v23 = *(__src + 8);
      if (v23)
      {
LABEL_30:
        *(__dst + 7) = *(__src + 7);
        *(__dst + 8) = v23;
        __dst[72] = __src[72];

LABEL_33:
        __dst[73] = __src[73];
        goto LABEL_34;
      }
    }

    else
    {
      *(__dst + 40) = *(__src + 40);
      v23 = *(__src + 8);
      if (v23)
      {
        goto LABEL_30;
      }
    }

    *(__dst + 56) = *(__src + 56);
    __dst[72] = __src[72];
    goto LABEL_33;
  }

  if (v4 == 1)
  {
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
    *(__dst + 1) = *(__src + 1);
    *(__dst + 4) = *(__src + 4);
    v5 = *(__src + 6);
    if (v5)
    {
      *(__dst + 10) = *(__src + 10);
      v6 = *(__src + 7);
      v7 = *(__src + 8);
      *(__dst + 6) = v5;
      *(__dst + 7) = v6;
      v8 = *(__src + 9);
      v9 = *(__src + 10);
      *(__dst + 8) = v7;
      *(__dst + 9) = v8;
      *(__dst + 10) = v9;
      *(__dst + 22) = *(__src + 22);
    }

    else
    {
      *(__dst + 40) = *(__src + 40);
      *(__dst + 56) = *(__src + 56);
      *(__dst + 72) = *(__src + 72);
      *(__dst + 22) = *(__src + 22);
    }

    *(__dst + 23) = *(__src + 23);
    v15 = *(__src + 13);
    if (v15)
    {
      *(__dst + 12) = *(__src + 12);
      *(__dst + 13) = v15;
      *(__dst + 14) = *(__src + 14);
    }

    else
    {
      *(__dst + 6) = *(__src + 6);
      *(__dst + 14) = *(__src + 14);
    }

    v16 = __src[208];
    if (__src[240])
    {
      if (v16 == 255)
      {
        *(__dst + 152) = *(__src + 152);
        *(__dst + 168) = *(__src + 168);
        *(__dst + 184) = *(__src + 184);
        *(__dst + 193) = *(__src + 193);
        *(__dst + 120) = *(__src + 120);
        *(__dst + 136) = *(__src + 136);
      }

      else if (v16)
      {
        *(__dst + 15) = *(__src + 15);
        v17 = *(__src + 19);

        if (v17)
        {
          v18 = *(__src + 20);
          *(__dst + 19) = v17;
          *(__dst + 20) = v18;
          (**(v17 - 8))(__dst + 128, __src + 128, v17);
        }

        else
        {
          v27 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v27;
          *(__dst + 20) = *(__src + 20);
        }

        v28 = *(__src + 22);
        if (v28 == 1)
        {
          *(__dst + 168) = *(__src + 168);
        }

        else
        {
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = v28;
        }

        v29 = *(__src + 24);
        v30 = *(__src + 25);
        *(__dst + 23) = *(__src + 23);
        *(__dst + 24) = v29;
        *(__dst + 25) = v30;
        __dst[208] = 1;
      }

      else
      {
        v25 = *(__src + 9);
        *(__dst + 9) = v25;
        (**(v25 - 8))(__dst + 120, __src + 120);
        __dst[208] = 0;
      }

      __dst[240] = 1;
    }

    else
    {
      if (v16 == 255)
      {
        *(__dst + 152) = *(__src + 152);
        *(__dst + 168) = *(__src + 168);
        *(__dst + 184) = *(__src + 184);
        *(__dst + 193) = *(__src + 193);
        *(__dst + 120) = *(__src + 120);
        *(__dst + 136) = *(__src + 136);
      }

      else if (v16)
      {
        *(__dst + 15) = *(__src + 15);
        v19 = *(__src + 19);

        if (v19)
        {
          v20 = *(__src + 20);
          *(__dst + 19) = v19;
          *(__dst + 20) = v20;
          (**(v19 - 8))(__dst + 128, __src + 128, v19);
        }

        else
        {
          v31 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v31;
          *(__dst + 20) = *(__src + 20);
        }

        v32 = *(__src + 22);
        if (v32 == 1)
        {
          *(__dst + 168) = *(__src + 168);
        }

        else
        {
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = v32;
        }

        v33 = *(__src + 24);
        v34 = *(__src + 25);
        *(__dst + 23) = *(__src + 23);
        *(__dst + 24) = v33;
        *(__dst + 25) = v34;
        __dst[208] = 1;
      }

      else
      {
        v26 = *(__src + 9);
        *(__dst + 9) = v26;
        (**(v26 - 8))(__dst + 120, __src + 120);
        __dst[208] = 0;
      }

      v35 = *(__src + 28);
      *(__dst + 27) = *(__src + 27);
      *(__dst + 28) = v35;
      *(__dst + 29) = *(__src + 29);
      __dst[240] = 0;
    }

    v36 = *(__src + 32);
    *(__dst + 31) = *(__src + 31);
    *(__dst + 32) = v36;
    v37 = *(__src + 34);
    *(__dst + 33) = *(__src + 33);
    *(__dst + 34) = v37;
    v38 = *(__src + 36);
    *(__dst + 35) = *(__src + 35);
    *(__dst + 36) = v38;
    v39 = *(__src + 38);
    *(__dst + 37) = *(__src + 37);
    *(__dst + 38) = v39;
    v40 = *(__src + 312);
    *(__dst + 41) = *(__src + 41);
    *(__dst + 312) = v40;
    *(__dst + 42) = *(__src + 42);
    *(__dst + 43) = *(__src + 43);
    __dst[352] = __src[352];
    *(__dst + 353) = *(__src + 353);
    v41 = *(__src + 45);

    if (v41)
    {
      v42 = *(__src + 46);
      v43 = *(__src + 47);
      *(__dst + 45) = v41;
      *(__dst + 46) = v42;
      v44 = *(__src + 48);
      v45 = *(__src + 49);
      *(__dst + 47) = v43;
      *(__dst + 48) = v44;
      v46 = *(__src + 50);
      v47 = *(__src + 51);
      *(__dst + 49) = v45;
      *(__dst + 50) = v46;
      v48 = *(__src + 52);
      *(__dst + 51) = v47;
      *(__dst + 52) = v48;
      *(__dst + 55) = *(__src + 55);
      *(__dst + 424) = *(__src + 424);
    }

    else
    {
      v49 = *(__src + 408);
      *(__dst + 392) = *(__src + 392);
      *(__dst + 408) = v49;
      *(__dst + 424) = *(__src + 424);
      *(__dst + 55) = *(__src + 55);
      v50 = *(__src + 376);
      *(__dst + 360) = *(__src + 360);
      *(__dst + 376) = v50;
    }

    v24 = 1;
    goto LABEL_53;
  }

  return memcpy(__dst, __src, 0x1C1uLL);
}

uint64_t outlined assign with take of NavigationState.StackContent?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI11PPTTestCaseVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI15NavigationStateV12StackContentVSgWOdTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for NavigationState.StackContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 449))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 448);
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

uint64_t storeEnumTagSinglePayload for NavigationState.StackContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 440) = 0;
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 448) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 449) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 449) = 0;
    }

    if (a2)
    {
      *(result + 448) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier()
{
  result = lazy protocol witness table cache variable for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier;
  if (!lazy protocol witness table cache variable for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier);
  }

  return result;
}

char *initializeWithCopy for NavigationState.StackContent.Views.ViewsSequence(char *__dst, unsigned __int8 *__src)
{
  v4 = __src[448];
  if (v4 == 2)
  {
    *__dst = *__src;
    v10 = __dst + 8;
    v11 = *(__src + 3);

    if (v11 == 1)
    {
      v12 = *(__src + 24);
      v13 = *(__src + 56);
      *(__dst + 40) = *(__src + 40);
      *(__dst + 56) = v13;
      *(__dst + 36) = *(__src + 36);
      *v10 = *(__src + 8);
      *(__dst + 24) = v12;
LABEL_32:
      v23 = 2;
LABEL_51:
      __dst[448] = v23;
      goto LABEL_52;
    }

    *(__dst + 1) = *(__src + 1);
    if (v11)
    {
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = v11;
      __dst[32] = __src[32];
    }

    else
    {
      *(__dst + 1) = *(__src + 1);
      __dst[32] = __src[32];
    }

    v20 = *(__src + 5);
    __dst[33] = __src[33];
    if (v20)
    {
      v21 = *(__src + 6);
      *(__dst + 5) = v20;
      *(__dst + 6) = v21;

      v22 = *(__src + 8);
      if (v22)
      {
LABEL_28:
        *(__dst + 7) = *(__src + 7);
        *(__dst + 8) = v22;
        __dst[72] = __src[72];

LABEL_31:
        __dst[73] = __src[73];
        goto LABEL_32;
      }
    }

    else
    {
      *(__dst + 40) = *(__src + 40);
      v22 = *(__src + 8);
      if (v22)
      {
        goto LABEL_28;
      }
    }

    *(__dst + 56) = *(__src + 56);
    __dst[72] = __src[72];
    goto LABEL_31;
  }

  if (v4 == 1)
  {
    *__dst = *__src;
    *(__dst + 2) = *(__src + 2);
    *(__dst + 1) = *(__src + 1);
    *(__dst + 4) = *(__src + 4);
    v5 = *(__src + 6);
    if (v5)
    {
      *(__dst + 10) = *(__src + 10);
      v6 = *(__src + 7);
      v7 = *(__src + 8);
      *(__dst + 6) = v5;
      *(__dst + 7) = v6;
      v8 = *(__src + 9);
      v9 = *(__src + 10);
      *(__dst + 8) = v7;
      *(__dst + 9) = v8;
      *(__dst + 10) = v9;
      *(__dst + 22) = *(__src + 22);
    }

    else
    {
      *(__dst + 40) = *(__src + 40);
      *(__dst + 56) = *(__src + 56);
      *(__dst + 72) = *(__src + 72);
      *(__dst + 22) = *(__src + 22);
    }

    *(__dst + 23) = *(__src + 23);
    v14 = *(__src + 13);
    if (v14)
    {
      *(__dst + 12) = *(__src + 12);
      *(__dst + 13) = v14;
      *(__dst + 14) = *(__src + 14);
    }

    else
    {
      *(__dst + 6) = *(__src + 6);
      *(__dst + 14) = *(__src + 14);
    }

    v15 = __src[208];
    if (__src[240])
    {
      if (v15 == 255)
      {
        *(__dst + 152) = *(__src + 152);
        *(__dst + 168) = *(__src + 168);
        *(__dst + 184) = *(__src + 184);
        *(__dst + 193) = *(__src + 193);
        *(__dst + 120) = *(__src + 120);
        *(__dst + 136) = *(__src + 136);
      }

      else if (v15)
      {
        *(__dst + 15) = *(__src + 15);
        v16 = *(__src + 19);

        if (v16)
        {
          v17 = *(__src + 20);
          *(__dst + 19) = v16;
          *(__dst + 20) = v17;
          (**(v16 - 8))(__dst + 128, __src + 128, v16);
        }

        else
        {
          v26 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v26;
          *(__dst + 20) = *(__src + 20);
        }

        v27 = *(__src + 22);
        if (v27 == 1)
        {
          *(__dst + 168) = *(__src + 168);
        }

        else
        {
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = v27;
        }

        v28 = *(__src + 24);
        v29 = *(__src + 25);
        *(__dst + 23) = *(__src + 23);
        *(__dst + 24) = v28;
        *(__dst + 25) = v29;
        __dst[208] = 1;
      }

      else
      {
        v24 = *(__src + 9);
        *(__dst + 9) = v24;
        (**(v24 - 8))(__dst + 120, __src + 120);
        __dst[208] = 0;
      }

      __dst[240] = 1;
    }

    else
    {
      if (v15 == 255)
      {
        *(__dst + 152) = *(__src + 152);
        *(__dst + 168) = *(__src + 168);
        *(__dst + 184) = *(__src + 184);
        *(__dst + 193) = *(__src + 193);
        *(__dst + 120) = *(__src + 120);
        *(__dst + 136) = *(__src + 136);
      }

      else if (v15)
      {
        *(__dst + 15) = *(__src + 15);
        v18 = *(__src + 19);

        if (v18)
        {
          v19 = *(__src + 20);
          *(__dst + 19) = v18;
          *(__dst + 20) = v19;
          (**(v18 - 8))(__dst + 128, __src + 128, v18);
        }

        else
        {
          v30 = *(__src + 9);
          *(__dst + 8) = *(__src + 8);
          *(__dst + 9) = v30;
          *(__dst + 20) = *(__src + 20);
        }

        v31 = *(__src + 22);
        if (v31 == 1)
        {
          *(__dst + 168) = *(__src + 168);
        }

        else
        {
          *(__dst + 21) = *(__src + 21);
          *(__dst + 22) = v31;
        }

        v32 = *(__src + 24);
        v33 = *(__src + 25);
        *(__dst + 23) = *(__src + 23);
        *(__dst + 24) = v32;
        *(__dst + 25) = v33;
        __dst[208] = 1;
      }

      else
      {
        v25 = *(__src + 9);
        *(__dst + 9) = v25;
        (**(v25 - 8))(__dst + 120, __src + 120);
        __dst[208] = 0;
      }

      v34 = *(__src + 28);
      *(__dst + 27) = *(__src + 27);
      *(__dst + 28) = v34;
      *(__dst + 29) = *(__src + 29);
      __dst[240] = 0;
    }

    v35 = *(__src + 32);
    *(__dst + 31) = *(__src + 31);
    *(__dst + 32) = v35;
    v36 = *(__src + 34);
    *(__dst + 33) = *(__src + 33);
    *(__dst + 34) = v36;
    v37 = *(__src + 36);
    *(__dst + 35) = *(__src + 35);
    *(__dst + 36) = v37;
    v38 = *(__src + 38);
    *(__dst + 37) = *(__src + 37);
    *(__dst + 38) = v38;
    v39 = *(__src + 312);
    *(__dst + 41) = *(__src + 41);
    *(__dst + 312) = v39;
    *(__dst + 42) = *(__src + 42);
    *(__dst + 43) = *(__src + 43);
    __dst[352] = __src[352];
    *(__dst + 353) = *(__src + 353);
    v40 = *(__src + 45);

    if (v40)
    {
      v41 = *(__src + 46);
      v42 = *(__src + 47);
      *(__dst + 45) = v40;
      *(__dst + 46) = v41;
      v43 = *(__src + 48);
      v44 = *(__src + 49);
      *(__dst + 47) = v42;
      *(__dst + 48) = v43;
      v45 = *(__src + 50);
      v46 = *(__src + 51);
      *(__dst + 49) = v44;
      *(__dst + 50) = v45;
      v47 = *(__src + 52);
      *(__dst + 51) = v46;
      *(__dst + 52) = v47;
      *(__dst + 55) = *(__src + 55);
      *(__dst + 424) = *(__src + 424);
    }

    else
    {
      v48 = *(__src + 408);
      *(__dst + 392) = *(__src + 392);
      *(__dst + 408) = v48;
      *(__dst + 424) = *(__src + 424);
      *(__dst + 55) = *(__src + 55);
      v49 = *(__src + 376);
      *(__dst + 360) = *(__src + 360);
      *(__dst + 376) = v49;
    }

    v23 = 1;
    goto LABEL_51;
  }

  memcpy(__dst, __src, 0x1C1uLL);
LABEL_52:
  v50 = *(__src + 58);
  *(__dst + 57) = *(__src + 57);
  *(__dst + 58) = v50;
  *(__dst + 59) = *(__src + 59);

  return __dst;
}

uint64_t destroy for NavigationState.Base(uint64_t result)
{
  v1 = result;
  v2 = *(result + 448);
  if (v2 >= 3)
  {
    v2 = *result + 3;
  }

  if (v2)
  {
    if (v2 == 2)
    {

      v3 = *(v1 + 24);
      if (v3)
      {
        if (v3 == 1)
        {
          return result;
        }
      }

      if (*(v1 + 40))
      {
      }

      if (*(v1 + 64))
      {

LABEL_36:
      }
    }

    else
    {
      if (*(result + 48))
      {
      }

      if (*(v1 + 104))
      {
      }

      v4 = *(v1 + 208);
      if (*(v1 + 240))
      {
        if (v4 != 255)
        {
          if (v4)
          {

            if (*(v1 + 152))
            {
              __swift_destroy_boxed_opaque_existential_1(v1 + 128);
            }

            if (*(v1 + 176) != 1)
            {
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v1 + 120);
          }
        }
      }

      else
      {
        if (v4 != 255)
        {
          if (v4)
          {

            if (*(v1 + 152))
            {
              __swift_destroy_boxed_opaque_existential_1(v1 + 128);
            }

            if (*(v1 + 176) != 1)
            {
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v1 + 120);
          }
        }
      }

      result = *(v1 + 360);
      if (result)
      {

        goto LABEL_36;
      }
    }
  }

  return result;
}

uint64_t outlined init with copy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
    lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationDestinationKey> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>(255, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
    lazy protocol witness table accessor for type _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_VStackLayout, _VariadicView_Children> and conformance <> _VariadicView.Tree<A, B>, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _VariadicView_Children>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t outlined destroy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroy_57Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = (type metadata accessor for Binding() - 8);
  v3 = (*(*v2 + 80) + 96) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3 + v2[10], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t objectdestroy_57Tm_0()
{

  return swift_deallocObject();
}

void specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(id a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(uint64_t *__return_ptr, unint64_t), uint64_t a5)
{
  v119 = a5;
  v120 = a4;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v119 - v15;
  v149[0] = 0;
  v147 = v5;
  v148 = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();

  a2(&v147);
  v18 = v148;
  if (v148 >> 62)
  {
    goto LABEL_109;
  }

  for (i = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v132 = a1;
    v130 = v18;
    if (!i)
    {
      break;
    }

    v20 = 0;
    v137 = v18 & 0xC000000000000001;
    v135 = v18 & 0xFFFFFFFFFFFFFF8;
    *&v17 = 138412290;
    v129 = v17;
    *&v17 = 138412546;
    v123 = v17;
    v131 = v10;
    v133 = v13;
    v134 = v16;
    v136 = i;
    while (v137)
    {
      v21 = MEMORY[0x18D00E9C0](v20, v18);
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_106;
      }

LABEL_11:
      v138 = v22;
      v23 = v21;
      v24 = [v23 navigationController];
      v25 = v24;
      if (!v24)
      {

        if (!a1)
        {
          static Log.navigation.getter();
          v29 = type metadata accessor for Logger();
          v30 = *(v29 - 8);
          if ((*(v30 + 48))(v16, 1, v29) == 1)
          {

            outlined destroy of UINavigationPresentationAdaptor?(v16, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
          }

          else
          {
            v58 = v23;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              *v61 = v129;
              *(v61 + 4) = v58;
              *v62 = v58;
              v128 = v58;
              outlined destroy of NSObject?(v62);
              v63 = v62;
              v10 = v131;
              MEMORY[0x18D0110E0](v63, -1, -1);
              v64 = v61;
              v16 = v134;
              MEMORY[0x18D0110E0](v64, -1, -1);
              v58 = v59;
              v59 = v128;
            }

            v18 = v130;

            (*(v30 + 8))(v16, v29);
          }

          v13 = v133;
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (!a1)
      {

LABEL_20:
        static Log.navigation.getter();
        v31 = type metadata accessor for Logger();
        v32 = *(v31 - 8);
        if ((*(v32 + 48))(v10, 1, v31) == 1)
        {

          outlined destroy of UINavigationPresentationAdaptor?(v10, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
          a1 = v132;
        }

        else
        {
          v33 = v23;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = v129;
            *(v36 + 4) = v33;
            *v37 = v33;
            v38 = v33;
            _os_log_impl(&dword_18BD4A000, v34, v35, "[NavigationHostingControllerCache_UIKit] %@ containment skipped because sourceNavigationController or destination were nil", v36, 0xCu);
            outlined destroy of NSObject?(v37);
            v39 = v37;
            v13 = v133;
            MEMORY[0x18D0110E0](v39, -1, -1);
            v40 = v36;
            v10 = v131;
            MEMORY[0x18D0110E0](v40, -1, -1);
          }

          (*(v32 + 8))(v10, v31);
          a1 = v132;
          v18 = v130;
          v16 = v134;
        }

        goto LABEL_33;
      }

      if (v24 == a1)
      {

        static Log.navigation.getter();
        v41 = type metadata accessor for Logger();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v13, 1, v41) != 1)
        {
          v126 = v41;
          v43 = v23;
          v44 = v25;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();
          v127 = v44;

          LODWORD(v125) = v46;
          v128 = v45;
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v124 = v48;
            v49 = swift_slowAlloc();
            *&v140 = v49;
            *v47 = v123;
            *(v47 + 4) = v43;
            *v48 = v43;
            *(v47 + 12) = 2080;
            *&v139[0] = v25;
            _sSo22UINavigationControllerCSgMaTm_0(0, &lazy cache variable for type metadata for UINavigationController?, &lazy cache variable for type metadata for UINavigationController);
            v50 = v43;
            v127 = v127;
            v51 = String.init<A>(describing:)();
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v140);

            *(v47 + 14) = v53;
            v54 = v128;
            _os_log_impl(&dword_18BD4A000, v128, v125, "[NavigationHostingControllerCache_UIKit] %@ containment skipped because sourceNavigationController and destination were equal %s", v47, 0x16u);
            v55 = v124;
            outlined destroy of NSObject?(v124);
            MEMORY[0x18D0110E0](v55, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v49);
            MEMORY[0x18D0110E0](v49, -1, -1);
            v56 = v47;
            v18 = v130;
            MEMORY[0x18D0110E0](v56, -1, -1);

            v57 = v127;
          }

          else
          {

            v57 = v128;
          }

          v65 = v136;
          v66 = v138;
          v13 = v133;
          (*(v42 + 8))(v133, v126);
          v10 = v131;
          v16 = v134;
          goto LABEL_34;
        }

        outlined destroy of UINavigationPresentationAdaptor?(v13, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
        v10 = v131;
      }

      else
      {
        v26 = v24;
        v27 = a1;
        [v23 willMoveToParentViewController_];
        v28 = [v23 view];

        if (!v28)
        {
          __break(1u);
          return;
        }

        [v28 removeFromSuperview];

        specialized mustRemove #1 <A>(_:from:) in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v23, v26, v149);
        v18 = v130;
      }

LABEL_33:
      v65 = v136;
      v66 = v138;
LABEL_34:
      ++v20;
      if (v66 == v65)
      {
        goto LABEL_38;
      }
    }

    if (v20 >= *(v135 + 16))
    {
      goto LABEL_108;
    }

    v21 = *(v18 + 8 * v20 + 32);
    v22 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_11;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    ;
  }

LABEL_38:
  swift_beginAccess();
  v67 = v149[0];
  if (!v149[0])
  {
    v120(&v146, v18);
    goto LABEL_102;
  }

  v68 = v149[0] + 64;
  v69 = 1 << *(v149[0] + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v18 = v70 & *(v149[0] + 64);
  v71 = (v69 + 63) >> 6;

  v72 = 0;
  v122 = v67 + 64;
  *&v123 = v67;
  v121 = v71;
  if (v18)
  {
LABEL_48:
    while (1)
    {
      v125 = v72;
      v75 = (v72 << 9) | (8 * __clz(__rbit64(v18)));
      v76 = *(*(v67 + 56) + v75);
      v77 = *(*(v67 + 48) + v75);
      v138 = v76;

      v127 = v77;
      v78 = [v77 _swiftui_viewControllers];
      v126 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *&v140 = MEMORY[0x1E69E7CC0];
      if (v16 >> 62)
      {
        break;
      }

      v10 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v128 = v18;
      if (v10)
      {
        goto LABEL_50;
      }

LABEL_74:
      v96 = v138 & 0xC000000000000001;
LABEL_75:

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v127 _swiftui_setViewControllers:isa];

      if (v96)
      {
        __CocoaSet.makeIterator()();
        _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
        lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject();
        Set.Iterator.init(_cocoa:)();
        v98 = v149[2];
        v138 = v149[1];
        v99 = v149[3];
        v100 = v149[4];
        v18 = v149[5];
      }

      else
      {
        v100 = 0;
        v98 = v138 + 56;
        v101 = -1 << *(v138 + 32);
        v99 = ~v101;
        v102 = -v101;
        if (v102 < 64)
        {
          v103 = ~(-1 << v102);
        }

        else
        {
          v103 = -1;
        }

        v18 = v103 & *(v138 + 56);
      }

      v128 &= v128 - 1;
      v16 = (v99 + 64) >> 6;
      if (v138 < 0)
      {
        goto LABEL_88;
      }

      while (1)
      {
        v104 = v100;
        v105 = v18;
        v10 = v100;
        if (!v18)
        {
          while (1)
          {
            v10 = v104 + 1;
            if (__OFADD__(v104, 1))
            {
              break;
            }

            if (v10 >= v16)
            {
              goto LABEL_92;
            }

            v105 = *(v98 + 8 * v10);
            ++v104;
            if (v105)
            {
              goto LABEL_86;
            }
          }

          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_86:
        v13 = ((v105 - 1) & v105);
        v106 = *(*(v138 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v105)))));
        if (!v106)
        {
          break;
        }

        while (1)
        {
          [v106 removeFromParentViewController];
          [v106 willMoveToParentViewController_];

          v100 = v10;
          v18 = v13;
          if ((v138 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_88:
          v107 = __CocoaSet.Iterator.next()();
          if (v107)
          {
            *&v139[0] = v107;
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
            swift_dynamicCast();
            v106 = v140;
            v10 = v100;
            v13 = v18;
            if (v140)
            {
              continue;
            }
          }

          goto LABEL_92;
        }
      }

LABEL_92:
      outlined consume of Set<UIPress>.Iterator._Variant();

      v68 = v122;
      v67 = v123;
      v71 = v121;
      v72 = v125;
      v18 = v128;
      if (!v128)
      {
        goto LABEL_43;
      }
    }

    v10 = __CocoaSet.count.getter();
    v128 = v18;
    if (!v10)
    {
      goto LABEL_74;
    }

LABEL_50:
    v79 = 0;
    v135 = v16 & 0xFFFFFFFFFFFFFF8;
    v136 = v16 & 0xC000000000000001;
    v124 = v16;
    v133 = v138 & 0xC000000000000001;
    v134 = v16 + 32;
    v80 = v138 & 0xFFFFFFFFFFFFFF8;
    if (v138 < 0)
    {
      v80 = v138;
    }

    v131 = v80;
    v137 = v138 + 56;
    v81 = MEMORY[0x1E6981910];
    while (1)
    {
      if (v136)
      {
        v82 = MEMORY[0x18D00E9C0](v79, v124);
      }

      else
      {
        if (v79 >= *(v135 + 16))
        {
          goto LABEL_105;
        }

        v82 = *(v134 + 8 * v79);
      }

      v16 = v82;
      if (__OFADD__(v79++, 1))
      {
        goto LABEL_104;
      }

      v18 = v10;
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, v81, MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      v13 = v84;
      if (swift_dynamicCastClass())
      {
        if (v133)
        {
          v85 = v16;
          v86 = __CocoaSet.contains(_:)();

          if (v86)
          {

            goto LABEL_55;
          }
        }

        else if (*(v138 + 16))
        {
          v87 = v138;
          v88 = *(v138 + 40);
          *&v129 = v16;
          v89 = NSObject._rawHashValue(seed:)(v88);
          v90 = -1 << *(v87 + 32);
          v91 = v89 & ~v90;
          if ((*(v137 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91))
          {
            v92 = ~v90;
            while (1)
            {
              v93 = *(*(v87 + 48) + 8 * v91);
              v94 = static NSObject.== infix(_:_:)();

              if (v94)
              {
                break;
              }

              v91 = (v91 + 1) & v92;
              v87 = v138;
              if (((*(v137 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            v95 = v129;

            a1 = v132;
            v81 = MEMORY[0x1E6981910];
            goto LABEL_55;
          }

LABEL_53:

          a1 = v132;
          v81 = MEMORY[0x1E6981910];
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_55:
      if (v79 == v10)
      {
        v96 = v133;
        goto LABEL_75;
      }
    }
  }

LABEL_43:
  v73 = v130;
  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_107;
    }

    if (v74 >= v71)
    {
      break;
    }

    v18 = *(v68 + 8 * v74);
    ++v72;
    if (v18)
    {
      v72 = v74;
      goto LABEL_48;
    }
  }

  v120(&v146, v73);
  v108 = -1 << *(v67 + 32);
  v109 = ~v108;
  v110 = *(v67 + 64);
  v111 = -v108;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  else
  {
    v112 = -1;
  }

  *&v140 = v67;
  *(&v140 + 1) = v68;
  v141 = v109;
  *&v142 = v112 & v110;
  *(&v142 + 1) = closure #2 in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:);
  *&v143 = 0;
  *(&v143 + 1) = 0xF000000000000007;
  v144 = 0u;
  v145 = 0u;
  specialized FlattenSequence.Iterator.next()();
  if (v113)
  {
    v114 = v113;
    v115 = MEMORY[0x1E6981910];
    v116 = MEMORY[0x1E6981900];
    do
    {
      [v114 didMoveToParentViewController_];
      v117 = *&v114[direct field offset for UIHostingController.host];
      static ViewGraphRootValues.all.getter();
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, v115, v116, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
      a1 = v132;
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      specialized FlattenSequence.Iterator.next()();
      v114 = v118;
    }

    while (v118);
  }

  v139[2] = v142;
  v139[3] = v143;
  v139[4] = v144;
  v139[5] = v145;
  v139[0] = v140;
  v139[1] = v141;
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v139, type metadata accessor for FlattenSequence<LazyMapSequence<[UINavigationController : Set<NavigationStackHostingController<AnyView>>].Values, Set<NavigationStackHostingController<AnyView>>>>.Iterator);
LABEL_102:
  outlined destroy of NavigationHostingControllerCache_UIKit.Source(&v147);
}

void NavigationHostingControllerCache_UIKit.Source.ensureViewController(at:forPushing:configureExisting:makeNew:)(unsigned __int8 *a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v58 = a6;
  v59 = a5;
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v18 = *a1;
  v19 = *(a1 + 1);
  v20 = *v7;
  swift_beginAccess();
  v21 = *(v20 + 16);
  if (!*(v21 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19), (v23 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_6;
  }

  v57 = a4;
  v60 = a3;
  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  v25 = v24;
  if (requiresNew #1 (_:) in NavigationHostingControllerCache_UIKit.Source.ensureViewController(at:forPushing:configureExisting:makeNew:)(v25, v7, a2 & 1, v18, v19))
  {

LABEL_6:
    LODWORD(v60) = v18;
    static Log.navigation.getter();
    v26 = type metadata accessor for Logger();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      v28 = outlined destroy of Logger?(v14);
    }

    else
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v56 = v31;
        v57 = swift_slowAlloc();
        v61 = v57;
        *v31 = 136315138;
        v62 = v60;
        v63 = v19;
        v32 = NavigationContentAbstractPosition.description.getter();
        v34 = v19;
        v35 = v7;
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v61);

        v37 = v56;
        *(v56 + 1) = v36;
        v7 = v35;
        v19 = v34;
        _os_log_impl(&dword_18BD4A000, v29, v30, "<NavigationHostingControllerCache>: MISS at %s", v37, 0xCu);
        v38 = v57;
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x18D0110E0](v38, -1, -1);
        MEMORY[0x18D0110E0](v37, -1, -1);
      }

      v28 = (*(v27 + 8))(v14, v26);
    }

    v39 = v59(v28);
    swift_beginAccess();
    v40 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v20 + 16);
    *(v20 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v60, v19, isUniquelyReferenced_nonNull_native);
    *(v20 + 16) = v61;
    v42 = swift_endAccess();
    goto LABEL_12;
  }

  v43 = v18;
  static Log.navigation.getter();
  v44 = type metadata accessor for Logger();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v17, 1, v44) == 1)
  {
    outlined destroy of Logger?(v17);
    v46 = v60;
  }

  else
  {
    v59 = v19;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v61 = v58;
      *v49 = 136315138;
      v62 = v43;
      v63 = v59;
      v50 = NavigationContentAbstractPosition.description.getter();
      v52 = v7;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v61);

      *(v49 + 4) = v53;
      v7 = v52;
      _os_log_impl(&dword_18BD4A000, v47, v48, "<NavigationHostingControllerCache>: HIT at %s", v49, 0xCu);
      v54 = v58;
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x18D0110E0](v54, -1, -1);
      MEMORY[0x18D0110E0](v49, -1, -1);
    }

    v46 = v60;
    (*(v45 + 8))(v17, v44);
  }

  v40 = v25;
  v42 = v46();
LABEL_12:
  MEMORY[0x18D00CC30](v42);
  if (*((v7[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void closure #1 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v7[0] = a2;
  v8 = a3;
  NavigationHostingControllerCache_UIKit.Source.ensureViewController(at:forPushing:configureExisting:makeNew:)(v7, 0, a4, a5, a6, a7);
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  type metadata accessor for Logger?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *specialized NavigationStrategy.viewControllerCommon(for:entering:canPop:isRoot:)(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E6981910];
  v4 = MEMORY[0x1E6981900];
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
  v6 = objc_allocWithZone(v5);
  v7 = MEMORY[0x1E69E7D40];
  v8 = v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x3F8);
  *v8 = 1542;
  v8[2] = 0;
  *(v6 + *((*v7 & *v6) + 0x400)) = 0;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>.HostingView, v3, v4, type metadata accessor for NavigationStackHostingController.HostingView);
  v10 = objc_allocWithZone(v9);

  v12 = specialized _UIHostingView.init(rootView:)(v11);
  v13 = specialized UIHostingController.init(_hostingView:)(v12);
  result = [v13 view];
  if (result)
  {
    v15 = result;
    [result setClipsToBounds_];

    v16 = *&v13[direct field offset for UIHostingController.host];
    type metadata accessor for MainActor();
    swift_retain_n();
    v17 = v16;
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    *(v19 + 16) = v18;
    *(v19 + 24) = v20;
    v21 = a2 & 1;
    *(v19 + 32) = v21;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v20;
    *(v24 + 32) = v21;
    *(v24 + 40) = v22;

    Binding.init(get:set:)();
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.setter();

    UIHostingViewBase.inheritedEnvironment.setter();
    if (EnvironmentValues.preferenceBridge.getter())
    {
      specialized ViewRendererHost.setPreferenceBridge(_:)();
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ContainerBackgroundKeys.NavigationKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v9);
  v3 = v11;
  v4 = *(a1 + 8);
  if (v4 >> 62 == 2 && (v4 == 0x8000000000000000 ? (v5 = *a1 == 0) : (v5 = 0), v5))
  {
    v7 = v9;
    v8 = v10;
    outlined copy of ContainerBackgroundValue.Content(v9, v10);
    outlined consume of ContainerBackgroundValue.Content(v7, v8);

    *a1 = v7;
    *(a1 + 8) = v8;
  }

  else
  {
    outlined consume of ContainerBackgroundValue.Content(v9, v10);
  }

  *(a1 + 16) = (*(a1 + 16) | v3) & 1;
  return result;
}

uint64_t type metadata completion function for NavigationStackHostingController()
{
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

uint64_t NavigationStackHostingController.HostingView.appendViewGraphFeatures()()
{
  _UIHostingView.viewGraph.getter();
  lazy protocol witness table accessor for type ToolbarInputFeature and conformance ToolbarInputFeature();
  ViewGraph.append<A>(feature:)();

  _UIHostingView.viewGraph.getter();
  ViewGraph.append<A>(feature:)();
}

unint64_t lazy protocol witness table accessor for type ToolbarInputFeature and conformance ToolbarInputFeature()
{
  result = lazy protocol witness table cache variable for type ToolbarInputFeature and conformance ToolbarInputFeature;
  if (!lazy protocol witness table cache variable for type ToolbarInputFeature and conformance ToolbarInputFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarInputFeature and conformance ToolbarInputFeature);
  }

  return result;
}

uint64_t specialized ViewRendererHost.setPreferenceBridge(_:)(uint64_t a1)
{
  UIHostingViewBase.viewGraph.getter();

  v2 = ViewGraph.preferenceBridge.getter();

  if (!v2 || (result = , v2 != a1))
  {
    UIHostingViewBase.viewGraph.getter();

    ViewGraph.preferenceBridge.setter();
  }

  return result;
}

void type metadata accessor for Binding<EditMode>?()
{
  if (!lazy cache variable for type metadata for Binding<EditMode>?)
  {
    type metadata accessor for Bool?(255, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<EditMode>?);
    }
  }
}

uint64_t static NavigationStackHostingController.HostingView.ignoresPresentations.getter()
{
  static Semantics.v6.getter();

  return isLinkedOnOrAfter(_:)();
}

void type metadata accessor for Bool?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSbSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _sSbSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v9 = (*(v3 + 48) + 16 * result);
      v10 = *v9;
      v11 = *(v9 + 1);
      if (v10 == 3)
      {
        if (a1 == 3 && v11 == a2)
        {
          return result;
        }
      }

      else if (v10 == a1 && v11 == a2)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition()
{
  result = lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition;
  if (!lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition;
  if (!lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t closure #2 in NavigationHostingControllerCache_UIKit.unparentedHostingController(at:configureExisting:makeNew:)@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = __CocoaSet.count.getter();
  result = v3;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_9:
    result = MEMORY[0x18D00E9C0](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(result + 32);
LABEL_6:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

void destroy for NavigationHostingControllerCache_UIKit.Source()
{

  JUMPOUT(0x18D011290);
}

void specialized NavigationStackCoordinator.configureAsRoot(_:transparentBackground:)(void *a1, char a2)
{
  v5 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v6 = v5[8];
  v7 = a1 + *((*a1 & *MEMORY[0x1E69E7D40]) + 0x3F8);
  swift_beginAccess();
  if (v6 <= 5 && ((1 << v6) & 0x27) != 0)
  {
    v7[1] = v6;
  }

  v9 = direct field offset for UIHostingController.host;
  v10 = *(a1 + direct field offset for UIHostingController.host);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v15 = v14 == 5 && v5[8] == 0;
  specialized _UIHostingView.setWantsTransparentBackground(for:_:)(2, v15);

  v16 = *(a1 + v9);
  specialized _UIHostingView.setWantsTransparentBackground(for:_:)(1, a2 & 1);
}

uint64_t specialized _UIHostingView.setWantsTransparentBackground(for:_:)(uint64_t a1, char a2)
{
  return specialized _UIHostingView.setWantsTransparentBackground(for:_:)(a1, a2, specialized _UIHostingView.updateBackgroundColor());
}

{
  return specialized _UIHostingView.setWantsTransparentBackground(for:_:)(a1, a2, specialized _UIHostingView.updateBackgroundColor());
}

void specialized UIHostingController.promoteTitle(in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v2[direct field offset for UIHostingController.host];
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v10 = v9;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  v11 = 0;
  v12 = 0;
  v39 = v36;
  v40 = v37;
  v41[0] = v38[0];
  *(v41 + 9) = *(v38 + 9);
  if (*(&v37 + 1) >= 2uLL)
  {
    v13 = v40;
    *&v31 = a1;
    *(&v31 + 1) = a2;
    v29 = 0;
    v30 = 0;
    v36 = v39;
    v37 = v40;
    v38[0] = v41[0];
    *(v38 + 9) = *(v41 + 9);
    v14 = outlined init with copy of NavigationTitleStorage(&v36, v34);
    MEMORY[0x18D009CB0](v34, v14);
    v28 = v13 & 1;
    v11 = Text.resolveString(in:with:idiom:)();
    v12 = v15;
    outlined destroy of PPTTestCase?(&v39, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
  }

  v16 = [v3 navigationItem];
  if (v12)
  {
    v17 = MEMORY[0x18D00C850](v11, v12);
  }

  else
  {
    v17 = 0;
  }

  [v16 setTitle_];

  *&v36 = a1;
  *(&v36 + 1) = a2;
  if (EnvironmentValues.accessibilityEnabled.getter())
  {
    if (*(&v40 + 1) == 1)
    {
      v18 = 0;
    }

    else
    {
      v33[0] = v41[0];
      *(v33 + 9) = *(v41 + 9);
      *(v35 + 9) = *(v41 + 9);
      v34[1] = v40;
      v35[0] = v41[0];
      v31 = v39;
      v32 = v40;
      v29 = a1;
      v30 = a2;
      v34[0] = v39;
      outlined init with copy of NavigationTitleStorage(v34, &v36);
      v18 = NavigationTitleStorage.accessibilityLabel(in:)();
      v36 = v31;
      v37 = v32;
      v38[0] = v33[0];
      *(v38 + 9) = *(v33 + 9);
      outlined destroy of NavigationTitleStorage(&v36);
    }

    v19 = [v3 navigationItem];
    [v19 setAccessibilityAttributedLabel_];

    *&v36 = a1;
    *(&v36 + 1) = a2;
    EnvironmentValues.locale.getter();
    v20 = Locale.bcp47LanguageCode.getter();
    v22 = v21;
    (*(v26 + 8))(v8, v27);
    v23 = [v3 navigationItem];
    if (v22)
    {
      v24 = MEMORY[0x18D00C850](v20, v22);
    }

    else
    {
      v24 = 0;
    }

    [v23 setAccessibilityLanguage_];
    outlined destroy of PPTTestCase?(&v39, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
  }

  else
  {
    outlined destroy of PPTTestCase?(&v39, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
  }
}

uint64_t specialized NavigationStackHostingController.hostingView<A>(_:willModifyViewInputs:)()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F8);
  swift_beginAccess();
  if (static StyleContextAcceptsAnyPredicate.evaluate(inputs:)())
  {
    v1[1] = 5;
  }

  result = swift_endAccess();
  v3 = *v1;
  v4 = v1[2] != 1 || v3 == 6;
  if (!v4 && (v3 == 4 || v3 == 1 || !*v1))
  {
    return _GraphInputs.pushStyleContext<A>(_:)();
  }

  return result;
}

void ToolbarInputFeature.modifyViewInputs(inputs:graph:)(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v24 = *(a1 + 32);
  v25 = v4;
  v6 = *(a1 + 48);
  v26 = *(a1 + 64);
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  v19 = v24;
  v20 = v6;
  v21 = *(a1 + 64);
  v8 = *v2;
  v27 = *(a1 + 80);
  v22 = *(a1 + 80);
  v17 = v23[0];
  v18 = v5;
  outlined init with copy of _ViewInputs(v23, v28);
  v9 = ContentToolbarPlacement.Placement.isEnabled(inputs:)(&v17, v8);
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v29 = v22;
  v28[0] = v17;
  v28[1] = v18;
  outlined destroy of _ViewInputs(v28);
  v2[18] = v9 & 1;
  if ((v9 & 1) == 0)
  {
    return;
  }

  if (!v8)
  {
    LOBYTE(v17) = 0;
    lazy protocol witness table accessor for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar();
    goto LABEL_6;
  }

  if (v8 == 1)
  {
    LOBYTE(v17) = 0;
    lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
LABEL_6:
    PropertyList.subscript.setter();
  }

  lazy protocol witness table accessor for type ToolbarContentInput and conformance ToolbarContentInput();
  PropertyList.subscript.getter();
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    v11 = Attribute;
    swift_beginAccess();
    v12 = *(a2 + 32);
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    *(v2 + 1) = v11;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }

  if (v8 != 1)
  {
    swift_beginAccess();
    swift_getKeyPath();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for Map<EnvironmentValues, Bool>();
    lazy protocol witness table accessor for type Map<EnvironmentValues, Bool> and conformance Map<A, B>();

    v14 = Attribute.init<A>(body:value:flags:update:)();

    swift_beginAccess();
    v15 = *(a2 + 32);
    AGGraphClearUpdate();
    v16 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    *(v2 + 2) = v14;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t ContentToolbarPlacement.Placement.isEnabled(inputs:)(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
      PropertyList.subscript.getter();
      if (v6 == 1 && (lazy protocol witness table accessor for type HasContentToolbar and conformance HasContentToolbar(), PropertyList.subscript.getter(), v5 == 1))
      {
        PropertyList.subscript.getter();
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      lazy protocol witness table accessor for type HasContentToolbar and conformance HasContentToolbar();
      PropertyList.subscript.getter();
      return v7;
    }
  }

  else
  {
    lazy protocol witness table accessor for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar();
    PropertyList.subscript.getter();
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar()
{
  result = lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<NavigationBackgroundReaderModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<NavigationBackgroundReaderModifier>)
  {
    lazy protocol witness table accessor for type NavigationBackgroundReaderModifier and conformance NavigationBackgroundReaderModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<NavigationBackgroundReaderModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, type metadata accessor for _ViewModifier_Content<NavigationBackgroundReaderModifier>, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>>);
    }
  }
}

uint64_t static ReadDestinationsModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v34 = a6;
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v62 = *(a2 + 32);
  v63 = v9;
  v11 = *(a2 + 48);
  v64 = *(a2 + 64);
  v12 = *(a2 + 16);
  v61[0] = *a2;
  v61[1] = v12;
  v52 = v62;
  v53 = v11;
  v54 = *(a2 + 64);
  v33 = *a1;
  v65 = *(a2 + 80);
  v55 = *(a2 + 80);
  v50 = v61[0];
  v51 = v10;
  outlined init with copy of _ViewInputs(v61, v68);
  PreferenceKeys.add(_:)();
  PreferenceKeys.remove(_:)();
  v66[2] = v52;
  v66[3] = v53;
  v66[4] = v54;
  v67 = v55;
  v66[0] = v50;
  v66[1] = v51;
  v43 = v52;
  v44 = v53;
  v45 = v54;
  v46 = v55;
  v41 = v50;
  v42 = v51;
  v13 = outlined init with copy of _ViewInputs(v66, v68);
  a3(&v47, v13, &v41);
  v68[2] = v43;
  v68[3] = v44;
  v68[4] = v45;
  v69 = v46;
  v68[0] = v41;
  v68[1] = v42;
  outlined destroy of _ViewInputs(v68);
  v14 = v47;
  v15 = v48;
  v39 = v47;
  v40 = v48;

  v16 = PreferencesOutputs.subscript.getter();

  if ((v16 & 0x100000000) != 0)
  {
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v41 = v50;
    v42 = v51;
    result = outlined destroy of _ViewInputs(&v41);
  }

  else
  {
    v32[2] = v32;
    MEMORY[0x1EEE9AC00](v17);
    v31[2] = a4;
    v31[3] = a5;
    v18 = v33;
    LODWORD(v41) = v33;
    type metadata accessor for ReadDestinationsModifier();
    type metadata accessor for _GraphValue();
    v19 = _GraphValue.subscript.getter();
    v32[1] = v31;
    v20 = v35;
    MEMORY[0x1EEE9AC00](v19);
    v30[2] = a4;
    v30[3] = a5;
    v38 = v18;
    _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationStackViewPosition?, &type metadata for NavigationStackViewPosition, MEMORY[0x1E69E6720]);
    _GraphValue.subscript.getter();
    v21 = v37;
    v22 = (*(a5 + 8))(a4, a5);
    v24 = v23;
    v25 = AGMakeUniqueID();
    v56[0] = v20;
    v56[1] = v21;
    v56[2] = v16;
    v57 = v22;
    v58 = v24;
    v59 = v25;
    v60 = 0;
    v35 = v63;
    v36 = DWORD2(v63);
    MEMORY[0x1EEE9AC00](v63);
    v30[-4] = a4;
    v30[-3] = a5;
    v30[-2] = v56;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    Destinations = type metadata accessor for ReadDestinationsModifier.RequestsTransform();
    (*(*(Destinations - 8) + 8))(v56, Destinations);

    v43 = v52;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v41 = v50;
    v42 = v51;
    result = outlined destroy of _ViewInputs(&v41);
    v14 = v47;
    v15 = v48;
  }

  v28 = v49;
  v29 = v34;
  *v34 = v14;
  *(v29 + 2) = v15;
  *(v29 + 3) = v28;
  return result;
}

uint64_t closure #1 in static ReadDestinationsModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v6[2] = type metadata accessor for ReadDestinationsModifier();
  v2 = MEMORY[0x1E69E6370];
  v3 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 41, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v6, v2, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6[5];
}

uint64_t closure #2 in static ReadDestinationsModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v7[2] = type metadata accessor for ReadDestinationsModifier();
  _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationStackViewPosition?, &type metadata for NavigationStackViewPosition, MEMORY[0x1E69E6720]);
  v3 = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v7, v3, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t initializeWithCopy for ReadDestinationsModifier.RequestsTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

__n128 NavigationBackgroundReaderModifier.body(content:)@<Q0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v2 = static Alignment.center.getter();
  *(a1 + 64) = v9;
  *(a1 + 80) = v10;
  *(a1 + 96) = v11;
  *a1 = v5;
  *(a1 + 16) = v6;
  result = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 112) = closure #1 in View.renderContainerBackgroundInHostingView<A>(_:);
  *(a1 + 120) = 0;
  *(a1 + 128) = v2;
  *(a1 + 136) = v4;
  return result;
}

double one-time initialization function for automatic()
{
  qword_1EAA11F68 = 0;
  result = 0.0;
  static ToolbarItemPlacement.automatic = 0u;
  unk_1EAA11F58 = 0u;
  byte_1EAA11F70 = 2;
  return result;
}

uint64_t specialized static NavigationSearchAdjustmentModifier.updateEnvironment(searchAdjustment:environment:)(char a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();

    v4 = v6;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
    v4 = v6;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>);
    result = PropertyList.subscript.getter();
  }

  if (a1 == 1 && (v4 & 0xFE) != 6)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>);

    PropertyList.subscript.setter();
    if (v3)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance NavigationDestinationKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static NavigationDestinationKey.defaultValue;
}

void type metadata accessor for Attribute<NavigationState.ListKey?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for NavigationState.ListKey?(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for NavigationState.StackContent.Key?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _UIHostingView<AnyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<AnyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature;
  if (!lazy protocol witness table cache variable for type _UIHostingView<AnyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for _UIHostingView<AnyView>.EnableVFDFeature, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView.EnableVFDFeature);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<AnyView>.EnableVFDFeature and conformance _UIHostingView<A>.EnableVFDFeature);
  }

  return result;
}

void *specialized _UIHostingView.base.getter(void (*a1)(void), void (*a2)(void), void (*a3)(uint64_t))
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  v5 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68));
  if (*(v3 + v4) == 1)
  {
    *(v3 + v4) = 1;
    v6 = v5;
    return v5;
  }

  v10 = v5;
  v11 = UIHostingViewBase.uiView.getter();
  if (v11)
  {

    if (UIHostingViewBase.delegate.getter())
    {
      goto LABEL_5;
    }

LABEL_8:
    a1();
    swift_unknownObjectRetain();
    UIHostingViewBase.delegate.setter();
    if (UIHostingViewBase.updateDelegate.getter())
    {
      goto LABEL_6;
    }

LABEL_9:
    a2();
    swift_unknownObjectRetain();
    UIHostingViewBase.updateDelegate.setter();
    goto LABEL_10;
  }

  v12 = v3;
  UIHostingViewBase.uiView.setter();
  if (!UIHostingViewBase.delegate.getter())
  {
    goto LABEL_8;
  }

LABEL_5:
  swift_unknownObjectRelease();
  if (!UIHostingViewBase.updateDelegate.getter())
  {
    goto LABEL_9;
  }

LABEL_6:
  swift_unknownObjectRelease();
LABEL_10:
  UIHostingViewBase.viewGraph.getter();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    UIHostingViewBase.viewGraph.getter();

    a3(v14);
    swift_unknownObjectRetain();
    DisplayList.ViewRenderer.host.setter();
  }

  *(v3 + v4) = 1;
  return v5;
}

id specialized UIHostingController.init(_hostingView:)(void *a1)
{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  *&v2[direct field offset for UIHostingController.host] = a1;
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for UIHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for UIHostingController);
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()();

  return v14;
}

{
  v2 = v1;
  *&v1[direct field offset for UIHostingController.allowedBehaviors] = 0;
  *&v1[direct field offset for UIHostingController.requiredBridges] = 0;
  v4 = &v1[direct field offset for UIHostingController.overrides];
  *v4 = xmmword_18CD874C0;
  *(v4 + 2) = 0;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[48] = 2;
  *&v2[direct field offset for UIHostingController.customTabItem] = 0;
  swift_unknownObjectWeakInit();
  *&v2[direct field offset for UIHostingController.toolbarBridge] = 0;
  *&v2[direct field offset for UIHostingController.inspectorBridgeV5] = 0;
  *&v2[direct field offset for UIHostingController.barAppearanceBridge] = 0;
  v5 = direct field offset for UIHostingController.dialogBridge;
  type metadata accessor for UIKitDialogBridge();
  swift_allocObject();
  *&v2[v5] = UIKitDialogBridge.init()();
  *&v2[direct field offset for UIHostingController.testBridge] = 0;
  *&v2[direct field offset for UIHostingController.contentScrollViewBridge] = 0;
  v6 = direct field offset for UIHostingController.modernNavigationBridge;
  type metadata accessor for ModernNavigationBridge();
  v7 = swift_allocObject();
  *(v7 + 16) = -1;
  *&v2[v6] = v7;
  *&v2[direct field offset for UIHostingController.alwaysOnBridge] = 0;
  v8 = direct field offset for UIHostingController.fileImportExportBridge;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for FileImportExportBridge(0)) init];
  *&v2[direct field offset for UIHostingController.deferredEdges] = 256;
  v9 = MEMORY[0x1E69E7CC0];
  *&v2[direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker] = MEMORY[0x1E69E7CC0];
  v2[direct field offset for UIHostingController.shouldDeferScreenEdgesSystemGestureToChildViewController] = 0;
  v10 = &v2[direct field offset for UIHostingController.persistentSystemOverlays];
  *v10 = 512;
  v10[2] = 3;
  *&v2[direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker] = v9;
  v2[direct field offset for UIHostingController.shouldDeferPersistentSystemOverlaysToChildViewController] = 0;
  v11 = direct field offset for UIHostingController.backgroundBridge;
  type metadata accessor for ContainerBackgroundBridge();
  swift_allocObject();
  *&v2[v11] = ContainerBackgroundBridge.init()();
  *&v2[direct field offset for UIHostingController.navigationBridge] = 0;
  *&v2[direct field offset for UIHostingController.keyboardShortcutBridge] = 0;
  *&v2[direct field offset for UIHostingController.sizingOptions] = 0;
  *&v2[direct field offset for UIHostingController.host] = a1;
  _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, type metadata accessor for UIHostingController);
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  specialized UIHostingController._commonInit()();

  return v14;
}

uint64_t specialized UIHostingController._commonInit()()
{
  return specialized UIHostingController._commonInit()(specialized _UIHostingView.updateBackgroundColor(), lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>);
}

{
  return specialized UIHostingController._commonInit()(&lazy cache variable for type metadata for _UIHostingView<TabItem.RootView>, lazy protocol witness table accessor for type TabItem.RootView and conformance TabItem.RootView, &type metadata for TabItem.RootView, lazy protocol witness table accessor for type _UIHostingView<TabItem.RootView> and conformance _UIHostingView<A>);
}

uint64_t specialized UIHostingController._commonInit()(void (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = direct field offset for UIHostingController.host;
  v7 = *(v2 + direct field offset for UIHostingController.host);
  v8 = MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakAssign();
  v9 = v7;
  a1();

  MEMORY[0x18D00ABE0]();
  v10 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  lazy protocol witness table accessor for type EditModeScopeFeature and conformance EditModeScopeFeature();
  ViewGraph.append<A>(feature:)();

  v11 = *(v5 + direct field offset for UIHostingController.dialogBridge);
  v12 = swift_unknownObjectWeakAssign();
  v13 = a2(v12);
  *(v11 + 32) = v13;
  swift_unknownObjectWeakAssign();
  v14 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();

  v15 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  v16 = direct field offset for UIHostingController.alwaysOnBridge;
  if (*(v5 + direct field offset for UIHostingController.alwaysOnBridge))
  {
    swift_unknownObjectWeakAssign();
    if (*(v5 + v16))
    {
      v17 = *(v5 + v6);
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
    }
  }

  *(*(v5 + direct field offset for UIHostingController.fileImportExportBridge) + OBJC_IVAR____TtC7SwiftUI22FileImportExportBridge_host + 8) = v13;
  swift_unknownObjectWeakAssign();
  v18 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
  GraphHost.addPreference<A>(_:)();

  ObjectType = swift_getObjectType();
  if (((*(ObjectType + 1392))() & 1) == 0)
  {
    v20 = [objc_allocWithZone(type metadata accessor for UIKitPopoverBridge()) init];
    *&v20[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_host + 8] = v13;
    swift_unknownObjectWeakAssign();
    v21 = *(v5 + v6);
    UIHostingViewBase.viewGraph.getter();

    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();
    GraphHost.addPreference<A>(_:)();

    v22 = *(v5 + v6);
    v23 = *((*v8 & *v22) + 0x128);
    v24 = *(v22 + v23);
    *(v22 + v23) = v20;
  }

  v25 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
  v26 = direct field offset for UIHostingController.screenEdgesSystemGestureSeedTracker;
  swift_beginAccess();
  v27 = *(v5 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v26) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
    *(v5 + v26) = v27;
  }

  v30 = *(v27 + 2);
  v29 = *(v27 + 3);
  if (v30 >= v29 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v27);
  }

  *(v27 + 2) = v30 + 1;
  v31 = &v27[24 * v30];
  *(v31 + 4) = &type metadata for ScreenEdgesSystemGestureKey;
  *(v31 + 5) = &protocol witness table for ScreenEdgesSystemGestureKey;
  *(v31 + 12) = -1;
  *(v5 + v26) = v27;
  swift_endAccess();

  v32 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
  v33 = direct field offset for UIHostingController.persistentSystemOverlaysSeedTracker;
  swift_beginAccess();
  v34 = *(v5 + v33);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v33) = v34;
  if ((v35 & 1) == 0)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
    *(v5 + v33) = v34;
  }

  v37 = *(v34 + 2);
  v36 = *(v34 + 3);
  if (v37 >= v36 >> 1)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
  }

  *(v34 + 2) = v37 + 1;
  v38 = &v34[24 * v37];
  *(v38 + 4) = &type metadata for PersistentSystemOverlaysKey;
  *(v38 + 5) = &protocol witness table for PersistentSystemOverlaysKey;
  *(v38 + 12) = -1;
  *(v5 + v33) = v34;
  swift_endAccess();

  if (one-time initialization token for isEnabled != -1)
  {
    swift_once();
  }

  if (static PPTFeature.isEnabled == 1)
  {
    type metadata accessor for PPTTestBridge();
    v39 = swift_allocObject();
    *(v39 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v39 + 32) = 0;
    *(v39 + 40) = 0u;
    *(v39 + 56) = 0u;
    *(v39 + 72) = 0;
    *(v5 + direct field offset for UIHostingController.testBridge) = v39;

    *(v39 + 24) = v13;
    swift_unknownObjectWeakAssign();
  }

  v40 = *(v5 + direct field offset for UIHostingController.backgroundBridge);
  swift_unknownObjectWeakAssign();
  *(v40 + 64) = v13;
  swift_unknownObjectWeakAssign();
  v41 = *(v5 + v6);
  v42 = UIHostingViewBase.viewGraph.getter();

  v43 = *(v42 + 88);

  if (*(v40 + 145) != 5)
  {
    ContainerBackgroundKind.Builtin.addPreference(to:)(v43);
  }

  type metadata accessor for SharingActivityPickerBridge();
  swift_allocObject();
  v44 = SharingActivityPickerBridge.init()();
  *(v44 + 24) = v13;
  swift_unknownObjectWeakAssign();
  v45 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  v46 = *(v5 + v6);
  *(v46 + *((*v8 & *v46) + 0x140)) = v44;
  v47 = v46;

  type metadata accessor for ShareConfigurationBridge();
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v48 + 32) = -1;
  *(v48 + 24) = v13;
  swift_unknownObjectWeakAssign();
  v49 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  v50 = *(v5 + v6);
  *(v50 + *((*v8 & *v50) + 0x148)) = v48;
  v51 = v50;

  v52 = *(v5 + v6);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  return static Update.end()();
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance PositionedNavigationDestination.Key@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static PositionedNavigationDestination.Key.defaultValue;
}

uint64_t ContainerBackgroundKind.Builtin.versionSeedTracker.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    v2 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
    v3 = &protocol witness table for ContainerBackgroundKeys.NavigationKey;
    v4 = &type metadata for ContainerBackgroundKeys.NavigationKey;
    if (*v0)
    {
      v4 = &type metadata for ContainerBackgroundKeys.NavigationSplitViewKey;
      v3 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
      v2 = &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey;
    }

    goto LABEL_7;
  }

  if (v1 == 3)
  {
    v2 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
    v3 = &protocol witness table for ContainerBackgroundKeys.PresentationKey;
    v4 = &type metadata for ContainerBackgroundKeys.PresentationKey;
LABEL_7:
    v12 = 0uLL;
    *&v13 = 0;
    *(&v13 + 1) = v4;
    *&v14 = v3;
    *(&v14 + 1) = v2;
    outlined init with take of MutableCollection & RangeReplaceableCollection(&v12, &v15);
    v5 = v16;
    v6 = v17;
    v7 = v18;
    v8 = __swift_project_boxed_opaque_existential_1(&v15, v16);
    MEMORY[0x1EEE9AC00](v8);
    v11[2] = v5;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = closure #1 in ContainerBackgroundKind.Builtin.versionSeedTracker.getter;
    v11[6] = 0;
    type metadata accessor for ContainerBackground.AnyVersionSeedTracker();
    static ContainerBackgroundKind.Builtin.apply<A, B>(key:_:)(v8, partial apply for thunk for @callee_guaranteed (@unowned @thick ContainerBackgroundPlacementKey & HostPreferenceKey.Type) -> (@owned ContainerBackground.AnyVersionSeedTracker), v11, v5);
    v9 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v15);
    return v9;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  outlined destroy of (ContainerBackgroundPlacementKey & HostPreferenceKey)?(&v12);
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  LOBYTE(v12) = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0xD00000000000001ALL, 0x800000018CD501D0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

_OWORD *outlined init with take of MutableCollection & RangeReplaceableCollection(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned @thick ContainerBackgroundPlacementKey & HostPreferenceKey.Type) -> (@owned ContainerBackground.AnyVersionSeedTracker)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 40))(a1, *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t ContainerBackground.ConcreteVersionSeedTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  VersionSeedTracker.init()((v0 + 16));
  return v0;
}

BOOL specialized static Toolbar.UpdateContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  v5 = *(a2 + 80);
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }
  }

  else if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v6 = *(a1 + 81);
  v7 = *(a2 + 81);
  if (v6 != 2)
  {
    if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7ToolbarO11BarLocationO_Tt1g5(*(a1 + 88), *(a2 + 88));
    goto LABEL_13;
  }

  if (v7 == 2)
  {
    goto LABEL_11;
  }

LABEL_12:
  v8 = 0;
LABEL_13:
  if (!specialized static HostingControllerOverrides.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

LABEL_28:

    return 0;
  }

  if (!v10)
  {
    v10 = Strong;
    goto LABEL_28;
  }

  v11 = v10;

  if (Strong != v11)
  {
    return 0;
  }

LABEL_19:
  v12 = swift_unknownObjectWeakLoadStrong();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    if (!v10)
    {
      return (v8 & 1) != 0;
    }

    goto LABEL_28;
  }

  if (!v10)
  {
    v10 = v12;
    goto LABEL_28;
  }

  v13 = v10;

  result = v12 == v13;
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  return result;
}

BOOL specialized static HostingControllerOverrides.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of PushTarget?(a1, v16);
  outlined init with copy of PushTarget?(a2, &v17);
  if (v16[8] == 2)
  {
    if (v18 == 2)
    {
      outlined destroy of (PushTarget?, PushTarget?)(v16, type metadata accessor for PushTarget?);
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of (PushTarget?, PushTarget?)(v16, type metadata accessor for (PushTarget?, PushTarget?));
    return 0;
  }

  outlined init with copy of PushTarget?(v16, v15);
  if (v18 == 2)
  {
    outlined destroy of PushTarget(v15);
    goto LABEL_6;
  }

  outlined init with take of PushTarget(&v17, v14);
  v6 = specialized static PushTarget.== infix(_:_:)(v15, v14);
  outlined destroy of PushTarget(v14);
  outlined destroy of PushTarget(v15);
  outlined destroy of (PushTarget?, PushTarget?)(v16, type metadata accessor for PushTarget?);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = v8;

    if (Strong != v9)
    {
      return 0;
    }
  }

  else if (v8)
  {
    goto LABEL_21;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v8)
    {
      v10 = v8;

      if (Strong == v10)
      {
        goto LABEL_22;
      }

      return 0;
    }

LABEL_19:

    return 0;
  }

  if (v8)
  {
LABEL_21:

    return 0;
  }

LABEL_22:
  v11 = *(a1 + 48);
  v4 = v11 == 2;
  v12 = *(a2 + 48);
  if (v12 != 2)
  {
    v4 = 0;
  }

  if (v11 != 2)
  {
    v13 = v12 ^ v11 ^ 1;
    if (v12 != 2)
    {
      return v13;
    }
  }

  return v4;
}

uint64_t outlined init with copy of PushTarget?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PushTarget?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized InferredToolbarState.init()()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12VerticalEdgeO_SdTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, isUniquelyReferenced_nonNull_native, 1.0);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v2, 1.0);
  return v0;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
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
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
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
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1 & 1, v19, a3);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, ReadDestinationsModifier<ResolvedNavigationDestinations>>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>(255, a3);
    _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(255, &lazy cache variable for type metadata for ReadDestinationsModifier<ResolvedNavigationDestinations>, &type metadata for ResolvedNavigationDestinations, &protocol witness table for ResolvedNavigationDestinations, type metadata accessor for ReadDestinationsModifier);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1 & 1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for _VariadicView.Tree();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type VerticalEdge and conformance VerticalEdge()
{
  result = lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge;
  if (!lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2 & 1;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t destroy for NavigationState.StackContent.Views.ViewsSequence(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2 == 2)
  {

    v4 = *(a1 + 24);
    if (v4)
    {
      if (v4 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(a1 + 40))
    {
    }

    if (*(a1 + 64))
    {

LABEL_34:
    }
  }

  else if (v2 == 1)
  {
    if (*(a1 + 48))
    {
    }

    if (*(a1 + 104))
    {
    }

    v3 = *(a1 + 208);
    if (*(a1 + 240))
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 152))
          {
            __swift_destroy_boxed_opaque_existential_1(a1 + 128);
          }

          if (*(a1 + 176) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 120);
        }
      }
    }

    else
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 152))
          {
            __swift_destroy_boxed_opaque_existential_1(a1 + 128);
          }

          if (*(a1 + 176) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 120);
        }
      }
    }

    if (*(a1 + 360))
    {

      goto LABEL_34;
    }
  }

LABEL_35:
}

uint64_t NavigationAuthority.controllerCache.getter()
{
  v1 = v0;
  result = swift_weakLoadStrong();
  if (!result)
  {
    type metadata accessor for NavigationHostingControllerCache_UIKit();
    v5 = swift_allocObject();
    *(v5 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationContentAbstractPositionV_AC0E22StackHostingControllerCyAC7AnyViewVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v5 + 24) = 0;
    return v5;
  }

  v3 = result;
  if ((*(result + 208) & 1) == 0)
  {
    v4 = *(v1 + 16);
    v6[0] = *(v1 + 8);
    v6[1] = v4;

    NavigationStateHost.createState(environment:)(v6);
  }

  v5 = *(v3 + 200);
  if (v5)
  {

    return v5;
  }

  __break(1u);
  return result;
}

void @objc NavigationStackHostingController.viewDidLoad()(void *a1)
{
  v1 = a1;
  NavigationStackHostingController.viewDidLoad()();
}

Swift::Void __swiftcall NavigationStackHostingController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  specialized UIHostingController.host.getter();
  specialized _UIHostingView.delegate.setter(v0, &protocol witness table for NavigationStackHostingController<A>);
}

void @objc _UIHostingView.clipsToBounds.setter(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  _UIHostingView.clipsToBounds.setter(a3);
}

void _UIHostingView.clipsToBounds.setter(char a1)
{
  v3 = type metadata accessor for _UIHostingView();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, sel_clipsToBounds);
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, sel_setClipsToBounds_, a1 & 1);
  v5 = _UIHostingView.base.getter();
  UIHostingViewBase.clipsToBoundsDidChange(oldValue:)(v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = a1;
  Hasher.init(_seed:)();
  if (v4 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](a1);
  }

  MEMORY[0x18D00F6F0](a2);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v5);
}

void type metadata accessor for _DictionaryStorage<NavigationContentAbstractPosition, NavigationStackHostingController<AnyView>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NavigationContentAbstractPosition, NavigationStackHostingController<AnyView>>)
  {
    type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
    lazy protocol witness table accessor for type NavigationContentAbstractPosition and conformance NavigationContentAbstractPosition();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationContentAbstractPosition, NavigationStackHostingController<AnyView>>);
    }
  }
}

uint64_t specialized UIHostingController.prepareNavigationBar(in:navigationController:isRoot:)(uint64_t a1, uint64_t a2, UINavigationController *a3, char a4)
{
  v5 = v4;
  v8 = a2;
  v9 = *&v4[direct field offset for UIHostingController.toolbarBridge];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = *(v9 + direct field offset for ToolbarBridge.navigationAdaptor);
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = v10 + 32;

  v13 = 0;
  do
  {
    outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v12, &aBlock);
    v14 = v32;
    v15 = v33;
    __swift_project_boxed_opaque_existential_1(&aBlock, v32);
    (*(v15 + 1))(v29, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    v13 |= LOBYTE(v29[0]);
    v12 += 48;
    --v11;
  }

  while (v11);

  v8 = a2;
  if ((v13 & 2) == 0)
  {
LABEL_6:
    v17 = ~a4;
    v18 = [(UINavigationController *)a3 splitViewController];
    aBlock = xmmword_18CD874C0;
    v31 = 0;
    LOBYTE(v32) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();

    v35 = (a4 & 1) == 0;
    v19 = direct field offset for UIHostingController.overrides;
    swift_beginAccess();
    outlined assign with take of HostingControllerOverrides(&aBlock, &v5[v19]);
    swift_endAccess();
    v20 = *&v5[direct field offset for UIHostingController.host];
    v21 = specialized _UIHostingView.base.getter();

    UIHostingViewBase.viewGraph.getter();
    ViewGraphHost.updateRemovedState(isUnattached:isHiddenForReuse:)(0, 0);

    if (v17)
    {
      specialized UIHostingController.resolveRequiredBridges(_:allowedActions:)(0, 0, 0, 0, 3);
      specialized UIHostingController.updateIncomingBoundsIfNeeded(navigationController:)(a3);
      v22 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v5;
      v24 = swift_allocObject();
      *(v24 + 16) = partial apply for specialized closure #1 in UIHostingController.performRender();
      *(v24 + 24) = v23;
      v33 = partial apply for thunk for @callee_guaranteed () -> ();
      v34 = v24;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v31 = thunk for @escaping @callee_guaranteed () -> ();
      v32 = &block_descriptor_103;
      v25 = _Block_copy(&aBlock);
      v26 = v5;

      [v22 performWithoutAnimation_];
      _Block_release(v25);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      specialized UIHostingController.promoteTitle(in:)(a1, v8);
    }

    aBlock = xmmword_18CD874C0;
    v31 = 0;
    LOBYTE(v32) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v35 = 2;
    swift_beginAccess();
    outlined assign with take of HostingControllerOverrides(&aBlock, &v5[v19]);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_18BEA5324()
{

  return swift_deallocObject();
}

void *specialized _NativeSet.copy()(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t, _OWORD *))
{
  v6 = v4;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, a1, a2);
  v7 = *v4;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = 40 * (v19 | (v13 << 6));
        result = a4(*(v7 + 48) + v22, v26);
        v23 = *(v9 + 48) + v22;
        v24 = v26[0];
        v25 = v26[1];
        *(v23 + 32) = v27;
        *v23 = v24;
        *(v23 + 16) = v25;
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v6 = v9;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<ToolbarPlacement.Role>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, outlined init with copy of ToolbarPlacement.Role);
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<AccessibilityRelationshipScope.Key>, lazy protocol witness table accessor for type AccessibilityRelationshipScope.Key and conformance AccessibilityRelationshipScope.Key);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        result = outlined init with copy of AccessibilityRelationshipScope.Key(*(v2 + 48) + v17, v21);
        v18 = (*(v4 + 48) + v17);
        v19 = v21[0];
        v20 = v21[2];
        v18[1] = v21[1];
        v18[2] = v20;
        *v18 = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<UniqueID>, lazy protocol witness table accessor for type UniqueID and conformance UniqueID);
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<EventID>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v21[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = (*(v2 + 48) + v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = (*(v4 + 48) + v17);
      *v21 = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<NavigationState.ListKey>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 40) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 48 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v21 = *(v4 + 48) + v17;
      v22 = *(v18 + 16);
      *v21 = *v18;
      *(v21 + 16) = v22;
      *(v21 + 32) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ToolbarDefaultItemKind.Kind>, lazy protocol witness table accessor for type ToolbarDefaultItemKind.Kind and conformance ToolbarDefaultItemKind.Kind);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<Toolbar.BarLocation>, lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation, &type metadata for Toolbar.BarLocation, outlined init with copy of Toolbar.BarLocation);
}

{
  v1 = v0;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _SetStorage<HashableCommandGroupPlacementWrapper>();
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        outlined init with copy of HashableCommandGroupPlacementWrapper(*(v6 + 48) + v21, v5);
        result = outlined init with take of HashableCommandGroupPlacementWrapper(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<SceneRequestCache.Item>, lazy protocol witness table accessor for type SceneRequestCache.Item and conformance SceneRequestCache.Item);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 56 * (v14 | (v8 << 6));
        result = outlined init with copy of SceneRequestCache.Item(*(v2 + 48) + v17, v22);
        v18 = *(v4 + 48) + v17;
        v19 = v23;
        v20 = v22[2];
        v21 = v22[1];
        *v18 = v22[0];
        *(v18 + 16) = v21;
        *(v18 + 32) = v20;
        *(v18 + 48) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<HashableWeakBox<Swift.AnyObject>>();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v2 + 48) + v17, v18);
        result = outlined init with take of HashableWeakBox<Swift.AnyObject>(v18, *(v4 + 48) + v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E6969C28], type metadata accessor for _SetStorage<IndexPath>);
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ArchivedViewState.ID>, lazy protocol witness table accessor for type ArchivedViewState.ID and conformance ArchivedViewState.ID);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 16) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v4 + 48) + v17;
      v20 = *(v18 + 16);
      *v19 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<ToolbarItemPlacement.Role>, lazy protocol witness table accessor for type ToolbarItemPlacement.Role and conformance ToolbarItemPlacement.Role);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        result = outlined init with copy of ToolbarItemPlacement.Role(*(v2 + 48) + v17, &v21);
        v18 = (*(v4 + 48) + v17);
        v19 = v21;
        v20 = v22[0];
        *(v18 + 25) = *(v22 + 9);
        *v18 = v19;
        v18[1] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E6968278], type metadata accessor for _SetStorage<DateComponents>);
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<Color>, lazy protocol witness table accessor for type Color and conformance Color);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _SetStorage<_ViewList_ID.Canonical>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<ObjectIdentifier>();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HasContentToolbar and conformance HasContentToolbar()
{
  result = lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar;
  if (!lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar;
  if (!lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar;
  if (!lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar;
  if (!lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar;
  if (!lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasContentToolbar and conformance HasContentToolbar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>, type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>()
{
  if (!lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for _BackgroundPreferenceModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static ViewModifier<>._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  outlined init with copy of _ViewInputs(a2, v25);
  AGGraphCreateOffsetAttribute2();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  *&v25[0] = AGCreateWeakAttribute();
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  PropertyList.subscript.setter();
  LODWORD(v25[0]) = OffsetAttribute2;
  lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
  lazy protocol witness table accessor for type Attribute<Int> and conformance Attribute<A>();
  _GraphInputs.subscript.setter();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v16 = *(a2 + 32);
  v17 = v4;
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  v5 = *(a2 + 16);
  v14 = *a2;
  v15 = v5;
  outlined init with copy of _ViewInputs(a2, v24);
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.scrollTargetRole.setter();
  _GraphInputs.scrollTargetRemovePreference.setter();
  DWORD1(v16) |= 0x800u;
  v20[3] = v17;
  v20[4] = v18;
  v21 = v19;
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v16;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v8 = v14;
  v9 = v15;
  v6 = outlined init with copy of _ViewInputs(v20, v24);
  a3(v6, &v8);
  v22[2] = v10;
  v22[3] = v11;
  v22[4] = v12;
  v23 = v13;
  v22[0] = v8;
  v22[1] = v9;
  outlined destroy of _ViewInputs(v22);
  v24[2] = v16;
  v24[3] = v17;
  v24[4] = v18;
  v25 = v19;
  v24[0] = v14;
  v24[1] = v15;
  return outlined destroy of _ViewInputs(v24);
}

{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = v5;
  v8 = *(a2 + 16);
  v22 = v6;
  v23 = *(a2 + 80);
  v18 = *a2;
  v19 = v7;
  swift_beginAccess();
  LODWORD(v8) = *(v8 + 16);
  v26 = v18;
  v27 = v19;
  v28 = v20;
  outlined init with copy of _ViewInputs(a2, v32);
  _GraphInputs.interfaceIdiom.getter();
  v9 = AnyInterfaceIdiom.accepts<A>(_:)();
  LODWORD(v32[0]) = v8;
  BYTE4(v32[0]) = v9 & 1;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TableShowsFirstColumnOnlyModifier.Child and conformance TableShowsFirstColumnOnlyModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v25 = v23;
  v24[0] = v18;
  v24[1] = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12 = v18;
  v13 = v19;
  v10 = outlined init with copy of _ViewInputs(v24, v32);
  a3(v10, &v12);
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v26 = v12;
  v27 = v13;
  outlined destroy of _ViewInputs(&v26);
  v32[2] = v20;
  v32[3] = v21;
  v32[4] = v22;
  v33 = v23;
  v32[0] = v18;
  v32[1] = v19;
  return outlined destroy of _ViewInputs(v32);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance InjectKeyModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t outlined destroy of _UIHostingView<AnyView>.HostViewGraph(uint64_t a1)
{
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>.HostViewGraph, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView.HostViewGraph);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _UIHostingView.updateBackgroundColor()()
{
  v1 = MEMORY[0x1E69E7D40];
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8)) == 1 && (v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))) != 0)
  {
    type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    v9.receiver = v0;
    v9.super_class = v3;
    objc_msgSendSuper2(&v9, sel_setBackgroundColor_, v2);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      if (*(v0 + *((*v1 & *v0) + 0xA0)))
      {
        type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
        v11.receiver = v0;
        v11.super_class = v5;
        objc_msgSendSuper2(&v11, sel_setBackgroundColor_, 0);
      }

      else
      {
        v6 = [objc_opt_self() systemBackgroundColor];
        if (*(v0 + *((*v1 & *v0) + 0x88)) == 1)
        {
        }

        else
        {
          v8 = v6;
          type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
          v10.receiver = v0;
          v10.super_class = v7;
          objc_msgSendSuper2(&v10, sel_setBackgroundColor_, v8);
        }
      }
    }
  }
}

{
  specialized _UIHostingView.updateBackgroundColor()(type metadata accessor for _UIHostingView<TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>>);
}

{
  v1 = MEMORY[0x1E69E7D40];
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8)) == 1 && (v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))) != 0)
  {
    type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
    v9.receiver = v0;
    v9.super_class = v3;
    objc_msgSendSuper2(&v9, sel_setBackgroundColor_, v2);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      if (*(v0 + *((*v1 & *v0) + 0xA0)))
      {
        type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
        v11.receiver = v0;
        v11.super_class = v5;
        objc_msgSendSuper2(&v11, sel_setBackgroundColor_, 0);
      }

      else
      {
        v6 = [objc_opt_self() systemBackgroundColor];
        if (*(v0 + *((*v1 & *v0) + 0x88)) == 1)
        {
        }

        else
        {
          v8 = v6;
          type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for _UIHostingView);
          v10.receiver = v0;
          v10.super_class = v7;
          objc_msgSendSuper2(&v10, sel_setBackgroundColor_, v8);
        }
      }
    }
  }
}

{
  v1 = MEMORY[0x1E69E7D40];
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8)) == 1 && (v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))) != 0)
  {
    type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
    v9.receiver = v0;
    v9.super_class = v3;
    objc_msgSendSuper2(&v9, sel_setBackgroundColor_, v2);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      if (*(v0 + *((*v1 & *v0) + 0xA0)))
      {
        type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
        v11.receiver = v0;
        v11.super_class = v5;
        objc_msgSendSuper2(&v11, sel_setBackgroundColor_, 0);
      }

      else
      {
        v6 = [objc_opt_self() systemBackgroundColor];
        if (*(v0 + *((*v1 & *v0) + 0x88)) == 1)
        {
        }

        else
        {
          v8 = v6;
          type metadata accessor for UIHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
          v10.receiver = v0;
          v10.super_class = v7;
          objc_msgSendSuper2(&v10, sel_setBackgroundColor_, v8);
        }
      }
    }
  }
}

{
  specialized _UIHostingView.updateBackgroundColor()(type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>);
}

{
  specialized _UIHostingView.updateBackgroundColor()(type metadata accessor for _UIHostingView<ModifiedContent<AnyView, DocumentBaseModifier>>);
}

{
  specialized _UIHostingView.updateBackgroundColor()(&lazy cache variable for type metadata for _UIHostingView<BridgedNavigationView.RootView>, lazy protocol witness table accessor for type BridgedNavigationView.RootView and conformance BridgedNavigationView.RootView, &type metadata for BridgedNavigationView.RootView);
}

void type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout>, type metadata accessor for _ViewModifier_Content<NavigationBackgroundReaderModifier>, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NavigationBackgroundReaderModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<NavigationBackgroundReaderModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NavigationBackgroundReaderModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for NavigationState.ListKey?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t implicit closure #1 in static ReadDestinationsModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v9 = *(a1 + 32);
  Destinations = type metadata accessor for ReadDestinationsModifier.RequestsTransform();
  v11 = Destinations;
  WitnessTable = swift_getWitnessTable();
  (*(*(Destinations - 8) + 16))(v7, a1, Destinations);
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, closure #1 in Attribute.init<A>(_:)partial apply, v10, Destinations, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);

  return v7[0];
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey);
  }

  return result;
}

uint64_t type metadata completion function for SearchEnvironmentStorage()
{
  result = type metadata accessor for SearchEnvironmentStorage.BoundProperties(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance NavigationAuthority.ViewInputKey()
{
  type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t TimelineView<>.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a6;
  *(v15 + 5) = a7;
  *(v15 + 6) = a2;
  *(v15 + 7) = a3;
  result = type metadata accessor for TimelineView();
  v17 = (a8 + *(result + 44));
  *v17 = partial apply for closure #1 in TimelineView<>.init(_:content:);
  v17[1] = v15;
  return result;
}

{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a2;
  v21[7] = a3;
  TimelineView<>.init(_:content:)(v19, partial apply for closure #1 in TimelineView<>.init(_:content:), v21, a4, a5, a6, a7, a8);
  return (*(v16 + 8))(a1, a4);
}

uint64_t sub_18BEA6518()
{

  return swift_deallocObject();
}

uint64_t TimelineView<>.UpdateFilter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v232 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v195 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v194 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context();
  v192 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v193 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v205 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v187 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v220 = v4;
  v204 = type metadata accessor for TimelineView();
  v186 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v184 = &v176 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v185 = &v176 - v14;
  v202 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v216 = AssociatedTypeWitness;
  v227 = swift_getAssociatedTypeWitness();
  v222 = type metadata accessor for Optional();
  v208 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v183 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v188 = &v176 - v17;
  v229 = type metadata accessor for Date();
  v225 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v191 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v207 = &v176 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v209 = &v176 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v177 = &v176 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v179 = &v176 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v217 = &v176 - v28;
  type metadata accessor for BLSAlwaysOnFrameSpecifier?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v29);
  v210 = &v176 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v178 = &v176 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v182 = &v176 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v196 = &v176 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v221 = &v176 - v38;
  type metadata accessor for (value: Date?, changed: Bool)();
  v201 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v200 = &v176 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v176 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v224 = &v176 - v45;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v198 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v219 = &v176 - v47;
  v48 = *(a1 - 8);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = &v176 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = *(a1 + 96);
  v53 = *(v2 + v228);
  v54 = *(v48 + 16);
  v213 = v48 + 16;
  v212 = v54;
  (v54)(v52, v2, a1, v50);
  LODWORD(AssociatedTypeWitness) = *AGGraphGetValue();
  v55 = *(v48 + 8);
  v214 = v52;
  v230 = a1;
  v223 = v48 + 8;
  v211 = v55;
  v55(v52, a1);
  if (*(v2 + 48) != AssociatedTypeWitness >> 1)
  {
    v56 = v214;
    v57 = v230;
    v212(v214, v2, v230);
    v58 = *AGGraphGetValue();
    v211(v56, v57);
    *(v2 + 48) = v58 >> 1;
    v59 = *(v57 + 92);
    (*(v208 + 8))(v2 + v59, v222);
    (*(*(v227 - 8) + 56))(v2 + v59, 1, 1);
    *(v2 + v228) = 0xFFF0000000000000;
    *(v2 + *(v57 + 100)) = 0x7FF0000000000000;
    *(v2 + 44) = 0;
  }

  v60 = *(TupleTypeMetadata2 + 48);
  Value = AGGraphGetValue();
  v63 = v62;
  v64 = *(v205 + 16);
  v65 = v219;
  v203 = v8;
  v181 = v205 + 16;
  v180 = v64;
  v64(v219, Value, v8);
  v189 = v60;
  v215 = v63 & 1;
  v65[v60] = v63 & 1;
  AGGraphGetValue();
  v197 = v66;
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    v67 = *(v201 + 48);
    v68 = v224;
    v69 = v225;
    (*(v225 + 56))(v224, 1, 1, v229);
    *(v68 + v67) = 0;
    v70 = v227;
  }

  else
  {
    v71 = *(v201 + 48);
    v72 = AGGraphGetValue();
    v74 = v73;
    outlined init with copy of Date?(v72, v43);
    v43[v71] = v74 & 1;
    outlined init with take of (value: Date?, changed: Bool)(v43, v224);
    v70 = v227;
    v69 = v225;
  }

  type metadata accessor for BLSAlwaysOnFrameSpecifier?(0, &lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier?, type metadata accessor for BLSAlwaysOnFrameSpecifier, MEMORY[0x1E69E6720]);
  v75 = AGGraphGetValue();
  v77 = v76;
  v78 = *v75;
  type metadata accessor for BLSUpdateFidelity(0);
  v218 = v78;
  v206 = v78;
  v79 = AGGraphGetValue();
  v81 = v80;
  v190 = *v79;
  if (((v77 & 1) != 0 || !AGGraphGetOutputValue()) && (v218 != 0) != *(v2 + 44))
  {
    v82 = v218 != 0;
    v83 = *(v230 + 92);
    (*(v208 + 8))(v2 + v83, v222);
    (*(*(v70 - 8) + 56))(v2 + v83, 1, 1, v70);
    *(v2 + 44) = v82;
  }

  v199 = TupleTypeMetadata2;
  if (v81)
  {
    LODWORD(v197) = 0;
    v215 = 1;
    v219[v189] = 1;
  }

  else
  {
    LODWORD(v197) = (v197 & 1) == 0;
  }

  v84 = v217;
  v85 = v228;
  v86 = v229;
  v87 = v200;
  outlined init with copy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v224, v200, type metadata accessor for (value: Date?, changed: Bool));
  v88 = v87;
  v89 = v221;
  outlined init with take of Date?(v88, v221);
  v90 = v89;
  v91 = v196;
  outlined init with copy of Date?(v90, v196);
  v93 = v69 + 48;
  v92 = *(v69 + 48);
  if (v92(v91, 1, v86) == 1)
  {
    Date.init()();
    if (v92(v91, 1, v86) != 1)
    {
      outlined destroy of Date?(v91);
    }
  }

  else
  {
    (*(v69 + 32))(v84, v91, v86);
  }

  Date.timeIntervalSinceReferenceDate.getter();
  v95 = v94;
  v96 = v230;
  if ((v215 & 1) != 0 || (v97 = v208, v98 = v230, v99 = v93, v100 = v188, v101 = v222, (*(v208 + 16))(v188, v2 + *(v230 + 92), v222), v102 = (*(*(v70 - 8) + 48))(v100, 1, v70), v103 = v100, v93 = v99, v96 = v98, v85 = v228, (*(v97 + 8))(v103, v101), v102 == 1) || (v104 = v200, outlined init with copy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v224, v200, type metadata accessor for (value: Date?, changed: Bool)), v105 = *(v104 + *(v201 + 48)), outlined destroy of Date?(v104), v105 == 1))
  {
    v106 = *(v96 + 100);
    *(v2 + v106) = 0x7FF0000000000000;
    if (v92(v221, 1, v86) != 1)
    {
      *(v2 + v85) = v95;
      goto LABEL_26;
    }

    v201 = v106;
    v215 = v92;
    v107 = v218 != 0;
    v108 = v214;
    v212(v214, v2, v96);
    v109 = v184;
    TimelineView<>.UpdateFilter.view.getter(v184);
    v211(v108, v96);
    v110 = v187;
    v111 = v96;
    v112 = v203;
    v180(v187, v109, v203);
    (*(v186 + 8))(v109, v204);
    v231[0] = v107;
    (*(v202 + 24))(v217, v231, v112);
    (*(v205 + 8))(v110, v112);
    v113 = v183;
    dispatch thunk of Sequence.makeIterator()();
    v114 = *(v70 - 8);
    (*(v114 + 56))(v113, 0, 1, v70);
    v115 = *(v111 + 92);
    (*(v208 + 40))(v2 + v115, v113, v222);
    v116 = *(v114 + 48);
    if (v116(v2 + v115, 1, v70))
    {
      v117 = v182;
      (*(v225 + 56))(v182, 1, 1, v229);
LABEL_25:
      outlined destroy of Date?(v117);
      v92 = v215;
      v96 = v230;
      goto LABEL_26;
    }

    v118 = swift_getAssociatedConformanceWitness();
    v119 = v182;
    dispatch thunk of IteratorProtocol.next()();
    v117 = v119;
    v120 = v119;
    v121 = v229;
    if ((v215)(v120, 1, v229) == 1)
    {
      goto LABEL_25;
    }

    v222 = v118;
    v208 = v93;
    v134 = v225;
    v135 = v179;
    v205 = *(v225 + 32);
    (v205)(v179, v117, v121);
    Date.timeIntervalSinceReferenceDate.getter();
    *(v2 + v85) = v136;
    if (v116(v2 + v115, 1, v70))
    {
      v137 = v229;
      (*(v134 + 8))(v135, v229);
      v138 = v178;
      (*(v134 + 56))(v178, 1, 1, v137);
      v92 = v215;
    }

    else
    {
      v138 = v178;
      dispatch thunk of IteratorProtocol.next()();
      v171 = v229;
      v92 = v215;
      if ((v215)(v138, 1, v229) != 1)
      {
        v172 = v177;
        (v205)(v177, v138, v171);
        Date.timeIntervalSinceReferenceDate.getter();
        v174 = v173;
        v175 = *(v134 + 8);
        v175(v172, v171);
        v175(v179, v171);
        *(v2 + v201) = v174;
        goto LABEL_58;
      }

      (*(v134 + 8))(v179, v171);
    }

    outlined destroy of Date?(v138);
LABEL_58:
    v96 = v230;
    v70 = v227;
    v93 = v208;
  }

LABEL_26:
  v122 = *(v96 + 100);
  v222 = v122;
  if (v218)
  {
    v123 = v206;
    v124 = TimelineView<>.UpdateFilter.updateFromBacklightServices(frameSpecifier:)(v123, v96);

    if (v124)
    {
      v219[v189] = 1;
    }
  }

  else
  {
    v215 = v92;
    v208 = v93;
    v125 = *(v2 + v122);
    if (v125 <= v95)
    {
      v126 = *(v230 + 92);
      v127 = *(*(v70 - 8) + 48);
      v128 = (v225 + 32);
      v129 = (v225 + 8);
      while (!v127(v2 + v126, 1, v70))
      {
        swift_getAssociatedConformanceWitness();
        v130 = v210;
        dispatch thunk of IteratorProtocol.next()();
        v85 = v228;
        v131 = v229;
        if ((v215)(v130, 1, v229) == 1)
        {
          goto LABEL_38;
        }

        v132 = v209;
        (*v128)(v209, v130, v131);
        *(v2 + v85) = v125;
        Date.timeIntervalSinceReferenceDate.getter();
        v125 = v133;
        (*v129)(v132, v131);
        *(v2 + v222) = v125;
        v70 = v227;
        if (v95 < v125)
        {
          goto LABEL_39;
        }
      }

      v130 = v210;
      (*(v225 + 56))(v210, 1, 1, v229);
LABEL_38:
      outlined destroy of Date?(v130);
    }
  }

LABEL_39:
  v139 = *(v2 + v85);
  if ((*&v139 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    *(v2 + v85) = v95;
    v139 = v95;
  }

  v140 = v197;
  if (v139 != v53)
  {
    v140 = 0;
  }

  v141 = v229;
  v142 = v230;
  v143 = v225;
  if (v140 != 1 || (AGGraphCurrentAttributeWasModified() & 1) != 0 || !AGGraphGetOutputValue())
  {
    v144 = v207;
    Date.init(timeIntervalSinceReferenceDate:)();
    v145 = v191;
    (*(v143 + 16))(v191, v144, v141);
    v146 = 0x10202u >> (8 * v190);
    if (v190 >= 4)
    {
      v146 = 2;
    }

    LODWORD(v228) = v146;
    v147 = v214;
    v148 = v212;
    v212(v214, v2, v142);
    v149 = v192;
    v150 = *(v192 + 48);
    v151 = AGGraphGetValue();
    v152 = &v193[v150];
    v153 = v193;
    outlined init with copy of TimelineInvalidationAction(v151, v152);
    v154 = v211;
    v211(v147, v142);
    (*(v143 + 32))(v153, v145, v229);
    *(v153 + *(v149 + 44)) = v228;
    v155 = v148(v147, v2, v142);
    MEMORY[0x1EEE9AC00](v155);
    v156 = v220;
    *(&v176 - 6) = v203;
    *(&v176 - 5) = v156;
    v157 = *(v142 + 40);
    *(&v176 - 4) = v202;
    *(&v176 - 3) = v157;
    *(&v176 - 2) = v2;
    *(&v176 - 1) = v153;
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x18D000B40](v142, v156, WitnessTable);
    v159 = v194;
    StatefulRule.withObservation<A>(observationCenter:do:)();

    v160 = v154(v147, v230);
    MEMORY[0x1EEE9AC00](v160);
    *(&v176 - 2) = v230;
    *(&v176 - 1) = WitnessTable;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v159, partial apply for closure #1 in StatefulRule.value.setter, (&v176 - 4), v156, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v161);
    v162 = v159;
    v141 = v229;
    v142 = v230;
    v143 = v225;
    (*(v195 + 8))(v162, v156);
    (*(v143 + 8))(v207, v141);
    outlined destroy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v153, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  }

  v163 = *(v2 + v222);
  if (v163 == INFINITY)
  {

    (*(v143 + 8))(v217, v141);
    outlined destroy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v224, type metadata accessor for (value: Date?, changed: Bool));
    (*(v198 + 8))(v219, v199);
  }

  else
  {
    v164 = v163 - v95;
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    type metadata accessor for ViewGraph();
    v165 = swift_dynamicCastClassUnconditional();
    v166 = v214;
    v212(v214, v2, v142);
    v167 = *AGGraphGetValue();

    v211(v166, v142);
    (*(v143 + 8))(v217, v141);
    outlined destroy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(v224, type metadata accessor for (value: Date?, changed: Bool));
    (*(v198 + 8))(v219, v199);
    v168 = v164 + v167;
    swift_beginAccess();
    v169 = *(v165 + 376);
    if (v168 < v169)
    {
      v169 = v168;
    }

    *(v165 + 376) = v169;
  }

  return outlined destroy of Date?(v221);
}

void type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context()
{
  if (!lazy cache variable for type metadata for TimelineView<PeriodicTimelineSchedule, Never>.Context)
  {
    type metadata accessor for PeriodicTimelineSchedule();
    _s10Foundation4DateVACSLAAWlTm_0(&lazy protocol witness table cache variable for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule, MEMORY[0x1E69803F0]);
    v0 = type metadata accessor for TimelineView.Context();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TimelineView<PeriodicTimelineSchedule, Never>.Context);
    }
  }
}

void type metadata accessor for BLSAlwaysOnFrameSpecifier?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (value: Date?, changed: Bool)()
{
  if (!lazy cache variable for type metadata for (value: Date?, changed: Bool))
  {
    type metadata accessor for BLSAlwaysOnFrameSpecifier?(255, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: Date?, changed: Bool));
    }
  }
}

_DWORD *initializeWithCopy for TimelineView<>.UpdateFilter(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  *v11 = *v12;
  v14 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15 + 19;
  *v14 = *v15;
  v17 = v14 + 19;
  v14[1] = v15[1];
  v18 = (v14 + 11) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 4) = *(v19 + 4);
  v20 = v17 & 0xFFFFFFFFFFFFFFF8;
  v21 = v16 & 0xFFFFFFFFFFFFFFF8;
  *(v17 & 0xFFFFFFFFFFFFFFF8) = *(v16 & 0xFFFFFFFFFFFFFFF8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 80);
  v25 = ((v24 + v20 + 4) & ~v24);
  v26 = ((v24 + v21 + 4) & ~v24);
  v27 = *(v23 + 48);
  v28 = v13;
  if (v27(v26, 1, AssociatedTypeWitness))
  {
    v29 = *(v23 + 84);
    v30 = *(v23 + 64);
    if (v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 + 1;
    }

    memcpy(v25, v26, v31);
  }

  else
  {
    (*(v23 + 16))(v25, v26, AssociatedTypeWitness);
    v33 = *(v23 + 56);
    v32 = v23 + 56;
    v33(v25, 0, 1, AssociatedTypeWitness);
    v29 = *(v32 + 28);
    v30 = *(v32 + 8);
  }

  if (v29)
  {
    v34 = v30;
  }

  else
  {
    v34 = v30 + 1;
  }

  v35 = ((v25 + v34 + 7) & 0xFFFFFFFFFFFFFFF8);
  v36 = ((v26 + v34 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v35 = *v36;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v37 = *v38;
  *(v37 + 8) = *(v38 + 8);
  return a1;
}

uint64_t sub_18BEA82E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18BEA8360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t destroy for TimelineView<>.UpdateFilter(uint64_t a1)
{
  v1 = ((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF8);

  v2 = (((v1 + 11) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = v5 + v2 + 4;
  v9 = v4;
  result = (*(v4 + 48))(v6 & ~v5, 1, AssociatedTypeWitness);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, AssociatedTypeWitness);
  }

  return result;
}

uint64_t outlined init with copy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DateComponents?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation4DateVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for DateComponents?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of Date?(uint64_t a1)
{
  type metadata accessor for Date?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance AnimationTimelineSchedule.Entries@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 20) + 8))
  {
    v4 = type metadata accessor for Date();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 1, 1, v4);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a2, v2, v7);
    (*(v8 + 56))(a2, 0, 1, v7);

    return static Date.+= infix(_:_:)();
  }
}

uint64_t closure #1 in TimelineView<>.UpdateFilter.updateValue()()
{
  type metadata accessor for TimelineView<>.UpdateFilter();
  type metadata accessor for TimelineView();
  return Attribute.syncMainIfReferences<A>(do:)();
}

uint64_t partial apply for closure #1 in closure #1 in TimelineView<>.UpdateFilter.updateValue()(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = type metadata accessor for TimelineView();
  return (*(a1 + *(v4 + 44)))(v3);
}

uint64_t partial apply for closure #1 in TimelineView<>.init(_:content:)(uint64_t a1)
{
  return partial apply for closure #1 in TimelineView<>.init(_:content:)(a1, closure #1 in TimelineView<>.init(_:content:));
}

{
  return partial apply for closure #1 in TimelineView<>.init(_:content:)(a1, closure #1 in TimelineView<>.init(_:content:));
}

uint64_t closure #1 in TimelineView<>.init(_:content:)(uint64_t a1, void (*a2)(char *))
{
  v12 = a2;
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimelineView.Context();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  outlined init with copy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(a1, v5, type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context);
  TimelineView.Context.init(_:)(v5, v9);
  v12(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t outlined destroy of TimelineView<PeriodicTimelineSchedule, Never>.Context(uint64_t a1)
{
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for TimelineView.Context(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 44)) = *(a2 + *(a3 + 44));
  swift_weakCopyInit();
  return a1;
}

uint64_t TimelineView.Context.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v7, a1, v5);
  type metadata accessor for TimelineView<PeriodicTimelineSchedule, Never>.Context();
  v10 = *(v9 + 48);
  v13 = *(a1 + *(v9 + 44));
  outlined init with copy of TimelineInvalidationAction(a1 + v10, v12);
  outlined destroy of TimelineView<PeriodicTimelineSchedule, Never>.Context(a1);
  return TimelineView.Context.init(date:cadence:invalidationAction:)(v7, &v13, v12, a2);
}

uint64_t destroy for TimelineView.Context(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(a1, v2);

  return swift_weakDestroy();
}

uint64_t TimelineView.Context.init(date:cadence:invalidationAction:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for TimelineView.Context();
  *(a4 + *(v9 + 44)) = v7;
  v10 = a4 + *(v9 + 48);

  return outlined init with take of TimelineInvalidationAction(a3, v10);
}

uint64_t TimelineView.Context.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t outlined destroy of TimelineView<EveryMinuteTimelineSchedule, Never>.Context(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TimelineView<>.UpdateFilter.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TimelineView();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance AnimationTimelineSchedule@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 8) | *a2;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v3;
  }

  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = type metadata accessor for AnimationTimelineSchedule.Entries();
  v10 = a3 + *(result + 20);
  *v10 = v7;
  *(v10 + 8) = v6 & 1;
  return result;
}

uint64_t outlined init with take of AnimationTimelineSchedule.Entries(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimationTimelineSchedule.Entries();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AnimationTimelineSchedule.Entries()
{
  result = type metadata singleton initialization cache for AnimationTimelineSchedule.Entries;
  if (!type metadata singleton initialization cache for AnimationTimelineSchedule.Entries)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id _UIHostingView.swiftui_addManagedInteraction(_:)(id result)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x200);
  v4 = *(v1 + v3);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v3) = v6;
    result = [v1 addInteraction_];
    v7 = *((*v2 & *v1) + 0x200);
    v8 = *(v1 + v7);
    v5 = __OFSUB__(v8, 1);
    v9 = v8 - 1;
    if (!v5)
    {
      *(v1 + v7) = v9 & ~(v9 >> 63);
      return result;
    }
  }

  __break(1u);
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ScrollViewAdjustedBehavior@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier()
{
  result = lazy protocol witness table cache variable for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier;
  if (!lazy protocol witness table cache variable for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier);
  }

  return result;
}

uint64_t View.matchedTransitionSource<A, B>(id:in:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v17 = a5;
  v15 = a6;
  v16 = a3;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0u;
  memset(v24, 0, 24);
  v22 = 0u;
  BYTE8(v24[1]) = 1;
  v13();
  (*(a8 + 8))(&v22, a4, a8);
  (*(v10 + 8))(v12, a4);
  _convertToAnyHashable<A>(_:)();
  v25[0] = v22;
  v25[1] = v23;
  v26[0] = v24[0];
  *(v26 + 9) = *(v24 + 9);
  v18[0] = a2;
  v19 = v22;
  v20 = v23;
  v21[0] = v24[0];
  *(v21 + 9) = *(v24 + 9);
  outlined init with copy of _ResolvedMatchedTransitionSourceConfiguration(v25, v27);
  MEMORY[0x18D00A570](v18, v16, &type metadata for MatchedTransitionSourceModifier, v17);
  outlined destroy of MatchedTransitionSourceModifier(v18);
  v27[0] = v22;
  v27[1] = v23;
  v28[0] = v24[0];
  *(v28 + 9) = *(v24 + 9);
  return outlined destroy of _ResolvedMatchedTransitionSourceConfiguration(v27);
}

uint64_t initializeWithCopy for _ResolvedMatchedTransitionSourceConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t outlined destroy of _ResolvedMatchedTransitionSourceConfiguration(uint64_t a1)
{

  return a1;
}

uint64_t type metadata completion function for ContextMenuModifierCore()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance MenuOrderPreferenceKey(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

void @objc _UIHostingView.swiftui_addManagedInteraction(_:)(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  _UIHostingView.swiftui_addManagedInteraction(_:)(a3);
  swift_unknownObjectRelease();
}

uint64_t DragGesture.init<A>(minimumDistance:coordinateSpace:allowedDirections:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = *a2;
  *(a5 + 49) = 15;
  *a5 = a6;
  (*(a4 + 8))(a3, a4);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  *(a5 + 49) = v9;
  return result;
}

_DWORD *assignWithCopy for FeedbackGenerator(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_weakCopyAssign();
  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 16) & ~v10;
  v12 = (v7 + v10 + 16) & ~v10;
  (*(v8 + 24))(v11, v12);
  v13 = *(v9 + 40) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  if (*v14 < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v18 = v15[1];
      *v14 = v16;
      v14[1] = v18;

      goto LABEL_8;
    }
  }

  else
  {
    if (v16 >= 0xFFFFFFFF)
    {
      v17 = v15[1];
      *v14 = v16;
      v14[1] = v17;

      goto LABEL_8;
    }
  }

  *v14 = *v15;
LABEL_8:
  v19 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 24);
  if (!*(v19 + 24))
  {
    if (v21)
    {
      *(v19 + 24) = v21;
      *(v19 + 32) = *(v20 + 32);
      (**(v21 - 8))((v14 + 23) & 0xFFFFFFFFFFFFFFF8, v20);
      goto LABEL_15;
    }

LABEL_14:
    v23 = *v20;
    v24 = *(v20 + 16);
    *(v19 + 32) = *(v20 + 32);
    *v19 = v23;
    *(v19 + 16) = v24;
    goto LABEL_15;
  }

  v22 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  if (!v21)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_1(v22, v20);
LABEL_15:
  *(v19 + 40) = *(v20 + 40);

  return a1;
}

uint64_t assignWithCopy for MatchedTransitionSourceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t initializeWithCopy for PopoverPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Environment<CGFloat?>.Content(*v8, v10, v11);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 17) = *(v8 + 17);
  *(v7 + 19) = *(v8 + 19);
  *(v7 + 20) = *(v8 + 20);
  *(v7 + 21) = *(v8 + 21);
  return a1;
}

uint64_t PopoverPresentationModifier.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v11 + 24);
  v12 = type metadata accessor for PopoverPresentationModifier.PopoverModifier();
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = a1[1];
  (*(v8 + 16))(v10, v4, v7, v14);
  v19 = *(a2 + 40);
  v20 = v4 + *(a2 + 36);
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v36[0] = *v20;
  v21 = v36[0];
  v36[1] = v22;
  v37 = v23;
  v24 = v4 + v19;
  LOWORD(v19) = *(v4 + v19);
  LOWORD(v24) = *(v24 + 1);
  v25 = *(v4 + *(a2 + 44));
  v26 = *(v4 + *(a2 + 48));
  v35[0] = v17;
  v35[1] = v18;
  v27 = *(v4 + *(a2 + 52));
  v34 = 0;
  PopoverPresentationModifier.PopoverModifier.init(viewID:provider:attachmentAnchor:arrowEdges:isDetachable:keyType:environment:attachmentBehavior:)(&v34, v10, v36, v19 | (v24 << 8), v25, v26, v35, v27, v16, v7);
  outlined copy of Environment<CGFloat?>.Content(v21, v22, v23);

  v28 = v31;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  ViewModifier.requiring<A>(_:)(&type metadata for AllowPresentationPredicate, v28);
  return (*(v32 + 8))(v16, v28);
}

uint64_t PopoverPresentationModifier.PopoverModifier.init(viewID:provider:attachmentAnchor:arrowEdges:isDetachable:keyType:environment:attachmentBehavior:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int16 a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t *a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10)
{
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 16);
  v16 = *a7;
  v17 = a7[1];
  *a9 = *a1;
  v18 = type metadata accessor for PopoverPresentationModifier.PopoverModifier();
  result = (*(*(a10 - 8) + 32))(&a9[v18[9]], a2, a10);
  v20 = &a9[v18[10]];
  *v20 = v13;
  *(v20 + 1) = v14;
  v20[16] = v15;
  v21 = &a9[v18[11]];
  *v21 = a4;
  v21[1] = HIBYTE(a4) & 1;
  a9[v18[12]] = a5;
  a9[v18[13]] = a6 & 1;
  v22 = &a9[v18[14]];
  *v22 = v16;
  *(v22 + 1) = v17;
  a9[v18[15]] = a8 & 1;
  return result;
}

_DWORD *initializeWithCopy for PopoverPresentationModifier.PopoverModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v5) = *(v11 + 16);
  outlined copy of Environment<CGFloat?>.Content(*v11, v13, v5);
  *v10 = v12;
  *(v10 + 8) = v13;
  *(v10 + 16) = v5;
  *(v10 + 17) = *(v11 + 17);
  *(v10 + 19) = *(v11 + 19);
  *(v10 + 20) = *(v11 + 20);
  v14 = (v10 + 28) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v11 + 28) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);

  return a1;
}

uint64_t destroy for PopoverPresentationModifier.PopoverModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = v2 + 8;
  v4 = (a1 + *(v2 + 80) + 4) & ~*(v2 + 80);
  (*(v2 + 8))(v4);
  v5 = (*(v3 + 56) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*v5, *(v5 + 8), *(v5 + 16));
}

uint64_t destroy for ItemBoundNavigationDestinationModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 15;

  v4 = v3 & 0xFFFFFFFFFFFFFFF8;

  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v4 + v7 + 8;
  if (!(*(v6 + 48))(v8 & ~v7, 1, v5))
  {
    (*(v6 + 8))(v8 & ~v7, v5);
  }
}

_DWORD *assignWithCopy for PopoverPresentationModifier.PopoverModifier(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v5) = *(v11 + 16);
  outlined copy of Environment<CGFloat?>.Content(*v11, v13, v5);
  v14 = *v10;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  *v10 = v12;
  *(v10 + 8) = v13;
  *(v10 + 16) = v5;
  outlined consume of Environment<CGFloat?>.Content(v14, v15, v16);
  *(v10 + 17) = *(v11 + 17);
  *(v10 + 19) = *(v11 + 19);
  *(v10 + 20) = *(v11 + 20);
  v17 = (v10 + 28) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v11 + 28) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;

  *(v17 + 8) = *(v18 + 8);

  *(v17 + 16) = *(v18 + 16);
  return a1;
}

void *assignWithCopy for PopoverItemStateProvider(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;
  v7 = a1 + 15;

  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *(v7 & 0xFFFFFFFFFFFFFFF8) = *v6;

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8 + v8;
  v13 = v11 + 8 + v6;
  v14 = *(v10 + 48);
  LODWORD(v6) = v14(v12 & ~v11, 1, v9);
  v15 = v14(v13 & ~v11, 1, v9);
  if (v6)
  {
    if (v15)
    {
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
LABEL_6:
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 + 1;
      }

      memcpy((v12 & ~v11), (v13 & ~v11), v18);
      goto LABEL_12;
    }

    (*(v10 + 16))(v12 & ~v11, v13 & ~v11, v9);
    (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
  }

  else
  {
    if (v15)
    {
      (*(v10 + 8))(v12 & ~v11, v9);
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
      goto LABEL_6;
    }

    (*(v10 + 24))(v12 & ~v11, v13 & ~v11, v9);
  }

LABEL_12:
  v19 = *(v10 + 64) + ((v11 + 16) & ~v11);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((a2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;

  return a1;
}

uint64_t destroy for PopoverPresentationModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);

  return outlined consume of Environment<CGFloat?>.Content(v5, v6, v7);
}

uint64_t PopoverPresentationModifier.PopoverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>(255, &lazy cache variable for type metadata for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>, &type metadata for PopoverPresentation.Key, &protocol witness table for PopoverPresentation.Key, type metadata accessor for TransactionalAnchorPreferenceTransformModifier);
  v8 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v83 = WitnessTable;
  v84 = &protocol witness table for TransactionalAnchorPreferenceTransformModifier<A, B>;
  v10 = swift_getWitnessTable();
  v65 = v8;
  *&v80 = v8;
  *(&v80 + 1) = &type metadata for PopoverPresentation.Key;
  v62 = v10;
  v81 = v10;
  v82 = &protocol witness table for PopoverPresentation.Key;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v55 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v54 = v49 - v15;
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>(255, &lazy cache variable for type metadata for EmptyAnchorTraitTransformModifier<CGRect?, TabPopoverPresentationsKey>, &type metadata for TabPopoverPresentationsKey, &protocol witness table for TabPopoverPresentationsKey, type metadata accessor for EmptyAnchorTraitTransformModifier);
  v17 = v16;
  v18 = type metadata accessor for ModifiedContent();
  v57 = OpaqueTypeMetadata2;
  v19 = v64;
  v58 = v18;
  v61 = type metadata accessor for _ConditionalContent();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v49 - v20;
  if (*(v19 + *(a2 + 52)) == 1)
  {
    v53 = v12;
    PopoverPresentationModifier.PopoverModifier.anchor.getter(a2);
    type metadata accessor for CGRect(0);
    v21 = Anchor.Source.init<A>(_:)();
    v52 = *(v4 + 16);
    v52(v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19, a2);
    v56 = WitnessTable;
    v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v23 = swift_allocObject();
    v49[1] = v5;
    v24 = v23;
    v51 = *(a2 + 16);
    v50 = *(a2 + 24);
    v25 = v50;
    *(v23 + 16) = v51;
    *(v23 + 24) = v25;
    v49[0] = *(v4 + 32);
    (v49[0])(v23 + v22, v6, a2);
    type metadata accessor for CGRect?(0);
    View.transactionalAnchorPreferenceTransform<A, B>(key:value:transform:)(&type metadata for PopoverPresentation.Key, v21, partial apply for closure #1 in PopoverPresentationModifier.PopoverModifier.body(content:), v24, v7, v26, &type metadata for PopoverPresentation.Key, v56);

    v78 = v80;
    v79 = v81;
    v52(v6, v64, a2);
    WitnessTable = v56;
    v27 = swift_allocObject();
    v28 = v50;
    *(v27 + 16) = v51;
    *(v27 + 24) = v28;
    (v49[0])(v27 + v22, v6, a2);
    v29 = swift_checkMetadataState();
    v30 = v55;
    v31 = v62;
    View.transformAnchorGeometry<A>(key:transform:)();

    *&v80 = v29;
    *(&v80 + 1) = &type metadata for PopoverPresentation.Key;
    v81 = v31;
    v82 = &protocol witness table for PopoverPresentation.Key;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v54;
    v34 = v57;
    static ViewBuilder.buildExpression<A>(_:)(v30, v57, OpaqueTypeConformance2);
    v35 = *(v53 + 8);
    v35(v30, v34);
    static ViewBuilder.buildExpression<A>(_:)(v33, v34, OpaqueTypeConformance2);
    v66 = WitnessTable;
    v67 = &protocol witness table for EmptyAnchorTraitTransformModifier<A, B>;
    swift_getWitnessTable();
    v36 = v59;
    static ViewBuilder.buildEither<A, B>(first:)(v30, v34);
    v35(v30, v34);
    v35(v33, v34);
    v37 = v65;
  }

  else
  {
    PopoverPresentationModifier.PopoverModifier.anchor.getter(a2);
    v38 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for CGRect(0);
    v39 = Anchor.Source.init<A>(_:)();
    (*(v4 + 16))(v38, v19, a2);
    v40 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = *(a2 + 16);
    (*(v4 + 32))(v41 + v40, v38, a2);
    *&v78 = v39;
    *(&v78 + 1) = partial apply for closure #3 in PopoverPresentationModifier.PopoverModifier.body(content:);
    v79 = v41;
    MEMORY[0x18D00A570](&v80, &v78, v7, v17, WitnessTable);

    v76 = v80;
    v77 = v81;
    v74 = WitnessTable;
    v75 = &protocol witness table for EmptyAnchorTraitTransformModifier<A, B>;
    v42 = v58;
    v43 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(&v76, v42, v43);

    v64 = v78;
    v80 = v78;
    v81 = v79;
    static ViewBuilder.buildExpression<A>(_:)(&v80, v42, v43);

    v72 = v76;
    v73 = v77;

    v37 = v65;
    *&v80 = v65;
    *(&v80 + 1) = &type metadata for PopoverPresentation.Key;
    v31 = v62;
    v81 = v62;
    v82 = &protocol witness table for PopoverPresentation.Key;
    swift_getOpaqueTypeConformance2();
    v36 = v59;
    static ViewBuilder.buildEither<A, B>(second:)(&v72, v57, v42);
  }

  *&v80 = v37;
  *(&v80 + 1) = &type metadata for PopoverPresentation.Key;
  v81 = v31;
  v82 = &protocol witness table for PopoverPresentation.Key;
  v44 = swift_getOpaqueTypeConformance2();
  v70 = WitnessTable;
  v71 = &protocol witness table for EmptyAnchorTraitTransformModifier<A, B>;
  v45 = swift_getWitnessTable();
  v68 = v44;
  v69 = v45;
  v46 = v61;
  v47 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v36, v46, v47);
  return (*(v60 + 8))(v36, v46);
}

uint64_t PopoverPresentationModifier.PopoverModifier.anchor.getter(uint64_t a1)
{
  if (((*(*(a1 + 24) + 32))(*(a1 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + *(a1 + 40) + 16))
  {
    return static Anchor.Source<A>.unitPoint(_:)();
  }
}

BOOL PopoverItemStateProvider.isPresented.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  ItemSheetPresentationModifier.item.getter(a1, MEMORY[0x1E6981920]);
  v7 = (*(*(v2 - 8) + 48))(v6, 1, v2) != 1;
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t ItemSheetPresentationModifier.item.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for Optional();
  v2 = type metadata accessor for Binding();

  return a2(v2);
}

void type metadata accessor for SceneStorage<TabSidebarCustomization>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance PopoverPresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1620](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t View.popoverCore<A, B>(item:attachmentAnchor:arrowEdges:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v37 = a6;
  v32 = a4;
  v33 = a5;
  v34 = a3;
  v31 = a1;
  v35 = a9;
  v29[3] = a12;
  v29[4] = a8;
  v36 = a10;
  v29[1] = a7;
  v29[2] = a11;
  type metadata accessor for Optional();
  v30 = type metadata accessor for Binding();
  v15 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v17 = v29 - v16;
  v38 = a7;
  v39 = a8;
  v40 = a11;
  v41 = a12;
  v18 = type metadata accessor for PopoverItemStateProvider();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v29 - v19;
  v29[0] = swift_getWitnessTable();
  v21 = type metadata accessor for PopoverPresentationModifier();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v29 - v24;
  v26 = *a2;
  v27 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  (*(v15 + 16))(v17, v31, v30, v23);
  PopoverItemStateProvider.init(item:content:)(v17, v32, v33, v20);
  v38 = v26;
  v39 = v27;
  LOBYTE(v40) = a2;
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v20, &v38, v34 & 0x1FF, 0, 1, 0, v18, v25);

  outlined copy of Environment<CGFloat?>.Content(v26, v27, a2);
  MEMORY[0x18D00A570](v25, v37, v21, v36);
  return (*(v22 + 8))(v25, v21);
}

uint64_t PopoverItemStateProvider.init(item:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Optional();
  v8 = type metadata accessor for Binding();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for PopoverItemStateProvider();
  v10 = (a4 + *(result + 52));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

int *PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int16 a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 16);
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  result = type metadata accessor for PopoverPresentationModifier();
  v17 = a8 + result[9];
  *v17 = v13;
  *(v17 + 8) = v14;
  *(v17 + 16) = v15;
  v18 = (a8 + result[10]);
  *v18 = a3;
  v18[1] = HIBYTE(a3) & 1;
  *(a8 + result[11]) = a4;
  *(a8 + result[12]) = a5 & 1;
  *(a8 + result[13]) = a6 & 1;
  return result;
}

double static _HoverRegionModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, void *a4@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v38 = a2[2];
  v39 = v5;
  v7 = a2[3];
  v40 = a2[4];
  v8 = a2[1];
  v36 = *a2;
  v37 = v8;
  v32 = v38;
  v33 = v7;
  v34 = a2[4];
  v9 = *a1;
  v41 = *(a2 + 20);
  v35 = *(a2 + 20);
  v30 = v36;
  v31 = v6;
  a3(&v19);
  if (specialized static EventBindingManager.current.getter())
  {
    *&v30 = v39;
    DWORD2(v30) = DWORD2(v39);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v30 = v36;
      v31 = v37;
      type metadata accessor for HoverResponder();
      swift_allocObject();
      outlined init with copy of _ViewInputs(&v36, v20);
      v18 = HoverResponder.init(inputs:)();
      LODWORD(v30) = v9;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type _HoverRegionModifier.Callback and conformance _HoverRegionModifier.Callback();

      v17 = Attribute.init<A>(body:value:flags:update:)();
      v30 = v19;

      v10 = _ViewOutputs.viewResponders()();

      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v30 = v36;
      v31 = v37;
      v11 = _ViewInputs.animatedPosition()();
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v12 = HIDWORD(v39);
      v35 = v41;
      v30 = v36;
      v31 = v37;
      swift_beginAccess();
      v13 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v30 = v36;
      v31 = v37;
      v14 = _ViewInputs.isEnabled.getter();

      v21 = 0u;
      v22 = 0u;
      v23 = 2;
      v20[1] = 1;
      v20[0] = v18;
      v24 = v17;
      v25 = v10;
      v26 = v11;
      v27 = v12;
      v28 = v13;
      v29 = v14;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      _sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type HoverResponderChild and conformance HoverResponderChild();
      Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of HoverResponderChild(v20);
      AGGraphGetFlags();
      AGGraphSetFlags();
      LOBYTE(v30) = 0;
      PreferencesOutputs.subscript.setter();
    }
  }

  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  v15 = PropertyList.subscript.getter();
  if (v30)
  {
    MEMORY[0x1EEE9AC00](v15);
    *&v30 = v39;
    DWORD2(v30) = DWORD2(v39);
    MEMORY[0x1EEE9AC00](v39);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  *a4 = v19;
  result = *(&v19 + 1);
  a4[1] = *(&v19 + 1);
  return result;
}

uint64_t specialized static EventBindingManager.current.getter()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      v4 = type metadata accessor for EventGraphHost();
      (*(*(*(v3 + 16) + 8) + 16))(v9, v4, v4, ObjectType);
      swift_unknownObjectRelease();
      if (v9[0])
      {
        v5 = v9[1];
        v6 = swift_getObjectType();
        v7 = (*(v5 + 8))(v6, v5);
        swift_unknownObjectRelease();
        return v7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

unint64_t type metadata accessor for EventGraphHost()
{
  result = lazy cache variable for type metadata for EventGraphHost;
  if (!lazy cache variable for type metadata for EventGraphHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EventGraphHost);
  }

  return result;
}

uint64_t protocol witness for EventGraphHost.eventBindingManager.getter in conformance _UIHostingView<A>()
{
  specialized _UIHostingView.eventBindingManager.getter();
}

uint64_t type metadata accessor for HoverResponder()
{
  result = type metadata singleton initialization cache for HoverResponder;
  if (!type metadata singleton initialization cache for HoverResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HoverResponder.init(inputs:)()
{
  ContentResponderHelper.init()();
  *(v0 + 464) = 0;
  *(v0 + 472) = 0;
  *(v0 + 480) = 257;
  *(v0 + 216) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v0 + 224) = 0;
  *(v0 + 232) = 1;
  ViewTransform.init()();
  *(v0 + 240) = v4;
  *(v0 + 256) = v5;
  *(v0 + 272) = v6;
  static CGSize.invalidValue.getter();
  *(v0 + 288) = v1;
  *(v0 + 296) = v2;
  *(v0 + 304) = 1;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 2;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t destroy for HoverResponderChild(uint64_t a1)
{

  if ((*(a1 + 49) & 1) == 0 && !*(a1 + 48))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }

  return result;
}

void *initializeWithCopy for PopoverItemStateProvider(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  v12 = *(v8 + 48);

  if (v12(v11 & ~v9, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v15);
  }

  else
  {
    (*(v8 + 16))(v10 & ~v9, v11 & ~v9, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v10 & ~v9, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  v18 = v14 + ((v9 + 16) & ~v9);
  if (!v13)
  {
    ++v18;
  }

  v19 = a1 + v18 + 7;
  v20 = ((a2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v20;
  v21 = v20[1];
  v23 = (v19 & 0xFFFFFFFFFFFFFFF8);
  *v23 = v22;
  v23[1] = v21;

  return a1;
}

unint64_t lazy protocol witness table accessor for type _HoverRegionModifier.Callback and conformance _HoverRegionModifier.Callback()
{
  result = lazy protocol witness table cache variable for type _HoverRegionModifier.Callback and conformance _HoverRegionModifier.Callback;
  if (!lazy protocol witness table cache variable for type _HoverRegionModifier.Callback and conformance _HoverRegionModifier.Callback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _HoverRegionModifier.Callback and conformance _HoverRegionModifier.Callback);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HoverResponderChild and conformance HoverResponderChild()
{
  result = lazy protocol witness table cache variable for type HoverResponderChild and conformance HoverResponderChild;
  if (!lazy protocol witness table cache variable for type HoverResponderChild and conformance HoverResponderChild)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverResponderChild and conformance HoverResponderChild);
  }

  return result;
}

uint64_t initializeWithCopy for HoverResponderChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a2 + 49);

  if (v5)
  {
    v6 = *(a2 + 24);
    *v4 = *(a2 + 8);
    *(a1 + 24) = v6;
    *(a1 + 34) = *(a2 + 34);
  }

  else if (*(a2 + 48))
  {
    v7 = *(a2 + 24);
    *v4 = *(a2 + 8);
    *(a1 + 24) = v7;
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 49) = 0;
  }

  else
  {
    v8 = *(a2 + 32);
    *(a1 + 32) = v8;
    (**(v8 - 8))(a1 + 8, a2 + 8);
    *(a1 + 48) = 0;
  }

  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

uint64_t sub_18BEAC59C()
{
  type metadata accessor for ContextMenuModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ContextMenuModifierCore();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for PopoverPresentationModifier.PopoverModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BEAC910()
{
  type metadata accessor for PopoverPresentationModifier.PopoverModifier();
  type metadata accessor for StaticIf();
  lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18BEACA3C()
{
  type metadata accessor for PopoverPresentationModifier.PopoverModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>(255, &lazy cache variable for type metadata for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>, &type metadata for PopoverPresentation.Key, &protocol witness table for PopoverPresentation.Key, type metadata accessor for TransactionalAnchorPreferenceTransformModifier);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier<CGRect?, PopoverPresentation.Key>(255, &lazy cache variable for type metadata for EmptyAnchorTraitTransformModifier<CGRect?, TabPopoverPresentationsKey>, &type metadata for TabPopoverPresentationsKey, &protocol witness table for TabPopoverPresentationsKey, type metadata accessor for EmptyAnchorTraitTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t ModifiedContent<>.accessibilityValue<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  ModifiedContent<>.accessibilityValue(_:)(v8, v9, v11 & 1, a2, a3);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t ModifiedContent<>.accessibilityValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  AccessibilityValueStorage.init(description:)();
  v8[8] = v8;
  ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:), a4, a5);
  return outlined destroy of AccessibilityValueStorage(v8);
}

uint64_t closure #1 in ModifiedContent<>.accessibilityValue(_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AccessibilityValueStorage(a2, v9);
  outlined init with copy of AnyAccessibilityValue?(a1 + 64, &v5, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  if (*(&v6 + 1) != 1)
  {
    v4[0] = v5;
    v4[1] = v6;
    v4[2] = v7;
    closure #1 in closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:)(v4, v9, &v8);
    outlined destroy of AccessibilityValueStorage(v4);
  }

  outlined destroy of AnyAccessibilityValue?(a1 + 64, &lazy cache variable for type metadata for AccessibilityValueStorage?);
  outlined init with copy of AccessibilityValueStorage(v9, a1 + 64);
  return outlined destroy of AccessibilityValueStorage(v9);
}

void type metadata accessor for _ViewModifier_Content<MatchedTransitionSourceModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<MatchedTransitionSourceModifier>)
  {
    lazy protocol witness table accessor for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<MatchedTransitionSourceModifier>);
    }
  }
}

void type metadata accessor for EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>()
{
  if (!lazy cache variable for type metadata for EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>)
  {
    type metadata accessor for ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>, type metadata accessor for _ViewModifier_Content<MatchedTransitionSourceModifier>);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for EnvironmentReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>, type metadata accessor for _ViewModifier_Content<MatchedTransitionSourceModifier>);
    lazy protocol witness table accessor for type _ViewModifier_Content<MatchedTransitionSourceModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<MatchedTransitionSourceModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<MatchedTransitionSourceModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t static TimelineView<>._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v39 = &v31[-v14];
  *&v50 = a3;
  *(&v50 + 1) = a4;
  *&v51 = a5;
  *(&v51 + 1) = a6;
  updated = type metadata accessor for TimelineView<>.UpdateFilter();
  v43 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v40 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v31[-v18];
  v19 = *a1;
  v20 = a2[3];
  v52 = a2[2];
  v53 = v20;
  v54 = a2[4];
  v55 = *(a2 + 20);
  v21 = a2[1];
  v50 = *a2;
  v51 = v21;
  v22 = [objc_allocWithZone(type metadata accessor for TimelineIdentifier()) init];
  v49 = v19;
  type metadata accessor for TimelineView();
  type metadata accessor for _GraphValue();
  v37 = _GraphValue.value.getter();
  v41 = v19;
  v48 = v19;
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static TimelineView<>._makeView(view:inputs:)(1, a3);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v35 = DWORD2(v51);
  v34 = DWORD2(v50);
  PropertyList.subscript.getter();
  v33 = *&v45[0];
  v38 = v22;
  outlined init with copy of _GraphInputs(&v50, v45);
  if (one-time initialization token for alwaysOnFrameSpecifier != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.alwaysOnFrameSpecifier;
  swift_beginAccess();
  type metadata accessor for BLSAlwaysOnFrameSpecifier?(0, &lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier?, type metadata accessor for BLSAlwaysOnFrameSpecifier, MEMORY[0x1E69E6720]);
  v32 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v50);
  outlined init with copy of _GraphInputs(&v50, v45);
  if (one-time initialization token for updateFidelity != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.updateFidelity;
  swift_beginAccess();
  type metadata accessor for BLSUpdateFidelity(0);
  v23 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v50);
  outlined init with copy of _GraphInputs(&v50, v45);
  if (one-time initialization token for alwaysOnInvalidationHandler != -1)
  {
    swift_once();
  }

  v47 = static CachedEnvironment.ID.alwaysOnInvalidationHandler;
  swift_beginAccess();
  v24 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v50);
  v25 = v39;
  default argument 11 of TimelineView<>.UpdateFilter.init(view:schedule:phase:time:referenceDate:id:frameSpecifier:fidelity:invalidationHandler:hadFrameSpecifier:resetSeed:iterator:currentTime:nextTime:cadence:)(v39);
  LOBYTE(v45[0]) = 0;
  v30 = v25;
  v26 = v42;
  v39 = a5;
  v27 = v38;
  TimelineView<>.UpdateFilter.init(view:schedule:phase:time:referenceDate:id:frameSpecifier:fidelity:invalidationHandler:hadFrameSpecifier:resetSeed:iterator:currentTime:nextTime:cadence:)(v37, OffsetAttribute2, v35, v34, v33, v38, v32, v23, v42, -INFINITY, INFINITY, v24, 0, 0, v30, v45);
  v28 = v43;
  (*(v43 + 16))(v40, v26, updated);
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v45[2] = v52;
  v45[3] = v53;
  v45[4] = v54;
  v46 = v55;
  v45[0] = v50;
  v45[1] = v51;
  static View.makeDebuggableView(view:inputs:)();
  *&v45[0] = v53;
  DWORD2(v45[0]) = DWORD2(v53);
  MEMORY[0x1EEE9AC00](v53);

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  return (*(v28 + 8))(v26, updated);
}

uint64_t type metadata completion function for AnimationTimelineSchedule.Entries()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnimationTimelineSchedule.Entries and conformance AnimationTimelineSchedule.Entries(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnimationTimelineSchedule.Entries();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for TimelineView<>.UpdateFilter()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #1 in static TimelineView<>._makeView(view:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for TimelineView();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

unint64_t type metadata accessor for BLSAlwaysOnFrameSpecifier()
{
  result = lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier;
  if (!lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier);
  }

  return result;
}

uint64_t default argument 11 of TimelineView<>.UpdateFilter.init(view:schedule:phase:time:referenceDate:id:frameSpecifier:fidelity:invalidationHandler:hadFrameSpecifier:resetSeed:iterator:currentTime:nextTime:cadence:)@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t TimelineView<>.UpdateFilter.init(view:schedule:phase:time:referenceDate:id:frameSpecifier:fidelity:invalidationHandler:hadFrameSpecifier:resetSeed:iterator:currentTime:nextTime:cadence:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, int a12, char a13, int a14, uint64_t a15, char *a16)
{
  v19 = *a16;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 36) = a8;
  *(a9 + 40) = a12;
  *(a9 + 44) = a13;
  *(a9 + 48) = a14;
  updated = type metadata accessor for TimelineView<>.UpdateFilter();
  v21 = updated[23];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for Optional();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a15, v22);
  *(a9 + updated[24]) = a10;
  *(a9 + updated[25]) = a11;
  *(a9 + updated[26]) = v19;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TimelineView<A, B><>.UpdateFilter(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t implicit closure #1 in static TimelineView<>._makeView(view:inputs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
  type metadata accessor for TimelineView();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v12 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a1, OffsetAttribute2, a3, a4);
  v19 = v12;
  v20 = v13;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v22 = type metadata accessor for TimelineView<>.AlwaysOnTimelinePreferenceWriter();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for BLSAlwaysOnFrameSpecifier?(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  v15 = v14;
  v16 = a1;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_38, v21, v22, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v17);

  return v24;
}

uint64_t View.accessibilityAdjustableAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = 2;
  v10 = lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction();
  return View.accessibilityAction<A>(_:label:image:_:)(&v12, 0, 0, 0, 0, 0, a1, a2, a5, a3, &type metadata for AccessibilityAdjustableAction, a4, v10);
}

unint64_t lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction()
{
  result = lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction;
  if (!lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction;
  if (!lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityAdjustableAction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction();
  *(a1 + 8) = result;
  return result;
}

uint64_t ModifiedContent<>.accessibilityAction(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, void, void, void, void, void, uint64_t, uint64_t, uint64_t, ValueMetadata *, unint64_t))
{
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v19 = *a1;
  v10 = v19;
  v20 = v11;
  v21 = v13;
  v22 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  outlined copy of AccessibilityActionKind.ActionKind(v10, v11, v13, v12);
  v15 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();

  a7(&v19, 0, 0, 0, 0, 0, a6, v14, a4, &type metadata for AccessibilityVoidAction, v15);

  return outlined consume of AccessibilityActionKind.ActionKind(v19, v20, v21, v22);
}

uint64_t sub_18BEAE618()
{

  return swift_deallocObject();
}

uint64_t ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v18[2] = *(a10 + 16);
  v18[3] = a11;
  v18[4] = a12;
  v18[5] = a7;
  v18[6] = a8;

  ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in ModifiedContent<>.accessibilityAction<A>(_:label:image:_:), v18, a9, a10, a11, a12);
}

{
  v28 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v18 = *(a11 - 8);
  v24 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI23AccessibilityAttachmentVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  (*(v18 + 16))(v20, a1, a11);
  outlined copy of Text?(a2, a3, a4, a5);

  v22 = v25;

  AnyAccessibilityAction.init<A>(action:label:image:handler:bridged:)(v20, a2, a3, a4, a5, a6, v28, v22, v21 + 32, 0, a11);
  ModifiedContent<>.accessibilityActions(_:)(v21, v27, v26);
}

uint64_t sub_18BEAE73C()
{

  return swift_deallocObject();
}

uint64_t ModifiedContent<>.accessibilityActions(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1;
  v5 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  v6 = lazy protocol witness table accessor for type [AnyAccessibilityAction] and conformance [A]();
  return ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v8, 1, a2, &type metadata for AccessibilityProperties.ActionsKey, v5, v6, a3);
}

unint64_t lazy protocol witness table accessor for type [AnyAccessibilityAction] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AnyAccessibilityAction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AnyAccessibilityAction] and conformance [A])
  {
    type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(255, &lazy cache variable for type metadata for [AnyAccessibilityAction], &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AnyAccessibilityAction] and conformance [A]);
  }

  return result;
}

uint64_t static ContentTransition.symbolEffect<A>(_:options:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SymbolEffectOptions();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymbolEffectConfiguration();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SymbolEffect.configuration.getter();
  (*(v5 + 16))(v7, a1, v4);
  result = _SymbolEffect.ReplaceConfiguration.init(_:options:)(v10, v7, &v13);
  if ((v13 & 0xFF00000000) == 0x200000000)
  {
    return static ContentTransition.default.getter();
  }

  v12 = v14;
  *a2 = v13 & 0x1FFFFFFFFLL;
  *(a2 + 12) = 0;
  *(a2 + 8) = v12;
  *(a2 + 13) = 2;
  return result;
}

uint64_t _SymbolEffect.ReplaceConfiguration.init(_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v88 = a2;
  v90 = a3;
  v4 = type metadata accessor for ReplaceSymbolEffect.ReplaceStyle();
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v75 - v7;
  v8 = type metadata accessor for MagicReplaceSymbolEffect();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for ReplaceSymbolEffect.ReplaceStyle?, MEMORY[0x1E6982168], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v80 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  v87 = type metadata accessor for SymbolEffectOptions();
  v15 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v78 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  v83 = type metadata accessor for ReplaceSymbolEffect();
  v86 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v77 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  v30 = type metadata accessor for SymbolEffectConfiguration.Effect();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a1;
  SymbolEffectConfiguration.effect.getter();
  v34 = (*(v31 + 88))(v33, v30);
  if (v34 == *MEMORY[0x1E69821C8] || v34 == *MEMORY[0x1E69821E0] || v34 == *MEMORY[0x1E69821C0] || v34 == *MEMORY[0x1E69821D0] || v34 == *MEMORY[0x1E69821D8] || v34 == *MEMORY[0x1E6982220])
  {
    goto LABEL_24;
  }

  if (v34 == *MEMORY[0x1E6982210])
  {
    (*(v31 + 96))(v33, v30);
    v35 = v86;
    v36 = v83;
    (*(v86 + 32))(v29, v33, v83);
    (*(v35 + 16))(v26, v29, v36);
    v38 = v87;
    v37 = v88;
    (*(v15 + 16))(v22, v88, v87);
    BreatheSymbolEffect.style.getter();
    LODWORD(v35) = (*(v84 + 48))(v14, 1, v85);
    outlined destroy of SymbolEffectOptions.RepeatOption?(v14, &lazy cache variable for type metadata for ReplaceSymbolEffect.ReplaceStyle?, MEMORY[0x1E6982168]);
    if (v35 == 1)
    {
      static Semantics.v6.getter();
      v39 = isLinkedOnOrAfter(_:)();
    }

    else
    {
      v39 = 0;
    }

    v50 = v90;
    v51 = _SymbolEffect.ReplaceConfiguration.init(_:options:allowMagic:)(v26, v22, v39 & 1, &v91);
    (*(v15 + 8))(v37, v38, v51);
    v52 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v52 - 8) + 8))(v89, v52);
    result = (*(v86 + 8))(v29, v36);
    v47 = v91;
    v49 = v92;
    v48 = v93;
    goto LABEL_14;
  }

  if (v34 != *MEMORY[0x1E6982218])
  {
    if (v34 != *MEMORY[0x1E69821F8] && v34 != *MEMORY[0x1E69821F0] && v34 != *MEMORY[0x1E6982200] && v34 == *MEMORY[0x1E69821B8])
    {
      (*(v31 + 96))(v33, v30);
      v55 = v81;
      v56 = v79;
      v57 = (*(v81 + 32))(v79, v33, v82);
      v58 = v77;
      MEMORY[0x18D00C190](v57);
      v59 = v78;
      v61 = v87;
      v60 = v88;
      (*(v15 + 16))(v78, v88, v87);
      v62 = ScaleSymbolEffect.isLayered.getter();
      v95 = (v62 == 2) | v62 & 1;
      SymbolEffectOptions.speed.getter();
      v64 = v63;
      v65 = v80;
      BreatheSymbolEffect.style.getter();
      v66 = *(v15 + 8);
      v66(v60, v61);
      v67 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v67 - 8) + 8))(v89, v67);
      v66(v59, v61);
      (*(v86 + 8))(v58, v83);
      (*(v55 + 8))(v56, v82);
      v69 = v84;
      v68 = v85;
      if ((*(v84 + 48))(v65, 1, v85) == 1)
      {
        result = outlined destroy of SymbolEffectOptions.RepeatOption?(v65, &lazy cache variable for type metadata for ReplaceSymbolEffect.ReplaceStyle?, MEMORY[0x1E6982168]);
        v47 = 0;
        v50 = v90;
      }

      else
      {
        v72 = *(v69 + 32);
        v73 = v75;
        v72(v75, v65, v68);
        v74 = v76;
        v72(v76, v73, v68);
        result = (*(v69 + 88))(v74, v68);
        if (result == *MEMORY[0x1E6982160])
        {
          v47 = 2;
          v50 = v90;
        }

        else
        {
          v50 = v90;
          if (result == *MEMORY[0x1E6982150])
          {
            v47 = 3;
          }

          else if (result == *MEMORY[0x1E6982158])
          {
            v47 = 4;
          }

          else
          {
            result = (*(v69 + 8))(v74, v68);
            v47 = 0;
          }
        }
      }

      v48 = v64;
      v49 = v95;
      goto LABEL_14;
    }

LABEL_24:
    (*(v15 + 8))(v88, v87);
    v70 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v70 - 8) + 8))(v89, v70);
    result = (*(v31 + 8))(v33, v30);
    v71 = v90;
    *v90 = 0x200000000;
    *(v71 + 2) = 0;
    return result;
  }

  (*(v31 + 8))(v33, v30);
  v41 = v87;
  v40 = v88;
  (*(v15 + 16))(v19, v88, v87);
  v94 = 1;
  SymbolEffectOptions.speed.getter();
  v43 = v42;
  v44 = *(v15 + 8);
  v44(v40, v41);
  v45 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v45 - 8) + 8))(v89, v45);
  result = (v44)(v19, v41);
  v47 = 0;
  v48 = v43;
  v49 = v94;
  v50 = v90;
LABEL_14:
  v53 = v49 == 0;
  v54 = 0x100000000;
  if (v53)
  {
    v54 = 0;
  }

  *v50 = v54 | v47;
  *(v50 + 2) = v48;
  return result;
}

void type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for TimelineView.Context()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<UpdateFidelityKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<UpdateFidelityKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UpdateFidelityKey>);
    }
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance AlwaysOnInvalidationKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of TimelineInvalidationAction(&static AlwaysOnInvalidationKey.defaultValue, v2);
}

uint64_t FeedbackRequestContextWriter.ChildModifier.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  Value = AGGraphGetValue();
  (*(*(v4 - 8) + 16))(a2, Value, v4);
  v6 = AGCreateWeakAttribute();
  swift_weakLoadStrong();
  v8 = v6;
  swift_weakInit();

  return (*(*(a1 + 24) + 24))(&v8, v4);
}

void *assignWithTake for RemoteSheetContainerVCWriter(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakTakeAssign();
  return a1;
}

uint64_t closure #1 in FeedbackGenerator.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  type metadata accessor for FeedbackGenerator();
  swift_getWitnessTable();
  v1 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type SensoryFeedback and conformance SensoryFeedback();
  v23 = v1;
  v24 = &type metadata for SensoryFeedback;
  v25 = WitnessTable;
  v26 = v16;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _ValueActionModifier2();
  type metadata accessor for ModifiedContent();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = swift_checkMetadataState();
  FeedbackGenerator.contentConfiguredWithFeedback(content:)(v9, v5);
  v23 = v1;
  v24 = &type metadata for SensoryFeedback;
  v25 = WitnessTable;
  v26 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = swift_getWitnessTable();
  v21 = OpaqueTypeConformance2;
  v22 = v11;
  v19 = swift_getWitnessTable();
  v20 = MEMORY[0x1E69805D0];
  v12 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v5, v2, v12);
  v13 = *(v3 + 8);
  v13(v5, v2);
  static ViewBuilder.buildExpression<A>(_:)(v8, v2, v12);
  return (v13)(v8, v2);
}

uint64_t FeedbackGenerator.contentConfiguredWithFeedback(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = type metadata accessor for TaskPriority();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v38 = v8;
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v10 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v42 = WitnessTable;
  v41 = lazy protocol witness table accessor for type SensoryFeedback and conformance SensoryFeedback();
  *&v51 = v10;
  *(&v51 + 1) = &type metadata for SensoryFeedback;
  v52 = WitnessTable;
  v53 = v41;
  v44 = &_s7SwiftUI4ViewPAAE4task2id4name8priority4file4line_Qrqd___SSSgScPSSSiyyYaYAcntSQRd__lFQOMQ;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v45 = OpaqueTypeMetadata2;
  v46 = v13;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v50 = &v33 - v14;
  v51 = *(v2 + 16);
  v37 = "feedback implementation ";
  v15 = *(v6 + 16);
  v39 = v2;
  v40 = v15;
  v33 = v9;
  v15(v9, v2, a1);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = *(v6 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  *(v18 + 4) = v20;
  *(v18 + 5) = v21;
  v22 = v20;
  v35 = *(v6 + 32);
  v36 = v21;
  v35(&v18[(v17 + 48) & ~v17], v9, a1);
  v23 = swift_checkMetadataState();
  v34 = v23;
  v24 = v43;
  static TaskPriority.userInitiated.getter();
  v25 = v41;
  v26 = v42;
  _s7SwiftUI4ViewPAAE4task2id4name8priority4file4line_Qrqd___SSSgScPSSSiyyYaYAcntSQRd__lF(&v51, 0, 0, v24, 0xD000000000000026, v37 | 0x8000000000000000, 185, &async function pointer to partial apply for closure #1 in FeedbackGenerator.contentConfiguredWithFeedback(content:), v50, v18, v23, &type metadata for SensoryFeedback, v42, v41);
  (*(v47 + 8))(v24, v48);
  v48 = *(a1 + 40);
  v27 = v33;
  v40(v33, v39, a1);
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  v29 = v35;
  *(v28 + 24) = v36;
  v29(v28 + ((v17 + 32) & ~v17), v27, a1);
  *&v51 = v34;
  *(&v51 + 1) = &type metadata for SensoryFeedback;
  v52 = v26;
  v53 = v25;
  swift_getOpaqueTypeConformance2();
  v30 = v45;
  v31 = v50;
  View.onChange<A>(of:initial:_:)();

  return (*(v46 + 8))(v31, v30);
}

uint64_t sub_18BEB0118()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for FeedbackGenerator();
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  swift_weakDestroy();
  (*(*(v1 - 8) + 8))(v0 + v3 + v2[10], v1);
  if (*(v0 + v3 + v2[11]))
  {
  }

  v4 = v0 + v3 + v2[12];
  if (*(v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return swift_deallocObject();
}

uint64_t sub_18BEB024C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for FeedbackGenerator();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  swift_weakDestroy();
  (*(*(v1 - 8) + 8))(v3 + v2[10], v1);
  if (*(v3 + v2[11]))
  {
  }

  v4 = v3 + v2[12];
  if (*(v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return swift_deallocObject();
}

Swift::Void __swiftcall MatchedTransitionSourceMarkingView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_shadowView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView];
  [v0 bounds];
  [v2 setFrame_];
  MatchedTransitionSourceMarkingView.updateLayerStyle(isZooming:)(v0[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_isPartOfActiveZoom]);
}

uint64_t ModifiedContent<>.accessibilityHidden(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  return ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityVisibility(_:), a1, a2);
}

{
  return ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityVisibility(_:), a1, a2);
}

uint64_t partial apply for closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  if ((*(result + 120) & 1) == 0)
  {
    v4 = *(result + 112);
    v5 = v3 | ~HIDWORD(v4);
    v6 = v3 ^ 0xFFFFFFFFLL;
    v3 |= HIDWORD(v4);
    v2 = v5 & v2 | v6 & v4;
  }

  *(result + 112) = v2 | (v3 << 32);
  *(result + 120) = 0;
  return result;
}

ValueMetadata *type metadata accessor for MatchedTransitionSourceModifier()
{
  return &type metadata for MatchedTransitionSourceModifier;
}

{
  return &type metadata for MatchedTransitionSourceModifier;
}

uint64_t FeedbackGenerator.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>();
  swift_getWitnessTable();
  v3 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v20 = lazy protocol witness table accessor for type SensoryFeedback and conformance SensoryFeedback();
  v37 = v3;
  v38 = &type metadata for SensoryFeedback;
  v39 = WitnessTable;
  v40 = v20;
  v19[1] = &_s7SwiftUI4ViewPAAE4task2id4name8priority4file4line_Qrqd___SSSgScPSSSiyyYaYAcntSQRd__lFQOMQ;
  swift_getOpaqueTypeMetadata2();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for _ValueActionModifier2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for StaticIf();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  v27 = v4;
  v28 = v5;
  v29 = v22;
  v24 = v4;
  v25 = v5;
  v26 = v22;
  v37 = v3;
  v38 = &type metadata for SensoryFeedback;
  v39 = WitnessTable;
  v40 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = swift_getWitnessTable();
  v35 = OpaqueTypeConformance2;
  v36 = v14;
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x1E69805D0];
  v18 = swift_getWitnessTable();
  StaticIf<>.init<A>(idiom:then:else:)();
  v30 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v31 = v18;
  v32 = v18;
  v15 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, v15);
  v16 = *(v7 + 8);
  v16(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, v15);
  return (v16)(v12, v6);
}

uint64_t View.task<A>(id:priority:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a7;
  v27 = a8;
  v28 = a5;
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v9 = type metadata accessor for TaskPriority();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _TaskValueModifier();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  (*(v13 + 16))(v16, v23, a6, v19);
  (*(v10 + 16))(v12, v24, v9);
  _TaskValueModifier.init(value:priority:action:)(v16, v12, v25, v26, a6, v21);

  MEMORY[0x18D00A570](v21, v28, v17, v29);
  return (*(v18 + 8))(v21, v17);
}

uint64_t _TaskValueModifier.init(value:priority:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a3;
  *(a6 + 1) = a4;
  v10 = type metadata accessor for _TaskValueModifier();
  v11 = *(v10 + 36);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 32))(&a6[v11], a2, v12);
  v13 = *(*(a5 - 8) + 32);
  v14 = &a6[*(v10 + 40)];

  return v13(v14, a1, a5);
}

void (*FeedbackGenerator.implementation.modify(uint64_t *a1, uint64_t a2))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(v2 + *(a2 + 48), v5, type metadata accessor for State<PlatformSensoryFeedback?>);
  type metadata accessor for State<PlatformSensoryFeedback?>();
  State.wrappedValue.getter();
  return FeedbackGenerator.implementation.modify;
}

void FeedbackGenerator.implementation.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of PlatformSensoryFeedback?((v2 + 6), (v2 + 11));
    if (v2[5])
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of LocationBasedSensoryFeedback?((v2 + 11), &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback);
    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v2, type metadata accessor for State<PlatformSensoryFeedback?>);
    outlined destroy of LocationBasedSensoryFeedback?((v2 + 6), &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback);
  }

  else
  {
    if (v2[5])
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of LocationBasedSensoryFeedback?((v2 + 6), &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback);
    outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(v2, type metadata accessor for State<PlatformSensoryFeedback?>);
  }

  free(v2);
}

uint64_t outlined destroy of LocationBasedSensoryFeedback?(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  type metadata accessor for IntelligenceSubelementProviding?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of State<(feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for IntelligenceSubelementProviding?(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for CVarArg(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for State<PlatformSensoryFeedback?>()
{
  if (!lazy cache variable for type metadata for State<PlatformSensoryFeedback?>)
  {
    type metadata accessor for IntelligenceSubelementProviding?(255, &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<PlatformSensoryFeedback?>);
    }
  }
}

uint64_t outlined destroy of (feedback: SensoryFeedback, implementation: PlatformSensoryFeedback?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *initializeWithCopy for FeedbackRequestContext(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakCopyInit();
  return a1;
}

uint64_t FeedbackRequestContext.implementation(type:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    UIKitSensoryFeedbackCache.implementation(type:)(a1, a2, &v10);
    if (v11)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v10, v12);
      Attribute = AGWeakAttributeGetAttribute();
      v8 = *MEMORY[0x1E698D3F8];

      if (Attribute != v8)
      {
        *(a3 + 24) = &type metadata for LocationBasedFeedbackAdaptor;
        *(a3 + 32) = &protocol witness table for LocationBasedFeedbackAdaptor;
        v9 = swift_allocObject();
        *a3 = v9;
        result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v12, v9 + 24);
        *(v9 + 16) = Attribute;
        return result;
      }

      result = __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {

      result = outlined destroy of LocationBasedSensoryFeedback?(&v10);
    }
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_18BEB11A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

void UIKitSensoryFeedbackCache.implementation(type:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (!(a1 >> 62))
  {
    *(a3 + 24) = &type metadata for ImpactFeedbackImplementation;
    *(a3 + 32) = &protocol witness table for ImpactFeedbackImplementation;
    swift_beginAccess();
    v8 = *(v3 + 24);
    if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v11 & 1) == 0))
    {
      swift_endAccess();
      v20 = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
      swift_beginAccess();
      v21 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, a1, a2, isUniquelyReferenced_nonNull_native);
      *(v4 + 24) = v78;
      swift_endAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        [Strong swiftui:v21 addManagedInteraction:?];
      }

      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (a1 >> 62 == 1)
  {
    *(a3 + 24) = &type metadata for ImpactFeedbackImplementation;
    *(a3 + 32) = &protocol witness table for ImpactFeedbackImplementation;
    swift_beginAccess();
    v8 = *(v3 + 24);
    if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) == 0))
    {
      swift_endAccess();
      v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
      swift_beginAccess();
      v16 = v15;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v77 = *(v4 + 24);
      *(v4 + 24) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a1, a2, v17);
      *(v4 + 24) = v77;
      swift_endAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        [v18 swiftui:v16 addManagedInteraction:?];
      }

      goto LABEL_18;
    }

LABEL_8:
    v12 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v13 = v12;
LABEL_18:
    objc_opt_self();
    *a3 = swift_dynamicCastObjCClassUnconditional();
    *(a3 + 8) = a2;
    return;
  }

  if (__PAIR128__(2, 0x8000000000000001) >= __PAIR128__(a2, a1))
  {
    if (__PAIR128__(1, 0x8000000000000001) >= __PAIR128__(a2, a1))
    {
      if (a1 > 0x8000000000000002)
      {
        *(a3 + 24) = &type metadata for SelectionFeedbackImplementation;
        *(a3 + 32) = &protocol witness table for SelectionFeedbackImplementation;
        swift_beginAccess();
        v38 = *(v3 + 24);
        if (*(v38 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(0x8000000000000001, 1), (v40 & 1) != 0))
        {
          v41 = *(*(v38 + 56) + 8 * v39);
          swift_endAccess();
          objc_opt_self();
          v42 = swift_dynamicCastObjCClassUnconditional();
          v43 = v41;
          *a3 = v42;
        }

        else
        {
          swift_endAccess();
          v44 = [objc_allocWithZone(MEMORY[0x1E69DCF40]) init];
          swift_beginAccess();
          v45 = v44;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v79 = *(v4 + 24);
          *(v4 + 24) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, 0x8000000000000001, 1, v46);
          *(v4 + 24) = v79;
          swift_endAccess();
          v47 = swift_unknownObjectWeakLoadStrong();
          if (v47)
          {
            v48 = v47;
            [v47 swiftui:v45 addManagedInteraction:?];
          }

          *a3 = v45;
        }
      }

      else if (a1 ^ 0x8000000000000000 | a2)
      {
        if (a1 ^ 0x8000000000000001 | a2)
        {
          *(a3 + 24) = &type metadata for NotificationFeedbackImplementation;
          *(a3 + 32) = &protocol witness table for NotificationFeedbackImplementation;
          swift_beginAccess();
          v59 = *(v3 + 24);
          if (*(v59 + 16) && (v60 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v61 & 1) != 0))
          {
            v62 = *(*(v59 + 56) + 8 * v60);
            swift_endAccess();
            objc_opt_self();
            v29 = swift_dynamicCastObjCClassUnconditional();
            v63 = v62;
          }

          else
          {
            swift_endAccess();
            v73 = [objc_allocWithZone(MEMORY[0x1E69DCCF0]) init];
            swift_beginAccess();
            v29 = v73;
            v74 = swift_isUniquelyReferenced_nonNull_native();
            v83 = *(v4 + 24);
            *(v4 + 24) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, a1, a2, v74);
            *(v4 + 24) = v83;
            swift_endAccess();
            v75 = swift_unknownObjectWeakLoadStrong();
            if (v75)
            {
              v76 = v75;
              [v75 swiftui:v29 addManagedInteraction:?];
            }
          }

          v72 = 2;
        }

        else
        {
          *(a3 + 24) = &type metadata for NotificationFeedbackImplementation;
          *(a3 + 32) = &protocol witness table for NotificationFeedbackImplementation;
          swift_beginAccess();
          v25 = *(v3 + 24);
          if (*(v25 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v27 & 1) != 0))
          {
            v28 = *(*(v25 + 56) + 8 * v26);
            swift_endAccess();
            objc_opt_self();
            v29 = swift_dynamicCastObjCClassUnconditional();
            v30 = v28;
          }

          else
          {
            swift_endAccess();
            v68 = [objc_allocWithZone(MEMORY[0x1E69DCCF0]) init];
            swift_beginAccess();
            v29 = v68;
            v69 = swift_isUniquelyReferenced_nonNull_native();
            v82 = *(v4 + 24);
            *(v4 + 24) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, a1, a2, v69);
            *(v4 + 24) = v82;
            swift_endAccess();
            v70 = swift_unknownObjectWeakLoadStrong();
            if (v70)
            {
              v71 = v70;
              [v70 swiftui:v29 addManagedInteraction:?];
            }
          }

          v72 = 1;
        }

        *a3 = v29;
        *(a3 + 8) = v72;
      }

      else
      {
        *(a3 + 24) = &type metadata for NotificationFeedbackImplementation;
        *(a3 + 32) = &protocol witness table for NotificationFeedbackImplementation;
        swift_beginAccess();
        v53 = *(v3 + 24);
        if (*(v53 + 16) && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v55 & 1) != 0))
        {
          v56 = *(*(v53 + 56) + 8 * v54);
          swift_endAccess();
          objc_opt_self();
          v57 = swift_dynamicCastObjCClassUnconditional();
          v58 = v56;
        }

        else
        {
          swift_endAccess();
          v64 = [objc_allocWithZone(MEMORY[0x1E69DCCF0]) init];
          swift_beginAccess();
          v57 = v64;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v81 = *(v4 + 24);
          *(v4 + 24) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, a1, a2, v65);
          *(v4 + 24) = v81;
          swift_endAccess();
          v66 = swift_unknownObjectWeakLoadStrong();
          if (v66)
          {
            v67 = v66;
            [v66 swiftui:v57 addManagedInteraction:?];
          }
        }

        *a3 = v57;
        *(a3 + 8) = 0;
      }

      return;
    }

    if (__PAIR128__(__CFADD__(a1, 0x8000000000000000) + a2 - 3, a1 + 0x8000000000000000) >= 2)
    {
      v14 = a2 == 1;
      goto LABEL_28;
    }

LABEL_36:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  if (__PAIR128__(4, 0x7FFFFFFFFFFFFFFFLL) < __PAIR128__(a2, a1) || __PAIR128__(__CFADD__(a1, 0x8000000000000000) + a2 - 4, a1 + 0x8000000000000000) < 4)
  {
    goto LABEL_36;
  }

  v14 = a2 == 2;
LABEL_28:
  if (!v14 || a1 != 0x8000000000000002)
  {
    goto LABEL_36;
  }

  *(a3 + 24) = &type metadata for CanvasFeedbackImplementation;
  *(a3 + 32) = &protocol witness table for CanvasFeedbackImplementation;
  swift_beginAccess();
  v32 = *(v3 + 24);
  if (*(v32 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * v33);
    swift_endAccess();
    objc_opt_self();
    v36 = swift_dynamicCastObjCClassUnconditional();
    v37 = v35;
  }

  else
  {
    swift_endAccess();
    v49 = [objc_allocWithZone(MEMORY[0x1E69DC778]) init];
    swift_beginAccess();
    v36 = v49;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v4 + 24);
    *(v4 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, a1, a2, v50);
    *(v4 + 24) = v80;
    swift_endAccess();
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      [v51 swiftui:v36 addManagedInteraction:?];
    }
  }

  *a3 = v36;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}