void type metadata accessor for _OpacityShapeStyle<AnyShapeStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t type metadata completion function for _BlendModeShapeStyle()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #2 in static ModifiedContent<>._makeCustomHoverEffect(effect:inputs:body:)(_OWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1[3];
  v15[2] = a1[2];
  v15[3] = v11;
  v16[0] = a1[4];
  *(v16 + 12) = *(a1 + 76);
  v12 = a1[1];
  v15[0] = *a1;
  v15[1] = v12;
  v14[1] = a2;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:), a5, v14);
  return (*(a7 + 32))(v14, v15, a3, a4, a5, a7);
}

uint64_t protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance HStackLayout(unsigned int *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4)
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
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA06HStackC0V_Tt2t4B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v80 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v74 = v7;
  v73 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v96 = *a2;
  v97 = v10;
  v98 = *(a2 + 32);
  v11 = v96;
  outlined init with copy of _GraphInputs(&v96, &v88);
  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v83 = DWORD1(v98);
  v75 = a4;
  v78 = v11;
  if ((WORD2(v98) & 0x1000) != 0)
  {
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v82 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v79 = v12;
  if (v80 & 1 | ((v83 & 0x22) != 0) || (v15 = v12, (v82 & 1) != 0))
  {
    v16 = v97;
    swift_beginAccess();
    *&v88 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v88) = v12;
    *&v89[0] = MEMORY[0x1E69E7CC0];
    *(&v89[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v89[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<HStackLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v88) = *(a2 + 72);
    *(&v88 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v92 = *(a2 + 32);
  v93 = v19;
  v94 = *(a2 + 64);
  v95 = *(a2 + 80);
  v20 = *(a2 + 16);
  v90 = *a2;
  v91 = v20;
  DWORD1(v92) = v83 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v93;
    *&v99[0] = v93;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v93;
      }
    }

    *&v88 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v88);
  }

  v26 = v79;
  if (v81 != v79)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, v79);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v90, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v90, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v90, v79);
  }

  v99[2] = v92;
  v99[3] = v93;
  v99[4] = v94;
  v100 = v95;
  v99[0] = v90;
  v99[1] = v91;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v84, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v99);

  v87 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v79;
  }

  if (!((v80 | v82) & 1 | (v81 != v26)))
  {
    outlined destroy of _GraphInputs(&v96);
    v38 = v75;
    goto LABEL_43;
  }

  v77 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v72 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v71 = HIDWORD(v32);
  v65 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v70 = HIDWORD(v34);
  v64 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v69 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v78) == v26)
  {
    LODWORD(v67) = 0;
    v68 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v67 = HIDWORD(v39);
    v68 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v84);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v66 = HIDWORD(v40);
  if ((v80 | v82))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v77;
    *(v43 + 24) = v31;
    *(v43 + 28) = v72;
    *(v43 + 32) = v33;
    *(v43 + 36) = v71;
    *(v43 + 40) = v35;
    *(v43 + 44) = v70;
    *(v43 + 48) = v37;
    *(v43 + 52) = v69;
    *(v43 + 56) = v68;
    *(v43 + 60) = v67;
    *(v43 + 64) = v41;
    *(v43 + 68) = v66;
    *&v88 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v88) = 0;
    v45 = v44;
    v26 = v79;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v81 != v26)
  {
    *(&v89[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v89[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v88 = v46;
    *(v46 + 16) = v77;
    *(v46 + 24) = v31;
    *(v46 + 28) = v72;
    *(v46 + 32) = v33;
    *(v46 + 36) = v71;
    *(v46 + 40) = v35;
    *(v46 + 44) = v70;
    *(v46 + 48) = v37;
    *(v46 + 52) = v69;
    *(v46 + 56) = v68;
    *(v46 + 60) = v67;
    *(v46 + 64) = v41;
    *(v46 + 68) = v66;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v88);
    *&v88 = v74;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v74 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v89[4] + 8, 0, 28);
      *(&v89[3] + 8) = 0u;
      *&v88 = __PAIR64__(v64, v65);
      *(&v88 + 1) = __PAIR64__(v47, DWORD2(v97));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54);
      v56 = swift_endAccess();
      LODWORD(v89[0]) = v55;
      *(v89 + 8) = v96;
      *(&v89[1] + 8) = v97;
      *(&v89[2] + 8) = v98;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v74, v73, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      outlined destroy of ScrollStateRequestTransform(&v88);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v74 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v88 = __PAIR64__(v47, v81);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v84);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v88 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v88) = 0;
        v26 = v79;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v96);
LABEL_41:
  v38 = v75;
  if (v82)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v78);
    v57 = *(a2 + 48);
    v89[1] = *(a2 + 32);
    v89[2] = v57;
    v89[3] = *(a2 + 64);
    LODWORD(v89[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v88 = *a2;
    v89[0] = v58;
    (*(v59 + 8))(&v88, &v84);
  }

LABEL_43:
  if ((v83 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v85 | 0x80;
  }

  else
  {

    v61 = v85;
    v60 = v86;
  }

  v89[1] = v92;
  v89[2] = v93;
  v89[3] = v94;
  LODWORD(v89[4]) = v95;
  v88 = v90;
  v89[0] = v91;
  outlined destroy of _ViewInputs(&v88);

  *v38 = v84;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
  return result;
}

double protocol witness for CoordinateSpaceProtocol.coordinateSpace.getter in conformance LocalCoordinateSpace@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 2;
  return result;
}

uint64_t View.onDisappear(perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[1] = 0;
  v4[2] = a1;
  v4[3] = a2;
  return View.modifier<A>(_:)(v4, a3, &type metadata for _AppearanceActionModifier);
}

uint64_t one-time initialization function for trailing()
{
  if (one-time initialization token for trailing != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.trailing;
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  static Alignment.trailing = v0;
  unk_1ED526120 = static VerticalAlignment.center;
  return result;
}

unint64_t lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset()
{
  result = lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset;
  if (!lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset;
  if (!lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset;
  if (!lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Circle._Inset and conformance Circle._Inset);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DisplayList.BackdropGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext()
{
  result = lazy protocol witness table cache variable for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext;
  if (!lazy protocol witness table cache variable for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext);
  }

  return result;
}

uint64_t static CustomHoverEffect._makeCustomHoverEffect(effect:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v58 = a2[2];
  v59 = v9;
  v60[0] = a2[4];
  *(v60 + 12) = *(a2 + 76);
  v10 = a2[1];
  v56 = *a2;
  v57 = v10;
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(44);

    v21 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v21);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    static DynamicPropertyCache.fields(of:)(a5, &v51);
    v43 = v58;
    v44 = v59;
    v45[0] = v60[0];
    *(v45 + 12) = *(v60 + 12);
    v41 = v56;
    v42 = v57;
    v23 = DWORD1(v52);
    v24 = v8;
    LODWORD(v36) = v8;
    v27 = *(&v51 + 1);
    v28 = v51;
    v46 = v51;
    v26 = v52;
    LOBYTE(v47) = v52;
    DWORD1(v47) = DWORD1(v52);
    outlined init with copy of _CustomHoverEffectInputs(&v56, &v51);
    v11 = type metadata accessor for ModifierBodyAccessor();
    WitnessTable = swift_getWitnessTable();
    BodyAccessor.makeBody(container:inputs:fields:)(v35, &v51, &v36, &v41, &v46, v11, WitnessTable);
    v13 = *(&v51 + 1);
    v22 = v51;
    v14 = v52;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v48 = v43;
    v49 = v44;
    v50[0] = v45[0];
    *(v50 + 12) = *(v45 + 12);
    v46 = v41;
    v47 = v42;
    v38 = v43;
    v39 = v44;
    v40[0] = v45[0];
    *(v40 + 12) = *(v45 + 12);
    v36 = v41;
    v37 = v42;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = *(AssociatedConformanceWitness + 32);
    outlined init with copy of _CustomHoverEffectInputs(&v46, &v51);
    v17(&v31, v35, &v36, a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
    v53 = v38;
    v54 = v39;
    v55[0] = v40[0];
    *(v55 + 12) = *(v40 + 12);
    v51 = v36;
    v52 = v37;
    outlined destroy of _CustomHoverEffectInputs(&v51);
    v18 = v31;
    v19 = v32;
    if (v14)
    {
      v38 = v43;
      v39 = v44;
      v40[0] = v45[0];
      *(v40 + 12) = *(v45 + 12);
      v36 = v41;
      v37 = v42;
      outlined destroy of _CustomHoverEffectInputs(&v36);
    }

    else
    {
      v35[0] = v22;
      v35[1] = v13;
      v30 = v24;
      v31 = v28;
      v32 = v27;
      v33 = v26;
      v34 = v23;
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v30, &v31, a5);
      v38 = v43;
      v39 = v44;
      v40[0] = v45[0];
      *(v40 + 12) = *(v45 + 12);
      v36 = v41;
      v37 = v42;
      outlined destroy of _CustomHoverEffectInputs(&v36);
    }

    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a6 = v18;
    a6[1] = v19;
  }

  return result;
}

{
  return static CustomHoverEffect._makeCustomHoverEffect(effect:inputs:body:)(a1, a2, a3, a4, a5, a6);
}

uint64_t initializeWithCopy for _CustomHoverEffectInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

void ShapeStyle.mapCopiedStyle<A>(in:body:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v13 + 24) == 3)
  {
    (*(v9 + 32))(a1, v8, v9, v10);
    if (*(a1 + 40) == 2)
    {
      v14 = *(a1 + 32);

      a2(v15);
      v16 = AnyShapeStyle.init<A>(_:)(v12, a5);
      outlined consume of _ShapeStyle_Shape.Result(v14, 2u);
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = v16;
      *(a1 + 40) = 2;
    }
  }
}

void type metadata accessor for _BlendModeShapeStyle<AnyShapeStyle>()
{
  if (!lazy cache variable for type metadata for _BlendModeShapeStyle<AnyShapeStyle>)
  {
    v0 = type metadata accessor for _BlendModeShapeStyle();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BlendModeShapeStyle<AnyShapeStyle>);
    }
  }
}

void _BlendModeShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v41 = *(a1 + 8);
  v43 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 <= 2)
  {
    if (*(a1 + 24))
    {
      if (v4 == 1)
      {
        (*(*(a2 + 24) + 32))();
        v46 = *(v2 + *(a2 + 36));
        GraphicsBlendMode.init(_:)(&v46, &v44);
        v7 = v44;
        v8 = v45;
        v9 = *(a1 + 40);
        v39 = a1;
        if (v9 == 1)
        {
          v10 = *(a1 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v11, 1u);
          *(a1 + 32) = 0;
          *(a1 + 40) = 5;
        }

        else
        {
          v10 = MEMORY[0x1E69E7CC0];
        }

        v44 = v10;
        v46 = v3;
        v19 = _ShapeStyle_Pack.indices(of:)(&v46);
        v21 = v20;

        if (v19 == v21)
        {
LABEL_18:
          outlined consume of GraphicsBlendMode(v7, v8);
          v22 = v39;
          outlined consume of _ShapeStyle_Shape.Result(*(v39 + 32), *(v39 + 40));
          *(v39 + 32) = v10;
          *(v22 + 40) = 1;
          return;
        }

        if (v21 < v19)
        {
          goto LABEL_56;
        }

        v3 = v41;
        if (v19 >= v21)
        {
LABEL_57:
          __break(1u);
        }

        else if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_23:
          v42 = v10 + 4;
          v40 = v10;
          while (1)
          {
            if (v19 < 0)
            {
              goto LABEL_54;
            }

            if (v19 >= v10[2])
            {
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            v23 = &v42[16 * v19];
            v24 = *(v23 + 1);
            if (v3 <= v24 && v43 > v24)
            {
              break;
            }

LABEL_25:
            if (++v19 == v21)
            {
              goto LABEL_18;
            }
          }

          if (one-time initialization token for semantic != -1)
          {
            swift_once();
          }

          v26 = static Semantics_v6.semantic;
          if (one-time initialization token for forced != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (byte_1ED53C51C == 1)
          {
            if ((dyld_program_sdk_at_least() & 1) == 0)
            {
LABEL_38:
              v27 = 0;
              v10 = v40;
LABEL_41:
              v28 = v23[13];
              v29 = *(v23 + 112);
              outlined copy of GraphicsBlendMode(v7, v8);
              outlined consume of GraphicsBlendMode?(v28, v29);
              v23[13] = v7;
              *(v23 + 112) = v8;
LABEL_42:
              v30 = v23[15];
              v31 = *(v30 + 2);
              if (v31)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v23[15] = v30;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
                }

                v10 = 0;
                v23[15] = v30;
                v3 = (v30 + 104);
                while (1)
                {
                  if (!v27)
                  {
                    goto LABEL_50;
                  }

                  if (v10 >= *(v30 + 2))
                  {
                    goto LABEL_53;
                  }

                  if (*v3 == 255)
                  {
LABEL_50:
                    outlined copy of GraphicsBlendMode(v7, v8);
                    if (v10 >= *(v30 + 2))
                    {
                      __break(1u);
LABEL_53:
                      __break(1u);
LABEL_54:
                      __break(1u);
                      goto LABEL_55;
                    }

                    v33 = *(v3 - 8);
                    *(v3 - 8) = v7;
                    v34 = *v3;
                    *v3 = v8;
                    outlined consume of GraphicsBlendMode?(v33, v34);
                  }

                  v10 = (v10 + 1);
                  v3 += 80;
                  if (v31 == v10)
                  {
                    v23[15] = v30;
                    v10 = v40;
                    v3 = v41;
                    goto LABEL_25;
                  }
                }
              }

              goto LABEL_25;
            }
          }

          else if (static Semantics.forced < v26)
          {
            goto LABEL_38;
          }

          v27 = 1;
          v10 = v40;
          if (*(v23 + 112) != 255)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        goto LABEL_23;
      }
    }

    else if (*(v2 + *(a2 + 36)))
    {
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      return;
    }

    goto LABEL_12;
  }

  if (v4 == 3)
  {
    MEMORY[0x1EEE9AC00](a1);
    v15 = *(v14 + 24);
    v36 = *(v14 + 16);
    v37 = v15;
    v38 = v2;
    v17 = v16;
    type metadata accessor for _BlendModeShapeStyle<AnyShapeStyle>();
    ShapeStyle.mapCopiedStyle<A>(in:body:)(v17, partial apply for closure #2 in _BlendModeShapeStyle._apply(to:), &v35, v36, v18);
    return;
  }

  if (v4 == 4 || !(v43 | v41 | v3))
  {
LABEL_12:
    v13 = *(*(a2 + 24) + 32);

    v13();
  }
}

uint64_t PreferenceKeys.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = PreferenceKeys._index(of:)(a1);

  v6 = *(v3 + 16);
  if (v4 != v6)
  {
    if (v4 >= v6)
    {
      __break(1u);
    }

    else if (*(v3 + 16 * v4 + 32) == a1)
    {

      return specialized Array.remove(at:)(v4);
    }
  }

  return result;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA20DisableRemoteEffectsV_Ttg5Tm()
{
  swift_beginAccess();
  v0 = static DisableRemoteEffects.cachedValue;
  if (static DisableRemoteEffects.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD770B0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v8, v9);
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD770B0);
      v0 = [v5 BOOLForKey_];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      swift_beginAccess();
      v0 = static DisableRemoteEffects.defaultFeatureValue;
    }

    static DisableRemoteEffects.cachedValue = v0;
  }

  return v0 & 1;
}

uint64_t initializeBufferWithCopyOfBuffer for DisplayList.BackdropGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t initializeWithCopy for HoverEffectContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(v4, *&v16[0]);
  if (!v7 || (v8 = *(v7 + 11), v16[0] = *(v7 + 9), v16[1] = v8, v16[2] = *(v7 + 13), v17 = v7[15], v9 = MEMORY[0x1E69E6720], outlined init with copy of HoverEffectContext?(v16, v15, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720]), v10 = _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018HoverEffectContextD033_B2E20BEC96D7E01EE3D55A38320E6294LLV_Tt1B5(a2, v16), result = outlined destroy of HoverEffectContext?(v16, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, v9), (v10 & 1) == 0))
  {
    v12 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<HoverEffectContextKey>>();
    v13 = swift_allocObject();
    v14 = *(a2 + 16);
    *(v13 + 72) = *a2;
    *(v13 + 88) = v14;
    *(v13 + 104) = *(a2 + 32);
    *(v13 + 120) = *(a2 + 48);
    outlined init with copy of HoverEffectContext?(a2, v15, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720]);

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v12);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018HoverEffectContextV033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<HoverEffectContextKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HoverEffectContextKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<HoverEffectContextKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HoverEffectContextKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverEffectContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for HoverEffectContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

void specialized ModifierBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v70 = v8;
  v71 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v57 - v16;
  if (a2)
  {
    v63 = v13;
    v61 = a1;
    v62 = v17;
    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v18 = static Signpost.bodyInvoke;
    v19 = word_1ED539040;
    v20 = HIBYTE(word_1ED539040);
    v21 = byte_1ED539042;
    v22 = static os_signpost_type_t.begin.getter();
    v81 = v18;
    v82 = v19;
    v83 = v20;
    v84 = v21;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_37;
    }

    LODWORD(v73) = v22;
    v57 = v15;
    v58 = AssociatedTypeWitness;
    v60 = a4;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18DDAB4C0;
    v24 = AGTypeID.description.getter();
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v28 = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 64) = v28;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v59 = a3;
    v29 = specialized static Tracing.libraryName(defining:)();
    *(v23 + 96) = v27;
    *(v23 + 104) = v28;
    *(v23 + 72) = v29;
    *(v23 + 80) = v30;
    if (one-time initialization token for _signpostLog == -1)
    {
      v31 = v73;
      if (v20)
      {
LABEL_7:
        v80 = v31;
        v78 = _signpostLog;
        v79 = &dword_18D018000;
        v81 = v18;
        v82 = v19;
        v75 = "%{public}@.body [in %{public}@]";
        v76 = 31;
        v77 = 2;
        v74 = v23;
        v32 = v63;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        (*(v71 + 8))(v32, v70);
LABEL_36:

        a4 = v60;
        AssociatedTypeWitness = v58;
        v15 = v57;
LABEL_37:
        AGGraphClearUpdate();
        v54 = v62;
        (*(a4 + 24))();
        AGGraphSetUpdate();
        v55 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        MEMORY[0x1EEE9AC00](v55);
        *(&v57 - 2) = type metadata accessor for ModifierBodyAccessor();
        *(&v57 - 1) = swift_getWitnessTable();
        _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v54, partial apply for closure #2 in BodyAccessor.setBody(_:), (&v57 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v56);
        (*(v15 + 8))(v54, AssociatedTypeWitness);
        return;
      }
    }

    else
    {
      swift_once();
      v31 = v73;
      if (v20)
      {
        goto LABEL_7;
      }
    }

    if (v18 == 20)
    {
      v33 = 3;
    }

    else
    {
      v33 = 4;
    }

    v34 = bswap32(v18) | (4 * WORD1(v18));
    v35 = v31;
    v36 = v71 + 16;
    v64 = *(v71 + 16);
    v37 = v64(v72, v63, v70);
    v38 = 0;
    LOBYTE(v75) = 1;
    v71 = v36;
    v68 = 16 * *(&v18 + 1);
    v69 = (v36 - 8);
    v67 = v23 + 32;
    v66 = v18;
    v65 = *(&v18 + 1);
    do
    {
      v73 = &v57;
      MEMORY[0x1EEE9AC00](v37);
      v40 = &v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = v40 + 8;
      v42 = v33;
      v43 = v40 + 8;
      do
      {
        *(v43 - 1) = 0;
        *v43 = 0;
        v43 += 16;
        --v42;
      }

      while (v42);
      v44 = v67 + 40 * v38;
      while (1)
      {
        v45 = *(v23 + 16);
        if (v38 == v45)
        {
          break;
        }

        if (v38 >= v45)
        {
          __break(1u);
        }

        ++v38;
        outlined init with copy of AnyTrackedValue(v44, &v81);
        v46 = v85;
        __swift_project_boxed_opaque_existential_1(&v81, v85);
        *(v41 - 1) = CVarArg.kdebugValue(_:)(v34 | v35, v46);
        *v41 = v47 & 1;
        v41 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v81);
        v44 += 40;
        if (!--v33)
        {
          goto LABEL_21;
        }
      }

      LOBYTE(v75) = 0;
LABEL_21:
      v48 = v66;
      if (v66 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v40[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v40[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v40[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v48 != 20 && v40[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v49 = v70;
      v50 = *v69;
      v51 = v72;
      (*v69)(v72, v70);
      v52 = __swift_project_value_buffer(v49, static OSSignpostID.continuation);
      v37 = v64(v51, v52, v49);
      v33 = v65;
    }

    while ((v75 & 1) != 0);
    v53 = v70;
    v50(v72, v70);
    v50(v63, v53);
    goto LABEL_36;
  }
}

uint64_t protocol witness for static CustomHoverEffect._makeCustomHoverEffect(effect:inputs:body:) in conformance EmptyHoverEffect(uint64_t a1, _OWORD *a2, uint64_t (*a3)(_OWORD *))
{
  v3 = a2[3];
  v6[2] = a2[2];
  v6[3] = v3;
  v7[0] = a2[4];
  *(v7 + 12) = *(a2 + 76);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return a3(v6);
}

Swift::Void __swiftcall _CustomHoverEffectInputs.removeContextFromEnvironment()()
{
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ClearCustomHoverEffectContextFromEnvironment and conformance ClearCustomHoverEffectContextFromEnvironment();
  v0 = Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter(v0);
}

unint64_t lazy protocol witness table accessor for type ClearCustomHoverEffectContextFromEnvironment and conformance ClearCustomHoverEffectContextFromEnvironment()
{
  result = lazy protocol witness table cache variable for type ClearCustomHoverEffectContextFromEnvironment and conformance ClearCustomHoverEffectContextFromEnvironment;
  if (!lazy protocol witness table cache variable for type ClearCustomHoverEffectContextFromEnvironment and conformance ClearCustomHoverEffectContextFromEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClearCustomHoverEffectContextFromEnvironment and conformance ClearCustomHoverEffectContextFromEnvironment);
  }

  return result;
}

unint64_t static _CALayerView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v5;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = type metadata accessor for _CALayerView();
  v11 = v4;
  return static RendererLeafView.makeLeafView(view:inputs:)(&v11, v9, v7, &protocol witness table for _CALayerView<A>, a3);
}

unint64_t static RendererLeafView.makeLeafView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v57 = a4;
  v55 = a3;
  v48 = a5;
  v5 = 0;
  v83 = *MEMORY[0x1E69E9840];
  v52 = *a1;
  v6 = *(a2 + 8);
  v60 = *a2;
  v7 = *(a2 + 24);
  v54 = *(a2 + 16);
  v66 = v7;
  LODWORD(v7) = *(a2 + 32);
  v59 = *(a2 + 36);
  v67 = v7;
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v53 = *(a2 + 60);
  LODWORD(v7) = *(a2 + 68);
  v51 = *(a2 + 64);
  v58 = v7;
  v11 = *(a2 + 72);
  v65 = *(a2 + 80);
  v64 = v11;
  v62 = MEMORY[0x1E69E7CC0];
  v12 = *MEMORY[0x1E698D3F8];
  LODWORD(v63) = 0;
  HIDWORD(v63) = v12;
  v49 = v12;
  v56 = v9;
  v50 = v8;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v9))
  {
    v46 = v10;
    v13 = ++lastIdentity;
    v45 = v6;
    v44 = lastIdentity;
    if ((v59 & 0x100) != 0)
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v60, &v70);
      result = AGWeakAttributeGetAttribute();
      if (result == v12)
      {
        __break(1u);
        return result;
      }

      v47 = 0;
      v14 = v53;
      LODWORD(v68) = v13;
      v38 = Attribute<A>.subscript.modify();
      _DisplayList_StableIdentityScope.pushIdentity(_:)(&v68);
      v38(&v70, 0);
      v6 = v45;
      v8 = v50;
    }

    else
    {
      v47 = 0;
      v14 = v53;
    }

    *&v70 = v60;
    *(&v70 + 1) = v6;
    v71 = v54;
    v72 = v66;
    v73 = v67;
    v74 = v59;
    v75 = v8;
    v76 = v56;
    v77 = v46;
    v78 = v14;
    v79 = v51;
    v80 = v58;
    v81 = v64;
    v82 = v65;
    swift_beginAccess();
    v43 = CachedEnvironment.animatedPosition(for:)(&v70);
    *&v70 = v60;
    *(&v70 + 1) = v6;
    v71 = v54;
    v72 = v66;
    v73 = v67;
    v74 = v59;
    v75 = v8;
    v76 = v56;
    v77 = v46;
    v78 = v14;
    v79 = v51;
    v80 = v58;
    v81 = v64;
    v82 = v65;
    CachedEnvironment.animatedSize(for:)(&v70);
    swift_endAccess();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v60, v70);
    if (v16)
    {
      v17 = *(v16 + 72);
    }

    else
    {
      v17 = 0;
    }

    v5 = v47;
    *&v70 = __PAIR64__(v52, v44);
    *(&v70 + 1) = __PAIR64__(OffsetAttribute2, v43);
    LODWORD(v71) = v58;
    BYTE4(v71) = v17;
    HIWORD(v71) = 0;
    MEMORY[0x1EEE9AC00](v16);
    v41 = type metadata accessor for LeafDisplayList();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<DisplayList>(0, &lazy cache variable for type metadata for Attribute<DisplayList>);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v70, closure #1 in Attribute.init<A>(_:)partial apply, v40, v41, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
    LOBYTE(v70) = 0;
    PreferencesOutputs.subscript.setter(v68, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v6 = v45;
    v9 = v56;
    v8 = v50;
    v10 = v46;
  }

  v20 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v9);
  if (v20)
  {
    *&v70 = v60;
    *(&v70 + 1) = v6;
    v47 = v5;
    v21 = v54;
    v71 = v54;
    v72 = v66;
    v22 = v59;
    v73 = v67;
    v74 = v59;
    v75 = v8;
    v76 = v9;
    v23 = v53;
    v77 = v10;
    v78 = v53;
    v24 = v51;
    v25 = v58;
    v79 = v51;
    v80 = v58;
    v81 = v64;
    v82 = v65;
    swift_beginAccess();
    v26 = CachedEnvironment.animatedSize(for:)(&v70);
    *&v70 = v60;
    *(&v70 + 1) = v6;
    v71 = v21;
    v72 = v66;
    v73 = v67;
    v74 = v22;
    v75 = v8;
    v76 = v56;
    v77 = v10;
    v78 = v23;
    v79 = v24;
    v80 = v25;
    v81 = v64;
    v82 = v65;
    v27 = CachedEnvironment.animatedPosition(for:)(&v70);
    swift_endAccess();
    v28 = v52;
    v29 = LeafResponderFilter.init(data:size:position:transform:)(v52, v26, v27, v23, &v70);
    v68 = v70;
    v69 = v71;
    MEMORY[0x1EEE9AC00](v29);
    v30 = type metadata accessor for LeafResponderFilter();
    v41 = v30;
    WitnessTable = swift_getWitnessTable();
    _sSay7SwiftUI13ViewResponderCGMaTm_0(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
    v31 = v30;
    v9 = v56;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v68, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_1, v40, v31, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);

    LOBYTE(v70) = 0;
    v20 = PreferencesOutputs.subscript.setter(v61, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    v34 = v50;
  }

  else
  {
    v34 = v8;
    v28 = v52;
    v24 = v51;
  }

  *&v70 = v60;
  *(&v70 + 1) = v6;
  v71 = v54;
  v72 = v66;
  v73 = v67;
  v74 = v59;
  v75 = v34;
  v76 = v9;
  v77 = v10;
  v78 = v53;
  v79 = v24;
  v80 = v58;
  v81 = v64;
  v82 = v65;
  MEMORY[0x1EEE9AC00](v20);
  v40[0] = v55;
  v40[1] = v35;
  LODWORD(v41) = v28;
  result = _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)(&v70, partial apply for implicit closure #1 in static RendererLeafView.makeLeafView(view:inputs:), &v39, v49);
  v37 = v48;
  *v48 = v62;
  v37[1] = v63;
  return result;
}

uint64_t _ViewOutputs.attachIndirectOutputs(to:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v11 = *v1;
  v12 = v5;
  v9 = v2;
  v10 = v3;

  PreferencesOutputs.attachIndirectOutputs(to:)(&v9);

  if (v6 != *MEMORY[0x1E698D3F8] && v4 != *MEMORY[0x1E698D3F8])
  {

    return AGGraphSetIndirectAttribute();
  }

  return result;
}

uint64_t outlined init with copy of HoverEffectContext?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HoverEffectContext?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018HoverEffectContextD033_B2E20BEC96D7E01EE3D55A38320E6294LLV_Tt1B5(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v10 = a1[6];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = a2[6];
  v43 = v9;
  v44 = v8;
  v41 = v7;
  v42 = v6;
  v40 = v4;
  if (v10 == 1)
  {
    if (v17 == 1)
    {
      v18 = MEMORY[0x1E69E6720];
      _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, &v55, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720], type metadata accessor for HoverEffectContext?);
      _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a2, &v55, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, v18, type metadata accessor for HoverEffectContext?);
      v19 = 1;
      v20 = v5;
      v21 = v40;
      v22 = v41;
      v23 = v42;
      v24 = v43;
      v25 = v44;
      v26 = 1;
LABEL_9:
      outlined consume of HoverEffectContext?(v20, v21, v22, v23, v24, v25, v26);
      return v19 & 1;
    }

    v37 = *a2;
    v38 = a2[1];
    v39 = a2[2];
    v34 = MEMORY[0x1E69E6720];
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, &v55, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720], type metadata accessor for HoverEffectContext?);
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a2, &v55, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, v34, type metadata accessor for HoverEffectContext?);
    v29 = v43;
    v28 = v44;
    v31 = v41;
    v30 = v42;
    v33 = v5;
    v32 = v40;
  }

  else
  {
    *&v55 = *a1;
    *(&v55 + 1) = v4;
    *&v56 = v7;
    *(&v56 + 1) = v6;
    *&v57 = v9;
    *(&v57 + 1) = v8;
    v58 = v10;
    if (v17 != 1)
    {
      *&v45 = v12;
      *(&v45 + 1) = v11;
      *&v46 = v13;
      *(&v46 + 1) = v14;
      *&v47 = v16;
      *(&v47 + 1) = v15;
      v48 = v17;
      v19 = specialized static HoverEffectContext.== infix(_:_:)(&v55, &v45);
      v49[0] = v45;
      v49[1] = v46;
      v49[2] = v47;
      v50 = v48;
      v35 = MEMORY[0x1E69E6720];
      _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, &v51, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720], type metadata accessor for HoverEffectContext?);
      _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a2, &v51, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, v35, type metadata accessor for HoverEffectContext?);
      outlined copy of HoverEffectContext?(v5, v40, v41, v42, v43, v44, v10);
      outlined destroy of HoverEffectContext(v49);
      v51 = v55;
      v52 = v56;
      v53 = v57;
      v54 = v58;
      outlined destroy of HoverEffectContext(&v51);
      v20 = v5;
      v21 = v40;
      v22 = v41;
      v23 = v42;
      v24 = v43;
      v25 = v44;
      v26 = v10;
      goto LABEL_9;
    }

    v37 = v12;
    v38 = v11;
    v39 = v13;
    v51 = v55;
    v52 = v56;
    v53 = v57;
    v54 = v58;
    v27 = MEMORY[0x1E69E6720];
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, v49, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720], type metadata accessor for HoverEffectContext?);
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a2, v49, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, v27, type metadata accessor for HoverEffectContext?);
    outlined copy of HoverEffectContext?(v5, v40, v41, v42, v43, v44, v10);
    outlined destroy of HoverEffectContext(&v51);
    v28 = v44;
    v29 = v43;
    v30 = v42;
    v31 = v41;
    v32 = v40;
    v33 = v5;
  }

  outlined consume of HoverEffectContext?(v33, v32, v31, v30, v29, v28, v10);
  outlined consume of HoverEffectContext?(v37, v38, v39, v14, v16, v15, v17);
  v19 = 0;
  return v19 & 1;
}

void type metadata accessor for HoverEffectContext?()
{
  if (!lazy cache variable for type metadata for HoverEffectContext?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HoverEffectContext?);
    }
  }
}

uint64_t outlined consume of HoverEffectContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

uint64_t type metadata completion function for MinorProperties()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for EstimationCache()
{
  result = type metadata accessor for IndexSet();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _LazyLayoutViewCache.__allocating_init(layout:list:inputs:)(int a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  _LazyLayoutViewCache.init(layout:list:inputs:)(a1, a2, a3);
  return v6;
}

uint64_t _LazyLayoutViewCache.init(layout:list:inputs:)(int a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 440);
  v10 = *(v8 + 448);
  (*(v10 + 40))(v9, v10);
  *(v4 + 98) = a1;

  return LazyLayoutViewCache.init<A>(layout:list:inputs:)(a1, a2, a3, v9, v10);
}

uint64_t LazyLayoutViewCache.init<A>(layout:list:inputs:)(int a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v157 = a5;
  v158 = a4;
  v195 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 48);
  v192 = *(a3 + 32);
  *v193 = v9;
  *&v193[16] = *(a3 + 64);
  v194 = *(a3 + 80);
  v10 = *(a3 + 16);
  v190 = *a3;
  v191 = v10;
  swift_weakInit();
  *(v5 + 184) = 0;
  *(v5 + 156) = 0;
  v159 = *MEMORY[0x1E698D3F8];
  *(v5 + 164) = v159;
  *(v5 + 176) = MEMORY[0x1E69E7CC8];
  *(v5 + 192) = xmmword_18DD85520;
  *(v5 + 208) = 0;
  *(v5 + 216) = 0;
  *(v5 + 224) = 0;
  v11 = *(MEMORY[0x1E695F050] + 16);
  *(v5 + 232) = *MEMORY[0x1E695F050];
  *(v5 + 248) = v11;
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
  *(v5 + 280) = -1;
  *(v5 + 288) = -1;
  *(v5 + 296) = 0;
  *(v5 + 304) = 0;
  *(v5 + 312) = 0;
  *(v5 + 336) = 0;
  *(v5 + 320) = 0;
  *(v5 + 328) = 0;
  *(v5 + 340) = 16777471;
  *(v5 + 344) = 0;
  *(v5 + 352) = 1;
  swift_weakInit();
  v12 = MEMORY[0x1E69E7CC0];
  *(v5 + 368) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12_ViewList_IDV9CanonicalV_AC23LazyLayoutCacheChildrenVTt0g5(MEMORY[0x1E69E7CC0]);
  *(v5 + 376) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI12_ViewList_IDV9CanonicalVTt0g5Tf4g_n(v12);
  *(v5 + 384) = 0;
  v145[1] = v5 + 184;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  v161 = v5;
  swift_weakAssign();

  v13 = v190;
  v14 = *(a3 + 48);
  v186 = *(a3 + 32);
  v187 = v14;
  v188 = *(a3 + 64);
  v189 = *(a3 + 80);
  v15 = *(a3 + 16);
  v184 = *a3;
  v185 = v15;
  outlined init with copy of _ViewInputs(&v190, v181);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v13);
  static CorePlatformProvidersDefinition.providers.getter(v181);
  if (*&v181[8])
  {
    (*(*(&v181[8] + 1) + 16))(&v184);
  }

  v154 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v13);
  v150 = *v193;
  v153 = *&v193[8];
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(*v193);
  v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v13);
  if (v16 & 1) != 0 && (v17)
  {
    v18 = v187;
    *&v181[0] = v187;
    v19 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);

    v20 = *(v18 + 16);
    if (v19 != v20)
    {
      if (v19 >= v20)
      {
        __break(1u);
        goto LABEL_83;
      }

      if (*(v18 + 16 * v19 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v19);
        v18 = v187;
      }
    }

    *&v181[0] = v18;
    v21 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v22 = *(v18 + 16);
    if (v21 == v22)
    {
      goto LABEL_13;
    }

    if (v21 < v22)
    {
      if (*(v18 + 16 * v21 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v21);
      }

      goto LABEL_13;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_13:
  v23 = v159;
  if (v154 != v159)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v184, v159);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v184, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v184, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v184, v159);
  }

  v24 = v161;
  v25 = AGSubgraphGetCurrent();
  if (!v25)
  {
LABEL_85:
    __break(1u);
  }

  *(v161 + 24) = v25;
  *(v24 + 136) = a2;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v26 = static CachedEnvironment.ID.layoutDirection;
  v27 = v191;
  swift_beginAccess();
  v28 = specialized CachedEnvironment.attribute<A>(id:_:)(v26);
  swift_endAccess();
  *(v24 + 140) = v28;
  if (one-time initialization token for nearestScrollableAxes != -1)
  {
    swift_once();
  }

  v29 = static CachedEnvironment.ID.nearestScrollableAxes;
  swift_beginAccess();
  v30 = specialized CachedEnvironment.attribute<A>(id:_:)(v29);
  swift_endAccess();
  *(v24 + 144) = v30;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v13, *&v181[0]);
  v32 = v23;
  if (v31)
  {
    v32 = v23;
    if (*(v31 + 76) != 255)
    {
      v32 = *(v31 + 72);
      if (((*(v31 + 76) << 32) & 0x100000000) != 0)
      {
        v32 = v23;
      }
    }
  }

  v155 = v13;
  *(v24 + 164) = v32;
  if (one-time initialization token for accessibilityEnabled != -1)
  {
    swift_once();
  }

  v33 = static CachedEnvironment.ID.accessibilityEnabled;
  swift_beginAccess();
  v34 = specialized CachedEnvironment.attribute<A>(id:_:)(v33);
  swift_endAccess();
  *(v24 + 168) = v34;
  v146 = DWORD2(v191);
  LODWORD(v181[0]) = DWORD2(v191);
  *(&v181[0] + 1) = 0;
  LODWORD(v181[1]) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for LazyLayoutViewCache();
  lazy protocol witness table accessor for type UpdateViewCache and conformance UpdateViewCache();
  v35 = Attribute.init<A>(body:value:flags:update:)();
  v181[2] = v192;
  v181[3] = *v193;
  v181[4] = *&v193[16];
  LODWORD(v181[5]) = v194;
  v181[0] = v190;
  v181[1] = v191;
  outlined init with copy of _ViewInputs(&v190, v180);
  v149 = a1;
  LazySubviewPlacements.init(layout:cache:inputs:)(a1, v35, v181, v180);
  v36 = memcpy(v179, v180, 0x1D9uLL);
  MEMORY[0x1EEE9AC00](v36);
  v37 = type metadata accessor for LazySubviewPlacements();
  v143 = v37;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<[_LazyLayout_PlacedSubview]>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v179, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_13, &AssociatedTypeWitness, v37, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v39);
  memcpy(v181, v179, 0x1D9uLL);
  v40 = *(*(v37 - 8) + 8);
  v148 = v37;
  v40(v181, v37);
  *(v24 + 148) = v182[0];
  *(v24 + 152) = Attribute.init<A>(body:value:flags:update:)();
  *(v24 + 156) = AGCreateWeakAttribute();
  LODWORD(v179[0]) = *(v24 + 148);
  v152 = v35;
  DWORD1(v179[0]) = v35;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v42 = v41;
  lazy protocol witness table accessor for type LazyCollectedPlacements and conformance LazyCollectedPlacements();
  v156 = v42;
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *(v24 + 120) = MEMORY[0x1E69E7CC0];
  v43 = v159;
  *(v24 + 128) = 0;
  *(v24 + 132) = v43;
  v44 = v186;
  v45 = v187;
  v182[2] = v186;
  v182[3] = v187;
  v46 = v188;
  v182[4] = v188;
  v47 = v189;
  v183 = v189;
  v48 = v184;
  v182[0] = v184;
  v182[1] = v185;
  v49 = v184;
  v50 = (v24 + 32);
  *(v24 + 48) = v185;
  *(v24 + 32) = v48;
  *(v24 + 112) = v47;
  *(v24 + 96) = v46;
  *(v24 + 64) = v44;
  *(v24 + 80) = v45;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LazyLayoutCacheParentKey);
  v51 = *&v179[0];
  outlined init with copy of _ViewInputs(v182, v179);
  v52 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(v49, v51);
  if (v52)
  {
    outlined init with copy of LazyLayoutCacheParent(v52 + 72, &v163);
    v53 = v164;
    if ((v164 & 0x8000000000000000) == 0 && swift_weakLoadStrong())
    {
      LazyLayoutViewCache.addChildCache(_:seed:)(v24, v53);
    }
  }

  else
  {
    swift_weakInit();
    v164 = -1;
  }

  v151 = v27;
  v173 = v186;
  v174 = v187;
  v175 = v188;
  v176 = v189;
  v171 = v184;
  v172 = v185;
  swift_beginAccess();
  v54 = *(v24 + 80);
  v177[2] = *(v24 + 64);
  v177[3] = v54;
  v177[4] = *(v24 + 96);
  v178 = *(v24 + 112);
  v55 = *(v24 + 48);
  v177[0] = *v50;
  v177[1] = v55;
  v56 = v174;
  *(v24 + 64) = v173;
  *(v24 + 80) = v56;
  *(v24 + 96) = v175;
  *(v24 + 112) = v176;
  v57 = v172;
  *v50 = v171;
  *(v24 + 48) = v57;
  outlined init with copy of _ViewInputs(&v171, v179);
  outlined destroy of _ViewInputs(v177);
  v58 = *(v187 + 16);
  v160 = v24 + 120;
  v147 = v187;
  if (v58)
  {

    v60 = (v59 + 40);
    do
    {
      v65 = *(v60 - 1);
      v66 = *v60;
      v67 = *(v24 + 148);
      if (v65 == &type metadata for DisplayList.Key)
      {
        LODWORD(v179[0]) = *(v24 + 148);
        *(&v179[0] + 1) = v24;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews();

        v67 = Attribute.init<A>(body:value:flags:update:)();
      }

      v162 = v145;
      v179[0] = __PAIR64__(v159, v67);
      MEMORY[0x1EEE9AC00](v59);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v61 = type metadata accessor for LazyPreference();
      v142 = v61;
      v143 = swift_getWitnessTable();
      v62 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v179, partial apply for closure #1 in Attribute.init<A>(_:), &v145[-6], v61, MEMORY[0x1E69E73E0], v62, MEMORY[0x1E69E7410], v63);
      v64 = v165;
      swift_beginAccess();
      _ViewOutputs.appendPreference<A>(key:value:)(v65, v64, v65, v66);
      v59 = swift_endAccess();
      v60 += 2;
      --v58;
      v24 = v161;
    }

    while (v58);
  }

  else
  {
  }

  if ((BYTE4(v192) & 2) != 0)
  {
    v70 = v151;
    v72 = v149;
    v71 = v157;
    *&v179[0] = LazyLayoutComputer.init(layout:environment:cache:containerSize:)(v149, *(v151 + 16));
    *(&v179[0] + 1) = v73;
    MEMORY[0x1EEE9AC00](*&v179[0]);
    v74 = type metadata accessor for LazyLayoutComputer();
    v143 = v74;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for Attribute<LayoutComputer>, &type metadata for LayoutComputer, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v179, closure #1 in Attribute.init<A>(_:)partial apply, &AssociatedTypeWitness, v74, MEMORY[0x1E69E73E0], v75, MEMORY[0x1E69E7410], v76);
    v77 = v165;
    swift_beginAccess();
    *(v24 + 132) = v77;
    v78 = *(v24 + 128);
    v68 = v155;
    if ((v78 & 0x80) == 0)
    {
      *(v24 + 128) = v78 | 0x80;
    }

    v69 = v159;
  }

  else
  {
    v68 = v155;
    v69 = v159;
    v70 = v151;
    v71 = v157;
    v72 = v149;
  }

  v79 = v152;
  v80 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19ScrollPrefetchStateV_Tt2g5(v68);
  if (v80 != v69)
  {
    v81 = *(v70 + 16);
    WitnessTable = v71;
    v143 = v158;
    LazySubviewPrefetcher.init(layout:size:position:transform:environment:prefetchState:cache:containerSize:)(v72, *&v193[24], *&v193[16], *&v193[12], v81, v80, v79, v194, &v165);
    MEMORY[0x1EEE9AC00](v82);
    v83 = type metadata accessor for LazySubviewPrefetcher();
    v143 = v83;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v165, partial apply for closure #1 in Attribute.init<A>(_:), &AssociatedTypeWitness, v83, MEMORY[0x1E69E73E0], v84, MEMORY[0x1E69E7410], v85);
    v179[2] = v167;
    v179[3] = v168[0];
    *(&v179[3] + 9) = *(v168 + 9);
    v179[0] = v165;
    v179[1] = v166;
    (*(*(v83 - 8) + 8))(v179, v83);
    AGGraphAddInput();
    v80 = AGGraphSetFlags();
  }

  v86 = v148;
  MEMORY[0x1EEE9AC00](v80);
  v143 = _s7SwiftUI19LazyLayoutViewCacheC6layout4list6inputsAC14AttributeGraph0J0VyxG_AIyAA0E4List_pGAA01_E6InputsVtcAA0cD0RzlufcyAA06UpdateeF033_EB2336F1CBB87914F55D10FF4F9B475ALLVzXEfU_TA_0;
  WitnessTable = v24;
  AGGraphMutateAttribute();
  MEMORY[0x1EEE9AC00](*(v24 + 148));
  MEMORY[0x1EEE9AC00](v87);
  AssociatedTypeWitness = v86;
  v142 = partial apply for closure #2 in LazyLayoutViewCache.init<A>(layout:list:inputs:);
  v143 = v88;
  AGGraphMutateAttribute();
  v89 = v187;
  v90 = *(v187 + 16);
  if (v90)
  {

    v91 = (v89 + 40);
    do
    {
      v95 = *(v91 - 1);
      v96 = *v91;
      swift_beginAccess();
      if ((_ViewOutputs.subscript.getter(v95, v95, v96) & 0x100000000) != 0)
      {
        swift_endAccess();
      }

      else
      {
        v92 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v92);
        v145[-6] = v158;
        v145[-5] = v95;
        v93 = type metadata accessor for LazyPreference();
        MEMORY[0x1EEE9AC00](v93);
        AssociatedTypeWitness = v94;
        v142 = _s7SwiftUI19LazyLayoutViewCacheC6layout4list6inputsAC14AttributeGraph0J0VyxG_AIyAA0E4List_pGAA01_E6InputsVtcAA0cD0Rzlufc12updateOutputL_3keyyqd__m_tAaORzAA13PreferenceKeyRd__r__lFyAA0cQ033_EB2336F1CBB87914F55D10FF4F9B475ALLVyqd__GzXEfU_TA_0;
        v143 = &v145[-8];
        AGGraphMutateAttribute();
      }

      v91 += 2;
      --v90;
    }

    while (v90);
  }

  else
  {
  }

  v97 = v150;
  v98 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v150);
  v99 = v159;
  if ((v98 & 1) == 0 && v154 == v159)
  {
    v100 = v161;
    v101 = v155;
    goto LABEL_66;
  }

  v102 = *&v193[16];

  v103 = AGCreateWeakAttribute();
  v104 = *&v193[12];
  v105 = AGCreateWeakAttribute();
  v106 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v155);
  LODWORD(v162) = v102;
  LODWORD(v156) = v104;
  if (v106 == v99)
  {
    v107 = 0;
    v108 = 0;
  }

  else
  {
    v109 = AGCreateWeakAttribute();
    v108 = v109 & 0xFFFFFFFF00000000;
    v107 = v109;
  }

  swift_beginAccess();
  v100 = v161;
  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(*(v161 + 120));
  v110 = AGCreateWeakAttribute();

  LazyScrollable.init(position:transform:parent:children:cache:)(v103, v105, v108 | v107, v110, v170);
  if (v98)
  {
    type metadata accessor for [Scrollable](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_18DDA6EB0;
    v112 = type metadata accessor for LazyScrollable();
    *(v111 + 56) = v112;
    *(v111 + 64) = &protocol witness table for LazyScrollable<A>;
    v113 = swift_allocObject();
    *(v111 + 32) = v113;
    (*(*(v112 - 8) + 16))(v113 + 16, v170, v112);
    *&v179[0] = v111;
    v100 = v161;
    type metadata accessor for [Scrollable](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    LODWORD(v112) = Attribute.init<A>(body:value:flags:update:)();

    swift_beginAccess();
    LOBYTE(v165) = 0;
    PreferencesOutputs.subscript.setter(v112, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    swift_endAccess();
  }

  v99 = v159;
  if (v154 != v159)
  {
    v114 = type metadata accessor for LazyScrollable();
    *(&v179[1] + 1) = v114;
    *&v179[2] = &protocol witness table for LazyScrollable<A>;
    *&v179[0] = swift_allocObject();
    v115 = *(v114 - 8);
    (*(v115 + 16))(*&v179[0] + 16, v170, v114);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v116 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(v179);
    swift_beginAccess();
    v97 = v150;
    *&v165 = v150;
    v117 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v118 = *(v97 + 16);
    if (v117 == v118)
    {
      goto LABEL_63;
    }

    if (v117 < v118)
    {
      v97 = v150;
      if (*(v150 + 16 * v117 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v165 = __PAIR64__(v116, v154);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();

        v137 = Attribute.init<A>(body:value:flags:update:)();
        v138 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(*(v161 + 120));
        v139 = v159;
        if ((v138 & 0x100000000) == 0)
        {
          v139 = v138;
        }

        *&v165 = __PAIR64__(v139, v137);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        type metadata accessor for TransactionPropertyKey<FromScrollViewKey>(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v140 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v165) = 0;
        PreferencesOutputs.subscript.setter(v140, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
        goto LABEL_64;
      }

LABEL_63:

LABEL_64:
      swift_endAccess();

      *(&v179[6] + 4) = 0u;
      *(&v179[5] + 8) = 0u;
      *(&v179[4] + 8) = 0u;
      *&v179[0] = __PAIR64__(v156, v162);
      *(&v179[0] + 1) = __PAIR64__(v116, v146);
      v119 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      outlined init with copy of _ViewInputs(&v190, &v165);
      v120 = specialized CachedEnvironment.attribute<A>(id:_:)(v119);
      swift_endAccess();
      LODWORD(v179[1]) = v120;
      outlined init with copy of _GraphInputs(&v190, &v165);
      v121 = outlined destroy of _ViewInputs(&v190);
      *(&v179[1] + 8) = v190;
      *(&v179[2] + 8) = v191;
      *(&v179[3] + 8) = v192;
      MEMORY[0x1EEE9AC00](v121);
      v143 = v179;
      swift_beginAccess();
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v97, v153, partial apply for implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:));
      swift_endAccess();
      v100 = v161;

      (*(v115 + 8))(v170, v114);
      outlined destroy of ScrollStateRequestTransform(v179);
      v101 = v155;
      v99 = v159;
      goto LABEL_66;
    }

    goto LABEL_84;
  }

  v122 = type metadata accessor for LazyScrollable();
  (*(*(v122 - 8) + 8))(v170, v122);

  v101 = v155;
  v97 = v150;
LABEL_66:
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA21FocusableFillerBoundsV0I0V_TtB5Tf4dn_n(v97))
  {
    swift_beginAccess();
    v123 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15FocusableBoundsV0I0V_TtB5(*(v100 + 120));
    v124 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA21FocusableFillerBoundsV0I0V_TtB5(*(v100 + 120));
    v125 = *(v100 + 148);
    if ((v123 & 0x100000000) != 0)
    {
      v126 = v99;
    }

    else
    {
      v126 = v123;
    }

    if ((v124 & 0x100000000) != 0)
    {
      v127 = v99;
    }

    else
    {
      v127 = v124;
    }

    LOBYTE(v165) = 1;
    v128 = *&v193[12];
    v129 = *&v193[24];
    outlined init with copy of _ViewInputs(&v190, v179);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v130 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v131 = specialized CachedEnvironment.attribute<A>(id:_:)(v130);
    swift_endAccess();
    outlined destroy of _ViewInputs(&v190);
    *(v179 + 4) = v128;
    LODWORD(v179[0]) = v146;
    HIDWORD(v179[0]) = v129;
    *&v179[1] = __PAIR64__(v131, v125);
    *(&v179[1] + 1) = __PAIR64__(v127, v126);
    LODWORD(v179[2]) = 0;
    *&v179[3] = 0;
    *(&v179[2] + 1) = 0;
    BYTE8(v179[3]) = v165;
    *&v179[4] = MEMORY[0x1E69E7CC8];
    v167 = *&v179[2];
    v168[0] = v179[3];
    *&v168[1] = MEMORY[0x1E69E7CC8];
    v165 = v179[0];
    v166 = v179[1];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [FocusableFillerBounds], &type metadata for FocusableFillerBounds, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider();
    v132 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of LazyFocusableFillerBoundsProvider(v179);
    swift_beginAccess();
    v169 = 0;
    PreferencesOutputs.subscript.setter(v132, &type metadata for FocusableFillerBounds.Key, &protocol witness table for FocusableFillerBounds.Key);
    swift_endAccess();
    v100 = v161;
  }

  v133 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(v101);
  v135 = v134;
  outlined destroy of weak AnyGestureResponder?(&v163);
  outlined destroy of _ViewInputs(&v190);
  v179[2] = v186;
  v179[3] = v187;
  v179[4] = v188;
  LODWORD(v179[5]) = v189;
  v179[0] = v184;
  v179[1] = v185;
  outlined destroy of _ViewInputs(v179);
  if ((v135 & 1) == 0)
  {
    swift_beginAccess();
    *(v100 + 192) = v133;
  }

  return v100;
}

uint64_t sub_18D1D8A08()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI12_ViewList_IDV9CanonicalVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Int, _ViewList_ID.Canonical>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for nearestScrollableAxes()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.nearestScrollableAxes = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LazySubviewPlacements<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LazyCollectedPlacements and conformance LazyCollectedPlacements()
{
  result = lazy protocol witness table cache variable for type LazyCollectedPlacements and conformance LazyCollectedPlacements;
  if (!lazy protocol witness table cache variable for type LazyCollectedPlacements and conformance LazyCollectedPlacements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyCollectedPlacements and conformance LazyCollectedPlacements);
  }

  return result;
}

uint64_t _s7SwiftUI19LazyLayoutViewCacheC6layout4list6inputsAC14AttributeGraph0J0VyxG_AIyAA0E4List_pGAA01_E6InputsVtcAA0cD0Rzlufc12updateOutputL_3keyyqd__m_tAaORzAA13PreferenceKeyRd__r__lFyAA0cQ033_EB2336F1CBB87914F55D10FF4F9B475ALLVyqd__GzXEfU_TA_0()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for LazyPreference();
  return LazyPreference.updateCache(_:)(v1, v2);
}

unint64_t lazy protocol witness table accessor for type LazyPreferencePrefetchItems and conformance LazyPreferencePrefetchItems()
{
  result = lazy protocol witness table cache variable for type LazyPreferencePrefetchItems and conformance LazyPreferencePrefetchItems;
  if (!lazy protocol witness table cache variable for type LazyPreferencePrefetchItems and conformance LazyPreferencePrefetchItems)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyPreferencePrefetchItems and conformance LazyPreferencePrefetchItems);
  }

  return result;
}

uint64_t LazyScrollable.init(position:transform:parent:children:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  swift_weakInit();
}

uint64_t type metadata completion function for LazyLayoutComputer.Engine()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

Swift::Void __swiftcall LazyLayoutComputer.updateValue()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for LazyLayoutComputer.Engine();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v13 = CurrentAttribute;
    v28 = v11;
    v29 = v2;
    v30 = v9;
    v31 = v8;
    v14 = *(v1 + 4);
    v27 = v7;
    v15 = *(v1 + 12);
    Value = AGGraphGetValue();
    (*(v4 + 16))(v32, Value, v3);
    LODWORD(v44) = v13;
    *(&v44 + 4) = __PAIR64__(v14, v13);
    HIDWORD(v44) = v15;
    type metadata accessor for LazyLayoutViewCache();
    v17 = *AGGraphGetValue();

    v18 = AGGraphGetValue();
    v19 = *(*v18 + 320);
    v20 = *(*v18 + 328);
    v47 = 1;
    v46 = 1;
    v45 = 1;
    memset(v33, 0, 48);
    memset(&v43[7], 0, 48);
    memset(&v42[7], 0, 48);
    v33[48] = 1;
    *&v36[15] = 0;
    *v36 = *&v43[32];
    v35 = *&v43[16];
    v34 = *v43;
    v37 = 1;
    *&v40[15] = 0;
    *v40 = *&v42[32];
    v39 = *&v42[16];
    v38 = *v42;
    v41 = 1;
    v21 = v28;
    LazyLayoutComputer.Engine.init(layout:context:cache:maxSize:sizeCache:)(v32, &v44, v17, v33, v3, v28, v19, v20);
    v22 = v29;
    WitnessTable = swift_getWitnessTable();
    v24 = v21;
    v25 = v21;
    v26 = v31;
    StatefulRule<>.update<A>(to:)(v24, v22, v31, WitnessTable, &protocol witness table for LazyLayoutComputer<A>.Engine);
    (*(v30 + 8))(v25, v26);
  }
}

_DWORD *UpdateViewCache.updateValue()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  result = AGGraphGetValue();
  if (v2 != *result >> 1)
  {
    v4 = *(v1 + 8);
    if (!v4)
    {
      __break(1u);
      goto LABEL_9;
    }

    (*(*v4 + 384))();
    *(v1 + 16) = *AGGraphGetValue() >> 1;
  }

  type metadata accessor for LazyLayoutViewCache();
  result = AGGraphGetOutputValue();
  if (result)
  {
    return result;
  }

  if (!*(v1 + 8))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return AGGraphSetOutputValue();
}

__n128 LazyLayoutComputer.Engine.init(layout:context:cache:maxSize:sizeCache:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v14 = type metadata accessor for LazyLayoutComputer.Engine();
  *(a6 + v14[9]) = *a2;
  *(a6 + v14[10]) = a3;
  v15 = (a6 + v14[11]);
  *v15 = a7;
  v15[1] = a8;
  v16 = a6 + v14[12];
  v17 = *(a4 + 16);
  *v16 = *a4;
  *(v16 + 16) = v17;
  v18 = *(a4 + 80);
  *(v16 + 64) = *(a4 + 64);
  *(v16 + 80) = v18;
  v19 = *(a4 + 48);
  *(v16 + 32) = *(a4 + 32);
  *(v16 + 48) = v19;
  *(v16 + 160) = *(a4 + 160);
  v20 = *(a4 + 144);
  *(v16 + 128) = *(a4 + 128);
  *(v16 + 144) = v20;
  result = *(a4 + 96);
  v22 = *(a4 + 112);
  *(v16 + 96) = result;
  *(v16 + 112) = v22;
  return result;
}

uint64_t initializeWithCopy for LazyLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;

  return a1;
}

uint64_t destroy for LazyLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

double partial apply for specialized closure #1 in SizeAndSpacingContext.update<A>(_:)()
{
  return specialized closure #1 in SizeAndSpacingContext.update<A>(_:)(*(v0 + 16), *(v0 + 24));
}

{
  v1 = *(v0 + 16);
  (*(v0 + 24))(v4);
  result = *v4;
  v3 = v4[1];
  *v1 = v4[0];
  *(v1 + 16) = v3;
  *(v1 + 32) = 0;
  return result;
}

uint64_t closure #1 in LazyLayoutComputer.Engine.sizeThatFits(_:)()
{
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

double specialized closure #1 in SizeAndSpacingContext.update<A>(_:)(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = 0;
  return result;
}

Swift::Int LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:)(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v65 = a7;
  v66 = a5;
  LODWORD(v64) = a4;
  v16 = type metadata accessor for _LazyStack_Cache();
  v60 = *(v16 - 8);
  v61 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v57[-v17];
  v18 = type metadata accessor for MinorProperties();
  v59 = type metadata accessor for Optional();
  v19 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v21 = &v57[-v20];
  v69 = v18;
  v68 = *(v18 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v67 = &v57[-v24];
  v58 = *(a6 + 12);
  v25 = (*(a9 + 32))(a8, a9, v23);
  v62 = v25;
  if (v25)
  {
    a3 = a1;
  }

  v26 = v10;
  if ((v25 & 1) == 0)
  {
    a2 = v64;
  }

  v27 = *&a3;
  if (a2)
  {
    v27 = (*(a9 + 64))(v66, a8, a9);
  }

  v73[0] = v27;
  v28 = v65;
  v64 = v26;
  LazyStack<>.resolveMinorProperties(minorSize:cache:)(v73, a8, a9, v21);
  v30 = v68;
  v29 = v69;
  if ((*(v68 + 48))(v21, 1, v69) == 1)
  {
    v31 = (*(v19 + 8))(v21, v59);
    MEMORY[0x1EEE9AC00](v31);
    *&v57[-16] = v73;
    return specialized LazyStack<>.log(_:)(partial apply for implicit closure #2 in LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:));
  }

  v59 = a3;
  (*(v30 + 32))(v67, v21, v29);
  v34 = v60;
  v33 = v61;
  v35 = v63;
  (*(v60 + 16))(v63, v28, v61);
  v36 = 0.0;
  v37 = 0.0;
  if (v58 != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v36 = *Value;
    v37 = Value[1];
  }

  if (v62)
  {
    v36 = v37;
  }

  if (specialized LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)(0, 1, *&v36, 0, v35, a8, a9))
  {
    _LazyStack_Cache.resetEstimates()(v33);
  }

  v71 = 0.0;
  v72 = 0;
  v39 = v67;
  LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(&v71, &v72, v67, v66, v35, a8, a9);
  *&v40 = COERCE_DOUBLE(EstimationCache.average.getter());
  v42 = v41;
  v43 = *&v40;
  v45 = v44;
  v46 = *v39;
  v70 = 2 * v46;
  result = _ViewList_Node.estimatedCount(style:)(&v70);
  if (__OFSUB__(result, v72))
  {
    __break(1u);
    goto LABEL_37;
  }

  v47 = (result - v72) & ~((result - v72) >> 63);
  if (v46 != 1)
  {
    v48 = __OFADD__(v47, v46);
    v49 = v47 + v46;
    if (!v48)
    {
      if (v46)
      {
        v50 = v49 - 1;
        if (v50 != 0x8000000000000000 || v46 != -1)
        {
          v47 = v50 / v46;
          goto LABEL_24;
        }

LABEL_39:
        __break(1u);
        return result;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_24:
  if (v45)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = v43;
  }

  v53 = v71 + (v42 + v52) * v47;
  if (v72)
  {
    v54 = 1;
  }

  else
  {
    v54 = v47 == 0;
  }

  v55 = v54;
  v56 = v53 - v43;
  if ((v55 | v45))
  {
    v56 = v53;
  }

  v71 = v56;
  MEMORY[0x1EEE9AC00](result);
  *&v57[-16] = v73;
  *&v57[-8] = &v71;
  specialized LazyStack<>.log(_:)(partial apply for implicit closure #4 in LazyStack<>.sizeThatFits(proposedSize:subviews:context:cache:));
  (*(v34 + 8))(v63, v33);
  return (*(v68 + 8))();
}

uint64_t closure #1 in closure #1 in LazyLayoutComputer.Engine.sizeThatFits(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, double *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25[1] = a7;
  v25[0] = a5;
  v25[2] = a4;
  v13 = a2;
  v28 = a2;
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = v25 - v18;
  LazyLayoutViewCache.subviews(context:)(v13, v30);
  (*(*a1 + 400))(AssociatedTypeWitness, AssociatedTypeWitness);
  v20 = *(a11 + 48);
  v27 = a6 & 1;
  v26 = a8 & 1;
  v21 = v20(v25[0]);
  v23 = v22;
  (*(v17 + 8))(v19, AssociatedTypeWitness);
  result = outlined destroy of _LazyLayout_Subviews(v30);
  *a9 = v21;
  *(a9 + 1) = v23;
  return result;
}

uint64_t _LazyLayoutViewCache.copyCacheState<A>(type:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v9[2] = *(*v2 + 440);
  v9[3] = a2;
  v9[4] = *(v4 + 448);
  v5 = *(v4 + 464);
  swift_beginAccess();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v2 + v5, partial apply for closure #1 in _LazyLayoutViewCache.copyCacheState<A>(type:), v9, AssociatedTypeWitness, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v7);
  return swift_endAccess();
}

uint64_t ForEachState.EditsBuilder.finalize()(uint64_t a1)
{
  v98[6] = *MEMORY[0x1E69E9840];
  v91 = *(a1 + 40);
  v3 = *(*(v91 + 8) + 8);
  v4 = *(a1 + 16);
  v94 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v84 = &v66 - v5;
  v6 = *(a1 + 24);
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v3;
  v90 = v4;
  v82 = swift_getAssociatedTypeWitness();
  v69 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v95 = &v66 - v9;
  v88 = type metadata accessor for IndexSet.Index();
  v78 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>();
  v74 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IndexSetBuilder(0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IndexSet();
  v68 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v1 + *(a1 + 76));
  v19 = v18[1];
  v97[0] = *v18;
  v97[1] = v19;
  v20 = *(a1 + 48);
  swift_bridgeObjectRetain_n();

  v92 = v20;
  v93 = v6;
  v21 = Set.count.getter();

  v22 = v1;
  v23 = v1 + *(a1 + 72);
  v24 = IndexSet.count.getter();
  v25 = 0;
  v26 = v14;
  v27 = v23 + *(v14 + 20);
  if ((*(v27 + 16) & 1) == 0)
  {
    v29 = *v27;
    v28 = *(v23 + *(v14 + 20) + 8);
    v30 = __OFSUB__(v28, v29);
    v25 = v28 - v29;
    if (v30)
    {
LABEL_16:
      __break(1u);
    }
  }

  v30 = __OFADD__(v24, v25);
  v31 = v24 + v25;
  if (v30)
  {
    __break(1u);
    goto LABEL_15;
  }

  v32 = v21 + v31;
  if (__OFADD__(v21, v31))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  type metadata accessor for Set();
  Set.reserveCapacity(_:)(v32);
  v33 = v89;
  outlined init with copy of IndexSetBuilder(v23, v89);
  if ((*(v33 + *(v26 + 20) + 16) & 1) == 0)
  {
    IndexSet.insert(integersIn:)();
  }

  v34 = v67;
  (*(v68 + 32))(v67, v33, v16);
  if (*(v22 + *(a1 + 68)))
  {

    v35 = KeyPath.makeGetFunction()();
    v96 = 0;
    MEMORY[0x1EEE9AC00](v35);
    v36 = v93;
    *(&v66 - 12) = v90;
    *(&v66 - 11) = v36;
    v80 = *(a1 + 32);
    v37 = v91;
    *(&v66 - 10) = v80;
    *(&v66 - 9) = v37;
    v38 = *(a1 + 56);
    *(&v66 - 8) = v92;
    *(&v66 - 7) = v38;
    v79 = v38;
    *(&v66 - 6) = &v96;
    *(&v66 - 5) = v34;
    v81 = v39;
    *(&v66 - 4) = v39;
    *(&v66 - 3) = v40;
    v89 = v40;
    v64 = v97;
    v41 = v34;
    dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
    if ((v96 & 1) == 0)
    {
      v77 = v22;
      IndexSet.makeIterator()();
      v42 = *(v74 + 36);
      v43 = _s10Foundation8IndexSetVACSlAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
      ++v78;
      v72 = (v71 + 2);
      ++v71;
      ++v70;
      ++v69;
      v76 = v16;
      v75 = v13;
      v74 = v42;
      v73 = v43;
      v44 = v92;
      while (1)
      {
        v45 = v87;
        dispatch thunk of Collection.endIndex.getter();
        _s10Foundation8IndexSetVACSlAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
        v46 = v88;
        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v78)(v45, v46);
        if (v47)
        {
          break;
        }

        v48 = dispatch thunk of Collection.subscript.read();
        v48(v98, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v49 = v90;
        Collection.index(atOffset:)();
        v50 = dispatch thunk of Collection.subscript.read();
        v51 = v84;
        v52 = AssociatedTypeWitness;
        (*v72)(v84);
        v53 = v50(v98, 0);
        v94 = &v66;
        MEMORY[0x1EEE9AC00](v53);
        v54 = v93;
        *(&v66 - 8) = v49;
        *(&v66 - 7) = v54;
        v55 = v80;
        v56 = v91;
        *(&v66 - 6) = v80;
        *(&v66 - 5) = v56;
        v57 = v79;
        *(&v66 - 4) = v44;
        *(&v66 - 3) = v57;
        v64 = v81;
        v65 = v89;
        v58 = v83;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v51, thunk for @callee_guaranteed (@unowned UnsafePointer<A.Sequence.Element>) -> (@out B)partial apply, (&v66 - 10), v52, MEMORY[0x1E69E73E0], v54, MEMORY[0x1E69E7410], v59);
        (*v71)(v51, v52);
        v98[0] = v49;
        v98[1] = v54;
        v98[2] = v55;
        v98[3] = v56;
        v98[4] = v44;
        v98[5] = v57;
        v60 = type metadata accessor for ForEachState.Edits();
        ForEachState.Edits.appendInsert(id:)(v58, v60);
        v61 = v58;
        v13 = v75;
        (*v70)(v61, v54);
        v16 = v76;
        (*v69)(v95, v82);
      }

      outlined destroy of IndexingIterator<IndexSet>(v13);
      v41 = v67;
    }

    v62 = v97[0];

    (*(v68 + 8))(v41, v16);

    return v62;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void type metadata accessor for IndexingIterator<IndexSet>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<IndexSet>)
  {
    type metadata accessor for IndexSet();
    _s10Foundation8IndexSetVACSlAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<IndexSet>);
    }
  }
}

uint64_t outlined init with copy of IndexSetBuilder(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSetBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for IndexSetBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 16) = *(v9 + 16);
  return a1;
}

uint64_t closure #1 in ForEachState.EditsBuilder.finalize()(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v46 = a6;
  v47 = a7;
  v37 = a4;
  v44 = a9;
  v45 = a5;
  v16 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for IndexSet.Index();
  v36 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = 1;
  v43 = a11;
  v48 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = UnsafeBufferPointer.baseAddress.getter();
  v41 = result;
  if (result)
  {
    v35 = v13;
    v39 = a12;
    v40 = a13;
    v38 = a10;
    IndexSet.makeIterator()();
    type metadata accessor for IndexSet();
    _s10Foundation8IndexSetVACSlAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    v24 = (v36 + 8);
    v37 = AssociatedTypeWitness - 8;
    for (i = (v16 + 8); ; (*i)(v32, v33))
    {
      v26 = v49;
      dispatch thunk of Collection.endIndex.getter();
      _s10Foundation8IndexSetVACSlAAWlTm_1(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
      v27 = v51;
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v24)(v26, v27);
      if (v28)
      {
        break;
      }

      v29 = dispatch thunk of Collection.subscript.read();
      v31 = *v30;
      v29(v50, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v32 = v42;
      v45(v41 + *(*v37 + 72) * v31);
      v33 = v44;
      v50[0] = v48;
      v50[1] = v44;
      v50[2] = v38;
      v50[3] = v43;
      v50[4] = v39;
      v50[5] = v40;
      v34 = type metadata accessor for ForEachState.Edits();
      ForEachState.Edits.appendInsert(id:)(v32, v34);
    }

    return outlined destroy of IndexingIterator<IndexSet>(v21);
  }

  return result;
}

uint64_t type metadata accessor for EstimationCache()
{
  result = type metadata singleton initialization cache for EstimationCache;
  if (!type metadata singleton initialization cache for EstimationCache)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void storeEnumTagSinglePayload for MinorProperties(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  if (a3 <= v7)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v7 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
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
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v7 < a2)
  {
    v11 = ~v7 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v6 + 56);

  v16((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8, a2);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<CGFloat, Int>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for [_LazyLayout_Subview](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [_LazyLayout_Subview](255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithCopy for LazySubviewPlacements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v3 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v3;
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v4;
  v5 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v5;
  v6 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v6;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  v7 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v7;
  v8 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v8;
  v9 = *(a2 + 352);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = v9;
  v10 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v10;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  v11 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v11;
  *(a1 + 452) = *(a2 + 452);
  v12 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 456) = v12;

  return a1;
}

uint64_t destroy for LazySubviewPlacements()
{
}

uint64_t LazyLayoutViewCache.subviews(context:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    result = swift_beginAccess();
    v8 = *(v6 + 16);
    if (!v8)
    {
      __break(1u);
      return result;
    }

    v9 = v8;
    Counter = AGGraphGetCounter();
  }

  else
  {
    Counter = 0;
  }

  swift_beginAccess();
  if (*(v2 + 200) != Counter)
  {
    *(v2 + 200) = Counter;
    ++*(v2 + 208);
  }

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  InputValue = AGGraphGetInputValue();
  outlined init with copy of AnyTrackedValue(InputValue, a2 + 16);
  *(a2 + 56) = *(v2 + 136);
  *(a2 + 60) = 0;
  *(a2 + 109) = 0;
  *a2 = v2;
  *(a2 + 8) = a1;
  *(a2 + 112) = MEMORY[0x1E69E7CC0];
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 132) = 1;
  *(a2 + 133) = 0;
  *(a2 + 136) = 0;
}

void *initializeWithCopy for _LazyStack_Cache(void *a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = ((v7 + 16) & ~v7) + *(v5 + 64);
  if (!v6)
  {
    if (!*(a2 + v9))
    {
      goto LABEL_24;
    }

    v10 = (*(a2 + v9) - 1) << (8 * v9);
    if (v9 > 3)
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9 <= 3 ? ((v7 + 16) & ~v7) + *(v5 + 64) : 4;
      if (v11 > 2)
      {
        v12 = v11 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v12 = v11 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v12 = 0;
    }

    if ((v12 | v10) == 0xFFFFFFFF)
    {
      goto LABEL_24;
    }

LABEL_20:
    if (v6)
    {
      v13 = v9;
    }

    else
    {
      v13 = v9 + 1;
    }

    memcpy(a1, a2, v13);
    goto LABEL_26;
  }

  if ((*(v5 + 48))((((a2 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & v8, *(v5 + 84), AssociatedTypeWitness))
  {
    goto LABEL_20;
  }

LABEL_24:
  *a1 = *a2;
  v14 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  (*(v5 + 16))((v14 + v7 + 8) & v8, (v15 + v7 + 8) & v8, AssociatedTypeWitness);
  if (!v6)
  {
    *(a1 + v9) = 0;
  }

LABEL_26:
  if (v6)
  {
    v16 = v9;
  }

  else
  {
    v16 = v9 + 1;
  }

  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  v22 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = type metadata accessor for IndexSet();
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v35 = *(v33 + 80);
  v36 = *(v33 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v37 = ((v30 + v35 + 8) & v36);
  v38 = ((v31 + v35 + 8) & v36);
  *v37 = *v38;
  v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v41 = v39 + v35 + 8;
  v42 = v40 + v35 + 8;

  v34(v41 & ~v35, v42 & ~v35, v32);
  return a1;
}

uint64_t LazyStack<>.resolveMinorProperties(minorSize:cache:)@<X0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v22 = *a1;
  v15 = (*(a3 + 72))(&v21 - v13, &v22, a2, a3);
  if (v15 < 1 || (v16 = v22, v22 <= 0.0))
  {
    (*(v9 + 8))(v14, AssociatedTypeWitness);
    v18 = 1;
  }

  else
  {
    v17 = v15;
    (*(v9 + 32))(v11, v14, AssociatedTypeWitness);
    MinorProperties.init(count:size:geometry:)(v17, v11, a4, v16);
    v18 = 0;
  }

  v19 = type metadata accessor for MinorProperties();
  return (*(*(v19 - 8) + 56))(a4, v18, 1, v19);
}

void AlignmentKey.fraction.getter(unint64_t a1)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = static LayoutComputer.defaultValue;
  v3 = one-time initialization token for typeCache;

  if (v3 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (a1 < 2)
  {
    __break(1u);
  }

  else if (a1 >> 1 <= *(off_1ED537F58 + 2))
  {
    v4 = (off_1ED537F58 + 16 * (a1 >> 1) + 16);
    v5 = *v4;
    v6 = v4[1];
    os_unfair_lock_unlock(&static AlignmentKey.typeCache);
    v12[0] = v2;
    __asm { FMOV            V0.2D, #1.0 }

    v12[1] = _Q0;
    v12[2] = _Q0;
    (*(v6 + 8))(v12, v5, v6);

    return;
  }

  __break(1u);
}

void AlignmentGuide.fraction.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();

  AlignmentKey.fraction.getter(v2);
}

uint64_t MinorProperties.init(count:size:geometry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  v6 = *(type metadata accessor for MinorProperties() + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 32);

  return v8(a3 + v6, a2, AssociatedTypeWitness);
}

uint64_t getEnumTagSinglePayload for MinorProperties(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v13 = *(v5 + 48);

    return v13((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7);
  }

  v8 = ((v7 + 16) & ~v7) + *(*(AssociatedTypeWitness - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((a2 - v6 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v6 + (v8 | v12) + 1;
}

uint64_t specialized LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a7;
  v18 = a5;
  v12 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF12CoreGraphics7CGFloatV_s5NeverOSbTg5(partial apply for closure #1 in LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:), v15, a1, a2 & 1);
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a5;
  return (v12 | _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF12CoreGraphics7CGFloatV_s5NeverOSbTg5(partial apply for closure #2 in LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:), v14, a3, a4 & 1)) & 1;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF12CoreGraphics7CGFloatV_s5NeverOSbTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 2;
  }

  v6 = a3;
  result = a1(&var1, &v6);
  if (!v4)
  {
    return var1;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in LazyStack<>.shouldResetEstimates(visibleLength:containerLength:cache:)@<X0>(double *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *a1;
  result = type metadata accessor for _LazyStack_Cache();
  v7 = *(v4 + *(result + 56));
  v8 = v7 > 0.0;
  if (v5 <= 0.0)
  {
    v8 = 0;
  }

  if (vabdd_f64(v7, v5) < 0.01)
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(double *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v104 = a5;
  v93 = a4;
  v103 = a2;
  v11 = type metadata accessor for MinorProperties();
  v100 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v87 = (&v84 - v12);
  v13 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v84 - v15;
  v102 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v84 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v84 - v24;
  v92 = (*(a7 + 32))(a6, a7, v23);
  v108 = 0;
  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  v91 = a1;
  v26 = *a1;
  v27 = a7;
  v28 = v104;
  *&result = COERCE_DOUBLE(type metadata accessor for _LazyStack_Cache());
  v88 = *(result + 60);
  v30 = *(*(v28 + v88) + 16);
  v90 = result;
  v31 = (v28 + *(result + 40));
  v33 = *v31;
  v32 = v31[1];
  v96 = v33;
  v101 = a3;
  v97 = a6;
  v98 = v30;
  v99 = v27;
  if (v33 == v32)
  {
    goto LABEL_8;
  }

  v85 = v32;
  v34 = v100;
  (*(v100 + 16))(v25, a3, v11);
  (*(v34 + 56))(v25, 0, 1, v11);
  v35 = *(v102 + 16);
  v35(v21, v28, v13);
  v86 = TupleTypeMetadata2;
  v36 = *(TupleTypeMetadata2 + 48);
  v35(v16, v25, v13);
  v35(&v16[v36], v21, v13);
  v37 = *(v34 + 48);
  if (v37(v16, 1, v11) == 1)
  {
    v38 = v21;
    v39 = *(v102 + 8);
    v39(v38, v13);
    v39(v25, v13);
    v40 = v37(&v16[v36], 1, v11);
    v41 = v104;
    a3 = v101;
    v27 = v99;
    if (v40 == 1)
    {
      *&result = COERCE_DOUBLE((v39)(v16, v13));
      v42 = v85;
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v35(v95, v16, v13);
  v43 = v37(&v16[v36], 1, v11);
  v44 = (v100 + 8);
  if (v43 == 1)
  {
    v45 = *(v102 + 8);
    v45(v21, v13);
    v45(v25, v13);
    (*v44)(v95, v11);
    a3 = v101;
    v27 = v99;
LABEL_7:
    *&result = COERCE_DOUBLE((*(v89 + 8))(v16, v86));
    v30 = v98;
LABEL_8:
    if (v30)
    {
      v46 = *v103;
      if (*v103 < 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }

    v47 = *a3;
    if (*a3 + 0x4000000000000000 >= 0)
    {
      v42 = 2 * v47;
      v108 = 2 * v47;
      v46 = *v103;
      goto LABEL_21;
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v48 = v100 + 32;
  v49 = v87;
  (*(v100 + 32))(v87, &v16[v36], v11);
  v50 = v95;
  LODWORD(v100) = static MinorProperties.== infix(_:_:)(v95, v49);
  v51 = *(v48 - 24);
  v51(v49, v11);
  v52 = *(v102 + 8);
  v52(v21, v13);
  v52(v25, v13);
  v51(v50, v11);
  *&result = COERCE_DOUBLE((v52)(v16, v13));
  v30 = v98;
  v27 = v99;
  v41 = v104;
  a3 = v101;
  v42 = v85;
  if ((v100 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v53 = v103;
  v54 = v96;
  *v103 = v96;
  v108 = v42;
  v26 = *(v41 + *(v90 + 44));
  v55 = *a3;
  v46 = v54;
  v56 = __OFSUB__(v54, v55);
  v57 = v54 < v55;
  v58 = v54 - v55;
  if (!v57)
  {
    *(v105 + 16) = 1;
    if (v56)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    *v53 = v58;
    v46 = v58;
  }

  if (__OFSUB__(v42, v46))
  {
    goto LABEL_39;
  }

  if (v42 - v46 > 1)
  {
    goto LABEL_21;
  }

  v56 = __OFADD__(v42, v55);
  v42 += v55;
  if (!v56)
  {
    v108 = v42;
LABEL_21:
    if (v46 < v42)
    {
LABEL_22:
      v102 = swift_allocObject();
      *(v102 + 16) = 0;
      v59 = swift_allocObject();
      v95 = v59;
      *(v59 + 16) = Array.init()();
      v60 = swift_allocObject();
      v89 = v60;
      *(v60 + 16) = 0;
      v87 = (v60 + 16);
      type metadata accessor for EstimationCache();
      v100 = swift_allocBox();
      v62 = v61;
      v63 = MEMORY[0x1E69E7CC0];
      *v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v62[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v63);
      type metadata accessor for IndexSet();
      v106[0] = v63;
      lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
      v64 = MEMORY[0x1E69E6530];
      type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v64);
      v86 = v62;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v65 = swift_allocObject();
      *(v65 + 16) = 0;
      v107 = v46;
      v66 = v101;
      v67 = *v101;
      v106[0] = 2 * *v101;
      MEMORY[0x1EEE9AC00](v65);
      *(&v84 - 14) = v97;
      *(&v84 - 13) = v27;
      *(&v84 - 12) = v59;
      *(&v84 - 11) = v66;
      v68 = v105;
      *(&v84 - 10) = v69;
      *(&v84 - 9) = v68;
      v70 = v94;
      v71 = v102;
      *(&v84 - 8) = v94;
      *(&v84 - 7) = v71;
      v72 = v89;
      v73 = v100;
      *(&v84 - 6) = v89;
      *(&v84 - 5) = v73;
      v74 = v103;
      v81 = v103;
      LOBYTE(v82) = v92 & 1;
      v83 = &v108;
      _LazyLayout_Subviews.apply(from:style:to:)(&v107, v106, partial apply for closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:), (&v84 - 16));
      swift_beginAccess();
      if ((*(v65 + 16) & 1) == 0)
      {
        flushMinorGroup #1 <A>() in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(v65, v95, v66, v105, v70, v102, v72, v100, v74, v97, v99);
      }

      if (v98)
      {
        goto LABEL_34;
      }

      v75 = v86;
      swift_beginAccess();
      EstimationCache.merge(_:)(v75);
      *&result = COERCE_DOUBLE(EstimationCache.average.getter());
      if (v67)
      {
        if (v96 == 0x8000000000000000 && v67 == -1)
        {
          goto LABEL_44;
        }

        if ((v96 / v67 * v67) >> 64 == (v96 / v67 * v67) >> 63)
        {
          v78 = 0.0;
          if ((v76 & 1) == 0)
          {
            v78 = *&result;
          }

          v79 = (v77 + v78) * (v96 / v67 * v67);
          if ((v96 / v67 < 1) | v76 & 1)
          {
            v26 = v79;
          }

          else
          {
            v26 = v79 - *&result;
          }

LABEL_34:
          v80 = v87;
          swift_beginAccess();
          *v91 = v26 + *v80;
          if (*(v65 + 16) == 1)
          {
            AGGraphCancelUpdate();
          }

          goto LABEL_37;
        }

        goto LABEL_41;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_37:
    *&result = COERCE_DOUBLE();
    return result;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_18D1DCCF8()
{

  return swift_deallocObject();
}

uint64_t _LazyLayout_Subviews.apply(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = swift_allocObject();
  v10 = v4[17];
  if (__OFADD__(*a1, v10))
  {
    __break(1u);
  }

  *(v9 + 16) = *a1 + v10;
  v11 = v4[15];
  v17[0] = v4[14];
  v17[1] = v11;
  v16 = v8;
  v18 = v17;
  v19 = 1;
  MEMORY[0x1EEE9AC00](v9);
  v15[2] = v4;
  v15[3] = v12;
  v15[4] = a3;
  v15[5] = a4;

  v13 = _ViewList_Node.applyNodes(from:style:transform:to:)(a1, &v16, &v18, partial apply for closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:), v15);

  return v13 & 1;
}

uint64_t _ViewList_Node.applyNodes(from:style:transform:to:)(void *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void *, unint64_t *, __int128 *, unint64_t *), uint64_t a5)
{
  v7 = *a2;
  v39 = *a3;
  v40 = *(a3 + 8);
  result = outlined init with copy of _ViewList_Node(v5, &v54);
  if (v59 > 1u)
  {
    v15 = a1;
    if (v59 == 2)
    {
      v16 = 0;
      v17 = v54;
      v18 = *(v54 + 16);
      v37 = v54 + 32;
      while (1)
      {
        if (v16 == v18)
        {
          v16 = v18;
          v46 = 0u;
          memset(v47, 0, 28);
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v16 >= *(v17 + 16))
          {
            goto LABEL_36;
          }

          outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v37 + 48 * v16++, &v46, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
        }

        *&v44[12] = *&v47[12];
        v43 = v46;
        *v44 = *v47;
        v14 = *&v47[8] == 0;
        if (*&v47[8])
        {
          v19 = *&v44[24];
          outlined init with take of AnyTrackedValue(&v43, &v46);
          v20 = *&v47[8];
          v21 = *&v47[16];
          __swift_project_boxed_opaque_existential_1(&v46, *&v47[8]);
          v53 = v7;
          v51 = v39;
          v52 = v40;
          v22 = *(v21 + 64);
          v50 = 0;
          v23 = v22(v15, &v53, v19, &v51, a4, a5, v20, v21);
          result = __swift_destroy_boxed_opaque_existential_1(&v46);
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_33;
      }
    }

    v26 = *(&v54 + 1);
    if (BYTE8(v55) != 1)
    {
      v31 = *(*(&v54 + 1) + 16);
      v38 = *(&v54 + 1) + 32;

      v32 = 0;
      if (v31)
      {
        goto LABEL_23;
      }

LABEL_22:
      v32 = v31;
      v46 = 0u;
      memset(v47, 0, 28);
      while (1)
      {
        *&v44[12] = *&v47[12];
        v43 = v46;
        *v44 = *v47;
        v14 = *&v47[8] == 0;
        if (!*&v47[8])
        {

          swift_bridgeObjectRelease_n();
          return v14 & 1;
        }

        v33 = *&v44[24];
        outlined init with take of AnyTrackedValue(&v43, &v46);
        v34 = *&v47[8];
        v35 = *&v47[16];
        __swift_project_boxed_opaque_existential_1(&v46, *&v47[8]);
        v53 = v7;
        v51 = v39;
        v52 = v40;
        v36 = *(v35 + 64);
        v50 = 0;
        if ((v36(v15, &v53, v33, &v51, a4, a5, v34, v35) & 1) == 0)
        {
          break;
        }

        result = __swift_destroy_boxed_opaque_existential_1(&v46);
        if (v32 == v31)
        {
          goto LABEL_22;
        }

LABEL_23:
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v32 >= *(v26 + 16))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v38 + 48 * v32++, &v46, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      }

      __swift_destroy_boxed_opaque_existential_1(&v46);
LABEL_33:

      return v14 & 1;
    }

    if (*(*(&v54 + 1) + 16))
    {
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(*(&v54 + 1) + 32, &v43, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      outlined init with take of AnyTrackedValue(&v43, &v46);
      v27 = *&v47[8];
      v28 = *&v47[16];
      __swift_project_boxed_opaque_existential_1(&v46, *&v47[8]);
      v51 = v7;
      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v26 + 32, &v43, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>));
      v29 = *&v44[24];
      __swift_destroy_boxed_opaque_existential_1(&v43);

      *&v43 = v39;
      BYTE8(v43) = v40;
      v30 = *(v28 + 64);
      LOBYTE(v53) = 0;
      v14 = v30(a1, &v51, v29, &v43, a4, a5, v27, v28);
      __swift_destroy_boxed_opaque_existential_1(&v46);
      return v14 & 1;
    }
  }

  else
  {
    if (!v59)
    {
      v9 = DWORD2(v56);
      v10 = BYTE12(v56);
      outlined init with take of AnyTrackedValue(&v54, &v43);
      v12 = *&v44[16];
      v11 = *&v44[8];
      __swift_project_boxed_opaque_existential_1(&v43, *&v44[8]);
      v51 = v7;
      *&v46 = v39;
      BYTE8(v46) = v40;
      v13 = *(v12 + 64);
      LOBYTE(v53) = v10;
      v14 = v13(a1, &v51, v9 | (v10 << 32), &v46, a4, a5, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v43);
      return v14 & 1;
    }

    *&v47[16] = v56;
    v48 = v57;
    v49[0] = *v58;
    *(v49 + 13) = *&v58[13];
    v46 = v54;
    *v47 = v55;
    v24 = *(&v54 + 1);
    if ((v7 & 1) == 0 || (v24 = *(&v46 + 1) * (v7 >> 1), (*(&v46 + 1) * (v7 >> 1)) >> 64 == v24 >> 63))
    {
      v25 = *a1 - v24;
      if (*a1 >= v24)
      {
        outlined destroy of _ViewList_Sublist(&v46);
        *a1 = v25;
        v14 = 1;
      }

      else
      {
        v53 = v7;
        outlined init with copy of _ViewList_Sublist(&v46, &v43);
        v45 = 1;
        v51 = v39;
        v52 = v40;
        v14 = a4(a1, &v53, &v43, &v51);
        outlined destroy of _ViewList_Node(&v43);
        outlined destroy of _ViewList_Sublist(&v46);
        *a1 = 0;
      }

      return v14 & 1;
    }

LABEL_39:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t closure #1 in closure #1 in _LazyLayout_Subviews.apply(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, void (*a7)(__int128 *, _BYTE *), unint64_t a8)
{
  v13 = *a2;
  v52 = *a4;
  LODWORD(v53) = *(a4 + 8);
  v14 = *(a5 + 32);
  v48 = *(a5 + 132);
  LODWORD(v49) = v14;
  v15 = *(a5 + 133);
  v46 = *(a5 + 134);
  v47 = v15;
  v16 = outlined init with copy of _ViewList_Node(a3, &v74);
  if (v79 > 2u)
  {
    LODWORD(v54) = v74;
    *(&v54 + 1) = *(&v74 + 1);
    *&v55[0] = v75;
    BYTE8(v55[0]) = BYTE8(v75);
    v57 = v13;
    *v71 = v52;
    v71[8] = v53;
    MEMORY[0x1EEE9AC00](v16);
    v40 = a5;
    v41 = a6;
    v42 = a7;
    v43 = a8;
    v27 = _ViewList_Section.applyNodes(from:style:transform:to:)(a1, &v57, v71, partial apply for closure #2 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:), v39);

    return v27 & 1;
  }

  if (v79 == 1)
  {
    *&v71[32] = v76;
    v72 = v77;
    v73[0] = *v78;
    *(v73 + 13) = *&v78[13];
    *v71 = v74;
    *&v71[16] = v75;
    v17 = *(&v74 + 1);
    if (v13)
    {
      v17 = *(&v74 + 1) * (v13 >> 1);
      if ((*(&v74 + 1) * (v13 >> 1)) >> 64 != v17 >> 63)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    v18 = *a1 - v17;
    if (*a1 >= v17)
    {
      outlined destroy of _ViewList_Sublist(v71);
      *a1 = v18;
    }

    else
    {
      v51 = a6;
      *&v54 = v52;
      BYTE8(v54) = v53;
      _ViewList_TemporarySublistTransform.apply(sublist:)(v71);
      v19 = *v71;
      if (*&v71[8] < *v71)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      swift_beginAccess();
      swift_beginAccess();
      if (v19 != *(&v19 + 1))
      {
        v20 = 0x80000000;
        if (v19 > 0x80000000)
        {
          v20 = v19;
        }

        v53 = v20;
        v21 = v19;
        v44[1] = a8;
        v45 = a7;
        while (1)
        {
          v69[0] = 0;
          if (v19 < 0xFFFFFFFF80000000)
          {
            break;
          }

          if (v53 == v21)
          {
            goto LABEL_35;
          }

          v22 = *&v71[20];
          v23 = *&v71[24];
          outlined init with copy of _ViewList_SubgraphElements(&v71[32], &v57);
          v59 = v21;
          v60 = v22;
          v61 = v23;
          v62 = *&v73[1];
          v63 = DWORD2(v73[1]);
          v64 = BYTE12(v73[1]);
          v65 = v49;
          v66 = v48;
          v67 = v47;
          v68 = v46;
          v24 = *a5;
          v25 = *(a5 + 2);
          outlined init with copy of _LazyLayout_Subview.Data(&v57, v55);
          v26 = *(v51 + 16);
          *&v54 = v24;
          DWORD2(v54) = v25;
          v56 = v26;

          v45(&v54, v69);
          outlined destroy of _LazyLayout_Subview(&v54);
          outlined destroy of _LazyLayout_Subview.Data(&v57);
          ++*(v51 + 16);
          if (v69[0] == 1)
          {
            outlined destroy of _ViewList_Sublist(v71);
            v27 = 0;
            return v27 & 1;
          }

          if (*(&v19 + 1) == ++v21)
          {
            goto LABEL_15;
          }
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_15:
      outlined destroy of _ViewList_Sublist(v71);
    }

    v27 = 1;
    return v27 & 1;
  }

  v50 = a1;
  v51 = v13;
  if (v79 == 2)
  {
    v44[0] = v44;
    MEMORY[0x1EEE9AC00](v16);
    v28 = 0;
    v39[0] = a5;
    v39[1] = a6;
    v40 = a7;
    v41 = a8;
    LODWORD(v42) = v49;
    BYTE4(v42) = v48;
    BYTE5(v42) = v47;
    BYTE6(v42) = v46;
    v30 = v29 + 32;
    v49 = v29;
    v31 = *(v29 + 16);
    if (v31)
    {
      goto LABEL_22;
    }

LABEL_25:
    v28 = v31;
    memset(v71, 0, 44);
    while (1)
    {
      *(v55 + 12) = *&v71[28];
      v54 = *v71;
      v55[0] = *&v71[16];
      v27 = *&v71[24] == 0;
      if (!*&v71[24] || (v32 = DWORD2(v55[1]), outlined init with take of _ViewList_Elements(&v54, v71), v33 = *&v71[24], v34 = *&v71[32], __swift_project_boxed_opaque_existential_1(v71, *&v71[24]), v70[0] = v51, v57 = v52, v58 = v53, v35 = *(v34 + 64), v69[1] = 0, v36 = v35(v50, v70, v32, &v57, partial apply for closure #1 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:), &v38, v33, v34), __swift_destroy_boxed_opaque_existential_1(v71), (v36 & 1) == 0))
      {

        return v27 & 1;
      }

      if (v28 == v31)
      {
        goto LABEL_25;
      }

LABEL_22:
      if ((v28 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v28 >= *(v49 + 16))
      {
        goto LABEL_33;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v30 + 48 * v28++, v71);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_38:
  LODWORD(v43) = 0;
  v42 = 570;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(uint64_t a1, BOOL *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12, void *a13, uint64_t a14, uint64_t a15)
{
  v17 = a5;
  if ((*(a1 + 101) & 1) == 0 && (*(a1 + 102) & 1) == 0)
  {
    outlined init with copy of _LazyLayout_Subview(a1, v44);
    swift_beginAccess();
    type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    Array.append(_:)();
    swift_endAccess();
    swift_beginAccess();

    v25 = MEMORY[0x193ABF270](v24, &type metadata for _LazyLayout_Subview);

    if (v25 == *a4)
    {
      flushMinorGroup #1 <A>() in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(v17, a3, a4, a6, a7, a8, a9, a10, a11, a14, a15);
    }

    goto LABEL_26;
  }

  flushMinorGroup #1 <A>() in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(a5, a3, a4, a6, a7, a8, a9, a10, a11, a14, a15);
  swift_beginAccess();
  if (*(a6 + 16))
  {
    result = swift_beginAccess();
    *(a6 + 16) = 0;
  }

  else
  {
    if (a12)
    {
      v22 = *(a4 + 1);
    }

    else
    {
      v22 = 0;
    }

    v36 = v22;
    if (a12)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(a4 + 1);
    }

    swift_beginAccess();
    v37 = v17;
    if (*(a8 + 16))
    {
      Array.subscript.getter();
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      memset(v44, 0, sizeof(v44));
    }

    (*(a15 + 40))(a14, a15);
    LazyLayoutViewCache.item(data:)((a1 + 16));

    v40 = v36;
    v41 = (a12 & 1) == 0;
    v42 = v23;
    v43 = a12 & 1;
    v26 = LayoutProxy.lengthThatFits(_:in:)(&v40, a12 & 1);
    v28 = v27;
    MEMORY[0x1EEE9AC00](v26);
    *&v29 = COERCE_DOUBLE(_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply));
    v31 = v30;
    outlined destroy of _LazyLayout_Subview?(v44, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_Subview]);
    v32 = *&v29;
    if (v31)
    {
      v32 = 0.0;
    }

    v33 = v28 + v32;
    result = swift_beginAccess();
    *(a9 + 16) = v33 + *(a9 + 16);
    v17 = v37;
  }

  v34 = *a4;
  if (__OFADD__(*a11, *a4))
  {
    __break(1u);
    goto LABEL_31;
  }

  *a11 += *a4;
  if (v34 < 0)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  if (v34)
  {
    swift_beginAccess();
    do
    {
      outlined init with copy of _LazyLayout_Subview(a1, v44);
      type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
      Array.append(_:)();
      --v34;
    }

    while (v34);
    swift_endAccess();
  }

  swift_beginAccess();
  swift_beginAccess();
  swapSubviews(_:_:)((a8 + 16), (a3 + 16));
  swift_endAccess();
  swift_endAccess();
LABEL_26:
  result = swift_beginAccess();
  v35 = (*(v17 + 16) & 1) != 0 || *a11 >= *a13;
  *a2 = v35;
  return result;
}

uint64_t initializeWithCopy for _LazyLayout_Subview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 16, a2 + 16, v5);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 99) = *(a2 + 99);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t destroy for _LazyLayout_Subview(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 16);
}

uint64_t flushMinorGroup #1 <A>() in LazyStack<>.measureEstimates(updatingPosition:index:minor:subviews:cache:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for EstimationCache();
  swift_projectBox();
  swift_beginAccess();
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [_LazyLayout_Subview] and conformance [A], &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview);
  if (Collection.isEmpty.getter())
  {
    goto LABEL_10;
  }

  v17 = a9;
  swift_beginAccess();
  if (*(a4 + 16))
  {
    result = swift_beginAccess();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_beginAccess();
    swift_beginAccess();
    v19 = a3;
    v20 = *(a6 + 16);
    v21 = *(type metadata accessor for MinorProperties() + 40);
    v22 = *(a11 + 80);

    v24 = v22(v23, v20, &v19[v21], a10, a11);
    v26 = v25;

    a3 = v19;

    swift_beginAccess();
    *(a7 + 16) = v26 + v24 + *(a7 + 16);
    swift_beginAccess();
    v27 = *(a6 + 16) == 0;
    if (*(a6 + 16))
    {
      v28 = *&v26;
    }

    else
    {
      v28 = 0;
    }

    swift_beginAccess();
    EstimationCache.add(length:spacing:count:)(v28, v27, 1, v24);
    v17 = a9;
    result = swift_endAccess();
  }

  if (!__OFADD__(*v17, *a3))
  {
    *v17 += *a3;
    swift_beginAccess();
    swift_beginAccess();
    swapSubviews(_:_:)((a6 + 16), (a2 + 16));
    swift_endAccess();
    swift_endAccess();
LABEL_10:
    HasDeadlinePassed = AGGraphHasDeadlinePassed();
    result = swift_beginAccess();
    *(a1 + 16) = HasDeadlinePassed;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for SDFStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *result = a2 - 118;
    if (a3 >= 0x76)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t View.scrapeableAttachment(_:)(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v2 = v5;
  View.modifier<A>(_:)(&v5, a2, &type metadata for ScrapeableAttachmentViewModifier);
  v3 = v5;
  outlined copy of ScrapeableContent.Content?(v2);
  return outlined consume of ScrapeableContent.Content?(v3);
}

unint64_t *sub_18D1DE488(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if ((~*a2 & 0xF000000000000007) != 0)
  {
    v3 = result;
    outlined copy of ScrapeableContent.Content(*a2);
    result = v3;
  }

  *result = v2;
  return result;
}

unint64_t outlined copy of ScrapeableContent.Content(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 3)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  else
  {
    if (v1 > 5)
    {
      if (v1 != 6 && v1 != 7 && v1 != 8)
      {
        return result;
      }
    }

    if (v1 == 4 || v1 == 5)
    {
    }
  }

  return result;
}

unint64_t outlined copy of ScrapeableContent.Content?(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined copy of ScrapeableContent.Content(result);
  }

  return result;
}

unint64_t outlined consume of ScrapeableContent.Content?(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of ScrapeableContent.Content(result);
  }

  return result;
}

unint64_t outlined consume of ScrapeableContent.Content(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 3)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  else
  {
    if (v1 > 5)
    {
      if (v1 != 6 && v1 != 7 && v1 != 8)
      {
        return result;
      }
    }

    if (v1 == 4 || v1 == 5)
    {
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ScrapeableAttachmentViewModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t _LazyStack_Cache.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MinorProperties();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for _LazyStack_Cache();
  v4 = a1 + v3[9];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (a1 + v3[10]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v3[11]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v3[12]);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v3[13]) = 0xBFF0000000000000;
  *(a1 + v3[14]) = 0xBFF0000000000000;
  v8 = (a1 + v3[15]);
  v9 = MEMORY[0x1E69E7CC0];
  *v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v9);
  type metadata accessor for EstimationCache();
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type [[_LazyLayout_Subview]] and conformance [A](&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  v10 = MEMORY[0x1E69E6530];
  type metadata accessor for [_LazyLayout_Subview](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [_LazyLayout_Subview] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &lazy cache variable for type metadata for [Int], v10);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t LazyLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  (*(*&v5 + 16))(v8, v2, v4, v6);
  v14 = v11;
  v15 = *(v2 + *(a2 + 40));
  v63 = a2;
  v64 = v2;
  v16 = v2 + *(a2 + 48);
  v17 = *v16;
  v18 = *(v16 + 8);
  v20 = *(v16 + 16);
  v19 = *(v16 + 24);
  v22 = *(v16 + 32);
  v21 = *(v16 + 40);
  v23 = *(v16 + 48);
  v24 = *(v16 + 64);
  v25 = *(v16 + 80);
  v26 = *(v16 + 72);
  v27 = *(v16 + 56);
  v29 = *(v16 + 88);
  v28 = *(v16 + 96);
  v30 = *(v16 + 104);
  v31 = *(v16 + 112);
  v32 = *(v16 + 120);
  v33 = *(v16 + 128);
  v34 = *(v16 + 136);
  v35 = *(v16 + 160);
  v65 = v4;
  if ((v23 & 1) == 0)
  {
    if (v14)
    {
      if ((v18 & 1) == 0)
      {
        if (v30)
        {
          goto LABEL_21;
        }

LABEL_10:
        if ((v24 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      }
    }

    else if ((v18 & 1) != 0 || v10 != v17)
    {
      goto LABEL_2;
    }

    if (v13)
    {
      if (v19)
      {
        goto LABEL_38;
      }
    }

    else if ((v19 & 1) == 0 && v12 == v20)
    {
      goto LABEL_38;
    }
  }

LABEL_2:
  if (v30)
  {
    goto LABEL_21;
  }

  if (v14)
  {
    goto LABEL_10;
  }

  if ((v24 & 1) != 0 || *&v27 != v10)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v13)
  {
    if (v25)
    {
      goto LABEL_38;
    }
  }

  else if ((v25 & 1) == 0 && *&v26 == v12)
  {
    goto LABEL_38;
  }

LABEL_21:
  if (v35)
  {
LABEL_22:
    v50 = v30;
    v51 = v26;
    v52 = v27;
    v53 = v29;
    v49 = v15;
    v55 = v28;
    v56 = v23;
    v57 = v19;
    v58 = v20;
    v59 = v18;
    v60 = v17;
    v61 = v22;
    v62 = v5;
    v54 = v21;
    v36 = v14;
    swift_beginAccess();
    v37 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v37[4] = v10;
      *(v37 + 5) = v36;
      v37[6] = v12;
      *(v37 + 28) = v13;
    }

    v67 = v36;
    v66 = v13;
    v38 = v65;
    closure #1 in LazyLayoutComputer.Engine.sizeThatFits(_:)();
    v39 = v51;
    *(v16 + 112) = v52;
    *(v16 + 128) = v39;
    v40 = v55;
    *(v16 + 144) = v53;
    *(v16 + 152) = v40;
    *(v16 + 160) = v50;
    v41 = v59;
    *(v16 + 56) = v60;
    *(v16 + 64) = v41;
    v42 = v57;
    *(v16 + 72) = v58;
    *(v16 + 80) = v42;
    v43 = v54;
    *(v16 + 88) = v61;
    *(v16 + 96) = v43;
    *(v16 + 104) = v56;
    *v16 = v10;
    *(v16 + 8) = v36;
    *(v16 + 16) = v12;
    *(v16 + 24) = v13;
    *(v16 + 32) = v44;
    *(v16 + 40) = v45;
    *(v16 + 48) = 0;
    v5 = v62;
    return (*(*&v5 + 8))(v8, v38);
  }

  if (v14)
  {
    if ((v32 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v32 & 1) != 0 || v31 != v10)
  {
    goto LABEL_22;
  }

  if (v13)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v34 & 1) != 0 || v33 != v12)
  {
    goto LABEL_22;
  }

LABEL_38:
  v46 = v14;
  v62 = v10;
  swift_beginAccess();
  v47 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v47[4] = v62;
    *(v47 + 5) = v46;
    v47[6] = v12;
    *(v47 + 28) = v13 | 0x100;
  }

  v38 = v65;
  return (*(*&v5 + 8))(v8, v38);
}

unint64_t destroy for ScrapeableAttachmentViewModifier(unint64_t *a1)
{
  result = *a1;
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of ScrapeableContent.Content(result);
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.LazyLayoutCacheParentKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI19LazyLayoutViewCacheC6layout4list6inputsAC14AttributeGraph0J0VyxG_AIyAA0E4List_pGAA01_E6InputsVtcAA0cD0RzlufcyAA06UpdateeF033_EB2336F1CBB87914F55D10FF4F9B475ALLVzXEfU_TA_0(uint64_t a1)
{

  *(a1 + 8) = v1;
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24LazyLayoutReuseIdleInputV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24LazyLayoutReuseIdleInputV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for LazyLayoutReuseIdleInput)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t LazyLayoutViewCache.anyTransition(data:)(uint64_t a1)
{
  if (*(a1 + 76))
  {
    return 0;
  }

  v1 = *(a1 + 64);
  if ((_s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, v1) & 1) == 0)
  {
    return 0;
  }

  if (one-time initialization token for opacity != -1)
  {
    swift_once();
  }

  v2 = static AnyTransition.opacity;
  v3 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v1);
  if ((*(*v3 + 96))())
  {

    return 0;
  }

  AGGraphClearUpdate();
  swift_beginAccess();
  swift_beginAccess();
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  if (v6)
  {

    v8 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v7);
  }

  else
  {
    v8 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(*Value);
  }

  if (v8 == 2)
  {
    v11 = v7;
    v12 = v6;
    v10 = 3;
    v8 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v10);
  }

  v9 = AGGraphSetUpdate();
  if (((*(*v3 + 104))(v9) & 1) == 0)
  {
    return v3;
  }

  result = v3;
  if (v8)
  {

    return v2;
  }

  return result;
}

uint64_t LazyLayoutViewCache.reusedItem(data:anyTransition:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v252 = a1;
  v253 = a2;
  v287 = *MEMORY[0x1E69E9840];
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v269 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v267 = &v239 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v262 = &v239 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v256 = &v239 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v258 = &v239 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v249 = &v239 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v248 = &v239 - v15;
  swift_beginAccess();
  v16 = *(v2 + 176);
  v17 = *(v16 + 16);
  v264 = v3;
  if (v17)
  {
    v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v17, 0);
    v19 = specialized Sequence._copySequenceContents(initializing:)(&v284, v18 + 4, v17, v16);
    v20 = v285;

    outlined consume of Set<EventID>.Iterator._Variant();
    if (v19 != v17)
    {
      __break(1u);
LABEL_183:

      v225.n128_f64[0] = MEMORY[0x1EEE9AC00](v224);
      v226 = v264;
      v227 = v252;
      *(&v239 - 2) = v20;
      *(&v239 - 1) = v227;
      (*(*v226 + 432))(partial apply for implicit closure #7 in LazyLayoutViewCache.reusedItem(data:anyTransition:), v225);
      *&v284 = *(v227 + 40);

      v228 = _ViewList_SublistSubgraphStorage.retain()();

      *(v20 + 376) = v228;

      if (v18[303])
      {
        *&v284 = *(v20 + 24);
        AGGraphAddTraceEvent();
      }

      v229 = v252;
      v230 = *(v252 + 56);
      *(v20 + 144) = *(v252 + 48);
      *(v20 + 152) = v230;

      v231 = *(v229 + 84);
      v232 = *(v229 + 85);
      v233 = *(v229 + 86);
      *(v20 + 168) = *(v229 + 80);
      *(v20 + 172) = v231;
      *(v20 + 173) = v232;
      *(v20 + 174) = v233;
      LazyLayoutViewCache.addItem(_:data:reset:)(v20, v229, 1);
      v234 = *(v20 + 152);
      *&v278 = *(v20 + 144);
      *(&v278 + 1) = v234;

      _ViewList_ID.Canonical.init(id:)(&v278, &v284);
      v235 = v284;
      swift_beginAccess();
      v236 = v243;

      v237 = v239;
      specialized Dictionary.subscript.setter(v239, v236, v235, *(&v235 + 1));
      swift_endAccess();
      if (v236)
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v278 = v226[47];
        v226[47] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v235, *(&v235 + 1), v237, isUniquelyReferenced_nonNull_native);
        v226[47] = v278;
        swift_endAccess();

        v284 = v281;
        v285 = v282;
        *v286 = v283[0];
        *&v286[9] = *(v283 + 9);
        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
      }

      else
      {
        v284 = v281;
        v285 = v282;
        *v286 = v283[0];
        *&v286[9] = *(v283 + 9);
        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
      }

      return v20;
    }

    v3 = v264;
  }

  swift_beginAccess();
  v21 = specialized LazyLayoutViewCache.LeastRecentlyUsedItems.updatedItems<A>(_:)();
  swift_endAccess();

  v22 = v252;
  v23 = *(v252 + 56);
  *&v284 = *(v252 + 48);
  *(&v284 + 1) = v23;
  v268 = _ViewList_ID.reuseIdentifier.getter();
  v281 = 0uLL;
  *&v282 = 0;
  *(&v282 + 1) = 0x1FFFFFFFELL;
  memset(v283, 0, 25);
  v24 = *(v22 + 56);
  *&v25 = *(v22 + 48);
  v270 = v25;
  *&v284 = v25;
  *(&v284 + 1) = v24;
  v26 = _ViewList_ID.reuseIdentifier.getter();
  swift_beginAccess();
  if (static ReuseTrace.recorder)
  {
    *&v278 = v26;
    AGGraphAddTraceEvent();
  }

  v255 = v21 >> 62;
  if (v21 >> 62)
  {
LABEL_170:
    v27 = __CocoaSet.count.getter();
    if (v27)
    {
      goto LABEL_8;
    }

LABEL_171:

    if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5() & 1) == 0)
    {
      swift_beginAccess();
      if (*(&v282 + 1) >> 1 == 0xFFFFFFFFLL && BYTE8(v283[1]) <= 1u)
      {
        if (one-time initialization token for lazyLayoutReuse != -1)
        {
          swift_once();
        }

        v218 = __swift_project_value_buffer(v269, static Log.lazyLayoutReuse);
        v219 = MEMORY[0x1E69E9420];
        v220 = MEMORY[0x1E69E6720];
        v221 = v267;
        _s2os6LoggerVSgWOcTm_1(v218, v267, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
        v222 = type metadata accessor for Logger();
        v223 = (*(*(v222 - 8) + 48))(v221, 1, v222);
        _s2os6LoggerVSgWOhTm_1(v221, &lazy cache variable for type metadata for Logger?, 255, v219, v220);
        if (v223 != 1)
        {
          if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5())
          {
            (*(*v3 + 432))(specialized implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:), 0);
          }

          else
          {
            v284 = v281;
            v285 = v282;
            *v286 = v283[0];
            *&v286[9] = *(v283 + 9);
            outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
            *&v281 = 0;
            *(&v282 + 1) = 0;
            BYTE8(v283[1]) = 16;
          }
        }
      }

      goto LABEL_165;
    }

    goto LABEL_172;
  }

  v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_171;
  }

LABEL_8:
  v267 = v21 & 0xC000000000000001;
  swift_beginAccess();
  v3 = 0;
  v257 = "UnaryGlassContainerEnabled";
  v261 = v21 & 0xFFFFFFFFFFFFFF8;
  if (v21 < 0)
  {
    v28 = v21;
  }

  else
  {
    v28 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  v250 = v28;
  v247 = v270;
  v18 = &type metadata instantiation cache for Gradient.WatchDefinition;
  v29 = &property descriptor for SizingPreferences.size2D;
  v263 = v21;
  v266 = v27;
  do
  {
    if (v267)
    {
      v31 = MEMORY[0x193AC03C0](v3, v21);
      v32 = v31;
      v33 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_168;
      }
    }

    else
    {
      if (v3 >= *(v261 + 16))
      {
        goto LABEL_169;
      }

      v32 = *(v21 + 8 * v3 + 32);

      v33 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }
    }

    v34 = *(v32 + 160);
    *&v270 = v32;
    if (v34 == v268)
    {
      v35 = v264[52] - *(v32 + 184);
      v265 = v33;
      if (v35 >= 1)
      {
        if (*(v32 + 200) != v264[57] && *(v32 + 224) == 1)
        {
          v276 = *(v32 + 136);
          v277 = 0;
          if (v253)
          {
            (*(*v253 + 88))(&v276, &unk_1F00A1FB8, &protocol witness table for CompareTransitionType);
            if (v277 == 1)
            {
              v36 = *(v32 + 120);
              if (v36)
              {
                v37 = *(v32 + 104);
                *(&v274 + 1) = &type metadata for _ViewList_SubgraphElements;
                *&v275[0] = &protocol witness table for _ViewList_SubgraphElements;
                *&v273 = swift_allocObject();
                outlined init with copy of _ViewList_SubgraphElements(v252, v273 + 16);
                outlined init with copy of AnyTrackedValue(&v273, v271);
                v38 = type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for _ViewList_Elements);

                if (swift_dynamicCast())
                {
                  *v286 = v280[0];
                  v284 = v278;
                  v285 = v279;
                  *&v278 = *(&v280[0] + 1);
                  if (_ViewList_SublistSubgraphStorage.isValid.getter())
                  {
                    v243 = v38;
                    v244 = v36;
                    v39 = *(v32 + 80);
                    v40 = v32;
                    v41 = v37;
                    v42 = *(v40 + 88);
                    __swift_project_boxed_opaque_existential_1((v40 + 56), v39);
                    v43 = (*(v42 + 24))(v41, &v284, v247, v244, 1, v39, v42);
                    outlined destroy of _ViewList_SubgraphElements(&v284);
                    __swift_destroy_boxed_opaque_existential_1(&v273);
                    if (v43)
                    {
                      v44 = *(v40 + 144);
                      v45 = *(v40 + 148);
                      v46 = *(v40 + 152);
                      v47 = *(v46 + 16);
                      swift_bridgeObjectRetain_n();
                      if (v47)
                      {
                        v48 = *(v46 + 32);
                        v49 = *(v46 + 52);

                        swift_bridgeObjectRelease_n();
                        if (v49)
                        {
                          v45 = 0xFFFFFFFFLL;
                        }

                        else
                        {
                          v45 = v45;
                        }
                      }

                      else
                      {
                        swift_bridgeObjectRelease_n();
                        v48 = 0;
                      }

                      v183 = v264;
                      swift_beginAccess();
                      v184 = *(v183 + 22);
                      v18 = &type metadata instantiation cache for Gradient.WatchDefinition;
                      if (!*(v184 + 16) || (v185 = v44 | (v45 << 32), v186 = specialized __RawDictionaryStorage.find<A>(_:)(v185, v48), (v187 & 1) == 0))
                      {
                        result = swift_endAccess();
                        __break(1u);
                        return result;
                      }

                      v188 = *(*(v184 + 56) + 8 * v186);
                      swift_endAccess();
                      v189 = v264;
                      swift_beginAccess();

                      specialized Dictionary._Variant.removeValue(forKey:)(v185, v48);
                      swift_endAccess();

                      swift_beginAccess();
                      v190 = *(v189 + 46);
                      v191 = *(v190 + 16);
                      v241 = v185;
                      v242 = v188;
                      if (v191)
                      {
                        v192 = specialized __RawDictionaryStorage.find<A>(_:)(v185, v48);
                        v193 = v270;
                        if (v194)
                        {
                          v195 = (*(v190 + 56) + 16 * v192);
                          v197 = *v195;
                          v196 = v195[1];
                        }

                        else
                        {
                          v197 = 0;
                          v196 = 0;
                        }
                      }

                      else
                      {
                        v197 = 0;
                        v196 = 0;
                        v193 = v270;
                      }

                      swift_endAccess();
                      swift_beginAccess();
                      specialized Dictionary._Variant.removeValue(forKey:)(v241, v48);
                      swift_endAccess();

                      if (v196)
                      {
                        v241 = v48;
                        swift_beginAccess();
                        v198 = specialized __RawDictionaryStorage.find<A>(_:)(v197);
                        v200 = v199;

                        if (v200)
                        {
                          v201 = v197;
                          v202 = v196;
                          v203 = v264;
                          v204 = swift_isUniquelyReferenced_nonNull_native();
                          v205 = *(v203 + 47);
                          *&v278 = v205;
                          *(v203 + 47) = 0x8000000000000000;
                          if (!v204)
                          {
                            specialized _NativeDictionary.copy()();
                            v205 = v278;
                          }

                          specialized _NativeDictionary._delete(at:)(v198, v205);
                          *(v203 + 47) = v205;
                          v196 = v202;
                          v197 = v201;
                          v193 = v270;
                        }

                        swift_endAccess();

                        v48 = v241;
                      }

                      v240 = v193[13];
                      *(&v274 + 1) = &type metadata for _ViewList_SubgraphElements;
                      *&v275[0] = &protocol witness table for _ViewList_SubgraphElements;
                      *&v273 = swift_allocObject();
                      outlined init with copy of _ViewList_SubgraphElements(v252, v273 + 16);
                      outlined init with copy of AnyTrackedValue(&v273, v271);
                      if (swift_dynamicCast())
                      {
                        *v286 = v280[0];
                        v284 = v278;
                        v285 = v279;
                        *&v278 = *(&v280[0] + 1);
                        if (_ViewList_SublistSubgraphStorage.isValid.getter())
                        {
                          v239 = v197;
                          v243 = v196;
                          v241 = v48;
                          v206 = v193[10];
                          v207 = v193[11];
                          v20 = v193;
                          __swift_project_boxed_opaque_existential_1(v193 + 7, v206);
                          v208 = (*(v207 + 24))(v240, &v284, v247, v244, 0, v206, v207);
                          outlined destroy of _ViewList_SubgraphElements(&v284);
                          __swift_destroy_boxed_opaque_existential_1(&v273);
                          if (v208)
                          {
                            goto LABEL_183;
                          }

                          goto LABEL_100;
                        }

                        outlined destroy of _ViewList_SubgraphElements(&v284);
                      }

                      else
                      {

                        v279 = 0u;
                        v280[0] = 0u;
                        v278 = 0u;
                        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v278, &lazy cache variable for type metadata for _ViewList_SubgraphElements?, &type metadata for _ViewList_SubgraphElements);
                      }

                      __swift_project_boxed_opaque_existential_1(&v273, *(&v274 + 1));
                      v209 = static ReuseTrace.recorder;
                      if (static ReuseTrace.recorder)
                      {
                        DynamicType = swift_getDynamicType();
                        v211 = v209[2];
                        *&v284 = DynamicType;

                        v212 = v211;
                        AGGraphAddTraceEvent();
                      }

                      v21 = v263;
                      v30 = v266;
                      __swift_destroy_boxed_opaque_existential_1(&v273);
                      goto LABEL_102;
                    }

                    v32 = v40;
                    if (!v18[303])
                    {
LABEL_122:
                      if (one-time initialization token for lazyLayoutReuse != -1)
                      {
                        swift_once();
                      }

                      v160 = __swift_project_value_buffer(v269, static Log.lazyLayoutReuse);
                      v161 = v248;
                      _s2os6LoggerVSgWOcTm_1(v160, v248, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
                      v162 = type metadata accessor for Logger();
                      if ((*(*(v162 - 8) + 48))(v161, 1, v162) == 1)
                      {

                        _s2os6LoggerVSgWOhTm_1(v161, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
                        goto LABEL_101;
                      }

                      _s2os6LoggerVSgWOhTm_1(v161, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
                      v163 = swift_beginAccess();
                      if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
                      {
                        v164 = objc_opt_self();
                        v165 = [v164 v29[473]];
                        v166 = v257;
                        v167 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v257 | 0x8000000000000000);
                        v168 = [v165 objectForKey_];

                        if (v168)
                        {
                          _bridgeAnyObjectToAny(_:)();
                          swift_unknownObjectRelease();
                          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
                          v169 = [v164 v29[473]];
                          v170 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v166 | 0x8000000000000000);
                          v171 = [v169 BOOLForKey_];

                          static EnableLazyLayoutReuseLoggingAlways.cachedValue = v171;
                          v21 = v263;
                          if ((v171 & 1) == 0)
                          {
                            goto LABEL_133;
                          }

LABEL_131:
                          v172 = MEMORY[0x1EEE9AC00](v163);
                          v173 = v270;
                          *(&v239 - 2) = partial apply for implicit closure #8 in LazyLayoutViewCache.reusedItem(data:anyTransition:);
                          *(&v239 - 1) = v173;
                          (*(*v264 + 432))(implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:)partial apply, v172);

                          goto LABEL_101;
                        }

                        v285 = 0u;
                        v284 = 0u;
                        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
                        static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
                        v21 = v263;
                      }

                      else if (static EnableLazyLayoutReuseLoggingAlways.cachedValue)
                      {
                        goto LABEL_131;
                      }

LABEL_133:
                      v174 = v270;
                      v175 = *(v270 + 144);
                      v176 = *(v270 + 148);
                      v177 = *(v270 + 152);
                      v178 = *(v177 + 16);
                      swift_bridgeObjectRetain_n();

                      if (v178)
                      {
                        v179 = *(v177 + 32);
                        v180 = *(v177 + 52);

                        swift_bridgeObjectRelease_n();
                        if (v180)
                        {
                          v176 = 0xFFFFFFFFLL;
                        }

                        else
                        {
                          v176 = v176;
                        }
                      }

                      else
                      {

                        swift_bridgeObjectRelease_n();
                        v179 = 0;
                      }

                      v181 = *(v174 + 160);

                      LOBYTE(v278) = 0;
                      v182 = v245 & 1 | 0x50;
                      v284 = v281;
                      v285 = v282;
                      *v286 = v283[0];
                      *&v286[9] = *(v283 + 9);
                      outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
                      *&v281 = v175 | (v176 << 32);
                      *(&v281 + 1) = v179;
                      *&v282 = v181;
                      BYTE8(v282) = 0;
                      HIBYTE(v282) = 0;
                      *(&v282 + 13) = 0;
                      *(&v282 + 9) = 0;
                      v245 = v182;
                      BYTE8(v283[1]) = v182;
                      v18 = &type metadata instantiation cache for Gradient.WatchDefinition;
                      goto LABEL_101;
                    }

LABEL_121:
                    *&v284 = *(v32 + 24);
                    AGGraphAddTraceEvent();
                    goto LABEL_122;
                  }

                  outlined destroy of _ViewList_SubgraphElements(&v284);
                }

                else
                {
                  v279 = 0u;
                  v280[0] = 0u;
                  v278 = 0u;
                  outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v278, &lazy cache variable for type metadata for _ViewList_SubgraphElements?, &type metadata for _ViewList_SubgraphElements);
                }

                __swift_project_boxed_opaque_existential_1(&v273, *(&v274 + 1));
                v156 = v18[303];
                if (v156)
                {
                  v157 = swift_getDynamicType();
                  v158 = *(v156 + 16);
                  *&v284 = v157;

                  v159 = v158;
                  AGGraphAddTraceEvent();
                }

                v21 = v263;
                __swift_destroy_boxed_opaque_existential_1(&v273);
              }

              if (!v18[303])
              {
                goto LABEL_122;
              }

              goto LABEL_121;
            }
          }

          if (one-time initialization token for lazyLayoutReuse != -1)
          {
            swift_once();
          }

          v102 = __swift_project_value_buffer(v269, static Log.lazyLayoutReuse);
          v103 = MEMORY[0x1E69E9420];
          v104 = MEMORY[0x1E69E6720];
          v105 = v249;
          _s2os6LoggerVSgWOcTm_1(v102, v249, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
          v106 = type metadata accessor for Logger();
          v107 = (*(*(v106 - 8) + 48))(v105, 1, v106);
          _s2os6LoggerVSgWOhTm_1(v105, &lazy cache variable for type metadata for Logger?, 255, v103, v104);
          if (v107 == 1)
          {
            v29 = &property descriptor for SizingPreferences.size2D;
            v108 = v270;
            goto LABEL_113;
          }

          v117 = swift_beginAccess();
          v29 = &property descriptor for SizingPreferences.size2D;
          if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
          {
            v118 = objc_opt_self();
            v119 = [v118 standardUserDefaults];
            v120 = v257;
            v121 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v257 | 0x8000000000000000);
            v122 = [v119 objectForKey_];

            if (v122)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
              v123 = [v118 standardUserDefaults];
              v124 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v120 | 0x8000000000000000);
              v125 = [v123 BOOLForKey_];

              static EnableLazyLayoutReuseLoggingAlways.cachedValue = v125;
              if ((v125 & 1) == 0)
              {
                goto LABEL_107;
              }

LABEL_104:
              v146 = MEMORY[0x1EEE9AC00](v117);
              v108 = v270;
              *(&v239 - 2) = partial apply for implicit closure #4 in LazyLayoutViewCache.reusedItem(data:anyTransition:);
              *(&v239 - 1) = v108;
              (*(*v264 + 432))(implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:)partial apply, v146);
              v21 = v263;
              goto LABEL_113;
            }

            v285 = 0u;
            v284 = 0u;
            outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
            static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
          }

          else if (static EnableLazyLayoutReuseLoggingAlways.cachedValue)
          {
            goto LABEL_104;
          }

LABEL_107:
          v147 = v270;
          v148 = *(v270 + 144);
          v149 = *(v270 + 148);
          v150 = *(v270 + 152);
          v151 = *(v150 + 16);
          swift_bridgeObjectRetain_n();

          if (v151)
          {
            v151 = *(v150 + 32);
            v152 = *(v150 + 52);

            swift_bridgeObjectRelease_n();
            if (v152)
            {
              v149 = 0xFFFFFFFFLL;
            }

            else
            {
              v149 = v149;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v153 = *(v147 + 160);

          LOBYTE(v278) = 0;
          v154 = v246 & 1 | 0x40;
          v284 = v281;
          v285 = v282;
          *v286 = v283[0];
          *&v286[9] = *(v283 + 9);
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
          *&v281 = v148 | (v149 << 32);
          *(&v281 + 1) = v151;
          *&v282 = v153;
          BYTE8(v282) = 0;
          HIBYTE(v282) = 0;
          *(&v282 + 13) = 0;
          *(&v282 + 9) = 0;
          v246 = v154;
          BYTE8(v283[1]) = v154;
          v108 = v270;
          v21 = v263;
          v18 = &type metadata instantiation cache for Gradient.WatchDefinition;
LABEL_113:
          if (!v18[303])
          {
            goto LABEL_100;
          }

          v155 = *(v108 + 136);
          *&v284 = v276;
          *(&v284 + 1) = v155;
          AGGraphAddTraceEvent();
          v80 = v18[303];
          if (!v80)
          {
            goto LABEL_100;
          }

          goto LABEL_98;
        }

        if (one-time initialization token for lazyLayoutReuse != -1)
        {
          swift_once();
        }

        v67 = __swift_project_value_buffer(v269, static Log.lazyLayoutReuse);
        v68 = MEMORY[0x1E69E9420];
        v69 = MEMORY[0x1E69E6720];
        v70 = v258;
        _s2os6LoggerVSgWOcTm_1(v67, v258, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
        v71 = type metadata accessor for Logger();
        v72 = (*(*(v71 - 8) + 48))(v70, 1, v71);
        _s2os6LoggerVSgWOhTm_1(v70, &lazy cache variable for type metadata for Logger?, 255, v68, v69);
        if (v72 == 1)
        {
          v29 = &property descriptor for SizingPreferences.size2D;
          v73 = v18[303];
          if (!v73)
          {
            goto LABEL_100;
          }

          goto LABEL_89;
        }

        v82 = swift_beginAccess();
        v29 = &property descriptor for SizingPreferences.size2D;
        if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
        {
          v83 = objc_opt_self();
          v84 = [v83 standardUserDefaults];
          v85 = v257;
          v86 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v257 | 0x8000000000000000);
          v87 = [v84 objectForKey_];

          if (!v87)
          {
            v285 = 0u;
            v284 = 0u;
            outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
            static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
            goto LABEL_83;
          }

          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
          v88 = [v83 standardUserDefaults];
          v89 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v85 | 0x8000000000000000);
          v90 = [v88 BOOLForKey_];

          static EnableLazyLayoutReuseLoggingAlways.cachedValue = v90;
          if ((v90 & 1) == 0)
          {
LABEL_83:
            v126 = v270;
            v127 = *(v270 + 144);
            v128 = *(v270 + 148);
            v129 = *(v270 + 152);
            v130 = *(v129 + 16);
            swift_bridgeObjectRetain_n();

            if (v130)
            {
              v130 = *(v129 + 32);
              v131 = *(v129 + 52);

              swift_bridgeObjectRelease_n();
              if (v131)
              {
                v128 = 0xFFFFFFFFLL;
              }

              else
              {
                v128 = v128;
              }
            }

            else
            {
              swift_bridgeObjectRelease_n();
            }

            v132 = *(v126 + 160);

            LOBYTE(v278) = 0;
            v133 = v254 & 1 | 0x30;
            v284 = v281;
            v285 = v282;
            *v286 = v283[0];
            *&v286[9] = *(v283 + 9);
            outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
            *&v281 = v127 | (v128 << 32);
            *(&v281 + 1) = v130;
            *&v282 = v132;
            BYTE8(v282) = 0;
            HIBYTE(v282) = 0;
            *(&v282 + 13) = 0;
            *(&v282 + 9) = 0;
            v254 = v133;
            BYTE8(v283[1]) = v133;
            v21 = v263;
            v18 = &type metadata instantiation cache for Gradient.WatchDefinition;
            v73 = static ReuseTrace.recorder;
            if (!static ReuseTrace.recorder)
            {
              goto LABEL_100;
            }

LABEL_89:
            v134 = v73[2];
            *&v284 = *(v270 + 24);
            v135 = v284;

            v136 = v134;
LABEL_99:
            AGGraphAddTraceEvent();

LABEL_100:

LABEL_101:
            v30 = v266;
LABEL_102:
            v33 = v265;
            goto LABEL_13;
          }
        }

        else if ((static EnableLazyLayoutReuseLoggingAlways.cachedValue & 1) == 0)
        {
          goto LABEL_83;
        }

        v100 = MEMORY[0x1EEE9AC00](v82);
        v101 = v270;
        *(&v239 - 2) = partial apply for implicit closure #3 in LazyLayoutViewCache.reusedItem(data:anyTransition:);
        *(&v239 - 1) = v101;
        (*(*v264 + 432))(implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:)partial apply, v100);
        v21 = v263;
        v73 = v18[303];
        if (!v73)
        {
          goto LABEL_100;
        }

        goto LABEL_89;
      }

      if (one-time initialization token for lazyLayoutReuse != -1)
      {
        swift_once();
      }

      v74 = __swift_project_value_buffer(v269, static Log.lazyLayoutReuse);
      v75 = MEMORY[0x1E69E9420];
      v76 = MEMORY[0x1E69E6720];
      v77 = v256;
      _s2os6LoggerVSgWOcTm_1(v74, v256, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
      v78 = type metadata accessor for Logger();
      v79 = (*(*(v78 - 8) + 48))(v77, 1, v78);
      _s2os6LoggerVSgWOhTm_1(v77, &lazy cache variable for type metadata for Logger?, 255, v75, v76);
      if (v79 == 1)
      {
        v29 = &property descriptor for SizingPreferences.size2D;
        v80 = v18[303];
        if (!v80)
        {
          goto LABEL_100;
        }

        goto LABEL_97;
      }

      v91 = swift_beginAccess();
      v29 = &property descriptor for SizingPreferences.size2D;
      if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
      {
        v92 = objc_opt_self();
        v93 = [v92 standardUserDefaults];
        v94 = v257;
        v95 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v257 | 0x8000000000000000);
        v96 = [v93 objectForKey_];

        if (!v96)
        {
          v285 = 0u;
          v284 = 0u;
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
          static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
          goto LABEL_91;
        }

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
        v97 = [v92 standardUserDefaults];
        v98 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v94 | 0x8000000000000000);
        v99 = [v97 BOOLForKey_];

        static EnableLazyLayoutReuseLoggingAlways.cachedValue = v99;
        if ((v99 & 1) == 0)
        {
LABEL_91:
          v137 = v270;
          v138 = *(v270 + 144);
          v139 = *(v270 + 148);
          v140 = *(v270 + 152);
          v141 = *(v140 + 16);
          swift_bridgeObjectRetain_n();

          if (v141)
          {
            v141 = *(v140 + 32);
            v142 = *(v140 + 52);

            swift_bridgeObjectRelease_n();
            if (v142)
            {
              v139 = 0xFFFFFFFFLL;
            }

            else
            {
              v139 = v139;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v143 = *(v137 + 160);

          LOBYTE(v278) = 0;
          v144 = v251 & 1 | 0x20;
          v284 = v281;
          v285 = v282;
          *v286 = v283[0];
          *&v286[9] = *(v283 + 9);
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
          *&v281 = v138 | (v139 << 32);
          *(&v281 + 1) = v141;
          *&v282 = v143;
          BYTE8(v282) = 0;
          HIBYTE(v282) = 0;
          *(&v282 + 13) = 0;
          *(&v282 + 9) = 0;
          v251 = v144;
          BYTE8(v283[1]) = v144;
          v21 = v263;
          v18 = &type metadata instantiation cache for Gradient.WatchDefinition;
          v80 = static ReuseTrace.recorder;
          if (!static ReuseTrace.recorder)
          {
            goto LABEL_100;
          }

LABEL_97:
          v108 = v270;
LABEL_98:
          v145 = v80[2];
          *&v284 = *(v108 + 24);
          v135 = v284;

          v136 = v145;
          goto LABEL_99;
        }
      }

      else if ((static EnableLazyLayoutReuseLoggingAlways.cachedValue & 1) == 0)
      {
        goto LABEL_91;
      }

      v115 = MEMORY[0x1EEE9AC00](v91);
      v116 = v270;
      *(&v239 - 2) = partial apply for implicit closure #2 in LazyLayoutViewCache.reusedItem(data:anyTransition:);
      *(&v239 - 1) = v116;
      (*(*v264 + 432))(implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:)partial apply, v115);
      v21 = v263;
      v80 = v18[303];
      if (!v80)
      {
        goto LABEL_100;
      }

      goto LABEL_97;
    }

    MEMORY[0x1EEE9AC00](v31);
    *(&v239 - 2) = v21;
    if (one-time initialization token for lazyLayoutReuse != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v269, static Log.lazyLayoutReuse);
    v51 = MEMORY[0x1E69E9420];
    v52 = MEMORY[0x1E69E6720];
    v53 = v262;
    _s2os6LoggerVSgWOcTm_1(v50, v262, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
    v54 = type metadata accessor for Logger();
    v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
    _s2os6LoggerVSgWOhTm_1(v53, &lazy cache variable for type metadata for Logger?, 255, v51, v52);
    if (v55 != 1)
    {
      v57 = swift_beginAccess();
      v29 = &property descriptor for SizingPreferences.size2D;
      if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
      {
        v58 = objc_opt_self();
        v59 = [v58 standardUserDefaults];
        v60 = v257;
        v61 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v257 | 0x8000000000000000);
        v62 = [v59 objectForKey_];

        if (v62)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
          v63 = [v58 standardUserDefaults];
          v64 = MEMORY[0x193ABEC20](0xD00000000000002ELL, v60 | 0x8000000000000000);
          v65 = [v63 BOOLForKey_];

          static EnableLazyLayoutReuseLoggingAlways.cachedValue = v65;
          v29 = &property descriptor for SizingPreferences.size2D;
          if ((v65 & 1) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_54;
        }

        v285 = 0u;
        v284 = 0u;
        outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
        static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
        v29 = &property descriptor for SizingPreferences.size2D;
        if (v255)
        {
LABEL_71:
          v66 = __CocoaSet.count.getter();
          goto LABEL_72;
        }
      }

      else
      {
        if (static EnableLazyLayoutReuseLoggingAlways.cachedValue)
        {
LABEL_54:
          v81 = MEMORY[0x1EEE9AC00](v57);
          *(&v239 - 2) = partial apply for implicit closure #1 in LazyLayoutViewCache.reusedItem(data:anyTransition:);
          *(&v239 - 1) = (&v239 - 4);
          (*(*v264 + 432))(partial apply for implicit closure #1 in noteFailedReuse #1 (_:) in LazyLayoutViewCache.reusedItem(data:anyTransition:), v81);
          v21 = v263;
          v56 = v270;
          goto LABEL_73;
        }

LABEL_41:
        if (v255)
        {
          goto LABEL_71;
        }
      }

      v66 = *(v261 + 16);
LABEL_72:
      v21 = v263;
      v56 = v270;
      v109 = v260 & 1;
      v110 = v259 & 1 | 0x10;
      v284 = v281;
      v285 = v282;
      *v286 = v283[0];
      *&v286[9] = *(v283 + 9);
      outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v284, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
      *&v281 = v66;
      v260 = v109;
      *(&v282 + 1) = v109;
      v259 = v110;
      BYTE8(v283[1]) = v110;
      goto LABEL_73;
    }

    v21 = v263;
    v29 = &property descriptor for SizingPreferences.size2D;
    v56 = v270;
LABEL_73:
    v18 = &type metadata instantiation cache for Gradient.WatchDefinition;
    if (static ReuseTrace.recorder)
    {
      v111 = *(v56 + 24);
      v112 = *(static ReuseTrace.recorder + 2);
      *&v284 = *(v56 + 160);
      *(&v284 + 1) = v111;
      v113 = v111;

      v114 = v112;
      AGGraphAddTraceEvent();
    }

    v30 = v266;
LABEL_13:
    ++v3;
  }

  while (v33 != v30);

  v213 = _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5();
  v3 = v264;
  if (v213)
  {
    goto LABEL_172;
  }

LABEL_165:
  v214 = swift_beginAccess();
  *(v280 + 9) = *(v283 + 9);
  v278 = v281;
  v279 = v282;
  v280[0] = v283[0];
  if (*(&v282 + 1) >> 1 != 0xFFFFFFFFLL || BYTE8(v280[1]) >= 2u)
  {
    v284 = v281;
    v285 = v282;
    *v286 = v283[0];
    *&v286[9] = *(v283 + 9);
    MEMORY[0x1EEE9AC00](v214);
    *(&v239 - 2) = &v284;
    v215 = *(*v3 + 432);
    v271[0] = v278;
    v271[1] = v279;
    v272[0] = v280[0];
    *(v272 + 9) = *(v280 + 9);
    outlined init with copy of ReuseMessage(v271, &v273);
    v215(partial apply for implicit closure #1 in closure #1 in LazyLayoutViewCache.reusedItem(data:anyTransition:), &v239 - 4);
    outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(&v278, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
    v273 = v281;
    v274 = v282;
    v275[0] = v283[0];
    *(v275 + 9) = *(v283 + 9);
    v216 = &v273;
    goto LABEL_173;
  }

LABEL_172:
  v284 = v281;
  v285 = v282;
  *v286 = v283[0];
  *&v286[9] = *(v283 + 9);
  v216 = &v284;
LABEL_173:
  outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(v216, &lazy cache variable for type metadata for ReuseMessage?, &unk_1F00A27B0);
  return 0;
}

uint64_t sub_18D1E1688()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t specialized LazyLayoutViewCache.LeastRecentlyUsedItems.updatedItems<A>(_:)()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    ++*v0;

    sub_18D1E1774(v2);

    v5 = sub_18D1E1774(v3);
    specialized MutableCollection<>.sort(by:)(&v5);

    v1 = v5;
    *(v0 + 32) = v5;
  }

  return v1;
}

uint64_t sub_18D1E1774(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

Swift::Int _ViewList_ID.reuseIdentifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher.init()();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      v5 += 3;
      MEMORY[0x193AC11A0](v6);
      --v4;
    }

    while (v4);
  }

  return Hasher.finalize()();
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
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
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

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
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

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
      type metadata accessor for _NSRange(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
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

{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
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

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 10) = BYTE2(a3);
  *(v5 + 8) = a3;
  *(v5 + 11) = BYTE3(a3);
  *(v5 + 12) = BYTE4(a3);
  *(v5 + 13) = BYTE5(a3) & 1;
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

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 12) = HIDWORD(a3);
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

uint64_t closure #1 in LazyLayoutViewCache.makeSubviewOutputs(inputs:indirectMap:data:anyTransition:)@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t *__return_ptr, _BYTE *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v108 = *MEMORY[0x1E69E9840];
  v13 = a1[3];
  v103 = a1[2];
  v104 = v13;
  v105 = a1[4];
  v106 = *(a1 + 20);
  v14 = a1[1];
  v101 = *a1;
  v102 = v14;
  *v64 = 0;
  *&v64[4] = 0;
  v64[6] = 1;
  v15 = Attribute.init<A>(body:value:flags:update:)();
  v16 = *(a6 + 18);
  v17 = *(a5 + 140);
  *v64 = *(a5 + 148);
  *&v64[4] = v16;
  *&v64[8] = v105;
  *&v64[12] = v17;
  *&v64[16] = a5;
  *&v64[24] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type LazyViewGeometry and conformance LazyViewGeometry();

  v18 = Attribute.init<A>(body:value:flags:update:)();

  v19 = a6[1];
  v92 = *a6;
  v93 = v19;
  v94 = a6[2];
  v20 = DWORD2(v19);
  *&v54 = __PAIR64__(DWORD2(v19), DWORD2(v102));
  v46 = v15;
  DWORD2(v54) = v15;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _GraphInputs(&v92, v64);
  lazy protocol witness table accessor for type LazyViewPhase and conformance LazyViewPhase();
  v21 = Attribute.init<A>(body:value:flags:update:)();
  *v64 = 0;
  *&v64[8] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type LazyDisplayListWrapper and conformance LazyDisplayListWrapper();
  v47 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v22 = v102;
  v88 = v103;
  v89 = v104;
  v90 = v105;
  v91 = v106;
  v86 = v101;
  v87 = v102;
  swift_beginAccess();
  v23 = v22[3];
  v107[1] = v22[2];
  v107[2] = v23;
  v24 = v22[5];
  v107[3] = v22[4];
  v107[4] = v24;
  v107[0] = v22[1];
  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v25 = swift_allocObject();
  memmove((v25 + 16), v22 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(&v101, v64);
  outlined init with copy of CachedEnvironment(v107, v64);

  *&v87 = v25;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  LODWORD(v22) = v88;
  v27 = *(a6 + 15);
  LODWORD(v90) = OffsetAttribute2;
  HIDWORD(v89) = v27;
  DWORD2(v90) = AGGraphCreateOffsetAttribute2();
  LODWORD(v88) = v22 | 0x1C;
  *v64 = v92;
  *&v64[16] = v93;
  *&v64[32] = v94;
  _GraphInputs.merge(_:ignoringPhase:)(v64, 1);
  v85[0] = *v64;
  v85[1] = *&v64[16];
  v85[2] = *&v64[32];
  outlined destroy of _GraphInputs(v85);
  DWORD2(v87) = v21;
  if ((v88 & 0x40) == 0)
  {
    LODWORD(v88) = v88 | 0x40;
  }

  specialized Set._Variant.insert(_:)(v64, v20);
  v28 = HIDWORD(v102);
  *v64 = HIDWORD(v102);
  *&v64[4] = v46;
  *&v64[8] = 0;
  v64[16] = 3;
  *&v64[20] = 0;
  v64[24] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type LazyTransaction and conformance LazyTransaction();
  v29 = Attribute.init<A>(body:value:flags:update:)();
  HIDWORD(v87) = v29;
  specialized Set._Variant.insert(_:)(v64, v28);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(&v86, 0, 1);

  outlined init with copy of LazyLayoutCacheParent(a7, v53);
  outlined init with copy of LazyLayoutCacheParent(v53, v52);
  outlined init with copy of LazyLayoutCacheParent(v52, v51);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021LazyLayoutCacheParentF033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt2g5(&v86, v51);
  outlined destroy of weak AnyGestureResponder?(v52);
  outlined destroy of weak AnyGestureResponder?(v53);

  outlined destroy of weak AnyGestureResponder?(v51);
  AGGraphSetFlags();
  swift_beginAccess();
  *(a4 + 16) = v46;
  *(a4 + 20) = 0;
  *(a4 + 24) = v18;
  *(a4 + 28) = 0;
  *(a4 + 32) = v21;
  *(a4 + 36) = 0;
  *(a4 + 40) = v47;
  *(a4 + 44) = 0;
  *(a4 + 48) = v29;
  *(a4 + 52) = 0;
  v81 = v88;
  v82 = v89;
  v83 = v90;
  v84 = v91;
  v79 = v86;
  v80 = v87;
  outlined init with copy of _LazyLayout_Subview.Data(a10, v77);
  outlined init with copy of _LazyLayout_Subview.Data(v77, v75);
  v30 = swift_allocObject();
  *(v30 + 16) = a8;
  *(v30 + 24) = v46;
  v31 = v77[3];
  *(v30 + 64) = v77[2];
  *(v30 + 80) = v31;
  *(v30 + 96) = *v78;
  *(v30 + 111) = *&v78[15];
  v32 = v77[1];
  *(v30 + 32) = v77[0];
  *(v30 + 48) = v32;
  *(v30 + 120) = a2;
  *(v30 + 128) = a3;
  *(v30 + 136) = a4;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v71 = v81;
  v72 = v82;
  v73 = v83;
  v69 = v79;
  v70 = v80;
  v42 = v81;
  v74 = v84;
  LODWORD(v71) = 0;
  v100 = v84;
  v98 = v82;
  v99 = v83;
  v95 = v79;
  v96 = v80;
  v97 = v71;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v82))
  {
    outlined init with copy of _ViewInputs(&v79, v64);
    outlined init with copy of _ViewInputs(&v95, v64);
    specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:)(v47, &v95, partial apply for makeBody #1 (_:_:) in closure #1 in LazyLayoutViewCache.makeSubviewOutputs(inputs:indirectMap:data:anyTransition:), &v49);
  }

  else
  {
    if (a8)
    {
      *&v64[40] = v97;
      *&v64[56] = v98;
      *&v64[72] = v99;
      *&v64[8] = v95;
      *v64 = v46;
      *&v64[88] = v100;
      *&v64[24] = v96;
      v65 = v76;
      *&v66 = a2;
      v67 = 0uLL;
      *(&v66 + 1) = a3;
      LODWORD(v68) = 0;
      BYTE4(v68) = 1;
      *(&v68 + 1) = 0;
      v34 = *(*a8 + 80);
      outlined init with copy of _ViewInputs(&v95, &v54);

      outlined init with copy of _ViewInputs(&v79, &v54);
      outlined init with copy of _ViewInputs(&v95, &v54);

      v34(v64, &unk_1F00A2038, &protocol witness table for MakeSubviewTransition);
      v35 = v68;
      LOBYTE(v34) = BYTE4(v68);
      swift_beginAccess();
      *(a4 + 56) = v35;
      *(a4 + 60) = v34;
      v36 = v67;
      *(a4 + 64) = *(&v68 + 1);
      if (v36)
      {
        v37 = HIDWORD(v67);
        v38 = DWORD2(v67);

        outlined destroy of _ViewInputs(&v95);
        v61 = v66;
        v62 = v67;
        v63 = v68;
        v57 = *&v64[48];
        v58 = *&v64[64];
        v59 = *&v64[80];
        v60 = v65;
        v54 = *v64;
        v55 = *&v64[16];
        v56 = *&v64[32];
        outlined destroy of MakeSubviewTransition(&v54);
      }

      else
      {
        v37 = *MEMORY[0x1E698D3F8];

        outlined destroy of _ViewInputs(&v95);
        v61 = v66;
        v62 = v67;
        v63 = v68;
        v57 = *&v64[48];
        v58 = *&v64[64];
        v59 = *&v64[80];
        v60 = v65;
        v54 = *v64;
        v55 = *&v64[16];
        v56 = *&v64[32];
        outlined destroy of MakeSubviewTransition(&v54);
        v38 = 0;
        v36 = MEMORY[0x1E69E7CC0];
      }

      v49 = v36;
      v50 = __PAIR64__(v37, v38);
      goto LABEL_14;
    }

    *&v64[32] = v97;
    *&v64[48] = v98;
    *&v64[64] = v99;
    *&v64[80] = v100;
    *v64 = v95;
    *&v64[16] = v96;
    outlined init with copy of _ViewInputs(&v79, &v54);
    outlined init with copy of _ViewInputs(&v95, &v54);
    a2(&v49, v64);
  }

  outlined destroy of _ViewInputs(&v95);
LABEL_14:
  LODWORD(v71) = v42;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v49, &v69);
    AGSubgraphEndTreeElement();
  }

  outlined destroy of _LazyLayout_Subview.Data(v75);
  v57 = v72;
  v58 = v73;
  LODWORD(v59) = v74;
  v54 = v69;
  v55 = v70;
  v56 = v71;
  outlined destroy of _ViewInputs(&v54);
  *&v64[32] = v88;
  *&v64[48] = v89;
  *&v64[64] = v90;
  *&v64[80] = v91;
  *v64 = v86;
  *&v64[16] = v87;
  result = outlined destroy of _ViewInputs(v64);
  v40 = v50;
  *a9 = v49;
  a9[1] = v40;
  return result;
}

uint64_t sub_18D1E262C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type LazyViewGeometry and conformance LazyViewGeometry()
{
  result = lazy protocol witness table cache variable for type LazyViewGeometry and conformance LazyViewGeometry;
  if (!lazy protocol witness table cache variable for type LazyViewGeometry and conformance LazyViewGeometry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyViewGeometry and conformance LazyViewGeometry);
  }

  return result;
}

uint64_t initializeWithCopy for LazyViewGeometry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

unint64_t lazy protocol witness table accessor for type LazyViewPhase and conformance LazyViewPhase()
{
  result = lazy protocol witness table cache variable for type LazyViewPhase and conformance LazyViewPhase;
  if (!lazy protocol witness table cache variable for type LazyViewPhase and conformance LazyViewPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyViewPhase and conformance LazyViewPhase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyDisplayListWrapper and conformance LazyDisplayListWrapper()
{
  result = lazy protocol witness table cache variable for type LazyDisplayListWrapper and conformance LazyDisplayListWrapper;
  if (!lazy protocol witness table cache variable for type LazyDisplayListWrapper and conformance LazyDisplayListWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyDisplayListWrapper and conformance LazyDisplayListWrapper);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ScrollTargetConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t lazy protocol witness table accessor for type LazyTransaction and conformance LazyTransaction()
{
  result = lazy protocol witness table cache variable for type LazyTransaction and conformance LazyTransaction;
  if (!lazy protocol witness table cache variable for type LazyTransaction and conformance LazyTransaction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyTransaction and conformance LazyTransaction);
  }

  return result;
}

uint64_t initializeWithCopy for LazyTransaction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for LazyLayoutReuseIdleInput);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24LazyLayoutReuseIdleInputV_Tt0B5(v6, v11);
  if (!result)
  {
    goto LABEL_8;
  }

  v8 = *(result + 80);
  if (a3)
  {
    if (*(result + 80))
    {
      return result;
    }

LABEL_8:
    v9 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<LazyLayoutReuseIdleInput>, &type metadata for LazyLayoutReuseIdleInput, &protocol witness table for LazyLayoutReuseIdleInput, type metadata accessor for TypedElement);
    v10 = swift_allocObject();
    *(v10 + 72) = a2;
    *(v10 + 80) = a3 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for LazyLayoutReuseIdleInput, 0, v9);
  }

  if (*(result + 72) != a2)
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021LazyLayoutCacheParentF033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LazyLayoutCacheParentKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(v4, v11[0]);
  if (!v5 || (outlined init with copy of LazyLayoutCacheParent(v5 + 72, v11), v6 = AGCompareValues(), result = outlined destroy of LazyLayoutCacheParent(v11), !v6))
  {
    outlined init with copy of LazyLayoutCacheParent(a2, v11);
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.LazyLayoutCacheParentKey>, &type metadata for _GraphInputs.LazyLayoutCacheParentKey, &protocol witness table for _GraphInputs.LazyLayoutCacheParentKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    outlined init with copy of LazyLayoutCacheParent(v11, v9 + 72);

    value = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.LazyLayoutCacheParentKey, 0, v8).value;
    outlined destroy of LazyLayoutCacheParent(v11);
    *a1 = value;
  }

  return result;
}

void *makeBody #1 (_:_:) in closure #1 in LazyLayoutViewCache.makeSubviewOutputs(inputs:indirectMap:data:anyTransition:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, void *(*a5)(void *__return_ptr, _BYTE *)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v9 = *(a1 + 48);
  v38[2] = *(a1 + 32);
  v38[3] = v9;
  v38[4] = *(a1 + 64);
  v39 = *(a1 + 80);
  v10 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v10;
  if (a2)
  {
    v12 = *(a1 + 48);
    *&v33[40] = *(a1 + 32);
    *&v33[56] = v12;
    *&v33[72] = *(a1 + 64);
    v13 = *(a1 + 16);
    *&v33[8] = *a1;
    v14 = *(a4 + 56);
    v15 = *(a1 + 80);
    *v33 = a3;
    *&v33[88] = v15;
    *&v33[24] = v13;
    *&v34 = *(a4 + 48);
    *(&v34 + 1) = v14;
    *&v35 = a5;
    v36 = 0uLL;
    *(&v35 + 1) = a6;
    LODWORD(v37) = 0;
    BYTE4(v37) = 1;
    *(&v37 + 1) = 0;
    v16 = *(*a2 + 80);

    outlined init with copy of _ViewInputs(v38, &v23);

    v16(v33, &unk_1F00A2038, &protocol witness table for MakeSubviewTransition);
    LODWORD(v14) = v37;
    LOBYTE(v16) = BYTE4(v37);
    swift_beginAccess();
    *(a7 + 56) = v14;
    *(a7 + 60) = v16;
    v17 = v36;
    *(a7 + 64) = *(&v37 + 1);
    if (v17)
    {
      v18 = HIDWORD(v36);
      v19 = DWORD2(v36);

      v29 = v34;
      v30 = v35;
      v31 = v36;
      v32 = v37;
      v25 = *&v33[32];
      v26 = *&v33[48];
      v27 = *&v33[64];
      v28 = *&v33[80];
      v23 = *v33;
      v24 = *&v33[16];
      result = outlined destroy of MakeSubviewTransition(&v23);
    }

    else
    {
      v18 = *MEMORY[0x1E698D3F8];

      v29 = v34;
      v30 = v35;
      v31 = v36;
      v32 = v37;
      v25 = *&v33[32];
      v26 = *&v33[48];
      v27 = *&v33[64];
      v28 = *&v33[80];
      v23 = *v33;
      v24 = *&v33[16];
      result = outlined destroy of MakeSubviewTransition(&v23);
      v19 = 0;
      v17 = MEMORY[0x1E69E7CC0];
    }

    *a8 = v17;
    *(a8 + 8) = v19;
    *(a8 + 12) = v18;
  }

  else
  {
    v21 = *(a1 + 48);
    *&v33[32] = *(a1 + 32);
    *&v33[48] = v21;
    *&v33[64] = *(a1 + 64);
    *&v33[80] = *(a1 + 80);
    v22 = *(a1 + 16);
    *v33 = *a1;
    *&v33[16] = v22;
    return a5(a8, v33);
  }

  return result;
}

uint64_t MakeSubviewTransition.visit<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LazyTransition();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = *v3;
  (*(v5 + 16))(v7, v28, a2, v10);
  *v12 = v13;
  *(v12 + 1) = 0;
  (*(v5 + 32))(&v12[*(v8 + 40)], v7, a2);
  v31[2] = swift_getAssociatedTypeWitness();
  v31[3] = v8;
  v31[4] = swift_getWitnessTable();
  v14 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v31, v8, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  (*(v9 + 8))(v12, v8);
  v16 = v40[0];
  _GraphValue.init(_:)(LODWORD(v40[0]), &v29);
  v17 = *(v3 + 14);
  v38[2] = *(v3 + 10);
  v38[3] = v17;
  v38[4] = *(v3 + 18);
  v39 = v3[22];
  v18 = *(v3 + 6);
  v38[0] = *(v3 + 2);
  v38[1] = v18;
  v19 = *(v3 + 14);
  v34 = *(v3 + 10);
  v35 = v19;
  v36 = *(v3 + 18);
  v37 = v3[22];
  v20 = *(v3 + 6);
  v32 = *(v3 + 2);
  v33 = v20;
  v21 = *(v3 + 14);
  v22 = *(v3 + 15);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  outlined init with copy of _ViewInputs(v38, v40);

  static Transition.makeView(view:inputs:body:)(&v29, &v32, partial apply for closure #1 in DynamicLayoutViewAdaptor.MakeTransition.visit<A>(_:), v23, v30);

  v40[2] = v34;
  v40[3] = v35;
  v40[4] = v36;
  v41 = v37;
  v40[0] = v32;
  v40[1] = v33;
  outlined destroy of _ViewInputs(v40);
  v24 = v30[0];
  v25 = v30[1];

  *(v3 + 16) = v24;
  *(v3 + 17) = v25;
  v3[36] = v16;
  *(v3 + 148) = 0;
  *(v3 + 19) = a2;
  return result;
}

uint64_t sub_18D1E35E8()
{

  return swift_deallocObject();
}

uint64_t destroy for LazyTransition(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

_DWORD *initializeWithCopy for LazyTransition(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(*(v7 - 8) + 80);
  v10 = v6 + v9 + 8;
  v11 = v9 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8);

  v8(v10 & ~v9, v11 & ~v9, v7);
  return a1;
}

uint64_t destroy for MakeSubviewTransition()
{
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<HiddenForReuseEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<HiddenForReuseEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<HiddenForReuseEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<HiddenForReuseEffect>, &type metadata for HiddenForReuseEffect, &protocol witness table for HiddenForReuseEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<HiddenForReuseEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

uint64_t outlined init with copy of LazyLayoutViewCache.SubviewOutputs(int *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *a2 = v3;
  v4 = a1[2];
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 8) = v4;
  v5 = a1[4];
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 16) = v5;
  v6 = a1[6];
  *(a2 + 28) = *(a1 + 28);
  *(a2 + 24) = v6;
  v7 = a1[8];
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 32) = v7;
  v8 = a1[10];
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 40) = v8;
  v9 = *(a1 + 7);
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 56) = v9;
  *(a2 + 64) = *(a1 + 8);

  return a2;
}

uint64_t partial apply for closure #3 in LazyLayoutViewCache.makeNewItem(data:anyTransition:)(uint64_t a1)
{

  *(a1 + 24) = v1;
  return result;
}

uint64_t partial apply for closure #4 in LazyLayoutViewCache.makeNewItem(data:anyTransition:)(void *a1)
{

  *a1 = v1;
  return result;
}

uint64_t partial apply for closure #1 in UpdateSubviewTransition.visit<A>(_:)(uint64_t a1)
{
  v3 = *(*(v1 + 32) + 8);

  *(a1 + 8) = v3;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>, type metadata accessor for LazyLayoutCacheItem, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v37 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v36 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v19 = v15 | (v8 << 6);
      v20 = *(v5 + 48) + 16 * v19;
      v21 = *v20;
      v39 = *(v20 + 4);
      v22 = *(v20 + 8);
      v23 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v39);
      if (v22)
      {
        Hasher._combine(_:)(1u);
        v38 = v11;
        v24 = v7;
        v25 = a2;
        v26 = v5;
        v27 = *(*v22 + 120);

        v27(v40);
        v5 = v26;
        a2 = v25;
        v7 = v24;
        v11 = v38;
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v7 + 48) + 16 * v13;
      *v14 = v21;
      *(v14 + 4) = v39;
      *(v14 + 8) = v22;
      *(*(v7 + 56) + 8 * v13) = v23;
      ++*(v7 + 16);
    }

    v16 = v8;
    result = v37;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v36)
      {
        break;
      }

      v18 = v37[v8];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheChildren>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v40 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v39 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v21 = 16 * (v17 | (v8 << 6));
      v22 = *(v5 + 48) + v21;
      v43 = *v22;
      v42 = *(v22 + 4);
      v23 = *(v22 + 8);
      v24 = (*(v5 + 56) + v21);
      v25 = *v24;
      v26 = v24[1];
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v43);
      Hasher._combine(_:)(v42);
      if (v23)
      {
        Hasher._combine(_:)(1u);
        v41 = v11;
        v27 = v7;
        v28 = a2;
        v29 = v5;
        v30 = *(*v23 + 120);

        v30(v44);
        v5 = v29;
        a2 = v28;
        v7 = v27;
        v11 = v41;
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v12 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v12 + 8 * v33);
          if (v37 != -1)
          {
            v13 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v32) & ~*(v12 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = 16 * v13;
      v15 = *(v7 + 48) + v14;
      *v15 = v43;
      *(v15 + 4) = v42;
      *(v15 + 8) = v23;
      v16 = (*(v7 + 56) + v14);
      *v16 = v25;
      v16[1] = v26;
      ++*(v7 + 16);
    }

    v18 = v8;
    result = v40;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v39)
      {
        break;
      }

      v20 = v40[v8];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v40, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v40 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, Int>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v37 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v36 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v19 = v15 | (v8 << 6);
      v20 = *(v5 + 48) + 16 * v19;
      v21 = *v20;
      v39 = *(v20 + 4);
      v22 = *(v20 + 8);
      v23 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v39);
      if (v22)
      {
        Hasher._combine(_:)(1u);
        v38 = v11;
        v24 = v7;
        v25 = a2;
        v26 = v5;
        v27 = *(*v22 + 120);

        v27(v40);
        v5 = v26;
        a2 = v25;
        v7 = v24;
        v11 = v38;
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v7 + 48) + 16 * v13;
      *v14 = v21;
      *(v14 + 4) = v39;
      *(v14 + 8) = v22;
      *(*(v7 + 56) + 8 * v13) = v23;
      ++*(v7 + 16);
    }

    v16 = v8;
    result = v37;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v36)
      {
        break;
      }

      v18 = v37[v8];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t DynamicViewList.WrappedList.edit(forID:since:)@<X0>(int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = *(a3 + 24);
  v69 = *(a3 + 16);
  AssociatedConformanceWitness = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = &v52 - v17;
  v26 = MEMORY[0x1EEE9AC00](v19);
  v27 = *a1;
  v28 = a1[1];
  v29 = *(a1 + 1);
  v30 = *a2;
  if (v30 < *(v4 + *(a3 + 44)))
  {
    goto LABEL_10;
  }

  v62 = v20;
  v63 = v21;
  v64 = &v52 - v22;
  v65 = a4;
  v66 = v29;
  v67 = v28;
  v68 = v27;
  v31 = v4 + *(a3 + 40);
  v32 = v23;
  v33 = v24;
  v34 = v25;
  (*(v25 + 16))(v14, v31, v24, v26);
  v35 = v32[6];
  if (v35(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v34 + 8))(v14, v33);
LABEL_9:
    v29 = v66;
    v28 = v67;
    v27 = v68;
    goto LABEL_10;
  }

  v59 = v34;
  v60 = v33;
  v36 = v64;
  v57 = v32[4];
  v58 = v32 + 4;
  v57(v64, v14, AssociatedTypeWitness);
  v61 = v4;
  v37 = v4[5];
  v38 = v32[2];
  v54 = *(*v37 + 136);
  v55 = v38;
  v56 = v32 + 2;
  v38(v18, v37 + v54, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = *(AssociatedConformanceWitness + 8);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = v32[1];
  v40(v18, AssociatedTypeWitness);
  if (v39)
  {
    v40(v36, AssociatedTypeWitness);
LABEL_8:
    v4 = v61;
    goto LABEL_9;
  }

  v53 = v40;
  v72 = v68;
  v73 = v67;
  v74 = v66;
  v41 = v63;
  _ViewList_ID.explicitID<A>(owner:)(*(v37 + *(*v37 + 144)), AssociatedTypeWitness, AssociatedConformanceWitness, v63);
  if (v35(v41, 1, AssociatedTypeWitness) == 1)
  {
    v53(v64, AssociatedTypeWitness);
    (*(v59 + 8))(v41, v60);
    goto LABEL_8;
  }

  v45 = v62;
  v57(v62, v41, AssociatedTypeWitness);
  v46 = v64;
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = v65;
  if (v47)
  {
    v49 = v53;
    v53(v45, AssociatedTypeWitness);
    result = v49(v46, AssociatedTypeWitness);
    *v48 = 1;
    return result;
  }

  v55(v18, v37 + v54, AssociatedTypeWitness);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = v53;
  v53(v18, AssociatedTypeWitness);
  v51(v45, AssociatedTypeWitness);
  result = (v51)(v46, AssociatedTypeWitness);
  v4 = v61;
  v28 = v67;
  v27 = v68;
  v29 = v66;
  if (v50)
  {
    *v48 = 0;
    return result;
  }

LABEL_10:
  v42 = v4[3];
  v43 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v42);
  v72 = v27;
  v73 = v28;
  v74 = v29;
  v71 = v30;
  return (*(v43 + 72))(&v72, &v71, v42, v43);
}

uint64_t View.overlay<A>(_:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v21 = a4;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _OverlayModifier();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  (*(v10 + 16))(v12, a1, a5, v15);
  (*(v10 + 32))(v17, v12, a5);
  v18 = &v17[*(v13 + 36)];
  *v18 = a2;
  *(v18 + 1) = a3;
  View.modifier<A>(_:)(v17, v21, v13);
  return (*(v14 + 8))(v17, v13);
}

uint64_t Image._prefetch(in:)(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20[-1] - v4;
  v6 = type metadata accessor for ImageResolutionContext();
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = type metadata accessor for Text.Style(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = *MEMORY[0x1E698D3F8];
  *(v9 + 2) = 0;
  v15 = v7[8];
  v13(&v9[v15], 1, 1, v12);
  v16 = v7[9];
  v17 = &v9[v7[10]];
  *v17 = 520;
  v17[2] = 2;
  v9[v7[11]] = 3;
  v9[v7[12]] = 1;
  *v9 = v11;
  *(v9 + 1) = v10;

  outlined assign with take of Text.Style?(v5, &v9[v15]);
  *&v9[v16] = v14;
  (*(*v19 + 80))(v20, v9);
  outlined destroy of Image.Resolved(v20);
  return _s7SwiftUI22ImageResolutionContextVWOhTm_1(v9, type metadata accessor for ImageResolutionContext);
}

uint64_t _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5()
{
  swift_beginAccess();
  v0 = static EnableLazyLayoutReuseLoggingAlways.cachedValue;
  if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(v8);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
      v0 = [v5 BOOLForKey_];

      static EnableLazyLayoutReuseLoggingAlways.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      outlined destroy of Any?(v8);
      v0 = 0;
      static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t outlined destroy of LazyLayoutCacheItem.AllItemsPhaseMutation?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t LazyLayoutViewCache.makeNewItem(data:anyTransition:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = *MEMORY[0x1E69E9840];
  v6 = AGSubgraphGetGraph();
  if (*(a1 + 76))
  {
    v7 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v7 = *(a1 + 72);
  }

  v34 = *MEMORY[0x1E698D3F8];
  v35 = v7;
  v8 = AGSubgraphCreate2();

  v9 = &static GraphReuseOptions.overrideValue;
  swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      swift_once();
    }

    v9 = &static GraphReuseOptions.defaultsValue;
  }

  if ((*v9 & 2) != 0)
  {
    type metadata accessor for IndirectAttributeMap();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E7CC8];
    *(v10 + 16) = v8;
    *(v10 + 24) = v11;
    v12 = v8;
  }

  else
  {
    v10 = 0;
  }

  AGGraphClearUpdate();
  v13 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v36 = a2;
  closure #2 in LazyLayoutViewCache.makeNewItem(data:anyTransition:)(v2, v10, a1, a2, v38);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v40 = v38[0];
  v41 = v38[1];
  v42 = v38[2];
  v43 = v38[3];
  v44 = v39;
  if (BYTE4(v38[0]))
  {
    __break(1u);
  }

  v14 = v10;
  v28 = v40;
  v27 = *(&v43 + 1);
  v15 = v44;
  outlined init with copy of _ViewList_SubgraphElements(a1, v37);
  v16 = *(a1 + 52);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v31 = *(a1 + 84);
  v32 = *(a1 + 80);
  v29 = *(a1 + 86);
  v30 = *(a1 + 85);
  v25 = BYTE12(v42);
  v26 = DWORD2(v42);
  v33 = v43;
  type metadata accessor for LazyLayoutCacheItem();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 52) = v34;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0u;
  *(v19 + 192) = 0u;
  *(v19 + 205) = 0;
  *(v19 + 224) = 1;
  *(v19 + 228) = -1;
  *(v19 + 232) = 0u;
  *(v19 + 248) = 0u;
  *(v19 + 264) = 0u;
  *(v19 + 280) = 0u;
  *(v19 + 296) = 1;
  *(v19 + 304) = 0u;
  *(v19 + 320) = 0u;
  *(v19 + 336) = 0u;
  *(v19 + 352) = 0u;
  *(v19 + 368) = 1;
  *(v19 + 376) = 0;
  *(v19 + 384) = 0x20000;
  swift_beginAccess();
  v20 = v8;
  outlined init with copy of LazyLayoutViewCache.SubviewOutputs(&v40, v38);
  *(v19 + 16) = v3;

  swift_endAccess();
  *(v19 + 24) = v20;
  *(v19 + 32) = v27;
  *(v19 + 40) = v15;
  *(v19 + 48) = v28;
  *(v19 + 52) = v35;
  outlined init with copy of _ViewList_SubgraphElements(v37, v19 + 56);
  *(v19 + 104) = v17;
  *(v19 + 144) = v17;
  *(v19 + 148) = v16;
  *(v19 + 152) = v18;
  *&v38[0] = __PAIR64__(v16, v17);
  *(&v38[0] + 1) = v18;
  *(v19 + 160) = _ViewList_ID.reuseIdentifier.getter();
  *(v19 + 168) = v32;
  *(v19 + 172) = v31;
  *(v19 + 173) = v30;
  *(v19 + 174) = v29;
  *&v38[0] = v37[5];
  swift_unownedRetain();

  v21 = _ViewList_SublistSubgraphStorage.retain()();

  result = outlined destroy of _ViewList_SubgraphElements(v37);
  *(v19 + 112) = v21;
  *(v19 + 120) = v14;
  *(v19 + 128) = v26;
  *(v19 + 132) = v25;
  *(v19 + 136) = v33;
  if ((BYTE12(v40) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](DWORD2(v40));
    result = AGGraphMutateAttribute();
  }

  if ((BYTE12(v41) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](DWORD2(v41));
    result = AGGraphMutateAttribute();
  }

  if ((BYTE4(v42) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v42);
    result = AGGraphMutateAttribute();
  }

  if (v25)
  {
    outlined destroy of LazyLayoutViewCache.SubviewOutputs(&v40);
  }

  else
  {
    LODWORD(v38[0]) = v26;
    *(&v38[0] + 1) = v19;
    if (!v36)
    {
      __break(1u);
      return result;
    }

    outlined destroy of LazyLayoutViewCache.SubviewOutputs(&v40);
    (*(*v36 + 88))(v38, &unk_1F00A2380, &protocol witness table for UpdateSubviewTransition);
  }

  (*(*v3 + 432))(partial apply for implicit closure #2 in LazyLayoutViewCache.makeNewItem(data:anyTransition:), v19);
  v23 = *(v19 + 160);
  v24 = *(v19 + 24);
  swift_beginAccess();
  if (static ReuseTrace.recorder)
  {
    v37[0] = v23;
    v37[1] = v24;
    AGGraphAddTraceEvent();
  }

  LazyLayoutViewCache.addItem(_:data:reset:)(v19, a1, 0);

  return v19;
}

uint64_t getEnumTagSinglePayload for ReuseMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t closure #2 in LazyLayoutViewCache.makeNewItem(data:anyTransition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v10 = *(a1 + 80);
  v51 = *(a1 + 64);
  v52 = v10;
  v53 = *(a1 + 96);
  v54 = *(a1 + 112);
  v11 = *(a1 + 48);
  v49 = *(a1 + 32);
  v50 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 20) = 1;
  *(v12 + 24) = 0;
  *(v12 + 28) = 1;
  *(v12 + 32) = 0;
  *(v12 + 36) = 1;
  *(v12 + 40) = 0;
  *(v12 + 44) = 1;
  *(v12 + 48) = 0;
  *(v12 + 52) = 1;
  *(v12 + 60) = 1;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = v13;
  LODWORD(v13) = *MEMORY[0x1E698D3F8];
  *(v12 + 80) = 0;
  *(v12 + 84) = v13;
  v14 = a3[7];
  v41[0] = a3[6];
  v28 = v41[0];
  v41[1] = v14;
  outlined init with copy of _ViewInputs(&v49, &v43);

  _ViewList_ID.Canonical.init(id:)(v41, &v43);
  *v41 = v43;
  v15 = LazyLayoutViewCache.childCacheSeed(id:)(v41);

  swift_weakInit();
  v30 = v15;
  v35 = v12;
  v36 = a1;
  v37 = &v49;
  v38 = v29;
  v39 = a4;
  v40 = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in LazyLayoutViewCache.makeSubviewOutputs(inputs:indirectMap:data:anyTransition:);
  *(v16 + 24) = &v34;
  v42[0] = v28;
  v32 = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?);
  v33 = v16;
  *&v43 = a3[5];
  v17 = 0;
  v18 = 0;
  if (_ViewList_SublistSubgraphStorage.isValid.getter())
  {
    v19 = a3[3];
    v20 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v19);
    v45 = v51;
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v43 = v49;
    v44 = v50;
    (*(v20 + 16))(v41, v42, &v43, a2, _s7SwiftUI18_ViewList_ElementsPAAE14makeOneElement2at6inputs11indirectMap4bodyAA01_C7OutputsVSgSi_AA01_C6InputsVAA017IndirectAttributeL0CSgAkM_AjMctXEtFA2kM_AjMctcXEfU_AK_SbtAM_AjMctXEfU_TA_0, v31, v19, v20);
    v17 = v41[1];
    v18 = v41[0];
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v18)
  {
    swift_beginAccess();
    *(v12 + 72) = v18;
    *(v12 + 80) = v17;
  }

  swift_beginAccess();
  if (*(v12 + 20))
  {
    LODWORD(v43) = 0;
    WORD2(v43) = 0;
    BYTE6(v43) = 1;
    v22 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of _ViewInputs(&v49);
    *(v12 + 16) = v22;
    *(v12 + 20) = 0;
  }

  else
  {
    outlined destroy of _ViewInputs(&v49);
  }

  v23 = *(v12 + 64);
  v45 = *(v12 + 48);
  v46 = v23;
  *&v47 = *(v12 + 80);
  v24 = v47;
  v25 = *(v12 + 32);
  v43 = *(v12 + 16);
  v26 = v43;
  v44 = v25;
  *(a5 + 32) = v45;
  *(a5 + 48) = v23;
  *(a5 + 64) = v24;
  *a5 = v26;
  *(a5 + 16) = v25;
  outlined init with copy of LazyLayoutViewCache.SubviewOutputs(&v43, v41);
  outlined destroy of weak AnyGestureResponder?(v29);
}

uint64_t sub_18D1E5354()
{

  return swift_deallocObject();
}

uint64_t LazyLayoutViewCache.childCacheSeed(id:)(unint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v5 = *(v1 + 368);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v8 = *(v2 + 384);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 376);
    *(v2 + 376) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v3, v8, isUniquelyReferenced_nonNull_native);
    *(v2 + 376) = v11;
    swift_endAccess();
    ++*(v2 + 384);
  }

  return v8;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, uint64_t a2)
{
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  if (a2)
  {
    Hasher._combine(_:)(1u);
    v5 = *(*a2 + 120);

    v5(v8);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

{
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *v6;
      v6 += 6;
      v9 = *(*v7 + 120);

      v9(v12);
      Hasher._combine(_:)(v8);

      --v5;
    }

    while (v5);
  }

  v10 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v10);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v9 = a1;
    v10 = HIDWORD(a1);
    v11 = ~v5;
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v6;
      if (*v12 != v9 || *(v12 + 4) != v10)
      {
        goto LABEL_5;
      }

      v14 = *(v12 + 8);
      if (!v14)
      {
        break;
      }

      if (!a2)
      {

LABEL_4:

        goto LABEL_5;
      }

      if (v14 == a2)
      {
        return v6;
      }

      v15 = *(*v14 + 112);
      swift_retain_n();

      LOBYTE(v15) = v15(v16);

      if (v15)
      {
        return v6;
      }

LABEL_5:
      v6 = (v6 + 1) & v11;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (!a2)
    {
      return v6;
    }

    goto LABEL_4;
  }

  return v6;
}

{
  v5 = v3 + 64;
  v6 = -1 << *(v3 + 32);
  result = a3 & ~v6;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = HIDWORD(a1);
    v9 = ~v6;
    v23 = HIDWORD(a1);
    v24 = v3 + 64;
    v22 = ~v6;
    while (1)
    {
      v10 = *(v3 + 48) + 16 * result;
      if (*v10 == a1 && *(v10 + 4) == v8)
      {
        v30 = *(v10 + 8);
        v12 = *(v30 + 16);
        if (v12 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_4:
      result = (result + 1) & v9;
      if (((*(v5 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v12 && v30 != a2)
    {
      v27 = result;

      v13 = 0;
      do
      {
        v15 = *(v30 + v13 + 32);
        v14 = *(v30 + v13 + 40);
        v16 = *(v30 + v13 + 48);
        v17 = *(a2 + v13 + 40);
        v18 = *(a2 + v13 + 48);
        if (v15 == *(a2 + v13 + 32))
        {
          v21 = v14 == v17 && v16 == v18;
          if (!v21 || ((*(v30 + v13 + 52) ^ *(a2 + v13 + 52)) & 1) != 0)
          {
LABEL_3:

            v3 = v26;
            result = v27;
            v5 = v24;
            LODWORD(a1) = v25;
            v9 = v22;
            LODWORD(v8) = v23;
            goto LABEL_4;
          }
        }

        else
        {
          v19 = *(*v15 + 112);
          v28 = *(a2 + v13 + 52);
          v29 = *(v30 + v13 + 52);

          LOBYTE(v19) = v19(v20);

          if (v19 & 1) == 0 || v14 != v17 || v16 != v18 || ((v29 ^ v28))
          {
            goto LABEL_3;
          }
        }

        v13 += 24;
        --v12;
      }

      while (v12);

      return v27;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrapeableAttachmentViewModifier.Attachment and conformance ScrapeableAttachmentViewModifier.Attachment()
{
  result = lazy protocol witness table cache variable for type ScrapeableAttachmentViewModifier.Attachment and conformance ScrapeableAttachmentViewModifier.Attachment;
  if (!lazy protocol witness table cache variable for type ScrapeableAttachmentViewModifier.Attachment and conformance ScrapeableAttachmentViewModifier.Attachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrapeableAttachmentViewModifier.Attachment and conformance ScrapeableAttachmentViewModifier.Attachment);
  }

  return result;
}

void type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for _LazyLayout_Subview.Data(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 83) = *(a2 + 83);

  return a1;
}

uint64_t destroy for _LazyLayout_Subview.Data(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

double _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  v11 = *(v5 + 8);
  v12 = *(LazyLayoutViewCache.item(data:)((v5 + 16)) + 44);

  v13 = *MEMORY[0x1E698D3F8];
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v17 = a1;
  v18 = a2 & 1;
  v19 = a3;
  v20 = a4 & 1;
  LayoutProxy.lengthThatFits(_:in:)(&v17, a5 & 1);
  v15 = v14;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:));
  return v15;
}

uint64_t LazyLayoutViewCache.item(data:)(void *a1)
{
  v2 = v1;
  v4 = a1[7];
  v19[0] = a1[6];
  v19[1] = v4;

  _ViewList_ID.Canonical.init(id:)(v19, v18);
  v5 = v18[0];
  v6 = v18[1];
  swift_beginAccess();
  v7 = *(v1 + 176);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);

    swift_endAccess();

    if (*(v10 + 224) == 1 && (v11 = *(v10 + 184), swift_beginAccess(), v11 != *(v2 + 208)))
    {
      LazyLayoutViewCache.addItem(_:data:reset:)(v10, a1, 0);
    }

    else
    {
      v12 = *(v10 + 196);
      swift_beginAccess();
      v13 = *(v2 + 184);
      if (v12 != v13)
      {
        *(v10 + 196) = v13;
        _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(a1[8]);
        *(v10 + 176) = v14;
        *(v2 + 342) = *(v2 + 342) & 1 | (v14 != 0.0);
      }
    }
  }

  else
  {

    swift_endAccess();
    v15 = LazyLayoutViewCache.anyTransition(data:)(a1);
    v16 = LazyLayoutViewCache.reusedItem(data:anyTransition:)(a1, v15);
    if (!v16)
    {
      v16 = LazyLayoutViewCache.makeNewItem(data:anyTransition:)(a1, v15);
    }

    v10 = v16;
  }

  return v10;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for WeakBox<GlassContainerCache>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s2os6LoggerVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s2os6LoggerVSgMaTm_1(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s2os6LoggerVSgWOcTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  _s2os6LoggerVSgMaTm_2(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
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
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t LazyLayoutViewCache.addItem(_:data:reset:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(a2 + 56);
  v16[0] = *(a2 + 48);
  v16[1] = v7;

  _ViewList_ID.Canonical.init(id:)(v16, v17);
  v8 = v17[0];
  v9 = v17[1];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 176);
  *(v3 + 176) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v8, v9, isUniquelyReferenced_nonNull_native);

  *(v3 + 176) = v15;
  swift_endAccess();
  (*(*v3 + 432))(partial apply for implicit closure #3 in LazyLayoutViewCache.addItem(_:data:reset:), v3);
  swift_beginAccess();
  *(a1 + 196) = *(v3 + 184);
  _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(*(a2 + 64));
  *(a1 + 176) = v11;
  *(a1 + 228) = -1;
  AGGraphClearUpdate();
  closure #1 in LazyLayoutViewCache.addItem(_:data:reset:)(v3, a1, a3, a2);
  result = AGGraphSetUpdate();
  if (*(v3 + 341))
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a2 + 84) ^ 1;
  }

  *(v3 + 341) = v13 & 1;
  v14 = (*(v3 + 342) & 1) != 0 || *(a1 + 176) != 0.0;
  *(v3 + 342) = v14;
  return result;
}

uint64_t _LazyLayoutViewCache.logReuse(_:)(void (*a1)(_OWORD *__return_ptr, uint64_t))
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  if (one-time initialization token for lazyLayoutReuse != -1)
  {
    v13 = v7;
    swift_once();
    v7 = v13;
  }

  v10 = __swift_project_value_buffer(v7, static Log.lazyLayoutReuse);
  _s2os6LoggerVSgWOcTm_1(v10, v9, &lazy cache variable for type metadata for Logger?, 255, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  result = (*(v3 + 48))(v9, 1, v2);
  if (result != 1)
  {
    v12 = (*(v3 + 32))(v5, v9, v2);
    a1(v14, v12);
    ReuseMessage.log<A>(layout:log:)();
    v16[0] = v14[0];
    v16[1] = v14[1];
    v17[0] = v15[0];
    *(v17 + 9) = *(v15 + 9);
    outlined destroy of ReuseMessage(v16);
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t closure #1 in LazyLayoutViewCache.addItem(_:data:reset:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  Value = AGGraphGetValue();
  v9 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(*Value);
  v10 = *AGGraphGetValue();
  swift_beginAccess();
  *(a2 + 184) = *(a1 + 208);
  if (v9)
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    AGGraphClearUpdate();
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    v13 = AGGraphGetValue();
    outlined init with copy of AnyTrackedValue(v13, v22 + 1);
    AGGraphSetUpdate();
    v14 = v23;
    v15 = v24;
    __swift_project_boxed_opaque_existential_1((v22 + 1), v23);
    v16 = *(a4 + 56);
    v21[0] = *(a4 + 48);
    v21[1] = v16;
    v20 = *(a1 + 200);
    v17 = *(v15 + 72);

    v17(v22, v21, &v20, v14, v15);

    v11 = (v22[0] & 1) == 0 && LOBYTE(v22[0]) != 2;
    __swift_destroy_boxed_opaque_existential_1(v22 + 1);
    v12 = 0;
  }

  *(v22 + 1) = v10 + (a3 & 1);
  BYTE5(v22[0]) = v12;
  HIWORD(v22[0]) = v11;
  return AGGraphSetValue();
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}