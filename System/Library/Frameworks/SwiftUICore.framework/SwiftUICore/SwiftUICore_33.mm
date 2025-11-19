uint64_t ForEachList.edit(forID:since:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a1[1];
  v4 = *a2;
  v7[0] = *a1;
  v7[1] = v3;
  v6 = v4;
  return ForEachState.edit(forID:since:)(v7, &v6, a3);
}

uint64_t ForEachState.edit(forID:since:)@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v48 = a3;
  v7 = *v3;
  v8 = *(*v3 + 88);
  v9 = type metadata accessor for Optional();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v40 - v14;
  v15 = *a1;
  v46 = a1[1];
  v47 = v15;
  v45 = *(a1 + 1);
  v43 = *a2;
  v16 = v3 + *(v7 + 160);
  swift_beginAccess();
  v17 = *(v7 + 80);
  v42 = v7;
  v18 = *(v7 + 96);
  v19 = *(v7 + 112);
  *&v55 = v17;
  *(&v55 + 1) = v8;
  v49 = v18;
  v56 = v18;
  v57 = v19;
  v20 = type metadata accessor for ForEach();
  result = (*(*(v20 - 8) + 48))(v16, 1, v20);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v22 = *(v16 + *(v20 + 64));
  *&v55 = v17;
  *(&v55 + 1) = v8;
  v56 = v49;
  v57 = v19;
  result = type metadata accessor for ForEach.IDGenerator();
  if (v22)
  {
    *&v55 = __PAIR64__(v46, v47);
    *(&v55 + 1) = v45;
    if ((*(v4 + 172) & 1) == 0)
    {
      _ViewList_ID.explicitID<A>(owner:)(*(v4 + 42), v8, v19, v11);
      v23 = v12;
      if ((*(v12 + 48))(v11, 1, v8) == 1)
      {
        result = (*(v41 + 8))(v11, v9);
        goto LABEL_17;
      }

      v24 = v44;
      (*(v12 + 32))(v44, v11, v8);
      v25 = *v4;
      v26 = v43;
      v27 = v42;
      if (v43 >= *(v4 + *(*v4 + 216)))
      {
        swift_beginAccess();
        v28 = *(v27 + 120);
        *&v55 = v17;
        *(&v55 + 1) = v8;
        v56 = v49;
        v57 = v19;
        v58 = v28;
        v29 = type metadata accessor for ForEachState.LazyEdits();
        ForEachState.LazyEdits.edit(for:)(v24, v29, v51);
        swift_endAccess();
        v30 = v51[0];
        if (LOBYTE(v51[0]) != 2)
        {
          result = (*(v23 + 8))(v24, v8);
          *v48 = v30;
          return result;
        }

        v25 = *v4;
      }

      v31 = *(v25 + 200);
      swift_beginAccess();
      v32 = *(v4 + v31);
      v33 = *(v27 + 120);
      *&v34 = v17;
      *(&v34 + 1) = v8;
      v55 = v34;
      v56 = v49;
      v57 = v19;
      v58 = v33;
      v35 = type metadata accessor for ForEachState.Item();
      MEMORY[0x193ABE750](v51, v24, v32, v8, v35, v19);
      v36 = v51[0];
      if (!v51[0])
      {
        swift_endAccess();
        result = (*(v23 + 8))(v24, v8);
        goto LABEL_17;
      }

      swift_endAccess();
      if (*(v36 + *(*v36 + 216)) != *(v4 + *(*v4 + 240)))
      {
        (*(v23 + 8))(v24, v8);

        goto LABEL_17;
      }

      outlined init with copy of _ViewListOutputs.Views(v36 + *(*v36 + 176), &v55);
      if ((v58 & 1) == 0)
      {

        (*(v23 + 8))(v24, v8);
        *v48 = 2;
        return outlined destroy of _ViewListOutputs.Views(&v55);
      }

      if (*(v4 + 172) != 1)
      {
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
        InputValue = AGGraphGetInputValue();
        outlined init with copy of AnyTrackedValue(InputValue, v52);
        v38 = v53;
        v39 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        v51[0] = __PAIR64__(v46, v47);
        v51[1] = v45;
        v50 = v26;
        (*(v39 + 72))(v51, &v50, v38, v39);

        (*(v23 + 8))(v24, v8);
        return __swift_destroy_boxed_opaque_existential_1(v52);
      }

LABEL_22:
      __break(1u);
      return result;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  *v48 = 2;
  return result;
}

void _ViewList_ID.explicitID<A>(owner:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v18 = a4;
  v19 = type metadata accessor for Optional();
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v10 = &v18 - v9;
  v11 = *(v4 + 8);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v7 + 8);
    v15 = (v11 + 48);
    while (v13 < *(v11 + 16))
    {
      if (*v15 == a1)
      {
        v21 = *(v15 - 2);

        AnyHashable2.as<A>(type:)();

        v16 = *(a2 - 8);
        if ((*(v16 + 48))(v10, 1, a2) != 1)
        {
          v17 = v18;
          (*(v16 + 32))(v18, v10, a2);
          (*(v16 + 56))(v17, 0, 1, a2);
          return;
        }

        (*v14)(v10, v19);
      }

      ++v13;
      v15 += 6;
      if (v12 == v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    (*(*(a2 - 8) + 56))(v18, 1, 1, a2, v8);
  }
}

uint64_t _AnyHashableBox.as<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*v3 + 136);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v13 - v10, v3 + *(v8 + 152), v6, v7);
  v11 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
}

uint64_t ForEachState.LazyEdits.finalized()(_OWORD *a1)
{
  v2 = v1;
  v4 = a1[2];
  v18[0] = a1[1];
  v18[1] = v4;
  v18[2] = a1[3];
  v5 = type metadata accessor for ForEachState.EditsBuilder();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 32))(v12, v2, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    v15 = v12[1];
  }

  else
  {
    (*(v6 + 32))(v8, v12, v5);
    v14 = ForEachState.EditsBuilder.finalize()(v5);
    v15 = v16;
    (*(v6 + 8))(v8, v5);
  }

  *v2 = v14;
  v2[1] = v15;
  swift_storeEnumTagMultiPayload();

  return v14;
}

uint64_t ForEachState.LazyEdits.edit(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = ForEachState.LazyEdits.finalized()(a2);
  v8 = v7;
  v9 = *(a2 + 24);
  v10 = *(a2 + 48);
  if (MEMORY[0x193ABF5D0](a1, v6, v9, v10))
  {
    v11 = 1;
  }

  else if (MEMORY[0x193ABF5D0](a1, v8, v9, v10))
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  *a3 = v11;
}

uint64_t LayoutProxy.lengthThatFits(_:in:)(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  if (*(v2 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v9 = *InputValue;
  v10 = one-time initialization token for lockAssertionsAreEnabled;

  if (v10 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v12 = v4;
    v13 = v5;
    v14 = v6;
    v15 = v7;
    (*(*v9 + 128))(&v12, a2 & 1);
  }

  return result;
}

uint64_t LazyViewPhase.value.getter@<X0>(unsigned int *a1@<X8>)
{
  v2 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  v4 = *Value + (v2 & 0xFFFFFFFE);
  v5 = *Value | v2;
  v6 = v4 + 2 * *AGGraphGetValue();
  result = AGGraphGetValue();
  if (*(result + 4) == 2)
  {
    v8 = v6 | 1;
  }

  else
  {
    v8 = v6 & 0xFFFFFFFE | v5 & 1;
  }

  *a1 = v8;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollableKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE010ScrollableV033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static _GraphInputs.ScrollableKey.defaultValue;
  }

  return *v3;
}

void type metadata accessor for [ScrollableCollection](uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for ScrollablePreferenceKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ContentScrollPositionKey)
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

uint64_t static ScrapeableAttachmentViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v5 = *(a2 + 16);
  v38 = *(a2 + 32);
  v39 = v4;
  v6 = *(a2 + 48);
  v40 = *(a2 + 64);
  v7 = *(a2 + 16);
  v37[0] = *a2;
  v37[1] = v7;
  v33 = v38;
  v34 = v6;
  v35 = *(a2 + 64);
  v41 = *(a2 + 80);
  v8 = *&v37[0];
  v36 = *(a2 + 80);
  v31 = v37[0];
  v32 = v5;
  if ((BYTE4(v38) & 0x20) != 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v34) & 1) != 0 && (WORD2(v38) & 0x2000) == 0)
  {
    outlined init with copy of _ViewInputs(v37, &v25);
    v9 = AGMakeUniqueID();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v11 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v8, v25);
    if (v11)
    {
      v12 = *(v11 + 72);
    }

    else
    {
      v12 = 0;
    }

    *&v25 = __PAIR64__(v40, OffsetAttribute2);
    *(&v25 + 1) = __PAIR64__(HIDWORD(v39), DWORD2(v40));
    *&v26 = __PAIR64__(v12, v9);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ScrapeableAttachmentViewModifier.Attachment and conformance ScrapeableAttachmentViewModifier.Attachment();
    Attribute.init<A>(body:value:flags:update:)();
    AGGraphGetFlags();
    AGGraphSetFlags();
    _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(&v31, v9);
  }

  else
  {
    outlined init with copy of _ViewInputs(v37, &v25);
  }

  v21[2] = v33;
  v21[3] = v34;
  v21[4] = v35;
  v22 = v36;
  v21[0] = v31;
  v21[1] = v32;
  v17 = v33;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  v15 = v31;
  v16 = v32;
  v13 = outlined init with copy of _ViewInputs(v21, &v25);
  a3(v13, &v15);
  v23[2] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v24 = v20;
  v23[0] = v15;
  v23[1] = v16;
  outlined destroy of _ViewInputs(v23);
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  return outlined destroy of _ViewInputs(&v25);
}

uint64_t assignWithCopy for _OverlayStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *(*(v5 + 40) + a1) = *(*(v5 + 40) + a2);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ResolvedIDs(uint64_t result, int a2, int a3)
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

void type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Rectangle, ForegroundStyle>);
    }
  }
}

uint64_t getEnumTagSinglePayload for ResolvedIDs(uint64_t *a1, int a2)
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

unint64_t lazy protocol witness table accessor for type StaticLayoutComputer<_ZStackLayout> and conformance StaticLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type StaticLayoutComputer<_ZStackLayout> and conformance StaticLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<_ZStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for StaticLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticLayoutComputer<_ZStackLayout> and conformance StaticLayoutComputer<A>);
  }

  return result;
}

uint64_t one-time initialization function for bottomLeading()
{
  if (one-time initialization token for leading != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.leading;
  if (one-time initialization token for bottom != -1)
  {
    result = swift_once();
  }

  static Alignment.bottomLeading = v0;
  unk_1ED521B78 = static VerticalAlignment.bottom;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _AlignmentWritingModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void storeEnumTagSinglePayload for ZStack(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
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

  else if (v12)
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
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 16] & ~v8;

  v18(v19);
}

unint64_t StackLayout.UnmanagedImplementation.spacing()@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (*(*(a1 + 88) + 16))
  {
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
LABEL_27:
      swift_once();
    }
  }

  v18 = result;
  v5 = *(*(a1 + 88) + 16);
  if (v5)
  {
    v15 = a2;
    v6 = 0;
    v7 = *MEMORY[0x1E698D3F8];
    v8 = 32;
    while (1)
    {
      v16[0] = *(a1 + 97);
      AbsoluteEdge.Set.init(_:layoutDirection:)(v16, &v17);
      v9 = *(a1 + 88);
      v10 = *(v9 + 16);
      if (*(a1 + 96))
      {
        if (v6 >= v10)
        {
          goto LABEL_26;
        }

        v11 = (v9 + v8);
      }

      else
      {
        if (v6 >= v10)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v11 = (v9 + 8 * v6 + 32);
      }

      if (*v11 == v7)
      {
        InputValue = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          InputValue = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        InputValue = AGGraphGetInputValue();
      }

      v13 = *InputValue;
      v14 = one-time initialization token for lockAssertionsAreEnabled;

      if (v14 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      ++v6;
      (*(*v13 + 112))(v16);

      a2 = &v18;
      Spacing.incorporate(_:of:)(&v17, v16);

      v8 += 12;
      if (v5 == v6)
      {
        result = v18;
        a2 = v15;
        goto LABEL_24;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_24:
    *a2 = result;
  }

  return result;
}

_BYTE *Spacing.incorporate(_:of:)(_BYTE *result, uint64_t a2)
{
  v3 = *result;
  if (*result)
  {
    v4 = v2;
    v5 = *a2;
    v6 = *a2 + 64;
    v7 = 1 << *(*a2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(*a2 + 64);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (v9)
    {
LABEL_10:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (v11 << 6);
      v16 = v5[6] + 16 * v15;
      v17 = *(v16 + 8);
      if (v17 - 9 < 0xEF || (v17 & 0x80) != 0 || v17 > 7 || ((1 << v17) & ~v3) == 0)
      {
        v28 = *v16;
        v18 = v5[7] + 40 * v15;
        v26 = *(v18 + 16);
        v27 = *v18;
        v25 = *(v18 + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
        }

        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v21 = v20 + 1;
        }

        *(v12 + 16) = v21;
        v22 = v12 + 56 * v20;
        *(v22 + 32) = v28;
        *(v22 + 40) = v17;
        *(v22 + 48) = v27;
        *(v22 + 64) = v26;
        *(v22 + 80) = v25;
      }
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v23 = specialized _arrayForceCast<A, B>(_:)(v12);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *v4;
        *v4 = 0x8000000000000000;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v23, isUniquelyReferenced_nonNull_native, specialized max<A>(_:_:));

        *v4 = v29;
        return result;
      }

      v9 = *(v6 + 8 * v13);
      ++v11;
      if (v9)
      {
        v11 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(key: Spacing.Key, value: Spacing.Value)>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<DiffResult.Move>, &type metadata for DiffResult.Move, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<UInt32>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Layout.Line>, &type metadata for Text.Layout.Line);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Edge>, &type metadata for Edge);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextVariantsStorage.Variant>, &type metadata for TextVariantsStorage.Variant);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ForEachConstantID>, &type metadata for ForEachConstantID);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(index: Int32, implicitID: Int32)>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<TypedCanonicalViewID<Nil>>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityEnabledTechnology>, &type metadata for AccessibilityEnabledTechnology);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int8>, MEMORY[0x1E69E7230]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<_NSRange>, type metadata accessor for _NSRange, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassEffectContainerTintConfiguration.Element>, &type metadata for GlassEffectContainerTintConfiguration.Element);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<MaterialEffectContainerTintConfiguration.Element>, &type metadata for MaterialEffectContainerTintConfiguration.Element);
}

void type metadata accessor for _ContiguousArrayStorage<(key: Spacing.Key, value: Spacing.Value)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(key: Spacing.Key, value: Spacing.Value)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (key: Spacing.Key, value: Spacing.Value));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(key: Spacing.Key, value: Spacing.Value)>);
    }
  }
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v16;
    type metadata accessor for (key: Spacing.Key, value: Spacing.Value)();
    type metadata accessor for (Spacing.Key, Spacing.Value)();
    v4 = a1 + 40;
    do
    {
      swift_dynamicCast();
      v5 = v13;
      v6 = v14;
      v8 = *(v16 + 16);
      v7 = *(v16 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v14;
        v5 = v13;
      }

      *(v16 + 16) = v8 + 1;
      v9 = v16 + 56 * v8;
      *(v9 + 32) = v11;
      v4 += 56;
      *(v9 + 40) = v12;
      *(v9 + 48) = v5;
      *(v9 + 64) = v6;
      *(v9 + 80) = v15;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    type metadata accessor for (AbstractHomogeneousCollection, Int)();
    type metadata accessor for (key: NSAttributedStringKey, value: Any)(0, &lazy cache variable for type metadata for (AbstractHomogeneousCollection, precedingElementCount: Int), type metadata accessor for AbstractHomogeneousCollection);
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      v4 += 16;
      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void (*a3)(_OWORD *__return_ptr, id *, void *))
{
  v38 = *(a1 + 16);
  if (!v38)
  {
LABEL_18:

    return;
  }

  v5 = 0;
  v6 = 0;
  v37 = a1;
  while (1)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_25;
    }

    v7 = a1 + v5;
    v8 = *(a1 + v5 + 80);
    if (v8 == 255)
    {
      goto LABEL_18;
    }

    v41 = v6;
    v42 = v5;
    v9 = *(v7 + 40);
    v10 = *(v7 + 48);
    v11 = *(v7 + 56);
    v13 = *(v7 + 64);
    v12 = *(v7 + 72);
    v14 = *(v7 + 32);
    v50 = v14;
    v51 = v9;
    v39 = v10;
    v40 = v12;
    v48[0] = v10;
    v48[1] = v11;
    v48[2] = v13;
    v48[3] = v12;
    v49 = v8;
    v15 = *v52;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v9);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_22;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v21)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v29 = *v52;
    v29[(v17 >> 6) + 8] |= 1 << v17;
    v30 = v29[6] + 16 * v17;
    *v30 = v14;
    *(v30 + 8) = v9;
    v31 = v29[7] + 40 * v17;
    *v31 = v39;
    *(v31 + 8) = v11;
    *(v31 + 16) = v13;
    *(v31 + 24) = v40;
    *(v31 + 32) = v8;
    v32 = v29[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_23;
    }

    v29[2] = v34;
LABEL_3:
    a1 = v37;
    v6 = v41 + 1;
    v5 = v42 + 56;
    a2 = 1;
    if (v38 == v41 + 1)
    {
      goto LABEL_18;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a2 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v9);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_24;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v24 = *v52;
  v25 = *(*v52 + 56) + 40 * v17;
  v26 = *(v25 + 32);
  *v43 = *v25;
  v44 = *(v25 + 16);
  v45 = v26;
  a3(v46, v43, v48);
  if (!v3)
  {
    v27 = v24[7] + 40 * v17;
    v28 = v47;
    *v27 = v46[0];
    *(v27 + 16) = v46[1];
    *(v27 + 32) = v28;
    goto LABEL_3;
  }

  v43[0] = v3;
  v35 = v3;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_25:
  *&v46[0] = 0;
  *(&v46[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD744D0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TypesettingLanguage.resolve(with:locale:)(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36[1] = a2;
  v6 = type metadata accessor for Locale.Language();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  type metadata accessor for Locale.LanguageCode?(0, &lazy cache variable for type metadata for Locale.LanguageCode?, MEMORY[0x1E6969610], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v36 - v14;
  v16 = type metadata accessor for TypesettingLanguage.Storage(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TypesettingLanguage.Storage(v3, v18, type metadata accessor for TypesettingLanguage.Storage);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  v20 = v19;
  v21 = (*(*(v19 - 8) + 48))(v18, 2, v19);
  if (!v21)
  {
    v26 = v18[*(v20 + 48)];
    v27 = v6;
    (*(v7 + 32))(v9, v18, v6);
    v28 = Locale.Language.maximalIdentifier.getter();
    v30 = v29;
    (*(v7 + 8))(v9, v27);
    *a3 = v28;
    *(a3 + 8) = v30;
    *(a3 + 16) = v26;
    *(a3 + 17) = 0;
    return;
  }

  if (v21 == 1)
  {
    goto LABEL_12;
  }

  if (a1)
  {
    v22 = a1();
    v23 = MEMORY[0x193ABEC20](v22);

    v24 = CTFontCopyTallestTextStyleLanguageForString();

    if (v24)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v37 = 0;
        v38 = 0;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        v25 = v38;
        if (v38)
        {
          *a3 = v37;
          *(a3 + 8) = v25;
          *(a3 + 16) = 256;
          return;
        }
      }

      else
      {
      }
    }
  }

  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v7 + 8))(v12, v6);
  v31 = type metadata accessor for Locale.LanguageCode();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v15, 1, v31) == 1)
  {
    outlined destroy of Locale.LanguageCode?(v15);
LABEL_12:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 512;
    return;
  }

  v33 = MEMORY[0x193ABDA90]();
  v35 = v34;
  (*(v32 + 8))(v15, v31);
  *a3 = v33;
  *(a3 + 8) = v35;
  *(a3 + 16) = 1;
}

void type metadata accessor for Locale.LanguageCode?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation6LocaleV12LanguageCodeVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined consume of TypesettingLanguage.Resolved(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t outlined copy of TypesettingLanguage.Resolved(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

void updateContent(layer:color:radius:style:)(void *a1, uint64_t *a2, unsigned __int8 *a3, double a4)
{
  v7 = *a3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v8 = specialized ObjectCache.subscript.getter(a2);
  [a1 setBackgroundColor_];

  [a1 setBorderColor_];
  [a1 setContents_];
  [a1 setCornerRadius_];
  v9 = MEMORY[0x1E69796E8];
  if (!v7)
  {
    v9 = MEMORY[0x1E69796E0];
  }

  v10 = *v9;
  [a1 setCornerCurve_];
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

_BYTE *assignWithCopy for TypesettingLanguage(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 2, v4);
  v9 = v7(a2, 2, v5);
  if (v8)
  {
    if (!v9)
    {
      v10 = type metadata accessor for Locale.Language();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      a1[*(v5 + 48)] = a2[*(v5 + 48)];
      (*(v6 + 56))(a1, 0, 2, v5);
      return a1;
    }
  }

  else
  {
    if (!v9)
    {
      v13 = type metadata accessor for Locale.Language();
      (*(*(v13 - 8) + 24))(a1, a2, v13);
      a1[*(v5 + 48)] = a2[*(v5 + 48)];
      return a1;
    }

    outlined destroy of (CFStringRef, String)(a1, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  }

  v11 = *(*(type metadata accessor for TypesettingLanguage.Storage(0) - 8) + 64);

  return memcpy(a1, a2, v11);
}

void closure #1 in Text.Resolved.append(_:in:with:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = a5;
  outlined init with copy of Text.Style(a5, v18, type metadata accessor for Text.Style);
  v64 = a1;

  Dictionary<>.transferAttributedStringStyles(to:)(v18);
  if (one-time initialization token for kitLink == -1)
  {
    if (!*(a1 + 16))
    {
LABEL_15:
      v26 = a6;
      v62 = 0u;
      v63 = 0u;
      goto LABEL_16;
    }
  }

  else
  {
    swift_once();
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.kitLink);
  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v19, &v62);
  outlined destroy of ParagraphStyleResolutionContext(&v62, type metadata accessor for Any?);
  v21 = MEMORY[0x193ABEC20](0xD000000000000017, 0x800000018DD7BFA0);
  v22 = v21;
  if ((a6 & 0x10) != 0)
  {
    v26 = a6;

    goto LABEL_17;
  }

  if (*(a1 + 16))
  {
    v23 = v21;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    v22 = v23;
    if (v25)
    {
      v26 = a6;
      outlined init with copy of Any(*(a1 + 56) + 32 * v24, &v62);

LABEL_16:
      outlined destroy of ParagraphStyleResolutionContext(&v62, type metadata accessor for Any?);
      goto LABEL_17;
    }
  }

  v27 = v22;
  v62 = 0u;
  v63 = 0u;
  outlined destroy of ParagraphStyleResolutionContext(&v62, type metadata accessor for Any?);
  *&v62 = a7;
  *(&v62 + 1) = a8;
  v28 = EnvironmentValues.tintColor.getter();
  if (!v28)
  {
    v61[0] = a7;
    v61[1] = a8;
    v29 = EnvironmentValues.resolvedTextProvider.getter();
    if (v29)
    {
      v60[0] = a7;
      v60[1] = a8;
      v28 = (*(v30 + 8))(v60, v29, v30);
    }

    else
    {
      _s7SwiftUI22AnyDynamicFontModifierCyAA0E0V06WeightF0VGMaTm_0(0, &lazy cache variable for type metadata for ColorBox<Color.AccentColorProvider>, lazy protocol witness table accessor for type Color.AccentColorProvider and conformance Color.AccentColorProvider, &type metadata for Color.AccentColorProvider, type metadata accessor for ColorBox);
      v28 = swift_allocObject();
    }
  }

  v31 = v28;

  v26 = a6;
  outlined consume of Gradient.ProviderTag(v18[2]);
  v18[2] = v31;
LABEL_17:
  v32 = [a9 attributedSubstringFromRange_];
  v33 = [v32 string];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *&v62 = a7;
  *(&v62 + 1) = a8;
  v37 = String.caseConvertedIfNeeded(_:)(&v62, v34, v36);
  v39 = v38;

  v40 = a8;
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = v39;
  *&v62 = a7;
  *(&v62 + 1) = v40;
  v42 = type metadata accessor for Text.Resolved(0);
  LODWORD(v34) = *(v59 + v42[6]);
  v61[0] = v26;
  v43 = v59;
  v44 = v42[8];

  v56[1] = v44;
  v58 = v18;
  v45 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #1 in closure #1 in NSMutableAttributedString.convertToPlatformStyled(style:environment:includeDefaultAttributes:options:properties:), v41, &v62, v34, v61, v43 + v44);

  v46 = v64;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v62 = v46;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v45, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v62);

  v48 = v62;
  v57 = a7;
  *&v62 = a7;
  *(&v62 + 1) = v40;
  Text.Resolved.append(_:with:in:)(v37, v39, v48, &v62);
  v49 = v42[5];
  v50 = *(v43 + v49);
  if (!v50)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (![v50 isEmptyOrTerminatedByParagraphSeparator])
  {

    goto LABEL_23;
  }

  v51 = *(v43 + v49);
  if (!v51)
  {
    goto LABEL_25;
  }

  v52 = v51;
  v53 = [v52 length];

  v54 = *(v43 + v49);
  if (v54)
  {
    v55 = v54;

    *&v62 = v57;
    *(&v62 + 1) = v40;
    Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v53, v55, &v62);

LABEL_23:
    outlined destroy of ParagraphStyleResolutionContext(v58, type metadata accessor for Text.Style);
    return;
  }

LABEL_26:
  __break(1u);
}

uint64_t Dictionary<>.transferAttributedStringStyles(to:)(unint64_t *a1)
{
  v2 = v1;
  type metadata accessor for AttributedString.LineHeight?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v206 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for AttributedString.LineHeight();
  v6 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v194 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.TextAlignment?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributedString.TextAlignment();
  v204 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v193 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.AdaptiveImageGlyph?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v218 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v192 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for TypesettingLanguage(0);
  MEMORY[0x1EEE9AC00](v208);
  v191 = &v190 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v199 = &v190 - v21;
  v22 = MEMORY[0x193ABEC20](0x2E49557466697753, 0xEC000000746E6F46, v20);
  v23 = *v1;
  v24 = *(*v2 + 16);
  v205 = v22;
  v200 = v16;
  v201 = v15;
  if (v24 && (v25 = v22, v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v27 & 1) != 0) && (outlined init with copy of Any(*(v23 + 56) + 32 * v26, &v235), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v6;
    v29 = v228;
    outlined consume of EffectAnimator<A>.State<A>(*a1);
    *a1 = v29;
    v235 = 0u;
    v236 = 0u;
    specialized Dictionary.subscript.setter(&v235, v25);
  }

  else
  {
    v28 = v6;
  }

  v30 = MEMORY[0x193ABEC20](0xD000000000000017, 0x800000018DD7BFA0);
  v31 = *v2;
  v32 = *(*v2 + 16);
  v203 = v28;
  v215 = v30;
  if (v32)
  {
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
    if (v34)
    {
      outlined init with copy of Any(*(v31 + 56) + 32 * v33, &v235);
      if (swift_dynamicCast())
      {
        v35 = v228;
        outlined consume of Gradient.ProviderTag(a1[2]);
        a1[2] = v35;
        v235 = 0u;
        v236 = 0u;
        specialized Dictionary.subscript.setter(&v235, v215);
      }
    }
  }

  v36 = MEMORY[0x193ABEC20](0xD000000000000017, 0x800000018DD7BFC0);
  v37 = v36;
  v38 = *v2;
  if (*(*v2 + 16))
  {
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v36);
    if (v40)
    {
      outlined init with copy of Any(*(v38 + 56) + 32 * v39, &v235);
      if (swift_dynamicCast())
      {
        v41 = v228;

        a1[3] = v41;
        v235 = 0u;
        v236 = 0u;
        specialized Dictionary.subscript.setter(&v235, v37);
      }
    }
  }

  v42 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD7BFE0);
  v43 = *v2;
  v44 = *(*v2 + 16);
  v214 = v42;
  if (v44)
  {
    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
    if (v46)
    {
      outlined init with copy of Any(*(v43 + 56) + 32 * v45, &v235);
      if (swift_dynamicCast())
      {
        v47 = v228;
        outlined consume of Text.Style.LineStyle(a1[10], a1[11]);
        *(a1 + 5) = v47;
        v235 = 0u;
        v236 = 0u;
        specialized Dictionary.subscript.setter(&v235, v214);
      }
    }
  }

  v48 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD7C000);
  v49 = *v2;
  v50 = *(*v2 + 16);
  v217 = v11;
  v213 = v48;
  if (v50)
  {
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(v48);
    if (v52)
    {
      outlined init with copy of Any(*(v49 + 56) + 32 * v51, &v235);
      if (swift_dynamicCast())
      {
        v53 = v228;
        v54 = a1[11];
        if ((v54 - 1) <= 1)
        {
          v55 = a1[10];

          outlined consume of Text.Style.LineStyle(v55, v54);
          a1[10] = 1;
          a1[11] = v53;
        }

        v235 = 0u;
        v236 = 0u;
        specialized Dictionary.subscript.setter(&v235, v213);
      }
    }
  }

  v56 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD7C020);
  v57 = *v2;
  v58 = *(*v2 + 16);
  v219 = a1;
  v212 = v56;
  if (v58)
  {
    v59 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
    if (v60)
    {
      outlined init with copy of Any(*(v57 + 56) + 32 * v59, &v235);
      if (swift_dynamicCast())
      {
        v61 = v228;
        outlined consume of Text.Style.LineStyle(a1[12], a1[13]);
        *(a1 + 6) = v61;
        v235 = 0u;
        v236 = 0u;
        specialized Dictionary.subscript.setter(&v235, v212);
      }
    }
  }

  v62 = MEMORY[0x193ABEC20](0xD000000000000015, 0x800000018DD7C060);
  v63 = v62;
  v64 = *v2;
  if (*(*v2 + 16))
  {
    v65 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
    if (v66)
    {
      outlined init with copy of Any(*(v64 + 56) + 32 * v65, v242);
      if (swift_dynamicCast())
      {
        v225 = v239;
        v226 = v240;
        v227 = v241;
        v221 = v235;
        v222 = v236;
        v223 = v237;
        v224 = v238;
        v67 = v219;
        v68 = *(v219 + 8);
        v228 = *(v219 + 7);
        v229 = v68;
        v69 = *(v219 + 9);
        v70 = *(v219 + 10);
        v71 = *(v219 + 11);
        v72 = *(v219 + 12);
        v234 = *(v219 + 208);
        v232 = v71;
        v233 = v72;
        v230 = v69;
        v231 = v70;
        outlined destroy of Text.Encapsulation?(&v228);
        v73 = v226;
        *(v67 + 11) = v225;
        *(v67 + 12) = v73;
        *(v67 + 208) = v227;
        v74 = v222;
        *(v67 + 7) = v221;
        *(v67 + 8) = v74;
        v75 = v224;
        *(v67 + 9) = v223;
        *(v67 + 10) = v75;
        memset(v220, 0, sizeof(v220));
        specialized Dictionary.subscript.setter(v220, v63);
      }
    }
  }

  v76 = MEMORY[0x193ABEC20](0x2E49557466697753, 0xEC0000006E72654BLL);
  v77 = *v2;
  v78 = *(*v2 + 16);
  v211 = v76;
  if (v78)
  {
    v79 = specialized __RawDictionaryStorage.find<A>(_:)(v76);
    if (v80)
    {
      outlined init with copy of Any(*(v77 + 56) + 32 * v79, &v235);
      if (swift_dynamicCast())
      {
        v81 = v219;
        v219[6] = v228;
        *(v81 + 56) = 0;
        v235 = 0u;
        v236 = 0u;
        specialized Dictionary.subscript.setter(&v235, v211);
      }
    }
  }

  v82 = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD7C080);
  v83 = *v2;
  v84 = *(*v2 + 16);
  v210 = v82;
  if (v84)
  {
    v85 = specialized __RawDictionaryStorage.find<A>(_:)(v82);
    if (v86)
    {
      outlined init with copy of Any(*(v83 + 56) + 32 * v85, &v235);
      if (swift_dynamicCast())
      {
        v87 = v219;
        v219[8] = v228;
        *(v87 + 72) = 0;
        v235 = 0u;
        v236 = 0u;
        specialized Dictionary.subscript.setter(&v235, v210);
      }
    }
  }

  v88 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD7C0A0);
  v89 = *v2;
  v90 = *(*v2 + 16);
  v198 = v63;
  v209 = v88;
  if (v90 && (v91 = specialized __RawDictionaryStorage.find<A>(_:)(v88), (v92 & 1) != 0))
  {
    outlined init with copy of Any(*(v89 + 56) + 32 * v91, &v235);
    v93 = swift_dynamicCast();
    v94 = v217;
    if (v93)
    {
      v95 = v219;
      v219[4] = v228;
      *(v95 + 40) = 0;
      v235 = 0u;
      v236 = 0u;
      specialized Dictionary.subscript.setter(&v235, v209);
    }
  }

  else
  {
    v94 = v217;
  }

  v96 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD7C0C0);
  v97 = *v2;
  v98 = *(*v2 + 16);
  v202 = v37;
  v216 = v96;
  if (v98)
  {
    v99 = specialized __RawDictionaryStorage.find<A>(_:)(v96);
    if (v100)
    {
      outlined init with copy of Any(*(v97 + 56) + 32 * v99, &v228);
      outlined init with take of Any(&v228, &v235);
      outlined init with copy of Any(&v235, &v228);
      type metadata accessor for CTGlyphInfoRef(0);
      swift_dynamicCast();
      v101 = v221;
      v102 = v219;

      v102[37] = v101;
      v228 = 0u;
      v229 = 0u;
      specialized Dictionary.subscript.setter(&v228, v216);
      __swift_destroy_boxed_opaque_existential_1(&v235);
    }
  }

  v103 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD7C0E0);
  v104 = v103;
  v105 = *v2;
  if (*(*v2 + 16))
  {
    v106 = specialized __RawDictionaryStorage.find<A>(_:)(v103);
    if (v107)
    {
      outlined init with copy of Any(*(v105 + 56) + 32 * v106, &v235);
      if (swift_dynamicCast())
      {
        *(v219 + 320) = v228;
        v235 = 0u;
        v236 = 0u;
        specialized Dictionary.subscript.setter(&v235, v104);
      }
    }
  }

  v108 = MEMORY[0x193ABEC20](0xD000000000000013, 0x800000018DD7C120);
  v109 = v108;
  v110 = *v2;
  if (*(*v2 + 16))
  {
    v111 = specialized __RawDictionaryStorage.find<A>(_:)(v108);
    if (v112)
    {
      outlined init with copy of Any(*(v110 + 56) + 32 * v111, &v235);
      if (swift_dynamicCast())
      {
        *(v219 + 321) = 0;
        v235 = 0u;
        v236 = 0u;
        specialized Dictionary.subscript.setter(&v235, v109);
      }
    }
  }

  v113 = MEMORY[0x193ABEC20](0xD000000000000018, 0x800000018DD7C140);
  v114 = v113;
  v115 = *v2;
  v116 = *(*v2 + 16);
  v197 = v109;
  if (v116)
  {
    v117 = specialized __RawDictionaryStorage.find<A>(_:)(v113);
    if (v118)
    {
      outlined init with copy of Any(*(v115 + 56) + 32 * v117, &v235);
      if (swift_dynamicCast())
      {
        v119 = v228;
        type metadata accessor for Text.Style(0);
        specialized Array.replaceSubrange<A>(_:with:)(0, 0, v119);

        v235 = 0u;
        v236 = 0u;
        specialized Dictionary.subscript.setter(&v235, v114);
      }
    }
  }

  v120 = MEMORY[0x193ABEC20](0xD000000000000015, 0x800000018DD7C160);
  v121 = *v2;
  v122 = *(*v2 + 16);
  v195 = v120;
  if (v122 && (v123 = v120, v124 = specialized __RawDictionaryStorage.find<A>(_:)(v120), (v125 & 1) != 0))
  {
    outlined init with copy of Any(*(v121 + 56) + 32 * v124, &v235);
    type metadata accessor for [AnyFontModifier](0);
    v126 = swift_dynamicCast();
    v127 = v219;
    if (v126)
    {
      specialized Array.append<A>(contentsOf:)(v228);
      v235 = 0u;
      v236 = 0u;
      specialized Dictionary.subscript.setter(&v235, v123);
    }
  }

  else
  {
    v127 = v219;
  }

  v128 = *v2;
  v129 = *(*v2 + 16);
  v196 = v114;
  if (v129)
  {
    v130 = *MEMORY[0x1E696A4A0];
    v131 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696A4A0]);
    if (v132)
    {
      outlined init with copy of Any(*(v128 + 56) + 32 * v131, &v235);
      if (swift_dynamicCast())
      {
        v133 = v228;
        if (v228)
        {
          _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V06ItalicE0V_Ttt0g5();
          MEMORY[0x193ABF170]();
          if (*((v127[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v94 = v217;
          if ((v133 & 2) == 0)
          {
LABEL_70:
            if ((v133 & 4) == 0)
            {
              goto LABEL_71;
            }

            goto LABEL_79;
          }
        }

        else if ((v228 & 2) == 0)
        {
          goto LABEL_70;
        }

        _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V04BoldE0V_Ttt0g5();
        MEMORY[0x193ABF170]();
        if (*((v127[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v94 = v217;
        if ((v133 & 4) == 0)
        {
LABEL_71:
          if ((v133 & 0x20) == 0)
          {
LABEL_85:
            v235 = 0u;
            v236 = 0u;
            specialized Dictionary.subscript.setter(&v235, v130);
            goto LABEL_86;
          }

LABEL_82:
          v190 = v10;
          if (one-time initialization token for single != -1)
          {
            swift_once();
          }

          v134 = *(&static Text.LineStyle.single + 1);
          v135 = static Text.LineStyle.single;
          v136 = v219;
          v137 = v219[10];
          v138 = v219[11];

          outlined consume of Text.Style.LineStyle(v137, v138);
          v136[10] = v135;
          v136[11] = v134;
          v127 = v136;
          v94 = v217;
          v10 = v190;
          goto LABEL_85;
        }

LABEL_79:
        _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V010MonospacedE0V_Ttt0g5();
        MEMORY[0x193ABF170]();
        if (*((v127[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v94 = v217;
        if ((v133 & 0x20) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_82;
      }
    }
  }

LABEL_86:
  v217 = type metadata accessor for Text.Style(0);
  v139 = v217[21];
  v140 = v199;
  outlined init with copy of TypesettingLanguage(v127 + v139, v199, type metadata accessor for TypesettingLanguage);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v141 = __swift_project_value_buffer(v208, static TypesettingLanguage.automatic);
  v142 = specialized static TypesettingLanguage.Storage.== infix(_:_:)(v140, v141);
  outlined destroy of Text.Style(v140, type metadata accessor for TypesettingLanguage);
  v199 = v104;
  if (v142)
  {
    v143 = *v2;
    if (*(*v2 + 16))
    {
      v144 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696A518]);
      if (v145)
      {
        outlined init with copy of Any(*(v143 + 56) + 32 * v144, &v235);
        if (swift_dynamicCast())
        {
          type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
          v147 = v146;
          v148 = *(v146 + 48);
          v149 = v191;
          Locale.Language.init(identifier:)();
          *(v149 + v148) = 0;
          v127 = v219;
          (*(*(v147 - 8) + 56))(v149, 0, 2, v147);
          outlined assign with take of TypesettingLanguage(v149, v127 + v139);
        }
      }
    }
  }

  v150 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD7C180);
  v151 = *v2;
  v152 = *(*v2 + 16);
  v208 = v150;
  if (v152 && (v153 = specialized __RawDictionaryStorage.find<A>(_:)(v150), (v154 & 1) != 0))
  {
    outlined init with copy of Any(*(v151 + 56) + 32 * v153, &v235);
    v155 = v218;
    v156 = v201;
    v157 = swift_dynamicCast();
    v158 = v200;
    v159 = *(v200 + 56);
    v159(v155, v157 ^ 1u, 1, v156);
    if ((*(v158 + 48))(v155, 1, v156) != 1)
    {
      v160 = v192;
      (*(v158 + 32))(v192, v218, v156);
      v161 = v217[23];
      outlined destroy of Text.Style(v219 + v161, type metadata accessor for AttributedString.AdaptiveImageGlyph?);
      (*(v158 + 16))(v219 + v161, v160, v156);
      v162 = v219 + v161;
      v127 = v219;
      v159(v162, 0, 1, v156);
      v235 = 0u;
      v236 = 0u;
      specialized Dictionary.subscript.setter(&v235, v208);
      (*(v158 + 8))(v160, v156);
      goto LABEL_99;
    }
  }

  else
  {
    (*(v200 + 56))(v218, 1, 1, v201);
  }

  outlined destroy of Text.Style(v218, type metadata accessor for AttributedString.AdaptiveImageGlyph?);
LABEL_99:
  v163 = static AttributeScopes.CoreTextAttributes.TextAlignmentAttribute.name.getter();
  v164 = MEMORY[0x193ABEC20](v163);

  specialized Dictionary._Variant.removeValue(forKey:)(&v235);

  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for Any?);
  v165 = swift_dynamicCast();
  v166 = v204;
  v167 = *(v204 + 56);
  v167(v10, v165 ^ 1u, 1, v94);
  v168 = (*(v166 + 48))(v10, 1, v94);
  v169 = v10;
  if (v168 == 1)
  {
    outlined destroy of Text.Style(v10, type metadata accessor for AttributedString.TextAlignment?);
  }

  else
  {
    v170 = *(v166 + 32);
    v171 = v193;
    v170(v193, v169, v94);
    v172 = v217[24];
    outlined destroy of Text.Style(v219 + v172, type metadata accessor for AttributedString.TextAlignment?);
    v170(v219 + v172, v171, v94);
    v127 = v219;
    v167(v219 + v172, 0, 1, v94);
  }

  v173 = v215;
  v174 = v202;
  v176 = v210;
  v175 = v211;
  v177 = static AttributeScopes.FoundationAttributes.WritingDirectionAttribute.name.getter();
  v178 = MEMORY[0x193ABEC20](v177);

  specialized Dictionary._Variant.removeValue(forKey:)(&v235);

  if ((swift_dynamicCast() & 1) != 0 && v228 != 2)
  {
    *(v127 + v217[25]) = v228;
  }

  v179 = static AttributeScopes.CoreTextAttributes.LineHeightAttribute.name.getter();
  v180 = MEMORY[0x193ABEC20](v179);

  specialized Dictionary._Variant.removeValue(forKey:)(&v235);

  v182 = v206;
  v181 = v207;
  v183 = swift_dynamicCast();
  v184 = v203;
  v185 = *(v203 + 56);
  v185(v182, v183 ^ 1u, 1, v181);
  if ((*(v184 + 48))(v182, 1, v181) == 1)
  {
    return outlined destroy of Text.Style(v182, type metadata accessor for AttributedString.LineHeight?);
  }

  v187 = *(v184 + 32);
  v188 = v194;
  v187(v194, v182, v181);
  v189 = v217[26];
  outlined destroy of Text.Style(v127 + v189, type metadata accessor for AttributedString.LineHeight?);
  v187(v127 + v189, v188, v181);
  return v185(v127 + v189, 0, 1, v181);
}

uint64_t outlined init with copy of TypesettingLanguage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Text.Resolved.append(_:in:with:isUniqueSizeVariant:)(void *a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v21 = type metadata accessor for Text.Resolved(0);
  v9 = *(v21 + 20);
  v10 = *(v4 + v9);
  if (v10)
  {
    [v10 length];
  }

  v11 = [a1 length];
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v8;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in Text.Resolved.append(_:in:with:isUniqueSizeVariant:);
  *(v13 + 24) = v12;
  aBlock[4] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_25;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  [v15 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v14}];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (!*(v4 + v9))
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v19 = *(v4 + v9);
      *(v4 + v9) = v18;
    }

    if (a4)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    *(v4 + *(v22 + 32) + 32) |= v20;
  }

  return result;
}

uint64_t sub_18D1EB764()
{

  return swift_deallocObject();
}

uint64_t type metadata completion function for CubicKeyframe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void))
{
  result = a4(319, *(a1 + 16), *(a1 + 24));
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _ResolvedKeyframeTrackContent.Linear()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CombinedKeyframes()
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

uint64_t type metadata completion function for KeyframeTrackContentBuilder.Conditional()
{
  result = type metadata accessor for KeyframeTrackContentBuilder.Conditional.Storage();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for KeyframeTrackContentBuilder.Conditional.Storage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for KeyframeTrack()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CustomModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Font.PlatformFontProvider()
{
  type metadata accessor for CTFontRef(0);
  lazy protocol witness table accessor for type CTFontRef and conformance CTFontRef();
  return _CFObject.hash(into:)();
}

uint64_t protocol witness for FontProvider.resolveDescriptor(in:) in conformance Font.PlatformFontProvider(uint64_t a1)
{
  v2 = *(a1 + 25);
  result = (*(*(a1 + 16) + 72))(*v1);
  v4 = result;
  if (v2 == 1)
  {
    v5 = CTFontDescriptorRef.clearFeatures()();

    return v5;
  }

  return result;
}

uint64_t type metadata completion function for KeyframeAnimator()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ContentOffsetAdjustmentReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _Glass.interaction(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 40);
  if (v3 == 5)
  {
    LOBYTE(v3) = *(v2 + 16);
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v3;
  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = v6;
  outlined copy of _Glass.Variant.Role(v4, v5);
}

uint64_t View.monospacedDigit()(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  View.transformEnvironment<A>(_:transform:)(KeyPath, closure #1 in View.monospacedDigit(), 0, a1);
}

void *closure #1 in View.fontWeight(_:)(void *result, uint64_t a2, char a3)
{
  v3 = result;
  if ((a3 & 1) == 0)
  {
    _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for AnyDynamicFontModifier);
    *(swift_allocObject() + 16) = a2;
    MEMORY[0x193ABF170]();
    if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v4 = *result;
  v25 = *result >> 62;
  v26 = result;
  v5 = *result & 0xFFFFFFFFFFFFFF8;
  if (v25)
  {
    goto LABEL_90;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      if (v25)
      {
        goto LABEL_79;
      }

      v7 = *(v5 + 16);
LABEL_80:
      if (v4 >> 62)
      {
        result = __CocoaSet.count.getter();
        v24 = result;
        if (result >= v7)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(v7, v24);
        }
      }

      else
      {
        v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24 >= v7)
        {
          return specialized Array.replaceSubrange<A>(_:with:)(v7, v24);
        }
      }

      __break(1u);
      goto LABEL_93;
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      if (v7 < *(v5 + 16))
      {

        goto LABEL_11;
      }

      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      result = __CocoaSet.count.getter();
      v6 = result;
      goto LABEL_4;
    }

    MEMORY[0x193AC03C0](v7, v4);
LABEL_11:
    _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for AnyDynamicFontModifier);
    if (swift_dynamicCastClass())
    {
      break;
    }

    type metadata accessor for AnyStaticFontModifier<Font.ItalicModifier>(0, &lazy cache variable for type metadata for AnyStaticFontModifier<Font.BoldModifier>);
    if (swift_dynamicCastClass())
    {
      if (one-time initialization token for v7 != -1)
      {
        swift_once();
      }

      v9 = static Semantics.v7;
      if (one-time initialization token for forced != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_1ED53C51C == 1)
      {
        v10 = dyld_program_sdk_at_least();

        if ((v10 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v11 = static Semantics.forced;

        if (v11 < v9)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_84;
    }
  }

LABEL_29:
  v13 = (v7 + 1);
  if (!__OFADD__(v7, 1))
  {
    if (v25)
    {
      result = __CocoaSet.count.getter();
      if (v13 == result)
      {
        goto LABEL_80;
      }
    }

    else
    {
      result = *(v5 + 16);
      if (v13 == result)
      {
        goto LABEL_80;
      }
    }

    v5 = v7 + 5;
    while (2)
    {
      v14 = v5 - 4;
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](v5 - 4, v4);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_85;
        }

        if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }
      }

      if (swift_dynamicCastClass())
      {

        goto LABEL_70;
      }

      type metadata accessor for AnyStaticFontModifier<Font.ItalicModifier>(0, &lazy cache variable for type metadata for AnyStaticFontModifier<Font.BoldModifier>);
      if (swift_dynamicCastClass())
      {
        if (one-time initialization token for v7 != -1)
        {
          swift_once();
        }

        v15 = static Semantics.v7;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          v16 = dyld_program_sdk_at_least();

          if (v16)
          {
            goto LABEL_48;
          }

LABEL_70:
          v23 = (v5 - 3);
          if (__OFADD__(v14, 1))
          {
            goto LABEL_87;
          }

          if (v4 >> 62)
          {
            result = __CocoaSet.count.getter();
          }

          else
          {
            result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v5;
          if (v23 == result)
          {
            goto LABEL_80;
          }

          continue;
        }

        v19 = static Semantics.forced;

        if (v19 < v15)
        {
          goto LABEL_70;
        }

LABEL_48:
        if (v14 == v7)
        {
LABEL_69:
          v8 = __OFADD__(v7++, 1);
          if (v8)
          {
            goto LABEL_88;
          }

          goto LABEL_70;
        }
      }

      else
      {

        if (v14 == v7)
        {
          goto LABEL_69;
        }
      }

      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x193AC03C0](v7, v4);
      v18 = MEMORY[0x193AC03C0](v5 - 4, v4);
    }

    else
    {
      if (v7 < 0)
      {
        goto LABEL_94;
      }

      v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= v20)
      {
        goto LABEL_95;
      }

      if (v14 >= v20)
      {
        goto LABEL_96;
      }

      v17 = *(v4 + 8 * v7 + 32);
      v18 = *(v4 + 8 * v5);
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      v21 = (v4 >> 62) & 1;
    }

    else
    {
      LODWORD(v21) = 0;
    }

    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

    if ((v4 & 0x8000000000000000) != 0 || v21)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      v22 = v4 & 0xFFFFFFFFFFFFFF8;
      if ((v14 & 0x8000000000000000) != 0)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        result = __CocoaSet.count.getter();
        v7 = result;
        goto LABEL_80;
      }
    }

    else if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_78;
    }

    if (v14 >= *(v22 + 16))
    {
      goto LABEL_89;
    }

    *(v22 + 8 * v5) = v17;

    *v26 = v4;
    goto LABEL_69;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013FontModifiersF033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(*a1);
  if (!v4 || (v5 = v4[9], , v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(a2, v5), result = , (v6 & 1) == 0))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<FontModifiersKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<FontModifiersKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<FontModifiersKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<FontModifiersKey>>);
    }
  }
}

void type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(255, a3, a4, a5, type metadata accessor for OffsetShapeStyle);
    v6 = type metadata accessor for ShapeStyleBox();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void OffsetShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v5;
  v12 = v5 + 1;
  v13 = v5[1];
  v14 = v5[2];
  v15 = *(v5 + 24);
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      MEMORY[0x1EEE9AC00](v5);
      v28 = *(v27 + 24);
      *(&v42 - 4) = v4;
      *(&v42 - 3) = v28;
      *(&v42 - 2) = v2;
      type metadata accessor for OffsetShapeStyle<AnyShapeStyle>();
      ShapeStyle.mapCopiedStyle<A>(in:body:)(a1, partial apply for closure #1 in OffsetShapeStyle._apply(to:), (&v42 - 6), v4, v29);
      return;
    }

    if (v15 != 4)
    {
      if (v14 | v13 | v11)
      {
        (*(v7 + 16))(v10, v2, v4, v8.n128_f64[0]);
        v33 = AnyShapeStyle.init<A>(_:)(v10, v4);
        outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
        *(a1 + 32) = v33;
        v34 = 2;
      }

      else
      {
        outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
        *(a1 + 32) = 0;
        v34 = 4;
      }

      *(a1 + 40) = v34;
      return;
    }

    v21 = *(v2 + *(v6 + 36));
    v22 = __OFADD__(v21, v11);
    v23 = v21 + v11;
    if (v22)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *a1 = v23;
    *v12 = 0;
    v5[2] = 0;
    v24 = 4;
  }

  else
  {
    if (!*(v5 + 24))
    {
      v25 = *(v2 + *(v6 + 36));
      v22 = __OFADD__(v25, v11);
      v26 = v25 + v11;
      if (v22)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      *a1 = v26;
      *v12 = 0;
      v5[2] = 0;
      *(v5 + 24) = 0;
      goto LABEL_19;
    }

    if (v15 == 1)
    {
      v16 = *(v2 + *(v6 + 36));
      v17 = v13 + v16;
      if (!__OFADD__(v13, v16))
      {
        v18 = v14 + v16;
        if (!__OFADD__(v14, v16))
        {
          if (v18 >= v17)
          {
            v42 = v2;
            v43 = v6;
            v45 = v11;
            if (*(a1 + 40) == 1)
            {
              v19 = *(a1 + 32);

              outlined consume of _ShapeStyle_Shape.Result(v20, 1u);
              *(a1 + 32) = 0;
              *(a1 + 40) = 5;
            }

            else
            {
              v19 = MEMORY[0x1E69E7CC0];
            }

            v44 = v19;
            _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v45, v16);
            v35 = *(a1 + 32);
            *(a1 + 32) = v44;
            v36 = *(a1 + 40);
            *(a1 + 40) = 1;

            outlined consume of _ShapeStyle_Shape.Result(v35, v36);

            *a1 = v11;
            *(a1 + 8) = v17;
            *(a1 + 16) = v18;
            *(a1 + 24) = 1;
            (*(*(v43 + 24) + 32))(a1, v4);
            v45 = v11;
            if (!__OFSUB__(0, v16))
            {
              if (*(a1 + 40) == 1)
              {
                v37 = *(a1 + 32);

                outlined consume of _ShapeStyle_Shape.Result(v38, 1u);
                *(a1 + 32) = 0;
                *(a1 + 40) = 5;
              }

              else
              {
                v37 = MEMORY[0x1E69E7CC0];
              }

              v44 = v37;
              _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v45, -v16);
              v39 = v44;
              v40 = *(a1 + 32);
              v41 = *(a1 + 40);

              outlined consume of _ShapeStyle_Shape.Result(v40, v41);
              *(a1 + 32) = v39;
              *(a1 + 40) = 1;

              return;
            }

LABEL_39:
            __break(1u);
            return;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    v30 = *(v2 + *(v6 + 36));
    v22 = __OFADD__(v30, v11);
    v31 = v30 + v11;
    if (v22)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    *a1 = v31;
    *v12 = 0;
    v5[2] = 0;
    v24 = 2;
  }

  *(a1 + 24) = v24;
LABEL_19:
  v32 = *(*(v6 + 24) + 32);

  v32(a1, v4, v8);
}

uint64_t static Material.Layer.SDFLayer.gradient(colors:distances:interpolations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v20;
    v10 = (a1 + 32);
    v11 = *(v20 + 16);
    v12 = 20 * v11;
    do
    {
      v13 = *v10;
      v14 = *(v20 + 24);
      v15 = v11 + 1;
      if (v11 >= v14 >> 1)
      {
        v19 = *v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1);
        v13 = v19;
      }

      *(v20 + 16) = v15;
      v16 = v20 + v12;
      *(v16 + 32) = v13;
      *(v16 + 48) = 2143289344;
      v12 += 20;
      ++v10;
      v11 = v15;
      --v7;
    }

    while (v7);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *a4 = v17 | 0x2000000000000000;
  a4[1] = 0;
}

uint64_t sub_18D1ECFDC()
{

  return swift_deallocObject();
}

SwiftUI::Spacing __swiftcall ResolvedStyledText.StringDrawing.spacing()()
{
  v2 = v0;
  ResolvedStyledText.maxFontMetrics.getter(v27);
  swift_beginAccess();
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  swift_beginAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v26, INFINITY, INFINITY, v3, v4, v5, v6);
  swift_endAccess();
  swift_beginAccess();
  v7 = *(v1 + 128);
  v8 = *(v1 + 96);
  v33 = *(v1 + 112);
  v34 = v7;
  v9 = *(v1 + 128);
  v35 = *(v1 + 144);
  v10 = *(v1 + 64);
  v11 = *(v1 + 32);
  v29 = *(v1 + 48);
  v30 = v10;
  v12 = *(v1 + 64);
  v13 = *(v1 + 96);
  v31 = *(v1 + 80);
  v32 = v13;
  v14 = *(v1 + 32);
  v28[0] = *(v1 + 16);
  v28[1] = v14;
  v22 = v33;
  v23 = v9;
  v24 = *(v1 + 144);
  v18 = v29;
  v19 = v12;
  v20 = v31;
  v21 = v8;
  v36 = *(v1 + 160);
  v25 = *(v1 + 160);
  v16 = v28[0];
  v17 = v11;
  outlined init with copy of TextLayoutProperties(v28, v37);
  static Spacing.textSpacing(maxFontMetrics:idealMetrics:layoutProperties:)(v27, v26, &v16, v2);
  v37[6] = v22;
  v37[7] = v23;
  v37[8] = v24;
  v38 = v25;
  v37[2] = v18;
  v37[3] = v19;
  v37[4] = v20;
  v37[5] = v21;
  v37[0] = v16;
  v37[1] = v17;
  return outlined destroy of TextLayoutProperties(v37);
}

uint64_t static Spacing.textSpacing(maxFontMetrics:idealMetrics:layoutProperties:)@<X0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = a1[1];
  v40 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a3 + 96);
  v9 = *(a3 + 104);
  v10 = *(a3 + 112);
  if (*(a3 + 81))
  {
    if (one-time initialization token for edgeRightText != -1)
    {
      swift_once();
    }

    v38 = static Spacing.Category.edgeRightText;
    if (one-time initialization token for edgeLeftText != -1)
    {
      swift_once();
    }

    v11 = static Spacing.Category.edgeLeftText;
    if (one-time initialization token for rightTextBaseline != -1)
    {
      swift_once();
    }

    v12 = static Spacing.Category.rightTextBaseline;
    if (one-time initialization token for leftTextBaseline != -1)
    {
      swift_once();
    }

    v13 = static Spacing.Category.leftTextBaseline;
    v14 = 3;
    v15 = 1;
  }

  else
  {
    if (one-time initialization token for edgeAboveText != -1)
    {
      swift_once();
    }

    v38 = static Spacing.Category.edgeAboveText;
    if (one-time initialization token for edgeBelowText != -1)
    {
      swift_once();
    }

    v11 = static Spacing.Category.edgeBelowText;
    if (one-time initialization token for textBaseline != -1)
    {
      swift_once();
    }

    v14 = 0;
    v13 = static Spacing.Category.textBaseline;
    v15 = 2;
    v12 = static Spacing.Category.textBaseline;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v39 = v5;
  v16 = v5 - v6;
  v17 = static Semantics_v5.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v18 = v16 * 0.1;
  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    v19 = dyld_program_sdk_at_least();
    v20 = 4.0;
    if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v20 = 4.0;
    if (static Semantics.forced < v17)
    {
      goto LABEL_28;
    }
  }

  v20 = v8;
  if (v8 == 1.0)
  {
    v21 = ceil(v18);
    goto LABEL_29;
  }

LABEL_28:
  v21 = v20 * ceil(v18 / v20);
LABEL_29:
  v22 = one-time initialization token for uniformLineHeight;

  if (v22 != -1)
  {
    swift_once();
  }

  v37 = v8;
  v23 = v6;
  if (v9 != static Text.Sizing.uniformLineHeight)
  {
    v26 = v7;

    goto LABEL_35;
  }

  v24 = qword_1ED52F420;

  v25 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(v10, v24);

  v26 = v7;
  if ((v25 & 1) == 0)
  {
LABEL_35:
    v7 = 0.0;
  }

  v27 = a2[1];
  v28 = a2[3];
  v29 = a2[4];
  type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDAC2E0;
  if (one-time initialization token for textToText != -1)
  {
    swift_once();
  }

  v31 = static Spacing.Category.textToText;
  *(inited + 32) = static Spacing.Category.textToText;
  *(inited + 40) = v14;
  v32 = v7 * 0.5 - v23;
  v33 = v39 + v7 * 0.5;
  *(inited + 48) = v33;
  *(inited + 56) = v32;
  v34 = v16 + v21 - v40;
  *(inited + 64) = v26 - v7;
  *(inited + 72) = v37;
  *(inited + 80) = 2;
  if (v34 <= v21 + v32)
  {
    v34 = v21 + v32;
  }

  *(inited + 88) = v31;
  *(inited + 96) = v15;
  *(inited + 104) = v33;
  *(inited + 112) = v32;
  *(inited + 120) = v26 - v7;
  *(inited + 128) = v37;
  *(inited + 136) = 1;
  *(inited + 144) = v13;
  *(inited + 152) = v15;
  *(inited + 160) = -(v27 - v29);
  *(inited + 176) = 0;
  *(inited + 184) = 0;
  *(inited + 168) = 0;
  *(inited + 192) = 0;
  *(inited + 200) = v12;
  *(inited + 208) = v14;
  *(inited + 216) = -v28;
  *(inited + 224) = 0;
  *(inited + 232) = 0;
  *(inited + 248) = 0;
  *(inited + 240) = 0;
  *(inited + 256) = v38;
  *(inited + 264) = v14;
  *(inited + 272) = v16 + v21 - v33;
  *(inited + 280) = 0;
  *(inited + 288) = 0;
  *(inited + 304) = 0;
  *(inited + 296) = 0;
  *(inited + 312) = v11;
  *(inited + 320) = v15;
  *(inited + 328) = v34;
  *(inited + 336) = 0;
  *(inited + 344) = 0;
  *(inited + 360) = 0;
  *(inited + 352) = 0;
  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
  result = swift_setDeallocating();
  *a4 = v35;
  return result;
}

BOOL specialized max<A>(_:_:)@<W0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  v6 = a1[1];
  v21 = *a1;
  v22 = v6;
  v23 = v4;
  v7 = a2[1];
  v18 = *a2;
  v19 = v7;
  v20 = v5;
  result = specialized static Spacing.Value.< infix(_:_:)(&v18, &v21);
  v9 = &v21 + 8;
  if (!result)
  {
    v9 = &v18 + 8;
  }

  v10 = *v9;
  if (result)
  {
    v11 = &v22;
  }

  else
  {
    v11 = &v19;
  }

  v12 = *v11;
  if (result)
  {
    v13 = &v22 + 8;
  }

  else
  {
    v13 = &v19 + 8;
  }

  v14 = *v13;
  if (result)
  {
    v15 = &v23;
  }

  else
  {
    v15 = &v20;
  }

  v16 = *v15;
  if (result)
  {
    v17 = &v21;
  }

  else
  {
    v17 = &v18;
  }

  *a3 = *v17;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  *(a3 + 24) = v14;
  *(a3 + 32) = v16;
  return result;
}

BOOL specialized static Spacing.Value.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 32);
  if (*(a1 + 32))
  {
    v5 = *(a1 + 16);
    v8 = *(a2 + 8);
    v7 = *(a2 + 16);
    if (*(a1 + 32) == 1)
    {
      if (v4 != 1)
      {
        v9 = 1;
        return v9 < v4;
      }
    }

    else if (v4 != 2)
    {
      v9 = 2;
      return v9 < v4;
    }

    v6 = *(a1 + 8);
    return (v2 != v3 || v6 != v8 || v5 != v7 || *(a1 + 24) != *(a2 + 24)) && v2 + v6 + v5 < v3 + v8 + v7;
  }

  else
  {
    if (*(a2 + 32))
    {
      v9 = 0;
      return v9 < v4;
    }

    return v2 != v3 && v2 < v3;
  }
}

double protocol witness for LayoutEngine.lengthThatFits(_:in:) in conformance StyledTextLayoutEngine(uint64_t *a1, char a2)
{
  v4 = *(a1 + 8);
  if ((a2 & 1) != 0 || (a1[1] & 1) != 0 || (result = 0.0, (*a1 & 0x7FFFFFFFFFFFFFFFLL) != 0))
  {
    v6 = *(a1 + 24);
    v7 = a1[2];
    v8 = *v2;
    v9 = v2[1];
    v11 = *a1;
    v12 = v4;
    v13 = v7;
    v14 = v6;
    StyledTextLayoutEngine.sizeThatFits(_:)(&v11, v8, v9);
    if (a2)
    {
      return v10;
    }
  }

  return result;
}

Swift::Void __swiftcall _ShapeStyle_Pack.adjustLevelIndices(of:by:)(SwiftUI::_ShapeStyle_Name of, Swift::Int by)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v6 = *of;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_25:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v8 = 0;
    *v2 = v3;
    while (1)
    {
      while (1)
      {
        if (v8 >= v3[2])
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v9 = &v3[16 * v8];
        v12 = *(v9 + 32);
        v10 = v9 + 4;
        v11 = v12;
        if (v12 >= v6)
        {
          break;
        }

LABEL_5:
        if (++v8 >= v4)
        {
          goto LABEL_19;
        }
      }

      if (v6 < v11)
      {
        goto LABEL_19;
      }

      v13 = *(v10 + 1);
      v14 = v13 + by;
      if (__OFADD__(v13, by))
      {
        goto LABEL_22;
      }

      v15 = swift_isUniquelyReferenced_nonNull_native();
      if ((v14 & 0x8000000000000000) == 0)
      {
        if ((v15 & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        if (v8 >= v3[2])
        {
          goto LABEL_23;
        }

        BYTE1(v3[16 * v8 + 4]) = v14;
        goto LABEL_5;
      }

      if ((v15 & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      v16 = v3[2];
      if (v8 >= v16)
      {
        goto LABEL_24;
      }

      v17 = v16 - 1;
      v18 = &v3[16 * v8];
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[5];
      v25[2] = v18[4];
      v25[3] = v21;
      v25[0] = v19;
      v25[1] = v20;
      v22 = v18[6];
      v23 = v18[7];
      v24 = v18[9];
      v25[6] = v18[8];
      v25[7] = v24;
      v25[4] = v22;
      v25[5] = v23;
      memmove(v18 + 2, v18 + 10, (v17 - v8) << 7);
      v3[2] = v17;
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v25, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      if (v8 >= --v4)
      {
LABEL_19:
        *v2 = v3;
        return;
      }
    }
  }
}

uint64_t specialized OffsetShapeStyle._apply(to:)(uint64_t result, Swift::Int a2)
{
  v2 = result;
  v32 = a2;
  v3 = *result;
  v4 = (result + 8);
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 24);
  if (v7 <= 2)
  {
    if (*(result + 24))
    {
      if (v7 == 1)
      {
        v8 = v5 + a2;
        if (!__OFADD__(v5, a2))
        {
          v9 = v6 + a2;
          if (!__OFADD__(v6, a2))
          {
            if (v9 >= v8)
            {
              v31 = *result;
              if (*(result + 40) == 1)
              {
                v10 = *(result + 32);
                v11 = a2;

                outlined consume of _ShapeStyle_Shape.Result(v12, 1u);
                a2 = v11;
                *(v2 + 32) = 0;
                *(v2 + 40) = 5;
              }

              else
              {
                v10 = MEMORY[0x1E69E7CC0];
              }

              v26 = a2;
              _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v31, a2);
              outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
              *(v2 + 32) = v10;
              *(v2 + 40) = 1;
              *v2 = v3;
              *(v2 + 8) = v8;
              *(v2 + 16) = v9;
              *(v2 + 24) = 1;
              SystemColorsStyle._apply(to:)(v2);
              v31 = v3;
              v27 = __OFSUB__(0, v26);
              v28 = -v26;
              if (!v27)
              {
                if (*(v2 + 40) == 1)
                {
                  v29 = *(v2 + 32);

                  outlined consume of _ShapeStyle_Shape.Result(v30, 1u);
                  *(v2 + 32) = 0;
                  *(v2 + 40) = 5;
                }

                else
                {
                  v29 = MEMORY[0x1E69E7CC0];
                }

                _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v31, v28);
                result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
                *(v2 + 32) = v29;
                v23 = 1;
                goto LABEL_47;
              }

              goto LABEL_81;
            }

LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        goto LABEL_76;
      }

      v20 = a2 + v3;
      if (__OFADD__(a2, v3))
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      *result = v20;
      *v4 = 0;
      *(result + 16) = 0;
      *(result + 24) = 2;
      if (v20 > 4)
      {
        goto LABEL_22;
      }

      v25 = (a2 + v3);
      if (v25 <= 1)
      {
        if (!(a2 + v3))
        {
          if (one-time initialization token for primary != -1)
          {
            swift_once();
          }

          v21 = &static Color.primary;
          goto LABEL_25;
        }

        if (v25 == 1)
        {
          if (one-time initialization token for secondary != -1)
          {
            swift_once();
          }

          v21 = &static Color.secondary;
          goto LABEL_25;
        }

LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v25 == 2)
      {
        if (one-time initialization token for tertiary != -1)
        {
          swift_once();
        }

        v21 = &static Color.tertiary;
        goto LABEL_25;
      }

      if (v25 == 3)
      {
        if (one-time initialization token for quaternary != -1)
        {
          swift_once();
        }

        v21 = &static Color.quaternary;
        goto LABEL_25;
      }

LABEL_73:
      if (v25 == 4)
      {
LABEL_22:
        if (one-time initialization token for quinary != -1)
        {
          swift_once();
        }

        v21 = &static Color.quinary;
LABEL_25:
        v22 = *v21;

        result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
        *(v2 + 32) = v22;
        v23 = 3;
        goto LABEL_47;
      }

      goto LABEL_74;
    }

    v13 = a2 + v3;
    if (__OFADD__(a2, v3))
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    *result = v13;
    *v4 = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (v13 > 4)
    {
LABEL_15:
      if (one-time initialization token for quinary == -1)
      {
LABEL_16:
        v14 = &static Color.quinary;
LABEL_17:
        v15 = *v14;

        result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
        *(v2 + 32) = v15;
        *(v2 + 40) = 0;
        return result;
      }

LABEL_82:
      swift_once();
      goto LABEL_16;
    }

    v25 = (a2 + v3);
    if (v25 <= 1)
    {
      if (!(a2 + v3))
      {
        if (one-time initialization token for primary != -1)
        {
          swift_once();
        }

        v14 = &static Color.primary;
        goto LABEL_17;
      }

      if (v25 == 1)
      {
        if (one-time initialization token for secondary != -1)
        {
          swift_once();
        }

        v14 = &static Color.secondary;
        goto LABEL_17;
      }
    }

    else
    {
      switch(v25)
      {
        case 2u:
          if (one-time initialization token for tertiary != -1)
          {
            swift_once();
          }

          v14 = &static Color.tertiary;
          goto LABEL_17;
        case 3u:
          if (one-time initialization token for quaternary != -1)
          {
            swift_once();
          }

          v14 = &static Color.quaternary;
          goto LABEL_17;
        case 4u:
          goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_73;
  }

  if (v7 != 3)
  {
    if (v7 == 4)
    {
      if (!__OFADD__(a2, v3))
      {
        *result = a2 + v3;
        *v4 = 0;
        *(result + 16) = 0;
        *(result + 24) = 4;
        return result;
      }

      goto LABEL_77;
    }

    if (v6 | v5 | v3)
    {
      type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<SystemColorsStyle>, &type metadata for SystemColorsStyle, &protocol witness table for SystemColorsStyle, type metadata accessor for ShapeStyleBox);
      v24 = swift_allocObject();
      result = outlined consume of _ShapeStyle_Shape.Result(*(v2 + 32), *(v2 + 40));
      *(v2 + 32) = v24;
      v23 = 2;
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v2 + 32) = 0;
      v23 = 4;
    }

LABEL_47:
    *(v2 + 40) = v23;
    return result;
  }

  v16 = a2;
  result = SystemColorsStyle._apply(to:)(result);
  if (*(v2 + 40) == 2)
  {
    v17 = *(v2 + 32);
    type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>, &lazy cache variable for type metadata for OffsetShapeStyle<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;

    result = outlined consume of _ShapeStyle_Shape.Result(v19, 2u);
    *(v2 + 32) = v18;
    *(v2 + 40) = 2;
  }

  return result;
}

SwiftUI::Spacing __swiftcall LayoutProxy.spacing()()
{
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v2 = *InputValue;
  v3 = one-time initialization token for lockAssertionsAreEnabled;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result.minima._rawValue = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    (*(*v2 + 112))();
  }

  return result;
}

uint64_t Text.init(_:)(uint64_t a1)
{
  type metadata accessor for AttributedStringTextStorage(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC7SwiftUI27AttributedStringTextStorage_str;
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

{
  type metadata accessor for AttachmentTextStorage();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  type metadata accessor for LocalizedStringResourceStorage();
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC7SwiftUIP33_1A1BB6A07088C23EE7C52846B7BEB81330LocalizedStringResourceStorage_resource;
  v4 = type metadata accessor for LocalizedStringResource();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v3 + 16);
  v14(v8, a1, v2, v11);
  type metadata accessor for ClosedRange<Date>();
  (v14)(v5, a1 + *(v15 + 36), v2);
  DateInterval.init(start:end:)();
  outlined destroy of ClosedRange<Date>(a1, type metadata accessor for ClosedRange<Date>);
  type metadata accessor for DateTextStorage(0);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage, v13, v9);
  type metadata accessor for DateTextStorage.Storage(0);
  swift_storeEnumTagMultiPayload();
  return v16;
}

{
  type metadata accessor for DateTextStorage(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage;
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  type metadata accessor for DateTextStorage.Storage(0);
  swift_storeEnumTagMultiPayload();
  return v2;
}

BOOL specialized static _ProposedSize.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  specialized LazyMapSequence.Iterator.next()(&v43);
  v12 = v43;
  if (!v43)
  {
    goto LABEL_25;
  }

  outlined init with take of Any(v44, v42);
  v13 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for NSAttributedStringKey(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    specialized _NativeDictionary.copy()();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 32 * result;
    outlined init with copy of Any(*(*a5 + 56) + 32 * result, v41);
    __swift_destroy_boxed_opaque_existential_1(v42);

    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_1(v24 + v23);
    outlined init with take of Any(v41, (v24 + v23));
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = outlined init with take of Any(v42, (v26[7] + 32 * result));
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v43);
    v12 = v43;
    if (v43)
    {
      v20 = 1;
      do
      {
        outlined init with take of Any(v44, v42);
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 32 * result;
          outlined init with copy of Any(*(*a5 + 56) + 32 * result, v41);
          __swift_destroy_boxed_opaque_existential_1(v42);

          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_1(v31 + v30);
          outlined init with take of Any(v41, (v31 + v30));
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = outlined init with take of Any(v42, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        specialized LazyMapSequence.Iterator.next()(&v43);
        v12 = v43;
      }

      while (v43);
    }

LABEL_25:
    outlined consume of Set<EventID>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  specialized LazyMapSequence.Iterator.next()(v43);
  if (!v44)
  {
    goto LABEL_25;
  }

  v12 = *&v43[0];
  outlined init with take of AnyTrackedValue((v43 + 8), v42);
  v13 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    specialized _NativeDictionary.copy()();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 40 * result;
    outlined init with copy of AnyTrackedValue(*(*a5 + 56) + 40 * result, v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_1(v24 + v23);
    outlined init with take of AnyTrackedValue(v41, v24 + v23);
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = outlined init with take of AnyTrackedValue(v42, v26[7] + 40 * result);
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(v43);
    if (v44)
    {
      v20 = 1;
      do
      {
        v12 = *&v43[0];
        outlined init with take of AnyTrackedValue((v43 + 8), v42);
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 40 * result;
          outlined init with copy of AnyTrackedValue(*(*a5 + 56) + 40 * result, v41);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_1(v31 + v30);
          outlined init with take of AnyTrackedValue(v41, v31 + v30);
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = outlined init with take of AnyTrackedValue(v42, v38[7] + 40 * result);
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        specialized LazyMapSequence.Iterator.next()(v43);
      }

      while (v44);
    }

LABEL_25:
    outlined consume of Set<EventID>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

void type metadata accessor for (key: NSAttributedStringKey, value: Any)()
{
  if (!lazy cache variable for type metadata for (key: NSAttributedStringKey, value: Any))
  {
    type metadata accessor for NSAttributedStringKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: Any));
    }
  }
}

uint64_t outlined destroy of ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    outlined init with take of Any(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return outlined destroy of (key: NSAttributedStringKey, value: Any)(&v18);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of Any((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id specialized _NativeDictionary.copy()(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        outlined init with copy of Any(*(v3 + 56) + 32 * v18, v20);
        *(*(v5 + 48) + 8 * v18) = v19;
        outlined init with take of Any(v20, (*(v5 + 56) + 32 * v18));
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<CachedVectorImageContents.CacheKey, CGImageRef>, type metadata accessor for CGImageRef, lazy protocol witness table accessor for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<RBSymbolAnimationOptionKey, Any>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<CFStringRef, Any>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<RBImageRendererProperty, Any>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ColorCacheKey, NamedColorInfo>, lazy protocol witness table accessor for type ColorCacheKey and conformance ColorCacheKey);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v6 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *(v18 + 1);
        v20 = *(v18 + 2);
        v21 = *(v18 + 8);
        v22 = *(v18 + 16);
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = *(v18 + 24);
        v25 = *(v4 + 48) + 32 * v17;
        *v25 = *v18;
        *(v25 + 1) = v19;
        *(v25 + 2) = v20;
        *(v25 + 8) = v21;
        *(v25 + 16) = v22;
        *(v25 + 24) = v24;
        *(*(v4 + 56) + 8 * v17) = v23;
        v26 = v23;

        result = v24;
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
        goto LABEL_16;
      }

      v16 = *(v6 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<RBDisplayListInterpolatorOptionKey, Any>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ContentTransition.NamedKey, RBTransition>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 10);
        v21 = *(v18 + 8);
        v22 = *(v18 + 11);
        LOBYTE(v18) = *(v18 + 13);
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = *(v4 + 48) + 16 * v17;
        *v24 = v19;
        *(v24 + 8) = v21;
        *(v24 + 10) = v20;
        *(v24 + 11) = v22;
        *(v24 + 13) = v18;
        *(*(v4 + 56) + 8 * v17) = v23;
        result = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v30 = v2;
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v29 = v27 - v3;
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>>();
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v4; v14; v4 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 56);
      v21 = *(*(v4 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27[0];
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, CAPresentationModifier>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, CanvasSymbols.Child>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  v29 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = v18[1];
        v16 *= 48;
        v20 = *(v1 + 56) + v16;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 40);
        v26 = (*(v3 + 48) + v17);
        v27 = *(v20 + 32);
        *v26 = *v18;
        v26[1] = v19;
        v28 = *(v3 + 56) + v16;
        *v28 = v22;
        *(v28 + 8) = v21;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v27;
        *(v28 + 40) = v25;

        result = v22;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v3;
  }

  return result;
}

void destroy for LocalizedStringKey.FormatArgument(uint64_t a1)
{
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v3 = type metadata accessor for AttributedString();
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        return;
      }

      v3 = type metadata accessor for LocalizedStringResource();
    }

    v5 = *(*(v3 - 8) + 8);

    v5(a1, v3);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v4 = *(a1 + 40);
  }
}

uint64_t type metadata accessor for EnvironmentValues.CapitalizationContext()
{
  result = type metadata singleton initialization cache for EnvironmentValues.CapitalizationContext;
  if (!type metadata singleton initialization cache for EnvironmentValues.CapitalizationContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

  type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

void specialized LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, unint64_t, unint64_t), uint64_t a7, void (*a8)(uint64_t, uint64_t, void, uint64_t, unint64_t, unint64_t, void *), uint64_t a9)
{
  v139 = a8;
  v160 = a6;
  v161 = a7;
  v156 = a1;
  v157 = a2;
  v165 = *MEMORY[0x1E69E9840];
  v136 = type metadata accessor for EnvironmentValues.CapitalizationContext();
  v131 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v129 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v128 = v114 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v127 = (v114 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v126 = v114 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v135 = v114 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v125 = v114 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v124 = (v114 - v23);
  v130 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v114 - v26;
  v137 = type metadata accessor for Locale();
  v28 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v121 = v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v141 = v114 - v31;
  v149 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v149);
  v148 = v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v147 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v146 = v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v151 = v114 - v36;
  v159 = type metadata accessor for NSScanner.NumberRepresentation();
  v37 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v39 = v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for CharacterSet();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v41 = v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a3 + 8);
  v150 = *a3;
  v143 = v42;
  if (*(a5 + 16))
  {
    type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>();
    v43 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC8];
  }

  v163 = v43;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v44, 1, &v163);
  v142 = 0;
  v138 = a9;
  v155 = v163;
  v45 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v46 = MEMORY[0x193ABEC20](v156, v157);
  v47 = [v45 initWithString_];

  [v47 setCharactersToBeSkipped_];
  v163 = 0;
  v164 = 0xE000000000000000;
  Character.write<A>(to:)();
  CharacterSet.init(charactersIn:)();

  v48 = (v37 + 104);
  v49 = (v37 + 8);
  v133 = (v28 + 16);
  v158 = *MEMORY[0x1E696A028];
  v120 = v28 + 32;
  v123 = v28;
  v134 = (v28 + 8);
  v153 = "butedString key ";
  v154 = "Swift/Dictionary.swift";
  v152 = xmmword_18DDA6EB0;
  do
  {
    v56 = NSScanner.currentIndex.getter();
    v57 = NSScanner.scanUpToCharacters(from:)();
    if (v58)
    {
      v59 = v57;
      v60 = v58;
      v61 = NSScanner.currentIndex.getter();
      if (v61 >> 14 < v56 >> 14)
      {
        __break(1u);
LABEL_43:
        __break(1u);
      }

      v160(v59, v60, v56, v61);
    }

    v62 = NSScanner.currentIndex.getter();
    v63 = NSScanner.scanCharacter()();
    if (v63.value._object)
    {
      if (v63.value._countAndFlagsBits == 12369903 && v63.value._object == 0xA300000000000000)
      {
      }

      else
      {
        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v64 & 1) == 0)
        {
          continue;
        }
      }

      v65 = v159;
      (*v48)(v39, v158, v159);
      v66 = NSScanner.scanInt(representation:)();
      v68 = v67;
      (*v49)(v39, v65);
      if ((v68 & 1) == 0)
      {
        v69 = NSScanner.scanCharacter()();
        if (v69.value._object)
        {
          if (v69.value._countAndFlagsBits == 12369903 && v69.value._object == 0xA300000000000000)
          {
          }

          else
          {
            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v70 & 1) == 0)
            {
              continue;
            }
          }

          v71 = v155;
          if (!v155[2])
          {
            goto LABEL_6;
          }

          v72 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
          if ((v73 & 1) == 0)
          {
            goto LABEL_6;
          }

          v74 = v71[7] + *(v147 + 72) * v72;
          v75 = v146;
          outlined init with copy of LocalizedStringKey.FormatArgument(v74, v146, type metadata accessor for LocalizedStringKey.FormatArgument);
          v76 = v151;
          outlined init with take of LocalizedStringKey.FormatArgument(v75, v151, type metadata accessor for LocalizedStringKey.FormatArgument);
          v77 = v148;
          outlined init with copy of LocalizedStringKey.FormatArgument(v76, v148, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v76, type metadata accessor for LocalizedStringKey.FormatArgument);
            _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v77, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
LABEL_6:
            _ss23_ContiguousArrayStorageCyypGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E6F90]);
            v50 = swift_allocObject();
            *(v50 + 16) = v152;
            v163 = 0;
            v164 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);

            v163 = 0;
            v164 = 0xE000000000000000;
            _StringGuts.grow(_:)(58);
            MEMORY[0x193ABEDD0](0xD00000000000002DLL, v154 | 0x8000000000000000);
            MEMORY[0x193ABEDD0](v156, v157);
            MEMORY[0x193ABEDD0](0x3A6469202020200ALL, 0xE900000000000020);
            v162[0] = v66;
            v51 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x193ABEDD0](v51);

            MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
            v52 = StaticString.description.getter();
            MEMORY[0x193ABEDD0](v52);

            MEMORY[0x193ABEDD0](58, 0xE100000000000000);
            v162[0] = 84;
            v53 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x193ABEDD0](v53);

            MEMORY[0x193ABEDD0](0xD00000000000001CLL, v153 | 0x8000000000000000);
            v54 = v163;
            v55 = v164;
            *(v50 + 56) = MEMORY[0x1E69E6158];
            *(v50 + 32) = v54;
            *(v50 + 40) = v55;
            print(_:separator:terminator:)();

            continue;
          }

          v118 = v48;
          v78 = *v77;
          v119 = *(v77 + 8);
          v117 = *(v77 + 16);
          v79 = *(v77 + 24);
          v80 = NSScanner.currentIndex.getter();
          if (v80 >> 14 < v62 >> 14)
          {
            goto LABEL_43;
          }

          v81 = v80;
          v115 = v78;
          v116 = v79;
          v140 = v27;
          v82 = v143;
          v163 = v150;
          v164 = v143;

          v132 = v81;
          String.subscript.getter();
          v83 = Substring.distance(from:to:)();

          if (v83 == String.count.getter())
          {
            goto LABEL_40;
          }

          v84 = v140;
          if (v82)
          {

            v85 = v150;
            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v150, v141);

            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE0I033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt1g5(v85, v84);

            if (!(v62 >> 14))
            {
LABEL_29:
              v86 = v125;
              outlined init with copy of LocalizedStringKey.FormatArgument(v84, v125, type metadata accessor for EnvironmentValues.CapitalizationContext);
              v87 = (*(v131 + 80) + 16) & ~*(v131 + 80);
              v88 = swift_allocObject();
              outlined init with take of LocalizedStringKey.FormatArgument(v86, v88 + v87, type metadata accessor for EnvironmentValues.CapitalizationContext);
              v89 = v124;
              *v124 = partial apply for closure #1 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:);
              *(v89 + 8) = v88;
              swift_storeEnumTagMultiPayload();
              v90 = v135;
              outlined init with copy of LocalizedStringKey.FormatArgument(v89, v135, type metadata accessor for EnvironmentValues.CapitalizationContext);
              v91 = v126;
              outlined init with copy of LocalizedStringKey.FormatArgument(v90, v126, type metadata accessor for EnvironmentValues.CapitalizationContext);
              v92 = v150;
              swift_retain_n();
              v93 = v142;
              _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(&v163, v91);
              v142 = v93;

              _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v91, type metadata accessor for EnvironmentValues.CapitalizationContext);
              v94 = v135;
              v95 = v89;
LABEL_37:
              if (v143)
              {
                _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE0K033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Ttg5(v92, v163);
              }

              _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v94, type metadata accessor for EnvironmentValues.CapitalizationContext);
              _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v95, type metadata accessor for EnvironmentValues.CapitalizationContext);
              _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v140, type metadata accessor for EnvironmentValues.CapitalizationContext);
              (*v134)(v141, v137);
LABEL_40:
              v114[2] = v163;
              v114[1] = v164;
              v162[0] = v163;
              v162[1] = v164;

              v111 = v115;
              v112 = v119;
              v113 = v117;
              v139(v115, v119, v117, v116, v62, v132, v162);
              outlined consume of Text.Storage(v111, v112, v113);

              _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v151, type metadata accessor for LocalizedStringKey.FormatArgument);

              v27 = v140;
              v48 = v118;
              continue;
            }
          }

          else
          {
            v96 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v150);
            if (v96)
            {
              (*v133)(v141, &v96[*(*v96 + 248)], v137);
            }

            else
            {
              if (one-time initialization token for defaultValue != -1)
              {
                swift_once();
              }

              v97 = v137;
              v98 = __swift_project_value_buffer(v137, static LocaleKey.defaultValue);
              (*v133)(v141, v98, v97);
            }

            v99 = v142;
            _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(v150, v84);
            v142 = v99;
            if (!(v62 >> 14))
            {
              goto LABEL_29;
            }
          }

          v100 = v123;
          v101 = v121;
          v102 = v137;
          (*(v123 + 16))(v121, v141, v137);
          v103 = (*(v100 + 80) + 48) & ~*(v100 + 80);
          v104 = swift_allocObject();
          v105 = v157;
          *(v104 + 2) = v156;
          *(v104 + 3) = v105;
          v106 = v132;
          *(v104 + 4) = v62;
          *(v104 + 5) = v106;
          (*(v100 + 32))(&v104[v103], v101, v102);
          v107 = v127;
          *v127 = partial apply for closure #2 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:);
          *(v107 + 8) = v104;
          swift_storeEnumTagMultiPayload();
          v94 = v128;
          outlined init with copy of LocalizedStringKey.FormatArgument(v107, v128, type metadata accessor for EnvironmentValues.CapitalizationContext);
          v108 = v129;
          outlined init with copy of LocalizedStringKey.FormatArgument(v94, v129, type metadata accessor for EnvironmentValues.CapitalizationContext);
          v109 = v150;
          swift_retain_n();

          v110 = v142;
          _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE0F033_B2C9C13C743DF2F6E22ED614C39E3A5DLLVG_Tt2g5(&v163, v108);
          v142 = v110;

          _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v108, type metadata accessor for EnvironmentValues.CapitalizationContext);
          v95 = v107;
          v92 = v109;
          goto LABEL_37;
        }
      }
    }
  }

  while (![v47 isAtEnd]);
  (*(v144 + 8))(v41, v145);
}

uint64_t sub_18D1EFF98()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18D1F005C()
{
  v1 = *(type metadata accessor for EnvironmentValues.CapitalizationContext() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = type metadata accessor for FormatStyleCapitalizationContext();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

void closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(int a1, int a2, int a3, int a4, id a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = [a5 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v14 = _NSRange.init<A, B>(_:in:)();
  v16 = [a5 attributedSubstringFromRange_];
  (*(a12 + 72))();
}

uint64_t Text.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a6;
  v43 = a4;
  v15 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v40 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  v21 = a2[1];
  v41 = *a2;
  v22 = *a3;
  v23 = a8;
  v24 = *(a9 + 8);
  v45 = a9;
  v24(a8, a9, v18);
  v25 = *(a7 + 16);
  if (v25)
  {
    v37 = v22;
    v38 = v20;
    v39 = a5;
    v44 = *(v45 + 24);
    v26 = (a7 + 16 * v25 + 24);
    v27 = v41;
    do
    {
      --v25;
      v28 = *(v26 - 1);
      v29 = *v26;
      v26 -= 16;
      v48[0] = v27;
      v48[1] = v21;
      outlined copy of Text.Modifier(v28, v29);
      v30 = v23;
      v31 = v44(&v46, v23, v45);
      Text.Modifier.modify(style:environment:)(v32, v48, v28, v29);
      v31(&v46, 0);
      v23 = v30;
      outlined consume of Text.Modifier(v28, v29);
    }

    while (v25);
    v46 = v27;
    v47 = v21;
    v48[0] = v37;
    v33 = v45;
    Text.Storage.resolve<A>(into:in:with:)(a1, &v46, v48, v43, v39, v42 & 1, v30, v45);
    v20 = v38;
    v34 = v40;
    outlined init with copy of Text.Style(v38, v40);
    (*(v33 + 16))(v34, v23, v33);
  }

  else
  {
    v46 = v41;
    v47 = v21;
    v48[0] = v22;
    Text.Storage.resolve<A>(into:in:with:)(a1, &v46, v48, v43, a5, v42 & 1, a8, v45);
  }

  return _s7SwiftUI4TextV14ResolvedStringVWOhTm_2(v20, type metadata accessor for Text.Style);
}

uint64_t AttachmentTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v36 = a4;
  type metadata accessor for Text.Style?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ImageResolutionContext();
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a2;
  v16 = a2[1];
  v35 = *a3;
  v32 = a5;
  v17 = *(a5 + 8);

  v17(v36, a5);
  v18 = type metadata accessor for Text.Style(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 0, 1, v18);
  v31 = *MEMORY[0x1E698D3F8];
  v14[2] = 0;
  v20 = v12[8];
  v19(v14 + v20, 1, 1, v18);
  v21 = v12[9];
  v22 = v14 + v12[10];
  *v22 = 520;
  v22[2] = 2;
  *(v14 + v12[11]) = 3;
  v23 = v12[12];
  v24 = v36;
  *(v14 + v23) = 1;
  *v14 = v15;
  v14[1] = v16;
  v25 = v14 + v20;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  outlined assign with take of Text.Style?(v10, v25);
  *(v14 + v21) = v31;
  *&v41[0] = v15;
  *(&v41[0] + 1) = v16;
  *&v39[0] = v35;
  if (AttachmentTextStorage.resolveAndWriteAuxiliaryMetadataIfNeeded<A>(into:context:environment:options:)(v27, v14, v41, v39, v24, v26))
  {
    return outlined destroy of ImageResolutionContext(v14);
  }

  (*(**(v28 + 16) + 80))(v41, v14);
  v39[9] = v41[9];
  v40[0] = v42[0];
  *(v40 + 11) = *(v42 + 11);
  v39[4] = v41[4];
  v39[5] = v41[5];
  v39[6] = v41[6];
  v39[7] = v41[7];
  v39[8] = v41[8];
  v39[0] = v41[0];
  v39[1] = v41[1];
  v39[2] = v41[2];
  v39[3] = v41[3];
  v38[0] = v15;
  v38[1] = v16;
  v37 = v35;
  (*(v26 + 80))(v39, v38, &v37, v24, v26);
  outlined destroy of ImageResolutionContext(v14);
  return outlined destroy of Image.Resolved(v41);
}

unint64_t Text.Resolved.append(_:in:with:)(_OWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v106 = type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x1EEE9AC00](v106);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[9];
  v152 = a1[8];
  v153 = v10;
  v154[0] = a1[10];
  *(v154 + 11) = *(a1 + 171);
  v11 = a1[5];
  v150[0] = a1[4];
  v150[1] = v11;
  v12 = a1[7];
  v150[2] = a1[6];
  v151 = v12;
  v13 = a1[1];
  v149[0] = *a1;
  v149[1] = v13;
  v14 = a1[3];
  v149[2] = a1[2];
  v149[3] = v14;
  v15 = *a2;
  v16 = a2[1];
  v17 = *a3;
  *&v137[0] = 12369903;
  v122 = static String._uncheckedFromUTF8(_:)();
  v19 = v18;
  *&v137[0] = v15;
  *(&v137[0] + 1) = v16;
  v20 = type metadata accessor for Text.Resolved(0);
  v21 = *(v4 + *(v20 + 24));
  v115 = v17;
  *&v132[0] = v17;
  v22 = v4 + *(v20 + 32);
  v121 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(0, 0, v137, v21, v132, v22);
  if (!v16)
  {
    v137[0] = v15;

    v25 = specialized static ShouldRedactContentKey.value(in:)(v137);

    if (v25)
    {
      goto LABEL_3;
    }

LABEL_5:
    v102 = v19;
    v26 = *&v149[0];
    v123 = BYTE8(v149[0]);
    v147 = *(v149 + 9);
    v148[0] = *(&v149[1] + 9);
    *(v148 + 15) = DWORD2(v149[2]);
    v146 = v150[0];
    *(v145 + 15) = v150[2];
    v144 = *(v150 + 1);
    v145[0] = *(&v150[1] + 1);
    v114 = *(&v151 + 1);
    v112 = v151;
    v113 = *(&v152 + 1);
    v107 = v22;
    v108 = *(&v153 + 1);
    v143 = v154[0];
    v119 = *&v154[1];
    v120 = *&v149[0];
    v103 = v4;
    v104 = v152;
    v105 = v15;
    v111 = v153;
    v100 = v9;
    if (v150[0])
    {
      v109 = BYTE10(v154[1]);
      v110 = WORD4(v154[1]);
      v27 = *(&v149[2] + 12);
      v28 = *(&v149[3] + 4);
      v29 = HIDWORD(v149[3]);
      outlined init with copy of Image.Resolved(v149, v137);
      v30 = v28;
      v31 = v27;
      v32 = v29;
      goto LABEL_20;
    }

    *&v126[0] = *(v4 + 16);
    v33 = *&v126[0];
    *&v132[0] = v15;
    *(&v132[0] + 1) = v16;
    *&v135[0] = v115;
    outlined init with copy of Image.Resolved(v149, v137);
    outlined copy of Text.Style.TextStyleColor(v33);
    v34 = Text.Style.TextStyleColor.resolve(in:with:properties:includeDefaultAttributes:)(v132, v135, v22, 1);
    v117 = v35;
    v118 = v34;
    v37 = v36;
    result = outlined consume of Gradient.ProviderTag(v33);
    if ((v37 & 0x100000000) != 0)
    {
      __break(1u);
      return result;
    }

    v39 = BYTE10(v154[1]);
    v146 = 0;
    v116 = v37;
    if (v123 == 255)
    {
      v46 = 0;
    }

    else
    {
      if (v123 == 2)
      {
        v40 = *(v120 + 32);
        v41 = *(v120 + 48);
        v42 = *(v120 + 16);
        outlined copy of Image.Location(v40);
        v43 = v41;
        outlined copy of Image.Location(v40);
        v44 = [v42 styleMask];
        *&v132[0] = v40;
        _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v44, v132, v137);

        outlined consume of Image.Location(v40);
        v45 = *&v137[0];
        v46 = WORD4(v137[0]);
        v47 = BYTE10(v137[0]);

        if ((v39 & 2) != 0)
        {
LABEL_11:
          v48 = v47 | 2;
LABEL_16:
          v49 = v45;
          v32 = v116;
          v30 = v117;
          v31 = v118;
          v50 = *(v107 + 32);
          v26 = v120;
          v119 = v49;
          v109 = v48;
          v110 = v46;
          if ((v50 & 1) == 0 && *&v118 == -1.0 && *(&v118 + 1) == -1.0)
          {
            *(v107 + 32) = v50 | 1;
          }

LABEL_20:
          *(v135 + 9) = v147;
          *(&v135[1] + 9) = v148[0];
          *(v136 + 1) = v144;
          *&v135[0] = v26;
          BYTE8(v135[0]) = v123;
          v117 = v30;
          v118 = v31;
          *(&v135[2] + 12) = v31;
          *(&v135[3] + 4) = v30;
          DWORD2(v135[2]) = *(v148 + 15);
          v116 = v32;
          HIDWORD(v135[3]) = v32;
          LOBYTE(v136[0]) = v146;
          *(&v136[1] + 1) = v145[0];
          *(&v136[1] + 12) = *(v145 + 11);
          v51 = type metadata accessor for SwiftUITextAttachment();
          v52 = objc_allocWithZone(v51);
          v53 = v52;
          v54 = &v52[OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_graphicsImage];
          v56 = v135[1];
          v55 = v135[2];
          *v54 = v135[0];
          *(v54 + 1) = v56;
          *(v54 + 2) = v55;
          v58 = v136[0];
          v57 = v136[1];
          v59 = v135[3];
          *(v54 + 92) = *(&v136[1] + 12);
          *(v54 + 4) = v58;
          *(v54 + 5) = v57;
          *(v54 + 3) = v59;
          if (v54[8] == 2)
          {
            if (v108)
            {
              v60 = *(v108 + 48);
            }

            else
            {
              v60 = 0uLL;
            }

            *&v52[OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_alignmentOrigin] = v60;
          }

          else
          {
            v61 = &v52[OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_alignmentOrigin];
            *v61 = 0;
            *(v61 + 1) = 0;
          }

          outlined init with copy of GraphicsImage(v135, v137);
          v134.receiver = v53;
          v134.super_class = v51;
          v62 = objc_msgSendSuper2(&v134, sel_initWithData_ofType_, 0, 0);
          v63 = v62;
          v64 = v104;
          v101 = v51;
          if ((v115 & 1) == 0 || (v154[0] & 1) != 0 || (v104 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
          {
            goto LABEL_36;
          }

          v99 = v62;
          if (v104 < 0)
          {
            v70 = v104;
            type metadata accessor for AccessibilityImageLabel.SystemSymbolTextStorage();
            v71 = swift_allocObject();
            v65 = v112;
            v72 = v114;
            v98 = v71;
            *(v71 + 16) = v112;
            *(v71 + 24) = v72;
            v67 = v70;
            outlined copy of AccessibilityImageLabel?(v65, v72, v70);
            v66 = 0;
            v69 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v65 = v112;
            if ((v104 & 1) == 0)
            {
              v82 = v114;
              v80 = v104;
              outlined copy of AccessibilityImageLabel?(v112, v114, v104);
              outlined copy of Text.Storage(v65, v82, 0);
              v83 = v99;
              v81 = v65;
              goto LABEL_35;
            }

            v66 = v114;
            v67 = v104;
            outlined copy of Text.Storage(v112, v114, 1);
            v68 = v113;

            v98 = v65;
            v69 = v68;
          }

          outlined copy of AccessibilityImageLabel?(v65, v114, v67);
          v73 = v99;
          v74 = v100;
          Text.Style.init()(v100);
          v75 = v105;
          v76 = v106;
          v77 = (v74 + *(v106 + 20));
          *v77 = 0;
          v77[1] = 0;
          v78 = (v74 + *(v76 + 24));
          *v78 = 0;
          v78[1] = 0xE000000000000000;
          *(v74 + *(v76 + 28)) = 0;
          *v77 = 0;
          v77[1] = 0;
          v79 = v98;
          specialized Text.resolve<A>(into:in:with:)(v74, v75, v16, v115, v98, v66, 1, v69);
          outlined consume of Text.Storage(v79, v66, 1);

          v80 = v104;
          v81 = *v78;
          v82 = v78[1];
          v65 = v112;

          outlined destroy of ParagraphStyleResolutionContext(v74, type metadata accessor for Text.ResolvedString);
LABEL_35:
          v84 = MEMORY[0x193ABEC20](v81, v82);

          v85 = v99;
          [v99 setAccessibilityLabel_];

          outlined consume of AccessibilityImageLabel?(v65, v114, v80);
          v64 = v80;
          v63 = v85;
LABEL_36:
          v86 = v64;
          v115 = v16;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v87 = static CoreGlue2.shared;
          v88 = v63;
          *&v125[0] = v63;
          *&v126[0] = v120;
          BYTE8(v126[0]) = v123;
          *(v126 + 9) = v147;
          *(&v126[1] + 9) = v148[0];
          DWORD2(v126[2]) = *(v148 + 15);
          *(&v126[2] + 12) = v118;
          *(&v126[3] + 4) = v117;
          HIDWORD(v126[3]) = v116;
          LODWORD(v106) = v146;
          LOBYTE(v127[0]) = v146;
          v127[2] = *(v145 + 15);
          *(&v127[1] + 1) = v145[0];
          *(v127 + 1) = v144;
          *&v128 = v112;
          *(&v128 + 1) = v114;
          *&v129 = v86;
          *(&v129 + 1) = v113;
          v89 = v108;
          *&v130 = v111;
          *(&v130 + 1) = v108;
          v131[0] = v143;
          *&v131[1] = v119;
          WORD4(v131[1]) = v110;
          BYTE10(v131[1]) = v109;
          v140 = v129;
          v141 = v130;
          v142[0] = v143;
          *(v142 + 11) = *(v131 + 11);
          v138[0] = v127[0];
          v138[1] = v127[1];
          v138[2] = v127[2];
          v139 = v128;
          v137[0] = v126[0];
          v137[1] = v126[1];
          v137[2] = v126[2];
          v137[3] = v126[3];
          v90 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0xC0);
          v91 = v88;
          v92 = v87;
          outlined init with copy of Image.Resolved(v126, v132);
          v90(v125, v137);

          v132[8] = v140;
          v132[9] = v141;
          v133[0] = v142[0];
          *(v133 + 11) = *(v142 + 11);
          v132[4] = v138[0];
          v132[5] = v138[1];
          v132[6] = v138[2];
          v132[7] = v139;
          v132[0] = v137[0];
          v132[1] = v137[1];
          v132[2] = v137[2];
          v132[3] = v137[3];
          outlined destroy of CoreGlue2.ResolvedImage(v132);

          if (one-time initialization token for kitAttachment != -1)
          {
            swift_once();
          }

          v93 = static NSAttributedStringKey.kitAttachment;
          *(&v137[1] + 1) = v101;
          *&v137[0] = v91;
          outlined init with take of Any(v137, v125);
          v94 = v91;
          v95 = v121;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v124 = v95;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v125, v93, isUniquelyReferenced_nonNull_native);

          v24 = v124;
          *&v137[0] = v120;
          BYTE8(v137[0]) = v123;
          *(v137 + 9) = v147;
          *(&v137[1] + 9) = v148[0];
          *(&v137[2] + 12) = v118;
          *(&v137[3] + 4) = v117;
          DWORD2(v137[2]) = *(v148 + 15);
          HIDWORD(v137[3]) = v116;
          LOBYTE(v138[0]) = v106;
          v138[2] = *(v145 + 15);
          *(&v138[1] + 1) = v145[0];
          *(v138 + 1) = v144;
          *&v139 = v112;
          *(&v139 + 1) = v114;
          *&v140 = v86;
          *(&v140 + 1) = v113;
          *&v141 = v111;
          *(&v141 + 1) = v89;
          v142[0] = v143;
          *&v142[1] = v119;
          WORD4(v142[1]) = v110;
          BYTE10(v142[1]) = v109;
          outlined destroy of Image.Resolved(v137);
          v19 = v102;
          v15 = v105;
          v16 = v115;
          v22 = v107;
          goto LABEL_41;
        }

LABEL_15:
        v48 = v47 & 0xFFFFFFFD;
        goto LABEL_16;
      }

      v46 = 1;
    }

    v45 = 0;
    v47 = 0;
    if ((v39 & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v15);

  if ((ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = v121;
LABEL_41:
  *&v137[0] = v15;
  *(&v137[0] + 1) = v16;
  Text.Resolved.append(_:with:in:)(v122, v19, v24, v137);

  v97 = *(v22 + 32);
  if ((v97 & 2) == 0)
  {
    *(v22 + 32) = v97 | 2;
  }

  return result;
}

void *sub_18D1F1280(void *result, void **a2)
{
  v2 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *result = v2;
  return result;
}

uint64_t EnvironmentValues.resolvedTextProvider.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(&v3);
  return v4;
}

uint64_t closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, char a3, char *a4, int a5, int a6, uint64_t *a7, id a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = *a7;
  v18 = a7[1];
  v19 = [a8 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v33[1] = v21;
  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v22 = _NSRange.init<A, B>(_:in:)();
  v24 = [a8 attributesAtIndex:v22 longestEffectiveRange:0 inRange:{v22, v23}];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = Text.withInlinePresentationIntent(from:)(v25, a1, a2, a3 & 1, a4);
  v28 = v27;
  LOBYTE(a1) = v29;
  v31 = v30;

  v34[0] = v17;
  v34[1] = v18;
  v33[0] = a10;
  Text.resolve<A>(into:in:with:)(a9, v34, v33, v26, v28, a1 & 1, v31, a11, a12);
  outlined consume of Text.Storage(v26, v28, a1 & 1);
}

void type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t destroy for EnvironmentValues.CapitalizationContext(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = type metadata accessor for FormatStyleCapitalizationContext();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }
}

uint64_t outlined init with copy of EnvironmentValues.CapitalizationContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI17EnvironmentValuesVAAE21CapitalizationContextOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>;
  if (!lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>)
  {
    _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(255, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>);
  }

  return result;
}

uint64_t initializeWithCopy for ResolvedVectorGlyph(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = v4;
  if (v5 >= 2)
  {
    v7 = v5;
  }

  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v8 = *(a2 + 32);
  *(a1 + 32) = v8;
  v9 = v8;
  return a1;
}

void destroy for ResolvedVectorGlyph(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >= 2)
  {
  }

  v3 = *(a1 + 32);
}

uint64_t one-time initialization function for kitAttachment()
{
  result = MEMORY[0x193ABEC20](0x686361747441534ELL, 0xEC000000746E656DLL);
  static NSAttributedStringKey.kitAttachment = result;
  return result;
}

uint64_t sub_18D1F19E4(char a1, char a2)
{
  v2 = a1 == 2;
  if (a2 != 2)
  {
    v2 = 0;
  }

  if (a1 != 2 && a2 != 2)
  {
    v2 = a1 ^ a2 ^ 1;
  }

  return v2 & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextJustification(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 != 2)
  {
    if (v2 != 2)
    {
      v4 = *a2 ^ *a1;
      if ((v4 & 1) == 0 && ((v4 >> 8) & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v2 == 2;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance TextSuffixKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v9[2] = *(a1 + 32);
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = *(a2 + 32);
  v8 = v3;
  return static ResolvedTextSuffix.== infix(_:_:)(v9, v7) & 1;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance TextSuffixKey@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = -0.0;
  *(a1 + 40) = xmmword_18DD85510;
  return result;
}

uint64_t outlined destroy of AttributedString.LineHeight?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018StrikethroughStyleD0V_Tt1B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a2 == 1)
  {
    outlined copy of Text.LineStyle?(a1, 1);
    if (v4 == 1)
    {
      outlined copy of Text.LineStyle?(a3, 1);
      v8 = a1;
      v9 = 1;
LABEL_9:
      outlined consume of Text.LineStyle?(v8, v9);
      return v4 & 1;
    }

    outlined copy of Text.LineStyle?(a3, v4);
  }

  else
  {
    v12[0] = a1;
    v12[1] = a2;
    if (a4 != 1)
    {
      v11[0] = a3;
      v11[1] = a4;
      outlined copy of Text.LineStyle?(a1, a2);
      outlined copy of Text.LineStyle?(a3, v4);
      outlined copy of Text.LineStyle?(a1, a2);
      LOBYTE(v4) = static Text.LineStyle.== infix(_:_:)(v12, v11);

      v8 = a1;
      v9 = a2;
      goto LABEL_9;
    }

    outlined copy of Text.LineStyle?(a1, a2);
    outlined copy of Text.LineStyle?(a3, 1);
    outlined copy of Text.LineStyle?(a1, a2);
  }

  outlined consume of Text.LineStyle?(a1, a2);
  outlined consume of Text.LineStyle?(a3, v4);
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t outlined consume of Text.LineStyle?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double protocol witness for ScrollableCollection.nextVisibleCollectionViewID(towards:from:border:ignoring:) in conformance DynamicLayoutScrollable@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DD85550;
  return result;
}

uint64_t protocol witness for static DerivedEnvironmentKey.value(in:) in conformance TextLayoutProperties.Key@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6[0] = v4;
  v6[1] = v3;

  return TextLayoutProperties.init(from:)(v6, a2);
}

BOOL specialized static TextLayoutProperties.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 26);
  v6 = *(a1 + 27);
  v7 = *(a1 + 28);
  v9 = *(a1 + 32);
  v8 = *(a1 + 48);
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v12 = *(a1 + 81);
  v13 = *(a1 + 88);
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v18 = *(a1 + 128);
  v17 = *(a1 + 136);
  v19 = *(a1 + 144);
  v20 = *(a2 + 24);
  v21 = *(a2 + 25);
  v22 = *(a2 + 26);
  v23 = *(a2 + 27);
  v24 = *(a2 + 28);
  v26 = *(a2 + 32);
  v25 = *(a2 + 48);
  v27 = *(a2 + 64);
  v28 = *(a2 + 80);
  v29 = *(a2 + 88);
  v30 = *(a2 + 104);
  v31 = *(a2 + 112);
  v32 = *(a2 + 120);
  v34 = *(a2 + 128);
  v33 = *(a2 + 136);
  v35 = *(a2 + 144);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v36 = *(a2 + 8);
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  result = 0;
  if (v3)
  {
    v38 = v6 ^ v23;
    v39 = v11 ^ v28;
    v40 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v9, v26), vceqq_f64(v8, v25)), vuzp1q_s32(vceqq_f64(v10, v27), vceqq_f64(v13, v29))))) & (v5 == v22);
    if (v7 != v24)
    {
      v40 = 0;
    }

    v41 = (v38 | v39) ^ 1;
    if (v14 == v30)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0;
    }

    if ((v42 & v41 & v20) != 1 || v4 != v21)
    {
      return result;
    }

LABEL_31:
    if ((v12 ^ *(a2 + 81)))
    {
      return result;
    }

    v47 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(v15, v31);

    if (v47)
    {
      if (v16 == 2)
      {
        if (v32 == 2)
        {
          return v19 == v35;
        }
      }

      else if (v32 != 2)
      {
        result = 0;
        if (((v32 ^ v16) & 1) != 0 || v18 != v34 || v17 != v33)
        {
          return result;
        }

        return v19 == v35;
      }
    }

    return 0;
  }

  v44 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v9, v26), vceqq_f64(v8, v25)), vuzp1q_s32(vceqq_f64(v10, v27), vceqq_f64(v13, v29))))) & (v4 == v21);
  if (v5 != v22)
  {
    v44 = 0;
  }

  if (v7 == v24)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  if (v14 != v30 || v2 != *(a2 + 16))
  {
    v45 = 0;
  }

  if (v11 == v28 && (v45 & ((v20 | v6 ^ v23) ^ 1)) != 0)
  {
    goto LABEL_31;
  }

  return result;
}

uint64_t specialized static ResolvedTextSuffix.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v39 = v13;
  if (v6 >> 62)
  {
    if (v6 >> 62 != 1)
    {
      if (v12 >> 62 == 2 && v12 == 0x8000000000000000 && !(v8 | v9 | v10 | v11 | v13 | *(a2 + 48)))
      {
        outlined consume of ResolvedTextSuffix(v2, *(a1 + 8), v4, v3, v5, v6);
        outlined consume of ResolvedTextSuffix(0, 0, v10, v11, v13, 0x8000000000000000);
        return 1;
      }

      goto LABEL_15;
    }

    if (v12 >> 62 != 1)
    {
LABEL_15:
      v35 = *a2;
      v36 = *(a2 + 40);
      v37 = *(a2 + 8);
      v26 = *(a1 + 8);
      v27 = *a1;
      outlined copy of ResolvedTextSuffix(*a2, v8, v10, v11, *(a2 + 32), v12);
      outlined copy of ResolvedTextSuffix(v27, v26, v4, v3, v5, v6);
      outlined consume of ResolvedTextSuffix(v27, v26, v4, v3, v5, v6);
      v19 = v35;
      v24 = v36;
      v20 = v37;
      v23 = v39;
      v21 = v10;
      v22 = v11;
      goto LABEL_16;
    }
  }

  else if (v12 >> 62)
  {
    goto LABEL_15;
  }

  v34 = *(a1 + 8);
  v14 = *&v3 == *&v11 && *&v5 == *&v13;
  v33 = *(a2 + 16);
  if (!v14)
  {
LABEL_10:
    v15 = *(a1 + 16);
    v16 = *(a2 + 40);
    v17 = *(a2 + 8);
    v18 = *a1;
    outlined copy of ResolvedTextSuffix(v9, v8, *(a2 + 16), v11, *(a2 + 32), v12);
    outlined copy of ResolvedTextSuffix(v18, v34, v15, v3, v5, v6);
    outlined consume of ResolvedTextSuffix(v18, v34, v15, v3, v5, v6);
    v19 = v9;
    v20 = v17;
    v21 = v33;
    v22 = v11;
    v23 = v39;
    v24 = v16;
LABEL_16:
    outlined consume of ResolvedTextSuffix(v19, v20, v21, v22, v23, v24);
    return 0;
  }

  if (v4)
  {
    if ((v10 & (v2 == v9)) != 1)
    {
      goto LABEL_10;
    }
  }

  else if (v10 & 1 | (v2 != v9))
  {
    goto LABEL_10;
  }

  v28 = *(a1 + 16);
  v29 = *(a2 + 40);
  v30 = *(a2 + 48);
  v38 = *(a2 + 8);
  v31 = *a1;
  outlined copy of ResolvedTextSuffix(v9, v8, *(a2 + 16), v11, *(a2 + 32), v12);
  outlined copy of ResolvedTextSuffix(v31, v34, v28, v3, v5, v6);
  v32 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI16_ShapeStyle_PackV0E0V_Tt1g5(v7, v30);
  outlined consume of ResolvedTextSuffix(v31, v34, v28, v3, v5, v6);
  outlined consume of ResolvedTextSuffix(v9, v38, v33, v11, v39, v29);
  return v32 & 1;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.__Key_lineHeight@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttributedString.LineHeight();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesVAAE02__D11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for AttributedString.LineHeight();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6965590];
  v7 = MEMORY[0x1E69E6720];
  _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtMaTm_0(0, &lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?), &lazy cache variable for type metadata for AttributedString.LineHeight?, v6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  _s7SwiftUI18HoverEffectContextVSgWOcTm_0(a1, &v21 - v12, &lazy cache variable for type metadata for AttributedString.LineHeight?, v6, v7, _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0);
  _s7SwiftUI18HoverEffectContextVSgWOcTm_0(v22, &v13[v15], &lazy cache variable for type metadata for AttributedString.LineHeight?, v6, v7, _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) != 1)
  {
    _s7SwiftUI18HoverEffectContextVSgWOcTm_0(v13, v10, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720], _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0);
    if (v16(&v13[v15], 1, v3) != 1)
    {
      v18 = v21;
      (*(v4 + 32))(v21, &v13[v15], v3);
      lazy protocol witness table accessor for type AttributedString.LineHeight and conformance AttributedString.LineHeight(&lazy protocol witness table cache variable for type AttributedString.LineHeight and conformance AttributedString.LineHeight, MEMORY[0x1E6965590]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v4 + 8);
      v19(v18, v3);
      v19(v10, v3);
      outlined destroy of AttributedString.LineHeight?(v13, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      return v17 & 1;
    }

    (*(v4 + 8))(v10, v3);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v3) != 1)
  {
LABEL_6:
    _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_1(v13, &lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?), &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    v17 = 0;
    return v17 & 1;
  }

  outlined destroy of AttributedString.LineHeight?(v13, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  v17 = 1;
  return v17 & 1;
}

void type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for GlassEffectBackdropObserver?(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_0(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x193AC03C0](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x193AC03C0](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 88))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShapeStyleBox.isEqual(to:)()
{
  v1 = *v0;
  v2 = swift_dynamicCastClass();
  v3 = v2;
  if (v2)
  {
  }

  v6[6] = v3;
  MEMORY[0x1EEE9AC00](v2);
  v6[2] = v0;
  v6[3] = v1;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ShapeStyleBox.isEqual(to:), v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v4, &v7);

  return v7 & 1;
}

uint64_t closure #1 in ShapeStyleBox.isEqual(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, _BYTE *a4@<X8>)
{
  v5 = *(*a2 + 120);
  v6 = *a1 + *(**a1 + 120);
  v9 = *(*a2 + 104);
  v10 = v6;
  v11 = 3;
  result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2 + v5, partial apply for closure #1 in compareValues<A>(_:_:options:), &v8, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a3);
  *a4 = v12;
  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance BackgroundMaterialKey@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DDA6AB0;
  return result;
}

uint64_t type metadata accessor for VibrantColorStyle.Type(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    v7 = a3(255);
    result = a4(v7);
    atomic_store(result, a2);
  }

  return result;
}

uint64_t SecondaryLookupTrackedValue.hasMatchingValue(in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  PropertyList.valueWithSecondaryLookup<A>(_:)(v5, a1, v5, v4);
  swift_checkMetadataState();
  LOBYTE(v4) = (*(AssociatedConformanceWitness + 24))(v2, v10);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance TypesettingConfigurationKey(uint64_t a1, uint64_t a2)
{
  if (!specialized static TypesettingLanguage.Storage.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for TypesettingConfiguration() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = a2 + v4;
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v6 == 1)
  {
    if (v5 == 0.0)
    {
      if (v8 != 0.0)
      {
        LOBYTE(v9) = 0;
      }

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v5 == 1)
    {
      if (*&v8 != 1)
      {
        LOBYTE(v9) = 0;
      }

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*&v8 <= 1uLL)
      {
        v9 = 0;
      }

      if (v9 != 1)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v5 != v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for static DerivedEnvironmentKey.value(in:) in conformance EnvironmentValues.EffectiveFontKey@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(a1);
  *a2 = result;
  return result;
}

BOOL specialized static CUIDesignLibraryCacheKey.Props.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    return *(a1 + 1) == *(a2 + 1);
  }

  return result;
}

uint64_t protocol witness for static DerivedEnvironmentKey.value(in:) in conformance ShouldRedactSymbolImagesKey@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized static ShouldRedactSymbolImagesKey.value(in:)(a1);
  *a2 = result & 1;
  return result;
}

uint64_t specialized static ShouldRedactSymbolImagesKey.value(in:)(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v1);

    if (ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5)
    {

      v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA19UnredactSymbolImageVG_Tt1g5(v1);

LABEL_9:
      v6 = v3 ^ 1;
      return v6 & 1;
    }
  }

  else
  {
    v8[0] = *a1;
    v8[1] = 0;

    v4 = specialized static ShouldRedactContentKey.value(in:)(v8);

    if (v4)
    {
      v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(v1);
      if (v5)
      {
        v3 = *(v5 + 72);
      }

      else
      {
        v3 = 0;
      }

      goto LABEL_9;
    }
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV10IdentifiedV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v31 = *(a1 + 32);
    v32 = v3;
    *v33 = *(a1 + 64);
    *&v33[13] = *(a1 + 77);
    v4 = *(a2 + 48);
    v34 = *(a2 + 32);
    v35 = v4;
    *v36 = *(a2 + 64);
    *&v36[13] = *(a2 + 77);
    if (v31 == v34)
    {
      v5 = (a1 + 96);
      v6 = (a2 + 96);
      do
      {
        if (*(&v31 + 1) != *(&v34 + 1))
        {
          break;
        }

        v8 = *&v33[12];
        v7 = *&v33[16];
        v9 = v33[20];
        v10 = *&v33[24];
        v11 = v33[28];
        v13 = *&v36[12];
        v12 = *&v36[16];
        v14 = v36[20];
        v15 = *&v36[24];
        v16 = v36[28];
        v28 = v32;
        v29 = *v33;
        v30 = *&v33[8];
        v25 = v35;
        v26 = *v36;
        v27 = *&v36[8];
        outlined init with copy of _SymbolEffect.Identified(&v31, v24);
        outlined init with copy of _SymbolEffect.Identified(&v34, v24);
        outlined init with copy of _SymbolEffect.Identified(&v31, v24);
        outlined init with copy of _SymbolEffect.Identified(&v34, v24);
        v17 = static _SymbolEffect.Storage.== infix(_:_:)(&v28, &v25);
        outlined consume of _SymbolEffect.Storage(v25, *(&v25 + 1), v26, v27);
        outlined consume of _SymbolEffect.Storage(v28, *(&v28 + 1), v29, v30);
        outlined destroy of _SymbolEffect.Identified(&v34);
        outlined destroy of _SymbolEffect.Identified(&v31);
        if ((v17 & 1) == 0 || v8 != v13)
        {
          break;
        }

        if (v9)
        {
          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v14 & 1) != 0 || v7 != v12)
        {
          return 0;
        }

        if (v11)
        {
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v16 & 1) != 0 || v10 != v15)
        {
          return 0;
        }

        if (!--v2)
        {
          return 1;
        }

        v18 = v5[1];
        v31 = *v5;
        v32 = v18;
        v19 = v5[2];
        v20 = *(v5 + 45);
        v5 += 4;
        *v33 = v19;
        *&v33[13] = v20;
        v21 = v6[1];
        v34 = *v6;
        v35 = v21;
        *v36 = v6[2];
        v22 = *(v6 + 45);
        v6 += 4;
        *&v36[13] = v22;
      }

      while (v31 == v34);
    }

    return 0;
  }

  return 1;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance SymbolRenderingOptionsKey(__int16 *a1, __int16 *a2)
{
  v2 = *(a1 + 2);
  v3 = *a2;
  v4 = *(a2 + 2);
  v8 = *a1;
  v9 = v2;
  v6 = v3;
  v7 = v4;
  return specialized static SymbolRenderingOptions.== infix(_:_:)(&v8, &v6);
}

BOOL specialized static SymbolRenderingOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v2 == 8)
  {
    if (v5 != 8)
    {
      return 0;
    }
  }

  else if (v2 != v5)
  {
    return 0;
  }

  if (v3 == 2)
  {
    if (v6 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v6 == 2 || ((v3 ^ v6) & 1) != 0)
  {
    return 0;
  }

LABEL_11:
  v9 = v4 == 2;
  if (a2[2] != 2)
  {
    v9 = 0;
  }

  if (v4 != 2)
  {
    v10 = v4 ^ v7 ^ 1;
    if (v7 != 2)
    {
      return v10;
    }
  }

  return v9;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SymbolRenderingOptionsKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1ED52FC63;
  *a1 = static SymbolRenderingOptionsKey.defaultValue;
  *(a1 + 2) = v1;
  return result;
}

uint64_t destroy for SecondaryLookupTrackedValue(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t ResolvedStyledText.StringDrawing.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  v7[6] = *(v0 + 112);
  v7[7] = v1;
  v7[8] = *(v0 + 144);
  v8 = *(v0 + 160);
  v2 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v2;
  v3 = *(v0 + 96);
  v7[4] = *(v0 + 80);
  v7[5] = v3;
  v4 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v4;
  outlined destroy of TextLayoutProperties(v7);

  v5 = *(v0 + 360);

  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:)(void *a1)
{
  return specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in StatefulRule<>.update<A>(to:)(a1, *(v1 + 16));
}

{
  memcpy(__dst, *(v1 + 16), 0x1F9uLL);
  memcpy(v6, a1, 0x1F9uLL);
  outlined destroy of UnaryLayoutEngine<SpacingLayout>(v6);
  memcpy(a1, __dst, 0x1F9uLL);
  return outlined init with copy of UnaryLayoutEngine<SpacingLayout>(__dst, v4);
}

{
  memcpy(__dst, *(v1 + 16), 0x161uLL);
  memcpy(v6, a1, 0x161uLL);
  outlined destroy of LeafLayoutEngine<Image.Resolved>(v6);
  memcpy(a1, __dst, 0x161uLL);
  return outlined init with copy of LeafLayoutEngine<Image.Resolved>(__dst, &v4);
}

uint64_t specialized closure #1 in StatefulRule<>.update<A>(to:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];

  *a1 = v3;
  a1[1] = v4;
}

{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesContentTransitionsKey>, &type metadata for DisablesContentTransitionsKey, &protocol witness table for DisablesContentTransitionsKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesContentTransitionsKey>, &type metadata for DisablesContentTransitionsKey, &protocol witness table for DisablesContentTransitionsKey, type metadata accessor for TransactionPropertyKey);
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

Swift::Void __swiftcall ContentTransition.applyEnvironmentValues(style:layoutDirection:)(SwiftUI::ContentTransition::Style style, SwiftUI::LayoutDirection layoutDirection)
{
  v3 = *layoutDirection;
  v4 = *v2;
  v5 = *(v2 + 8) | (*(v2 + 12) << 32);
  v6 = *(v2 + 13);
  if (*(v2 + 13))
  {
    if (v6 != 1)
    {
      return;
    }

    if (BYTE4(v5) != 2)
    {
      v3 = *(v2 + 12);
    }

    if (v3)
    {
      v7 = 0x100000000;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 & 0xFFFFFFFF00000000 | *(v2 + 8);
  }

  else
  {
    if (BYTE4(v5) == 3)
    {
      v9 = *style.storage;
    }

    else
    {
      v9 = BYTE4(v5);
    }

    if (HIBYTE(*(v2 + 8)) != 2)
    {
      v3 = HIBYTE(*(v2 + 8));
    }

    v10 = (v3 & 1) == 0;
    v11 = 0x1000000;
    if (v10)
    {
      v11 = 0;
    }

    v8 = v11 & 0xFFFFFFFFFF000000 | *(v2 + 8) & 0xFFFFFFLL | (v9 << 32);
  }

  outlined consume of ContentTransition.Storage(v4, v5, v6);
  *v2 = v4;
  *(v2 + 8) = v8;
  *(v2 + 12) = BYTE4(v8);
  *(v2 + 13) = v6;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5Tm(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (result)
  {
  }

  return result;
}

BOOL specialized static Color.ResolvedHDR.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

uint64_t ResolvedStyledText.requiresTransition(to:)(uint64_t a1)
{
  if (v1 == a1)
  {
    return 0;
  }

  if ((*(v1 + 260) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(v1 + 216);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 216);
  if (!v3)
  {
    return 1;
  }

  v16 = 0;
  v4 = v2;
  v5 = v3;
  v6 = [v4 length];
  v7 = swift_allocObject();
  v7[2] = &v16;
  v7[3] = v5;
  v7[4] = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in ResolvedStyledText.requiresTransition(to:);
  *(v8 + 24) = v7;
  aBlock[4] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_12_1;
  v9 = _Block_copy(aBlock);
  v10 = v4;
  v11 = v5;

  [v10 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v9}];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v13 = v16;
    v14 = [v11 length];

    return v13 != v14;
  }

  return result;
}

uint64_t sub_18D1F3C18()
{

  return swift_deallocObject();
}

void ResolvedStyledText.modifyTransition(state:to:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    goto LABEL_18;
  }

  v4 = v2[27];
  if (v4)
  {
    v6 = [v4 string];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = *(a2 + 216);
    if (!v10)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = *(a2 + 216);
    if (!v10)
    {
      goto LABEL_18;
    }

    v9 = 0;
    v7 = 0;
  }

  v11 = [v10 string];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v9)
  {
    if (v14)
    {
      if (v7 == v12 && v9 == v14)
      {

        goto LABEL_18;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else if (!v14)
  {
    goto LABEL_18;
  }

LABEL_15:

LABEL_16:
  v15 = *a1;
  v16 = *(a1 + 8) | (*(a1 + 12) << 32);
  if (*(a1 + 13))
  {
LABEL_17:
    outlined consume of ContentTransition.Storage(v15, v16, *(a1 + 13));
    *a1 = 0x8000000004;
    *(a1 + 12) = 3;
    *(a1 + 8) = 0x2000000;
    goto LABEL_18;
  }

  v20 = (v15 >> 38) & 3;
  if (((v15 >> 38) & 3) > 1)
  {
    if (v20 == 3 || __PAIR128__((__CFADD__(v15, 0xFFFFFF7FFFFFFFFFLL) + *(a1 + 8) - 1) & 0xFFFFFF, v15 - 0x8000000001) >= 2)
    {
      goto LABEL_17;
    }
  }

  else if (!v20)
  {
    v21 = *(a1 + 8) & 0xFF000000;
    v22 = *(a1 + 8) | (*(a1 + 12) << 32);
    outlined consume of ContentTransition.Storage(v15, v16, 0);
    *a1 = 1;
    *(a1 + 12) = BYTE4(v22);
    *(a1 + 8) = v21;
    *(a1 + 13) = 0;
  }

LABEL_18:
  if (!*(a1 + 13))
  {
    v17 = *a1;
    if ((*a1 & 0xC000000000) == 0x4000000000 && (v17 & 0xFF0000000000) == 0x20000000000)
    {
      v18 = *(a1 + 8) | (*(a1 + 12) << 32);
      v19 = v17 & 0xFFFF000000000000 | ((((*(*v2 + 208))() & 1) == 0) << 40) | v17 | ((BYTE4(v17) & 1) << 32) | 0x4000000000;
      outlined consume of ContentTransition.Storage(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *(a1 + 13));
      *a1 = v19;
      *(a1 + 12) = BYTE4(v18);
      *(a1 + 8) = v18;
      *(a1 + 13) = 0;
    }
  }
}

void ViewGraphHost.startDisplayLink(delay:makeCADisplayLink:)(uint64_t (*a1)(id *, char *), double a2)
{
  v3 = v2;
  v5 = *(v2 + 136);
  if (v5)
  {
    goto LABEL_5;
  }

  v7 = type metadata accessor for ViewGraphDisplayLink();
  v8 = objc_allocWithZone(v7);

  v19[3] = v7;
  v19[0] = ViewGraphDisplayLink.init(host:)();
  v9 = v19[0];
  v10 = a1(v19, sel_displayLinkTimer_);
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link];
    *&v9[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link] = v10;
    v12 = v10;

    v13 = [objc_opt_self() mainRunLoop];
    [v12 addToRunLoop:v13 forMode:*MEMORY[0x1E695DA28]];

    v14 = *(v3 + 136);
    *(v3 + 136) = v9;
    v9 = v14;
  }

  v5 = *(v3 + 136);
  if (v5)
  {
LABEL_5:
    v15 = *(v3 + 88);
    swift_beginAccess();
    if ((*(v15 + 384) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = *(v15 + 384);
    }

    v17 = v5;

    ViewGraphDisplayLink.setNextUpdate(delay:interval:reasons:)(v18, a2, v16);

    ViewGraphHost.clearUpdateTimer()();
  }

  else
  {
    ViewGraphHost.startUpdateTimer(delay:)(a2);
  }
}

id ViewGraphDisplayLink.init(host:)()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link] = 0;
  swift_weakInit();
  *&v0[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate] = 0x7FF0000000000000;
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentUpdate];
  *v2 = 0;
  v2[8] = 1;
  *&v0[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_interval] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_reasons] = MEMORY[0x1E69E7CD0];
  v0[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentThread] = 0;
  v0[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread] = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_weakAssign();

  return v3;
}

uint64_t Path.retainRBPath()()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if (v2 > 2)
  {
    if (v2 == 5)
    {
      if (*(v1 + 16))
      {
        if (*(v1 + 16) != 1)
        {
          v4 = one-time initialization token for bufferCallbacks;

          if (v4 != -1)
          {
            swift_once();
          }

          goto LABEL_17;
        }

LABEL_8:

LABEL_17:
        v5 = RBPathRetain();
        outlined destroy of Path(v0);
        return v5;
      }

      if (*(v1 + 24))
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    else if (v2 == 6)
    {
      return *MEMORY[0x1E69C71E0];
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!*(v0 + 32))
  {
    return RBPathMakeRect();
  }

  if (v2 == 1)
  {
    return RBPathMakeEllipse();
  }

  return RBPathMakeRoundedRect();
}

uint64_t @objc closure #5 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks(uint64_t a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(v3 + 24);

  return v4;
}

uint64_t @objc closure #3 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = MEMORY[0x193AC3600](v5 + 24, a2, a3);

  return v6;
}

uint64_t Path.PathBox.__deallocating_deinit()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      RBPathRelease();
    }

    else
    {
      MEMORY[0x193AC3610](v0 + 24);
    }
  }

  else
  {
    v1 = *(v0 + 24);
    if (!v1)
    {
      __break(1u);
      return result;
    }
  }

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance SymbolVariantsKey(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return specialized static SymbolVariants.== infix(_:_:)(&v5, &v4) & 1;
}

uint64_t specialized static SymbolVariants.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v3 == 3 || v2 != v3)
  {
    return 0;
  }

  return 1;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SymbolVariantsKey@<X0>(_WORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static SymbolVariantsKey.defaultValue;
  return result;
}

uint64_t protocol witness for static DerivedEnvironmentKey.value(in:) in conformance EnvironmentValues.EffectiveSymbolFontKey@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static EnvironmentValues.EffectiveSymbolFontKey.value(in:)(a1);
  *a2 = result;
  return result;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance UIKitPlatformColorProvider@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PlatformColorProvider.resolveHDR(in:)(*a1, a1[1], *v2, &v5);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

__n128 protocol witness for Animatable.animatableData.getter in conformance CGPoint@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Void __swiftcall AnimatableAttribute.updateValue()()
{
  v2 = v0;
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v17[-v6];
  v9 = *(v8 + 48);
  Value = AGGraphGetValue();
  v12 = v11;
  (*(*(v3 - 8) + 16))(v7, Value, v3);
  *(v7 + v9) = v12 & 1;
  v13 = *(v1 + 4);
  v14 = type metadata accessor for AnimatableAttributeHelper();
  v19 = *(v14 + 16);
  OutputValue = AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v7, 0, v13, _ViewInputs.base.modify, v18, v14);
  if ((*(v7 + v9) & 1) != 0 || (OutputValue = AGGraphGetOutputValue()) == 0)
  {
    MEMORY[0x1EEE9AC00](OutputValue);
    *&v17[-16] = v2;
    *&v17[-8] = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v7, partial apply for closure #1 in StatefulRule.value.setter, &v17[-32], v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
    (*(v5 + 8))(v7, TupleTypeMetadata2);
  }

  else
  {
    (*(v5 + 8))(v7, TupleTypeMetadata2);
  }
}

uint64_t AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unint64_t *a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v245 = a5;
  LODWORD(v248) = a3;
  v235 = a2;
  v252 = a1;
  v277 = *MEMORY[0x1E69E9840];
  v257 = type metadata accessor for OSSignpostID();
  v256 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v260 = &v223 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v241 = &v223 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v246 = &v223 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v236 = &v223 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v247 = &v223 - v17;
  MEMORY[0x1EEE9AC00](v18);
  DynamicType = &v223 - v19;
  v20 = *(a6 + 16);
  v240 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v223 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v259 = type metadata accessor for Optional();
  v258 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v27 = &v223 - v26;
  v250 = AssociatedTypeWitness;
  v249 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v28);
  v243 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v255 = (&v223 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v223 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v244 = (&v223 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v223 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v223 - v41;
  v253 = a6;
  v251 = *(a6 + 48);
  if (*(v6 + v251))
  {
    Value = AGGraphGetValue();
    if (v44)
    {
      v45 = *Value;
    }

    else
    {
      v45 = -INFINITY;
    }
  }

  else
  {
    v45 = -INFINITY;
  }

  v254 = v6;
  v46 = AnimatableAttributeHelper.checkReset()();
  v47 = v252;
  if (v46)
  {
    *(v47 + *(swift_getTupleTypeMetadata2() + 48)) = 1;
  }

  result = swift_getTupleTypeMetadata2();
  v242 = *(result + 48);
  if (*(v47 + v242) != 1)
  {
    v56 = v250;
    v59 = v254;
    v57 = v255;
    goto LABEL_99;
  }

  v231 = v39;
  v233 = a4;
  (*(v24 + 24))(v20, v24);
  v49 = v42;
  v50 = v258;
  v51 = v258[2];
  v232 = *(v253 + 44);
  v52 = v259;
  v51(v27, v254 + v232, v259);
  v53 = v249;
  v54 = v250;
  v55 = (*(v249 + 48))(v27, 1, v250);
  v238 = v49;
  if (v55 == 1)
  {
    (v50[1])(v27, v52);
    v56 = v54;
    v57 = v255;
    v58 = v52;
LABEL_15:
    v47 = v252;
    goto LABEL_98;
  }

  v60 = v231;
  (*(v53 + 32))(v231, v27, v54);
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(v53 + 8))(v60, v54);
    v56 = v54;
LABEL_14:
    v57 = v255;
    v58 = v259;
    v50 = v258;
    goto LABEL_15;
  }

  AGGraphClearUpdate();
  closure #1 in AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v254, &v265);
  AGGraphSetUpdate();
  v61 = v265;
  v225 = Transaction.effectiveAnimation.getter(*&v265);
  v239 = v24;
  if (v225)
  {
    v62 = v20;
    v53 = v249;
  }

  else
  {
    v53 = v249;
    if (!v235)
    {
      v56 = v250;
      (*(v249 + 8))(v231, v250);

      goto LABEL_14;
    }

    v62 = v20;
  }

  v63 = *(v53 + 16);
  v64 = v244;
  v65 = v250;
  v63(v244, v238, v250);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  v66 = v254;
  v45 = *AGGraphGetValue();
  v47 = *(v66 + v251);
  v234 = v62;
  v224 = v61;
  if (!v47)
  {
    v63(v34, v64, v65);
    v271 = v45;
    v264 = v62;
    swift_getMetatypeMetadata();
    v265 = *&v65;
    swift_getExtendedExistentialTypeMetadata();
    v104 = swift_dynamicCast();
    if (v104)
    {
      v105 = v265;
    }

    else
    {
      v105 = 0.0;
    }

    if (v104)
    {
      v106 = v266;
    }

    else
    {
      v106 = 0;
    }

    type metadata accessor for AnimatorState();
    swift_allocObject();

    v107 = v225;

    v226 = AnimatorState.init(animation:interval:at:in:finishingDefinition:)(v108, v34, &v271, *&v61, *&v105, v106);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v110 = CurrentAttribute;
    LODWORD(v247) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v247)
    {
      v111 = 0;
    }

    else
    {
      v111 = CurrentAttribute;
    }

    v112 = v240;
    v240[2](v23, v252, v62);
    DynamicType = swift_getDynamicType();
    v113 = v112[1](v23, v62);
    (*(*v107 + 96))(&v271, v113);
    v115 = v271;
    v114 = v272;
    v57 = v273;
    v58 = v274;
    v116 = v275;
    v117 = v276;
    v263 = 0x7FF8000000000000;
    v264 = 0x7FF8000000000000;
    v261 = 0x7FF8000000000000;
    v262 = 0x3FF0000000000000;
    v265 = v271;
    v266 = v272;
    v267 = v273;
    v268 = v274;
    v269 = v275;
    LOBYTE(v270) = v276;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v265, &v264, &v263, &v262, &v261);
    v118 = v263;
    v119 = v264;
    v120 = v261;
    v121 = v262;
    if (one-time initialization token for enabledCategories != -1)
    {
      v240 = v264;
      v230 = v263;
      v235 = v262;
      v229 = v261;
      swift_once();
      v120 = v229;
      v121 = v235;
      v118 = v230;
      v119 = v240;
    }

    v24 = v239;
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v122 = static CustomEventTrace.recorder) != 0)
      {
        v123 = v110 == v247;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v124 = *(v122 + 16);
        LODWORD(v265) = v111;
        BYTE4(v265) = v123;
        v266 = DynamicType;
        v267 = v119;
        v268 = v118;
        v269 = v121;
        v270 = v120;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v240 = v125;

        v126 = v124;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v115, v114, v57, v58, v116, v117);
      }

      else
      {
        outlined consume of Animation.Function(*&v115, v114, v57, v58, v116, v117);
      }

      v127 = one-time initialization token for animationState;

      v47 = v252;
      v57 = v255;
      v58 = v259;
      v115 = v224;
      if (v127 == -1)
      {
LABEL_59:
        v87 = *(&static Signpost.animationState + 1);
        v88 = *&static Signpost.animationState;
        LOBYTE(v56) = word_1ED5283E8;
        LOBYTE(v73) = HIBYTE(word_1ED5283E8);
        v128 = byte_1ED5283EA;
        LODWORD(v240) = static os_signpost_type_t.begin.getter();
        v265 = *&v88;
        v266 = v87;
        LOBYTE(v267) = v56;
        BYTE1(v267) = v73;
        BYTE2(v267) = v128;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v143 = v226;

          *(v254 + v251) = v143;
          v56 = v250;
          goto LABEL_97;
        }

        v129 = one-time initialization token for _signpostLog;

        if (v129 != -1)
        {
          goto LABEL_199;
        }

        goto LABEL_61;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_59;
  }

  v265 = v45;

  LOBYTE(v271) = 0;
  v67 = v225;
  v226 = v47;
  AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v225, v64, &v265, *&v61);
  v68 = AGGraphGetCurrentAttribute();
  v69 = v68;
  LODWORD(v47) = *MEMORY[0x1E698D3F8];
  if (v68 == *MEMORY[0x1E698D3F8])
  {
    v70 = 0;
  }

  else
  {
    v70 = v68;
  }

  LODWORD(v235) = v70;
  v71 = v240;
  v240[2](v23, v252, v62);
  v230 = swift_getDynamicType();
  v72 = v71[1](v23, v62);
  (*(*v67 + 96))(&v271, v72);
  v73 = *&v271;
  v56 = v272;
  v57 = v273;
  v74 = v274;
  v263 = 0x7FF8000000000000;
  v264 = 0x7FF8000000000000;
  v261 = 0x7FF8000000000000;
  v262 = 0x3FF0000000000000;
  v265 = v271;
  v266 = v272;
  v267 = v273;
  v268 = v274;
  v75 = v275;
  v269 = v275;
  LODWORD(v246) = v276;
  LOBYTE(v270) = v276;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v265, &v264, &v263, &v262, &v261);
  v76 = v263;
  v77 = v264;
  v78 = v261;
  v79 = v262;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_194;
  }

  while (1)
  {
    v24 = v239;
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_195:
      swift_once();
      goto LABEL_33;
    }

    v80 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v236) = v47;
    if (v80 && (v81 = static CustomEventTrace.recorder) != 0)
    {
      v82 = v69 == v236;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v83 = *(v81 + 16);
      LODWORD(v265) = v235;
      BYTE4(v265) = v82;
      v266 = v230;
      v267 = v77;
      v268 = v76;
      v269 = v79;
      v270 = v78;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      v240 = v84;

      v85 = v83;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v73, v56, v57, v74, v75, v246);
    }

    else
    {
      outlined consume of Animation.Function(v73, v56, v57, v74, v75, v246);
    }

    v86 = one-time initialization token for animationState;

    v56 = v250;
    v57 = v255;
    if (v86 != -1)
    {
      goto LABEL_195;
    }

LABEL_33:
    v87 = *(&static Signpost.animationState + 1);
    v88 = *&static Signpost.animationState;
    v89 = word_1ED5283E8;
    v47 = HIBYTE(word_1ED5283E8);
    v90 = byte_1ED5283EA;
    v91 = static os_signpost_type_t.event.getter();
    v265 = *&v88;
    v266 = v87;
    LOBYTE(v267) = v89;
    BYTE1(v267) = v47;
    BYTE2(v267) = v90;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      v47 = v252;
      goto LABEL_95;
    }

    LODWORD(v246) = v91;
    v92 = one-time initialization token for _signpostLog;

    if (v92 != -1)
    {
      swift_once();
    }

    v93 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_18DDAF080;
    v94 = AGGraphGetCurrentAttribute();
    v95 = v236;
    if (v94 == v236)
    {
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      swift_once();
LABEL_61:
      v130 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v131 = swift_allocObject();
      *(v131 + 1) = xmmword_18DDAF080;
      v132 = AGGraphGetCurrentAttribute();
      v47 = v247;
      if (v132 == v247)
      {
        __break(1u);
      }

      else
      {
        v133 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v135 = MEMORY[0x1E69E6870];
        *(v131 + 7) = MEMORY[0x1E69E6810];
        *(v131 + 8) = v135;
        *(v131 + 4) = Counter;
        v136 = AGGraphGetCurrentAttribute();
        if (v136 != v47)
        {
          v137 = MEMORY[0x1E69E76D0];
          *(v131 + 12) = MEMORY[0x1E69E7668];
          *(v131 + 13) = v137;
          *(v131 + 18) = v136;
          v138 = _typeName(_:qualified:)();
          v140 = v139;
          *(v131 + 17) = MEMORY[0x1E69E6158];
          *(v131 + 18) = lazy protocol witness table accessor for type String and conformance String();
          *(v131 + 14) = v138;
          *(v131 + 15) = v140;
          if ((v73 & 1) == 0)
          {
LABEL_158:
            v230 = v88;
            if (v88 == 20)
            {
              a4 = 3;
            }

            else
            {
              a4 = 4;
            }

            v20 = bswap32(v88) | (4 * WORD1(v88));
            LODWORD(v148) = v240;
            v206 = v256 + 16;
            v227 = *(v256 + 16);
            v207 = v227(v246, v236, v257);
            v56 = 0;
            LOBYTE(v271) = 1;
            DynamicType = (16 * a4);
            v228 = v206;
            v240 = (v206 - 8);
            v235 = v131 + 32;
            v229 = a4;
            do
            {
              v247 = &v223;
              MEMORY[0x1EEE9AC00](v207);
              v73 = &v223 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0);
              v24 = v73 + 8;
              v209 = a4;
              v210 = (v73 + 8);
              do
              {
                *(v210 - 1) = 0;
                *v210 = 0;
                v210 += 16;
                --v209;
              }

              while (v209);
              v151 = &v235[40 * v56];
              while (1)
              {
                v211 = *(v131 + 2);
                if (v56 == v211)
                {
                  break;
                }

                if (v56 >= v211)
                {
                  goto LABEL_186;
                }

                ++v56;
                outlined init with copy of AnyTrackedValue(v151, &v265);
                v212 = v268;
                v47 = v269;
                __swift_project_boxed_opaque_existential_1(&v265, v268);
                *(v24 - 8) = CVarArg.kdebugValue(_:)(v20 | v148, v212);
                *v24 = v213 & 1;
                v24 += 16;
                v146 = __swift_destroy_boxed_opaque_existential_1(&v265);
                v151 += 40;
                if (!--a4)
                {
                  goto LABEL_170;
                }
              }

              LOBYTE(v271) = 0;
LABEL_170:
              v214 = v230;
              if (v230 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v24 = v239;
              v58 = v259;
              if (*(v73 + 8) == 1)
              {
                kdebug_trace_string();
              }

              if (*(v73 + 24) == 1)
              {
                kdebug_trace_string();
              }

              if (*(v73 + 40) == 1)
              {
                kdebug_trace_string();
              }

              if (v214 != 20 && *(v73 + 56) == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v215 = *v240;
              v216 = v246;
              v217 = v257;
              (*v240)(v246, v257);
              v218 = __swift_project_value_buffer(v217, static OSSignpostID.continuation);
              v207 = v227(v216, v218, v217);
              a4 = v229;
            }

            while ((LOBYTE(v271) & 1) != 0);
            v219 = v226;

            v220 = v257;
            v215(v246, v257);
            v215(v236, v220);

            *(v254 + v251) = v219;
            v47 = v252;
            v56 = v250;
            v57 = v255;
            goto LABEL_96;
          }

          LOBYTE(v261) = v240;
          v263 = v130;
          v264 = &dword_18D018000;
          v265 = *&v88;
          v266 = v87;
          LOBYTE(v267) = v56;
          v271 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ started");
          v272 = 39;
          LOBYTE(v273) = 2;
          v262 = v131;
          v141 = v236;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          v142 = v226;

          (*(v256 + 8))(v141, v257);

          *(v254 + v251) = v142;
LABEL_65:
          v47 = v252;
          v56 = v250;
          v57 = v255;
          goto LABEL_95;
        }
      }

      __break(1u);
    }

    v96 = AGGraphGetAttributeGraph();
    v56 = AGGraphGetCounter();

    v97 = MEMORY[0x1E69E6870];
    *(v73 + 56) = MEMORY[0x1E69E6810];
    *(v73 + 64) = v97;
    *(v73 + 32) = v56;
    v98 = AGGraphGetCurrentAttribute();
    if (v98 == v95)
    {
      goto LABEL_198;
    }

    v99 = MEMORY[0x1E69E76D0];
    *(v73 + 96) = MEMORY[0x1E69E7668];
    *(v73 + 104) = v99;
    *(v73 + 72) = v98;
    v100 = _typeName(_:qualified:)();
    v102 = v101;
    *(v73 + 136) = MEMORY[0x1E69E6158];
    *(v73 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v73 + 112) = v100;
    *(v73 + 120) = v102;
    if (v47)
    {
      LOBYTE(v261) = v246;
      v263 = v93;
      v264 = &dword_18D018000;
      v265 = *&v88;
      v266 = v87;
      LOBYTE(v267) = v89;
      v271 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ updated");
      v272 = 39;
      LOBYTE(v273) = 2;
      v262 = v73;
      v103 = DynamicType;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

      (*(v256 + 8))(v103, v257);

      goto LABEL_65;
    }

    v230 = v88;
    if (v88 == 20)
    {
      a4 = 3;
    }

    else
    {
      a4 = 4;
    }

    v20 = bswap32(v88) | (4 * WORD1(v88));
    v56 = v246;
    v144 = v256 + 16;
    v227 = *(v256 + 16);
    v145 = v227(v247, DynamicType, v257);
    v24 = 0;
    LOBYTE(v271) = 1;
    v236 = (16 * a4);
    v228 = v144;
    v240 = (v144 - 8);
    v235 = (v73 + 32);
    v229 = a4;
LABEL_72:
    v246 = &v223;
    MEMORY[0x1EEE9AC00](v145);
    v131 = &v223 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
    v148 = v131 + 8;
    v149 = a4;
    v150 = v131 + 8;
    do
    {
      *(v150 - 1) = 0;
      *v150 = 0;
      v150 += 16;
      --v149;
    }

    while (v149);
    v151 = &v235[40 * v24];
    while (1)
    {
      v152 = *(v73 + 16);
      if (v24 == v152)
      {
        LOBYTE(v271) = 0;
LABEL_80:
        v155 = v230;
        if (v230 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v57 = v255;
        if (v131[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v131[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v131[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v155 != 20 && v131[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v156 = *v240;
        v157 = v247;
        v158 = v257;
        (*v240)(v247, v257);
        v159 = __swift_project_value_buffer(v158, static OSSignpostID.continuation);
        v145 = v227(v157, v159, v158);
        a4 = v229;
        if ((LOBYTE(v271) & 1) == 0)
        {

          v160 = v257;
          v156(v247, v257);
          v156(DynamicType, v160);

          v47 = v252;
          v24 = v239;
          v56 = v250;
LABEL_95:
          v58 = v259;
LABEL_96:
          v115 = v224;
LABEL_97:
          AnimatorState.addListeners(transaction:)(*&v115);

          v53 = v249;
          v161 = *(v249 + 8);
          v161(v244, v56);
          v161(v231, v56);
          v20 = v234;
          v50 = v258;
LABEL_98:
          v59 = v254;
          v162 = v232;
          (v50[1])(v254 + v232, v58);
          (*(v53 + 32))(v59 + v162, v238, v56);
          result = (*(v53 + 56))(v59 + v162, 0, 1, v56);
          a4 = v233;
LABEL_99:
          v131 = *(v59 + v251);
          if (!v131)
          {
            return result;
          }

          v163 = *(v24 + 24);

          v163(v20, v24);
          v265 = v45;
          LOBYTE(v271) = 0;
          v164 = AnimatorState.update(_:at:environment:)(v57, &v265, v248);
          v146 = AGGraphGetCurrentAttribute();
          v73 = *MEMORY[0x1E698D3F8];
          if (v146 == v73)
          {
            LODWORD(v148) = 0;
          }

          else
          {
            LODWORD(v148) = v146;
          }

          v151 = &type metadata instantiation cache for TupleTypeDescription;
          if (v164)
          {
            if (one-time initialization token for enabledCategories != -1)
            {
              goto LABEL_187;
            }

            goto LABEL_105;
          }

          if (one-time initialization token for enabledCategories == -1)
          {
LABEL_118:
            v180 = *(v151 + 77);
            if (*(v180 + 16) >= 0x43uLL)
            {
              if (*(v180 + 98) == 1 && static CustomEventTrace.recorder)
              {
                *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
                LODWORD(v265) = v148;
                BYTE4(v265) = v146 == v73;
                type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
                AGGraphAddTraceEvent();
              }

              AnimatorState.nextUpdate()();
              v265 = v45;
              v171 = v255;
              (a4)(v255, &v265);
              goto LABEL_155;
            }

            __break(1u);
LABEL_191:
            swift_once();
            goto LABEL_110;
          }

LABEL_189:
          v222 = v146;
          swift_once();
          v146 = v222;
          goto LABEL_118;
        }

        goto LABEL_72;
      }

      if (v24 >= v152)
      {
        break;
      }

      ++v24;
      outlined init with copy of AnyTrackedValue(v151, &v265);
      v153 = v268;
      v47 = v269;
      __swift_project_boxed_opaque_existential_1(&v265, v268);
      *(v148 - 1) = CVarArg.kdebugValue(_:)(v20 | v56, v153);
      *v148 = v154 & 1;
      v148 += 16;
      v146 = __swift_destroy_boxed_opaque_existential_1(&v265);
      v151 += 40;
      if (!--a4)
      {
        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v221 = v146;
    swift_once();
    v146 = v221;
LABEL_105:
    v165 = *(v151 + 77);
    if (*(v165 + 16) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_189;
    }

    v240 = v131;
    if (*(v165 + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v265) = v148;
      BYTE4(v265) = v146 == v73;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v131 = v47;
    v239 = v24;
    v234 = v20;
    v166 = one-time initialization token for animationState;

    if (v166 != -1)
    {
      goto LABEL_191;
    }

LABEL_110:
    v167 = *(&static Signpost.animationState + 1);
    v75 = *&static Signpost.animationState;
    v47 = word_1ED5283E8;
    v168 = HIBYTE(word_1ED5283E8);
    v169 = byte_1ED5283EA;
    v69 = static os_signpost_type_t.end.getter();
    v265 = *&v75;
    v266 = v167;
    LOBYTE(v267) = v47;
    BYTE1(v267) = v168;
    BYTE2(v267) = v169;
    v170 = Signpost.isEnabled.getter();
    v171 = v255;
    if ((v170 & 1) == 0)
    {

      v181 = v254;
      v47 = v131;
      goto LABEL_152;
    }

    v172 = one-time initialization token for _signpostLog;
    v57 = v240;

    if (v172 != -1)
    {
      swift_once();
    }

    v74 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v131 = swift_allocObject();
    *(v131 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v73)
    {
      __break(1u);
      goto LABEL_193;
    }

    v57 = AGGraphGetAttributeGraph();
    v56 = AGGraphGetCounter();

    v173 = MEMORY[0x1E69E6870];
    *(v131 + 7) = MEMORY[0x1E69E6810];
    *(v131 + 8) = v173;
    *(v131 + 4) = v56;
    v174 = AGGraphGetCurrentAttribute();
    if (v174 != v73)
    {
      break;
    }

LABEL_193:
    __break(1u);
LABEL_194:
    v240 = v77;
    v228 = v76;
    v229 = v79;
    v227 = v78;
    swift_once();
    v78 = v227;
    v79 = v229;
    v76 = v228;
    v77 = v240;
  }

  v175 = MEMORY[0x1E69E76D0];
  *(v131 + 12) = MEMORY[0x1E69E7668];
  *(v131 + 13) = v175;
  *(v131 + 18) = v174;
  v176 = _typeName(_:qualified:)();
  v178 = v177;
  *(v131 + 17) = MEMORY[0x1E69E6158];
  *(v131 + 18) = lazy protocol witness table accessor for type String and conformance String();
  *(v131 + 14) = v176;
  *(v131 + 15) = v178;
  if (v168)
  {
    LOBYTE(v261) = v69;
    v263 = v74;
    v264 = &dword_18D018000;
    v265 = *&v75;
    v266 = v167;
    LOBYTE(v267) = v47;
    v271 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ ended");
    v272 = 37;
    LOBYTE(v273) = 2;
    v262 = v131;
    v179 = v241;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v256 + 8))(v179, v257);
  }

  else
  {
    v182 = v75;
    if (v75 == 20)
    {
      v183 = 3;
    }

    else
    {
      v183 = 4;
    }

    v184 = bswap32(v75) | (4 * (v75 >> 16));
    v185 = v69;
    v186 = v256 + 16;
    v244 = *(v256 + 16);
    v187 = (v244)(v260, v241, v257);
    *&v88 = 0.0;
    LOBYTE(v271) = 1;
    v259 = v183;
    v247 = (16 * v183);
    v256 = v186;
    v248 = (v186 - 8);
    v246 = v131 + 32;
    v245 = v182;
    do
    {
      v258 = &v223;
      MEMORY[0x1EEE9AC00](v187);
      v189 = &v223 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
      v190 = v189 + 8;
      v191 = v259;
      v192 = v189 + 8;
      do
      {
        *(v192 - 1) = 0;
        *v192 = 0;
        v192 += 16;
        --v191;
      }

      while (v191);
      v193 = &v246[40 * v88];
      v194 = v259;
      while (1)
      {
        v195 = *(v131 + 2);
        if (v88 == v195)
        {
          break;
        }

        if (v88 >= v195)
        {
          __break(1u);
          goto LABEL_158;
        }

        ++v88;
        outlined init with copy of AnyTrackedValue(v193, &v265);
        v196 = v268;
        v47 = v269;
        __swift_project_boxed_opaque_existential_1(&v265, v268);
        *(v190 - 1) = CVarArg.kdebugValue(_:)(v184 | v185, v196);
        *v190 = v197 & 1;
        v190 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v265);
        v193 += 40;
        if (!--v194)
        {
          goto LABEL_136;
        }
      }

      LOBYTE(v271) = 0;
LABEL_136:
      v198 = v245;
      if (v245 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v189[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v189[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v189[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v198 != 20 && v189[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v199 = *v248;
      v200 = v260;
      v201 = v257;
      (*v248)(v260, v257);
      v202 = __swift_project_value_buffer(v201, static OSSignpostID.continuation);
      v187 = (v244)(v200, v202, v201);
    }

    while ((LOBYTE(v271) & 1) != 0);

    v203 = v257;
    v199(v260, v257);
    v199(v241, v203);
  }

  v47 = v252;
  v56 = v250;
  v181 = v254;
  v171 = v255;
LABEL_152:
  v20 = v234;
  v24 = v239;
  if (*(v181 + *(v253 + 48)))
  {
    AnimatorState.removeListeners()();
  }

  *(v181 + v251) = 0;
LABEL_155:
  v204 = v249;
  v205 = v243;
  (*(v249 + 16))(v243, v171, v56);
  (*(v24 + 32))(v205, v20, v24);

  result = (*(v204 + 8))(v171, v56);
  *(v47 + v242) = 1;
  return result;
}