void type metadata accessor for _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>>)
  {
    _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(255, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, &type metadata for SectionStyleConfiguration.RawContent, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>>);
    }
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance StyledView()
{
  type metadata accessor for _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>>();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SectionBody and conformance SectionBody();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>> and conformance <> _VariadicView.Tree<A, B>();
  return static View.makeDebuggableViewList(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type SectionBody and conformance SectionBody()
{
  result = lazy protocol witness table cache variable for type SectionBody and conformance SectionBody;
  if (!lazy protocol witness table cache variable for type SectionBody and conformance SectionBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionBody and conformance SectionBody);
  }

  return result;
}

void *assignWithCopy for ToolbarStorage.SearchItem(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  *(a1 + a3[5]) = *(a2 + a3[5]);

  v16 = a3[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(a1 + v16 + 8);
  v20 = *(a2 + v16 + 8);
  if (v19 == 255)
  {
    if (v20 == 255)
    {
      v28 = *v18;
      *(v17 + 8) = v18[8];
      *v17 = v28;
    }

    else
    {
      v25 = *v18;
      v26 = v20 & 1;
      outlined copy of PlatformItemCollection.Storage(v25, v20 & 1);
      *v17 = v25;
      *(v17 + 8) = v26;
    }
  }

  else if (v20 == 255)
  {
    outlined destroy of PlatformItemCollection(v17);
    v27 = v18[8];
    *v17 = *v18;
    *(v17 + 8) = v27;
  }

  else
  {
    v21 = *v18;
    v22 = v20 & 1;
    outlined copy of PlatformItemCollection.Storage(v21, v20 & 1);
    v23 = *v17;
    v24 = *(v17 + 8);
    *v17 = v21;
    *(v17 + 8) = v22;
    outlined consume of PlatformItemCollection.Storage(v23, v24);
  }

  v29 = a3[7];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v32 = *(a1 + v29 + 8);
  v33 = *(a2 + v29 + 8);
  if (v32 == 255)
  {
    if (v33 == 255)
    {
      v41 = *v31;
      *(v30 + 8) = v31[8];
      *v30 = v41;
    }

    else
    {
      v38 = *v31;
      v39 = v33 & 1;
      outlined copy of PlatformItemCollection.Storage(v38, v33 & 1);
      *v30 = v38;
      *(v30 + 8) = v39;
    }
  }

  else if (v33 == 255)
  {
    outlined destroy of PlatformItemCollection(v30);
    v40 = v31[8];
    *v30 = *v31;
    *(v30 + 8) = v40;
  }

  else
  {
    v34 = *v31;
    v35 = v33 & 1;
    outlined copy of PlatformItemCollection.Storage(v34, v33 & 1);
    v36 = *v30;
    v37 = *(v30 + 8);
    *v30 = v34;
    *(v30 + 8) = v35;
    outlined consume of PlatformItemCollection.Storage(v36, v37);
  }

  v42 = a3[8];
  v43 = a1 + v42;
  v44 = a2 + v42;
  v45 = *(a2 + v42);
  v46 = *(a2 + v42 + 8);
  v47 = *(a2 + v42 + 16);
  outlined copy of Text.Storage(v45, v46, v47);
  v48 = *v43;
  v49 = *(v43 + 1);
  v50 = v43[16];
  *v43 = v45;
  *(v43 + 1) = v46;
  v43[16] = v47;
  outlined consume of Text.Storage(v48, v49, v50);
  *(v43 + 3) = *(v44 + 3);

  v51 = a3[9];
  v52 = a1 + v51;
  v53 = a2 + v51;
  *(a1 + v51) = *(a2 + v51);

  *(v52 + 1) = *(v53 + 1);

  v54 = a3[10];
  v55 = a1 + v54;
  v56 = a2 + v54;
  v57 = *(a1 + v54);
  v58 = *(a2 + v54);
  if (v57)
  {
    if (v58)
    {
      v59 = *(v56 + 1);
      *v55 = v58;
      *(v55 + 8) = v59;
      *(v55 + 16) = *(v56 + 4);
      *(v55 + 24) = *(v56 + 3);
      v60 = *(v56 + 4);
      v61 = *(v55 + 32);
      *(v55 + 32) = v60;
      v62 = v60;

      *(v55 + 40) = *(v56 + 5);

      *(v55 + 48) = *(v56 + 12);
      *(v55 + 56) = *(v56 + 7);

      *(v55 + 64) = *(v56 + 16);
      *(v55 + 68) = *(v56 + 17);
      *(v55 + 72) = *(v56 + 18);
      *(v55 + 76) = *(v56 + 19);
      *(v55 + 80) = *(v56 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v55);
      v66 = *(v56 + 1);
      *v55 = *v56;
      *(v55 + 16) = v66;
      v68 = *(v56 + 3);
      v67 = *(v56 + 4);
      v69 = *(v56 + 2);
      *(v55 + 80) = *(v56 + 10);
      *(v55 + 48) = v68;
      *(v55 + 64) = v67;
      *(v55 + 32) = v69;
    }
  }

  else if (v58)
  {
    v63 = *(v56 + 1);
    *v55 = v58;
    *(v55 + 8) = v63;
    *(v55 + 16) = *(v56 + 4);
    *(v55 + 24) = *(v56 + 3);
    v64 = *(v56 + 4);
    *(v55 + 32) = v64;
    *(v55 + 40) = *(v56 + 5);
    *(v55 + 48) = *(v56 + 12);
    *(v55 + 56) = *(v56 + 7);
    *(v55 + 64) = *(v56 + 16);
    *(v55 + 68) = *(v56 + 17);
    *(v55 + 72) = *(v56 + 18);
    *(v55 + 76) = *(v56 + 19);
    *(v55 + 80) = *(v56 + 10);
    v65 = v64;
  }

  else
  {
    v70 = *(v56 + 1);
    *v55 = *v56;
    *(v55 + 16) = v70;
    v71 = *(v56 + 2);
    v72 = *(v56 + 3);
    v73 = *(v56 + 4);
    *(v55 + 80) = *(v56 + 10);
    *(v55 + 48) = v72;
    *(v55 + 64) = v73;
    *(v55 + 32) = v71;
  }

  v74 = a3[11];
  v75 = a1 + v74;
  v76 = a2 + v74;
  v77 = *(a1 + v74);
  v78 = *(a2 + v74);
  if (v77)
  {
    if (v78)
    {
      v79 = *(v76 + 1);
      *v75 = v78;
      *(v75 + 8) = v79;
      *(v75 + 16) = *(v76 + 4);
      *(v75 + 24) = *(v76 + 3);
      v80 = *(v76 + 4);
      v81 = *(v75 + 32);
      *(v75 + 32) = v80;
      v82 = v80;

      *(v75 + 40) = *(v76 + 5);

      *(v75 + 48) = *(v76 + 12);
      *(v75 + 56) = *(v76 + 7);

      *(v75 + 64) = *(v76 + 16);
      *(v75 + 68) = *(v76 + 17);
      *(v75 + 72) = *(v76 + 18);
      *(v75 + 76) = *(v76 + 19);
      *(v75 + 80) = *(v76 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v75);
      v86 = *(v76 + 1);
      *v75 = *v76;
      *(v75 + 16) = v86;
      v88 = *(v76 + 3);
      v87 = *(v76 + 4);
      v89 = *(v76 + 2);
      *(v75 + 80) = *(v76 + 10);
      *(v75 + 48) = v88;
      *(v75 + 64) = v87;
      *(v75 + 32) = v89;
    }
  }

  else if (v78)
  {
    v83 = *(v76 + 1);
    *v75 = v78;
    *(v75 + 8) = v83;
    *(v75 + 16) = *(v76 + 4);
    *(v75 + 24) = *(v76 + 3);
    v84 = *(v76 + 4);
    *(v75 + 32) = v84;
    *(v75 + 40) = *(v76 + 5);
    *(v75 + 48) = *(v76 + 12);
    *(v75 + 56) = *(v76 + 7);
    *(v75 + 64) = *(v76 + 16);
    *(v75 + 68) = *(v76 + 17);
    *(v75 + 72) = *(v76 + 18);
    *(v75 + 76) = *(v76 + 19);
    *(v75 + 80) = *(v76 + 10);
    v85 = v84;
  }

  else
  {
    v90 = *(v76 + 1);
    *v75 = *v76;
    *(v75 + 16) = v90;
    v91 = *(v76 + 2);
    v92 = *(v76 + 3);
    v93 = *(v76 + 4);
    *(v75 + 80) = *(v76 + 10);
    *(v75 + 48) = v92;
    *(v75 + 64) = v93;
    *(v75 + 32) = v91;
  }

  *(a1 + a3[12]) = *(a2 + a3[12]);
  v94 = a3[13];
  v95 = a1 + v94;
  v96 = a2 + v94;
  v97 = *(a1 + v94);
  v98 = *(a2 + v94);
  if (v97)
  {
    if (v98)
    {
      v99 = *(v96 + 1);
      *v95 = v98;
      *(v95 + 8) = v99;
      *(v95 + 16) = *(v96 + 4);
      *(v95 + 24) = *(v96 + 3);
      v100 = *(v96 + 4);
      v101 = *(v95 + 32);
      *(v95 + 32) = v100;
      v102 = v100;

      *(v95 + 40) = *(v96 + 5);

      *(v95 + 48) = *(v96 + 12);
      *(v95 + 56) = *(v96 + 7);

      *(v95 + 64) = *(v96 + 16);
      *(v95 + 68) = *(v96 + 17);
      *(v95 + 72) = *(v96 + 18);
      *(v95 + 76) = *(v96 + 19);
      *(v95 + 80) = *(v96 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v95);
      v106 = *(v96 + 1);
      *v95 = *v96;
      *(v95 + 16) = v106;
      v108 = *(v96 + 3);
      v107 = *(v96 + 4);
      v109 = *(v96 + 2);
      *(v95 + 80) = *(v96 + 10);
      *(v95 + 48) = v108;
      *(v95 + 64) = v107;
      *(v95 + 32) = v109;
    }
  }

  else if (v98)
  {
    v103 = *(v96 + 1);
    *v95 = v98;
    *(v95 + 8) = v103;
    *(v95 + 16) = *(v96 + 4);
    *(v95 + 24) = *(v96 + 3);
    v104 = *(v96 + 4);
    *(v95 + 32) = v104;
    *(v95 + 40) = *(v96 + 5);
    *(v95 + 48) = *(v96 + 12);
    *(v95 + 56) = *(v96 + 7);
    *(v95 + 64) = *(v96 + 16);
    *(v95 + 68) = *(v96 + 17);
    *(v95 + 72) = *(v96 + 18);
    *(v95 + 76) = *(v96 + 19);
    *(v95 + 80) = *(v96 + 10);
    v105 = v104;
  }

  else
  {
    v110 = *(v96 + 1);
    *v95 = *v96;
    *(v95 + 16) = v110;
    v111 = *(v96 + 2);
    v112 = *(v96 + 3);
    v113 = *(v96 + 4);
    *(v95 + 80) = *(v96 + 10);
    *(v95 + 48) = v112;
    *(v95 + 64) = v113;
    *(v95 + 32) = v111;
  }

  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>> and conformance <> _VariadicView.Tree<A, B>)
  {
    type metadata accessor for _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>>();
    lazy protocol witness table accessor for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

void type metadata accessor for _GraphValue<SectionContainer>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static SectionContainer._makeViewList(root:inputs:body:)()
{
  type metadata accessor for _GraphValue<SectionContainer>(0, &lazy cache variable for type metadata for _GraphValue<SectionContainer>, &type metadata for SectionContainer, MEMORY[0x1E697DDB8]);
  _GraphValue.subscript.getter();
  _GraphValue.subscript.getter();
  return static _ViewListOutputs.groupViewList<A, B>(parent:footer:inputs:body:)();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SectionStyleConfiguration.Header(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Header>, lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header, &type metadata for SectionStyleConfiguration.Header, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance UseSidebarHeaderModifierPredicate()
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();

  PropertyList.subscript.getter();
  if (v2 == 1)
  {

    return 0;
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
    PropertyList.subscript.getter();

    return v1;
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UseSidebarHeaderModifierPredicate()
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  PropertyList.subscript.getter();
  if (v2)
  {
    return 0;
  }

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance ListStyleContent(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return a4(v7);
}

unint64_t lazy protocol witness table accessor for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Header>, lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header, &type metadata for SectionStyleConfiguration.Header, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>);
  }

  return result;
}

uint64_t destroy for ScrapedContentTree()
{
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ResponderCommandsKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static ResponderCommandsKey.defaultValue;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SectionStyleConfiguration.Footer(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Footer>, lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer, &type metadata for SectionStyleConfiguration.Footer, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t static Section<>._viewListCount(inputs:)(_OWORD *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  type metadata accessor for Section();
  swift_getWitnessTable();
  return static PubliclyPrimitiveView.defaultViewListCount(inputs:)(v4);
}

uint64_t static PubliclyPrimitiveView.defaultViewListCount(inputs:)(_OWORD *a1)
{
  v1 = a1[3];
  v6[2] = a1[2];
  v6[3] = v1;
  v6[4] = a1[4];
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance StyledView()
{
  type metadata accessor for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>();
  lazy protocol witness table accessor for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>();
  return static _ViewListOutputs.groupViewListCount<A, B, C>(inputs:contentType:headerType:footerType:)();
}

unint64_t lazy protocol witness table accessor for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.RawContent>, lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent, &type metadata for SectionStyleConfiguration.RawContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>);
  }

  return result;
}

uint64_t MakeBody.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a2);
  (*(a3 + 32))(a2, a3);
  return (*(v5 + 8))(v7, a2);
}

char *SwiftUISearchController.init()()
{
  v1 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  v2 = type metadata accessor for ToolbarStorage.SearchItem(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActive] = 2;
  v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActiveAnimated] = 2;
  v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_lastToolbarBehavior] = 3;
  v3 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for UIKitSearchBarCoordinator(0)) init];
  v4 = &v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions];
  *v4 = 0;
  v4[8] = -1;
  v5 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  *&v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture] = 0;
  v7 = &v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 10) = 0;
  v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_allowsSecureDrawing] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SwiftUISearchController(0);
  v8 = objc_msgSendSuper2(&v11, sel_initWithSearchResultsController_, 0);
  *(*&v8[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator] + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_delegate + 8) = &protocol witness table for UISearchController;
  swift_unknownObjectWeakAssign();
  v9 = v8;
  [v9 setObscuresBackgroundDuringPresentation_];
  [v9 setDelegate_];
  [v9 setSearchResultsUpdater_];

  return v9;
}

void type metadata completion function for UIKitSearchBarCoordinator()
{
  type metadata accessor for SearchFieldConfiguration?(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SearchBoundProperty<TextSelection?>?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for SearchFieldConfiguration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id UIKitSearchBarCoordinator.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_triggerSubmission];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_clearAction];
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
  v5 = type metadata accessor for SearchFieldConfiguration(0);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v6 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_tokenScopes] = v6;
  v7 = &v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 10) = 0;
  v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_placement] = 2;
  v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement] = 0;
  v8 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_selection;
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  (*(*(v9 - 8) + 56))(&v0[v8], 1, 1, v9);
  *&v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_isViewUpdating] = 0;
  v10 = &v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldText];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldTokens] = v6;
  v11 = &v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix];
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 1) = xmmword_18CD68310;
  v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_needsStateRestoration] = 0;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SwiftUISearchController._searchBar.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar);
  }

  else
  {
    v4 = closure #1 in SwiftUISearchController._searchBar.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t Section<>.init(header:footer:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(v16 + 16))(v20, a1, v21, v18);
  a3(v22);
  (*(v16 + 8))(a1, a4);
  return Section.init(header:content:footer:)(v20, v14, a2, a4, a5, v25, a7);
}

id closure #1 in SwiftUISearchController._searchBar.getter(uint64_t a1)
{
  type metadata accessor for UIKitSearchBar();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator);
  swift_unknownObjectWeakAssign();
  v4 = v3;
  [v2 setDelegate_];
  v5 = [v2 searchTextField];
  [v5 setDelegate_];

  v6 = [v2 searchTextField];
  [v6 addTarget:v4 action:sel_primaryActionTriggered_ forControlEvents:0x2000];

  return v2;
}

uint64_t Section<>.internalBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v39 = a5;
  v9 = *(a1 + 16);
  v34 = lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header();
  v57 = &type metadata for SectionStyleConfiguration.Header;
  v58 = v9;
  v59 = v34;
  v60 = a2;
  type metadata accessor for StaticSourceWriter();
  v32 = type metadata accessor for ModifiedContent();
  v37 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v40 = &v28 - v10;
  v11 = *(a1 + 32);
  v35 = lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer();
  v57 = &type metadata for SectionStyleConfiguration.Footer;
  v58 = v11;
  v59 = v35;
  v60 = a4;
  v28 = a4;
  type metadata accessor for StaticSourceWriter();
  v36 = type metadata accessor for ModifiedContent();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v28 - v12;
  v13 = v5 + *(a1 + 52);
  v14 = *(v13 + 8);
  v15 = *(v13 + 16);
  v57 = *v13;
  v58 = v14;
  LOBYTE(v59) = v15;
  v29 = *(a1 + 24);
  v30 = v5;
  v46 = v9;
  v47 = v29;
  v48 = v11;
  v49 = a2;
  v16 = v41;
  v50 = v41;
  v51 = a4;
  v52 = v5;
  outlined copy of Binding<Int>?(v57, v14);
  v17 = lazy protocol witness table accessor for type ResolvedSectionStyle and conformance ResolvedSectionStyle();
  v31 = v9;
  View.viewAlias<A, B>(_:_:)(&type metadata for SectionStyleConfiguration.Header, partial apply for closure #1 in Section<>.internalBody.getter, v45, &type metadata for ResolvedSectionStyle, &type metadata for SectionStyleConfiguration.Header, v9, v17);
  outlined consume of Binding<NavigationSplitViewColumn>?(v57, v58);
  v18 = v29;
  v43[2] = v9;
  v43[3] = v29;
  v43[4] = v11;
  v43[5] = a2;
  v19 = v11;
  v20 = v28;
  v43[6] = v16;
  v43[7] = v28;
  v44 = v5;
  v55 = v17;
  v56 = &protocol witness table for StaticSourceWriter<A, B>;
  v21 = v32;
  WitnessTable = swift_getWitnessTable();
  v23 = v33;
  v24 = v40;
  View.viewAlias<A, B>(_:_:)(&type metadata for SectionStyleConfiguration.Footer, partial apply for closure #2 in Section<>.internalBody.getter, v43, v21, &type metadata for SectionStyleConfiguration.Footer, v19, WitnessTable);
  (*(v37 + 8))(v24, v21);
  v42[2] = v31;
  v42[3] = v18;
  v42[4] = v19;
  v42[5] = a2;
  v42[6] = v41;
  v42[7] = v20;
  v42[8] = v30;
  v53 = WitnessTable;
  v54 = &protocol witness table for StaticSourceWriter<A, B>;
  v25 = v36;
  v26 = swift_getWitnessTable();
  lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent();
  View.viewAlias<A, B>(_:_:)(&type metadata for SectionStyleConfiguration.RawContent, partial apply for closure #3 in Section<>.internalBody.getter, v42, v25, &type metadata for SectionStyleConfiguration.RawContent, v18, v26);
  return (*(v38 + 8))(v23, v25);
}

void type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined init with take of ToolbarStorage.SearchItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of ToolbarStorage.SearchItem?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SwiftUISearchController.update(to:)(uint64_t a1)
{
  v2 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v83 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = (&v77 - v5);
  v6 = MEMORY[0x1E6981948];
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v77 - v8;
  v10 = type metadata accessor for SearchFieldConfiguration(0);
  v80 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  v16 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v81 = *(a1 + v16[12]);
  outlined init with copy of ToolbarStorage.SearchItem?(a1, v9, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, v6, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v17 = v16[5];
  v18 = a1;
  v87 = a1;
  v19 = *(a1 + v17);
  v20 = v18 + v16[8];
  v22 = *v20;
  v21 = *(v20 + 8);
  v23 = *(v20 + 16);
  LODWORD(v79) = v23;
  v78 = *(v20 + 24);
  outlined init with take of Binding<SearchFieldState>(v9, v12);
  if (v19)
  {
    v24 = 1;
  }

  else
  {
    v24 = -1;
  }

  v25 = v10[7];
  v26 = &v12[v10[6]];
  *v26 = v19;
  v26[8] = v24;
  v12[v25] = 1;
  v27 = &v12[v10[8]];
  *v27 = v22;
  *(v27 + 1) = v21;
  v27[16] = v23;
  *(v27 + 3) = v78;
  outlined init with take of ToolbarStorage.SearchItem(v12, v15, type metadata accessor for SearchFieldConfiguration);
  v85 = v15;
  v28 = v15;
  v29 = v84;
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v28, v84, type metadata accessor for SearchFieldConfiguration);
  (*(v80 + 56))(v29, 0, 1, v10);
  v30 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
  v31 = v86;
  swift_beginAccess();

  outlined copy of Text.Storage(v22, v21, v79);

  outlined assign with take of SearchFieldConfiguration?(v29, &v31[v30]);
  swift_endAccess();
  v84 = v16;
  v32 = (v87 + v16[9]);
  if (v32[1])
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v33 = v86;
  v86[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_allowsSecureDrawing] = v96;
  v34 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator;
  v35 = *&v33[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator];
  v36 = SwiftUISearchController._searchBar.getter();
  v37 = v32[1];
  *&v97[0] = *v32;
  *(&v97[0] + 1) = v37;

  UIKitSearchBarCoordinator.updateSearchBar(_:to:in:)(v36, v85, v97);

  v38 = *&v33[v34];
  v39 = *&v33[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar];
  v40 = v84;
  v41 = v87;
  v42 = v87 + v84[6];
  v43 = *v42;
  v79 = v34;
  v80 = v43;
  LODWORD(v34) = *(v42 + 8);
  v44 = v38;
  v45 = v39;
  UIKitSearchBarCoordinator.resolvedTokenScopes.getter();
  v47 = v46;
  v49 = v48;
  v50 = v41 + *(v40 + 44);
  v51 = *(v50 + 48);
  v97[2] = *(v50 + 32);
  v97[3] = v51;
  v97[4] = *(v50 + 64);
  v98 = *(v50 + 80);
  v52 = *(v50 + 16);
  v97[0] = *v50;
  v97[1] = v52;
  v53 = v33;
  specialized UIKitSearchScopeCoordinating<>.updateScopes(_:newScopes:newTokenScopes:customScopeBar:customScopeBarUpdate:)(v45, v80, v34, v47, v49, v97, v44, v53, v81);

  outlined consume of PlatformItemCollection?(v47, v49);
  v54 = *v32;
  v55 = v32[1];
  *&v91[0] = v54;
  *(&v91[0] + 1) = v55;

  SwiftUISearchController.updateSuggestionPlacement(in:)();

  v56 = v41 + *(v40 + 28);
  v57 = *v56;
  v58 = &v53[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions];
  v59 = *&v53[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions];
  v60 = *(v56 + 8);
  *v58 = *v56;
  LOBYTE(v45) = v58[8];
  v58[8] = v60;
  outlined copy of PlatformItemCollection?(v57, v60);
  outlined consume of PlatformItemCollection?(v59, v45);
  if (*&v53[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent] || (v61 = v58[8], v61 == 255))
  {
    [v53 _setSearchSuggestionGroups_];
    goto LABEL_21;
  }

  v62 = *v58;
  v63 = MEMORY[0x1E69E7CC0];
  if (v61)
  {
    outlined copy of PlatformItemCollection.Storage(*v58, 1);
  }

  else
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v65 = *WeakValue;

      outlined consume of PlatformItemCollection?(v62, v61);
      v62 = v65;
    }

    else
    {
      outlined consume of PlatformItemCollection?(v62, v61);
      v62 = MEMORY[0x1E69E7CC0];
    }
  }

  *&v91[0] = *(*&v86[v79] + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement);
  *(&v91[0] + 1) = v63;
  SearchSuggestionsVisitor.visit(platformItemList:)(v62);

  if (*(&v91[0] + 1) >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_17;
    }

LABEL_19:
    v66.super.isa = 0;
    goto LABEL_20;
  }

  if (!*((*(&v91[0] + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_17:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UISearchSuggestionItemGroup);
  v66.super.isa = Array._bridgeToObjectiveC()().super.isa;
LABEL_20:

  [v53 _setSearchSuggestionGroups_];

LABEL_21:
  v67 = v87 + v84[13];
  v68 = *(v67 + 48);
  v69 = *(v67 + 16);
  v92 = *(v67 + 32);
  v93 = v68;
  v70 = *(v67 + 48);
  v94 = *(v67 + 64);
  v71 = *(v67 + 16);
  v91[0] = *v67;
  v91[1] = v71;
  v89[1] = v69;
  v89[2] = v92;
  v72 = *(v67 + 64);
  v89[3] = v70;
  v89[4] = v72;
  v95 = *(v67 + 80);
  v90 = *(v67 + 80);
  v89[0] = v91[0];
  outlined init with copy of ToolbarStorage.SearchItem?(v91, &v88, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
  SwiftUISearchController.customAccessoryContent.setter(v89);
  type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>, &type metadata for SearchScopeActivationKey, &protocol witness table for SearchScopeActivationKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>();
  if (v55)
  {

    PropertyList.Tracker.value<A>(_:for:)();

    SwiftUISearchController.updateScopesActivation(to:)(v89[0]);
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>, &type metadata for EnvironmentValues.SearchPresentationToolbarBehaviorKey, &protocol witness table for EnvironmentValues.SearchPresentationToolbarBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
    SwiftUISearchController.updateScopesActivation(to:)(v89[0]);
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>, &type metadata for EnvironmentValues.SearchPresentationToolbarBehaviorKey, &protocol witness table for EnvironmentValues.SearchPresentationToolbarBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  SwiftUISearchController.updateToolbarBehavior(to:)(LOBYTE(v89[0]));
  v73 = v83;
  v74 = v85;
  MEMORY[0x18D00ACC0](v82);
  v75 = *v73;
  _s7SwiftUI16SearchFieldStateVWOhTm_1(v73, type metadata accessor for SearchFieldState);
  SwiftUISearchController.enqueueIsActiveUpdate(_:)(v75 != 2);
  return _s7SwiftUI16SearchFieldStateVWOhTm_1(v74, type metadata accessor for SearchFieldConfiguration);
}

uint64_t outlined assign with take of SearchFieldConfiguration?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UIKitSearchBarCoordinator.updateSearchBar(_:to:in:)(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v102 = a2;
  type metadata accessor for SearchFieldConfiguration?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v101 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v99 = v9;
  v98 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchBoundProperty<TextSelection?>?();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v97 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v89 - v14;
  v15 = type metadata accessor for SearchAttributedString();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v93 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v90);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchEnvironmentStorage.BoundProperties?(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v95 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v89 - v23;
  v25 = *a3;
  v26 = a3[1];
  v100 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_isViewUpdating;
  *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_isViewUpdating) = 1;
  v27 = [a1 searchTextField];
  specialized UIKitTextInput<>.update(in:)(v25, v26);
  specialized UIKitTextInputTraits.updateTraits(in:)(v25, v26);
  specialized UITextInputTraits_Private.updatePrivateTraits(in:)(v25, v26);
  *&v112 = v25;
  *(&v112 + 1) = v26;
  EnvironmentValues.effectiveFont.getter();
  *&v111[0] = v25;
  *(&v111[0] + 1) = v26;
  v28 = Font.platformFont(in:)();

  [v27 setFont_];

  *&v112 = v25;
  *(&v112 + 1) = v26;
  LOBYTE(v111[0]) = 0;

  [v27 setTextAlignment_];
  *&v112 = v25;
  *(&v112 + 1) = v26;
  specialized UIKitSearchBarCoordinator.updateTextColor(_:in:)(a1, &v112);
  *&v112 = v25;
  *(&v112 + 1) = v26;
  specialized UIKitSearchBarCoordinator.updateToolbarBehavior(_:in:)(a1, &v112);
  *&v112 = v25;
  *(&v112 + 1) = v26;
  EnvironmentValues.searchBoundProperties.getter(v24);
  v29 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v30 = *(v29 - 8);
  v92 = *(v30 + 48);
  v91 = v30 + 48;
  if (v92(v24, 1, v29) == 1)
  {
    outlined destroy of Binding<SearchFieldState>(v24, type metadata accessor for SearchEnvironmentStorage.BoundProperties?);
    memset(v111, 0, 44);
LABEL_7:
    v31 = type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>?;
    goto LABEL_23;
  }

  outlined init with copy of Binding<SearchFieldState>(&v24[*(v29 + 28)], v111, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>?);
  outlined destroy of Binding<SearchFieldState>(v24, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
  if (!*(&v111[0] + 1))
  {
    goto LABEL_7;
  }

  outlined init with take of PlatformItemList.Item(v111, &v112, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
  outlined init with copy of Binding<SearchFieldState>(&v112, v111, type metadata accessor for Binding<PlatformSearchPopoverAnchor?>);
  type metadata accessor for Binding<PlatformSearchPopoverAnchor?>();
  MEMORY[0x18D00ACC0](v110);
  outlined init with copy of AnyAccessibilityValue?(v110, v109, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
  outlined destroy of AnyAccessibilityValue?(v109, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
  swift_unknownObjectWeakInit();
  v109[8] = 0;
  outlined init with copy of AnyAccessibilityValue?(v110, &v105, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
  outlined init with copy of AnyAccessibilityValue?(v109, &v107, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
  if ((v106 & 1) == 0)
  {
    outlined init with copy of AnyAccessibilityValue?(&v105, v104, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
    if (v108)
    {
      outlined destroy of PlatformSearchPopoverAnchor(v104);
      goto LABEL_10;
    }

    outlined init with take of PlatformSearchPopoverAnchor(&v107, v103);
    Strong = swift_unknownObjectWeakLoadStrong();
    v33 = swift_unknownObjectWeakLoadStrong();
    v34 = v33;
    if (Strong)
    {
      if (v33)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISearchTextField);
        v35 = static NSObject.== infix(_:_:)();

        if ((v35 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_16:
        outlined destroy of PlatformSearchPopoverAnchor(v103);
        outlined destroy of PlatformSearchPopoverAnchor(v104);
        outlined destroy of AnyAccessibilityValue?(&v105, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
LABEL_21:
        outlined destroy of AnyAccessibilityValue?(v109, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
        outlined destroy of AnyAccessibilityValue?(v110, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
        outlined destroy of Binding<SearchFieldState>(&v112, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
        goto LABEL_22;
      }

      v34 = Strong;
    }

    else if (!v33)
    {
      goto LABEL_16;
    }

LABEL_19:
    outlined destroy of PlatformSearchPopoverAnchor(v103);
    outlined destroy of PlatformSearchPopoverAnchor(v104);
    outlined destroy of AnyAccessibilityValue?(&v105, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
    goto LABEL_20;
  }

  if ((v108 & 1) == 0)
  {
LABEL_10:
    outlined destroy of Binding<SearchFieldState>(&v105, type metadata accessor for (PlatformSearchPopoverAnchor?, PlatformSearchPopoverAnchor?));
LABEL_20:
    dispatch thunk of AnyLocation.set(_:transaction:)();
    goto LABEL_21;
  }

  outlined destroy of AnyAccessibilityValue?(v109, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
  outlined destroy of AnyAccessibilityValue?(v110, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
  outlined destroy of Binding<SearchFieldState>(&v112, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
  outlined destroy of AnyAccessibilityValue?(&v105, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
LABEL_22:
  v31 = type metadata accessor for Binding<PlatformSearchPopoverAnchor?>;
LABEL_23:
  outlined destroy of Binding<SearchFieldState>(v111, v31);
  v94 = v27;
  v36 = [a1 _isEnabled];
  *&v112 = v25;
  *(&v112 + 1) = v26;
  if (v36 != (EnvironmentValues.isEnabled.getter() & 1))
  {
    *&v112 = v25;
    *(&v112 + 1) = v26;
    [a1 _setEnabled_];
  }

  type metadata accessor for Binding<SearchFieldState>(0);
  v37 = v102;
  MEMORY[0x18D00ACC0]();
  v38 = *(v90 + 36);
  v39 = type metadata accessor for AttributedString();
  v40 = &v18[v38];
  v41 = v93;
  (*(*(v39 - 8) + 32))(v93, v40, v39);
  v113 = SearchAttributedString.splitIntoTokensAndText()();
  rawValue = v113._0._rawValue;
  countAndFlagsBits = v113._1._countAndFlagsBits;
  object = v113._1._object;
  outlined destroy of Binding<SearchFieldState>(v41, type metadata accessor for SearchAttributedString);
  *&v112 = v25;
  *(&v112 + 1) = v26;
  UIKitSearchBarCoordinator.updateTextIfNeeded(_:text:in:)(a1, countAndFlagsBits, object, &v112);

  v45 = type metadata accessor for SearchFieldConfiguration(0);
  UIKitSearchBarCoordinator.updateTokensIfNeeded(_:tokens:platformTokens:)(a1, rawValue, *(v37 + *(v45 + 24)), *(v37 + *(v45 + 24) + 8));

  *&v112 = v25;
  *(&v112 + 1) = v26;
  v46 = v95;
  EnvironmentValues.searchBoundProperties.getter(v95);
  if (v92(v46, 1, v29) == 1)
  {
    outlined destroy of Binding<SearchFieldState>(v46, type metadata accessor for SearchEnvironmentStorage.BoundProperties?);
    v47 = v98;
    v48 = v96;
    v49 = v99;
    (*(v98 + 56))(v96, 1, 1, v99);
  }

  else
  {
    v48 = v96;
    outlined init with copy of Binding<SearchFieldState>(v46 + *(v29 + 24), v96, type metadata accessor for SearchBoundProperty<TextSelection?>?);
    outlined destroy of Binding<SearchFieldState>(v46, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
    v49 = v99;
    v47 = v98;
  }

  v50 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_selection;
  swift_beginAccess();
  outlined assign with take of SearchBoundProperty<TextSelection?>?(v48, v4 + v50, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  swift_endAccess();
  v51 = v4 + v50;
  v52 = v97;
  outlined init with copy of Binding<SearchFieldState>(v51, v97, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  v53 = (*(v47 + 48))(v52, 1, v49);
  v54 = v94;
  if (v53 == 1)
  {
    v55 = type metadata accessor for SearchBoundProperty<TextSelection?>?;
  }

  else
  {
    v56 = v52;
    v52 = v89;
    outlined init with take of PlatformItemList.Item(v56, v89, type metadata accessor for SearchBoundProperty<TextSelection?>);
    v57 = *(v52 + *(v49 + 40));
    if (v57 != -1)
    {
      v58 = *(v52 + *(v49 + 36));
      v59 = *(v58 + *(*v58 + 104));
      if (v59 != -1 && v57 == v59)
      {
        specialized UIKitSearchBarCoordinator.updateTextSelectionIfNeeded(_:selection:)(a1);
      }
    }

    v55 = type metadata accessor for SearchBoundProperty<TextSelection?>;
  }

  outlined destroy of Binding<SearchFieldState>(v52, v55);
  *&v112 = v25;
  *(&v112 + 1) = v26;
  v111[0] = 0uLL;
  v105 = 128;
  v60 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();
  if (v60)
  {
    v61 = v60;
    v62 = [v60 string];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  v66 = [a1 placeholder];
  if (v66)
  {
    v99 = v25;
    v67 = v4;
    v68 = a1;
    v69 = v54;
    v70 = v45;
    v71 = v66;
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    if (!v65)
    {
      v75 = 0;
      v45 = v70;
      v54 = v69;
      a1 = v68;
      v4 = v67;
LABEL_49:

      [a1 setPlaceholder_];

      goto LABEL_50;
    }

    if (v72 == v63 && v65 == v74)
    {

      v45 = v70;
      v54 = v69;
      a1 = v68;
      v4 = v67;
      goto LABEL_50;
    }

    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v45 = v70;
    v54 = v69;
    a1 = v68;
    v4 = v67;
    if (v76)
    {

      goto LABEL_50;
    }

LABEL_48:
    v75 = MEMORY[0x18D00C850](v63, v65);
    goto LABEL_49;
  }

  if (v65)
  {
    goto LABEL_48;
  }

LABEL_50:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission);
  if (v26)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v77 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_triggerSubmission);
  *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_triggerSubmission) = v112;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v77);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, &type metadata for EnvironmentValues.__Key_searchTextClearAction, &protocol witness table for EnvironmentValues.__Key_searchTextClearAction, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, &type metadata for EnvironmentValues.__Key_searchTextClearAction, &protocol witness table for EnvironmentValues.__Key_searchTextClearAction);
  if (v26)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v78 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_clearAction);
  *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_clearAction) = v112;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v78);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);
  if (v26)
  {

    PropertyList.Tracker.value<A>(_:for:)();

    *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_placement) = v112;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey>, &type metadata for EnvironmentValues.IsSearchVibrancyEnabledKey, &protocol witness table for EnvironmentValues.IsSearchVibrancyEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey>, &type metadata for EnvironmentValues.IsSearchVibrancyEnabledKey, &protocol witness table for EnvironmentValues.IsSearchVibrancyEnabledKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
    *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_placement) = v112;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey>, &type metadata for EnvironmentValues.IsSearchVibrancyEnabledKey, &protocol witness table for EnvironmentValues.IsSearchVibrancyEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey>, &type metadata for EnvironmentValues.IsSearchVibrancyEnabledKey, &protocol witness table for EnvironmentValues.IsSearchVibrancyEnabledKey);
    PropertyList.subscript.getter();
  }

  v79 = v112;
  v80 = OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_ensureVibrancy;
  v81 = a1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_ensureVibrancy];
  a1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_ensureVibrancy] = v112;
  if (v79 != v81)
  {
    if (v79)
    {
      v82 = 2;
    }

    else
    {
      v82 = 0;
    }

    [a1 _setOverrideUserInterfaceRenderingMode_];
    if (a1[v80])
    {
      v83 = 1;
    }

    else
    {
      v83 = -1;
    }

    [a1 _setOverrideVibrancyTrait_];
  }

  v84 = v102;
  UIKitSearchBarCoordinator.updateIsFirstResponder(_:to:)(a1);

  *(v4 + v100) = 0;
  v85 = v84;
  v86 = v101;
  outlined init with copy of Binding<SearchFieldState>(v85, v101, type metadata accessor for SearchFieldConfiguration);
  (*(*(v45 - 8) + 56))(v86, 0, 1, v45);
  v87 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
  swift_beginAccess();
  outlined assign with take of SearchBoundProperty<TextSelection?>?(v86, v4 + v87, type metadata accessor for SearchFieldConfiguration?);
  result = swift_endAccess();
  *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_needsStateRestoration) = 0;
  return result;
}

uint64_t type metadata accessor for SearchAttributedString()
{
  result = type metadata singleton initialization cache for SearchAttributedString;
  if (!type metadata singleton initialization cache for SearchAttributedString)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SearchAttributedString()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SectionStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  return result;
}

id sub_18BF9B644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E697FE38];
  if (a2)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>();
    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();

    [v3 setKeyboardType_];
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.Tracker.value<A>(_:for:)();

    [v3 setKeyboardAppearance_];
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>, &type metadata for AutocorrectionTypeKey, &protocol witness table for AutocorrectionTypeKey, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    [v3 setKeyboardType_];
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    [v3 setKeyboardAppearance_];
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>, &type metadata for AutocorrectionTypeKey, &protocol witness table for AutocorrectionTypeKey, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v6 = 1;
  if ((v12 & 1) == 0)
  {
    v6 = 2;
  }

  if (v12 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [v3 setAutocorrectionType_];
  if (a2)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextContentTypeKey>, &type metadata for TextContentTypeKey, &protocol witness table for TextContentTypeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.Tracker.value<A>(_:for:)();

    v8 = v13;
    if (v13)
    {
LABEL_11:

      v9 = MEMORY[0x18D00C850](v12, v8);
      swift_bridgeObjectRelease_n();
      goto LABEL_14;
    }
  }

  else
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextContentTypeKey>, &type metadata for TextContentTypeKey, &protocol witness table for TextContentTypeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    v8 = v13;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_14:
  [v3 setTextContentType_];

  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>();
  if (a2)
  {
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  [v3 setAutocapitalizationType_];
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>, &type metadata for EnvironmentValues.SubmitLabelKey, &protocol witness table for EnvironmentValues.SubmitLabelKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>();
  if (a2)
  {
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v10 = qword_18CDEE1E0[v12];
  if ([v3 returnKeyType] != v10)
  {
    [v3 setReturnKeyType_];
  }

  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, &type metadata for EnvironmentValues.WritingToolsBehaviorKey, &protocol witness table for EnvironmentValues.WritingToolsBehaviorKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>();
  if (a2)
  {
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return [v3 setWritingToolsBehavior_];
}

uint64_t closure #2 in Section<>.internalBody.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Section();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v13 + 48), a4, a7);
  static ViewBuilder.buildExpression<A>(_:)(v12, a4, a7);
  return (*(v10 + 8))(v12, a4);
}

void type metadata accessor for RangeSet<String.Index>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _ss8RangeSetVySS5IndexVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t destroy for FindContext(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>, &type metadata for AutocorrectionTypeKey, &protocol witness table for AutocorrectionTypeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextContentTypeKey>, &type metadata for TextContentTypeKey, &protocol witness table for TextContentTypeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedSectionStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 16);
  return outlined copy of Binding<Int>?(v2, v3);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>, &type metadata for EnvironmentValues.SubmitLabelKey, &protocol witness table for EnvironmentValues.SubmitLabelKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t SectionStyleModifier.styleBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v8 = *(a4 + 24);
  v9 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v27 - v11;
  type metadata accessor for _TraitWritingModifier<IsExpandedTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsExpandedTraitKey>, MEMORY[0x1E697F410], MEMORY[0x1E697F408], MEMORY[0x1E697FDB8]);
  v13 = type metadata accessor for ModifiedContent();
  v28 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v27 = &v27 - v18;
  (*(v8 + 24))(a1, a2, a3, v9, v17);
  v33 = a1;
  v34 = a2;
  v35 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = MEMORY[0x1E697F410];
  v21 = MEMORY[0x1E697F408];
  View._trait<A>(_:_:)();
  (*(v29 + 8))(v12, AssociatedTypeWitness);
  v22 = lazy protocol witness table accessor for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<IsExpandedTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<IsExpandedTraitKey>, v20, v21);
  v31 = AssociatedConformanceWitness;
  v32 = v22;
  WitnessTable = swift_getWitnessTable();
  v24 = v27;
  static ViewBuilder.buildExpression<A>(_:)(v15, v13, WitnessTable);
  v25 = *(v28 + 8);
  v25(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)(v24, v13, WitnessTable);
  return (v25)(v24, v13);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, &type metadata for EnvironmentValues.WritingToolsBehaviorKey, &protocol witness table for EnvironmentValues.WritingToolsBehaviorKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t DefaultSectionStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  outlined copy of Binding<Int>?(a1, a2);
  outlined copy of Environment<Bool>.Content(KeyPath, 0);
  result = outlined consume of Environment<Bool>.Content(KeyPath, 0);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 0;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MenuSectionStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  v4 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content(v3, v4);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

void specialized UITextInputTraits_Private.updatePrivateTraits(in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v4 = v5 | (v6 << 16);
  if (v5 != 2)
  {
    if ([v3 respondsToSelector_])
    {
      if ((([v3 forceEnableDictation] ^ v4) & 1) == 0)
      {
LABEL_10:
        if (([v3 respondsToSelector_] & 1) == 0)
        {
          if (v5)
          {
LABEL_16:
            if ([v3 respondsToSelector_])
            {
              if ([v3 forceSpellingDictation] == (v5 & 0x100) >> 8)
              {
LABEL_21:
                if ([v3 respondsToSelector_])
                {
                  if ([v3 preferOnlineDictation] == (v4 & 0x10000) >> 16)
                  {
                    return;
                  }
                }

                else if ((v4 & 0x10000) == 0)
                {
                  return;
                }

                _UITextInputTraitSetPreferOnlineDictation(v3, HIWORD(v4) & 1);
                return;
              }
            }

            else if ((v5 & 0x100) == 0)
            {
              goto LABEL_21;
            }

            _UITextInputTraitSetForceSpellingDictation(v3, (v4 >> 8) & 1);
            goto LABEL_21;
          }

LABEL_15:
          _UITextInputTraitSetForceDisableDictation(v3, (v5 ^ 1) & 1);
          goto LABEL_16;
        }

LABEL_14:
        if (([v3 forceDisableDictation] ^ v4))
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else if ((v5 & 1) == 0)
    {
      if (([v3 respondsToSelector_] & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    _UITextInputTraitSetForceEnableDictation(v3, v5 & 1);
    goto LABEL_10;
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t SidebarSectionStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = a2 != 0;
  if (a2)
  {
    v12 = a1;
  }

  else
  {
    v12 = 1;
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v12;
  *(a4 + 32) = a2;
  *(a4 + 40) = v11 & a3;
  *(a4 + 41) = v11;
  *(a4 + 48) = KeyPath;
  *(a4 + 56) = 0;
  *(a4 + 64) = v9;
  *(a4 + 72) = 0;
  *(a4 + 80) = v10;
  *(a4 + 88) = 0;
  outlined copy of Binding<Int>?(a1, a2);

  return outlined copy of Binding<Int>?(a1, a2);
}

uint64_t initializeWithCopy for SidebarSection(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = v4;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 41);
  v8 = *(a2 + 40);
  outlined copy of StateOrBinding<Bool>(v5, v6, v8, v7);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 41) = v7;
  v9 = *(a2 + 48);
  LOBYTE(v6) = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v9, v6);
  *(a1 + 48) = v9;
  *(a1 + 56) = v6;
  v10 = *(a2 + 64);
  LOBYTE(v6) = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v10, v6);
  *(a1 + 64) = v10;
  *(a1 + 72) = v6;
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  return a1;
}

void specialized UIKitSearchBarCoordinator.updateTextColor(_:in:)(void *a1, void *a2)
{
  v3 = a2[1];
  *&v27 = *a2;
  *(&v27 + 1) = v3;
  v4 = EnvironmentValues.foregroundColor.getter();
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  if (!v3)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey);
    PropertyList.subscript.getter();
    v6 = v28;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
    v7 = UIColor.init(_:)(v5);
    v8 = v7;
    goto LABEL_8;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey);

  PropertyList.Tracker.value<A>(_:for:)();

  v6 = v28;
  if (v28 < 0)
  {
    goto LABEL_7;
  }

LABEL_4:

  outlined consume of Text.Storage(v27, *(&v27 + 1), v6 & 1);

LABEL_5:
  v7 = 0;
LABEL_8:
  v9 = [a1 searchTextField];
  v10 = *MEMORY[0x1E69DB650];
  v11 = v9;
  v12 = [v11 defaultTextAttributes];
  type metadata accessor for NSAttributedStringKey(0);
  _s7SwiftUI13TextSelectionVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v15 & 1) != 0))
  {
    outlined init with copy of Any(*(v13 + 56) + 32 * v14, &v27);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
    if (swift_dynamicCast())
    {
      v16 = *&v25[0];
    }

    else
    {
      v16 = 0;
    }

    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v16 = 0;
    if (!v7)
    {
LABEL_14:

      goto LABEL_23;
    }
  }

  if (v16)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
    v17 = v7;
    v18 = v16;
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {

      return;
    }
  }

  v29 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  *&v27 = v7;
  v20 = v7;
  v21 = [v11 defaultTextAttributes];
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = v22;
  if (v29)
  {
    outlined init with take of Any(&v27, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v10, isUniquelyReferenced_nonNull_native);
    v26 = v22;
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v27, &lazy cache variable for type metadata for Any?);
    specialized Dictionary._Variant.removeValue(forKey:)(v10, v25);
    outlined destroy of AnyAccessibilityValue?(v25, &lazy cache variable for type metadata for Any?);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 setDefaultTextAttributes_];

LABEL_23:
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t destroy for SidebarSection(uint64_t a1)
{
  if (*(a1 + 8))
  {
  }

  outlined consume of StateOrBinding<Bool>(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 41));
  outlined consume of Environment<Selector?>.Content(*(a1 + 48), *(a1 + 56));
  outlined consume of Environment<Selector?>.Content(*(a1 + 64), *(a1 + 72));
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

double EnvironmentValues.disclosureGroupIndicatorTrailingPadding.getter()
{
  v1 = v0[1];
  v4 = *v0;
  EnvironmentValues.horizontalSizeClass.getter();
  if (v3 == 2 || (result = 0.0, (v3 & 1) != 0))
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
    if (v1)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    result = 8.0;
    if (v4)
    {
      return 4.0;
    }
  }

  return result;
}

void SidebarSection.body.getter(uint64_t a1@<X8>)
{
  v33 = a1;
  type metadata accessor for Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayou();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[3];
  v41 = v1[2];
  v42 = v9;
  v43[0] = v1[4];
  *(v43 + 9) = *(v1 + 73);
  v10 = v1[1];
  v39 = *v1;
  v40 = v10;
  closure #1 in closure #2 in SidebarSection.body.getter(&v39);
  v11 = *(&v39 + 1);
  v32 = v39;
  v31 = v40;
  specialized closure #1 in closure #1 in SidebarSection.resolvedHeader<A>(base:)(&v39, v4);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedC(0);
  specialized closure #2 in closure #1 in SidebarSection.resolvedHeader<A>(base:)(&v39, &v4[*(v12 + 44)]);
  v14 = *(&v40 + 1);
  v13 = v41;
  v15 = BYTE9(v41);
  v30 = BYTE8(v41);
  if (BYTE9(v41))
  {
    v35 = *(&v40 + 1);
    v36 = v41;
    v37 = BYTE8(v41) & 1;
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v38);
  }

  else
  {
    LOBYTE(v35) = BYTE8(v40) & 1;
    v36 = v41;
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
  }

  v16 = 1;
  if ((v38 & 1) == 0)
  {
    v16 = specialized Environment.wrappedValue.getter(*&v43[0], SBYTE8(v43[0])) ^ 1;
  }

  v17 = &v8[*(v6 + 44)];
  v18 = v16 & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = 1;
  *(v19 + 17) = v18;
  outlined init with take of Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod(v4, v17, type metadata accessor for Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod);
  type metadata accessor for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStac();
  v21 = (v17 + *(v20 + 36));
  *v21 = _s7SwiftUI4ViewPAAE11outlineRoot_10isExpandedQrSb_SbSgtFyAA07OutlineE13ConfigurationVzcfU_TA_0;
  v21[1] = v19;
  v22 = specialized Environment.wrappedValue.getter(v42, SBYTE8(v42));
  v23 = v33;
  sub_18BF9D5B0(v8, v33);
  if (!v11 || (v35 = v32, v36 = v11, v37 = v31, _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](&v38), v38 == 1))
  {
    v38 = 0;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_12:
    LOBYTE(v35) = v14 & 1;
    v36 = v13;
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
    if ((v34 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  v38 = 1;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v35 = v14;
  v36 = v13;
  v37 = v30 & 1;
  _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v34);
  if (v34)
  {
    goto LABEL_13;
  }

LABEL_10:
  v24 = specialized Environment.wrappedValue.getter(*&v43[0], SBYTE8(v43[0]));
LABEL_14:
  sub_18BF9D614(v8);
  v25 = v38;
  type metadata accessor for Section<StaticIf<_SemanticFeature<Semantics_v5>, <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _Padd();
  v27 = (v23 + v26[11]);
  *v27 = v25;
  v27[1] = v24 & 1;
  *(v23 + v26[12]) = v22 & 1;
  v28 = v23 + v26[13];
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
}

uint64_t sub_18BF9D5B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayou();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BF9D614(uint64_t a1)
{
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayou();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id specialized UIKitSearchBarCoordinator.updateToolbarBehavior(_:in:)(void *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior);
    PropertyList.subscript.getter();
  }

  if (v8 != 1 || ([a1 _overrideInlineInactiveWidth], v4 = v3, v5 = 1.79769313e308, v4 == 1.79769313e308))
  {
    result = [a1 _overrideInlineInactiveWidth];
    if (v7 == 0.0)
    {
      return result;
    }

    v5 = 0.0;
  }

  return [a1 _setOverrideInlineInactiveWidth_];
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in SidebarSection.headerWithOutlineDisclosure<A>(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static SystemStyleMetrics.list.getter();
  v4 = v12;

  if (*(a1 + 41))
  {
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v11);
  }

  else
  {
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
  }

  v5 = v11;
  specialized Environment.wrappedValue.getter(*(a1 + 80), *(a1 + 88));
  result = EdgeInsets.init(_all:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 17) = v5;
  *(a2 + 24) = 8;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = 0;
  return result;
}

uint64_t outlined init with copy of Binding<SearchFieldState>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7BindingVyAA16SearchFieldStateVGWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for CollectionOfOne<Hashable>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void *InlineActionsSectionStyle.makeBody(configuration:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = 0;
  if (a2)
  {
    v7 = result;
    v8 = a2;
    v9 = a3 & 1;
    type metadata accessor for Binding<Bool>();
    result = MEMORY[0x18D00ACC0](&v6);
    if (v6 != 1)
    {
      v5 = 1;
    }
  }

  *a4 = v5;
  *(a4 + 1) = 257;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  return result;
}

uint64_t protocol witness for SectionStyle.makeBody(configuration:) in conformance PlainSectionStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return outlined copy of Binding<Int>?(a1, a2);
}

void type metadata accessor for Binding<PlatformSearchPopoverAnchor?>()
{
  if (!lazy cache variable for type metadata for Binding<PlatformSearchPopoverAnchor?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<PlatformSearchPopoverAnchor?>);
    }
  }
}

uint64_t outlined destroy of Binding<SearchFieldState>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SectionStyleConfiguration.RawContent(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.RawContent>, lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent, &type metadata for SectionStyleConfiguration.RawContent, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SectionStyleConfiguration.Actions(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Actions>, lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions, &type metadata for SectionStyleConfiguration.Actions, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

Swift::tuple_OpaquePointer_String __swiftcall SearchAttributedString.splitIntoTokensAndText()()
{
  type metadata accessor for Slice<AttributedString.CharacterView>();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v46 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AttributedString.CharacterView();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for AttributedString.Runs.Index();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString.Runs.Run();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v40 - v12;
  v13 = type metadata accessor for AttributedString.Runs();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 0;
  v63 = 0xE000000000000000;
  v47 = v0;
  AttributedString.runs.getter();
  (*(v14 + 16))(v19, v16, v13);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8]);
  dispatch thunk of Collection.startIndex.getter();
  (*(v14 + 8))(v16, v13);
  ++v52;
  v50 = (v8 + 16);
  v49 = (v8 + 32);
  v48 = (v8 + 8);
  ++v42;
  v41 = MEMORY[0x1E69E7CC0];
  v20 = v43;
  while (1)
  {
    v21 = v53;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0]);
    v22 = v54;
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v52)(v21, v22);
    if (v23)
    {
      break;
    }

    v24 = dispatch thunk of Collection.subscript.read();
    v25 = v51;
    (*v50)(v51);
    v24(v60, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v49)(v10, v25, v7);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if (*(&v56 + 1))
    {
      v60[2] = v57;
      v60[3] = v58;
      v61 = v59;
      v60[0] = v55;
      v60[1] = v56;
      outlined init with copy of AnyToken(v60, &v55);
      v30 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v30);
      }

      outlined destroy of AnyToken(v60);
      (*v48)(v10, v7);
      *(v30 + 2) = v32 + 1;
      v41 = v30;
      v33 = &v30[72 * v32];
      *(v33 + 2) = v55;
      v34 = v56;
      v35 = v57;
      v36 = v58;
      *(v33 + 12) = v59;
      *(v33 + 4) = v35;
      *(v33 + 5) = v36;
      *(v33 + 3) = v34;
    }

    else
    {
      outlined destroy of AnyToken?(&v55);
      AttributedString.characters.getter();
      v26 = v7;
      v27 = v45;
      AttributedString.Runs.Run.range.getter();
      AttributedString.CharacterView.subscript.getter();
      v28 = v27;
      v7 = v26;
      outlined destroy of SearchAttributedString(v28, type metadata accessor for Range<AttributedString.Index>);
      (*v42)(v20, v44);
      v29 = String.init(_:)();
      MEMORY[0x18D00C9B0](v29);

      (*v48)(v10, v26);
    }
  }

  outlined destroy of SearchAttributedString(v19, type metadata accessor for IndexingIterator<AttributedString.Runs>);
  v37 = v62;
  v38 = v63;
  v39 = v41;
  result._1._object = v38;
  result._1._countAndFlagsBits = v37;
  result._0._rawValue = v39;
  return result;
}

void type metadata accessor for Slice<AttributedString.CharacterView>()
{
  if (!lazy cache variable for type metadata for Slice<AttributedString.CharacterView>)
  {
    type metadata accessor for AttributedString.CharacterView();
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
    v0 = type metadata accessor for Slice();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Slice<AttributedString.CharacterView>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of SearchAttributedString(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for SearchAttributedString(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

id UIKitSearchBarCoordinator.updateTextIfNeeded(_:text:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = *a4;
  v34 = a4[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey);
  if (v34)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v7 = v42;
  v8 = v43;
  v9 = (v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix);
  v10 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix + 8);
  v11 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix + 16);
  v12 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix + 24);
  v37 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix);
  v38 = v10;
  v39 = v11;
  v40 = v12;
  outlined copy of Text.Suffix.Storage(v37, v10, v11);
  v35 = v44;
  v36 = v41;
  outlined copy of Text.Suffix.Storage(v41, v42, v43);
  v13 = MEMORY[0x18D009D50](&v41, &v37);
  outlined consume of Text.Suffix.Storage(v37, v38, v39);
  outlined consume of Text.Suffix.Storage(v41, v42, v43);
  v14 = (v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldText);
  v32 = a2;
  if (*(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldText) == a2 && *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldText + 8) == a3)
  {
    if ((v13 & 1) == 0)
    {
LABEL_10:
      v15 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v16 = a2;
      v17 = a3;
      v18 = MEMORY[0x18D00C850](v16, a3);
      v19 = [v15 initWithString_];

      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_needsStateRestoration) == 1)
  {
    goto LABEL_10;
  }

  v17 = a3;
  v19 = 0;
  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_11:
    v41 = v33;
    v42 = v34;
    v37 = 0;
    v38 = 0;
    outlined copy of Text.Suffix.Storage(v36, v7, v8);
    v20 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();
    outlined consume of Text.Storage(v36, v7, v8 & 1);

    v21 = v32;
    if (!v19)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

LABEL_14:
  v20 = 0;
  v21 = v32;
  if (!v19)
  {
LABEL_21:

    *v14 = v21;
    v14[1] = v17;

    v28 = *v9;
    v29 = v9[1];
    v30 = v9[2];
    *v9 = v36;
    v9[1] = v7;
    v9[2] = v8;
    v9[3] = v35;
    return outlined consume of Text.Suffix.Storage(v28, v29, v30);
  }

LABEL_15:
  v41 = v33;
  v42 = v34;
  if (EnvironmentValues.foregroundColor.getter())
  {
    v22 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);

    v24 = UIColor.init(_:)(v23);
    v44 = v22;
    v41 = v24;
    NSMutableAttributedString.addUniformAttribute(_:value:)();

    __swift_destroy_boxed_opaque_existential_1(&v41);
  }

  if (v20)
  {
    [v19 appendAttributedString_];
  }

  result = [a1 searchField];
  if (result)
  {
    v26 = result;
    v27 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
    [v26 setAttributedText_];

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier()
{
  result = lazy protocol witness table cache variable for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier;
  if (!lazy protocol witness table cache variable for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined copy of Text.Suffix.Storage(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.SearchSuffixKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = -0.0;
  *(a1 + 16) = xmmword_18CD68310;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of Text.Suffix.Storage(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

void UIKitSearchBarCoordinator.updateTokensIfNeeded(_:tokens:platformTokens:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v73 = a3;
  v74 = a4;
  v7 = ~a4;
  v8 = type metadata accessor for PlatformItemList.Item();
  v69 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v68 - v12;
  if (v7)
  {
    v68 = a1;
    v13 = *(a2 + 16);
    v70 = v4;
    v71 = v13;
    if (v13)
    {
      v14 = 0;
      v15 = a2 + 32;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = v69;
      while (1)
      {
        v110 = v14;
        outlined init with copy of AnyToken(v15, v111);
        outlined init with copy of AnyToken(v111, &v94);
        if (v74)
        {
          v18 = v73;
          outlined copy of PlatformItemCollection?(v73, v74);
        }

        else
        {
          WeakValue = AGGraphGetWeakValue();
          if (WeakValue)
          {
            v18 = *WeakValue;
          }

          else
          {
            v18 = MEMORY[0x1E69E7CC0];
          }
        }

        if (v14 >= *(v18 + 16))
        {
          break;
        }

        v75 = v15;
        v20 = v72;
        outlined init with copy of Binding<SearchFieldState>(v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, v72, type metadata accessor for PlatformItemList.Item);

        type metadata accessor for UIKitSearchBarCoordinator.RepresentedToken(0);
        v21 = swift_allocObject();
        v22 = v97;
        *(v21 + 48) = v96;
        *(v21 + 64) = v22;
        *(v21 + 80) = v98;
        v23 = v95;
        *(v21 + 16) = v94;
        *(v21 + 32) = v23;
        v24 = OBJC_IVAR____TtCC7SwiftUI25UIKitSearchBarCoordinatorP33_9E78780A6F2626BA9019200B48F4A36B16RepresentedToken_platformItem;
        outlined init with take of PlatformItemList.Item(v20, v21 + OBJC_IVAR____TtCC7SwiftUI25UIKitSearchBarCoordinatorP33_9E78780A6F2626BA9019200B48F4A36B16RepresentedToken_platformItem, type metadata accessor for PlatformItemList.Item);
        v25 = *(v21 + v24);
        if (v25)
        {
          v26 = [v25 string];
          if (!v26)
          {
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = MEMORY[0x18D00C850](v27);

            v17 = v69;
          }

          *&v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(&v102 + 1) = v28;
          outlined init with copy of Binding<SearchFieldState>(v21 + v24, v10, type metadata accessor for PlatformItemList.Item);
          v29 = *(v10 + 13);
          v30 = *(v10 + 11);
          v91 = *(v10 + 12);
          v92 = v29;
          v31 = *(v10 + 13);
          v93[0] = *(v10 + 14);
          *(v93 + 11) = *(v10 + 235);
          v32 = *(v10 + 9);
          v33 = *(v10 + 7);
          v87 = *(v10 + 8);
          v88 = v32;
          v34 = *(v10 + 9);
          v35 = *(v10 + 11);
          v89 = *(v10 + 10);
          v90 = v35;
          v36 = *(v10 + 5);
          v84[0] = *(v10 + 4);
          v84[1] = v36;
          v37 = *(v10 + 7);
          v39 = *(v10 + 4);
          v38 = *(v10 + 5);
          v85 = *(v10 + 6);
          v86 = v37;
          v99[3] = v91;
          v100 = v31;
          v101[0] = *(v10 + 14);
          *(v101 + 11) = *(v10 + 235);
          v98 = v87;
          v99[0] = v34;
          v99[1] = v89;
          v99[2] = v30;
          v94 = v39;
          v95 = v38;
          v96 = v85;
          v97 = v33;
          if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v94) == 1)
          {
            v40 = 0;
          }

          else if (v100)
          {
            swift_unknownObjectRetain();
            objc_opt_self();
            v40 = swift_dynamicCastObjCClassUnconditional();
          }

          else
          {
            v82 = v98;
            v83[0] = v99[0];
            *(v83 + 12) = *(v99 + 12);
            v78 = v94;
            v79 = v95;
            v80 = v96;
            v81 = v97;
            v41 = *(v10 + 6);
            outlined init with copy of AnyAccessibilityValue?(v84, v76, &lazy cache variable for type metadata for Image.Resolved?);
            outlined init with copy of GraphicsImage(&v94, v76);
            v40 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v41);
            outlined destroy of AnyAccessibilityValue?(v84, &lazy cache variable for type metadata for Image.Resolved?);
            v76[4] = v82;
            v77[0] = v83[0];
            *(v77 + 12) = *(v83 + 12);
            v76[0] = v78;
            v76[1] = v79;
            v76[2] = v80;
            v76[3] = v81;
            outlined destroy of GraphicsImage(v76);
          }

          outlined destroy of Binding<SearchFieldState>(v10, type metadata accessor for PlatformItemList.Item);
          *&v103[0] = v40;
          outlined init with copy of AnyHashable(v21 + 48, v103 + 8);
          v42 = objc_opt_self();
          v43 = v40;
          v44 = [v42 tokenWithIcon:v43 text:v26];

          v104 = v44;
          [v44 setRepresentedObject_];

          v107 = v103[1];
          v108 = v103[2];
          v109 = v104;
          v105 = v102;
          v106 = v103[0];
        }

        else
        {

          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0;
        }

        v45 = v75;
        outlined destroy of Binding<SearchFieldState>(&v110, type metadata accessor for (offset: Int, element: AnyToken));
        if (*(&v105 + 1))
        {
          v96 = v107;
          v97 = v108;
          *&v98 = v109;
          v94 = v105;
          v95 = v106;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v47 = *(v16 + 2);
          v46 = *(v16 + 3);
          if (v47 >= v46 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v16);
          }

          *(v16 + 2) = v47 + 1;
          v48 = &v16[72 * v47];
          *(v48 + 2) = v94;
          v49 = v95;
          v50 = v96;
          v51 = v97;
          *(v48 + 12) = v98;
          *(v48 + 4) = v50;
          *(v48 + 5) = v51;
          *(v48 + 3) = v49;
        }

        else
        {
          outlined destroy of AnyAccessibilityValue?(&v105, &lazy cache variable for type metadata for UIKitSearchBarCoordinator.SearchToken?);
        }

        ++v14;
        v15 = v45 + 72;
        if (v71 == v14)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v52 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldTokens;
    v53 = v70;
    v54 = *(v70 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldTokens);

    v55 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI25UIKitSearchBarCoordinatorC0E5Token33_9E78780A6F2626BA9019200B48F4A36BLLV_Tt1g5(v16, v54);

    if ((v55 & 1) != 0 && *(v53 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_needsStateRestoration) != 1)
    {
      v61 = *(*(v53 + v52) + 16);
      if (v61)
      {
        if (v61 > *(v16 + 2))
        {
LABEL_48:
          __break(1u);
          return;
        }

        v62 = 0;
        v63 = 96;
        while (1)
        {
          v65 = *(v70 + v52);
          if (v62 >= *(v65 + 16))
          {
            break;
          }

          v66 = *&v16[v63];
          v67 = *(v65 + v63);
          if ([v66 representedObject])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
            v64 = _bridgeAnythingToObjectiveC<A>(_:)();
            __swift_destroy_boxed_opaque_existential_1(&v94);
          }

          else
          {
            v64 = 0;
          }

          ++v62;
          [v67 setRepresentedObject_];

          swift_unknownObjectRelease();
          v63 += 72;
          if (v61 == v62)
          {
            goto LABEL_35;
          }
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v56 = [v68 searchTextField];
      v57 = *(v16 + 2);
      if (v57)
      {
        *&v84[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v58 = (v16 + 32);
        do
        {
          outlined init with copy of UIKitSearchBarCoordinator.SearchToken(v58, &v94);
          v59 = v98;
          outlined destroy of UIKitSearchBarCoordinator.SearchToken(&v94);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v58 += 72;
          --v57;
        }

        while (v57);
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISearchToken);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v56 setTokens_];

LABEL_35:
      v53 = v70;
    }

    *(v53 + v52) = v16;
  }
}

void type metadata accessor for _ViewModifier_Content<OnScrollVisibilityChangeModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OnScrollVisibilityChangeModifier>)
  {
    lazy protocol witness table accessor for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<OnScrollVisibilityChangeModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<OnScrollVisibilityChangeModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<OnScrollVisibilityChangeModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<OnScrollVisibilityChangeModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<OnScrollVisibilityChangeModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<OnScrollVisibilityChangeModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void UIKitSearchBarCoordinator.updateIsFirstResponder(_:to:)(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  type metadata accessor for SearchFieldConfiguration?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for SearchFieldConfiguration(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
  swift_beginAccess();
  v19 = *(v13 + 48);
  if (v19(v2 + v18, 1, v12))
  {
    v39 = 0;
  }

  else
  {
    outlined init with copy of Binding<SearchFieldState>(v2 + v18, v17, type metadata accessor for SearchFieldConfiguration);
    type metadata accessor for Binding<SearchFieldState>(0);
    MEMORY[0x18D00ACC0]();
    outlined destroy of Binding<SearchFieldState>(v17, type metadata accessor for SearchFieldConfiguration);
    v20 = *v11;
    outlined destroy of Binding<SearchFieldState>(v11, type metadata accessor for SearchFieldState);
    v39 = v20 != 2;
  }

  type metadata accessor for Binding<SearchFieldState>(0);
  v22 = v21;
  MEMORY[0x18D00ACC0]();
  v38 = *v11;
  outlined destroy of Binding<SearchFieldState>(v11, type metadata accessor for SearchFieldState);
  outlined init with copy of Binding<SearchFieldState>(v2 + v18, v5, type metadata accessor for SearchFieldConfiguration?);
  if (v19(v5, 1, v12) == 1)
  {
    outlined destroy of Binding<SearchFieldState>(v5, type metadata accessor for SearchFieldConfiguration?);
    MEMORY[0x18D00ACC0](v22);
    v23 = v11[*(v40 + 44) + 4];
    outlined destroy of Binding<SearchFieldState>(v11, type metadata accessor for SearchFieldState);
    goto LABEL_6;
  }

  v25 = v34;
  outlined init with take of PlatformItemList.Item(v5, v34, type metadata accessor for SearchFieldConfiguration);
  v26 = v35;
  MEMORY[0x18D00ACC0](v22);
  v27 = v40;
  v28 = *(v26 + *(v40 + 44));
  outlined destroy of Binding<SearchFieldState>(v26, type metadata accessor for SearchFieldState);
  v29 = v36;
  MEMORY[0x18D00ACC0](v22);
  outlined destroy of Binding<SearchFieldState>(v25, type metadata accessor for SearchFieldConfiguration);
  v30 = v29 + *(v27 + 44);
  v31 = *v30;
  v23 = *(v30 + 4);
  outlined destroy of Binding<SearchFieldState>(v29, type metadata accessor for SearchFieldState);
  if (v28 == -1 || v31 == -1 || v28 != v31)
  {
LABEL_6:
    v24 = 1;
    if (v38 != 2 && !v39 || (v23 & 1) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (v38 != 2 && !v39)
  {
    v24 = 1;
    goto LABEL_18;
  }

  v32 = !v39;
  if (v38 != 2)
  {
    v32 = 1;
  }

  if ((v32 & 1) == 0)
  {
LABEL_8:
    v24 = 0;
LABEL_18:
    UIKitSearchBar.enqueueFirstResponderUpdate(_:)(v24);
  }
}

Swift::Void __swiftcall UIKitSearchBar.enqueueFirstResponderUpdate(_:)(Swift::Bool a1)
{
  v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder] = a1;
  v2 = [v1 searchTextField];
  v9 = [v2 _viewControllerForAncestor];

  v3 = [v1 searchTextField];
  v4 = [v3 window];

  v5 = v9;
  if (v9 && (v6 = [v9 transitionCoordinator], v5 = v9, v6))
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in UIKitSearchBar.enqueueFirstResponderUpdate(_:);
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    aBlock[3] = &block_descriptor_12;
    v8 = _Block_copy(aBlock);

    [v6 animateAlongsideTransition:0 completion:v8];

    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else if (v4)
  {
    LOBYTE(aBlock[0]) = 17;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    static Update.enqueueAction(reason:_:)();
  }

  else
  {
  }
}

uint64_t sub_18BFA006C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

void UIKitSearchBarCoordinator.resolvedTokenScopes.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = [Strong searchTextField];

  if (!v2)
  {
    return;
  }

  v3 = [v2 selectedTextRange];
  if (!v3)
  {
LABEL_23:

    return;
  }

  v4 = v3;
  if ([v3 isEmpty])
  {

LABEL_6:
    return;
  }

  v5 = [v2 tokensInRange_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISearchToken);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter() == 1 && __CocoaSet.count.getter())
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_9:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x18D00E9C0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  if ([v8 representedObject])
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
    type metadata accessor for UIKitSearchBarCoordinator.RepresentedToken(0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_6;
    }

    type metadata accessor for SearchFieldConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
    v9 = *(type metadata accessor for PlatformItemList.Item() - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18CD63400;
    outlined init with copy of Binding<SearchFieldState>(v12 + OBJC_IVAR____TtCC7SwiftUI25UIKitSearchBarCoordinatorP33_9E78780A6F2626BA9019200B48F4A36B16RepresentedToken_platformItem, v11 + v10, type metadata accessor for PlatformItemList.Item);
  }

  else
  {

    outlined destroy of AnyAccessibilityValue?(v15, &lazy cache variable for type metadata for Any?);
  }
}

uint64_t specialized UIKitSearchScopeCoordinating<>.updateScopes(_:newScopes:newTokenScopes:customScopeBar:customScopeBarUpdate:)(void *a1, uint64_t a2, int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v87 = a8;
  v92 = a1;
  v93 = a7;
  v91 = a3;
  v90 = a2;
  v11 = *(a6 + 48);
  v12 = ~a5;
  v116 = *(a6 + 32);
  v117 = v11;
  v118 = *(a6 + 64);
  v119 = *(a6 + 80);
  v13 = *a6;
  v14 = *(a6 + 16);
  v94 = a6;
  v114 = v13;
  v115 = v14;
  v15 = type metadata accessor for PlatformItemList.Item();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v87 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v97 = (&v87 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v87 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v87 - v28);
  type metadata accessor for PlatformItemList.Item?(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v88 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v87 - v33;
  v99 = v26;
  v89 = v15;
  if (!v12)
  {
    goto LABEL_19;
  }

  specialized Collection.first.getter(a4, a5 & 1, &v87 - v33);
  if ((*(v16 + 48))(v34, 1, v15) == 1)
  {
    outlined destroy of Binding<SearchFieldState>(v34, type metadata accessor for PlatformItemList.Item?);
LABEL_19:
    v38 = 0;
    goto LABEL_20;
  }

  v35 = *(v34 + 117);

  result = outlined destroy of Binding<SearchFieldState>(v34, type metadata accessor for PlatformItemList.Item);
  if (!v35)
  {
    goto LABEL_19;
  }

  v95 = *(v35 + 16);
  if (v95)
  {
    v37 = 0;
    v38 = MEMORY[0x1E69E7CC0];
    while (v37 < *(v35 + 16))
    {
      v39 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v40 = *(v16 + 72);
      outlined init with copy of Binding<SearchFieldState>(v35 + v39 + v40 * v37, v29, type metadata accessor for PlatformItemList.Item);
      if (*v29)
      {

        outlined init with take of PlatformItemList.Item(v29, v100, type metadata accessor for PlatformItemList.Item);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v108 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 16) + 1, 1);
          v38 = v108;
        }

        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 > 1, v43 + 1, 1);
          v38 = v108;
        }

        *(v38 + 16) = v43 + 1;
        result = outlined init with take of PlatformItemList.Item(v100, v38 + v39 + v43 * v40, type metadata accessor for PlatformItemList.Item);
        v26 = v99;
      }

      else
      {
        result = outlined destroy of Binding<SearchFieldState>(v29, type metadata accessor for PlatformItemList.Item);
      }

      if (v95 == ++v37)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_80;
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (!*(v38 + 16))
  {

    goto LABEL_19;
  }

LABEL_20:
  v45 = v93;
  v44 = v94;
  v95 = v38;
  if (v91 != 0xFF)
  {
    v46 = v88;
    specialized Collection.first.getter(v90, v91 & 1, v88);
    if ((*(v16 + 48))(v46, 1, v89) == 1)
    {
      outlined destroy of Binding<SearchFieldState>(v46, type metadata accessor for PlatformItemList.Item?);
      goto LABEL_35;
    }

    v47 = *(v46 + 936);

    result = outlined destroy of Binding<SearchFieldState>(v46, type metadata accessor for PlatformItemList.Item);
    if (!v47)
    {
      goto LABEL_35;
    }

    v48 = *(v47 + 16);
    if (!v48)
    {
      v50 = MEMORY[0x1E69E7CC0];
LABEL_76:

      if (!*(v50 + 16))
      {

        v50 = 0;
      }

      v45 = v93;
      v44 = v94;
      goto LABEL_36;
    }

    v49 = 0;
    v50 = MEMORY[0x1E69E7CC0];
    while (v49 < *(v47 + 16))
    {
      v51 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v52 = *(v16 + 72);
      outlined init with copy of Binding<SearchFieldState>(v47 + v51 + v52 * v49, v26, type metadata accessor for PlatformItemList.Item);
      if (*v26)
      {

        outlined init with take of PlatformItemList.Item(v26, v98, type metadata accessor for PlatformItemList.Item);
        v53 = swift_isUniquelyReferenced_nonNull_native();
        *&v108 = v50;
        if ((v53 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 16) + 1, 1);
          v50 = v108;
        }

        v55 = *(v50 + 16);
        v54 = *(v50 + 24);
        if (v55 >= v54 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1);
          v50 = v108;
        }

        *(v50 + 16) = v55 + 1;
        result = outlined init with take of PlatformItemList.Item(v98, v50 + v51 + v55 * v52, type metadata accessor for PlatformItemList.Item);
        v26 = v99;
      }

      else
      {
        result = outlined destroy of Binding<SearchFieldState>(v26, type metadata accessor for PlatformItemList.Item);
      }

      if (v48 == ++v49)
      {
        goto LABEL_76;
      }
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_35:
  v50 = 0;
LABEL_36:
  if (*v44)
  {

LABEL_38:
    v56 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes;
    if (*(*(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes) + 16))
    {
      [v92 setScopeButtonTitles_];
      *(v45 + v56) = MEMORY[0x1E69E7CC0];
    }

    v57 = *v44;
    if (*v44)
    {
      v58 = *(v44 + 8);
      v104 = *(v44 + 24);
      v59 = *(v44 + 56);
      v105 = *(v44 + 40);
      v106 = v59;
      v107 = *(v44 + 72);
      v103 = v58;
      v102 = v57;
      v110 = v116;
      v111 = v117;
      v112 = v118;
      v113 = v119;
      v108 = v114;
      v109 = v115;
      outlined init with copy of BoundInputsView(&v108, &v101);
      closure #1 in SwiftUISearchController.update(to:)(&v102, v87, a9);
      outlined destroy of AnyAccessibilityValue?(v44, &lazy cache variable for type metadata for BoundInputsView?);
    }

LABEL_70:
    v82 = v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar;
    v83 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 48);
    v110 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 32);
    v111 = v83;
    v112 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 64);
    v113 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 80);
    v84 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 16);
    v108 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar);
    v109 = v84;
    v85 = *(v44 + 16);
    *v82 = *v44;
    *(v82 + 16) = v85;
    v86 = *(v44 + 48);
    *(v82 + 32) = *(v44 + 32);
    *(v82 + 48) = v86;
    *(v82 + 64) = *(v44 + 64);
    *(v82 + 80) = *(v44 + 80);
    outlined destroy of AnyAccessibilityValue?(&v108, &lazy cache variable for type metadata for BoundInputsView?);
    return outlined init with copy of AnyAccessibilityValue?(v44, &v102, &lazy cache variable for type metadata for BoundInputsView?);
  }

  if (v95)
  {
    v60 = v95;
  }

  else
  {
    if (!v50)
    {
      goto LABEL_38;
    }

    v60 = v50;
  }

  v61 = *(v60 + 16);
  v62 = v97;
  v98 = v61;
  v99 = v60;
  if (v61)
  {
    v63 = v60 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v64 = *(v16 + 72);

    v65 = MEMORY[0x1E69E7CC0];
    v100 = v16;
    do
    {
      outlined init with copy of Binding<SearchFieldState>(v63, v62, type metadata accessor for PlatformItemList.Item);
      if (*v62)
      {
        v66 = [*v62 string];
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v62;
        v70 = v69;

        outlined destroy of Binding<SearchFieldState>(v68, type metadata accessor for PlatformItemList.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
        }

        v72 = *(v65 + 2);
        v71 = *(v65 + 3);
        if (v72 >= v71 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v65);
        }

        *(v65 + 2) = v72 + 1;
        v73 = &v65[16 * v72];
        *(v73 + 4) = v67;
        *(v73 + 5) = v70;
        v16 = v100;
        v62 = v97;
      }

      else
      {
        outlined destroy of Binding<SearchFieldState>(v62, type metadata accessor for PlatformItemList.Item);
      }

      v63 += v64;
      --v61;
    }

    while (v61);
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
  }

  v74 = [v92 scopeButtonTitles];
  if (v74 && (v75 = v74, v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v75, LOBYTE(v75) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v65, v76), , (v75 & 1) != 0))
  {
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v92 setScopeButtonTitles_];
  }

  v45 = v93;
  v44 = v94;
  if (!v98)
  {

    if (v50)
    {
LABEL_67:
      *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes) = v50;
    }

LABEL_68:
    if (v95)
    {
      *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_tokenScopes) = v95;
    }

    goto LABEL_70;
  }

  v78 = 0;
  result = v99;
  v79 = v99 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v80 = v96;
  while (v78 < *(result + 16))
  {
    outlined init with copy of Binding<SearchFieldState>(&v79[*(v16 + 72) * v78], v80, type metadata accessor for PlatformItemList.Item);
    v81 = *(v80 + 954);
    outlined destroy of Binding<SearchFieldState>(v80, type metadata accessor for PlatformItemList.Item);
    if (!v81)
    {

      [v92 setSelectedScopeButtonIndex_];
      if (v50)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    ++v78;
    result = v99;
    if (v98 == v78)
    {

      if (!v50)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t outlined consume of PlatformItemCollection?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of PlatformItemCollection.Storage(result, a2 & 1);
  }

  return result;
}

uint64_t SwiftUISearchController.updateSuggestionPlacement(in:)()
{
  result = EnvironmentValues.searchProperties.getter();
  v2 = *&v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator];
  if ((result & 0xFE) == 2)
  {
    *(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement) = 0;
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement) = 1;

    return [v0 _setUsesSearchSuggestionsMenuForStackedSearch_];
  }

  return result;
}

void SwiftUISearchController.updateCustomAccessory()()
{
  v1 = v0;
  v2 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchFieldConfiguration(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v57 - v11;
  v13 = [v1 viewIfLoaded];
  v14 = [v13 window];

  if (v14)
  {
  }

  v15 = &v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent];
  v16 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 48];
  v68 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 32];
  v69 = v16;
  v70 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 64];
  v71 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 80];
  v17 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 16];
  v66 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent];
  v67 = v17;
  v72[0] = v66;
  v72[1] = v17;
  v72[3] = v16;
  v72[4] = v70;
  v72[2] = v68;
  v73 = v71;
  if (v66)
  {
    v18 = *(v15 + 3);
    v76 = *(v15 + 2);
    v77 = v18;
    v78 = *(v15 + 4);
    v79 = *(v15 + 10);
    v19 = *(v15 + 1);
    v74 = *v15;
    v75 = v19;
    if (v14)
    {
      v20 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
      swift_beginAccess();
      outlined init with copy of ToolbarStorage.SearchItem?(&v1[v20], v12, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
      if ((*(v6 + 48))(v12, 1, v5))
      {
        v21 = &lazy cache variable for type metadata for SearchFieldConfiguration?;
        v22 = type metadata accessor for SearchFieldConfiguration;
        v23 = MEMORY[0x1E69E6720];
        v24 = _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0;
        v25 = v12;
      }

      else
      {
        _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v12, v8, type metadata accessor for SearchFieldConfiguration);
        v62 = v68;
        v63 = v69;
        v64 = v70;
        v65 = v71;
        v60 = v66;
        v61 = v67;
        outlined init with copy of BoundInputsView(&v60, v58);
        outlined destroy of ToolbarStorage.SearchItem?(v12, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
        _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
        MEMORY[0x18D00ACC0]();
        _s7SwiftUI16SearchFieldStateVWOhTm_1(v8, type metadata accessor for SearchFieldConfiguration);
        v26 = *v4;
        _s7SwiftUI16SearchFieldStateVWOhTm_1(v4, type metadata accessor for SearchFieldState);
        if (v26 != 2 && (v26 & 1) != 0)
        {
          v27 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost;
          v28 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost];
          if (v28)
          {
            v29 = *&v28[direct field offset for UIHostingController.host];
            v30 = v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x60);
            swift_beginAccess();
            v31 = *(v30 + 1);
            v58[0] = *v30;
            v58[1] = v31;
            v32 = *(v30 + 2);
            v33 = *(v30 + 3);
            v34 = *(v30 + 4);
            v59 = *(v30 + 10);
            v58[3] = v33;
            v58[4] = v34;
            v58[2] = v32;
            v35 = v77;
            *(v30 + 2) = v76;
            *(v30 + 3) = v35;
            *(v30 + 4) = v78;
            *(v30 + 10) = v79;
            v36 = v75;
            *v30 = v74;
            *(v30 + 1) = v36;
            v37 = MEMORY[0x1E69E6720];
            outlined init with copy of ToolbarStorage.SearchItem?(&v66, v57, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
            v38 = v28;
            v39 = v29;
            outlined destroy of BoundInputsView(v58);
            type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
            lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>();
            ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
            outlined destroy of ToolbarStorage.SearchItem?(&v66, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, v37, type metadata accessor for Spacer?);

            return;
          }

          type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for UIHostingController<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for UIHostingController);
          v45 = objc_allocWithZone(v44);
          outlined init with copy of BoundInputsView(v72, v58);
          v46 = specialized UIHostingController.init(rootView:)(&v74);
          v47 = *&v1[v27];
          *&v1[v27] = v46;
          v48 = v46;

          v49 = direct field offset for UIHostingController.sizingOptions;
          swift_beginAccess();
          v50 = *(v48 + v49);
          *(v48 + v49) = 1;
          v57[0] = v50;
          (*((*MEMORY[0x1E69E7D40] & *v48) + 0x3D8))(v57);
          v51 = v48;
          [v51 setModalPresentationStyle_];
          v43 = [v51 popoverPresentationController];

          if (v43)
          {
            v52 = v43;
            v53 = [v1 searchBar];
            [v52 setSourceView_];

            type metadata accessor for Spacer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v54 = swift_allocObject();
            *(v54 + 16) = xmmword_18CD69590;
            v55 = v52;
            *(v54 + 32) = [v1 searchBar];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v55 setPassthroughViews_];

            [v55 setDelegate_];
          }

          [v1 presentViewController:v51 animated:1 completion:0];
          outlined destroy of ToolbarStorage.SearchItem?(&v66, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);

          goto LABEL_15;
        }

        v21 = &lazy cache variable for type metadata for BoundInputsView?;
        v22 = &type metadata for BoundInputsView;
        v23 = MEMORY[0x1E69E6720];
        v24 = type metadata accessor for Spacer?;
        v25 = &v66;
      }

      outlined destroy of ToolbarStorage.SearchItem?(v25, v21, v22, v23, v24);
    }
  }

  v40 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost];
  if (!v40)
  {
    return;
  }

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v62 = partial apply for closure #1 in SwiftUISearchController.updateCustomAccessory();
  *(&v62 + 1) = v41;
  *&v60 = MEMORY[0x1E69E9820];
  *(&v60 + 1) = 1107296256;
  *&v61 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v61 + 1) = &block_descriptor_57_0;
  v42 = _Block_copy(&v60);
  v43 = v40;

  [v43 dismissViewControllerAnimated:1 completion:v42];
  _Block_release(v42);
LABEL_15:
}

uint64_t sub_18BFA18B0()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

id SwiftUISearchController.updateCustomAccessoryRecoveryGesture()()
{
  v1 = v0;
  v2 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchFieldConfiguration(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent);
  v13 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture;
  v14 = *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture);
  if (v14)
  {
    if (v12)
    {
      goto LABEL_7;
    }

    *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture) = 0;
    SwiftUISearchController.didChangeCustomAccessoryRecoveryGesture(oldValue:)(v14);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    v15 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_handleCustomAccessoryRecoveryGesture];
    v14 = *(v0 + v13);
    *(v0 + v13) = v15;
    v16 = v15;
    SwiftUISearchController.didChangeCustomAccessoryRecoveryGesture(oldValue:)(v14);
  }

LABEL_7:
  v17 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
  swift_beginAccess();
  outlined init with copy of ToolbarStorage.SearchItem?(v1 + v17, v11, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    outlined destroy of ToolbarStorage.SearchItem?(v11, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v18 = 0;
    result = *(v1 + v13);
    if (!result)
    {
      return result;
    }

    return [result setEnabled_];
  }

  _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v11, v8, type metadata accessor for SearchFieldConfiguration);
  outlined destroy of ToolbarStorage.SearchItem?(v11, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  _s7SwiftUI16SearchFieldStateVWOhTm_1(v8, type metadata accessor for SearchFieldConfiguration);
  v20 = *v4;
  _s7SwiftUI16SearchFieldStateVWOhTm_1(v4, type metadata accessor for SearchFieldState);
  v18 = v20 ^ 1;
  if (v20 == 2)
  {
    v18 = 0;
  }

  result = *(v1 + v13);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

void SwiftUISearchController.updateScopesActivation(to:)(char a1)
{
  v3 = a1 - 2;
  if ((a1 - 2) > 2u)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_18CD89B08[(a1 - 2)];
  }

  if (v4 != [v1 scopeBarActivation])
  {
    [v1 setScopeBarActivation_];
  }

  if (v3 >= 3u)
  {
    v5 = a1 & 1;
    v6 = [v1 searchBar];
    v7 = [v6 showsScopeBar];

    if (v7 != v5)
    {
      v8 = [v1 searchBar];
      [v8 setShowsScopeBar_];
    }
  }
}

void SwiftUISearchController.enqueueIsActiveUpdate(_:)(char a1)
{
  v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActive] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong transitionCoordinator], v3, v4))
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = partial apply for closure #1 in SwiftUISearchController.enqueueIsActiveUpdate(_:);
    v10[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v10[3] = &block_descriptor_21;
    v6 = _Block_copy(v10);

    [v4 animateAlongsideTransition:0 completion:v6];
    _Block_release(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = [v1 searchBar];
    v8 = [v7 searchTextField];

    v9 = [v8 window];
    if (v9)
    {

      swift_allocObject();
      swift_unknownObjectWeakInit();

      static Update.enqueueAction(reason:_:)();
    }
  }
}

uint64_t UITextField.applyAccessibilityExplicitLabelIfNeeded(from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  v7 = a5[1];
  v18 = *a5;
  v19 = v7;
  result = EnvironmentValues.accessibilityEnabled.getter();
  if (result)
  {
    result = Text.storedAccessibilityLabel.getter();
    if (v11)
    {
      v12 = result;
      v13 = v9;
      v14 = v10;
      v18 = v6;
      v19 = v7;
      v17[1] = 0;
      v17[2] = 0;
      MEMORY[0x18D005BC0]((v17 + 4));
      v14 &= 1u;
      LOBYTE(v17[0]) = v14;
      v15 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)();
      v16 = MEMORY[0x18D00C850](v15);

      [v5 setAccessibilityLabel_];

      outlined consume of Text.Storage(v12, v13, v14);
    }
  }

  return result;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.__deallocating_deinit()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 232));

  return swift_deallocClassInstance();
}

void closure #1 in closure #1 in UIKitToolbarStrategy.barButtonGroups(in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v76 = a7;
  v77 = a2;
  v78 = a3;
  v79 = a4;
  v75 = a1;
  v9 = type metadata accessor for ToolbarStorage.Item(0);
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v71 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = v67 - v12;
  v13 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = (v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = v67 - v16;
  v18 = MEMORY[0x1E69E6720];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v67 - v23;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v18);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v73 = v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v67 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v67 - v31;
  memset(v85, 0, 24);
  *(&v85[1] + 8) = xmmword_18CD7DD20;
  LOBYTE(a5) = specialized static Toolbar.BarLocation.== infix(_:_:)(a5, v85);
  outlined destroy of Toolbar.BarLocation(v85);
  if ((a5 & 1) != 0 && *v79 == a6)
  {
    *(v78 + 8) = 1;
  }

  v88 = 0;
  v33 = v77;
  if (*(v77 + 8) == 2)
  {
    v34 = *v77;
    outlined copy of OpenURLOptions?(*v77, 2);
    v35 = v34;
    v36 = v76;
    MEMORY[0x18D00CC30]();
    if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    outlined consume of OpenURLOptions?(v34, 2);
    v37 = v78;
  }

  else
  {
    v67[1] = v13;
    v69 = v32;
    v38 = v75;
    ToolbarStorage.Entry.groupItem.getter(v29);
    v39 = type metadata accessor for ToolbarStorage.GroupItem(0);
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    v67[0] = v40 + 48;
    v68 = v41;
    if (v41(v29, 1, v39) == 1)
    {
      outlined init with copy of ToolbarStorage.Entry.Kind(v38, v17, type metadata accessor for ToolbarStorage.Entry.Kind);
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of ToolbarStorage.NavigationProperties(v17, type metadata accessor for ToolbarStorage.Entry.Kind);
        v42 = 1;
      }

      else
      {
        outlined init with take of ToolbarStorage.NavigationProperties(v17, v24, type metadata accessor for ToolbarStorage.Item);
        v42 = 0;
      }

      v48 = v74;
      v49 = 1;
      (*(v74 + 56))(v24, v42, 1, v9);
      outlined init with copy of PlatformItemList.Item?(v24, v21, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
      v50 = (*(v48 + 48))(v21, 1, v9);
      v51 = v73;
      v52 = v68;
      if (v50 != 1)
      {
        v53 = v21;
        v54 = v70;
        outlined init with take of ToolbarStorage.NavigationProperties(v53, v70, type metadata accessor for ToolbarStorage.Item);
        v55 = v71;
        outlined init with copy of ToolbarStorage.Entry.Kind(v54, v71, type metadata accessor for ToolbarStorage.Item);
        ToolbarStorage.GroupItem.init(item:)(v55, v51);
        outlined destroy of ToolbarStorage.NavigationProperties(v54, type metadata accessor for ToolbarStorage.Item);
        v49 = 0;
      }

      outlined destroy of ToolbarStorage.NavigationProperties?(v24, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
      v56 = v40 + 56;
      v57 = *(v40 + 56);
      v58 = v39;
      v57(v51, v49, 1, v39);
      if (v52(v51, 1, v39) == 1)
      {
        v74 = v56;
        v38 = v75;
        v59 = v72;
        outlined init with copy of ToolbarStorage.Entry.Kind(v75, v72, type metadata accessor for ToolbarStorage.Entry.Kind);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v33 = v77;
        v46 = v69;
        if (EnumCaseMultiPayload == 2)
        {
          v61 = v59[3];
          v85[2] = v59[2];
          v86 = v61;
          v87 = v59[4];
          v62 = v59[1];
          v85[0] = *v59;
          v85[1] = v62;
        }

        else
        {
          outlined destroy of ToolbarStorage.NavigationProperties(v59, type metadata accessor for ToolbarStorage.Entry.Kind);
          memset(v85, 0, sizeof(v85));
          *&v86 = 0;
          *(&v86 + 1) = 1;
          v87 = 0uLL;
        }

        outlined init with copy of PushTarget?(v85, v82, &lazy cache variable for type metadata for ToolbarStorage.SpacerItem?, &type metadata for ToolbarStorage.SpacerItem);
        v52 = v68;
        if (*(&v83 + 1) == 1)
        {
          outlined destroy of PushTarget?(v85, &lazy cache variable for type metadata for ToolbarStorage.SpacerItem?, &type metadata for ToolbarStorage.SpacerItem);
          v63 = v46;
          v64 = 1;
        }

        else
        {
          v81[2] = v82[2];
          v81[3] = v83;
          v81[4] = v84;
          v81[0] = v82[0];
          v81[1] = v82[1];
          outlined init with copy of ToolbarStorage.SpacerItem(v81, v80);
          ToolbarStorage.GroupItem.init(spacer:)(v80, v46);
          outlined destroy of ToolbarStorage.SpacerItem(v81);
          outlined destroy of PushTarget?(v85, &lazy cache variable for type metadata for ToolbarStorage.SpacerItem?, &type metadata for ToolbarStorage.SpacerItem);
          v63 = v46;
          v64 = 0;
        }

        v57(v63, v64, 1, v58);
        if (v52(v51, 1, v58) != 1)
        {
          outlined destroy of ToolbarStorage.NavigationProperties?(v51, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
        }
      }

      else
      {
        v46 = v69;
        outlined init with take of ToolbarStorage.NavigationProperties(v51, v69, type metadata accessor for ToolbarStorage.GroupItem);
        v57(v46, 0, 1, v58);
        v38 = v75;
        v33 = v77;
      }

      v47 = (v52)(v29, 1, v58);
      if (v47 != 1)
      {
        v47 = outlined destroy of ToolbarStorage.NavigationProperties?(v29, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      v43 = v29;
      v44 = v69;
      outlined init with take of ToolbarStorage.NavigationProperties(v43, v69, type metadata accessor for ToolbarStorage.GroupItem);
      v45 = v39;
      v46 = v44;
      v47 = (*(v40 + 56))(v44, 0, 1, v45);
    }

    MEMORY[0x1EEE9AC00](v47);
    v67[-4] = v33;
    v67[-3] = &v88;
    v37 = v78;
    v67[-2] = v38;
    v67[-1] = v37;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI14ToolbarStorageV9GroupItemV_s5NeverOytTg5(partial apply for closure #1 in closure #1 in closure #1 in UIKitToolbarStrategy.barButtonGroups(in:));
    outlined destroy of ToolbarStorage.NavigationProperties?(v46, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
    if (v88)
    {
      v65 = v88;
      v66 = v76;
      MEMORY[0x18D00CC30]();
      if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  *(v37 + 8) = 2;
  ++*v79;
}

uint64_t ToolbarStorage.Entry.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for ToolbarStorage.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v31 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ToolbarStorage.GroupItem(0);
  v20 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ToolbarStorage.Entry(v2, v19, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v19, type metadata accessor for ToolbarStorage.Entry.Kind);
    v26 = 1;
    v27 = v36;
    return (*(v20 + 56))(v27, v26, 1, v35);
  }

  _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v19, v22, type metadata accessor for ToolbarStorage.GroupItem);
  v23 = *(v22 + 19);
  if (v23[2] != 1)
  {
LABEL_13:
    v27 = v36;
    _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v22, v36, type metadata accessor for ToolbarStorage.GroupItem);
    v26 = 0;
    return (*(v20 + 56))(v27, v26, 1, v35);
  }

  v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  outlined init with copy of ToolbarStorage.Entry(v23 + v24, v10, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  outlined init with copy of ToolbarStorage.Entry(v10, v7, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v7, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    v25 = 1;
  }

  else
  {
    _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v7, v13, type metadata accessor for ToolbarStorage.Item);
    v25 = 0;
  }

  (*(v15 + 56))(v13, v25, 1, v14);
  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v10, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(v13, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item);
    goto LABEL_13;
  }

  v28 = v31;
  _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v13, v31, type metadata accessor for ToolbarStorage.Item);
  *(v28 + *(v14 + 80)) = 1;
  v29 = v32;
  outlined init with copy of ToolbarStorage.Entry(v28, v32, type metadata accessor for ToolbarStorage.Item);
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
  }

  result = outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v28, type metadata accessor for ToolbarStorage.Item);
  if (v23[2])
  {
    outlined assign with take of ToolbarStorage.GroupItem.GroupSubItem(v29, v23 + v24, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    *(v22 + 19) = v23;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BFA3188(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 152) = (a2 - 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 60);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18BFA3270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 152);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

uint64_t ToolbarStorage.GroupItem.init(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v16 = *(a1 + 32);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  outlined init with copy of ToolbarItemPlacement.Role(a1 + 112, a2 + 80);
  v5 = *(a1 + 154);
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v8 = *(a1 + 169);
  v15 = *(a1 + 176);
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.GroupItem.GroupSubItem>, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem, MEMORY[0x1E69E6F90]);
  v9 = *(type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18CD63400;
  outlined init with copy of ToolbarStorage.Entry(a1, v11 + v10, type metadata accessor for ToolbarStorage.Item);
  swift_storeEnumTagMultiPayload();

  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.Item);
  v12 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
  v13 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  result = (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  *a2 = v16;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 121) = v5;
  *(a2 + 128) = v6;
  *(a2 + 136) = v7;
  *(a2 + 137) = v8;
  *(a2 + 138) = 3;
  *(a2 + 144) = v15;
  *(a2 + 152) = v11;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI14ToolbarStorageV9GroupItemV_s5NeverOytTg5(void (*a1)(uint64_t *__return_ptr, char *))
{
  v13 = a1;
  v3 = type metadata accessor for ToolbarStorage.GroupItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  outlined init with copy of TextSelection??(v1, &v12 - v8, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem);
  v10 = (*(v4 + 48))(v9, 1, v3);
  if (v10 == 1)
  {
    return v10 == 1;
  }

  outlined init with take of Binding<SearchFieldState>(v9, v6, type metadata accessor for ToolbarStorage.GroupItem);
  v13(&v14, v6);
  if (!v2)
  {
    outlined destroy of SearchFieldState(v6, type metadata accessor for ToolbarStorage.GroupItem);
    return v10 == 1;
  }

  result = outlined destroy of SearchFieldState(v6, type metadata accessor for ToolbarStorage.GroupItem);
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for ToolbarStorage.GroupItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  v8 = *(a2 + 56);

  if (v8)
  {
    v9 = *(a2 + 64);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    (**(v8 - 8))(a1 + 32, a2 + 32, v8);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v10 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v10;
    *(a1 + 64) = *(a2 + 64);
  }

  if (*(a2 + 120) == 1)
  {
    v11 = *(a2 + 104);
    *(a1 + 104) = v11;
    (**(v11 - 8))(a1 + 80, a2 + 80);
    *(a1 + 120) = 1;
  }

  else
  {
    v12 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v12;
    *(a1 + 105) = *(a2 + 105);
  }

  *(a1 + 121) = *(a2 + 121);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a2 + 144);
  v14 = *(a2 + 152);
  v15 = *(a3 + 60);
  v16 = (a2 + v15);
  v17 = (a1 + v15);
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  v18 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);

  if (!v20(v16, 1, v18))
  {
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v38 = *(v16 + 3);
      *(v17 + 3) = v38;
      (**(v38 - 8))(v17, v16);
      v39 = v16[6];
      v17[5] = v16[5];
      v17[6] = v39;
      v17[7] = v16[7];
      v17[8] = v16[8];
      *(v17 + 9) = *(v16 + 9);
      v40 = v16[11];
      v17[11] = v40;

      v41 = v40;
LABEL_66:
      swift_storeEnumTagMultiPayload();
      v113 = *(v18 + 20);
      v114 = *(v16 + v113);
      *(v17 + v113) = v114;
      v115 = *(v19 + 56);
      v116 = v114;
      v115(v17, 0, 1, v18);
      return a1;
    }

    v131 = v18;
    v22 = *v16;
    v23 = v16[1];
    *v17 = *v16;
    v17[1] = v23;
    v24 = v16[3];
    v17[2] = v16[2];
    v17[3] = v24;
    *(v17 + 32) = *(v16 + 32);
    v25 = v16[6];
    v17[5] = v16[5];
    v17[6] = v25;
    *(v17 + 56) = *(v16 + 56);
    v26 = v16[24];
    v27 = v22;
    v28 = v23;

    if (v26 >> 1 == 4294967294)
    {
      v29 = *(v16 + 13);
      *(v17 + 12) = *(v16 + 12);
      *(v17 + 13) = v29;
      *(v17 + 14) = *(v16 + 14);
      *(v17 + 235) = *(v16 + 235);
      v30 = *(v16 + 9);
      *(v17 + 8) = *(v16 + 8);
      *(v17 + 9) = v30;
      v31 = *(v16 + 11);
      *(v17 + 10) = *(v16 + 10);
      *(v17 + 11) = v31;
      v32 = *(v16 + 5);
      *(v17 + 4) = *(v16 + 4);
      *(v17 + 5) = v32;
      v33 = *(v16 + 7);
      *(v17 + 6) = *(v16 + 6);
      *(v17 + 7) = v33;
      v34 = v16[33];
      if (v34)
      {
LABEL_12:
        v17[32] = v16[32];
        v17[33] = v34;
        v35 = v16[34];

        if (v35 >= 2)
        {
          v36 = v35;
        }

        v17[34] = v35;
        *(v17 + 70) = *(v16 + 70);
        *(v17 + 284) = *(v16 + 284);
        *(v17 + 285) = *(v16 + 285);
        v37 = v16[37];
        v17[36] = v16[36];
        v17[37] = v37;

LABEL_24:
        v52 = v16[42];
        v130 = v19;
        if (v52 >> 2 == 0xFFFFFFFF)
        {
          v53 = *(v16 + 24);
          *(v17 + 23) = *(v16 + 23);
          *(v17 + 24) = v53;
          v17[50] = v16[50];
          v54 = *(v16 + 20);
          *(v17 + 19) = *(v16 + 19);
          *(v17 + 20) = v54;
          v55 = *(v16 + 22);
          *(v17 + 21) = *(v16 + 21);
          *(v17 + 22) = v55;
        }

        else
        {
          v56 = v16[38];
          v57 = v16[39];
          v58 = v16[40];
          v60 = v16[43];
          v59 = v16[44];
          v61 = v16[45];
          v118 = v16[41];
          v119 = v16[46];
          v121 = v16[47];
          v124 = v16[48];
          v126 = v16[49];
          __dsta = v16[50];
          outlined copy of PlatformItemList.Item.SystemItem(v56, v57, v58, v118, v52, v60, v59, v61, v119, v121, v124, v126, __dsta);
          v17[38] = v56;
          v17[39] = v57;
          v17[40] = v58;
          v17[41] = v118;
          v17[42] = v52;
          v17[43] = v60;
          v17[44] = v59;
          v17[45] = v61;
          v17[46] = v119;
          v17[47] = v121;
          v17[48] = v124;
          v17[49] = v126;
          v17[50] = __dsta;
        }

        v62 = v16[52];
        if (v62 == 1)
        {
          v63 = *(v16 + 57);
          *(v17 + 55) = *(v16 + 55);
          *(v17 + 57) = v63;
          *(v17 + 472) = *(v16 + 472);
          v64 = *(v16 + 53);
          *(v17 + 51) = *(v16 + 51);
          *(v17 + 53) = v64;
          goto LABEL_37;
        }

        *(v17 + 102) = *(v16 + 102);
        *(v17 + 412) = *(v16 + 412);
        if (v62)
        {
          v65 = v16[53];
          v17[52] = v62;
          v17[53] = v65;

          v66 = v16[54];
          if (v66)
          {
            goto LABEL_31;
          }
        }

        else
        {
          *(v17 + 26) = *(v16 + 26);
          v66 = v16[54];
          if (v66)
          {
LABEL_31:
            v67 = v16[55];
            v17[54] = v66;
            v17[55] = v67;

            v68 = v16[56];
            if (v68)
            {
LABEL_32:
              v69 = v16[57];
              v17[56] = v68;
              v17[57] = v69;

LABEL_36:
              v17[58] = v16[58];
              *(v17 + 472) = *(v16 + 472);
LABEL_37:
              v70 = v16[61];
              v17[60] = v16[60];
              v17[61] = v70;
              v17[62] = v16[62];
              *(v17 + 504) = *(v16 + 504);
              v71 = v16[64];

              if (v71)
              {
                v72 = v16[65];
                v17[64] = v71;
                v17[65] = v72;
              }

              else
              {
                *(v17 + 32) = *(v16 + 32);
              }

              *(v17 + 528) = *(v16 + 528);
              if (!v16[102])
              {
                memcpy(v17 + 67, v16 + 67, 0x130uLL);
                goto LABEL_52;
              }

              v17[67] = v16[67];
              v17[68] = v16[68];
              *(v17 + 552) = *(v16 + 552);
              v17[70] = v16[70];
              *(v17 + 568) = *(v16 + 568);
              *(v17 + 36) = *(v16 + 36);
              *(v17 + 592) = *(v16 + 592);
              v73 = v17 + 75;
              v74 = v16 + 75;
              v75 = v16[78];

              if (v75)
              {
                if (v75 == 1)
                {
                  v76 = *(v16 + 77);
                  *v73 = *v74;
                  *(v17 + 77) = v76;
                  *(v17 + 79) = *(v16 + 79);
LABEL_48:
                  v17[81] = v16[81];
                  *(v17 + 656) = *(v16 + 656);
                  v78 = v17 + 83;
                  v79 = v16 + 83;
                  v80 = v16[97];
                  if (v80 == 1)
                  {
                    v81 = *(v16 + 97);
                    *(v17 + 95) = *(v16 + 95);
                    *(v17 + 97) = v81;
                    *(v17 + 99) = *(v16 + 99);
                    *(v17 + 808) = *(v16 + 808);
                    v82 = *(v16 + 89);
                    *(v17 + 87) = *(v16 + 87);
                    *(v17 + 89) = v82;
                    v83 = *(v16 + 93);
                    *(v17 + 91) = *(v16 + 91);
                    *(v17 + 93) = v83;
                    v84 = *(v16 + 85);
                    *v78 = *v79;
                    *(v17 + 85) = v84;
                  }

                  else
                  {
                    *v78 = *v79;
                    *(v17 + 672) = *(v16 + 672);
                    v17[85] = v16[85];
                    *(v17 + 688) = *(v16 + 688);
                    *(v17 + 689) = *(v16 + 689);
                    *(v17 + 691) = *(v16 + 691);
                    *(v17 + 692) = *(v16 + 692);
                    v17[87] = v16[87];
                    v85 = *(v16 + 45);
                    *(v17 + 44) = *(v16 + 44);
                    *(v17 + 45) = v85;
                    v17[92] = v16[92];
                    *(v17 + 372) = *(v16 + 372);
                    *(v17 + 47) = *(v16 + 47);
                    *(v17 + 768) = *(v16 + 768);
                    v17[97] = v80;
                    *(v17 + 49) = *(v16 + 49);
                    v17[100] = v16[100];
                    *(v17 + 808) = *(v16 + 808);
                  }

                  v17[102] = v16[102];
                  v17[103] = v16[103];
                  v17[104] = v16[104];

LABEL_52:
                  v86 = v17 + 105;
                  v87 = v16 + 105;
                  v88 = v16[108];
                  if (v88)
                  {
                    if (v88 == 1)
                    {
                      v89 = *(v16 + 107);
                      *v86 = *v87;
                      *(v17 + 107) = v89;
                      *(v17 + 109) = *(v16 + 109);
                      v17[111] = v16[111];
LABEL_59:
                      v93 = v16[112];
                      v17[112] = v93;
                      v17[113] = v16[113];
                      v17[114] = v16[114];
                      v17[115] = v16[115];
                      v17[116] = v16[116];
                      v17[117] = v16[117];
                      v17[118] = v16[118];
                      *(v17 + 476) = *(v16 + 476);
                      *(v17 + 954) = *(v16 + 954);
                      v94 = type metadata accessor for PlatformItemList.Item();
                      v95 = *(v94 + 112);
                      v127 = v94;
                      __dst = v17 + v95;
                      v96 = v16 + v95;
                      v97 = type metadata accessor for CommandOperation();
                      v120 = *(v97 - 8);
                      v122 = *(v120 + 48);
                      v98 = v93;

                      if (v122(v96, 1, v97))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v96, *(*(v99 - 8) + 64));
                        v18 = v131;
                        v19 = v130;
                      }

                      else
                      {
                        *__dst = *v96;
                        v100 = *(v97 + 20);
                        v101 = &__dst[v100];
                        v102 = &v96[v100];
                        v125 = v96;
                        v103 = *&v96[v100];
                        v104 = *(v102 + 1);
                        v105 = v97;
                        v106 = v102[16];
                        outlined copy of Text.Storage(v103, v104, v106);
                        *v101 = v103;
                        *(v101 + 1) = v104;
                        v101[16] = v106;
                        *(v101 + 3) = *(v102 + 3);
                        v107 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v108 = type metadata accessor for UUID();
                        v123 = *(*(v108 - 8) + 16);

                        v123(&v101[v107], &v102[v107], v108);
                        v109 = *(v105 + 24);
                        v110 = &__dst[v109];
                        v111 = &v125[v109];
                        if (*v111)
                        {
                          v112 = v111[1];
                          *v110 = *v111;
                          v110[1] = v112;
                        }

                        else
                        {
                          *v110 = *v111;
                        }

                        v18 = v131;
                        v19 = v130;
                        (*(v120 + 56))(__dst, 0, 1, v105);
                      }

                      *(v17 + v127[29]) = *(v16 + v127[29]);
                      *(v17 + v127[30]) = *(v16 + v127[30]);
                      *(v17 + v127[31]) = *(v16 + v127[31]);
                      *(v17 + v127[32]) = *(v16 + v127[32]);
                      *(v17 + v127[33]) = *(v16 + v127[33]);
                      *(v17 + v127[34]) = *(v16 + v127[34]);

                      goto LABEL_66;
                    }

                    v17[108] = v88;
                    v17[109] = v16[109];
                    (**(v88 - 8))(v86, v87);
                    v91 = v16[110];
                    if (!v91)
                    {
LABEL_58:
                      *(v17 + 55) = *(v16 + 55);
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    v90 = *(v16 + 107);
                    *v86 = *v87;
                    *(v17 + 107) = v90;
                    v17[109] = v16[109];
                    v91 = v16[110];
                    if (!v91)
                    {
                      goto LABEL_58;
                    }
                  }

                  v92 = v16[111];
                  v17[110] = v91;
                  v17[111] = v92;

                  goto LABEL_59;
                }

                v17[78] = v75;
                v17[79] = v16[79];
                (**(v75 - 8))((v17 + 75), (v16 + 75), v75);
              }

              else
              {
                v77 = *(v16 + 77);
                *v73 = *v74;
                *(v17 + 77) = v77;
                v17[79] = v16[79];
              }

              v17[80] = v16[80];

              goto LABEL_48;
            }

LABEL_35:
            *(v17 + 28) = *(v16 + 28);
            goto LABEL_36;
          }
        }

        *(v17 + 27) = *(v16 + 27);
        v68 = v16[56];
        if (v68)
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v42 = *(v16 + 72);
      if (v42 == 255)
      {
        v17[8] = v16[8];
        *(v17 + 72) = *(v16 + 72);
      }

      else
      {
        v43 = v16[8];
        outlined copy of GraphicsImage.Contents(v43, *(v16 + 72));
        v17[8] = v43;
        *(v17 + 72) = v42;
        v26 = v16[24];
      }

      v17[10] = v16[10];
      *(v17 + 11) = *(v16 + 11);
      *(v17 + 104) = *(v16 + 104);
      *(v17 + 108) = *(v16 + 108);
      *(v17 + 121) = *(v16 + 121);
      *(v17 + 17) = *(v16 + 17);
      *(v17 + 19) = *(v16 + 19);
      *(v17 + 84) = *(v16 + 84);
      *(v17 + 170) = *(v16 + 170);
      *(v17 + 171) = *(v16 + 171);
      if (v26 >> 1 == 0xFFFFFFFF)
      {
        v44 = *(v16 + 12);
        *(v17 + 11) = *(v16 + 11);
        *(v17 + 12) = v44;
      }

      else
      {
        v45 = v16[22];
        v46 = v16[23];
        v47 = v16[25];
        outlined copy of AccessibilityImageLabel(v45, v46, v26);
        v17[22] = v45;
        v17[23] = v46;
        v17[24] = v26;
        v17[25] = v47;
      }

      v48 = v16[27];
      v17[26] = v16[26];
      v17[27] = v48;
      *(v17 + 112) = *(v16 + 112);
      *(v17 + 57) = *(v16 + 57);
      *(v17 + 232) = *(v16 + 232);
      v49 = v16[30];
      v17[30] = v49;
      *(v17 + 124) = *(v16 + 124);
      *(v17 + 250) = *(v16 + 250);
      swift_unknownObjectRetain();

      v50 = v49;
      v34 = v16[33];
      if (v34)
      {
        goto LABEL_12;
      }
    }

    v51 = *(v16 + 17);
    *(v17 + 16) = *(v16 + 16);
    *(v17 + 17) = v51;
    *(v17 + 18) = *(v16 + 18);
    goto LABEL_24;
  }

  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  memcpy(v17, v16, *(*(v21 - 8) + 64));
  return a1;
}

void closure #1 in closure #1 in closure #1 in UIKitToolbarStrategy.barButtonGroups(in:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  v10 = type metadata accessor for ToolbarStorage.Entry(0);
  v11 = *a5;
  LOBYTE(a5) = *(a4 + *(v10 + 20));
  v12 = v11;
  specialized static UIKitBarButtonItemGroup.makeVended(groupItem:edge:context:)(a1, a5);
  v14 = v13;
  LOBYTE(a1) = v15;
  v17 = v16;

  v18 = *a2;
  *a2 = v14;
  v19 = *(a2 + 8);
  *(a2 + 8) = a1;
  outlined consume of OpenURLOptions?(v18, v19);
  v20 = *a3;
  *a3 = v17;
}

void specialized static UIKitBarButtonItemGroup.makeVended(groupItem:edge:context:)(uint64_t a1, char a2)
{
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-v8];
  if (!*(a1 + 8))
  {
    goto LABEL_5;
  }

  if (*(a1 + 121))
  {
    if (*(a1 + 121) == 1)
    {
      type metadata accessor for UIKitBarButtonItemGroup(0);
      v10 = static UIBarButtonItemGroup.movableGroup(customizationIdentifier:representativeItem:items:)();
LABEL_6:
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        v13 = v10;
LABEL_10:
        v12[OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_edge] = a2;
        swift_unknownObjectWeakAssign();
        outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, v9, type metadata accessor for ToolbarStorage.GroupItem);
        v17 = type metadata accessor for ToolbarStorage.GroupItem(0);
        (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
        v18 = OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_groupItem;
        swift_beginAccess();
        v19 = MEMORY[0x1E69E6720];
        _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v12[v18], v6, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
        swift_beginAccess();
        _s7SwiftUI14ToolbarStorageV9GroupItemVSgWOfTm_0(v9, &v12[v18], &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v19, type metadata accessor for ToolbarStorage.Item?);
        swift_endAccess();
        UIKitBarButtonItemGroup.didChangeGroupItem(from:)(v6);

        _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v6, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v19, type metadata accessor for ToolbarStorage.Item?);
        _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v9, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v19, type metadata accessor for ToolbarStorage.Item?);
        v20 = v12;
        return;
      }

      __break(1u);
      goto LABEL_12;
    }

LABEL_5:
    type metadata accessor for UIKitBarButtonItemGroup(0);
    v10 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();
    goto LABEL_6;
  }

  static Semantics.v6_4.getter();
  isLinkedOnOrAfter(_:)();
  type metadata accessor for UIKitBarButtonItemGroup(0);
  v10 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v12 = v14;
    v15 = *(a1 + 144);
    v16 = v10;
    [v12 setAlwaysAvailable_];
    goto LABEL_10;
  }

LABEL_12:

  __break(1u);
}

void type metadata completion function for UIKitBarButtonItemGroup()
{
  type metadata accessor for ToolbarStorage.Item?(319, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined assign with copy of ToolbarStorage.GroupItem?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PlatformItemList.Item?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV9GroupItemVSgWOfTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 24))(a2, a1, v8);
  return a2;
}

const char *UIKitBarButtonItemGroup.didChangeGroupItem(from:)(unsigned __int8 *a1)
{
  v246 = a1;
  v220 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
  MEMORY[0x1EEE9AC00](v220);
  v3 = &v211 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v223 = &v211 - v6;
  v224 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v222 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v8 = &v211 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v4);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v226 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v225 = &v211 - v12;
  v232 = type metadata accessor for ToolbarStorage.Item(0);
  v221 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v227 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v234 = &v211 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v229 = &v211 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v240 = (&v211 - v19);
  v243 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v235 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v228 = &v211 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v231 = &v211 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v230 = &v211 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v233 = (&v211 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v242 = &v211 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v245 = &v211 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v239 = &v211 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v244 = &v211 - v34;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v4);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v211 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v211 - v39;
  v41 = type metadata accessor for ToolbarStorage.GroupItem(0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v211 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v46 = result;
  v217 = v3;
  v218 = OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_edge;
  v219 = v1[OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_edge];
  v47 = OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_groupItem;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v1[v47], v40, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  v48 = *(v42 + 48);
  if (v48(v40, 1, v41) == 1)
  {

    return _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v40, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  }

  _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v40, v44, type metadata accessor for ToolbarStorage.GroupItem);
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v246, v37, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  v214 = v41;
  v49 = v48(v37, 1, v41);
  v246 = v1;
  v212 = v8;
  v215 = v44;
  v216 = v46;
  if (v49 == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v37, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
LABEL_22:
    v52 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v50 = *(v37 + 19);

  _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v37, type metadata accessor for ToolbarStorage.GroupItem);
  v51 = *(v50 + 16);
  if (!v51)
  {

    goto LABEL_22;
  }

  v247[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
  v52 = v247[0];
  v53 = (*(v235 + 80) + 32) & ~*(v235 + 80);
  v213 = v50;
  v54 = v50 + v53;
  v55 = *(v235 + 72);
  v237 = "swiftui-fixed-spacer";
  v238 = v55;
  v236 = "@UIActivityViewController8@?0";
  do
  {
    v56 = v52;
    v57 = v244;
    outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v54, v244, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    v58 = v57;
    v59 = v239;
    outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v58, v239, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v60 = *(v59 + 3);
      v252 = *(v59 + 2);
      v253 = v60;
      v254 = *(v59 + 4);
      v61 = *(v59 + 1);
      v250 = *v59;
      v251 = v61;
      _ViewList_ID.init(implicitID:)();
      v62 = v248;
      v63 = v249;
      if (v250)
      {
        v64 = 0xD000000000000017;
      }

      else
      {
        v64 = 0xD000000000000014;
      }

      v241 = v64;
      v65 = v237;
      if (!v250)
      {
        v65 = v236;
      }

      v66 = v65 | 0x8000000000000000;
      outlined destroy of ToolbarStorage.SpacerItem(&v250);
      v67 = 0;
      v68 = 0;
    }

    else
    {
      v69 = v240;
      _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v59, v240, type metadata accessor for ToolbarStorage.Item);
      v62 = *v69;
      v63 = v69[1];
      v68 = v69[2];
      v67 = v69[3];
      v241 = v69[4];
      v66 = v69[5];

      _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v69, type metadata accessor for ToolbarStorage.Item);
    }

    _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v244, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    v52 = v56;
    v247[0] = v56;
    v71 = *(v56 + 2);
    v70 = *(v56 + 3);
    if (v71 >= v70 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
      v52 = v247[0];
    }

    *(v52 + 2) = v71 + 1;
    v72 = &v52[48 * v71];
    *(v72 + 4) = v62;
    *(v72 + 5) = v63;
    *(v72 + 6) = v68;
    v73 = v241;
    *(v72 + 7) = v67;
    *(v72 + 8) = v73;
    *(v72 + 9) = v66;
    v54 += v238;
    --v51;
  }

  while (v51);

  v44 = v215;
LABEL_23:
  v74 = *(v44 + 19);
  v75 = *(v74 + 16);
  v76 = MEMORY[0x1E69E7CC0];
  v236 = v74;
  if (v75)
  {
    v237 = v52;
    v247[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75, 0);
    v77 = v247[0];
    v78 = v74 + ((*(v235 + 80) + 32) & ~*(v235 + 80));
    v241 = *(v235 + 72);
    v238 = "@UIActivityViewController8@?0";
    v239 = "swiftui-fixed-spacer";
    do
    {
      v79 = v245;
      outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v78, v245, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      v80 = v79;
      v81 = v242;
      outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v80, v242, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v82 = *(v81 + 3);
        v252 = *(v81 + 2);
        v253 = v82;
        v254 = *(v81 + 4);
        v83 = *(v81 + 1);
        v250 = *v81;
        v251 = v83;
        _ViewList_ID.init(implicitID:)();
        v84 = v248;
        v85 = v249;
        if (v250)
        {
          v86 = 0xD000000000000017;
        }

        else
        {
          v86 = 0xD000000000000014;
        }

        v87 = v239;
        if (!v250)
        {
          v87 = v238;
        }

        v88 = v87 | 0x8000000000000000;
        outlined destroy of ToolbarStorage.SpacerItem(&v250);
        v244 = 0;
        v89 = 0;
      }

      else
      {
        v90 = v240;
        _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v81, v240, type metadata accessor for ToolbarStorage.Item);
        v84 = *v90;
        v85 = v90[1];
        v244 = v90[2];
        v89 = v90[3];
        v91 = v90[4];
        v88 = v90[5];

        v92 = v90;
        v86 = v91;
        _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v92, type metadata accessor for ToolbarStorage.Item);
      }

      _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v245, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      v247[0] = v77;
      v94 = *(v77 + 16);
      v93 = *(v77 + 24);
      if (v94 >= v93 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1);
        v77 = v247[0];
      }

      *(v77 + 16) = v94 + 1;
      v95 = (v77 + 48 * v94);
      v95[4] = v84;
      v96 = v244;
      v95[5] = v85;
      v95[6] = v96;
      v95[7] = v89;
      v95[8] = v86;
      v95[9] = v88;
      v78 += v241;
      --v75;
    }

    while (v75);
    v52 = v237;
    v76 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v77 = MEMORY[0x1E69E7CC0];
  }

  v248 = v52;
  v247[0] = v77;
  *&v250 = v76;
  type metadata accessor for CollectionChanges<Int, Int>();
  _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for [ToolbarStorage.ID], &type metadata for ToolbarStorage.ID, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [ToolbarStorage.ID] and conformance [A]();
  lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();
  CollectionChanges.formChanges<A, B>(from:to:)();

  v97 = v250;
  LOBYTE(v248) = 0;
  type metadata accessor for EnvironmentPropertyKey<ToolbarItemMetricsKey>(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v99 = v98;

  v237 = v97;
  v213 = v99;
  CollectionChanges.Projection.init(kind:changes:)();
  v100 = *(&v250 + 1);
  v102 = *(&v251 + 1);
  isa = v251;
  if (*(&v251 + 1) != v251)
  {
    v103 = v250;
    type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>();
    v105 = v104;
    v106 = &lazy cache variable for type metadata for UIBarButtonItem;
    v107 = &selRef_setConfiguration_;
    v108 = v102;
    v244 = v100;
    v241 = v102;
    v242 = isa;
    LODWORD(v239) = v103;
    v238 = v105;
    while (1)
    {
      LOBYTE(v250) = v103;
      *(&v250 + 1) = v100;
      *&v251 = isa;
      *(&v251 + 1) = v102;
      v245 = CollectionChanges.Projection.index(before:)(v108);
      v109 = specialized CollectionChanges.Projection.subscript.getter(v245, v103, v100);
      v111 = v110;
      if (v110 != v109)
      {
        break;
      }

LABEL_43:
      v102 = v241;
      isa = v242;
      v100 = v244;
      v108 = v245;
      v103 = v239;
      if (v245 == v242)
      {
        goto LABEL_44;
      }
    }

    while (v109 < v111)
    {
      --v111;
      v102 = v246;
      v112 = [v246 barButtonItems];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
      v113 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *&v250 = v113;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v102 setBarButtonItems_];

      if (v109 == v111)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_44:

  LOBYTE(v248) = 1;

  CollectionChanges.Projection.init(kind:changes:)();
  v107 = *(&v251 + 1);
  v238 = v251;
  v239 = *(&v250 + 1);
  v111 = v246;
  v102 = v230;
  v106 = v233;
  isa = v236;
  if (v251 != *(&v251 + 1))
  {
LABEL_49:
    LODWORD(v213) = v250;
    v119 = v238;
    v211 = v107;
    while (1)
    {
      v241 = v119;
      v120 = v213;
      v122 = v238;
      v121 = v239;
      v123 = specialized CollectionChanges.Projection.subscript.getter(v119, v213, v239);
      v245 = v124;
      LOBYTE(v250) = v120;
      *(&v250 + 1) = v121;
      *&v251 = v122;
      *(&v251 + 1) = v107;
      v125 = v123;
      type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>();
      result = CollectionChanges.Projection.index(after:)(v241);
      v241 = result;
      if (v125 != v245)
      {
        break;
      }

LABEL_50:
      v107 = v211;
      v119 = v241;
      if (v241 == v211)
      {
        goto LABEL_45;
      }
    }

    if (v245 < v125)
    {
      __break(1u);
    }

    else if (v125 < v245)
    {
      v244 = isa + ((*(v235 + 80) + 32) & ~*(v235 + 80));
      v126 = v125;
      v242 = v125;
      while (1)
      {
        if (v125 < 0)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          v196 = *(v102 + *(v224 + 20));
          outlined init with copy of _ViewList_View(v256, &v250);
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v197 = v219;
          v255 = v219;
          outlined init with copy of BarItemView(&v250, &v248);
          _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
          v199 = objc_allocWithZone(v198);
          v200 = MEMORY[0x1E69E7D40];
          v201 = &v199[*((*MEMORY[0x1E69E7D40] & *v199) + 0x710)];
          *v201 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
          *(v201 + 1) = 0;
          v202 = &v199[*((*v200 & *v199) + 0x720)];
          *v202 = 0;
          *(v202 + 1) = 0;
          v202[16] = 1;
          *&v199[*((*v200 & *v199) + 0x718)] = v196;
          outlined init with copy of BarItemView(&v248, v247);
          v203 = v196;
          v204 = specialized _UIHostingView.init(rootView:)(v247);
          v205 = specialized _UIHostingView.base.getter();
          UIHostingViewBase.safeAreaRegions.setter();

          outlined destroy of BarItemView(&v248);
          outlined init with copy of _ViewList_View(v256, &v248);
          v206 = objc_allocWithZone(type metadata accessor for UIKitBarButtonItem(0));
          v207 = v216;
          v208 = v204;
          v209 = specialized UIKitBarButtonItem.init(listView:context:host:)(&v248, v207, v197, v208);

          lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
          v210 = ViewRendererHost.idealSize()();
          [v208 setBounds_];
          UIKitBarButtonItem.initializePlatformItem(_:)(0);

          outlined destroy of BarItemView(&v250);
          [v246 setRepresentativeItem_];

LABEL_114:
          outlined destroy of _ViewList_View(v256);
          goto LABEL_115;
        }

        v127 = *(isa + 2);
        if (v126 >= v127)
        {
          goto LABEL_106;
        }

        outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(&v244[*(v235 + 72) * v126], v106, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        v128 = v111[v218];
        v129 = v219;
        if (v128 != 2)
        {
          if ((v128 & 1) == 0)
          {
            v129 = v219;
            if (!v126)
            {
              goto LABEL_63;
            }

LABEL_62:
            v129 = 2;
            goto LABEL_63;
          }

          v129 = v219;
          if (v126 != v127 - 1)
          {
            goto LABEL_62;
          }
        }

LABEL_63:
        outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v106, v102, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v130 = v102[1];
          v250 = *v102;
          v251 = v130;
          v131 = v102[3];
          v252 = v102[2];
          v253 = v131;
          v254 = v102[4];
          v132 = v250;
          v133 = objc_opt_self();
          v134 = v216;
          if (v132 == 1)
          {
            v135 = [v133 flexibleSpaceItem];
          }

          else
          {
            v135 = [v133 fixedSpaceItemOfWidth_];
          }

          v151 = v135;
          outlined destroy of ToolbarStorage.SpacerItem(&v250);
        }

        else
        {
          v136 = v240;
          _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v102, v240, type metadata accessor for ToolbarStorage.Item);
          outlined init with copy of _ViewList_View((v136 + 23), &v250);
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v255 = v129;
          outlined init with copy of BarItemView(&v250, &v248);
          v137 = v136[35];
          _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
          v139 = objc_allocWithZone(v138);
          v140 = MEMORY[0x1E69E7D40];
          v141 = &v139[*((*MEMORY[0x1E69E7D40] & *v139) + 0x710)];
          *v141 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
          *(v141 + 1) = 0;
          v142 = &v139[*((*v140 & *v139) + 0x720)];
          *v142 = 0;
          *(v142 + 1) = 0;
          v142[16] = 1;
          *&v139[*((*v140 & *v139) + 0x718)] = v137;
          outlined init with copy of BarItemView(&v248, v247);
          v143 = v216;
          v144 = v137;
          v145 = specialized _UIHostingView.init(rootView:)(v247);
          v146 = specialized _UIHostingView.base.getter();
          UIHostingViewBase.safeAreaRegions.setter();

          outlined destroy of BarItemView(&v248);
          UIHostingViewBase.viewGraph.getter();

          swift_weakLoadStrong();
          ViewGraph.preferenceBridge.setter();

          v147 = v229;
          outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v136, v229, type metadata accessor for ToolbarStorage.Item);
          v148 = objc_allocWithZone(type metadata accessor for UIKitBarButtonItem(0));
          v149 = v143;
          v150 = v145;
          v151 = specialized UIKitBarButtonItem.init(item:context:host:)(v147, v149, v129, v150);

          v111 = v246;
          lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
          v152 = ViewRendererHost.idealSize()();
          [v150 setBounds_];
          UIKitBarButtonItem.initializePlatformItem(_:)(0);

          v102 = v230;
          outlined destroy of BarItemView(&v250);
          _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v136, type metadata accessor for ToolbarStorage.Item);
        }

        v153 = v151;
        v154 = [v111 barButtonItems];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
        v155 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&v250 = v155;
        if (v155 >> 62)
        {
          v156 = __CocoaSet.count.getter();
        }

        else
        {
          v156 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        isa = v236;
        if (v156 < v126)
        {
          goto LABEL_107;
        }

        v157 = (v126 + 1);
        specialized Array.replaceSubrange<A>(_:with:)(v126, v126, v153);

        v158 = Array._bridgeToObjectiveC()().super.isa;

        [v111 setBarButtonItems_];

        v106 = v233;
        _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v233, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        v126 = v157;
        v159 = v245 == v157;
        v125 = v242;
        if (v159)
        {
          goto LABEL_50;
        }
      }
    }

    __break(1u);
    goto LABEL_118;
  }

LABEL_45:

  LOBYTE(v248) = 2;
  type metadata accessor for (Range<Int>, Range<Int>)();
  CollectionChanges.Projection.init(kind:changes:)();
  v114 = *(&v251 + 1);
  v237 = v251;
  v238 = *(&v250 + 1);
  v115 = v228;
  v116 = v214;
  if (v251 != *(&v251 + 1))
  {
    v240 = (v221 + 56);
    LODWORD(v233) = v250;
    v160 = v237;
    v230 = *(&v251 + 1);
    while (1)
    {
      v161 = v233;
      v163 = v237;
      v162 = v238;
      v164 = specialized CollectionChanges.Projection.subscript.getter(v160, v233, v238);
      LOBYTE(v250) = v161;
      *(&v250 + 1) = v162;
      *&v251 = v163;
      *(&v251 + 1) = v114;
      v166 = v165;
      type metadata accessor for CollectionChanges<Int, Int>.Projection<(Range<Int>, Range<Int>)>();
      result = CollectionChanges.Projection.index(after:)(v160);
      v239 = result;
      if (v164 != v166)
      {
        break;
      }

LABEL_77:
      v114 = v230;
      v160 = v239;
      if (v239 == v230)
      {
        goto LABEL_46;
      }
    }

    if (v166 < v164)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (v164 >= v166)
    {
LABEL_119:
      __break(1u);
      return result;
    }

    v102 = (isa + ((*(v235 + 80) + 32) & ~*(v235 + 80)));
    v167 = v164;
    v244 = v164;
    v241 = v102;
    v242 = v166;
    while (1)
    {
      if (v164 < 0)
      {
        goto LABEL_108;
      }

      if (v167 >= *(isa + 2))
      {
        goto LABEL_109;
      }

      v168 = v231;
      outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v102 + *(v235 + 72) * v167, v231, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v168, v115, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v115, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
LABEL_83:
      if (v166 == ++v167)
      {
        goto LABEL_77;
      }
    }

    v169 = v115;
    v170 = v227;
    _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v169, v227, type metadata accessor for ToolbarStorage.Item);
    _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v170, v234, type metadata accessor for ToolbarStorage.Item);
    v171 = [v246 barButtonItems];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v172 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v172 & 0xC000000000000001) != 0)
    {
      v173 = MEMORY[0x18D00E9C0](v167, v172);
    }

    else
    {
      if (v167 >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_113;
      }

      v173 = *(v172 + 8 * v167 + 32);
    }

    v174 = v173;

    type metadata accessor for UIKitBarButtonItem(0);
    v245 = v174;
    v175 = swift_dynamicCastClassUnconditional();
    v176 = v175;
    v177 = v246[v218];
    v178 = v219;
    if (v177 != 2)
    {
      if (v177)
      {
        v178 = v219;
        if (v167 == *(isa + 2) - 1)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      v178 = v219;
      if (v167)
      {
LABEL_95:
        v178 = 2;
      }
    }

LABEL_96:
    *(v175 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge) = v178;
    v179 = v225;
    outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v234, v225, type metadata accessor for ToolbarStorage.Item);
    (*v240)(v179, 0, 1, v232);
    v180 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
    swift_beginAccess();
    v181 = MEMORY[0x1E69E6720];
    v182 = v226;
    _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v176 + v180, v226, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
    swift_beginAccess();
    v183 = v216;
    _s7SwiftUI14ToolbarStorageV9GroupItemVSgWOfTm_0(v179, v176 + v180, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v181, type metadata accessor for ToolbarStorage.Item?);
    swift_endAccess();
    UIKitBarButtonItem.item.didset();

    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v182, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v181, type metadata accessor for ToolbarStorage.Item?);
    isa = v236;
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v179, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v181, type metadata accessor for ToolbarStorage.Item?);
    _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v234, type metadata accessor for ToolbarStorage.Item);
    v115 = v228;
    v116 = v214;
    v164 = v244;
    v102 = v241;
    v166 = v242;
    goto LABEL_83;
  }

LABEL_46:

  v117 = v215;
  v118 = v223;
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v215[*(v116 + 60)], v223, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  if ((*(v222 + 48))(v118, 1, v224) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v118, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
LABEL_100:
    v185 = v216;
    [v246 setRepresentativeItem_];

    return _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v117, type metadata accessor for ToolbarStorage.GroupItem);
  }

  v102 = v212;
  _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v118, v212, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
  v184 = v217;
  outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v102, v217, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v102, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
    _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v184, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
    goto LABEL_100;
  }

  v186 = v184[3];
  v256[2] = v184[2];
  v256[3] = v186;
  v187 = v184[5];
  v256[4] = v184[4];
  v256[5] = v187;
  v188 = v184[1];
  v256[0] = *v184;
  v256[1] = v188;
  v189 = [v246 representativeItem];
  if (!v189)
  {
    goto LABEL_110;
  }

  v190 = [v246 representativeItem];
  if (v190)
  {
    v167 = v190;
    type metadata accessor for UIKitBarButtonItem(0);
    v191 = swift_dynamicCastClass();
    if (v191)
    {
      v192 = v191;
      outlined init with copy of _ViewList_View(v256, &v250);
      v193 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_listView;
      swift_beginAccess();
      v194 = MEMORY[0x1E697D9F0];
      v195 = MEMORY[0x1E69E6720];
      _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v192 + v193, &v248, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
      swift_beginAccess();
      _s7SwiftUI14ToolbarStorageV9GroupItemVSgWOfTm_0(&v250, v192 + v193, &lazy cache variable for type metadata for _ViewList_View?, v194, v195, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
      swift_endAccess();
      UIKitBarButtonItem.listView.didset();

      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(&v248, &lazy cache variable for type metadata for _ViewList_View?, v194, v195, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(&v250, &lazy cache variable for type metadata for _ViewList_View?, v194, v195, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
    }

    else
    {
LABEL_113:
    }

    goto LABEL_114;
  }

  outlined destroy of _ViewList_View(v256);

LABEL_115:
  _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v102, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
  return _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v215, type metadata accessor for ToolbarStorage.GroupItem);
}

uint64_t initializeWithCopy for ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v5 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v5;
    v6 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v6;
    v7 = *(a2 + 88);

    if (v7)
    {
      v8 = *(a2 + 96);
      *(a1 + 88) = v7;
      *(a1 + 96) = v8;
      (**(v7 - 8))(a1 + 64, a2 + 64, v7);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      v9 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v9;
      *(a1 + 96) = *(a2 + 96);
    }

    if (*(a2 + 152) == 1)
    {
      v10 = *(a2 + 136);
      *(a1 + 136) = v10;
      (**(v10 - 8))(a1 + 112, a2 + 112);
      *(a1 + 152) = 1;
    }

    else
    {
      v11 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v11;
      *(a1 + 137) = *(a2 + 137);
    }

    *(a1 + 153) = *(a2 + 153);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 176) = *(a2 + 176);
    v12 = *(a2 + 208);
    *(a1 + 208) = v12;
    v13 = v12;
    v14 = **(v12 - 8);

    v14(a1 + 184, a2 + 184, v13);
    v15 = *(a2 + 232);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = v15;
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    v16 = *(a2 + 272);
    v17 = *(a2 + 280);
    *(a1 + 272) = v16;
    *(a1 + 280) = v17;
    v130 = a1;
    v131 = type metadata accessor for ToolbarStorage.Item(0);
    v18 = v131[17];
    v132 = (a1 + v18);
    v129 = a2;
    v19 = a2 + v18;
    v20 = type metadata accessor for PlatformItemList.Item();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);

    v23 = v16;
    v24 = v17;
    if (v22(v19, 1, v20))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v132, v19, *(*(v25 - 8) + 64));
      a1 = v130;
LABEL_69:
      swift_weakCopyInit();
      *(a1 + v131[19]) = *(v129 + v131[19]);
      *(a1 + v131[20]) = *(v129 + v131[20]);
      *(a1 + v131[21]) = *(v129 + v131[21]);
      goto LABEL_70;
    }

    v127 = v21;
    v128 = v20;
    v26 = *v19;
    v27 = *(v19 + 8);
    v28 = v132;
    *v132 = *v19;
    v132[1] = v27;
    v29 = *(v19 + 24);
    v132[2] = *(v19 + 16);
    v132[3] = v29;
    *(v132 + 32) = *(v19 + 32);
    v30 = *(v19 + 48);
    v132[5] = *(v19 + 40);
    v132[6] = v30;
    *(v132 + 56) = *(v19 + 56);
    v31 = *(v19 + 192);
    v32 = v26;
    v33 = v27;

    if (v31 >> 1 == 4294967294)
    {
      v34 = *(v19 + 208);
      *(v132 + 12) = *(v19 + 192);
      *(v132 + 13) = v34;
      *(v132 + 14) = *(v19 + 224);
      *(v132 + 235) = *(v19 + 235);
      v35 = *(v19 + 144);
      *(v132 + 8) = *(v19 + 128);
      *(v132 + 9) = v35;
      v36 = *(v19 + 176);
      *(v132 + 10) = *(v19 + 160);
      *(v132 + 11) = v36;
      v37 = *(v19 + 80);
      *(v132 + 4) = *(v19 + 64);
      *(v132 + 5) = v37;
      v38 = *(v19 + 112);
      *(v132 + 6) = *(v19 + 96);
      *(v132 + 7) = v38;
      v39 = *(v19 + 264);
      if (v39)
      {
LABEL_16:
        v132[32] = *(v19 + 256);
        v132[33] = v39;
        v40 = *(v19 + 272);

        if (v40 >= 2)
        {
          v41 = v40;
        }

        v132[34] = v40;
        *(v132 + 70) = *(v19 + 280);
        *(v132 + 284) = *(v19 + 284);
        *(v132 + 285) = *(v19 + 285);
        v42 = *(v19 + 296);
        v132[36] = *(v19 + 288);
        v132[37] = v42;

LABEL_27:
        v53 = *(v19 + 336);
        if (v53 >> 2 == 0xFFFFFFFF)
        {
          v54 = *(v19 + 384);
          *(v132 + 23) = *(v19 + 368);
          *(v132 + 24) = v54;
          v132[50] = *(v19 + 400);
          v55 = *(v19 + 320);
          *(v132 + 19) = *(v19 + 304);
          *(v132 + 20) = v55;
          v56 = *(v19 + 352);
          *(v132 + 21) = *(v19 + 336);
          *(v132 + 22) = v56;
        }

        else
        {
          v57 = *(v19 + 304);
          v58 = *(v19 + 312);
          v60 = *(v19 + 320);
          v59 = *(v19 + 328);
          v62 = *(v19 + 344);
          v61 = *(v19 + 352);
          v63 = *(v19 + 360);
          v64 = *(v19 + 368);
          v121 = *(v19 + 376);
          v122 = *(v19 + 384);
          v123 = *(v19 + 392);
          __dsta = *(v19 + 400);
          outlined copy of PlatformItemList.Item.SystemItem(v57, v58, v60, v59, v53, v62, v61, v63, v64, v121, v122, v123, __dsta);
          v132[38] = v57;
          v132[39] = v58;
          v132[40] = v60;
          v132[41] = v59;
          v132[42] = v53;
          v132[43] = v62;
          v28 = v132;
          v132[44] = v61;
          v132[45] = v63;
          v132[46] = v64;
          v132[47] = v121;
          v132[48] = v122;
          v132[49] = v123;
          v132[50] = __dsta;
        }

        v65 = *(v19 + 416);
        if (v65 == 1)
        {
          v66 = *(v19 + 456);
          *(v28 + 55) = *(v19 + 440);
          *(v28 + 57) = v66;
          *(v28 + 472) = *(v19 + 472);
          v67 = *(v19 + 424);
          *(v28 + 51) = *(v19 + 408);
          *(v28 + 53) = v67;
          goto LABEL_40;
        }

        *(v28 + 102) = *(v19 + 408);
        *(v28 + 412) = *(v19 + 412);
        if (v65)
        {
          v68 = *(v19 + 424);
          v28[52] = v65;
          v28[53] = v68;

          v69 = *(v19 + 432);
          if (v69)
          {
            goto LABEL_34;
          }
        }

        else
        {
          *(v28 + 26) = *(v19 + 416);
          v69 = *(v19 + 432);
          if (v69)
          {
LABEL_34:
            v70 = *(v19 + 440);
            v28[54] = v69;
            v28[55] = v70;

            v71 = *(v19 + 448);
            if (v71)
            {
LABEL_35:
              v72 = *(v19 + 456);
              v28[56] = v71;
              v28[57] = v72;

LABEL_39:
              v28[58] = *(v19 + 464);
              *(v28 + 472) = *(v19 + 472);
LABEL_40:
              v73 = *(v19 + 488);
              v28[60] = *(v19 + 480);
              v28[61] = v73;
              v28[62] = *(v19 + 496);
              *(v28 + 504) = *(v19 + 504);
              v74 = *(v19 + 512);

              if (v74)
              {
                v75 = *(v19 + 520);
                v28[64] = v74;
                v28[65] = v75;
              }

              else
              {
                *(v28 + 32) = *(v19 + 512);
              }

              *(v28 + 528) = *(v19 + 528);
              if (!*(v19 + 816))
              {
                memcpy(v28 + 67, (v19 + 536), 0x130uLL);
                goto LABEL_55;
              }

              v28[67] = *(v19 + 536);
              v28[68] = *(v19 + 544);
              *(v28 + 552) = *(v19 + 552);
              v28[70] = *(v19 + 560);
              *(v28 + 568) = *(v19 + 568);
              *(v28 + 36) = *(v19 + 576);
              *(v28 + 592) = *(v19 + 592);
              v76 = v28 + 75;
              v77 = (v19 + 600);
              v78 = *(v19 + 624);

              if (v78)
              {
                if (v78 == 1)
                {
                  v79 = *(v19 + 616);
                  *v76 = *v77;
                  *(v28 + 77) = v79;
                  *(v28 + 79) = *(v19 + 632);
LABEL_51:
                  v28[81] = *(v19 + 648);
                  *(v28 + 656) = *(v19 + 656);
                  v81 = v28 + 83;
                  v82 = (v19 + 664);
                  v83 = *(v19 + 776);
                  if (v83 == 1)
                  {
                    v84 = *(v19 + 776);
                    *(v28 + 95) = *(v19 + 760);
                    *(v28 + 97) = v84;
                    *(v28 + 99) = *(v19 + 792);
                    *(v28 + 808) = *(v19 + 808);
                    v85 = *(v19 + 712);
                    *(v28 + 87) = *(v19 + 696);
                    *(v28 + 89) = v85;
                    v86 = *(v19 + 744);
                    *(v28 + 91) = *(v19 + 728);
                    *(v28 + 93) = v86;
                    v87 = *(v19 + 680);
                    *v81 = *v82;
                    *(v28 + 85) = v87;
                  }

                  else
                  {
                    *v81 = *v82;
                    *(v28 + 672) = *(v19 + 672);
                    v28[85] = *(v19 + 680);
                    *(v28 + 688) = *(v19 + 688);
                    *(v28 + 689) = *(v19 + 689);
                    *(v28 + 691) = *(v19 + 691);
                    *(v28 + 692) = *(v19 + 692);
                    v28[87] = *(v19 + 696);
                    v88 = *(v19 + 720);
                    *(v28 + 44) = *(v19 + 704);
                    *(v28 + 45) = v88;
                    v28[92] = *(v19 + 736);
                    *(v28 + 372) = *(v19 + 744);
                    *(v28 + 47) = *(v19 + 752);
                    *(v28 + 768) = *(v19 + 768);
                    v28[97] = v83;
                    *(v28 + 49) = *(v19 + 784);
                    v28[100] = *(v19 + 800);
                    *(v28 + 808) = *(v19 + 808);
                  }

                  v28[102] = *(v19 + 816);
                  v28[103] = *(v19 + 824);
                  v28[104] = *(v19 + 832);

LABEL_55:
                  v89 = v28 + 105;
                  v90 = (v19 + 840);
                  v91 = *(v19 + 864);
                  if (v91)
                  {
                    if (v91 == 1)
                    {
                      v92 = *(v19 + 856);
                      *v89 = *v90;
                      *(v28 + 107) = v92;
                      *(v28 + 109) = *(v19 + 872);
                      v28[111] = *(v19 + 888);
LABEL_62:
                      v96 = *(v19 + 896);
                      v28[112] = v96;
                      v28[113] = *(v19 + 904);
                      v28[114] = *(v19 + 912);
                      v28[115] = *(v19 + 920);
                      v28[116] = *(v19 + 928);
                      v28[117] = *(v19 + 936);
                      v28[118] = *(v19 + 944);
                      *(v28 + 476) = *(v19 + 952);
                      *(v28 + 954) = *(v19 + 954);
                      v97 = v128[28];
                      __dst = v28 + v97;
                      v98 = (v19 + v97);
                      v99 = type metadata accessor for CommandOperation();
                      v100 = *(v99 - 8);
                      v124 = *(v100 + 48);
                      v101 = v96;

                      if (v124(v98, 1, v99))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v98, *(*(v102 - 8) + 64));
                        v103 = v132;
                        v104 = v127;
                        v105 = v128;
                      }

                      else
                      {
                        *__dst = *v98;
                        v106 = *(v99 + 20);
                        v107 = &__dst[v106];
                        v108 = &v98[v106];
                        v109 = *&v98[v106];
                        v110 = *&v98[v106 + 8];
                        v111 = v98[v106 + 16];
                        outlined copy of Text.Storage(v109, *(v108 + 1), v108[16]);
                        *v107 = v109;
                        *(v107 + 1) = v110;
                        v107[16] = v111;
                        *(v107 + 3) = *(v108 + 3);
                        v112 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v113 = type metadata accessor for UUID();
                        v114 = *(*(v113 - 8) + 16);

                        v114(&v107[v112], &v108[v112], v113);
                        v115 = *(v99 + 24);
                        v116 = &__dst[v115];
                        v117 = &v98[v115];
                        if (*v117)
                        {
                          v118 = v117[1];
                          *v116 = *v117;
                          v116[1] = v118;
                        }

                        else
                        {
                          *v116 = *v117;
                        }

                        v103 = v132;
                        v104 = v127;
                        v105 = v128;
                        (*(v100 + 56))(__dst, 0, 1, v99);
                      }

                      a1 = v130;
                      *(v103 + v105[29]) = *(v19 + v105[29]);
                      *(v103 + v105[30]) = *(v19 + v105[30]);
                      *(v103 + v105[31]) = *(v19 + v105[31]);
                      *(v103 + v105[32]) = *(v19 + v105[32]);
                      *(v103 + v105[33]) = *(v19 + v105[33]);
                      *(v103 + v105[34]) = *(v19 + v105[34]);
                      v119 = *(v104 + 56);

                      v119(v103, 0, 1, v105);
                      goto LABEL_69;
                    }

                    v28[108] = v91;
                    v28[109] = *(v19 + 872);
                    (**(v91 - 8))(v89, v90);
                    v94 = *(v19 + 880);
                    if (!v94)
                    {
LABEL_61:
                      *(v28 + 55) = *(v19 + 880);
                      goto LABEL_62;
                    }
                  }

                  else
                  {
                    v93 = *(v19 + 856);
                    *v89 = *v90;
                    *(v28 + 107) = v93;
                    v28[109] = *(v19 + 872);
                    v94 = *(v19 + 880);
                    if (!v94)
                    {
                      goto LABEL_61;
                    }
                  }

                  v95 = *(v19 + 888);
                  v28[110] = v94;
                  v28[111] = v95;

                  goto LABEL_62;
                }

                v28[78] = v78;
                v28[79] = *(v19 + 632);
                (**(v78 - 8))((v28 + 75), v19 + 600, v78);
              }

              else
              {
                v80 = *(v19 + 616);
                *v76 = *v77;
                *(v28 + 77) = v80;
                v28[79] = *(v19 + 632);
              }

              v28[80] = *(v19 + 640);

              goto LABEL_51;
            }

LABEL_38:
            *(v28 + 28) = *(v19 + 448);
            goto LABEL_39;
          }
        }

        *(v28 + 27) = *(v19 + 432);
        v71 = *(v19 + 448);
        if (v71)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v43 = *(v19 + 72);
      if (v43 == 255)
      {
        v132[8] = *(v19 + 64);
        *(v132 + 72) = *(v19 + 72);
      }

      else
      {
        v44 = *(v19 + 64);
        outlined copy of GraphicsImage.Contents(v44, *(v19 + 72));
        v132[8] = v44;
        *(v132 + 72) = v43;
        v31 = *(v19 + 192);
      }

      v132[10] = *(v19 + 80);
      *(v132 + 11) = *(v19 + 88);
      *(v132 + 104) = *(v19 + 104);
      *(v132 + 108) = *(v19 + 108);
      *(v132 + 121) = *(v19 + 121);
      *(v132 + 17) = *(v19 + 136);
      *(v132 + 19) = *(v19 + 152);
      *(v132 + 84) = *(v19 + 168);
      *(v132 + 170) = *(v19 + 170);
      *(v132 + 171) = *(v19 + 171);
      if (v31 >> 1 == 0xFFFFFFFF)
      {
        v45 = *(v19 + 192);
        *(v132 + 11) = *(v19 + 176);
        *(v132 + 12) = v45;
      }

      else
      {
        v46 = *(v19 + 176);
        v47 = *(v19 + 184);
        v48 = *(v19 + 200);
        outlined copy of AccessibilityImageLabel(v46, v47, v31);
        v132[22] = v46;
        v132[23] = v47;
        v132[24] = v31;
        v132[25] = v48;
      }

      v49 = *(v19 + 216);
      v132[26] = *(v19 + 208);
      v132[27] = v49;
      *(v132 + 112) = *(v19 + 224);
      *(v132 + 57) = *(v19 + 228);
      *(v132 + 232) = *(v19 + 232);
      v50 = *(v19 + 240);
      v132[30] = v50;
      *(v132 + 124) = *(v19 + 248);
      *(v132 + 250) = *(v19 + 250);
      swift_unknownObjectRetain();

      v51 = v50;
      v39 = *(v19 + 264);
      if (v39)
      {
        goto LABEL_16;
      }
    }

    v52 = *(v19 + 272);
    *(v132 + 16) = *(v19 + 256);
    *(v132 + 17) = v52;
    *(v132 + 18) = *(v19 + 288);
    goto LABEL_27;
  }

  *a1 = *a2;
  if (*(a2 + 48) == 1)
  {
    v4 = *(a2 + 32);
    *(a1 + 32) = v4;
    (**(v4 - 8))(a1 + 8, a2 + 8);
    *(a1 + 48) = 1;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

LABEL_70:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t destroy for ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*(a1 + 48) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 8);
    }
  }

  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }

  if (*(a1 + 152) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 112);
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 184);

  v3 = a1 + *(type metadata accessor for ToolbarStorage.Item(0) + 68);
  v4 = type metadata accessor for PlatformItemList.Item();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v3 + 192);
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v7 = *(v3 + 72);
      if (v7 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v3 + 64), v7);
        v5 = *(v3 + 192);
        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v6 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v3 + 176), *(v3 + 184), v5);
      }

      swift_unknownObjectRelease();
    }

    if (*(v3 + 264))
    {

      v8 = *(v3 + 272);
      if (v8 >= 2)
      {
      }
    }

    v9 = *(v3 + 336);
    if (v9 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v3 + 304), *(v3 + 312), *(v3 + 320), *(v3 + 328), v9, *(v3 + 344), *(v3 + 352), *(v3 + 360), *(v3 + 368), *(v3 + 376), *(v3 + 384), *(v3 + 392), *(v3 + 400));
    }

    v10 = *(v3 + 416);
    if (v10)
    {
      if (v10 == 1)
      {
        goto LABEL_31;
      }
    }

    if (*(v3 + 432))
    {
    }

    if (*(v3 + 448))
    {
    }

LABEL_31:

    if (*(v3 + 512))
    {
    }

    if (!*(v3 + 816))
    {
LABEL_41:
      v12 = *(v3 + 864);
      if (v12)
      {
        if (v12 == 1)
        {
LABEL_46:

          v13 = v3 + *(v4 + 112);
          v14 = type metadata accessor for CommandOperation();
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            v15 = v13 + *(v14 + 20);
            outlined consume of Text.Storage(*v15, *(v15 + 8), *(v15 + 16));

            v16 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v17 = type metadata accessor for UUID();
            (*(*(v17 - 8) + 8))(v15 + v16, v17);
            if (*(v13 + *(v14 + 24)))
            {
            }
          }

          goto LABEL_50;
        }

        __swift_destroy_boxed_opaque_existential_1(v3 + 840);
      }

      if (*(v3 + 880))
      {
      }

      goto LABEL_46;
    }

    v11 = *(v3 + 624);
    if (v11)
    {
      if (v11 == 1)
      {
LABEL_38:
        if (*(v3 + 776) != 1)
        {
        }

        goto LABEL_41;
      }

      __swift_destroy_boxed_opaque_existential_1(v3 + 600);
    }

    goto LABEL_38;
  }

LABEL_50:

  return swift_weakDestroy();
}

unint64_t lazy protocol witness table accessor for type [ToolbarStorage.ID] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ToolbarStorage.ID] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ToolbarStorage.ID] and conformance [A])
  {
    _ss23_ContiguousArrayStorageCyyXlGMaTm_0(255, &lazy cache variable for type metadata for [ToolbarStorage.ID], &type metadata for ToolbarStorage.ID, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolbarStorage.ID] and conformance [A]);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolbarStorage.ID()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  Hasher.init(_seed:)();
  _ViewList_ID.hash(into:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t specialized CollectionChanges.Projection.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3 + 40 * a1;
  if (*(v3 + 64) <= 1u)
  {
    return *(v3 + 32);
  }

LABEL_7:
  _StringGuts.grow(_:)(17);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3 + 40 * a1;
  if (*(v3 + 64) >= 2u)
  {
    return *(v3 + 32);
  }

LABEL_7:
  _StringGuts.grow(_:)(17);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>()
{
  if (!lazy cache variable for type metadata for CollectionChanges<Int, Int>.Projection<Range<Int>>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for CollectionChanges.Projection();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CollectionChanges<Int, Int>.Projection<Range<Int>>);
    }
  }
}

uint64_t StoreBox.update(property:phase:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a1;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v30 - v8;
  LODWORD(v8) = *v3;
  v10 = *(v3 + 4);
  v11 = *(v3 + 16);
  v30 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  v32 = v10;
  v33 = v12;
  if (v8 == *MEMORY[0x1E698D3F8])
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = xmmword_18CD76350;
  }

  else
  {
    Value = AGGraphGetValue();
    v15 = *(Value + 8);
    v34 = *(Value + 16);
    v16 = v19 & 1;

    v17 = v34;
  }

  v36[5] = v14;
  v37 = v15;
  v38 = v17;
  if (v13 && !v16)
  {
    v20 = v35;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    LODWORD(v34) = 0;
    *v20 = v13;
    v21 = v13;
LABEL_14:
    v36[0] = v11;
    swift_unknownObjectRetain();

    dispatch thunk of ObservableObject.objectWillChange.getter();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for AttributeInvalidatingSubscriber();
    swift_getWitnessTable();
    swift_getWitnessTable();
    SubscriptionLifetime.subscribe<A>(subscriber:to:)();
    swift_unknownObjectRelease();
    (*(v31 + 8))(v9, AssociatedTypeWitness);

    v24 = v34;
    goto LABEL_15;
  }

  LODWORD(v34) = v16;
  v36[0] = v5;
  v36[1] = v6;
  swift_getKeyPath();
  v22 = swift_readAtKeyPath();
  v21 = *v23;
  swift_unknownObjectRetain();
  v22(v36, 0);

  *v35 = v21;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v13)
  {
    if (v21)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v24 = v34;
  if (v13 == v21)
  {
LABEL_12:
    v24 = 0;
    if (!v21)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v21)
  {
LABEL_13:
    LODWORD(v34) = v24;
    goto LABEL_14;
  }

LABEL_15:
  if (AGGraphGetWeakValue())
  {
    v26 = v25;

    swift_unknownObjectRelease();
    if (((v26 | v24) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    if ((v24 & 1) == 0)
    {
LABEL_21:
      v28 = 0;
      v35[1] = v33;
      *(v4 + 40) = v21;
      return v28 & 1;
    }

    LOBYTE(v26) = 0;
  }

  v27 = v33 + 1;
  *(v4 + 32) = v33 + 1;
  v35[1] = v27;
  *(v4 + 40) = v21;
  v28 = v26 | v24;
  return v28 & 1;
}

uint64_t sub_18BFA82B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v5[1] = *a1;
  v6 = v3;
  v7 = *(a1 + 16);
  result = FocusedValues.subscript.getter(v5);
  *a2 = v5[0];
  return result;
}

__n128 sub_18BFA8374(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t FocusedValues.subscript.getter@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for FocusedObjectKey();
  WitnessTable = swift_getWitnessTable();
  return FocusedValues.subscript.getter(v2, WitnessTable, a1);
}

uint64_t FocusedValues.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v35 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v33 - v7;
  v8 = type metadata accessor for FocusedValues.Entry();
  v9 = type metadata accessor for Optional();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = *(v8 - 8);
  v17 = *(v16 + 56);
  v17(&v33 - v14, 1, 1, v8, v13);
  (v17)(v11, 1, 1, v8);
  v44 = 0x8000000000000000;
  type metadata accessor for FocusedValuePropertyKey();
  v39 = a1;
  v40 = a2;
  v41 = v15;
  v42 = &v44;
  v43 = v11;
  swift_getWitnessTable();
  PropertyList.forEach<A>(keyType:_:)();
  v18 = *(v16 + 48);
  if (v18(v11, 1, v8))
  {
    v19 = *(AssociatedTypeWitness - 8);
    v20 = *(v19 + 56);
    v21 = 1;
    v20(v38, 1, 1, AssociatedTypeWitness);
    v22 = v18(v15, 1, v8);
    v23 = v35;
    if (!v22)
    {
      (*(v19 + 16))(v35, &v15[*(v8 + 36)], AssociatedTypeWitness);
      v21 = 0;
    }

    v20(v23, v21, 1, AssociatedTypeWitness);
    v24 = v38;
    if ((*(v19 + 48))(v38, 1, AssociatedTypeWitness) != 1)
    {
      (*(v33 + 8))(v24, v34);
    }
  }

  else
  {
    v25 = *(v8 + 36);
    v26 = *(AssociatedTypeWitness - 8);
    v27 = v38;
    (*(v26 + 16))(v38, &v11[v25], AssociatedTypeWitness);
    v28 = *(v26 + 56);
    v28(v27, 0, 1, AssociatedTypeWitness);
    v29 = v35;
    (*(v26 + 32))(v35, v27, AssociatedTypeWitness);
    v28(v29, 0, 1, AssociatedTypeWitness);
  }

  v30 = v37;
  v31 = *(v36 + 8);
  v31(v11, v37);
  return (v31)(v15, v30);
}

uint64_t type metadata completion function for FocusedValues.Entry()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void storeEnumTagSinglePayload for FocusedValues.Entry(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((((v8 + 24) & ~v8) + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v13 = 0;
    v14 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v8 + 24) & ~v8) + *(v6 + 64)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = a3 - v9 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v13)
      {
        *(a1 + v10) = 0;
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
      if ((v7 & 0x80000000) != 0)
      {
        v17 = *(v6 + 56);

        v17((a1 + v8 + 24) & ~v8, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        a1[1] = 0;
        a1[2] = 0;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        a1[2] = (a2 - 1);
      }

      return;
    }
  }

  if (((((v8 + 24) & ~v8) + *(v6 + 64)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 24) & ~v8) + *(v6 + 64)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v9 + a2;
    bzero(a1, v10);
    *a1 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v10) = v15;
    }

    else
    {
      *(a1 + v10) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v10) = v15;
  }
}

uint64_t getEnumTagSinglePayload for FocusedValues.Entry(uint64_t a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((v8 + 24) & ~v8) + v9) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v7 + 1;
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
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if ((v6 & 0x80000000) != 0)
    {
      v19 = *(v5 + 48);

      return v19((a1 + v8 + 24) & ~v8);
    }

    else
    {
      v18 = *(a1 + 16);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

uint64_t FocusedValueBox.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v53 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Optional();
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v38 - v12;
  v13 = type metadata accessor for FocusedValue.Content();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v38 - v16);
  (*(v14 + 16))(&v38 - v16, a1, v13, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v41 = a1;
    v19 = *v17;
    if (*v48 == *MEMORY[0x1E698D3F8])
    {
      v39 = 0;
      v20 = 0;
      v21 = 0;
      v40 = xmmword_18CD76350;
    }

    else
    {
      Value = AGGraphGetValue();
      v39 = v23;
      v20 = *Value;
      v21 = *(Value + 8);
      v40 = *(Value + 16);
    }

    v24 = *(v48 + 8);
    v50 = v19;
    if (v24)
    {
      v38 = v20;
      v49 = v24;
      type metadata accessor for KeyPath();
      swift_retain_n();
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v25)
      {

        v20 = v38;
        if ((v39 & 1) == 0)
        {

          v18 = 0;
          v26 = v45;
LABEL_18:
          v36 = v41;
          (*(v14 + 8))(v41, v13);
          (*(v47 + 16))(v36, v48 + *(v3 + 32), v26);
          swift_storeEnumTagMultiPayload();
          return v18;
        }

LABEL_13:
        v50 = v20;
        v51 = v21;
        v52 = v40;

        swift_getAtKeyPath();

        v27 = *(v47 + 16);
        *&v40 = *(v3 + 32);
        v26 = v45;
        v27(v10, v48 + v40, v45);
        v28 = v44;
        if ((*(v44 + 48))(v10, 1, v5) == 1)
        {

          (*(v47 + 8))(v10, v26);
        }

        else
        {
          v29 = v43;
          (*(v28 + 32))(v43, v10, v5);
          v30 = *(v28 + 16);
          v38 = v19;
          v31 = v42;
          v30(v42, v29, v5);
          v32 = (*(v28 + 56))(v31, 0, 1, v5);
          v39 = v3;
          MEMORY[0x1EEE9AC00](v32);
          v33 = v46;
          *(&v38 - 4) = v26;
          *(&v38 - 3) = v33;
          *(&v38 - 4) = 3;
          _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v31, closure #1 in compareValues<A>(_:_:options:)partial apply, (&v38 - 6), v26, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v34);

          v35 = *(v47 + 8);
          v35(v31, v26);
          (*(v28 + 8))(v29, v5);
          v3 = v39;
          if (v50 == 1)
          {
            v35(v46, v26);
            v18 = 0;
            goto LABEL_18;
          }
        }

        (*(v47 + 40))(v48 + v40, v46, v26);
        v18 = 1;
        goto LABEL_18;
      }

      v20 = v38;
    }

    else
    {
    }

    *(v48 + 8) = v19;
    goto LABEL_13;
  }

  (*(v14 + 8))(v17, v13);
  return 0;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.OpenWindowActionKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = static EnvironmentValues.OpenWindowActionKey.defaultValue;
  v3 = unk_1EAA1D600;
  v4 = qword_1EAA1D610;
  v5 = byte_1EAA1D618;
  *a1 = static EnvironmentValues.OpenWindowActionKey.defaultValue;
  *(a1 + 8) = v3;
  v6 = byte_1EAA1D608;
  *(a1 + 16) = byte_1EAA1D608;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return outlined copy of SceneList.Namespace(v2, v3, v6);
}

uint64_t initializeWithCopy for OpenWindowAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t CommandsBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for CommandsBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SymbolEffectConfiguration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SymbolEffectOptions();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  v7 = a5(0, *(a4 + 16), *(a4 + 24));
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_4(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 20);

    return v12(v13, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<SearchFieldState>?(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

void *__swift_store_extra_inhabitant_indexTm_9(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_11(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MainMenuItem.Identifier(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t FocusedValue.content.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0, *(a1 + 16));
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t FocusStore.makeStoreContent(_:)(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (!v3)
  {
    *v1 = 0;
    return result;
  }

  v4 = 0;
  v5 = result + 32;
  v6 = result + 32;
  v7 = *(result + 16);
  do
  {
    outlined init with copy of FocusStoreList.Item(v6, &v34);
    v8 = v34;
    outlined destroy of FocusStoreList.Item(&v34);
    if (v8 > v4)
    {
      v4 = v8;
    }

    v6 += 72;
    --v7;
  }

  while (v7);
  *v2 = v4;
  while (1)
  {
    outlined init with copy of FocusStoreList.Item(v5, &v34);
    v9 = v35;
    v10 = v2[2];
    if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v35), (v12 & 1) == 0))
    {
      v13 = 0;
      v33 = 0;
      v14 = v36;
      if (!v36)
      {
        goto LABEL_15;
      }

LABEL_14:
      v14(&v33);
      v13 = v33;
      goto LABEL_15;
    }

    v13 = *(*(v10 + 56) + 8 * v11);
    v33 = v13;

    v14 = v36;
    if (v36)
    {
      goto LABEL_14;
    }

LABEL_15:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v2[2];
    v16 = v32;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v16[3] < v22)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_38;
      }

LABEL_20:
      v25 = v32;
      if (v23)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v26 = v17;
    specialized _NativeDictionary.copy()();
    v17 = v26;
    v25 = v32;
    if (v23)
    {
LABEL_21:
      *(v25[7] + 8 * v17) = v13;

      goto LABEL_25;
    }

LABEL_23:
    v25[(v17 >> 6) + 8] |= 1 << v17;
    *(v25[6] + 8 * v17) = v9;
    *(v25[7] + 8 * v17) = v13;
    v27 = v25[2];
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v21)
    {
      goto LABEL_37;
    }

    v25[2] = v28;
LABEL_25:
    v2[2] = v25;
    if (v37 == 1 && swift_weakLoadStrong())
    {
      type metadata accessor for ViewResponder();
      if (swift_dynamicCastClass())
      {
        swift_weakInit();
        swift_weakAssign();
        v29 = v2[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
        }

        v29[2] = v31 + 1;
        outlined init with take of Binding<SearchFieldState>(&v32, &v29[v31 + 4], type metadata accessor for WeakBox<ViewResponder>);
        v2[1] = v29;
        goto LABEL_8;
      }
    }

LABEL_8:
    result = outlined destroy of FocusStoreList.Item(&v34);
    v5 += 72;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in FocusStoreUpdateAction.init<A>(value:responder:bridge:focusScopes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[1] = a1;
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FocusStore.Entry();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v17 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      (*(v9 + 16))(v11, a4, a6);

      FocusStore.Entry.init(value:focusScopes:responder:bridge:)(v11, a5, a6, v15);
      (*(*(v12 - 8) + 56))(v15, 0, 1, v12);
      type metadata accessor for FocusStore.Key();
      swift_getWitnessTable();
      PropertyList.subscript.setter();
    }
  }

  return result;
}

uint64_t FocusStore.Entry.init(value:focusScopes:responder:bridge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FocusStore.Entry.Target();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  swift_weakInit();
  swift_weakAssign();

  swift_weakInit();
  swift_weakAssign();

  swift_storeEnumTagMultiPayload();
  return FocusStore.Entry.init(value:focusScopes:target:)(a1, a2, v10, a3, a4);
}

uint64_t FocusStore.Entry.init(value:focusScopes:target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for FocusStore.Entry();
  *(a5 + *(v8 + 36)) = a2;
  v9 = *(v8 + 40);
  v10 = type metadata accessor for FocusStore.Entry.Target();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a3, v10);
}

void *initializeWithTake for FocusStore.Entry.Target(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
    type metadata accessor for Binding<SearchFieldState>(0);
    v6 = *(v5 + 32);
    v7 = a1 + v6;
    v8 = a2 + v6;
    *v7 = *(a2 + v6);
    v7[1] = *(a2 + v6 + 1);
    *(v7 + 1) = *(a2 + v6 + 2);
    v7[8] = *(a2 + v6 + 8);
    *(v7 + 1) = *(a2 + v6 + 4);
    v9 = type metadata accessor for SearchFieldState(0);
    v10 = v9[9];
    v11 = type metadata accessor for AttributedString();
    (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
    v7[v9[10]] = v8[v9[10]];
    v12 = v9[11];
    v13 = &v7[v12];
    v14 = &v8[v12];
    v13[4] = v14[4];
    *v13 = *v14;
  }

  else
  {
    swift_weakTakeInit();
    swift_weakTakeInit();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t initializeWithCopy for FocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v41 = a1;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v40 = type metadata accessor for AttributedString();
  v9 = *(v40 - 8);
  v10 = *(v9 + 80);
  v11 = v10;
  v12 = v10 + 8;
  v13 = v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v7 + v12) & v13);
  v15 = ((v8 + v12) & v13);
  v16 = v10 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v17 = (v11 + 9) & ~v11;
  v18 = *(v9 + 64);
  if (((v10 + 16) & v16) + ((v17 + v18) & 0xFFFFFFFFFFFFFFFCLL) + 9 <= 0x10)
  {
    v19 = 16;
  }

  else
  {
    v19 = ((v10 + 16) & v16) + ((v17 + v18) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v20 = *(v15 + v19);

  if (v20 < 2)
  {
    goto LABEL_19;
  }

  if (v19 <= 3)
  {
    v21 = v19;
  }

  else
  {
    v21 = 4;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *v15;
    }

    else if (v21 == 3)
    {
      v22 = *v15 | (*(v15 + 2) << 16);
    }

    else
    {
      v22 = *v15;
    }

    goto LABEL_16;
  }

  if (v21)
  {
    v22 = *v15;
LABEL_16:
    v23 = (v22 | ((v20 - 2) << (8 * v19))) + 2;
    v24 = v22 + 2;
    if (v19 >= 4)
    {
      v20 = v24;
    }

    else
    {
      v20 = v23;
    }
  }

LABEL_19:
  if (v20 == 1)
  {
    *v14 = *v15;
    v25 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v27 = ((v25 + v12) & v16);
    v28 = ((v26 + v12) & v16);
    *v27 = *v28;
    v27[1] = v28[1];
    v27[2] = v28[2];
    v27[3] = v28[3];
    v29 = (v27 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = (v28 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *v30;
    *(v29 + 4) = *(v30 + 4);
    *v29 = v31;
    v32 = (v11 + 5 + v29) & ~v11;
    v33 = (v11 + 5 + v30) & ~v11;
    v34 = *(v9 + 16);

    v34(v32, v33, v40);
    *(v32 + v18) = *(v33 + v18);
    v35 = (v32 + v18) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = (v33 + v18) & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *(v36 + 4);
    *(v35 + 8) = *(v36 + 8);
    *(v35 + 4) = v37;
    v38 = 1;
  }

  else
  {
    swift_weakCopyInit();
    swift_weakCopyInit();
    v38 = 0;
  }

  *(v14 + v19) = v38;
  return v41;
}

uint64_t destroy for FocusStore.Entry(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ((v4 + (v7 | 7) + 8) & ~(v7 | 7));
  v9 = *(v6 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v10 = ((v7 + 16) & v9) + ((((v7 + 9) & ~v7) + *(v6 + 64)) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  if (v10 <= 0x10)
  {
    v10 = 16;
  }

  v11 = v8[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = *v8;
    }

    else if (v13 == 2)
    {
      v14 = *v8;
    }

    else if (v13 == 3)
    {
      v14 = *v8 | (v8[2] << 16);
    }

    else
    {
      v14 = *v8;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 2;
    v11 = v14 + 2;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_17:
  if (v11 == 1)
  {
    v18 = *(v5 - 8);

    v16 = *(v18 + 8);

    return v16((v7 + ((((v7 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v9) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v7, v5);
  }

  else
  {
    swift_weakDestroy();

    return swift_weakDestroy();
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, PropertyList>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, PropertyList>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, PropertyList>);
    }
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for FocusStore.Entry() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v3 + v2[12];
  type metadata accessor for FocusStore.Entry.Target();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    type metadata accessor for Binding<SearchFieldState>(0);
    v6 = *(v5 + 32);
    v7 = v6 + *(type metadata accessor for SearchFieldState(0) + 36);
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
    swift_weakDestroy();
    swift_weakDestroy();
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

void *assignWithCopy for SceneStorage(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 16) & ~v10;
  v12 = (v7 + v10 + 16) & ~v10;
  (*(v8 + 24))(v11, v12);
  v13 = *(v9 + 40) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = v13 + v12;
  v16 = (v15 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v14 = *(v15 & 0xFFFFFFFFFFFFFFF8);

  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *(v16 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

unint64_t assignWithCopy for AlertModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);

  *(v5 + 16) = *(v6 + 16);

  *(v5 + 24) = *(v6 + 24);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v9 = *(v6 + 48);
  outlined copy of Text.Storage(v7, v8, v9);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  v12 = *(v5 + 48);
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  outlined consume of Text.Storage(v10, v11, v12);
  *(v5 + 56) = *(v6 + 56);

  v13 = *(*(a3 + 16) - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v15 + 64 + v5) & ~v15;
  v17 = (v15 + 64 + v6) & ~v15;
  (*(v13 + 24))(v16, v17);
  v18 = *(v14 + 40);
  v19 = *(*(a3 + 24) - 8);
  v20 = v19 + 24;
  v21 = *(v19 + 80);
  v22 = v18 + v21;
  v23 = (v22 + v16) & ~v21;
  v24 = (v22 + v17) & ~v21;
  (*(v19 + 24))(v23, v24);
  v25 = *(v20 + 40) + 7;
  v26 = (v25 + v23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v25 + v24) & 0xFFFFFFFFFFFFFFF8;
  v28 = *v27;
  if (*v26 < 0xFFFFFFFFuLL)
  {
    if (v28 >= 0xFFFFFFFF)
    {
      v33 = *(v27 + 8);
      *v26 = v28;
      *(v26 + 8) = v33;
      *(v26 + 16) = *(v27 + 16);
      *(v26 + 24) = *(v27 + 24);
      v34 = *(v27 + 32);
      *(v26 + 32) = v34;
      *(v26 + 40) = *(v27 + 40);
      *(v26 + 48) = *(v27 + 48);
      *(v26 + 56) = *(v27 + 56);
      *(v26 + 64) = *(v27 + 64);
      *(v26 + 68) = *(v27 + 68);
      *(v26 + 72) = *(v27 + 72);
      *(v26 + 76) = *(v27 + 76);
      *(v26 + 80) = *(v27 + 80);
      v35 = v34;

      goto LABEL_8;
    }

LABEL_7:
    v36 = *(v27 + 16);
    *v26 = *v27;
    *(v26 + 16) = v36;
    v37 = *(v27 + 32);
    v38 = *(v27 + 48);
    v39 = *(v27 + 64);
    *(v26 + 80) = *(v27 + 80);
    *(v26 + 48) = v38;
    *(v26 + 64) = v39;
    *(v26 + 32) = v37;
    goto LABEL_8;
  }

  if (v28 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v29 = *(v27 + 8);
  *v26 = v28;
  *(v26 + 8) = v29;
  *(v26 + 16) = *(v27 + 16);
  *(v26 + 24) = *(v27 + 24);
  v30 = *(v27 + 32);
  v31 = *(v26 + 32);
  *(v26 + 32) = v30;
  v32 = v30;

  *(v26 + 40) = *(v27 + 40);

  *(v26 + 48) = *(v27 + 48);
  *(v26 + 56) = *(v27 + 56);

  *(v26 + 64) = *(v27 + 64);
  *(v26 + 68) = *(v27 + 68);
  *(v26 + 72) = *(v27 + 72);
  *(v26 + 76) = *(v27 + 76);
  *(v26 + 80) = *(v27 + 80);

LABEL_8:
  *(v26 + 88) = *(v27 + 88);
  return a1;
}

void *assignWithCopy for ItemSheetPresentationModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 & 0xFFFFFFFFFFFFFFF8;
  *v7 = *(v6 & 0xFFFFFFFFFFFFFFF8);

  v30 = a3;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v7 + v11 + 8;
  v13 = v11 + 8 + v8;
  v14 = *(v10 + 48);
  LODWORD(v7) = v14(v12 & ~v11, 1, v9);
  v15 = v14(v13 & ~v11, 1, v9);
  if (v7)
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
  v22 = *v21;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    if (v22 >= 0xFFFFFFFF)
    {
      v24 = v21[1];
      *v20 = v22;
      v20[1] = v24;

      goto LABEL_21;
    }

LABEL_20:
    *v20 = *v21;
    goto LABEL_21;
  }

  if (v22 < 0xFFFFFFFF)
  {

    goto LABEL_20;
  }

  v23 = v21[1];
  *v20 = v22;
  v20[1] = v23;

LABEL_21:
  v25 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 8);
  *v25 = *v26;
  *(v25 + 8) = v27;

  *(v25 + 16) = *(v26 + 16);
  *(v25 + 17) = *(v26 + 17);
  v28 = *(*(v30 + 32) - 8);
  (*(v28 + 24))((*(v28 + 80) + 18 + v25) & ~*(v28 + 80), (*(v28 + 80) + 18 + v26) & ~*(v28 + 80));
  return a1;
}

uint64_t assignWithCopy for SharingPickerHostModifier(uint64_t a1, __int128 *a2)
{
  v4 = (a1 + 112);
  v6 = (a2 + 7);
  v5 = *(a2 + 14);
  if (*(a1 + 112) != 1)
  {
    if (v5 == 1)
    {
      outlined destroy of SharingPickerHostModifier.Model(a1);
      v13 = a2[3];
      v15 = *a2;
      v14 = a2[1];
      *(a1 + 32) = a2[2];
      *(a1 + 48) = v13;
      *a1 = v15;
      *(a1 + 16) = v14;
      v16 = a2[7];
      v18 = a2[4];
      v17 = a2[5];
      *(a1 + 96) = a2[6];
      *(a1 + 112) = v16;
      *(a1 + 64) = v18;
      *(a1 + 80) = v17;
      goto LABEL_45;
    }

    v24 = *(a2 + 9);
    if (*(a1 + 72) == 1)
    {
      if (v24 == 1)
      {
        v25 = *a2;
        v26 = a2[2];
        *(a1 + 16) = a2[1];
        *(a1 + 32) = v26;
        *a1 = v25;
        v27 = a2[3];
        v28 = a2[4];
        v29 = a2[6];
        *(a1 + 80) = a2[5];
        *(a1 + 96) = v29;
        *(a1 + 48) = v27;
        *(a1 + 64) = v28;
        goto LABEL_38;
      }

      *a1 = *a2;
      v46 = *(a2 + 1);
      v47 = *(a2 + 2);
      v48 = *(a2 + 3);
      v49 = *(a2 + 4);
      v50 = *(a2 + 40);
      outlined copy of AnyShareConfiguration.Storage(v46, v47, v48, v49, v50);
      *(a1 + 8) = v46;
      *(a1 + 16) = v47;
      *(a1 + 24) = v48;
      *(a1 + 32) = v49;
      *(a1 + 40) = v50;
      if (*(a2 + 9))
      {
        v51 = *(a2 + 6);
        v52 = *(a2 + 7);
        v53 = *(a2 + 64);
        outlined copy of Text.Storage(v51, v52, v53);
        *(a1 + 48) = v51;
        *(a1 + 56) = v52;
        *(a1 + 64) = v53;
        *(a1 + 72) = *(a2 + 9);

        if (*(a2 + 13))
        {
LABEL_18:
          v54 = *(a2 + 10);
          v55 = *(a2 + 11);
          v56 = *(a2 + 96);
          outlined copy of Text.Storage(v54, v55, v56);
          *(a1 + 80) = v54;
          *(a1 + 88) = v55;
          *(a1 + 96) = v56;
          *(a1 + 104) = *(a2 + 13);

          goto LABEL_38;
        }
      }

      else
      {
        v77 = a2[4];
        *(a1 + 48) = a2[3];
        *(a1 + 64) = v77;
        if (*(a2 + 13))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (v24 == 1)
      {
        outlined destroy of AnyIdentifiableShareConfiguration(a1);
        v42 = a2[1];
        v41 = a2[2];
        *a1 = *a2;
        *(a1 + 16) = v42;
        *(a1 + 32) = v41;
        v43 = a2[6];
        v45 = a2[3];
        v44 = a2[4];
        *(a1 + 80) = a2[5];
        *(a1 + 96) = v43;
        *(a1 + 48) = v45;
        *(a1 + 64) = v44;
        goto LABEL_38;
      }

      *a1 = *a2;
      v57 = *(a2 + 1);
      v58 = *(a2 + 2);
      v59 = *(a2 + 3);
      v60 = *(a2 + 4);
      v61 = *(a2 + 40);
      outlined copy of AnyShareConfiguration.Storage(v57, v58, v59, v60, v61);
      v62 = *(a1 + 8);
      v63 = *(a1 + 16);
      v64 = *(a1 + 24);
      v65 = *(a1 + 32);
      *(a1 + 8) = v57;
      *(a1 + 16) = v58;
      *(a1 + 24) = v59;
      *(a1 + 32) = v60;
      v66 = *(a1 + 40);
      *(a1 + 40) = v61;
      outlined consume of AnyShareConfiguration.Storage(v62, v63, v64, v65, v66);
      v67 = *(a2 + 9);
      if (*(a1 + 72))
      {
        if (v67)
        {
          v68 = *(a2 + 6);
          v69 = *(a2 + 7);
          v70 = *(a2 + 64);
          outlined copy of Text.Storage(v68, v69, v70);
          v71 = *(a1 + 48);
          v72 = *(a1 + 56);
          v73 = *(a1 + 64);
          *(a1 + 48) = v68;
          *(a1 + 56) = v69;
          *(a1 + 64) = v70;
          outlined consume of Text.Storage(v71, v72, v73);
          *(a1 + 72) = *(a2 + 9);
        }

        else
        {
          outlined destroy of Text(a1 + 48);
          v81 = a2[4];
          *(a1 + 48) = a2[3];
          *(a1 + 64) = v81;
        }
      }

      else if (v67)
      {
        v78 = *(a2 + 6);
        v79 = *(a2 + 7);
        v80 = *(a2 + 64);
        outlined copy of Text.Storage(v78, v79, v80);
        *(a1 + 48) = v78;
        *(a1 + 56) = v79;
        *(a1 + 64) = v80;
        *(a1 + 72) = *(a2 + 9);
      }

      else
      {
        v82 = a2[4];
        *(a1 + 48) = a2[3];
        *(a1 + 64) = v82;
      }

      v83 = *(a2 + 13);
      if (*(a1 + 104))
      {
        if (v83)
        {
          v84 = *(a2 + 10);
          v85 = *(a2 + 11);
          v86 = *(a2 + 96);
          outlined copy of Text.Storage(v84, v85, v86);
          v87 = *(a1 + 80);
          v88 = *(a1 + 88);
          v89 = *(a1 + 96);
          *(a1 + 80) = v84;
          *(a1 + 88) = v85;
          *(a1 + 96) = v86;
          outlined consume of Text.Storage(v87, v88, v89);
          *(a1 + 104) = *(a2 + 13);
        }

        else
        {
          outlined destroy of Text(a1 + 80);
          v91 = a2[6];
          *(a1 + 80) = a2[5];
          *(a1 + 96) = v91;
        }

LABEL_38:
        v76 = *v6;
        if (*v4)
        {
          if (v76)
          {
            v92 = *(a2 + 15);
            *(a1 + 112) = v76;
            *(a1 + 120) = v92;

            goto LABEL_45;
          }
        }

        else if (v76)
        {
          goto LABEL_42;
        }

LABEL_44:
        *v4 = *v6;
        goto LABEL_45;
      }

      if (v83)
      {
        goto LABEL_18;
      }
    }

    v90 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v90;
    goto LABEL_38;
  }

  if (v5 != 1)
  {
    if (*(a2 + 9) == 1)
    {
      v19 = *a2;
      v20 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v20;
      *a1 = v19;
      v21 = a2[3];
      v22 = a2[4];
      v23 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v23;
      *(a1 + 48) = v21;
      *(a1 + 64) = v22;
      goto LABEL_24;
    }

    *a1 = *a2;
    v30 = *(a2 + 1);
    v31 = *(a2 + 2);
    v32 = *(a2 + 3);
    v33 = *(a2 + 4);
    v34 = *(a2 + 40);
    outlined copy of AnyShareConfiguration.Storage(v30, v31, v32, v33, v34);
    *(a1 + 8) = v30;
    *(a1 + 16) = v31;
    *(a1 + 24) = v32;
    *(a1 + 32) = v33;
    *(a1 + 40) = v34;
    if (*(a2 + 9))
    {
      v35 = *(a2 + 6);
      v36 = *(a2 + 7);
      v37 = *(a2 + 64);
      outlined copy of Text.Storage(v35, v36, v37);
      *(a1 + 48) = v35;
      *(a1 + 56) = v36;
      *(a1 + 64) = v37;
      *(a1 + 72) = *(a2 + 9);

      if (*(a2 + 13))
      {
LABEL_13:
        v38 = *(a2 + 10);
        v39 = *(a2 + 11);
        v40 = *(a2 + 96);
        outlined copy of Text.Storage(v38, v39, v40);
        *(a1 + 80) = v38;
        *(a1 + 88) = v39;
        *(a1 + 96) = v40;
        *(a1 + 104) = *(a2 + 13);

        goto LABEL_24;
      }
    }

    else
    {
      v74 = a2[4];
      *(a1 + 48) = a2[3];
      *(a1 + 64) = v74;
      if (*(a2 + 13))
      {
        goto LABEL_13;
      }
    }

    v75 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v75;
LABEL_24:
    v76 = *v6;
    if (!*v6)
    {
      goto LABEL_44;
    }

LABEL_42:
    v93 = *(a2 + 15);
    *(a1 + 112) = v76;
    *(a1 + 120) = v93;

    goto LABEL_45;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v9;
  *a1 = v7;
  *(a1 + 16) = v8;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v12;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
LABEL_45:
  *(a1 + 128) = *(a2 + 16);

  return a1;
}

void *assignWithCopy for List(void *__dst, void *__src, uint64_t a3)
{
  v3 = a3;
  v4 = __src;
  v67 = *(a3 + 16);
  v6 = *(v67 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = ~(v9 | 7);
  v70 = (v9 + 23) & v11;
  v12 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 >= 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      *__dst = *__src;

      *v12 = *v13;

      v15 = ((v12 + v10 + 8) & v11);
      v16 = ((v13 + v10 + 8) & v11);
      if (v7)
      {
        v17 = v8;
      }

      else
      {
        v17 = v8 + 1;
      }

      if (v17 <= v8)
      {
        v18 = v8;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= 8)
      {
        v19 = 8;
      }

      else
      {
        v19 = v18;
      }

      if (v15 == v16)
      {
        goto LABEL_132;
      }

      v20 = v15[v19];
      v21 = v20 - 3;
      if (v20 < 3)
      {
        v23 = v67;
        goto LABEL_104;
      }

      if (v19 <= 3)
      {
        v22 = v19;
      }

      else
      {
        v22 = 4;
      }

      v23 = v67;
      if (v22 <= 1)
      {
        if (!v22)
        {
          goto LABEL_104;
        }

        v24 = *v15;
      }

      else if (v22 == 2)
      {
        v24 = *v15;
      }

      else if (v22 == 3)
      {
        v24 = *v15 | (v15[2] << 16);
      }

      else
      {
        v24 = *v15;
      }

      v46 = (v24 | (v21 << (8 * v19))) + 3;
      v20 = v24 + 3;
      if (v19 < 4)
      {
        v20 = v46;
      }

LABEL_104:
      if (v20 != 2)
      {
        if (v20 != 1)
        {

LABEL_109:
          v47 = v16[v19];
          v48 = v47 - 3;
          if (v47 < 3)
          {
            goto LABEL_123;
          }

          if (v19 <= 3)
          {
            v49 = v19;
          }

          else
          {
            v49 = 4;
          }

          if (v49 <= 1)
          {
            if (!v49)
            {
              goto LABEL_123;
            }

            v50 = *v16;
          }

          else if (v49 == 2)
          {
            v50 = *v16;
          }

          else if (v49 == 3)
          {
            v50 = *v16 | (v16[2] << 16);
          }

          else
          {
            v50 = *v16;
          }

          v51 = (v50 | (v48 << (8 * v19))) + 3;
          v47 = v50 + 3;
          if (v19 < 4)
          {
            v47 = v51;
          }

LABEL_123:
          if (v47 == 2)
          {
            (*(v6 + 16))(v15, v16, v23);
            v52 = 2;
          }

          else
          {
            if (v47 != 1)
            {
              *v15 = *v16;
              v15[v19] = 0;

LABEL_132:
              v3 = a3;
              v39 = v70;
              goto LABEL_133;
            }

            if ((*(v6 + 48))(v16, 1, v23))
            {
              memcpy(v15, v16, v17);
            }

            else
            {
              (*(v6 + 16))(v15, v16, v23);
              (*(v6 + 56))(v15, 0, 1, v23);
            }

            v52 = 1;
          }

          v15[v19] = v52;
          goto LABEL_132;
        }

        if ((*(v6 + 48))(v15, 1, v23))
        {
          goto LABEL_109;
        }
      }

      (*(v6 + 8))(v15, v23);
      goto LABEL_109;
    }

    v34 = ((v12 + v10 + 8) & v11);
    if (v7)
    {
      v35 = v8;
    }

    else
    {
      v35 = v8 + 1;
    }

    if (v35 <= v8)
    {
      v35 = v8;
    }

    if (v35 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v35;
    }

    v36 = *(v34 + v19);
    v37 = v36 - 3;
    if (v36 < 3)
    {
      v39 = v70;
    }

    else
    {
      if (v19 <= 3)
      {
        v38 = v19;
      }

      else
      {
        v38 = 4;
      }

      v39 = v70;
      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v40 = *v34;
        }

        else if (v38 == 3)
        {
          v40 = *((v12 + v10 + 8) & v11) | (*(((v12 + v10 + 8) & v11) + 2) << 16);
        }

        else
        {
          v40 = *v34;
        }

LABEL_88:
        v45 = (v40 | (v37 << (8 * v19))) + 3;
        v36 = v40 + 3;
        if (v19 < 4)
        {
          v36 = v45;
        }

        goto LABEL_90;
      }

      if (v38)
      {
        v40 = *v34;
        goto LABEL_88;
      }
    }

LABEL_90:
    if (v36 == 2)
    {
      (*(v6 + 8))(v34, v67);
    }

    else if (v36 == 1)
    {
      if (!(*(v6 + 48))(v34, 1, v67))
      {
        (*(v6 + 8))(v34, v67);
      }
    }

    else
    {
    }

    memcpy(__dst, v4, v19 + v39 + 1);
    v3 = a3;
    goto LABEL_133;
  }

  if (v14 >= 0xFFFFFFFF)
  {
    *__dst = *__src;
    *v12 = *v13;
    v26 = v10 + 8;
    v27 = ((v12 + v10 + 8) & v11);
    v28 = ((v13 + v26) & v11);
    if (v7)
    {
      v29 = v8;
    }

    else
    {
      v29 = v8 + 1;
    }

    if (v29 <= v8)
    {
      v30 = v8;
    }

    else
    {
      v30 = v29;
    }

    if (v30 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v30;
    }

    v31 = v28[v19];

    if (v31 < 3)
    {
      v4 = __src;
      v3 = a3;
      goto LABEL_78;
    }

    if (v19 <= 3)
    {
      v32 = v19;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      v4 = __src;
      v3 = a3;
      if (!v32)
      {
        goto LABEL_78;
      }

      v33 = *v28;
    }

    else
    {
      if (v32 == 2)
      {
        v33 = *v28;
      }

      else if (v32 == 3)
      {
        v33 = *v28 | (v28[2] << 16);
      }

      else
      {
        v33 = *v28;
      }

      v4 = __src;
      v3 = a3;
    }

    v42 = (v33 | ((v31 - 3) << (8 * v19))) + 3;
    v43 = v33 + 3;
    if (v19 >= 4)
    {
      v31 = v43;
    }

    else
    {
      v31 = v42;
    }

LABEL_78:
    if (v31 == 2)
    {
      (*(v6 + 16))(v27, v28, v67);
      v44 = 2;
    }

    else
    {
      if (v31 != 1)
      {
        *v27 = *v28;
        *(v27 + v19) = 0;

        v39 = v70;
        goto LABEL_133;
      }

      if ((*(v6 + 48))(v28, 1, v67))
      {
        memcpy(v27, v28, v29);
      }

      else
      {
        (*(v6 + 16))(v27, v28, v67);
        (*(v6 + 56))(v27, 0, 1, v67);
      }

      v44 = 1;
    }

    *(v27 + v19) = v44;
    v39 = v70;
    goto LABEL_133;
  }

  if (v7)
  {
    v41 = *(*(v67 - 8) + 64);
  }

  else
  {
    v41 = v8 + 1;
  }

  if (v41 <= v8)
  {
    v41 = *(*(v67 - 8) + 64);
  }

  if (v41 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v41;
  }

  v39 = v70;
  memcpy(__dst, __src, v19 + v70 + 1);
LABEL_133:
  v53 = *(*(v3 + 24) - 8);
  v54 = v53 + 24;
  v55 = *(v53 + 80);
  v56 = v19 + v39 + v55 + 1;
  v57 = (__dst + v56) & ~v55;
  v58 = (v4 + v56) & ~v55;
  (*(v53 + 24))(v57, v58);
  v59 = *(v54 + 40) + 7;
  v60 = ((v59 + v57) & 0xFFFFFFFFFFFFFFF8);
  v61 = ((v59 + v58) & 0xFFFFFFFFFFFFFFF8);
  *v60 = *v61;
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = *v63;
  v65 = *(v63 + 8);
  LOBYTE(v54) = *(v63 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  *v62 = v64;
  *(v62 + 8) = v65;
  *(v62 + 16) = v54;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  return __dst;
}