uint64_t assignWithTake for HostingContentViewRootModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 72);
  v8 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  if (v8 == 1)
  {
    goto LABEL_4;
  }

  if (v7 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
LABEL_4:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_6;
  }

  *(a1 + 72) = v7;

  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  v9 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v9;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  v10 = *(a3 + 32);
  v11 = type metadata accessor for UICellConfigurationState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(a1 + v10, 1, v11);
  v15 = v13(a2 + v10, 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      (*(v12 + 40))(a1 + v10, a2 + v10, v11);
      return a1;
    }

    (*(v12 + 8))(a1 + v10, v11);
    goto LABEL_11;
  }

  if (v15)
  {
LABEL_11:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v10), (a2 + v10), *(*(v16 - 8) + 64));
    return a1;
  }

  (*(v12 + 32))(a1 + v10, a2 + v10, v11);
  (*(v12 + 56))(a1 + v10, 0, 1, v11);
  return a1;
}

uint64_t UIHostingContentView.appendViewGraphFeatures()()
{
  _UIHostingView.viewGraph.getter();
  lazy protocol witness table accessor for type HostingContentViewGraph and conformance HostingContentViewGraph();
  ViewGraph.append<A>(feature:)();
}

unint64_t lazy protocol witness table accessor for type HostingContentViewGraph and conformance HostingContentViewGraph()
{
  result = lazy protocol witness table cache variable for type HostingContentViewGraph and conformance HostingContentViewGraph;
  if (!lazy protocol witness table cache variable for type HostingContentViewGraph and conformance HostingContentViewGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostingContentViewGraph and conformance HostingContentViewGraph);
  }

  return result;
}

uint64_t closure #1 in UIHostingContentView.init(configuration:)()
{
  _UIHostingView.viewGraph.getter();
  GraphHost.addPreference<A>(_:)();

  _UIHostingView.viewGraph.getter();
  lazy protocol witness table accessor for type SwipeActions.Feature and conformance SwipeActions.Feature();
  ViewGraph.append<A>(feature:)();
}

unint64_t lazy protocol witness table accessor for type SwipeActions.Feature and conformance SwipeActions.Feature()
{
  result = lazy protocol witness table cache variable for type SwipeActions.Feature and conformance SwipeActions.Feature;
  if (!lazy protocol witness table cache variable for type SwipeActions.Feature and conformance SwipeActions.Feature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActions.Feature and conformance SwipeActions.Feature);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityLargeContentViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t destroy for AccessibilityLargeContentViewModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t type metadata completion function for AccessibilityLargeContentViewModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GeometryTransform and conformance GeometryTransform()
{
  result = lazy protocol witness table cache variable for type GeometryTransform and conformance GeometryTransform;
  if (!lazy protocol witness table cache variable for type GeometryTransform and conformance GeometryTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryTransform and conformance GeometryTransform);
  }

  return result;
}

uint64_t initializeWithCopy for GeometryTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 64);
  *(a1 + 64) = v4;
  *(a1 + 72) = *(a2 + 72);
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

uint64_t View.accessibility(isEnabled:body:)(char a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AccessibilityProperties.init()();
  if (a1)
  {
    a2(v11);
  }

  static AccessibilityAttachment.properties(_:)();
  View.accessibility(_:)(v10, a4, a5);
  outlined destroy of AccessibilityAttachment(v10);
  return outlined destroy of AccessibilityProperties(v11);
}

void type metadata accessor for MutableBox<AccessibilityAttachment>()
{
  if (!lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>)
  {
    v0 = type metadata accessor for MutableBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>);
    }
  }
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

uint64_t View.accessibilityIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v6 = 0;
  return View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityIdentifier(_:placement:), v5, a3, a4);
}

uint64_t partial apply for closure #1 in View.accessibilityIdentifier(_:placement:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  return result;
}

uint64_t View.accessibility(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of AccessibilityAttachment(a1, __src);
  type metadata accessor for MutableBox<AccessibilityAttachment>();
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x128uLL);
  __src[0] = v5;
  __src[1] = 0;
  MEMORY[0x18D00A570](__src, a2, &type metadata for AccessibilityAttachmentModifier, a3);
}

{
  static AccessibilityAttachment.properties(_:)();
  View.accessibility(_:)(v6, a2, a3);
  return outlined destroy of AccessibilityAttachment(v6);
}

uint64_t assignWithTake for HostingControllerOverrides(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 2)
  {
    if (v4 != 2)
    {
      swift_unknownObjectWeakTakeInit();
LABEL_8:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      goto LABEL_9;
    }
  }

  else
  {
    if (v4 != 2)
    {
      swift_unknownObjectWeakTakeAssign();
      goto LABEL_8;
    }

    outlined destroy of PushTarget(a1);
  }

  *a1 = *a2;
  *(a1 + 9) = *(a2 + 9);
LABEL_9:
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t specialized static SwiftUIOpacityAccessibilityProvider.makeOpacity(effect:inputs:outputs:)(uint64_t (*a1)(void), uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 2);
  v8 = *(a3 + 6);
  v9 = *(a3 + 28);
  v33 = *(a3 + 9);
  v10 = *(a3 + 6);
  v34 = *(a3 + 5);
  v11 = *(a3 + 14);
  v35 = *(a3 + 18);
  v36 = *(a3 + 15);
  v31 = *(a3 + 76);
  v32 = *(a3 + 8);
  *&v39 = v10;
  DWORD2(v39) = v11;
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (result)
  {
    v30 = v8;
    v13 = a1();
    v28 = *a4;
    v29 = *(a4 + 2);
    *&v39 = v10;
    DWORD2(v39) = v11;
    v14 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (v14)
    {
      result = AGSubgraphGetCurrent();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v26 = result;
      v27 = v14;
      v15 = *MEMORY[0x1E698D3F8];
      *&v39 = v10;
      DWORD2(v39) = v11;
      v16 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
      v17 = v15;
      if (v16)
      {
        *&v39 = v28;
        DWORD2(v39) = v29;
        v18 = PreferencesOutputs.subscript.getter();
        if ((v18 & 0x100000000) != 0)
        {
          v17 = v15;
        }

        else
        {
          v17 = v18;
        }
      }

      v25 = v17;
      v39 = *a3;
      v40 = v7;
      *(&v41 + 4) = v9;
      LODWORD(v41) = v30;
      HIDWORD(v41) = v33;
      v42 = v34;
      v43 = v10;
      v44 = v11;
      v45 = v36;
      v46 = v32;
      LODWORD(v47) = v35;
      *(&v47 + 4) = v31;
      v24 = _ViewInputs.position.getter();
      _ViewInputs.scrapeableParentID.getter();
      _GraphInputs.interfaceIdiom.getter();
      swift_beginAccess();
      v19 = *(v7 + 16);
      *&v39 = v28;
      DWORD2(v39) = v29;
      v20 = PreferencesOutputs.subscript.getter();
      if ((v20 & 0x100000000) != 0)
      {
        v21 = v15;
      }

      else
      {
        v21 = v20;
      }

      type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(0, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityOpacityModifier>, lazy protocol witness table accessor for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier, &type metadata for AccessibilityOpacityModifier, type metadata accessor for AccessibilityViewModifierAccessor);
      *&v39 = v22;
      *(&v39 + 1) = v15;
      v41 = v37;
      LODWORD(v40) = v38;
      v42 = __PAIR64__(v35, v24);
      v43 = __PAIR64__(v19, v36);
      v44 = v30;
      v45 = v25;
      LODWORD(v46) = v21;
      *&v47 = v26;
      *(&v47 + 1) = v13;
      v48 = &type metadata for AccessibilityOpacityAttachment;
      v49 = &protocol witness table for AccessibilityOpacityAttachment;
      v57 = 0;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v58 = (v33 & 0x20) == 0;
      v59 = 0;
      swift_unknownObjectWeakInit();
      v60 = 0;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform();
      v23 = v26;
      Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of PropertiesTransform(&v39);
      AGGraphSetFlags();

      v14 = v27;
    }

    LOBYTE(v39) = (v14 & 1) == 0;
    return PreferencesOutputs.subscript.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityOpacityModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier();
  result = lazy protocol witness table accessor for type AccessibilityOpacityModifier and conformance AccessibilityOpacityModifier();
  *(a1 + 16) = result;
  return result;
}

uint64_t View.viewAlias<A, B>(_:_:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[0] = a7;
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v15;
  v23[5] = v16;
  v17 = type metadata accessor for StaticSourceWriter();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v23 - v20;
  a2(v19);
  (*(v10 + 32))(v21, v12, a6);
  MEMORY[0x18D00A570](v21, a4, v17, v23[0]);
  return (*(v18 + 8))(v21, v17);
}

uint64_t outlined consume of Environment<Selector?>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined copy of Environment<Selector?>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t AnySource.init<A>(_:)()
{
  v0 = type metadata accessor for SourceFormula();
  AGCreateWeakAttribute();
  return v0;
}

uint64_t closure #1 in static StaticSourceWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for StaticSourceWriter();
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

unint64_t lazy protocol witness table accessor for type AnySource and conformance AnySource()
{
  result = lazy protocol witness table cache variable for type AnySource and conformance AnySource;
  if (!lazy protocol witness table cache variable for type AnySource and conformance AnySource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnySource and conformance AnySource);
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t static StaticSourceWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in static StaticSourceWriter._makeInputs(modifier:inputs:)(1, a3, a4, a5, a6);
  }

  AGGraphCreateOffsetAttribute2();
  AnySource.init<A>(_:)();
  type metadata accessor for SourceInput();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type AnySource and conformance AnySource();
  return _GraphInputs.append<A, B>(_:to:)();
}

void type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for StaticIf();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v11 = *(a2 + 48);
  v23 = *(a2 + 32);
  v24 = v11;
  v25 = *(a2 + 64);
  v26 = *(a2 + 80);
  v12 = *(a2 + 16);
  v21 = *a2;
  v22 = v12;
  outlined init with copy of _ViewInputs(a2, v31);
  a7(a5, a6);
  v27[2] = v23;
  v27[3] = v24;
  v27[4] = v25;
  v28 = v26;
  v27[0] = v21;
  v27[1] = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  v13 = outlined init with copy of _ViewInputs(v27, v31);
  a3(v13, &v15);
  v29[2] = v17;
  v29[3] = v18;
  v29[4] = v19;
  v30 = v20;
  v29[0] = v15;
  v29[1] = v16;
  outlined destroy of _ViewInputs(v29);
  v31[2] = v23;
  v31[3] = v24;
  v31[4] = v25;
  v32 = v26;
  v31[0] = v21;
  v31[1] = v22;
  return outlined destroy of _ViewInputs(v31);
}

uint64_t type metadata completion function for PickerBuilder.Content()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration()
{
  result = lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration;
  if (!lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration;
  if (!lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration;
  if (!lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration;
  if (!lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration;
  if (!lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfiguration and conformance IsInHostingConfiguration);
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
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

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertTransformModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertTransformModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t destroy for OnChangeOfSuggestionsModifier()
{
}

void *initializeBufferWithCopyOfBuffer for SymmetricallyScaledTextLayout(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
{
  v129 = *MEMORY[0x1E69E9840];
  v90 = *(a2 + 48);
  v91 = *(a2 + 56);
  *&v123 = *(a2 + 48);
  DWORD2(v123) = *(a2 + 56);
  outlined init with copy of PreferencesInputs(&v90, &v118);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    outlined destroy of PreferencesInputs(&v90);
    v8 = *(a2 + 48);
    v125 = *(a2 + 32);
    v126 = v8;
    v127 = *(a2 + 64);
    v128 = *(a2 + 80);
    v9 = *(a2 + 16);
    v123 = *a2;
    v124 = v9;
    outlined init with copy of _ViewInputs(a2, &v118);
    _s7SwiftUI25AccessibilityViewModifierPAAE26configureInputsForGeometryyyAA01_dG0VzFZAA0c5ImageE0V_Tt0g5Tm(&v123);
    v10 = *(a2 + 8);
    v78 = *(a2 + 16);
    v88 = *(a2 + 24);
    v11 = *(a2 + 36);
    v89 = *(a2 + 32);
    v75 = *a2;
    v77 = *(a2 + 40);
    if ((v11 & 0x10) != 0)
    {
      v12 = *(a2 + 48);
      v119[1] = *(a2 + 32);
      v120 = v12;
      v121 = *(a2 + 64);
      v122 = *(a2 + 80);
      v13 = *(a2 + 16);
      v118 = *a2;
      v119[0] = v13;
      _ViewInputs.animatedPosition()();
      _ViewInputs.containerPosition.setter();
    }

    v14 = *(a2 + 48);
    v119[1] = *(a2 + 32);
    v120 = v14;
    v121 = *(a2 + 64);
    v122 = *(a2 + 80);
    v15 = *(a2 + 16);
    v118 = *a2;
    v119[0] = v15;
    v83 = a1;
    if (_ViewInputs.isScrapeable.getter())
    {
      ScrapeableID.init()();
      v80 = v118;
      _ViewInputs.scrapeableParentID.setter();
    }

    else
    {
      v80 = 0;
    }

    v119[1] = v125;
    v120 = v126;
    v121 = v127;
    v122 = v128;
    v118 = v123;
    v119[0] = v124;
    v114 = v125;
    v115 = v126;
    v116 = v127;
    v117 = v128;
    v112 = v123;
    v113 = v124;
    v24 = outlined init with copy of _ViewInputs(&v118, v99);
    a3(v99, v24, &v112);
    v25 = v120;
    v26 = DWORD2(v120);
    *&v112 = v120;
    DWORD2(v112) = DWORD2(v120);
    if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
    {
      *&v112 = v25;
      DWORD2(v112) = v26;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v112 = *v99;
        DWORD2(v112) = *&v99[8];
        v27 = PreferencesOutputs.subscript.getter();
        if ((v27 & 0x100000000) != 0)
        {
          v28 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v28 = v27;
        }

        OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
        KeyPath = swift_getKeyPath();
        dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
        if (v31)
        {
          LODWORD(v112) = OffsetAttribute2;
          *(&v112 + 1) = KeyPath;
          protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
          type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>();
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment> and conformance Focus<A, B>, type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>);

          v32 = Attribute.init<A>(body:value:flags:update:)();
        }

        else
        {
          v32 = AGGraphCreateOffsetAttribute2();
        }

        *&v112 = __PAIR64__(v32, v28);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
        Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v112) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }

    outlined destroy of _ViewInputs(&v118);
    v41 = *v99;
    v110 = *v99;
    v111 = *&v99[8];
    if ((v11 & 0x10) != 0)
    {
      v79 = *&v99[8];
      v43 = v10;
      *&v112 = v90;
      DWORD2(v112) = v91;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v112 = v41;
        DWORD2(v112) = v79;
        v44 = PreferencesOutputs.subscript.getter();
        v45 = *MEMORY[0x1E698D3F8];
        if ((v44 & 0x100000000) != 0)
        {
          v46 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v46 = v44;
        }

        v74 = v46;
      }

      else
      {
        v45 = *MEMORY[0x1E698D3F8];
        v74 = *MEMORY[0x1E698D3F8];
      }

      _DisplayList_Identity.init()();
      v73 = v112;
      v47 = *(a2 + 48);
      v114 = *(a2 + 32);
      v115 = v47;
      v116 = *(a2 + 64);
      v117 = *(a2 + 80);
      v48 = *(a2 + 16);
      v112 = *a2;
      v113 = v48;
      *v99 = v73;
      _ViewInputs.pushIdentity(_:)();
      PropertyList.subscript.getter();
      v92 = v75;
      v93 = v43;
      v94 = v78;
      v95 = v88;
      v96 = v89;
      v97 = v11;
      v98 = v77;
      _GraphInputs.interfaceIdiom.getter();
      PropertyList.subscript.getter();
      v49 = *(a2 + 48);
      v114 = *(a2 + 32);
      v115 = v49;
      v116 = *(a2 + 64);
      v117 = *(a2 + 80);
      v50 = *(a2 + 16);
      v112 = *a2;
      v113 = v50;
      swift_beginAccess();
      v76 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v51 = *(a2 + 48);
      v114 = *(a2 + 32);
      v115 = v51;
      v116 = *(a2 + 64);
      v117 = *(a2 + 80);
      v52 = *(a2 + 16);
      v112 = *a2;
      v113 = v52;
      v72 = _ViewInputs.animatedPosition()();
      v53 = *(a2 + 48);
      v114 = *(a2 + 32);
      v115 = v53;
      v116 = *(a2 + 64);
      v117 = *(a2 + 80);
      v54 = *(a2 + 16);
      v112 = *a2;
      v113 = v54;
      v55 = _ViewInputs.containerPosition.getter();
      v56 = *(v78 + 16);
      *v99 = v41;
      *&v99[8] = v79;
      v57 = PreferencesOutputs.subscript.getter();
      if ((v57 & 0x100000000) != 0)
      {
        v58 = v45;
      }

      else
      {
        v58 = v57;
      }

      *v99 = v41;
      *&v99[8] = v79;
      v59 = PreferencesOutputs.subscript.getter();
      if ((v59 & 0x100000000) != 0)
      {
        v60 = v45;
      }

      else
      {
        v60 = v59;
      }

      type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, &type metadata for AccessibilityAttachmentModifier, type metadata accessor for AccessibilityViewModifierAccessor);
      *v99 = v73;
      v99[4] = v85 & 1;
      *&v99[8] = v86;
      v100 = v84;
      v101 = v61;
      v42 = v83;
      v102 = v83;
      v103 = v76;
      v104 = v72;
      v105 = v55;
      v106 = v56;
      v107 = v58;
      v108 = v74;
      v109 = v60;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type DisplayListTransform and conformance DisplayListTransform();
      Attribute.init<A>(body:value:flags:update:)();
      v99[0] = 0;
      PreferencesOutputs.subscript.setter();
      v41 = v110;
    }

    else
    {
      v42 = v83;
    }

    _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c10AttachmentE0V_Tt5B5(v42, a2, v41, v111, 1, 0, 0, 0, 0, v80);
    LOBYTE(v112) = 0;
    PreferencesOutputs.subscript.setter();
    v114 = v125;
    v115 = v126;
    v116 = v127;
    v117 = v128;
    v112 = v123;
    v113 = v124;
    result = outlined destroy of _ViewInputs(&v112);
    *a4 = v110;
    v63 = v111;
  }

  else
  {
    *&v123 = v90;
    DWORD2(v123) = v91;
    v82 = a3;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 && (*&v123 = v90, DWORD2(v123) = v91, (PreferencesInputs.contains<A>(_:includeHostPreferences:)()))
    {
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      v16 = (v123 >> 4) & 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = *a2;
    v18 = *(a2 + 8);
    v19 = *(a2 + 16);
    *v99 = *(a2 + 24);
    *&v99[16] = *(a2 + 40);
    v20 = *(a2 + 48);
    v21 = *(a2 + 64);
    v125 = *(a2 + 32);
    v126 = v20;
    v127 = v21;
    v128 = *(a2 + 80);
    v22 = *(a2 + 16);
    v123 = *a2;
    v124 = v22;
    v81 = v17;
    if (v16)
    {
      outlined init with copy of _ViewInputs(a2, &v118);
      lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
      PropertyList.subscript.getter();
      LODWORD(v118) = v118 & 0xFFFFFFEF;
      v23 = PropertyList.subscript.setter();
    }

    else
    {
      v23 = outlined init with copy of _ViewInputs(a2, &v118);
    }

    v33 = *(a2 + 48);
    v119[1] = *(a2 + 32);
    v120 = v33;
    v121 = *(a2 + 64);
    v122 = *(a2 + 80);
    v34 = *(a2 + 16);
    v118 = *a2;
    v119[0] = v34;
    v82(&v112, v23, &v118);
    *&v118 = v90;
    DWORD2(v118) = v91;
    if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
    {
      *&v118 = v90;
      DWORD2(v118) = v91;
      if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
      {
        *&v118 = v112;
        DWORD2(v118) = DWORD2(v112);
        v35 = PreferencesOutputs.subscript.getter();
        if ((v35 & 0x100000000) != 0)
        {
          v36 = *MEMORY[0x1E698D3F8];
        }

        else
        {
          v36 = v35;
        }

        v37 = AGGraphCreateOffsetAttribute2();
        v38 = swift_getKeyPath();
        dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
        if (v39)
        {
          LODWORD(v118) = v37;
          *(&v118 + 1) = v38;
          protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
          type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>();
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment> and conformance Focus<A, B>, type metadata accessor for Focus<MutableBox<AccessibilityAttachment>, AccessibilityAttachment>);

          v40 = Attribute.init<A>(body:value:flags:update:)();
        }

        else
        {
          v40 = AGGraphCreateOffsetAttribute2();
        }

        *&v118 = __PAIR64__(v40, v36);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
        Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v118) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }

    v87 = v112;
    if (v16)
    {
      *&v118 = v112;
      DWORD2(v118) = DWORD2(v112);
      PreferencesOutputs.subscript.getter();
      v64 = swift_beginAccess();
      MEMORY[0x1EEE9AC00](v64);
      *&v118 = v90;
      DWORD2(v118) = v91;
      MEMORY[0x1EEE9AC00](v65);
      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }

    else
    {
      outlined destroy of PreferencesInputs(&v90);
    }

    v66 = *(a2 + 48);
    v119[1] = *(a2 + 32);
    v120 = v66;
    v121 = *(a2 + 64);
    v122 = *(a2 + 80);
    v67 = *(a2 + 16);
    v118 = *a2;
    v119[0] = v67;
    *&v112 = 1024;
    if (_ViewInputs.requestsPlatformItem(for:)())
    {
      *&v118 = v87;
      DWORD2(v118) = DWORD2(v87);
      PreferencesOutputs.subscript.getter();
      swift_beginAccess();
      v68 = *(v19 + 16);
      type metadata accessor for PropertyList.Tracker();
      swift_allocObject();
      v69 = PropertyList.Tracker.init()();
      LODWORD(v118) = v68;
      *(&v118 + 1) = v69;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityEnv and conformance PlatformAccessibilityEnv();
      Attribute.init<A>(body:value:flags:update:)();

      *&v118 = v81;
      *(&v118 + 1) = v18;
      *&v119[0] = v19;
      *(v119 + 8) = *v99;
      *(&v119[1] + 1) = *&v99[16];
      _GraphInputs.platformSystem.getter();
      v70 = *(a2 + 48);
      v114 = *(a2 + 32);
      v115 = v70;
      v116 = *(a2 + 64);
      v117 = *(a2 + 80);
      v71 = *(a2 + 16);
      v112 = *a2;
      v113 = v71;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type PlatformAccessibilityTransform and conformance PlatformAccessibilityTransform();
      Attribute.init<A>(body:value:flags:update:)();
      lazy protocol witness table accessor for type AccessibilityPlatformItemTransform and conformance AccessibilityPlatformItemTransform();
      static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
    }

    v119[1] = v125;
    v120 = v126;
    v121 = v127;
    v122 = v128;
    v118 = v123;
    v119[0] = v124;
    result = outlined destroy of _ViewInputs(&v118);
    *a4 = v87;
    v63 = *(&v87 + 1);
  }

  a4[1] = v63;
  return result;
}

uint64_t sub_18BD689A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of AccessibilityAttachment(v3 + 16, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AccessibilityAttachmentModifier@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
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
  return specialized static AccessibilityViewModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityAttachmentModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
  result = lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
  *(a1 + 16) = result;
  return result;
}

void type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for Namespace.ID?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for ScrollViewBehavior.DecelerationState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform()
{
  result = lazy protocol witness table cache variable for type PropertiesTransform and conformance PropertiesTransform;
  if (!lazy protocol witness table cache variable for type PropertiesTransform and conformance PropertiesTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertiesTransform and conformance PropertiesTransform);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityGeometryUpdater?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI7BindingVySbGMaTm_11(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A66LL8modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c10AttachmentE0V_Tt5B5Tm(unsigned int a1, __int128 *a2, uint64_t a3, int a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unint64_t *a11, void (*a12)(void))
{
  v90 = *MEMORY[0x1E69E9840];
  *&v65 = *(a2 + 6);
  DWORD2(v65) = *(a2 + 14);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    *&v65 = a3;
    DWORD2(v65) = a4;
    v20 = PreferencesOutputs.subscript.getter();
    v21 = *MEMORY[0x1E698D3F8];
    v60 = *MEMORY[0x1E698D3F8];
    if ((v20 & 0x100000000) == 0)
    {
      v21 = v20;
    }
  }

  else
  {
    v21 = *MEMORY[0x1E698D3F8];
    v60 = *MEMORY[0x1E698D3F8];
  }

  v53 = v21;
  v59 = *(a2 + 18);
  v22 = a2[3];
  *&v66[16] = a2[2];
  v67 = v22;
  v68 = a2[4];
  LODWORD(v69) = *(a2 + 20);
  v23 = a2[1];
  v65 = *a2;
  *v66 = v23;
  v57 = _ViewInputs.position.getter();
  v58 = *(a2 + 15);
  v56 = a1;
  v54 = a3;
  v55 = a4;
  if (a5)
  {
    v24 = *(a2 + 9);
    if ((v24 & 0x20) != 0)
    {
      lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
      PropertyList.subscript.getter();
      if (v65 == 1)
      {
        *&v65 = a3;
        DWORD2(v65) = a4;
        v25 = PreferencesOutputs.subscript.getter();
        result = AGSubgraphGetCurrent();
        if (!result)
        {
          __break(1u);
          goto LABEL_27;
        }

        v27 = result;
        if ((v25 & 0x100000000) != 0)
        {
          v28 = v60;
        }

        else
        {
          v28 = v25;
        }

        v29 = v28 | (v60 << 32);
        LOBYTE(v65) = 1;
        v30 = 1;
        v52 = 255;
        if ((v24 & 0x40) != 0)
        {
LABEL_15:
          v31 = v29;
          UniqueID.init()();
          v32 = v65;
          result = AGSubgraphGetCurrent();
          if (result)
          {
            LOBYTE(v63[0]) = 1;
            v33 = 1;
            v34 = v59 | (v57 << 32);
            v35 = v58 | (v60 << 32);
            v36 = 255;
            v29 = v31;
LABEL_19:
            *&v86 = v34;
            *(&v86 + 1) = v35;
            *&v87 = 0;
            *(&v87 + 1) = v36;
            v88 = v32;
            *&v89 = v33;
            *(&v89 + 1) = result;
            v50 = v30;
            v51 = v27;
            v49 = v29;
            goto LABEL_20;
          }

LABEL_27:
          __break(1u);
          return result;
        }
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v27 = 0;
        v52 = 0;
        if ((v24 & 0x40) != 0)
        {
          goto LABEL_15;
        }
      }

      v32 = 0;
      result = 0;
      v33 = 0;
      v36 = 0;
      v34 = 0;
      v35 = 0;
      goto LABEL_19;
    }
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
LABEL_20:
  v37 = a2[3];
  v63[2] = a2[2];
  v63[3] = v37;
  v63[4] = a2[4];
  v64 = *(a2 + 20);
  v38 = a2[1];
  v63[0] = *a2;
  v63[1] = v38;
  _ViewInputs.scrapeableParentID.getter();
  v39 = *(a2 + 2);
  v40 = *(a2 + 6);
  v41 = *(a2 + 9);
  _GraphInputs.interfaceIdiom.getter();
  swift_beginAccess();
  v42 = *(v39 + 16);
  *&v65 = v54;
  DWORD2(v65) = v55;
  v43 = PreferencesOutputs.subscript.getter();
  if ((v43 & 0x100000000) != 0)
  {
    v44 = v60;
  }

  else
  {
    v44 = v43;
  }

  type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>(0, a11, a12);
  *&v65 = v45;
  *(&v65 + 1) = __PAIR64__(a10, v56);
  *v66 = v62;
  *&v66[8] = v61;
  *&v66[24] = v57;
  *&v66[28] = v59;
  *&v67 = __PAIR64__(v42, v58);
  *(&v67 + 1) = __PAIR64__(v53, v40);
  LODWORD(v68) = v44;
  *(&v68 + 1) = a6;
  v69 = a7;
  v70 = a8;
  v71 = a9;
  v72 = v49;
  v73 = 0;
  v74 = v52;
  v75 = 0;
  v76 = 0;
  v77 = v50;
  v78 = v51;
  v79 = v86;
  v80 = v87;
  v81 = v88;
  v82 = v89;
  v83 = (v41 & 0x20) == 0;
  v84 = 0;
  swift_unknownObjectWeakInit();
  v85 = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  v46 = v51;
  outlined init with copy of AccessibilityGeometryUpdater?(&v86, v63, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater, MEMORY[0x1E69E6720], type metadata accessor for Namespace.ID?);
  lazy protocol witness table accessor for type PropertiesTransform and conformance PropertiesTransform();
  v47 = a6;
  v48 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of PropertiesTransform(&v65);
  AGGraphSetFlags();
  if (a10)
  {
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  outlined destroy of AccessibilityGeometryUpdater?(&v86, &lazy cache variable for type metadata for AccessibilityGeometryUpdater?, &type metadata for AccessibilityGeometryUpdater, MEMORY[0x1E69E6720], type metadata accessor for Namespace.ID?);

  return v48;
}

void type metadata accessor for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for AccessibilityViewModifierAccessor();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t initializeWithCopy for AccessibilityGeometryUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  v5 = v4;
  return a1;
}

uint64_t storeEnumTagSinglePayload for ScrollViewBehavior.DecelerationState(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t initializeWithCopy for PropertiesTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  *(a1 + 72) = v4;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);
  v6 = *(a2 + 152);
  *(a1 + 152) = v6;
  *(a1 + 160) = *(a2 + 160);
  v7 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v7;
  *(a1 + 208) = *(a2 + 208);
  v8 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v8;
  v9 = *(a2 + 216);
  *(a1 + 216) = v9;
  *(a1 + 224) = *(a2 + 224);
  v10 = *(a2 + 232);
  *(a1 + 232) = v10;
  v11 = v4;
  v12 = v6;
  v13 = v9;
  v14 = v10;
  swift_unknownObjectWeakCopyInit();
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

void destroy for PropertiesTransform(id *a1)
{

  JUMPOUT(0x18D011290);
}

uint64_t outlined destroy of AccessibilityLargeContentViewItem?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for AccessibilityUIKitTraits?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for AccessibilityUIKitTraits?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host()
{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host;
  if (!lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityChildBehavior.Host(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityContainerModifier(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier();
  result = lazy protocol witness table accessor for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityContainerModifier and conformance AccessibilityContainerModifier);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void @objc _UIHostingView.layoutSubviews()(void *a1)
{
  v1 = a1;
  _UIHostingView.layoutSubviews()();
}

Swift::Void __swiftcall _UIHostingView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIHostingView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = _UIHostingView.base.getter();
  UIHostingViewBase.layoutSubviews()();
}

unint64_t type metadata accessor for UIFocusSystem()
{
  result = lazy cache variable for type metadata for UIFocusSystem;
  if (!lazy cache variable for type metadata for UIFocusSystem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFocusSystem);
  }

  return result;
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance _UIHostingView<A1>()
{
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

double _UIHostingView.hostContainerSafeArea.getter()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase._containerSafeArea.getter();
  v2 = v1;

  return v2;
}

void _UIHostingView.hostKeyboardHeight.getter()
{
  static Semantics.v7.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v0 = _UIHostingView.base.getter();
    UIHostingViewBase._keyboardSafeAreaHeight.getter();
  }

  else
  {

    _UIHostingView._legacyHostKeyboardHeight.getter();
  }
}

void *assignWithCopy for FocusStore(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

unint64_t lazy protocol witness table accessor for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput()
{
  result = lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput;
  if (!lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput;
  if (!lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider;
  if (!lazy protocol witness table cache variable for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider);
  }

  return result;
}

uint64_t closure #1 in _UIHostingView.HostViewGraph.modifyViewInputs(inputs:graph:)(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  result = PropertyList.subscript.getter();
  if (!v4)
  {
    UIUserInterfaceIdiom.idiom.getter(v2, &v4);
    return PropertyList.subscript.setter();
  }

  return result;
}

void type metadata accessor for WeakBox<UIView>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for WeakBox();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewResponderGestureContainerFactory and conformance ViewResponderGestureContainerFactory()
{
  result = lazy protocol witness table cache variable for type ViewResponderGestureContainerFactory and conformance ViewResponderGestureContainerFactory;
  if (!lazy protocol witness table cache variable for type ViewResponderGestureContainerFactory and conformance ViewResponderGestureContainerFactory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewResponderGestureContainerFactory and conformance ViewResponderGestureContainerFactory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitResponderEventBindingBridge.Factory and conformance UIKitResponderEventBindingBridge.Factory()
{
  result = lazy protocol witness table cache variable for type UIKitResponderEventBindingBridge.Factory and conformance UIKitResponderEventBindingBridge.Factory;
  if (!lazy protocol witness table cache variable for type UIKitResponderEventBindingBridge.Factory and conformance UIKitResponderEventBindingBridge.Factory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitResponderEventBindingBridge.Factory and conformance UIKitResponderEventBindingBridge.Factory);
  }

  return result;
}

void specialized _UIHostingView.HostViewGraph.modifyViewInputs(inputs:graph:)(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    lazy protocol witness table accessor for type UIKitResponderEventBindingBridge.Factory and conformance UIKitResponderEventBindingBridge.Factory();
    PropertyList.subscript.setter();
    v15[0] = &type metadata for ViewResponderGestureContainerFactory;
    v15[1] = lazy protocol witness table accessor for type ViewResponderGestureContainerFactory and conformance ViewResponderGestureContainerFactory();
    PropertyList.subscript.setter();
    type metadata accessor for SwiftUIPlatformProvidersDefinition();
    _GraphInputs.platformProvidersDefinition.setter();
    lazy protocol witness table accessor for type UIInteractionResponderProvider and conformance UIInteractionResponderProvider();
    _GraphInputs.coreInteractionResponderProvider.setter();
    if (one-time initialization token for defaultUseSetNeedsLayout != -1)
    {
      swift_once();
    }

    _GraphInputs.updateCycleUseSetNeedsLayout.setter();
    v6 = v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x1C0);
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      (*(v8 + 56))(v5, a1, *(a2 + 16), *(a2 + 24), ObjectType, v8);
      v7 = swift_unknownObjectRelease();
    }

    v10 = MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x18D00AC20](partial apply for closure #1 in _UIHostingView.HostViewGraph.modifyViewInputs(inputs:graph:), v10);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v11 = MEMORY[0x1E6981A78];
    _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_1(0, &lazy cache variable for type metadata for WeakBox<UIView>, MEMORY[0x1E6981A78]);
    v12 = Attribute.init<A>(body:value:flags:update:)();
    _sypSgWOhTm_8(v15, &lazy cache variable for type metadata for WeakBox<UIView>, v11, _s7SwiftUI7WeakBoxVySo6UIViewCGMaTm_1);
    LODWORD(v15[0]) = v12;
    lazy protocol witness table accessor for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput();
    PropertyList.subscript.setter();
    lazy protocol witness table accessor for type SwiftUITextAlwaysOnProvider and conformance SwiftUITextAlwaysOnProvider();
    _ViewInputs.textAlwaysOnProvider.setter();
    v13 = _UIHostingView.navigationBridge.getter();
    if (v13)
    {
      v14 = v13;
      lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput();
      PropertyList.subscript.getter();

      *(v14 + 160) = v15[0];
    }

    else
    {
    }
  }
}

uint64_t _UIHostingView.navigationBridge.getter()
{
  v0 = _UIHostingView.viewController.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = specialized UIHostingController.navigationBridge.getter();

  return v2;
}

id specialized AccessibilityViewGraph.modifyViewOutputs(outputs:inputs:graph:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v28 = *(a2 + 32);
  v29 = v5;
  v7 = *(a2 + 48);
  v30 = *(a2 + 64);
  v8 = *(a2 + 16);
  v27[0] = *a2;
  v27[1] = v8;
  v21 = v28;
  v22 = v7;
  v23 = *(a2 + 64);
  v31 = *(a2 + 80);
  v24 = *(a2 + 80);
  v19 = v27[0];
  v20 = v6;
  LOBYTE(v17[0]) = 0;
  outlined init with copy of _ViewInputs(v27, v25);
  lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
  PropertyList.subscript.setter();
  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v23;
  v26 = v24;
  v25[0] = v19;
  v25[1] = v20;
  v9 = *a1;
  v10 = a1[1];
  *&v17[0] = v22;
  DWORD2(v17[0]) = DWORD2(v22);
  v11 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v12 = *MEMORY[0x1E698D3F8];
  if ((v11 & 1) == 0)
  {
    goto LABEL_4;
  }

  result = AGSubgraphGetCurrent();
  if (result)
  {
    v14 = result;
    type metadata accessor for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>(0, &lazy cache variable for type metadata for AccessibilityContainerResolver<AccessibilityChildBehavior.Host>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Host and conformance AccessibilityChildBehavior.Host, &type metadata for AccessibilityChildBehavior.Host, type metadata accessor for AccessibilityContainerResolver);
    _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c9ContainerE0V_Tt5B5(v12, v25, v9, v10, 1, v14, v12, v15, &protocol witness table for AccessibilityContainerResolver<A>, 0);

LABEL_4:
    PreferencesOutputs.subscript.setter();
    PreferencesOutputs.subscript.getter();
    *(v2 + 8) = AGCreateWeakAttribute();
    PreferencesOutputs.subscript.getter();
    v16 = AGCreateWeakAttribute();
    v17[2] = v21;
    v17[3] = v22;
    v17[4] = v23;
    v18 = v24;
    v17[0] = v19;
    v17[1] = v20;
    result = outlined destroy of _ViewInputs(v17);
    *(v3 + 28) = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewOutputs(outputs:inputs:graph:) in conformance PlatformItemListViewGraph()
{
  PreferencesOutputs.subscript.getter();
  result = AGCreateWeakAttribute();
  *v0 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIAllowsHitTestingAccessibilityProvider and conformance SwiftUIAllowsHitTestingAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIAllowsHitTestingAccessibilityProvider and conformance SwiftUIAllowsHitTestingAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIAllowsHitTestingAccessibilityProvider and conformance SwiftUIAllowsHitTestingAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIAllowsHitTestingAccessibilityProvider and conformance SwiftUIAllowsHitTestingAccessibilityProvider);
  }

  return result;
}

uint64_t assignWithCopy for FocusedValues(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t specialized FocusViewGraph.modifyViewInputs(inputs:graph:)()
{
  lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type FocusStoreInputKey and conformance FocusStoreInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey();
  return PropertyList.subscript.setter();
}

uint64_t ViewGraph.setFocusedValues(_:)()
{
  result = swift_beginAccess();
  if ((*(v0 + 361) & 0x20) != 0)
  {
    lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
    result = ViewGraph.subscript.getter();
    if (result)
    {
      result = *(result + 4);
      if (result != *MEMORY[0x1E698D3F8])
      {
        result = AGGraphSetValue();
        if (result)
        {
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          if (result)
          {
            v2 = *(v0 + 208);
            ObjectType = swift_getObjectType();
            (*(*(v2 + 8) + 16))(ObjectType);
            return swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  return result;
}

uint64_t _UIHostingView.focusedValues.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0);
  v3 = v2[8];
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 1);
}

unint64_t lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey()
{
  result = lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey;
  if (!lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey;
  if (!lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusedItemInputKey and conformance FocusedItemInputKey);
  }

  return result;
}

uint64_t AccessibilityViewGraph.modifyViewInputs(inputs:graph:)(uint64_t a1, uint64_t a2)
{
  *(a1 + 36) |= 0x1000u;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type SwiftUITextAccessibilityProvider and conformance SwiftUITextAccessibilityProvider();
  _ViewInputs.textAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIImageAccessibilityProvider and conformance SwiftUIImageAccessibilityProvider();
  _ViewInputs.imageAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIPrivacyReductionAccessibilityProvider and conformance SwiftUIPrivacyReductionAccessibilityProvider();
  _ViewInputs.privacyReductionAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUILayoutAccessibilityProvider and conformance SwiftUILayoutAccessibilityProvider();
  _ViewInputs.layoutAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIGestureAccessibilityProvider and conformance SwiftUIGestureAccessibilityProvider();
  _ViewInputs.gestureAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIOpacityAccessibilityProvider and conformance SwiftUIOpacityAccessibilityProvider();
  _ViewInputs.opacityAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIContentShapeAccessibilityProvider and conformance SwiftUIContentShapeAccessibilityProvider();
  _ViewInputs.contentShapeAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIAllowsHitTestingAccessibilityProvider and conformance SwiftUIAllowsHitTestingAccessibilityProvider();
  _ViewInputs.allowsHitTestingAccessibilityProvider.setter();
  lazy protocol witness table accessor for type SwiftUIHiddenAccessibilityProvider and conformance SwiftUIHiddenAccessibilityProvider();
  _ViewInputs.hiddenAccessibilityProvider.setter();
  _ViewInputs.accessibilityPreferenceProvider.setter();
  swift_beginAccess();
  if ((*(a2 + 361) & 0x10) != 0)
  {
    *(a1 + 36) |= 0x40u;
    LOBYTE(v6) = 1;
    lazy protocol witness table accessor for type AccessibilityCapturesViewResponders and conformance AccessibilityCapturesViewResponders();
    PropertyList.subscript.setter();
  }

  _ViewInputs.makeRootAccessibilityRelationshipScope()();
  type metadata accessor for AccessibilityRelationshipScope();
  _s7SwiftUI30AccessibilityRelationshipScopeCAcA11PropertyKeyAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope, type metadata accessor for AccessibilityRelationshipScope);
  PropertyList.subscript.getter();

  *v2 = v6;
  lazy protocol witness table accessor for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey();
  result = PropertyList.subscript.setter();
  if ((*(a2 + 361) & 0x20) != 0 && *(v2 + 45) == 1)
  {
    result = ViewGraph.parentHost.getter();
    if (result)
    {

      result = GraphHost.removePreference<A>(_:)();
      *(v2 + 45) = 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey);
  }

  return result;
}

Swift::Void __swiftcall _ViewInputs.makeRootAccessibilityRelationshipScope()()
{
  type metadata accessor for AccessibilityRelationshipScope();
  lazy protocol witness table accessor for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope(&lazy protocol witness table cache variable for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope);
  PropertyList.subscript.getter();
  if (v2)
  {
  }

  else
  {
    v0 = swift_allocObject();
    v1 = MEMORY[0x1E69E7CC8];
    v0[2] = MEMORY[0x1E69E7CC8];
    v0[3] = v1;
    v0[4] = v1;
    PropertyList.subscript.setter();
  }
}

unint64_t lazy protocol witness table accessor for type SwiftUIImageAccessibilityProvider and conformance SwiftUIImageAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIImageAccessibilityProvider and conformance SwiftUIImageAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIImageAccessibilityProvider and conformance SwiftUIImageAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIImageAccessibilityProvider and conformance SwiftUIImageAccessibilityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUITextAccessibilityProvider and conformance SwiftUITextAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUITextAccessibilityProvider and conformance SwiftUITextAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUITextAccessibilityProvider and conformance SwiftUITextAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUITextAccessibilityProvider and conformance SwiftUITextAccessibilityProvider);
  }

  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance PlatformItemListViewGraph(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if ((*(a2 + 361) & 2) != 0)
  {
    result = _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(2u);
    *(v2 + 8) = 1;
  }

  return result;
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance _UIHostingView<A>.EnableVFDFeature(uint64_t result)
{
  v1 = *(result + 36);
  if ((v1 & 0x400) == 0)
  {
    *(result + 36) = v1 | 0x400;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIOpacityAccessibilityProvider and conformance SwiftUIOpacityAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIOpacityAccessibilityProvider and conformance SwiftUIOpacityAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIOpacityAccessibilityProvider and conformance SwiftUIOpacityAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIOpacityAccessibilityProvider and conformance SwiftUIOpacityAccessibilityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIContentShapeAccessibilityProvider and conformance SwiftUIContentShapeAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIContentShapeAccessibilityProvider and conformance SwiftUIContentShapeAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIContentShapeAccessibilityProvider and conformance SwiftUIContentShapeAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIContentShapeAccessibilityProvider and conformance SwiftUIContentShapeAccessibilityProvider);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AccessibilityRelationshipScope and conformance AccessibilityRelationshipScope(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessibilityRelationshipScope();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI30AccessibilityRelationshipScopeCAcA11PropertyKeyAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey;
  if (!lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey;
  if (!lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocusStoreInputKey and conformance AccessibilityFocusStoreInputKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIGestureAccessibilityProvider and conformance SwiftUIGestureAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIGestureAccessibilityProvider and conformance SwiftUIGestureAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIGestureAccessibilityProvider and conformance SwiftUIGestureAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIGestureAccessibilityProvider and conformance SwiftUIGestureAccessibilityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIPrivacyReductionAccessibilityProvider and conformance SwiftUIPrivacyReductionAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider and conformance SwiftUIPrivacyReductionAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider and conformance SwiftUIPrivacyReductionAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIPrivacyReductionAccessibilityProvider and conformance SwiftUIPrivacyReductionAccessibilityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUILayoutAccessibilityProvider and conformance SwiftUILayoutAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUILayoutAccessibilityProvider and conformance SwiftUILayoutAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type SwiftUILayoutAccessibilityProvider and conformance SwiftUILayoutAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUILayoutAccessibilityProvider and conformance SwiftUILayoutAccessibilityProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey()
{
  result = lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey;
  if (!lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey;
  if (!lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocusInputKey and conformance AccessibilityFocusInputKey);
  }

  return result;
}

uint64_t static UITraitBridgedEnvironmentPropertyKeyLookup.lookup(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[7] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a2;
  type metadata accessor for UITraitCollection?();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in static UITraitBridgedEnvironmentPropertyKeyLookup.lookup(in:), v8, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v6, a4);
}

uint64_t EnvironmentValues.getBridgedValue<A>(for:)()
{
  type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup();
  swift_getWitnessTable();
  return EnvironmentValues.valueWithSecondaryLookup<A>(_:)();
}

void type metadata accessor for UITraitCollection?()
{
  if (!lazy cache variable for type metadata for UITraitCollection?)
  {
    type metadata accessor for UITraitCollection();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UITraitCollection?);
    }
  }
}

uint64_t static TypesettingConfigurationKey.read(from:)()
{
  v0 = type metadata accessor for TypesettingLanguage();
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for Locale.Language?();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D00DA60](v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of Locale.Language?(v3);
    v9 = static TypesettingLanguage.automatic.getter();
    MEMORY[0x18D008A60](&v14, v9);
    v12 = v14;
    v13 = v15;
    return TypesettingConfiguration.init(language:languageAwareLineHeightRatio:)();
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v11 = static TypesettingLanguage.explicit(_:)();
    MEMORY[0x18D008A60](&v14, v11);
    v12 = v14;
    v13 = v15;
    TypesettingConfiguration.init(language:languageAwareLineHeightRatio:)();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t outlined destroy of Locale.Language?(uint64_t a1)
{
  type metadata accessor for Locale.Language?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UITraitBridgedEnvironmentResolver.read<A>(for:from:)(uint64_t a1, uint64_t *a2)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v6 = a2;
    v4 = *a2;
    v5 = v6[1];
    v7[3] = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1(v7);
    v7[4] = v4;
    v7[5] = v5;
    EnvironmentValues.getBridgedValue<A>(for:)();
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static UIKitPlatformColorDefinition.resolvedHDRColor(_:environment:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = objc_allocWithZone(type metadata accessor for ViewGraphHostEnvironmentWrapper());
  swift_unknownObjectRetain();
  v5 = [v4 init];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedTraitCollectionKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedTraitCollectionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedTraitCollectionKey>);

  v6 = PropertyList.subscript.getter();
  if (v19)
  {
    v7 = v19;
  }

  else
  {
    v6 = [objc_opt_self() currentTraitCollection];
    v7 = v6;
  }

  MEMORY[0x1EEE9AC00](v6);
  v8 = v5;
  v9 = v19;
  v10 = UITraitCollection._modifyingTraits(environmentWrapper:mutations:)();

  UICoreTraitCollectionResolutionOptions.init(rawValue:)();
  v11 = UITraitCollection.coreResolvedBaseTraitCollection(environment:wrapper:options:)();

  v12 = v11;
  v13 = UITraitCollection.coreResolvedGlassMaterialTraitCollection(environment:wrapper:)();

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedColorSeedKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<InheritedColorSeedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<InheritedColorSeedKey>);
  if (v3)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v14 = [a1 resolvedColorWithTraitCollection_];
  v15 = Color.Resolved.init(platformColor:)();
  v17 = v16;

  swift_unknownObjectRelease();
  if (v17)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t specialized static TypesettingConfigurationKey.write(to:value:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Locale.Language?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale.Language();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TypesettingLanguage.Storage();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TypesettingLanguage();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TypesettingLanguage(a2, v16);
  outlined init with take of TypesettingLanguage.Storage(v16, v13);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  if ((*(*(v17 - 8) + 48))(v13, 2, v17))
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    return UIMutableTraits.typesettingLanguage.setter();
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    (*(v8 + 16))(v6, v10, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    UIMutableTraits.typesettingLanguage.setter();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t outlined init with take of TypesettingLanguage.Storage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage.Storage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TypesettingLanguage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Locale.Language?()
{
  if (!lazy cache variable for type metadata for Locale.Language?)
  {
    type metadata accessor for Locale.Language();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Locale.Language?);
    }
  }
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)()
{
  if (!lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags))
  {
    type metadata accessor for Locale.Language();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags));
    }
  }
}

uint64_t outlined consume of Material?(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined consume of Material.ID(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Material.ID(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

Swift::Void __swiftcall _UIHostingView.beginTransaction()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = *((v2 & v1) + 0x50);
  v4[3] = *((v2 & v1) + 0x58);
  v4[4] = v3;

  onMainThread(do:)();
}

uint64_t closure #1 in _UIHostingView.beginTransaction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for defaultUseSetNeedsLayout != -1)
  {
    swift_once();
  }

  if (static UIKitUpdateCycle.defaultUseSetNeedsLayout == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = _UIHostingView.base.getter();
      UIHostingViewBase._setNeedsUpdate()();
    }
  }

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;

  if (_UIUpdateCycleEnabled())
  {
    MEMORY[0x18D001810](partial apply for closure #1 in closure #1 in _UIHostingView.beginTransaction(), v9);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  MEMORY[0x18D00E3D0](partial apply for closure #1 in closure #1 in _UIHostingView.beginTransaction(), v9);
}

uint64_t one-time initialization function for defaultUseSetNeedsLayout()
{
  result = closure #1 in variable initialization expression of static UIKitUpdateCycle.defaultUseSetNeedsLayout();
  static UIKitUpdateCycle.defaultUseSetNeedsLayout = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static UIKitUpdateCycle.defaultUseSetNeedsLayout()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x18D00C850](0xD00000000000001BLL, 0x800000018CD43340);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v6, v7);
    outlined destroy of Any?(v7);
    v3 = MEMORY[0x18D00C850](0xD00000000000001BLL, 0x800000018CD43340);
    LOBYTE(v4) = [v0 BOOLForKey_];

    v0 = v3;
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    outlined destroy of Any?(v7);
    static Semantics.v7.getter();
    v4 = isLinkedOnOrAfter(_:)();
  }

  return v4 & 1;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<()>, type metadata accessor for ());
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakBox<ViewResponder>>, type metadata accessor for WeakBox<ViewResponder>, type metadata accessor for WeakBox<ViewResponder>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityCoreNotification>, &lazy cache variable for type metadata for AccessibilityCoreNotification, &protocol descriptor for AccessibilityCoreNotification);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:)>, type metadata accessor for (_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:)>, type metadata accessor for (_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HitTestTrace<UIView>>, type metadata accessor for HitTestTrace<UIView>, type metadata accessor for HitTestTrace<UIView>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<HitTestTrace<ViewResponder>>, type metadata accessor for HitTestTrace<ViewResponder>, type metadata accessor for HitTestTrace<ViewResponder>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String?, String)>, type metadata accessor for (String?, String), type metadata accessor for (String?, String));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(key: String?, value: String)>, type metadata accessor for (key: String?, value: String), type metadata accessor for (key: String?, value: String));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>, &lazy cache variable for type metadata for CodingKey, MEMORY[0x1E69E7C30]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreviewModifier>, &lazy cache variable for type metadata for PreviewModifier, &protocol descriptor for PreviewModifier);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitAnimationCooperating>, &lazy cache variable for type metadata for UIKitAnimationCooperating, &protocol descriptor for UIKitAnimationCooperating);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventBindingSource>, &lazy cache variable for type metadata for EventBindingSource);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Selectable>, &lazy cache variable for type metadata for Selectable, &protocol descriptor for Selectable);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DocumentCreationStrategy>, &lazy cache variable for type metadata for DocumentCreationStrategy, &protocol descriptor for DocumentCreationStrategy);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableColumnList>, &lazy cache variable for type metadata for TableColumnList, &protocol descriptor for TableColumnList);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UIKitProxyFocusItem>, &lazy cache variable for type metadata for UIKitProxyFocusItem);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(_:)>, type metadata accessor for (_:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSAttributedStringKey>, type metadata accessor for NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<UITextFormattingViewControllerComponentKey>, type metadata accessor for UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakBox<DocumentViewController>>, type metadata accessor for WeakBox<DocumentViewController>, type metadata accessor for WeakBox<DocumentViewController>);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollableCollection>, &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60]);
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

{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void _UIHostingView.safeAreaRegions.setter()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase.safeAreaRegions.setter();
}

void @objc _UIHostingView.tintColorDidChange()(void *a1)
{
  v1 = a1;
  _UIHostingView.tintColorDidChange()();
}

Swift::Void __swiftcall _UIHostingView.tintColorDidChange()()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase.tintColorDidChange()();
}

uint64_t outlined consume of ListItemTint?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t static SwiftUIPlatformProvidersDefinition.updateProviders(_:)(void *a1)
{
  v2 = lazy protocol witness table accessor for type SwiftUIDefaultAccentColorProvider and conformance SwiftUIDefaultAccentColorProvider();
  *a1 = &type metadata for SwiftUIDefaultAccentColorProvider;
  a1[1] = v2;
  v3 = lazy protocol witness table accessor for type KitCoreUINamedColorProvider and conformance KitCoreUINamedColorProvider();
  a1[2] = &type metadata for KitCoreUINamedColorProvider;
  a1[3] = v3;
  v4 = lazy protocol witness table accessor for type SwiftUIAccessibilityTextResolver and conformance SwiftUIAccessibilityTextResolver();
  a1[6] = &type metadata for SwiftUIAccessibilityTextResolver;
  a1[7] = v4;
  v5 = lazy protocol witness table accessor for type UITraitBridgedEnvironmentResolver and conformance UITraitBridgedEnvironmentResolver();
  a1[8] = &type metadata for UITraitBridgedEnvironmentResolver;
  a1[9] = v5;
  v6 = lazy protocol witness table accessor for type SwiftUIResolvedTextProvider and conformance SwiftUIResolvedTextProvider();
  a1[4] = &type metadata for SwiftUIResolvedTextProvider;
  a1[5] = v6;
  v7 = lazy protocol witness table accessor for type SwiftUIGestureConstantsProvider and conformance SwiftUIGestureConstantsProvider();
  a1[14] = &type metadata for SwiftUIGestureConstantsProvider;
  a1[15] = v7;
  v8 = lazy protocol witness table accessor for type SwiftUILazyContainerInputsProvider and conformance SwiftUILazyContainerInputsProvider();
  a1[16] = &type metadata for SwiftUILazyContainerInputsProvider;
  a1[17] = v8;
  result = lazy protocol witness table accessor for type SwiftUILazyLayoutProvider and conformance SwiftUILazyLayoutProvider();
  a1[18] = &type metadata for SwiftUILazyLayoutProvider;
  a1[19] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIDefaultAccentColorProvider and conformance SwiftUIDefaultAccentColorProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIDefaultAccentColorProvider and conformance SwiftUIDefaultAccentColorProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIDefaultAccentColorProvider and conformance SwiftUIDefaultAccentColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIDefaultAccentColorProvider and conformance SwiftUIDefaultAccentColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KitCoreUINamedColorProvider and conformance KitCoreUINamedColorProvider()
{
  result = lazy protocol witness table cache variable for type KitCoreUINamedColorProvider and conformance KitCoreUINamedColorProvider;
  if (!lazy protocol witness table cache variable for type KitCoreUINamedColorProvider and conformance KitCoreUINamedColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KitCoreUINamedColorProvider and conformance KitCoreUINamedColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIAccessibilityTextResolver and conformance SwiftUIAccessibilityTextResolver()
{
  result = lazy protocol witness table cache variable for type SwiftUIAccessibilityTextResolver and conformance SwiftUIAccessibilityTextResolver;
  if (!lazy protocol witness table cache variable for type SwiftUIAccessibilityTextResolver and conformance SwiftUIAccessibilityTextResolver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIAccessibilityTextResolver and conformance SwiftUIAccessibilityTextResolver);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UITraitBridgedEnvironmentResolver and conformance UITraitBridgedEnvironmentResolver()
{
  result = lazy protocol witness table cache variable for type UITraitBridgedEnvironmentResolver and conformance UITraitBridgedEnvironmentResolver;
  if (!lazy protocol witness table cache variable for type UITraitBridgedEnvironmentResolver and conformance UITraitBridgedEnvironmentResolver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITraitBridgedEnvironmentResolver and conformance UITraitBridgedEnvironmentResolver);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIResolvedTextProvider and conformance SwiftUIResolvedTextProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIResolvedTextProvider and conformance SwiftUIResolvedTextProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIResolvedTextProvider and conformance SwiftUIResolvedTextProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIResolvedTextProvider and conformance SwiftUIResolvedTextProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUIGestureConstantsProvider and conformance SwiftUIGestureConstantsProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUIGestureConstantsProvider and conformance SwiftUIGestureConstantsProvider;
  if (!lazy protocol witness table cache variable for type SwiftUIGestureConstantsProvider and conformance SwiftUIGestureConstantsProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUIGestureConstantsProvider and conformance SwiftUIGestureConstantsProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUILazyContainerInputsProvider and conformance SwiftUILazyContainerInputsProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUILazyContainerInputsProvider and conformance SwiftUILazyContainerInputsProvider;
  if (!lazy protocol witness table cache variable for type SwiftUILazyContainerInputsProvider and conformance SwiftUILazyContainerInputsProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUILazyContainerInputsProvider and conformance SwiftUILazyContainerInputsProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUILazyLayoutProvider and conformance SwiftUILazyLayoutProvider()
{
  result = lazy protocol witness table cache variable for type SwiftUILazyLayoutProvider and conformance SwiftUILazyLayoutProvider;
  if (!lazy protocol witness table cache variable for type SwiftUILazyLayoutProvider and conformance SwiftUILazyLayoutProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUILazyLayoutProvider and conformance SwiftUILazyLayoutProvider);
  }

  return result;
}

unint64_t type metadata accessor for UITraitCollection()
{
  result = lazy cache variable for type metadata for UITraitCollection;
  if (!lazy cache variable for type metadata for UITraitCollection)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITraitCollection);
  }

  return result;
}

uint64_t static UIKitPlatformColorDefinition.resolvedColor(_:environment:)(void *a1, __int128 *a2)
{
  v4 = *a2;
  result = specialized static UIKitPlatformColorDefinition.resolvedHDRColor(_:environment:)(a1, &v4);
  if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t @objc _UIHostingView._layoutHeightDependsOnWidth.getter(void *a1)
{
  v1 = a1;
  v2 = _UIHostingView._layoutHeightDependsOnWidth.getter();

  return v2 & 1;
}

uint64_t _UIHostingView._layoutHeightDependsOnWidth.getter()
{
  v0 = _UIHostingView.base.getter();
  v1 = UIHostingViewBase._layoutHeightDependsOnWidth.getter();

  return v1 & 1;
}

uint64_t EnvironmentValues.subscript.getter()
{
  return EnvironmentValues.getBridgedValue<A>(for:)();
}

{
  return MEMORY[0x1EEDE0398]();
}

{
  return MEMORY[0x1EEDE0698]();
}

uint64_t initializeWithCopy for UIHostingConfigurationStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 97) = *(a2 + 97);
  v6 = a3[9];
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(swift_unknownObjectWeakCopyInit() + 8) = *(a2 + v10 + 8);
  return a1;
}

void destroy for UIHostingConfigurationStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v3, 1, v4))
  {
    (*(v5 + 8))(a1 + v3, v4);
  }

  JUMPOUT(0x18D011290);
}

uint64_t UIHostingConfiguration.delegate.getter(uint64_t a1)
{
  v3 = type metadata accessor for UIHostingConfigurationStorage(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UIHostingConfigurationStorage(v1 + *(a1 + 56), v5, type metadata accessor for UIHostingConfigurationStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of UIHostingConfigurationStorage(v5, type metadata accessor for UIHostingConfigurationStorage);
  return Strong;
}

uint64_t UIHostingContentView.hostingView<A>(_:willUpdate:)(void *a1, uint64_t a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v17[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v17[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  specialized _UIHostingView.focusBridge.getter();

  v11 = _UIHostingView.isHiddenForReuse.getter();
  FocusBridge.canAcceptFocus.setter((v11 & 1) == 0);

  UIHostingContentView._configuration.getter(v10);
  v12 = UIHostingConfiguration.delegate.getter(v7);
  v14 = v13;
  result = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    ObjectType = swift_getObjectType();
    (*(v14 + 16))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v16[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v16[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  UIHostingContentView._configuration.getter(v16 - v9);
  v11 = UIHostingConfiguration.delegate.getter(v7);
  v13 = v12;
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t UIHostingContentView.hostingView<A>(_:didUpdate:)(void *a1, uint64_t *a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v18[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v18[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  v11 = *a2;
  v12 = a2[1];
  UIHostingContentView._configuration.getter(v18 - v9);
  v13 = UIHostingConfiguration.delegate.getter(v7);
  v15 = v14;
  result = (*(v8 + 8))(v10, v7);
  if (v13)
  {
    ObjectType = swift_getObjectType();
    *&v18[0] = v11;
    *(&v18[0] + 1) = v12;
    (*(v15 + 24))(a1, v18, *(v5 + 80), *(v5 + 88), ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

void FocusBridge.canAcceptFocus.setter(char a1)
{
  v2 = *(v1 + 16);
  v3 = 2;
  if ((a1 & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v2 & 0xFFFFFFFFFFFFFFFDLL | v3;
  if (v4 != v2)
  {
    *(v1 + 16) = v4;
    swift_beginAccess();
    DisplayList.Version.init(forUpdate:)();
    *(v1 + 48) = v7;
    swift_endAccess();
    v5 = FocusBridge.host.getter();
    if (v5)
    {
      v6 = v5;
      swift_getObjectType();
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    }
  }
}

uint64_t UIHostingContentView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(double a1, double a2, float a3, float a4)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v4;
  _ProposedSize.init(width:height:)();
  if (a3 == 1000.0)
  {
    _ProposedSize.width.setter();
  }

  if (a4 == 1000.0)
  {
    _ProposedSize.height.setter();
  }

  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  *&v18 = v24;
  BYTE8(v18) = v25;
  *&v19 = v26;
  BYTE8(v19) = v27;
  UIHostingContentView.setupSizeInvalidationHandler(_:)(&v18);
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v13 = *(v8 + 1808);
  v18 = *(v8 + 1792);
  v19 = v13;
  type metadata accessor for UIHostingContentView();
  swift_getWitnessTable();
  ViewRendererHost.sizeThatFits(_:)();
  result = UIHostingContentView.roundSize(_:)();
  v15 = v4 + *((*v7 & *v4) + 0x768);
  *v15 = v16;
  *(v15 + 1) = v17;
  v15[16] = 0;
  return result;
}

double @objc UIHostingContentView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(void *a1, double a2, double a3, float a4, float a5)
{
  v9 = a1;
  UIHostingContentView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(a2, a3, a4, a5);
  v11 = v10;

  return v11;
}

uint64_t UIHostingContentView.setupSizeInvalidationHandler(_:)(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = v1 + *(v3 + 0x760);
  if ((v9[25] & 1) == 0)
  {
    v10 = v9[24];
    v11 = *(v9 + 2);
    v20 = *v9;
    v21 = v11;
    v22 = v10;
    v23 = 0;
    v16 = v5;
    v17 = v6;
    v18 = v7;
    v19 = v8;
    result = MEMORY[0x18D004850](&v20, &v16);
    if (result)
    {
      return result;
    }

    v3 = *v2 & *v1;
  }

  v13 = v1 + *(v3 + 1888);
  *v13 = v5;
  *(v13 + 1) = v6;
  *(v13 + 2) = v7;
  v13[24] = v8;
  v13[25] = 0;
  _UIHostingView.viewGraph.getter();
  *&v20 = v5;
  BYTE8(v20) = v6;
  v21 = v7;
  v22 = v8;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = *(v4 + 1792);
  *(v15 + 24) = *(v4 + 1800);
  *(v15 + 40) = *(v4 + 1816);
  *(v15 + 48) = v14;
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
  ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
  swift_endAccess();
}

uint64_t sub_18BD6E320()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BD6E358()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type HostingContentViewRootModifier and conformance HostingContentViewRootModifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t type metadata accessor for UITraitDefinition.Type()
{
  result = lazy cache variable for type metadata for UITraitDefinition.Type;
  if (!lazy cache variable for type metadata for UITraitDefinition.Type)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for UITraitDefinition);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITraitDefinition.Type);
  }

  return result;
}

uint64_t UIHostingContentView.hostingView<A>(_:didMoveTo:)(void *a1, uint64_t a2)
{
  v5 = *a1 & *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x710);
  v16[0] = *((*MEMORY[0x1E69E7D40] & *v2) + 0x700);
  v16[1] = v6;
  v7 = type metadata accessor for UIHostingConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  UIHostingContentView._configuration.getter(v16 - v9);
  v11 = UIHostingConfiguration.delegate.getter(v7);
  v13 = v12;
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

void type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t one-time initialization function for combine()
{
  _s7SwiftUI29AccessibilityChildBehaviorBox33_F0D4BE429651399A5FAD2DF7DCDF699DLLCyAA0cdE0V7CombineVGMaTm_1(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine);
  result = swift_allocObject();
  *(result + 16) = 0;
  static AccessibilityChildBehavior.combine = result;
  return result;
}

uint64_t _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.setter(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1E0);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.didset(v4);
}

uint64_t _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.didset(char a1)
{
  v2 = a1 & 1;
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = v3[60];
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  if (v6 != v2)
  {
    _UIHostingView.viewGraph.getter();
    static _ProposedSize.unspecified.getter();
    if (v6)
    {
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      v8[2] = v3[10];
      v8[3] = v3[11];
      v8[4] = v7;
      swift_beginAccess();
      type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
      ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
      ViewGraphGeometryObservers.stopObserving(proposal:)();
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_18BD6E9C8()
{

  return swift_deallocObject();
}

uint64_t @objc _UIHostingView._axesForDerivingIntrinsicContentSizeFromLayoutSize.getter(void *a1)
{
  v1 = a1;
  v2 = _UIHostingView._axesForDerivingIntrinsicContentSizeFromLayoutSize.getter();

  return v2;
}

uint64_t _UIHostingView._axesForDerivingIntrinsicContentSizeFromLayoutSize.getter()
{
  v0 = _UIHostingView.base.getter();
  v1 = UIHostingViewBase._axesForDerivingIntrinsicContentSizeFromLayoutSize.getter();

  return v1;
}

double @objc _UIHostingView._layoutSizeThatFits(_:fixedAxes:)(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = _UIHostingView._layoutSizeThatFits(_:fixedAxes:)(a5, a2, a3);

  return v9;
}

double _UIHostingView._layoutSizeThatFits(_:fixedAxes:)(uint64_t a1, double a2, double a3)
{
  v6 = _UIHostingView.base.getter();
  v7 = MEMORY[0x18D0019E0](a1, a2, a3);

  return v7;
}

uint64_t UIHostingContentView.updateViewGraphForDisplay(isHidden:)(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v1;
  result = _UIHostingView.isHiddenForReuse.getter();
  if ((result & 1) != v4)
  {
    _UIHostingView.isHiddenForReuse.setter(v4);
    specialized _UIHostingView.focusBridge.getter();

    FocusBridge.canAcceptFocus.setter((a1 & 1) == 0);

    if ((a1 & 1) == 0 && *(v1 + *((*v5 & *v1) + 0x770)) == 1)
    {
      static Semantics.v6.getter();
      v8 = isLinkedOnOrAfter(_:)();
      if (v8)
      {
        MEMORY[0x1EEE9AC00](v8);
        static Update.ensure<A>(_:)();
      }
    }

    v9 = *(v6 + 1808);
    aBlock = *(v6 + 1792);
    v34 = v9;
    type metadata accessor for UIHostingContentView();
    swift_getWitnessTable();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    v10 = *v1;
    v11 = *v5;
    if (a1 & 1) != 0 || (v12 = v1 + *((v11 & v10) + 0x760), (v12[25]) || (v13 = (v1 + *((v11 & v10) + 0x768)), (v13[2]) || ((v14 = *v12, v15 = *(v12 + 1), v16 = *(v12 + 2), v17 = v12[24], v19 = *v13, v18 = v13[1], *&aBlock = v14, BYTE8(aBlock) = v15 & 1, *&v34 = v16, BYTE8(v34) = v17 & 1, swift_getWitnessTable(), ViewRendererHost.sizeThatFits(_:)(), UIHostingContentView.roundSize(_:)(), v10 = *v1, v11 = *v5, v21 == v19) ? (v22 = v20 == v18) : (v22 = 0), v22))
    {
      v30 = 0;
    }

    else
    {
      v23 = v1 + *((v11 & v10) + 0x760);
      *(v23 + 1) = 0;
      *(v23 + 2) = 0;
      *v23 = 0;
      *(v23 + 12) = 256;
      v24 = v1 + *((*v5 & *v1) + 0x768);
      *v24 = 0;
      *(v24 + 1) = 0;
      v24[16] = 1;
      v25 = objc_opt_self();
      v26 = swift_allocObject();
      *(v26 + 16) = v2;
      v27 = swift_allocObject();
      *(v27 + 16) = partial apply for closure #2 in UIHostingContentView.updateViewGraphForDisplay(isHidden:);
      *(v27 + 24) = v26;
      v35 = partial apply for thunk for @callee_guaranteed () -> ();
      v36 = v27;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v34 = thunk for @escaping @callee_guaranteed () -> ();
      *(&v34 + 1) = &block_descriptor_40;
      v28 = _Block_copy(&aBlock);
      v29 = v2;

      [v25 performWithoutAnimation_];
      _Block_release(v28);
      LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

      if (v25)
      {
        __break(1u);
        return result;
      }

      v10 = *v29;
      v11 = *v5;
      v30 = partial apply for closure #2 in UIHostingContentView.updateViewGraphForDisplay(isHidden:);
    }

    v31 = *(v2 + *((v11 & v10) + 0x738));
    if (v31)
    {
      v32 = v31;
      _UIHostingView.isHiddenForReuse.setter(a1 & 1);
    }

    if ((a1 & 1) == 0)
    {
      *(v2 + *((*v5 & *v2) + 0x770)) = 1;
    }

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v30);
  }

  return result;
}

uint64_t sub_18BD6EFA4()
{

  return swift_deallocObject();
}

void @objc UIHostingContentView._containerViewIsHidden(forReuse:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  UIHostingContentView._containerViewIsHidden(forReuse:)(a3);
}

uint64_t protocol witness for ViewGraphFeature.isHiddenForReuseDidChange(graph:) in conformance PlatformItemListViewGraph(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 361) & 2) != 0)
  {
    result = swift_beginAccess();
    if ((*(a1 + 41) & 1) == 0)
    {
      *(v1 + 9) = 1;
    }
  }

  return result;
}

id @objc UIHostingContentView._popupMenuButton.getter(void *a1)
{
  v1 = a1;
  v2 = UIHostingContentView._popupMenuButton.getter();

  return v2;
}

uint64_t UIHostingContentView._popupMenuButton.getter()
{
  UIHostingContentView.popUpButton.getter(v2);
  if (v2[8])
  {
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  outlined destroy of UIHostingConfigurationStorage(v2, type metadata accessor for WeakBox<UIButton>?);
  return Strong;
}

uint64_t UIHostingContentView.popUpButton.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x750);
  swift_beginAccess();
  return outlined init with copy of UIHostingConfigurationStorage(v1 + v3, a1, type metadata accessor for WeakBox<UIButton>?);
}

void @objc UIHostingContentView._popupMenuButtonDidChangeHandler.setter(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1;
  UIHostingContentView._popupMenuButtonDidChangeHandler.setter(v4, v5);
}

uint64_t UIHostingContentView._popupMenuButtonDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x748));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
}

void @objc UIHostingContentView._containerBackgroundViewDidChangeHandler.setter(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1;
  UIHostingContentView._containerBackgroundViewDidChangeHandler.setter(v4, v5);
}

uint64_t sub_18BD6F414()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t UIHostingContentView._containerBackgroundViewDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x730));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
}

void *@objc UIHostingContentView._containerBackgroundView.getter(void *a1)
{
  v1 = a1;
  v2 = specialized UIHostingContentView._containerBackgroundView.getter();
  v3 = v2;

  return v2;
}

uint64_t UIHostingContentView.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for UIHostingConfiguration();
  a1[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return UIHostingContentView._configuration.getter(boxed_opaque_existential_1);
}

uint64_t specialized UIHostingContentView.supports(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v6 = type metadata accessor for UIHostingConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-1] - v8;
  outlined init with copy of _Benchmark(a1, v13);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UIContentConfiguration);
  result = swift_dynamicCast();
  if (result)
  {
    v11 = result;
    (*(v7 + 8))(v9, v6);
    return v11;
  }

  return result;
}

void storeEnumTagSinglePayload for UIHostingConfiguration(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v47 = *(a4 + 16);
  v6 = *(v47 - 8);
  v45 = *(a4 + 24);
  v46 = v6;
  v7 = *(v6 + 84);
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = type metadata accessor for UICellConfigurationState();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = *(v13 + 80);
  if (v14)
  {
    v19 = v14 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = v20;
  }

  v22 = v18 | 7;
  v23 = (v18 + 99) & ~v18;
  if (v14)
  {
    v24 = *(*(v11 - 8) + 64);
  }

  else
  {
    v24 = *(*(v11 - 8) + 64) + 1;
  }

  v25 = v23 + v24;
  v26 = (((v18 | 7) + v17 + ((v15 + v16) & ~v16)) & ~(v18 | 7)) + ((v23 + v24) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v21 < a3)
  {
    if ((((v18 | 7) + v17 + ((v15 + v16) & ~v16)) & ~(v18 | 7)) + ((v23 + v24) & 0xFFFFFFF8) == -24)
    {
      v27 = a3 - v21 + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v12 = v28;
    }

    else
    {
      v12 = 0;
    }
  }

  v29 = a2;
  if (a2 > v21)
  {
    if (v26)
    {
      v30 = 1;
    }

    else
    {
      v30 = a2 - v21;
    }

    if (v26)
    {
      v31 = ~v21 + a2;
      bzero(a1, v26);
      *a1 = v31;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(a1 + v26) = v30;
      }

      else
      {
        *(a1 + v26) = v30;
      }
    }

    else if (v12)
    {
      *(a1 + v26) = v30;
    }

    return;
  }

  v32 = a1;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v26) = 0;
  }

  else if (v12)
  {
    *(a1 + v26) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v7 == v21)
  {
    v33 = v47;
    v34 = *(v46 + 56);
    v35 = a2;
    v36 = v7;

LABEL_49:
    v34(v32, v35, v36, v33);
    return;
  }

  v32 = ((a1 + v15 + v16) & ~v16);
  if (v9 == v21)
  {
    v34 = *(v8 + 56);
    v35 = a2;
    v36 = v9;
    v33 = v45;

    goto LABEL_49;
  }

  v37 = ((v32 + v17 + v22) & ~v22);
  if (v20 >= v29)
  {
    v39 = ((v37 + v18 + 99) & ~v18);
    if (v19 < 0x7FFFFFFF)
    {
      v43 = &v39[v24] & 0xFFFFFFFFFFFFFFF8;
      if ((v29 & 0x80000000) != 0)
      {
        *(v43 + 8) = v29 & 0x7FFFFFFF;
        *(v43 + 16) = 0;
      }

      else
      {
        *(v43 + 8) = v29 - 1;
        *(v43 + 16) = 1;
      }
    }

    else if (v19 >= v29)
    {
      v44 = *(v13 + 56);

      v44(v39, v29 + 1);
    }

    else
    {
      if (v24 <= 3)
      {
        v40 = ~(-1 << (8 * v24));
      }

      else
      {
        v40 = -1;
      }

      if (v24)
      {
        v41 = v40 & (~v19 + v29);
        if (v24 <= 3)
        {
          v42 = v24;
        }

        else
        {
          v42 = 4;
        }

        bzero(v39, v24);
        if (v42 > 2)
        {
          if (v42 == 3)
          {
            *v39 = v41;
            v39[2] = BYTE2(v41);
          }

          else
          {
            *v39 = v41;
          }
        }

        else if (v42 == 1)
        {
          *v39 = v41;
        }

        else
        {
          *v39 = v41;
        }
      }
    }
  }

  else if ((v25 & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v38 = ~v20 + v29;
    bzero(((v32 + v17 + v22) & ~v22), (v25 & 0xFFFFFFF8) + 24);
    *v37 = v38;
  }
}

uint64_t specialized UIHostingContentView._configuration.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x710);
  v12[2] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x700);
  v12[3] = v5;
  v6 = type metadata accessor for UIHostingConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v10 = *((v4 & v3) + 0x728);
  swift_beginAccess();
  (*(v7 + 16))(v9, &v1[v10], v6);
  swift_beginAccess();
  (*(v7 + 24))(&v1[v10], a1, v6);
  swift_endAccess();
  UIHostingContentView._configuration.didset(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t assignWithCopy for UIHostingConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40);
  v14 = type metadata accessor for UICellConfigurationState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (v16 | 7) + v13;
  v18 = (v17 + v11) & ~(v16 | 7);
  v19 = (v17 + v12) & ~(v16 | 7);
  *v18 = *v19;
  LOBYTE(v17) = *(v19 + 0x10);
  *(v18 + 8) = *(v19 + 8);
  *(v18 + 16) = v17;
  LOBYTE(v17) = *(v19 + 32);
  *(v18 + 24) = *(v19 + 24);
  *(v18 + 32) = v17;
  LOBYTE(v17) = *(v19 + 48);
  *(v18 + 40) = *(v19 + 40);
  *(v18 + 48) = v17;
  LOBYTE(v17) = *(v19 + 64);
  *(v18 + 56) = *(v19 + 56);
  *(v18 + 64) = v17;
  LOBYTE(v17) = *(v19 + 80);
  *(v18 + 72) = *(v19 + 72);
  *(v18 + 80) = v17;
  LOBYTE(v17) = *(v19 + 96);
  *(v18 + 88) = *(v19 + 88);
  *(v18 + 96) = v17;
  *(v18 + 97) = *(v19 + 97);
  *(v18 + 98) = *(v19 + 98);
  v20 = ((v16 + 99 + v18) & ~v16);
  v21 = ((v16 + 99 + v19) & ~v16);
  v22 = *(v15 + 48);
  LODWORD(v13) = v22(v20, 1, v14);
  v23 = v22(v21, 1, v14);
  if (v13)
  {
    if (!v23)
    {
      (*(v15 + 16))(v20, v21, v14);
      (*(v15 + 56))(v20, 0, 1, v14);
      goto LABEL_12;
    }

    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
  }

  else
  {
    if (!v23)
    {
      (*(v15 + 24))(v20, v21, v14);
      goto LABEL_12;
    }

    (*(v15 + 8))(v20, v14);
    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  memcpy(v20, v21, v26);
LABEL_12:
  if (*(v15 + 84))
  {
    v27 = *(v15 + 64);
  }

  else
  {
    v27 = *(v15 + 64) + 1;
  }

  v28 = &v20[v27];
  v29 = &v21[v27];
  *v28 = *v29;
  v30 = v28 & 0xFFFFFFFFFFFFFFF8;
  v31 = v29 & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectWeakCopyAssign();
  *(v30 + 16) = *(v31 + 16);
  return a1;
}

void type metadata accessor for WeakBox<UIButton>()
{
  if (!lazy cache variable for type metadata for WeakBox<UIButton>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIButton);
    v0 = type metadata accessor for WeakBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WeakBox<UIButton>);
    }
  }
}

void @objc UIHostingContentView.layoutMarginsDidChange()(void *a1)
{
  v1 = a1;
  UIHostingContentView.layoutMarginsDidChange()();
}

uint64_t UIHostingContentView.layoutMarginsDidChange()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x700);
  v9 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x710);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for UIHostingContentView();
  objc_msgSendSuper2(&v10, sel_layoutMarginsDidChange, v8, v9);
  v3 = _UIHostingView.base.getter();
  UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();

  v4 = *(v1 + *((*v2 & *v1) + 0x738));
  if (v4)
  {
    v5 = v4;
    v6 = _UIHostingView.base.getter();

    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }

  return UIHostingContentView.updateHostedViews()();
}

uint64_t UIHostingContentView.configuration.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x710);
  v19[0] = *((*MEMORY[0x1E69E7D40] & *v1) + 0x700);
  v19[1] = v3;
  v4 = type metadata accessor for UIHostingConfiguration();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  outlined init with copy of _Benchmark(a1, v19);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for UIContentConfiguration);
  v16 = swift_dynamicCast();
  v17 = *(v9 + 56);
  if (v16)
  {
    v17(v8, 0, 1, v4);
    (*(v9 + 32))(v15, v8, v4);
    specialized UIHostingContentView._configuration.setter(v15);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v9 + 8))(v15, v4);
  }

  else
  {
    v17(v8, 1, 1, v4);
    (*(v6 + 8))(v8, v5);
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(256);
    MEMORY[0x18D00C9B0](0xD0000000000000DELL, 0x800000018CD4C840);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD4C920);
    UIHostingContentView._configuration.getter(v12);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    (*(v9 + 8))(v12, v4);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t UIHostingContentView._configuration.didset(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for UICellConfigurationState();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (UICellConfigurationState?, UICellConfigurationState?)();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICellConfigurationState?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = *((v5 & v4) + 0x700);
  v21 = *((v5 & v4) + 0x708);
  v22 = *((v5 & v4) + 0x718);
  v41 = *((v5 & v4) + 0x710);
  v42 = v20;
  v47 = v20;
  v48 = v21;
  v43 = v22;
  v44 = v21;
  v49 = v41;
  v50 = v22;
  v23 = type metadata accessor for UIHostingConfiguration();
  v24 = *(v23 + 56);
  v25 = type metadata accessor for UIHostingConfigurationStorage(0);
  outlined init with copy of UIHostingConfigurationStorage(a1 + *(v25 + 36) + v24, v19, type metadata accessor for UICellConfigurationState?);
  v26 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x728);
  swift_beginAccess();
  outlined init with copy of UIHostingConfigurationStorage(&v26[*(v23 + 56) + *(v25 + 36)], v16, type metadata accessor for UICellConfigurationState?);
  v27 = *(v9 + 56);
  outlined init with copy of UIHostingConfigurationStorage(v19, v11, type metadata accessor for UICellConfigurationState?);
  v28 = v45;
  outlined init with copy of UIHostingConfigurationStorage(v16, &v11[v27], type metadata accessor for UICellConfigurationState?);
  v29 = *(v28 + 48);
  if (v29(v11, 1, v6) == 1)
  {
    outlined destroy of UIHostingConfigurationStorage(v16, type metadata accessor for UICellConfigurationState?);
    outlined destroy of UIHostingConfigurationStorage(v19, type metadata accessor for UICellConfigurationState?);
    if (v29(&v11[v27], 1, v6) == 1)
    {
      outlined destroy of UIHostingConfigurationStorage(v11, type metadata accessor for UICellConfigurationState?);
      return UIHostingContentView.updateHostedViews()();
    }
  }

  else
  {
    outlined init with copy of UIHostingConfigurationStorage(v11, v46, type metadata accessor for UICellConfigurationState?);
    if (v29(&v11[v27], 1, v6) != 1)
    {
      v34 = &v11[v27];
      v35 = v40;
      (*(v28 + 32))(v40, v34, v6);
      lazy protocol witness table accessor for type HostingContentViewRootModifier and conformance HostingContentViewRootModifier(&lazy protocol witness table cache variable for type UICellConfigurationState and conformance UICellConfigurationState, MEMORY[0x1E69DC0B8]);
      v36 = v46;
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v28 + 8);
      v38(v35, v6);
      outlined destroy of UIHostingConfigurationStorage(v16, type metadata accessor for UICellConfigurationState?);
      outlined destroy of UIHostingConfigurationStorage(v19, type metadata accessor for UICellConfigurationState?);
      v38(v36, v6);
      outlined destroy of UIHostingConfigurationStorage(v11, type metadata accessor for UICellConfigurationState?);
      v31 = v43;
      v30 = v44;
      if (v37)
      {
        return UIHostingContentView.updateHostedViews()();
      }

      goto LABEL_7;
    }

    outlined destroy of UIHostingConfigurationStorage(v16, type metadata accessor for UICellConfigurationState?);
    outlined destroy of UIHostingConfigurationStorage(v19, type metadata accessor for UICellConfigurationState?);
    (*(v28 + 8))(v46, v6);
  }

  outlined destroy of UIHostingConfigurationStorage(v11, type metadata accessor for (UICellConfigurationState?, UICellConfigurationState?));
  v31 = v43;
  v30 = v44;
LABEL_7:
  v47 = v42;
  v48 = v30;
  v49 = v41;
  v50 = v31;
  type metadata accessor for UIHostingContentView();
  swift_getWitnessTable();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  v32 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x738));
  if (v32)
  {
    type metadata accessor for _UIHostingView();
    v33 = v32;
    swift_getWitnessTable();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  return UIHostingContentView.updateHostedViews()();
}

void type metadata accessor for (UICellConfigurationState?, UICellConfigurationState?)()
{
  if (!lazy cache variable for type metadata for (UICellConfigurationState?, UICellConfigurationState?))
  {
    type metadata accessor for UICellConfigurationState?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UICellConfigurationState?, UICellConfigurationState?));
    }
  }
}

void UIHostingContentView.updateBackgroundHostIfNeeded(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v26 = a2;
  v27 = a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x708);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v26 - v6;
  v28 = *((v9 & v8) + 0x700);
  v29 = v4;
  v30 = *(v10 + 1808);
  v11 = type metadata accessor for UIHostingConfiguration();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  UIHostingContentView._configuration.getter(&v26 - v13);
  v15 = v14[*(v11 + 56)];
  v16 = *(v12 + 8);
  v16(v14, v11);
  v17 = *((*v3 & *v2) + 0x738);
  v18 = *(v2 + v17);
  if (v15 == 1)
  {
    if (v18)
    {
      UIHostingContentView._configuration.getter(v14);
      (*(v5 + 16))(v7, &v14[*(v11 + 52)], v4);
      v19 = v18;
      v16(v14, v11);
      specialized _UIHostingView.rootView.setter(v7);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v22 = UIHostingContentView.makeBackgroundHost()();
      v23 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x738);
      v24 = *(v2 + v23);
      *(v2 + v23) = v22;

      if (v27)
      {
        v27(v25);
      }
    }
  }

  else
  {
    v20 = v27;
    if (v18)
    {
      *(v2 + v17) = 0;

      if (v20)
      {
        v20(v21);
      }
    }
  }
}

uint64_t static SwiftUITextAccessibilityProvider.makeView(content:text:resolved:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a1 + 8);
  v26 = *a1;
  v14 = *(a1 + 16);
  swift_beginAccess();
  v15 = *(a6 + 128);
  v48 = *(a6 + 112);
  v49 = v15;
  v50 = *(a6 + 144);
  v51 = *(a6 + 160);
  v16 = *(a6 + 64);
  v44 = *(a6 + 48);
  v45 = v16;
  v17 = *(a6 + 96);
  v46 = *(a6 + 80);
  v47 = v17;
  v18 = *(a6 + 32);
  v42 = *(a6 + 16);
  v43 = v18;
  outlined init with copy of TextLayoutProperties(&v42, &v52);
  v19 = ResolvedStyledText.isDynamic.getter();
  v20 = ResolvedStyledText.isEmpty.getter();
  a4 &= 1u;
  LOBYTE(v27[0]) = a4;
  v60 = v48;
  v61 = v49;
  *v62 = v50;
  v62[16] = v51;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  v54 = v42;
  v55 = v43;
  *&v52 = a2;
  *(&v52 + 1) = a3;
  LOBYTE(v53) = a4;
  *(&v53 + 1) = a5;
  v62[17] = v19 & 1;
  v62[18] = v20 & 1;
  v39 = v48;
  v40 = v49;
  v41[0] = v50;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v33 = v42;
  v34 = v43;
  *(v41 + 15) = *&v62[15];
  v31 = v52;
  v32 = v53;
  outlined copy of Text.Storage(a2, a3, a4);

  specialized AccessibilityStaticTextModifier.body(content:)(v26, v13, v14, v27);
  outlined destroy of AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(&v52);
  v21 = v27[1];
  v22 = v28;
  v23 = v29;
  v24 = v30;
  *a7 = v27[0];
  *(a7 + 8) = v21;
  *(a7 + 16) = v22;
  *(a7 + 24) = v23;
  *(a7 + 32) = v24;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  outlined copy of Text.Storage(a2, a3, a4);
}

uint64_t destroy for AccessibilityStaticTextModifier.Configuration(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t specialized AccessibilityStaticTextModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v61);
  _sypSgMaTm_4(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0x128uLL);
  v10 = *(v4 + 3);
  v11 = *(v4 + 177);
  v12 = *(v4 + 178);
  swift_beginAccess();
  if (v12)
  {
    v13 = 0x800000008;
  }

  else
  {
    v13 = 0x100000001;
  }

  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v9 + 16, v13);

  _sypSgMaTm_4(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  v72 = *v4;
  v15 = v72;
  v73 = *(v4 + 16);
  v71 = v10;
  *(v14 + 16) = xmmword_18CD63400;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v4 + 2);
  *(v14 + 56) = v10;
  *(v9 + 40) = v14;
  *(v9 + 48) = 2;
  outlined init with copy of Text.Storage(&v72, __src);
  outlined init with copy of [Text.Modifier](&v71, __src);

  v16 = v4[9];
  v17 = v4[7];
  v46 = v4[8];
  v47 = v16;
  v18 = v4[9];
  v48 = v4[10];
  v19 = v4[5];
  v20 = v4[3];
  v42 = v4[4];
  v43 = v19;
  v21 = v4[5];
  v22 = v4[7];
  v44 = v4[6];
  v45 = v22;
  v23 = v4[3];
  v41[0] = v4[2];
  v41[1] = v23;
  v56 = v46;
  v57 = v18;
  v58 = v4[10];
  v52 = v42;
  v53 = v21;
  v54 = v44;
  v55 = v17;
  v49 = *(v4 + 176);
  v59 = *(v4 + 176);
  v50 = v41[0];
  v51 = v20;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v50, v24, v25, v26);
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  v63 = v52;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  v61 = v50;
  v62 = v51;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v61, v27, v28, v29);
  v30 = *(v9 + 256);
  __src[6] = *(v9 + 240);
  __src[7] = v30;
  __src[8] = *(v9 + 272);
  LOBYTE(__src[9]) = *(v9 + 288);
  v31 = *(v9 + 192);
  __src[2] = *(v9 + 176);
  __src[3] = v31;
  v32 = *(v9 + 224);
  __src[4] = *(v9 + 208);
  __src[5] = v32;
  v33 = *(v9 + 160);
  __src[0] = *(v9 + 144);
  __src[1] = v33;
  v34 = v68;
  *(v9 + 240) = v67;
  *(v9 + 256) = v34;
  *(v9 + 272) = v69;
  *(v9 + 288) = v70;
  v35 = v64;
  *(v9 + 176) = v63;
  *(v9 + 192) = v35;
  v36 = v66;
  *(v9 + 208) = v65;
  *(v9 + 224) = v36;
  v37 = v62;
  *(v9 + 144) = v61;
  *(v9 + 160) = v37;

  outlined init with copy of TextLayoutProperties(v41, &v40);
  _sypSgWOhTm_3(__src, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?, MEMORY[0x1E6980B48]);

  if (v11)
  {
    v38 = 1280;
  }

  else
  {
    v38 = 256;
  }

  result = closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v9 + 16, v38, v38);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v9;
  *(a4 + 32) = 0;
  return result;
}

uint64_t closure #1 in ModifiedContent<>.accessibilityTraits(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 56) & 1) == 0)
  {
    v3 = *(result + 48);
    v4 = *(result + 40) & ~a3;
    v5 = a3 | ~v3;
    a3 |= v3;
    a2 = v5 & a2 | v4;
  }

  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = 0;
  return result;
}

uint64_t closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(uint64_t result, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if ((*(result + 120) & 1) == 0)
  {
    v3 = *(result + 112);
    LODWORD(v2) = HIDWORD(v3) | HIDWORD(a2);
    LODWORD(a2) = (~HIDWORD(v3) | HIDWORD(a2)) & a2 | v3 & ~HIDWORD(a2);
  }

  *(result + 112) = a2 | (v2 << 32);
  *(result + 120) = 0;
  return result;
}

void type metadata accessor for AccessibilityStaticTextModifier<StyledTextContentView>.Configuration(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  return specialized Array.append<A>(contentsOf:)(result);
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 2 * v7 + 32), (v6 + 32), 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 96 * v7 + 32), (v6 + 32), 96 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(result);
}

uint64_t outlined consume of AccessibilityImageLabel?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of AccessibilityImageLabel(a1, a2, a3);
  }

  return a1;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance InspectorStorage.PreferenceKey@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t storeEnumTagSinglePayload for DragItemTimings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 89) = a2 + 2;
    }
  }

  return result;
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

void protocol witness for static PreferenceKey.defaultValue.getter in conformance DragItemTimings.Key(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 513;
}

uint64_t getEnumTagSinglePayload for DragItemTimings(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 90))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 89);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void ContextMenuBridge.preferencesDidChange(_:)()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  LOBYTE(v3) = ViewGraphDelegate.shouldCreateUIInteractions.getter(ObjectType, *(*(v3 + 16) + 8));
  swift_unknownObjectRelease();
  if ((v3 & 1) == 0)
  {
    return;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_20:
    __break(1u);
    return;
  }

  v5 = *(v2 + 8);
  v6 = swift_getObjectType();
  v7 = ViewGraphDelegate.uiView.getter(v6, *(*(v5 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v7)
  {
    return;
  }

  PreferenceValues.subscript.getter();
  PreferenceValues.subscript.getter();
  v8 = OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_hasContextMenuSeed;
  if (v17 != -1)
  {
    v9 = *(v0 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_hasContextMenuSeed);
    if (v9 != -1 && v17 == v9)
    {
      v10 = *(v0 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_menuOrderSeed);
      if (v10 != -1 && v17 == v10)
      {

        return;
      }
    }
  }

  v11 = OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_interaction;
  v12 = *(v0 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_interaction);
  if (v12)
  {
    if ((v16 & 1) == 0)
    {
      v13 = v12;
      [v13 dismissMenu];
      v14 = v13;
      [v7 removeInteraction_];

      v15 = 0;
LABEL_16:
      v7 = *(v1 + v11);
      *(v1 + v11) = v15;
    }
  }

  else if (v16)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
    [v7 swiftui:v15 addManagedInteraction:?];

    goto LABEL_16;
  }

  *(v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_menuOrder) = v16;
  *(v1 + v8) = v17;
  *(v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_menuOrderSeed) = v17;
}

void DragAndDropBridge.updateDragInteraction(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a2 + 92);
  v7 = v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    return;
  }

  v8 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v21 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v8 + 16) + 8));
  swift_unknownObjectRelease();
  if (v21)
  {
    v10 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_hasDragItemsSeed;
    if (v5 != -1)
    {
      v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_hasDragItemsSeed);
      if (v11 != -1 && v5 == v11)
      {
LABEL_15:
        v16 = *(v3 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragInteraction);
        if (v16 && ((v17 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragTimingsSeed, v6 == -1) || ((v18 = *(v3 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragTimingsSeed), v18 != -1) ? (v19 = v6 == v18) : (v19 = 0), !v19)))
        {
          v20 = v16;
          DragItemTimings.apply(to:)(v20);

          *(v3 + v17) = v6;
        }

        else
        {
        }

        return;
      }
    }

    v13 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragInteraction;
    if (*(v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dragInteraction))
    {
      if ((v4 & 1) == 0)
      {
        [v21 removeInteraction_];
        v14 = 0;
LABEL_13:
        v15 = *(v3 + v13);
        *(v3 + v13) = v14;
      }
    }

    else if (v4)
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E69DC988]) initWithDelegate_];
      [v14 setEnabled_];
      [v21 swiftui:v14 addManagedInteraction:?];
      goto LABEL_13;
    }

    *(v3 + v10) = v5;
    goto LABEL_15;
  }
}

void DragAndDropBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v4) = ViewGraphDelegate.shouldCreateUIInteractions.getter(ObjectType, *(*(v4 + 16) + 8));
    swift_unknownObjectRelease();
    if (v4)
    {
      v18 = v2;
      PreferenceValues.subscript.getter();
      v14[0] = v16;
      v15 = v17;
      v13 = v2;
      PreferenceValues.subscript.getter();
      v6[2] = v9;
      v6[3] = v10;
      v6[4] = v11;
      v6[5] = v12;
      v6[0] = v7;
      v6[1] = v8;
      DragAndDropBridge.updateDragInteraction(_:_:)(v14, v6);
      *&v7 = v2;
      PreferenceValues.subscript.getter();
      LOBYTE(v18) = v6[0];
      HIDWORD(v18) = DWORD1(v6[0]);
      DragAndDropBridge.updateDropInteraction(_:)(&v18);
      *&v7 = v2;
      PreferenceValues.subscript.getter();
      LOBYTE(v18) = v6[0];
      HIDWORD(v18) = DWORD1(v6[0]);
      DragAndDropBridge.updateSpringLoadedInteraction(_:)(&v18);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t UIKitStatusBarBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  v14[0] = v3;

  v5 = VersionSeedSetTracker.hasChanges(in:)(v14, v4);

  if (v5 || (static Semantics.v7.getter(), result = isLinkedOnOrAfter(_:)(), (result & 1) != 0) && (v11 = *(v2 + 17), v11 != 2) && (v12 = v11 & 1, v14[0] = v3, result = PreferenceValues.subscript.getter(), v13 = v15, *(v2 + 17) = v15, v13 != v12))
  {
    v14[0] = v3;
    PreferenceValues.subscript.getter();
    v6 = v15;
    v7 = v15;
    if (v15 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = BYTE1(v15) & 1;
    }

    static Semantics.v7.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) == 0)
    {
      v14[0] = v3;
      PreferenceValues.subscript.getter();
      *(v2 + 17) = v15;
    }

    v9 = v6 & 1;
    if (v7 == 2)
    {
      v9 = 2;
    }

    *(v2 + 16) = v9;
    UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:)(v8, 0);
    v15 = v3;
    swift_beginAccess();
    VersionSeedSetTracker.updateSeeds(to:)();
    return swift_endAccess();
  }

  return result;
}

void DragAndDropBridge.updateDropInteraction(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canDropSeed;
  if (v4 == -1 || v4 != *(v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canDropSeed))
  {
    v6 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v7 + 16) + 8));
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dropInteraction;
      v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_dropInteraction);
      if (v11)
      {
        if ((v3 & 1) == 0)
        {
          v12 = v11;
          [v9 removeInteraction_];

          v13 = 0;
LABEL_10:
          v9 = *(v2 + v10);
          *(v2 + v10) = v13;
        }
      }

      else if (v3)
      {
        v13 = [objc_allocWithZone(MEMORY[0x1E69DC9B8]) initWithDelegate_];
        [v9 swiftui:v13 addManagedInteraction:?];

        goto LABEL_10;
      }

      *(v2 + v5) = v4;
    }
  }
}

void DragAndDropBridge.updateSpringLoadedInteraction(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canSpringLoadSeed;
  if (v4 == -1 || v4 != *&v1[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_canSpringLoadSeed])
  {
    v6 = &v1[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host];
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v9 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v7 + 16) + 8));
    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_springLoadedInteraction;
      v11 = *&v2[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_springLoadedInteraction];
      if (v11)
      {
        if ((v3 & 1) == 0)
        {
          v12 = v11;
          [v9 removeInteraction_];

          v13 = *&v2[v10];
          *&v2[v10] = 0;

LABEL_11:
          *&v2[v5] = v4;
          return;
        }
      }

      else if (v3)
      {
        v14 = type metadata accessor for DragAndDropBridge.SpringLoadedBehavior();
        v15 = objc_allocWithZone(v14);
        swift_unknownObjectWeakInit();
        v28 = OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge20SpringLoadedBehavior_base;
        v16 = objc_opt_self();
        v17 = v2;
        *&v15[v28] = [v16 _defaultInteractionBehavior];
        swift_unknownObjectWeakAssign();
        v31.receiver = v15;
        v31.super_class = v14;
        v18 = objc_msgSendSuper2(&v31, sel_init);

        v19 = type metadata accessor for DragAndDropBridge.SpringLoadedEffect();
        v20 = objc_allocWithZone(v19);
        swift_unknownObjectWeakInit();
        *&v20[OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_blinkTimer] = 0;
        v20[OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_previousHighlightState] = 0;
        swift_unknownObjectWeakAssign();
        v30.receiver = v20;
        v30.super_class = v19;
        v21 = objc_msgSendSuper2(&v30, sel_init);
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = objc_allocWithZone(MEMORY[0x1E69DCF80]);
        aBlock[4] = partial apply for closure #1 in DragAndDropBridge.updateSpringLoadedInteraction(_:);
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UISpringLoadedInteraction, @guaranteed UISpringLoadedInteractionContext) -> ();
        aBlock[3] = &block_descriptor_96;
        v24 = _Block_copy(aBlock);

        v25 = [v23 initWithInteractionBehavior:v18 interactionEffect:v21 activationHandler:v24];

        _Block_release(v24);

        v26 = v25;
        [v9 swiftui:v26 addManagedInteraction:?];

        v27 = *&v2[v10];
        *&v2[v10] = v26;

        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_18BD72364()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t FocusViewGraph.needsUpdate(graph:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[16];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(a1 + 208);
    ObjectType = swift_getObjectType();
    v7 = ViewGraphDelegate.uiView.getter(ObjectType, v5);
    swift_unknownObjectRelease();
    if (v7)
    {
      type metadata accessor for UIFocusSystem();
      v8 = v7;
      v9 = static UIFocusSystem.focusSystem(for:)();

      if (v9)
      {
      }

      v2[18] = ((v9 != 0) ^ v2[17]) & 1;
      v2[17] = v9 != 0;
    }
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v2[18];
  }
}

uint64_t PlatformItemListViewGraph.needsUpdate(graph:)(uint64_t a1)
{
  if (*(v1 + 9))
  {
    return 1;
  }

  if (*(v1 + 8) != 1)
  {
    return 0;
  }

  swift_beginAccess();
  if ((*(a1 + 361) & 2) == 0)
  {
    return 0;
  }

  result = AGGraphGetWeakValue();
  if (result)
  {
    result = v4 & 1;
    *(v1 + 9) = v4 & 1;
  }

  return result;
}

uint64_t AccessibilityViewGraph.needsUpdate(graph:)(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 360) != 1)
  {
    return 0;
  }

  swift_beginAccess();
  v3 = *(a1 + 361);
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_27;
  }

  if ((*(v1 + 45) & 1) == 0)
  {
    if (!ViewGraph.parentHost.getter())
    {
      GraphHost.addPreference<A>(_:)();
      result = 1;
      *(v1 + 45) = 1;
      return result;
    }
  }

  if (!AGGraphGetWeakValue())
  {
    goto LABEL_27;
  }

  PreferenceValues.subscript.getter();
  v4 = *(v1 + 48);
  v5 = *(v23 + 16);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_26;
  }

  if (v5 == 1)
  {
    v6 = 0;
    v7 = 0;
LABEL_22:
    v16 = v5 - v7;
    v17 = (v23 + 56 * v7 + 32);
    do
    {
      v19 = *v17;
      v17 += 7;
      v18 = v19;
      if (v19 > v6)
      {
        v6 = v18;
      }

      --v16;
    }

    while (v16);
    goto LABEL_26;
  }

  v9 = 0;
  v10 = 0;
  v7 = v5 & 0x7FFFFFFFFFFFFFFELL;
  v11 = (v23 + 88);
  v12 = v5 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v13 = *(v11 - 7);
    v15 = *v11;
    v11 += 14;
    v14 = v15;
    if (v13 > v9)
    {
      v9 = v13;
    }

    if (v14 > v10)
    {
      v10 = v14;
    }

    v12 -= 2;
  }

  while (v12);
  if (v9 <= v10)
  {
    v6 = v10;
  }

  else
  {
    v6 = v9;
  }

  if (v5 != v7)
  {
    goto LABEL_22;
  }

LABEL_26:

  if (v4 != v6)
  {
    return 1;
  }

LABEL_27:
  if (*(v1 + 24) != 1 || (WeakValue = AGGraphGetWeakValue()) == 0)
  {
    if ((v3 & 0x20) != 0)
    {
      return *(v1 + 44);
    }

    return 0;
  }

  v21 = *(WeakValue + 8);
  v22 = *(v1 + 16);
  result = v22 != v21;
  if ((v3 & 0x20) != 0 && v22 == v21)
  {
    return *(v1 + 44);
  }

  return result;
}

uint64_t PreferenceValues.seed<A>(for:)@<X0>(_DWORD *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for PreferenceValues.Value();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  v8[1] = *v1;
  PreferenceValues.subscript.getter();
  *a1 = *&v6[*(v3 + 28)];
  return (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall _UIHostingView.preferencesDidChange()()
{
  v1 = v0;
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  _UIHostingView.viewGraph.getter();
  GraphHost.preferenceValues()();

  v3 = v37;
  v4 = _UIHostingView.viewController.getter();
  if (v4)
  {
    v5 = v4;
    UIHostingController.preferencesDidChange(_:)(&v37);
  }

  *&v37 = v3;
  DragAndDropBridge.preferencesDidChange(_:)(&v37);
  v6 = specialized _UIHostingView.pointerBridge.getter();
  if (v6)
  {
    *&v37 = v3;
    v7 = v6;
    PointerBridge.preferencesDidChange(_:)();
  }

  v8 = specialized _UIHostingView.contextMenuBridge.getter();
  *&v37 = v3;
  v9 = v8;
  ContextMenuBridge.preferencesDidChange(_:)();

  specialized _UIHostingView.statusBarBridge.getter();
  *&v37 = v3;

  UIKitStatusBarBridge.preferencesDidChange(_:)(&v37);

  if (_UIHostingView.sceneBridge.getter())
  {
    *&v37 = v3;
    SceneBridge.preferencesDidChange(_:)(&v37);
  }

  v10 = specialized _UIHostingView.scenePresentationBridge.getter();
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();
    *&v45[0] = v3;

    PreferenceValues.subscript.getter();
    v12 = *(v11 + 16);
    if (v12 == -1 || DWORD2(v39) == -1 || v12 != DWORD2(v39))
    {
      *(v11 + 16) = DWORD2(v39);
      closure #1 in ScenePresentationBridge.preferencesDidChange(_:)(&v37, v11);
    }

    outlined destroy of PreferenceValues.Value<AnyHashable?>(&v37, &lazy cache variable for type metadata for PreferenceValues.Value<AnyHashable?>, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    swift_endAccess();
  }

  specialized DeprecatedAlertBridge.preferencesDidChange(_:)(v3);
  specialized DeprecatedAlertBridge.preferencesDidChange(_:)(v3);
  v13 = specialized _UIHostingView.popoverBridge.getter();
  if (v13)
  {
    *&v37 = v3;
    v14 = v13;
    UIKitPopoverBridge.preferencesDidChange(_:)(&v37);
  }

  v15 = specialized _UIHostingView.editMenuBridge.getter();
  *&v37 = v3;
  v16 = v15;
  EditMenuBridge.preferencesDidChange(_:)(&v37);

  v17 = _UIHostingView.sheetBridge.getter();
  if (v17)
  {
    v18 = v17;
    specialized SheetBridge.preferencesDidChange(_:)(v3, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, &unk_1EFFA0980, &unk_1EFFA09D0, &unk_1EFFA09F8, partial apply for specialized closure #1 in SheetBridge.dismissAndPresentAgain(preference:presented:animated:hasNoModifier:presenter:), partial apply for closure #2 in SheetBridge.dismissAndPresentAgain(preference:presented:animated:hasNoModifier:presenter:), &unk_1EFFA09A8, partial apply for specialized closure #6 in SheetBridge.preferencesDidChange(_:), partial apply for closure #3 in SheetBridge.preferencesDidChange(_:));
  }

  specialized _UIHostingView.focusBridge.getter();
  *&v37 = v3;

  FocusBridge.preferencesDidChange(_:)();

  if (specialized _UIHostingView.sharingActivityPickerBridge.getter())
  {
    *&v37 = v3;

    SharingActivityPickerBridge.preferencesDidChange(_:)(&v37);
  }

  v19 = specialized _UIHostingView.shareConfigurationBridge.getter();
  if (v19)
  {
    v20 = v19;
    swift_beginAccess();
    *&v31 = v3;
    swift_retain_n();
    PreferenceValues.subscript.getter();
    v21 = *(v20 + 32);
    if (v21 == -1 || *&v42[24] == -1 || v21 != *&v42[24])
    {
      *(v20 + 32) = *&v42[24];
      v45[0] = v37;
      v45[1] = v38;
      v45[4] = v41;
      v45[5] = *v42;
      v46 = *&v42[16];
      v45[2] = v39;
      v45[3] = v40;
      outlined init with copy of AnyShareConfiguration?(v45, &v31, &lazy cache variable for type metadata for AnyShareConfiguration?, &type metadata for AnyShareConfiguration);
      ShareConfigurationBridge.shareConfigurationDidChange(_:)(v45);
      _ss11AnyHashableVSgWOhTm_1(v45, &lazy cache variable for type metadata for AnyShareConfiguration?, &type metadata for AnyShareConfiguration, MEMORY[0x1E69E6720]);
      v35 = v41;
      v36[0] = *v42;
      *(v36 + 12) = *&v42[12];
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v34 = v40;
    }

    else
    {
      v35 = v41;
      v36[0] = *v42;
      *(v36 + 12) = *&v42[12];
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v34 = v40;
    }

    outlined destroy of PreferenceValues.Value<AnyHashable?>(&v31, &lazy cache variable for type metadata for PreferenceValues.Value<AnyShareConfiguration?>, &lazy cache variable for type metadata for AnyShareConfiguration?, &type metadata for AnyShareConfiguration);
    swift_endAccess();
  }

  *&v37 = v3;
  UILargeContentViewerInteractionBridge.preferencesDidChange(_:)(&v37);
  v22 = specialized _UIHostingView.avkitCaptureButtonBridge.getter();
  *&v37 = v3;
  v23 = v22;
  AVKitCaptureButtonBridge.preferencesDidChange(_:)();

  v24 = specialized _UIHostingView.tooltipBridge.getter();
  *&v37 = v3;
  v25 = v24;
  PreferenceValues.subscript.getter();
  v43[0] = v31;
  v44 = DWORD1(v31);
  TooltipBridge.updateState(hasTooltip:)(v43);

  v26 = specialized _UIHostingView.pencilEventsBridge.getter();
  *&v37 = v3;
  v27 = v26;
  PreferenceValues.subscript.getter();
  v43[0] = v31;
  v44 = DWORD1(v31);
  PencilEventsBridge.updateState(wantsPencilEvents:)(v43);

  if (_UIHostingView.delegate.getter())
  {
    v29 = v28;
    ObjectType = swift_getObjectType();
    *&v37 = v3;
    (*(v29 + 40))(v1, &v37, *(v2 + 80), *(v2 + 88), ObjectType, v29);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_18BD72EEC()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

BOOL VersionSeedSetTracker.hasChanges(in:)(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 48);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    PreferenceValues.seed<A>(for:)(&v6);
    if (v4 == -1)
    {
      break;
    }

    if (v6 == -1)
    {
      break;
    }

    v2 += 6;
  }

  while (v4 == v6);
  return v3 != 0;
}

Swift::Void __swiftcall _UIHostingView.didRender()()
{
  v0 = _UIHostingView.viewController.getter();
  if (v0)
  {
    v1 = v0;
    UIHostingController.didRender()();
  }
}

void TooltipBridge.updateState(hasTooltip:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = OBJC_IVAR____TtC7SwiftUI13TooltipBridge_hasTooltipSeed;
  if (v4 == -1 || v4 != *(v1 + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_hasTooltipSeed))
  {
    v6 = v1 + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v9 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v7 + 16) + 8));
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = OBJC_IVAR____TtC7SwiftUI13TooltipBridge_tooltipInteraction;
        v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_tooltipInteraction);
        if (((v11 == 0) & v3) == 1)
        {
          v12 = [objc_allocWithZone(MEMORY[0x1E69DD178]) init];
          [v12 setDelegate_];
          v13 = v12;
          [v9 swiftui:v13 addManagedInteraction:?];
        }

        else
        {
          if ((v11 == 0) | v3 & 1)
          {
LABEL_10:

            *(v2 + v5) = v4;
            return;
          }

          v14 = v11;
          [v9 removeInteraction_];

          v13 = 0;
        }

        v9 = *(v2 + v10);
        *(v2 + v10) = v13;
        goto LABEL_10;
      }
    }
  }
}

void specialized DeprecatedAlertBridge.preferencesDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  *&v103 = a1;
  PreferenceValues.subscript.getter();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v5 = *(v1 + v4);
  if (v5 == -1 || v123 == -1 || v5 != v123)
  {
    v8 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      goto LABEL_62;
    }

    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = ViewGraphDelegate.uiPresenterViewController.getter(ObjectType, *(*(v9 + 16) + 8));
    swift_unknownObjectRelease();
    if (v11)
    {
      v12 = *((*v3 & *v1) + 0x90);
      if (*(v1 + v12))
      {
        outlined destroy of PreferenceValues.Value<AnyHashable?>(&v112, &lazy cache variable for type metadata for PreferenceValues.Value<ActionSheet.Presentation?>, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);

        return;
      }

      *(v1 + v4) = v123;
      v13 = *v1;
      v14 = (*v3 & *v1);
      v15 = v14[15];
      v16 = *(v2 + v15);
      if (v16)
      {
        v83 = *((*v3 & v13) + 0x78);
        v17 = v14[17];
        swift_beginAccess();
        outlined init with copy of AnyShareConfiguration?(v2 + v17, &v103, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
        if (*(&v104 + 1))
        {
          outlined init with copy of ActionSheet.Presentation(&v103, &v92);
          v18 = v16;
          _ss11AnyHashableVSgWOhTm_1(&v103, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
          outlined init with copy of AnyShareConfiguration?(&v98, &aBlock, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          outlined destroy of ActionSheet.Presentation(&v92);
        }

        else
        {
          v32 = v16;
          _ss11AnyHashableVSgWOhTm_1(&v103, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
          aBlock = 0u;
          v89 = 0u;
          v90 = 0;
        }

        outlined init with copy of AnyShareConfiguration?(&v112, &v103, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
        if (*(&v104 + 1))
        {
          outlined init with copy of AnyShareConfiguration?(&v107, &v92, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          outlined destroy of ActionSheet.Presentation(&v103);
        }

        else
        {
          _ss11AnyHashableVSgWOhTm_1(&v103, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
          v92 = 0u;
          v93 = 0u;
          *&v94 = 0;
        }

        v33 = MEMORY[0x1E69E69B8];
        outlined init with copy of AnyShareConfiguration?(&aBlock, &v103, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
        outlined init with copy of AnyShareConfiguration?(&v92, &v105[8], &lazy cache variable for type metadata for AnyHashable?, v33);
        if (*(&v104 + 1))
        {
          outlined init with copy of AnyShareConfiguration?(&v103, v87, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          if (*&v105[32])
          {
            v85[0] = *&v105[8];
            v85[1] = *&v105[24];
            v86 = *&v105[40];
            v34 = MEMORY[0x18D00E7E0](v87, v85);
            outlined destroy of AnyHashable(v85);
            v35 = MEMORY[0x1E69E69B8];
            v36 = MEMORY[0x1E69E6720];
            _ss11AnyHashableVSgWOhTm_1(&v92, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
            _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v35, v36);
            outlined destroy of AnyHashable(v87);
            _ss11AnyHashableVSgWOhTm_1(&v103, &lazy cache variable for type metadata for AnyHashable?, v35, v36);
            if ((v34 & 1) == 0)
            {
LABEL_37:
              v43 = outlined init with copy of AnyShareConfiguration?(&v112, &v92, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
              if (*(&v93 + 1))
              {
                v109 = v100;
                v110 = v101;
                v111 = v102;
                *&v105[32] = v96;
                v106 = v97;
                v107 = v98;
                v108 = v99;
                v103 = v92;
                v104 = v93;
                *v105 = v94;
                *&v105[16] = v95;
                if (*(&v96 + 1))
                {
                  (*(&v96 + 1))(v43);
                }

                v44 = MEMORY[0x1E69E69B8];
                outlined init with copy of AnyShareConfiguration?(&v107, &v92, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
                v45 = *(&v93 + 1);
                _ss11AnyHashableVSgWOhTm_1(&v92, &lazy cache variable for type metadata for AnyHashable?, v44, MEMORY[0x1E69E6720]);
                if (v45)
                {
                  v46 = 1;
                  *(v2 + v12) = 1;
                  v47 = (v2 + *((*v3 & *v2) + 0x80));
                  v48 = *v47;
                  v49 = v47[1];
                  v50 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  outlined init with copy of ActionSheet.Presentation(&v103, &v92);
                  v51 = swift_allocObject();
                  v52 = v98;
                  *(v51 + 136) = v99;
                  v53 = v101;
                  *(v51 + 152) = v100;
                  *(v51 + 168) = v53;
                  v54 = v94;
                  *(v51 + 72) = v95;
                  v55 = v97;
                  *(v51 + 88) = v96;
                  *(v51 + 104) = v55;
                  *(v51 + 120) = v52;
                  v56 = v93;
                  *(v51 + 24) = v92;
                  *(v51 + 40) = v56;
                  *(v51 + 16) = v16;
                  v57 = v102;
                  *(v51 + 56) = v54;
                  *(v51 + 184) = v57;
                  *(v51 + 192) = v48;
                  *(v51 + 200) = v49;
                  *(v51 + 208) = v50;
                  *(v51 + 216) = v11;
                  v90 = partial apply for specialized closure #1 in DeprecatedAlertBridge.preferencesDidChange(_:);
                  v91 = v51;
                  *&aBlock = MEMORY[0x1E69E9820];
                  *(&aBlock + 1) = 1107296256;
                  *&v89 = thunk for @escaping @callee_guaranteed () -> ();
                  *(&v89 + 1) = &block_descriptor_84;
                  v58 = _Block_copy(&aBlock);

                  v59 = v11;
                  v60 = v16;

                  [v60 dismissViewControllerAnimated:1 completion:v58];
                  _Block_release(v58);

                  outlined destroy of ActionSheet.Presentation(&v103);
                }

                else
                {
                  v65 = (v2 + *((*v3 & *v2) + 0x80));
                  v66 = *v65;
                  v67 = v65[1];

                  specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(&v103, v66, v67, 0);

                  [v16 dismissViewControllerAnimated:1 completion:0];

                  outlined destroy of ActionSheet.Presentation(&v103);
                  v68 = *(v2 + v83);
                  *(v2 + v83) = 0;

                  v46 = 0;
                }

                *(v2 + *((*v3 & *v2) + 0x68)) = v46;
              }

              else
              {

                _ss11AnyHashableVSgWOhTm_1(&v92, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
                v61 = *(v2 + v83);
                *(v2 + v83) = 0;

                *(v2 + *((*v3 & *v2) + 0x68)) = 0;
              }

              goto LABEL_59;
            }

            goto LABEL_33;
          }

          v41 = MEMORY[0x1E69E69B8];
          v42 = MEMORY[0x1E69E6720];
          _ss11AnyHashableVSgWOhTm_1(&v92, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
          _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v41, v42);
          outlined destroy of AnyHashable(v87);
        }

        else
        {
          v37 = MEMORY[0x1E69E6720];
          _ss11AnyHashableVSgWOhTm_1(&v92, &lazy cache variable for type metadata for AnyHashable?, v33, MEMORY[0x1E69E6720]);
          _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v33, v37);
          if (!*&v105[32])
          {
            _ss11AnyHashableVSgWOhTm_1(&v103, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
LABEL_33:
            outlined init with copy of AnyShareConfiguration?(&v112, &v92, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
            if (*(&v93 + 1))
            {
              v109 = v100;
              v110 = v101;
              v111 = v102;
              *&v105[32] = v96;
              v106 = v97;
              v107 = v98;
              v108 = v99;
              v103 = v92;
              v104 = v93;
              *v105 = v94;
              *&v105[16] = v95;
              v38 = (v2 + *((*v3 & *v2) + 0x80));
              v39 = *v38;
              v40 = v38[1];

              specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(&v103, v39, v40, 0);

              outlined destroy of ActionSheet.Presentation(&v103);
            }

            else
            {
              _ss11AnyHashableVSgWOhTm_1(&v92, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
            }

            outlined init with copy of AnyShareConfiguration?(&v112, &v103, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
            v69 = *(&v104 + 1);
            _ss11AnyHashableVSgWOhTm_1(&v103, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
            v70 = *((*v3 & *v2) + 0x68);
            v71 = *(v2 + v70);
            if ((v69 == 0) != v71)
            {
              goto LABEL_58;
            }

            *(v2 + v70) = v71 ^ 1;
            if (v71)
            {
              outlined init with copy of AnyShareConfiguration?(&v112, &v103, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
              if (*(&v104 + 1))
              {
                v72 = *&v105[40];
                outlined copy of AppIntentExecutor?(*&v105[40]);
                v73 = outlined destroy of ActionSheet.Presentation(&v103);
                if (v72)
                {
                  v72(v73);
                  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v72);
                }
              }

              else
              {
                _ss11AnyHashableVSgWOhTm_1(&v103, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
              }

              v80 = *(v2 + v83);
              *(v2 + v83) = 0;

              [v16 dismissViewControllerAnimated:1 completion:0];
              goto LABEL_58;
            }

            v74 = [v16 popoverPresentationController];
            if (!v74)
            {
LABEL_55:
              [v11 presentViewController:v16 animated:1 completion:0];
LABEL_58:

              goto LABEL_59;
            }

            v75 = v74;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v76 = *(v8 + 1);
              v77 = swift_getObjectType();
              v78 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
              (*(*(*(v76 + 16) + 8) + 16))(&v103, v78, v78, v77);
              swift_unknownObjectRelease();
              v79 = v103;
              [v75 setSourceView_];

              goto LABEL_55;
            }

            goto LABEL_63;
          }
        }

        outlined destroy of WeakBox<UIWindowScene>?(&v103, type metadata accessor for (AnyHashable?, AnyHashable?));
        goto LABEL_37;
      }

      v19 = v14[13];
      if (*(v2 + v19))
      {
LABEL_64:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      outlined init with copy of AnyShareConfiguration?(&v112, &v92, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
      if (!*(&v93 + 1))
      {

        _ss11AnyHashableVSgWOhTm_1(&v92, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation, MEMORY[0x1E69E6720]);
        v109 = v120;
        v110 = v121;
        v111 = v122;
        *&v105[32] = v116;
        v106 = v117;
        v107 = v118;
        v108 = v119;
        v103 = v112;
        v104 = v113;
        v62 = *v3 & *v2;
        *v105 = v114;
        *&v105[16] = v115;
        v63 = *(v62 + 136);
        swift_beginAccess();
        v64 = v2 + v63;
LABEL_60:
        outlined assign with take of ActionSheet.Presentation?(&v103, v64, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
        swift_endAccess();
        return;
      }

      v84 = v15;
      v109 = v100;
      v110 = v101;
      v111 = v102;
      *&v105[32] = v96;
      v106 = v97;
      v107 = v98;
      v108 = v99;
      v103 = v92;
      v104 = v93;
      *v105 = v94;
      *&v105[16] = v95;
      type metadata accessor for PlatformAlertController();
      v20 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:0 preferredStyle:*(v2 + *((*v3 & *v2) + 0x98))];
      v21 = (v2 + *((*v3 & *v2) + 0x80));
      v22 = *v21;
      v23 = v21[1];

      v24 = v20;

      specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(&v103, v22, v23, 0);

      v25 = [v24 popoverPresentationController];
      if (!v25)
      {
LABEL_22:
        [v11 presentViewController:v24 animated:1 completion:0];

        outlined destroy of ActionSheet.Presentation(&v103);
        *(v2 + v4) = v123;
        v31 = *(v2 + v84);
        *(v2 + v84) = v24;

        *(v2 + v19) = 1;
LABEL_59:
        v109 = v120;
        v110 = v121;
        v111 = v122;
        *&v105[32] = v116;
        v106 = v117;
        v107 = v118;
        v108 = v119;
        v103 = v112;
        v104 = v113;
        v81 = *v3 & *v2;
        *v105 = v114;
        *&v105[16] = v115;
        v82 = *(v81 + 136);
        swift_beginAccess();
        v64 = v2 + v82;
        goto LABEL_60;
      }

      v26 = v25;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v8 + 1);
        v28 = swift_getObjectType();
        v29 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
        (*(*(*(v27 + 16) + 8) + 16))(&v92, v29, v29, v28);
        swift_unknownObjectRelease();
        v30 = v92;
        [v26 setSourceView_];

        goto LABEL_22;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }
  }

  outlined destroy of PreferenceValues.Value<AnyHashable?>(&v112, &lazy cache variable for type metadata for PreferenceValues.Value<ActionSheet.Presentation?>, &lazy cache variable for type metadata for ActionSheet.Presentation?, &type metadata for ActionSheet.Presentation);
}

{
  v2 = v1;
  __dst[0] = a1;
  PreferenceValues.subscript.getter();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v5 = *(v1 + v4);
  if (v5 == -1 || v87 == -1 || v5 != v87)
  {
    v8 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      goto LABEL_62;
    }

    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v11 = ViewGraphDelegate.uiPresenterViewController.getter(ObjectType, *(*(v9 + 16) + 8));
    swift_unknownObjectRelease();
    if (v11)
    {
      v12 = *((*v3 & *v1) + 0x90);
      if (*(v1 + v12))
      {
        outlined destroy of PreferenceValues.Value<AnyHashable?>(v86, &lazy cache variable for type metadata for PreferenceValues.Value<Alert.Presentation?>, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);

        return;
      }

      *(v1 + v4) = v87;
      v13 = *v1;
      v14 = (*v3 & *v1);
      v15 = v14[15];
      v16 = *(v2 + v15);
      if (v16)
      {
        v75 = *((*v3 & v13) + 0x78);
        v17 = v14[17];
        swift_beginAccess();
        outlined init with copy of AnyShareConfiguration?(v2 + v17, __dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
        if (__dst[3])
        {
          outlined init with copy of Alert.Presentation(__dst, __src);
          v18 = v16;
          _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
          outlined init with copy of AnyShareConfiguration?(&__src[13], &aBlock, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          outlined destroy of Alert.Presentation(__src);
        }

        else
        {
          v32 = v16;
          _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
          aBlock = 0u;
          v81 = 0u;
          v82 = 0;
        }

        outlined init with copy of AnyShareConfiguration?(v86, __dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
        if (__dst[3])
        {
          outlined init with copy of AnyShareConfiguration?(&__dst[26], __src, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          outlined destroy of Alert.Presentation(__dst);
        }

        else
        {
          _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
          memset(__src, 0, 40);
        }

        v33 = MEMORY[0x1E69E69B8];
        outlined init with copy of AnyShareConfiguration?(&aBlock, __dst, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
        outlined init with copy of AnyShareConfiguration?(__src, &__dst[5], &lazy cache variable for type metadata for AnyHashable?, v33);
        if (__dst[3])
        {
          outlined init with copy of AnyShareConfiguration?(__dst, v79, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
          if (__dst[8])
          {
            v77[0] = *&__dst[5];
            v77[1] = *&__dst[7];
            v78 = __dst[9];
            v34 = MEMORY[0x18D00E7E0](v79, v77);
            outlined destroy of AnyHashable(v77);
            v35 = MEMORY[0x1E69E69B8];
            v36 = MEMORY[0x1E69E6720];
            _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
            _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v35, v36);
            outlined destroy of AnyHashable(v79);
            _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for AnyHashable?, v35, v36);
            if ((v34 & 1) == 0)
            {
LABEL_37:
              outlined init with copy of AnyShareConfiguration?(v86, __src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
              if (*(&__src[1] + 1))
              {
                v43 = memcpy(__dst, __src, sizeof(__dst));
                if (__dst[23])
                {
                  (__dst[23])(v43);
                }

                v44 = MEMORY[0x1E69E69B8];
                outlined init with copy of AnyShareConfiguration?(&__dst[26], __src, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
                v45 = *(&__src[1] + 1);
                _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for AnyHashable?, v44, MEMORY[0x1E69E6720]);
                if (v45)
                {
                  v46 = 1;
                  *(v2 + v12) = 1;
                  v47 = (v2 + *((*v3 & *v2) + 0x80));
                  v48 = *v47;
                  v49 = v47[1];
                  v50 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  outlined init with copy of Alert.Presentation(__dst, __src);
                  v51 = swift_allocObject();
                  v51[2] = v16;
                  memcpy(v51 + 3, __src, 0x118uLL);
                  v51[38] = v48;
                  v51[39] = v49;
                  v51[40] = v50;
                  v51[41] = v11;
                  v82 = partial apply for specialized closure #1 in DeprecatedAlertBridge.preferencesDidChange(_:);
                  v83 = v51;
                  *&aBlock = MEMORY[0x1E69E9820];
                  *(&aBlock + 1) = 1107296256;
                  *&v81 = thunk for @escaping @callee_guaranteed () -> ();
                  *(&v81 + 1) = &block_descriptor_93;
                  v52 = _Block_copy(&aBlock);

                  v53 = v11;
                  v54 = v16;

                  [v54 dismissViewControllerAnimated:1 completion:v52];
                  _Block_release(v52);

                  outlined destroy of Alert.Presentation(__dst);
                }

                else
                {
                  v58 = (v2 + *((*v3 & *v2) + 0x80));
                  v59 = *v58;
                  v60 = v58[1];

                  specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(__dst, v59, v60, 0);

                  [v16 dismissViewControllerAnimated:1 completion:0];

                  outlined destroy of Alert.Presentation(__dst);
                  v61 = *(v2 + v75);
                  *(v2 + v75) = 0;

                  v46 = 0;
                }

                *(v2 + *((*v3 & *v2) + 0x68)) = v46;
              }

              else
              {

                _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
                v55 = *(v2 + v75);
                *(v2 + v75) = 0;

                *(v2 + *((*v3 & *v2) + 0x68)) = 0;
              }

              goto LABEL_59;
            }

            goto LABEL_33;
          }

          v41 = MEMORY[0x1E69E69B8];
          v42 = MEMORY[0x1E69E6720];
          _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
          _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v41, v42);
          outlined destroy of AnyHashable(v79);
        }

        else
        {
          v37 = MEMORY[0x1E69E6720];
          _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for AnyHashable?, v33, MEMORY[0x1E69E6720]);
          _ss11AnyHashableVSgWOhTm_1(&aBlock, &lazy cache variable for type metadata for AnyHashable?, v33, v37);
          if (!__dst[8])
          {
            _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
LABEL_33:
            outlined init with copy of AnyShareConfiguration?(v86, __src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
            if (*(&__src[1] + 1))
            {
              memcpy(__dst, __src, sizeof(__dst));
              v38 = (v2 + *((*v3 & *v2) + 0x80));
              v39 = *v38;
              v40 = v38[1];

              specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(__dst, v39, v40, 0);

              outlined destroy of Alert.Presentation(__dst);
            }

            else
            {
              _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
            }

            outlined init with copy of AnyShareConfiguration?(v86, __dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
            v62 = __dst[3];
            _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
            v63 = *((*v3 & *v2) + 0x68);
            v64 = *(v2 + v63);
            if ((v62 == 0) != v64)
            {
              goto LABEL_58;
            }

            *(v2 + v63) = v64 ^ 1;
            if (v64)
            {
              outlined init with copy of AnyShareConfiguration?(v86, __dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
              if (__dst[3])
              {
                v65 = __dst[23];
                outlined copy of AppIntentExecutor?(__dst[23]);
                v66 = outlined destroy of Alert.Presentation(__dst);
                if (v65)
                {
                  v65(v66);
                  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v65);
                }
              }

              else
              {
                _ss11AnyHashableVSgWOhTm_1(__dst, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
              }

              v73 = *(v2 + v75);
              *(v2 + v75) = 0;

              [v16 dismissViewControllerAnimated:1 completion:0];
              goto LABEL_58;
            }

            v67 = [v16 popoverPresentationController];
            if (!v67)
            {
LABEL_55:
              [v11 presentViewController:v16 animated:1 completion:0];
LABEL_58:

              goto LABEL_59;
            }

            v68 = v67;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v69 = *(v8 + 1);
              v70 = swift_getObjectType();
              v71 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
              (*(*(*(v69 + 16) + 8) + 16))(__dst, v71, v71, v70);
              swift_unknownObjectRelease();
              v72 = __dst[0];
              [v68 setSourceView_];

              goto LABEL_55;
            }

            goto LABEL_63;
          }
        }

        outlined destroy of WeakBox<UIWindowScene>?(__dst, type metadata accessor for (AnyHashable?, AnyHashable?));
        goto LABEL_37;
      }

      v19 = v14[13];
      if (*(v2 + v19))
      {
LABEL_64:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      outlined init with copy of AnyShareConfiguration?(v86, __src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
      if (!*(&__src[1] + 1))
      {

        _ss11AnyHashableVSgWOhTm_1(__src, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v86, sizeof(__dst));
        v56 = *((*v3 & *v2) + 0x88);
        swift_beginAccess();
        v57 = v2 + v56;
LABEL_60:
        outlined assign with take of ActionSheet.Presentation?(__dst, v57, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
        swift_endAccess();
        return;
      }

      v76 = v15;
      memcpy(__dst, __src, sizeof(__dst));
      type metadata accessor for PlatformAlertController();
      v20 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:0 message:0 preferredStyle:*(v2 + *((*v3 & *v2) + 0x98))];
      v21 = (v2 + *((*v3 & *v2) + 0x80));
      v22 = *v21;
      v23 = v21[1];

      v24 = v20;

      specialized PlatformAlertController.update<A>(for:with:environmentChanged:)(__dst, v22, v23, 0);

      v25 = [v24 popoverPresentationController];
      if (!v25)
      {
LABEL_22:
        [v11 presentViewController:v24 animated:1 completion:0];

        outlined destroy of Alert.Presentation(__dst);
        *(v2 + v4) = v87;
        v31 = *(v2 + v76);
        *(v2 + v76) = v24;

        *(v2 + v19) = 1;
LABEL_59:
        memcpy(__dst, v86, sizeof(__dst));
        v74 = *((*v3 & *v2) + 0x88);
        swift_beginAccess();
        v57 = v2 + v74;
        goto LABEL_60;
      }

      v26 = v25;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v8 + 1);
        v28 = swift_getObjectType();
        v29 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
        (*(*(*(v27 + 16) + 8) + 16))(__src, v29, v29, v28);
        swift_unknownObjectRelease();
        v30 = *&__src[0];
        [v26 setSourceView_];

        goto LABEL_22;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }
  }

  outlined destroy of PreferenceValues.Value<AnyHashable?>(v86, &lazy cache variable for type metadata for PreferenceValues.Value<Alert.Presentation?>, &lazy cache variable for type metadata for Alert.Presentation?, &type metadata for Alert.Presentation);
}

uint64_t sub_18BD74138()
{
  outlined consume of Text.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  if (*(v0 + 80))
  {
    outlined consume of Text.Storage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 144))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  }

  return swift_deallocObject();
}

void UILargeContentViewerInteractionBridge.preferencesDidChange(_:)(void *a1)
{
  v2 = v1;
  *&v43[0] = *a1;
  PreferenceValues.subscript.getter();
  v3 = v47;
  v4 = OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTreeSeed;
  if (v47 != -1 && v47 == *(v1 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTreeSeed))
  {
    outlined destroy of AccessibilityLargeContentViewItem?(v45, &lazy cache variable for type metadata for PreferenceValues.Value<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E697EA38]);
    return;
  }

  v5 = v1 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree;
  v6 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 208);
  v43[12] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 192);
  v43[13] = v6;
  v43[14] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 224);
  v44 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 240);
  v7 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 144);
  v43[8] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 128);
  v43[9] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 176);
  v43[10] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 160);
  v43[11] = v8;
  v9 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 80);
  v43[4] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 64);
  v43[5] = v9;
  v10 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 112);
  v43[6] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 96);
  v43[7] = v10;
  v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 16);
  v43[0] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree);
  v43[1] = v11;
  v12 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 48);
  v43[2] = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_largeContentViewTree + 32);
  v43[3] = v12;
  v13 = v45[13];
  *(v5 + 192) = v45[12];
  *(v5 + 208) = v13;
  *(v5 + 224) = v45[14];
  *(v5 + 240) = v46;
  v14 = v45[9];
  *(v5 + 128) = v45[8];
  *(v5 + 144) = v14;
  v15 = v45[11];
  *(v5 + 160) = v45[10];
  *(v5 + 176) = v15;
  v16 = v45[5];
  *(v5 + 64) = v45[4];
  *(v5 + 80) = v16;
  v17 = v45[7];
  *(v5 + 96) = v45[6];
  *(v5 + 112) = v17;
  v18 = v45[1];
  *v5 = v45[0];
  *(v5 + 16) = v18;
  v19 = v45[3];
  *(v5 + 32) = v45[2];
  *(v5 + 48) = v19;
  outlined init with copy of AccessibilityLargeContentViewTree(v45, v41);
  outlined destroy of AccessibilityLargeContentViewTree(v43);
  v20 = *(v5 + 208);
  v41[12] = *(v5 + 192);
  v41[13] = v20;
  v41[14] = *(v5 + 224);
  v42 = *(v5 + 240);
  v21 = *(v5 + 144);
  v41[8] = *(v5 + 128);
  v41[9] = v21;
  v22 = *(v5 + 176);
  v41[10] = *(v5 + 160);
  v41[11] = v22;
  v23 = *(v5 + 80);
  v41[4] = *(v5 + 64);
  v41[5] = v23;
  v24 = *(v5 + 112);
  v41[6] = *(v5 + 96);
  v41[7] = v24;
  v25 = *(v5 + 16);
  v41[0] = *v5;
  v41[1] = v25;
  v26 = *(v5 + 48);
  v41[2] = *(v5 + 32);
  v41[3] = v26;
  v27 = AccessibilityLargeContentViewTree.hasValue.getter();
  v28 = OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_interaction;
  v29 = *(v2 + OBJC_IVAR____TtC7SwiftUI37UILargeContentViewerInteractionBridge_interaction);
  if (!v29)
  {
    if (v27)
    {
      v34 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) initWithDelegate_];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v36 = Strong;
        [Strong swiftui:v34 addManagedInteraction:?];

        v37 = *(v2 + v28);
        *(v2 + v28) = v34;
        v38 = v34;

        v39 = [v38 gestureRecognizerForExclusionRelationship];
        if ([v39 delegate])
        {
          objc_opt_self();
          v40 = swift_dynamicCastObjCClass();
          if (!v40)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v40 = 0;
        }

        swift_unknownObjectWeakAssign();

        [v39 setDelegate_];
        [v39 setDelaysTouchesEnded_];
        [v39 setCancelsTouchesInView_];
        outlined destroy of AccessibilityLargeContentViewItem?(v45, &lazy cache variable for type metadata for PreferenceValues.Value<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E697EA38]);

        swift_unknownObjectWeakAssign();
        goto LABEL_16;
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_13:
    outlined destroy of AccessibilityLargeContentViewItem?(v45, &lazy cache variable for type metadata for PreferenceValues.Value<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E697EA38]);
    goto LABEL_16;
  }

  if (v27)
  {
    goto LABEL_13;
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
    __break(1u);
    goto LABEL_19;
  }

  v31 = v30;
  v32 = v29;
  [v31 removeInteraction_];
  outlined destroy of AccessibilityLargeContentViewItem?(v45, &lazy cache variable for type metadata for PreferenceValues.Value<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E697EA38]);

  v33 = *(v2 + v28);
  *(v2 + v28) = 0;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
LABEL_16:
  *(v2 + v4) = v3;
}