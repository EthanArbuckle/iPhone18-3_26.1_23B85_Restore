uint64_t closure #1 in UpdateCoalescingCollectionView.updateContent()@<X0>(uint64_t a1@<X8>)
{
  AGGraphClearUpdate();
  v2 = type metadata accessor for BridgedListState(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(WeakValue, a1, type metadata accessor for BridgedListState);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  (*(*(v2 - 8) + 56))(a1, v4, 1, v2);
  return AGGraphSetUpdate();
}

uint64_t static PlatformItemListGeneratingViewModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v35 = a7;
  v13 = a2[3];
  v14 = a2[1];
  v72 = a2[2];
  v73 = v13;
  v15 = a2[3];
  v74 = a2[4];
  v16 = a2[1];
  v70 = *a2;
  v71 = v16;
  v66 = v72;
  v67 = v15;
  v68 = a2[4];
  v17 = *a1;
  v75 = *(a2 + 20);
  v69 = *(a2 + 20);
  v64 = v70;
  v65 = v14;
  outlined init with copy of _ViewInputs(&v70, v78);
  _GraphInputs.pushStableIndex(_:)(0);
  v76[2] = v66;
  v76[3] = v67;
  v76[4] = v68;
  v77 = v69;
  v76[0] = v64;
  v76[1] = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v63 = v69;
  v58 = v64;
  v59 = v65;
  v18 = outlined init with copy of _ViewInputs(v76, v78);
  a3(v56, v18, &v58);
  v78[2] = v60;
  v78[3] = v61;
  v78[4] = v62;
  v79 = v63;
  v78[0] = v58;
  v78[1] = v59;
  outlined destroy of _ViewInputs(v78);
  v19 = *&v56[0];
  v20 = DWORD2(v56[0]);
  v37 = HIDWORD(v56[0]);
  v21 = v73;
  *&v58 = v73;
  DWORD2(v58) = DWORD2(v73);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 && (lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput(), PropertyList.subscript.getter(), v36 = v19, v22 = v58, v23 = (*(a6 + 8))(a4, a6), v24 = (v23 & ~v22) == 0, v19 = v36, v24))
  {
    v33[1] = v33;
    v34 = a8;
    MEMORY[0x1EEE9AC00](v23);
    LODWORD(v56[0]) = v17;
    *&v58 = a4;
    *(&v58 + 1) = a5;
    *&v59 = a6;
    *(&v59 + 1) = v35;
    type metadata accessor for PlatformItemListGeneratingViewModifier();
    type metadata accessor for _GraphValue();
    _GraphValue.subscript.getter();
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v63 = v75;
    v58 = v70;
    v59 = v71;
    _ViewInputs.withoutGeometryDependencies.getter();
    _GraphInputs.pushStableIndex(_:)(1);
    PreferenceKeys.remove(_:)();
    _GraphValue.init(_:)();
    v56[2] = v52;
    v56[3] = v53;
    v56[4] = v54;
    v57 = v55;
    v56[0] = v50;
    v56[1] = v51;
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v44 = v50;
    v45 = v51;
    outlined init with copy of _ViewInputs(v56, &v58);
    static View.makeDebuggableView(view:inputs:)();
    v60 = v46;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v58 = v44;
    v59 = v45;
    outlined destroy of _ViewInputs(&v58);
    *&v44 = v19;
    DWORD2(v44) = v20;

    PairwisePreferenceCombinerVisitor.init(outputs:)();
    v40 = v21;
    v41 = 0;
    v25 = *(v21 + 16);
    if (v25)
    {
      lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

      v26 = 1;
      do
      {
        v27 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
        v27(&v44, 0);
        v41 = v26;
        static PreferenceKey.visitKey<A>(_:)();
        ++v26;
      }

      while (v26 - v25 != 1);
    }

    else
    {
    }

    v38[2] = v52;
    v38[3] = v53;
    v38[4] = v54;
    v39 = v55;
    v38[0] = v50;
    v38[1] = v51;
    outlined destroy of _ViewInputs(v38);
    v46 = v66;
    v47 = v67;
    v48 = v68;
    v49 = v69;
    v44 = v64;
    v45 = v65;
    outlined destroy of _ViewInputs(&v44);

    v30 = v34;
    *(v34 + 12) = v37;
    v31 = v42;
    v32 = v43;

    *v30 = v31;
    *(v30 + 8) = v32;
  }

  else
  {
    v60 = v66;
    v61 = v67;
    v62 = v68;
    v63 = v69;
    v58 = v64;
    v59 = v65;
    result = outlined destroy of _ViewInputs(&v58);
    *a8 = v19;
    v29 = v37;
    *(a8 + 8) = v20;
    *(a8 + 12) = v29;
  }

  return result;
}

uint64_t outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18BFC18A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

double static MergePlatformItemsView._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[1];
  v35 = *a2;
  v36 = v7;
  v37 = a2[2];
  v8 = *(a2 + 6);
  v9 = *(a2 + 14);
  v22 = *(a2 + 60);
  v23 = *(a2 + 76);
  v24 = a3;
  v25 = a4;
  v19 = v6;
  type metadata accessor for MergePlatformItemsView();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v28 = HIDWORD(v35);
  v29 = v36;
  v30 = v37;
  v31 = v8;
  v32 = v9;
  v33 = v22;
  v34 = v23;
  static View.makeDebuggableView(view:inputs:)();
  v26 = v8;
  v27 = v9;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v19 = v6;
    v10 = _GraphValue.value.getter();
    v26 = v20;
    v27 = LODWORD(v21);
    v11 = PreferencesOutputs.subscript.getter();
    v12 = *MEMORY[0x1E698D3F8];
    if ((v11 & 0x100000000) == 0)
    {
      v12 = v11;
    }

    v26 = __PAIR64__(v12, v10);
    MEMORY[0x1EEE9AC00](v11);
    v17 = type metadata accessor for MergePlatformItemsView.Transform();
    WitnessTable = swift_getWitnessTable();
    _s7SwiftUI5ImageVAAE8ResolvedVSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v26, closure #1 in Attribute.init<A>(_:)partial apply, &v16, v17, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
    LOBYTE(v26) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a5 = v20;
  result = v21;
  a5[1] = v21;
  return result;
}

uint64_t sub_18BFC1C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 464);
  if (v1 == 2)
  {

    v3 = *(v0 + 40);
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(v0 + 56))
    {
    }

    if (*(v0 + 80))
    {

LABEL_34:
    }
  }

  else if (v1 == 1)
  {
    if (*(v0 + 64))
    {
    }

    if (*(v0 + 120))
    {
    }

    v2 = *(v0 + 224);
    if (*(v0 + 256))
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 168))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 144);
          }

          if (*(v0 + 192) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 136);
        }
      }
    }

    else
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 168))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 144);
          }

          if (*(v0 + 192) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 136);
        }
      }
    }

    if (*(v0 + 376))
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

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance IncludesStyledTextModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedLabelStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedLabelStyle and conformance ResolvedLabelStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

void type metadata accessor for LabelStyleModifier<DefaultLabelStyle>()
{
  if (!lazy cache variable for type metadata for LabelStyleModifier<DefaultLabelStyle>)
  {
    lazy protocol witness table accessor for type DefaultLabelStyle and conformance DefaultLabelStyle();
    v0 = type metadata accessor for LabelStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LabelStyleModifier<DefaultLabelStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultLabelStyle and conformance DefaultLabelStyle()
{
  result = lazy protocol witness table cache variable for type DefaultLabelStyle and conformance DefaultLabelStyle;
  if (!lazy protocol witness table cache variable for type DefaultLabelStyle and conformance DefaultLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultLabelStyle and conformance DefaultLabelStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LabelStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t assignWithCopy for CollectionViewListRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + a1) & ~v11;
  v13 = (v7 + v11 + a2) & ~v11;
  (*(v9 + 24))(v12, v13, v8);
  v14 = *(v10 + 40) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = *(a3 + 24);
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  v22 = *(v20 + 80);
  v23 = v22 + 8;
  v24 = *(v20 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v25 = ((v17 + v22 + 8) & v24);
  v26 = ((v18 + v22 + 8) & v24);
  v27 = ((v22 + 16) & ~v22) + *(v20 + 64);
  v28 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v47 = ~v22;
  if ((v21 & 0x80000000) != 0)
  {
    v46 = ((v22 + 16) & ~v22) + *(*(v19 - 8) + 64);
    v32 = *(v20 + 48);
    v45 = (v17 + v22 + 8) & v24;
    v33 = (v18 + v22 + 8) & v24;
    v34 = ~v22;
    v44 = v32((v28 + v23) & ~v22, v21, v19);
    v29 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = (v29 + v23) & v34;
    v26 = v33;
    v25 = v45;
    v31 = v32(v35, v21, v19);
    v27 = v46;
    if (!v44)
    {
LABEL_5:
      if (!v31)
      {
        *v25 = *v26;

        *v28 = *v29;

        (*(v20 + 24))((v28 + v23) & v47, (v29 + v23) & v47, v19);
        goto LABEL_12;
      }

      (*(v20 + 8))((v28 + v23) & v47, v19);
      goto LABEL_9;
    }
  }

  else
  {
    v29 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v30) = -1;
    }

    v31 = v30 + 1;
    if (*v28 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v31)
  {
    *v25 = *v26;
    *v28 = *v29;
    v36 = *(v20 + 16);

    v36((v28 + v23) & v47, (v29 + v23) & v47, v19);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v25, v26, v27);
LABEL_12:
  v37 = (v25 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v26 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v37 = *v38;
  v39 = *(v38 + 8);
  *(v37 + 16) = *(v38 + 16);
  *(v37 + 8) = v39;
  v40 = *(v38 + 24);
  *(v37 + 32) = *(v38 + 32);
  *(v37 + 24) = v40;
  v41 = *(v38 + 40);
  *(v37 + 48) = *(v38 + 48);
  *(v37 + 40) = v41;
  v42 = *(v38 + 56);
  *(v37 + 64) = *(v38 + 64);
  *(v37 + 56) = v42;
  return a1;
}

unint64_t assignWithCopy for SidebarListStyle.BodyContent(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 24))((*(v11 + 80) + 17 + v5) & ~*(v11 + 80), (*(v11 + 80) + 17 + v6) & ~*(v11 + 80));
  return a1;
}

unsigned __int8 *assignWithCopy for SelectionManagerBox(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 <= v7)
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = a1[v10];
  v12 = v11 - 3;
  if (v11 >= 3)
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
        goto LABEL_25;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_25:
  if (v11 == 2)
  {
LABEL_28:
    (*(v6 + 8))(a1, v5);
    goto LABEL_30;
  }

  if (v11 == 1)
  {
    if ((*(v6 + 48))(a1, 1, v5))
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_30:
  v16 = *(a2 + v10);
  v17 = v16 - 3;
  if (v16 >= 3)
  {
    if (v10 <= 3)
    {
      v18 = v10;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = *a2;
      }

      else if (v18 == 3)
      {
        v19 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v19 = *a2;
      }

LABEL_42:
      v20 = (v19 | (v17 << (8 * v10))) + 3;
      v16 = v19 + 3;
      if (v10 < 4)
      {
        v16 = v20;
      }

      goto LABEL_44;
    }

    if (v18)
    {
      v19 = *a2;
      goto LABEL_42;
    }
  }

LABEL_44:
  if (v16 == 2)
  {
    (*(v6 + 16))(a1, a2, v5);
    v21 = 2;
LABEL_52:
    a1[v10] = v21;
    return a1;
  }

  if (v16 == 1)
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v21 = 1;
    goto LABEL_52;
  }

  *a1 = *a2;
  a1[v10] = 0;

  return a1;
}

uint64_t specialized UICollectionViewListCoordinatorBase.dataSource.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  swift_beginAccess();
  v4 = type metadata accessor for ShadowListDataSource();
  (*(*(v4 - 8) + 24))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t assignWithCopy for CollectionViewListDataSource(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v6 = *(a2 + 48);
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;
  v8 = v6;

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v9 = a3[9];
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[10];
  v12 = a1 + v11;
  v13 = (a2 + v11);
  v14 = *(a1 + v11 + 8);
  v15 = *(a2 + v11 + 8);
  if (v14 != 1)
  {
    if (v15 == 1)
    {
      outlined destroy of TableHeaderView(v12);
      *v12 = *v13;
      v20 = v13[2];
      v19 = v13[3];
      v21 = v13[1];
      *(v12 + 63) = *(v13 + 63);
      *(v12 + 32) = v20;
      *(v12 + 48) = v19;
      *(v12 + 16) = v21;
      goto LABEL_25;
    }

    if (v14)
    {
      if (v15)
      {
        *v12 = *v13;

        *(v12 + 8) = *(v13 + 1);

        *(v12 + 16) = *(v13 + 2);

        if (a1 == a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        outlined destroy of Binding<[SwiftUIAnySortComparator]>(v12);
        v25 = *(v13 + 2);
        *v12 = *v13;
        *(v12 + 16) = v25;
        if (a1 == a2)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v15)
    {
      *v12 = *v13;
      *(v12 + 8) = *(v13 + 1);
      *(v12 + 16) = *(v13 + 2);

      if (a1 == a2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = *v13;
      *(v12 + 16) = *(v13 + 2);
      *v12 = v26;
      if (a1 == a2)
      {
        goto LABEL_24;
      }
    }

    outlined destroy of TableColumnCollection.Backing(v12 + 24);
    if (v13[4])
    {
      *(v12 + 24) = *(v13 + 3);
      *(v12 + 64) = 1;
    }

    else
    {
      v27 = *(v13 + 6);
      *(v12 + 48) = v27;
      *(v12 + 56) = *(v13 + 7);
      (**(v27 - 8))(v12 + 24, v13 + 24);
      *(v12 + 64) = 0;
    }

    goto LABEL_24;
  }

  if (!v15)
  {
    v22 = *v13;
    *(v12 + 16) = *(v13 + 2);
    *v12 = v22;
    v23 = *(v13 + 64);
    if ((v23 & 1) == 0)
    {
LABEL_14:
      v24 = *(v13 + 6);
      *(v12 + 48) = v24;
      *(v12 + 56) = *(v13 + 7);
      (**(v24 - 8))(v12 + 24, v13 + 24);
      *(v12 + 64) = v23;
      goto LABEL_24;
    }

LABEL_12:
    *(v12 + 24) = *(v13 + 3);

    *(v12 + 64) = v23;
LABEL_24:
    *(v12 + 65) = *(v13 + 65);
    *(v12 + 66) = *(v13 + 66);
    goto LABEL_25;
  }

  if (v15 != 1)
  {
    *v12 = *v13;
    *(v12 + 8) = *(v13 + 1);
    *(v12 + 16) = *(v13 + 2);

    v23 = *(v13 + 64);
    if ((v23 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  *v12 = *v13;
  v16 = v13[1];
  v17 = v13[2];
  v18 = v13[3];
  *(v12 + 63) = *(v13 + 63);
  *(v12 + 32) = v17;
  *(v12 + 48) = v18;
  *(v12 + 16) = v16;
LABEL_25:
  v28 = a3[11];
  v29 = a1 + v28;
  v30 = a2 + v28;
  *(a1 + v28) = *(a2 + v28);

  *(v29 + 8) = *(v30 + 8);

  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t assignWithCopy for AccessibilityFocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *(v9 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithTake for CollectionViewListDataSource(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v8 = a3[9];
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v10 = a3[10];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(a1 + v10 + 8);
  if (v13 == 1)
  {
    goto LABEL_4;
  }

  v14 = *(v12 + 8);
  if (v14 != 1)
  {
    if (v13)
    {
      if (v14)
      {
        *v11 = *v12;

        *(v11 + 8) = *(v12 + 8);

        *(v11 + 16) = *(v12 + 16);

        if (a1 == a2)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v11);
    }

    *v11 = *v12;
    *(v11 + 16) = *(v12 + 16);
    if (a1 == a2)
    {
LABEL_12:
      *(v11 + 65) = *(v12 + 65);
      *(v11 + 66) = *(v12 + 66);
      goto LABEL_13;
    }

LABEL_11:
    outlined destroy of TableColumnCollection.Backing(v11 + 24);
    *(v11 + 24) = *(v12 + 24);
    *(v11 + 40) = *(v12 + 40);
    *(v11 + 49) = *(v12 + 49);
    goto LABEL_12;
  }

  outlined destroy of TableHeaderView(v11);
LABEL_4:
  v15 = *(v12 + 48);
  *(v11 + 32) = *(v12 + 32);
  *(v11 + 48) = v15;
  *(v11 + 63) = *(v12 + 63);
  v16 = *(v12 + 16);
  *v11 = *v12;
  *(v11 + 16) = v16;
LABEL_13:
  v17 = a3[11];
  v18 = a1 + v17;
  v19 = a2 + v17;
  *(a1 + v17) = *(a2 + v17);

  *(v18 + 8) = *(v19 + 8);

  v20 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v20) = *(a2 + v20);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

uint64_t assignWithTake for AccessibilityFocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t FocusState.Binding.wrappedValue.setter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t UICollectionViewListCoordinatorBase.isAnimated.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    swift_endAccess();
  }

  else
  {
    v2 = Transaction.animation.getter();
    swift_endAccess();
    if (v2)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t specialized SceneStorage.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(a2 + 36)))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleCo()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListS;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListS)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleW();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelSty( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, La,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<L,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifie,  lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<FallbackLabelStyle>, lazy protocol witness table accessor for type FallbackLabelStyle and conformance FallbackLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListS);
  }

  return result;
}

uint64_t specialized FocusStoreLocation.set(_:transaction:)(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + 5;
  v5 = *v1;
  v6 = *(*v1 + class metadata base offset for FocusStoreLocation);
  v7 = *(*(v5 + class metadata base offset for FocusStoreLocation) - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = swift_allocObject();
    v31 = v5;
    v16 = v15;
    swift_weakInit();
    v17 = *v2;
    v32 = v14;
    v18 = *(v17 + class metadata base offset for FocusStoreLocation + 32);
    v19 = *(v7 + 16);
    v19(v12, a1, v6);
    v19(v9, v2 + v18, v6);
    v20 = *(v7 + 80);
    v21 = (v20 + 40) & ~v20;
    v22 = (v8 + v20 + v21) & ~v20;
    v23 = swift_allocObject();
    *(v23 + 2) = v6;
    *(v23 + 3) = *(v31 + class metadata base offset for FocusStoreLocation + 8);
    *(v23 + 4) = v16;
    v24 = *(v7 + 32);
    v24(&v23[v21], v12, v6);
    v24(&v23[v22], v9, v6);

    default argument 1 of GraphHost.asyncTransaction(_:id:_:)();
    GraphHost.asyncTransaction(_:id:_:)();

    type metadata accessor for ViewGraph();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = v25;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v26 + 208);
        ObjectType = swift_getObjectType();
        v29 = *(v27 + 24);

        v29(ObjectType, v27, 0.0);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_18BFC3A98()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18BFC3AD0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;

  v6 = *(v2 + 8);
  v6(v0 + v4, v1);
  v6(v0 + v5, v1);

  return swift_deallocObject();
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleW()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContex)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<L(255);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<FallbackLabelStyle>, lazy protocol witness table accessor for type FallbackLabelStyle and conformance FallbackLabelStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContex);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.__Key_toolbarTransitionIdentifier(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<PlainListStyleContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle()
{
  result = lazy protocol witness table cache variable for type ListLabelStyle and conformance ListLabelStyle;
  if (!lazy protocol witness table cache variable for type ListLabelStyle and conformance ListLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabelStyle and conformance ListLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<SidebarLabelStyle>, lazy protocol witness table accessor for type SidebarLabelStyle and conformance SidebarLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SidebarLabelStyle and conformance SidebarLabelStyle()
{
  result = lazy protocol witness table cache variable for type SidebarLabelStyle and conformance SidebarLabelStyle;
  if (!lazy protocol witness table cache variable for type SidebarLabelStyle and conformance SidebarLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarLabelStyle and conformance SidebarLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetListStyleContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<InsetListLabelStyle>, lazy protocol witness table accessor for type InsetListLabelStyle and conformance InsetListLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InsetListLabelStyle and conformance InsetListLabelStyle()
{
  result = lazy protocol witness table cache variable for type InsetListLabelStyle and conformance InsetListLabelStyle;
  if (!lazy protocol witness table cache variable for type InsetListLabelStyle and conformance InsetListLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InsetListLabelStyle and conformance InsetListLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ToolbarItemLabelStyle>, lazy protocol witness table accessor for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle;
  if (!lazy protocol witness table cache variable for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<AccessibilityLabelStyle>, lazy protocol witness table accessor for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListGridContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalListGridLabelStyle>, lazy protocol witness table accessor for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle()
{
  result = lazy protocol witness table cache variable for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle;
  if (!lazy protocol witness table cache variable for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListStackContext>);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalListStackLabelStyle>, lazy protocol witness table accessor for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle()
{
  result = lazy protocol witness table cache variable for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle;
  if (!lazy protocol witness table cache variable for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, MEMORY[0x1E6980158], MEMORY[0x1E6980150], MEMORY[0x1E69801E0]);
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<WrappingLabelStyle>, lazy protocol witness table accessor for type WrappingLabelStyle and conformance WrappingLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WrappingLabelStyle and conformance WrappingLabelStyle()
{
  result = lazy protocol witness table cache variable for type WrappingLabelStyle and conformance WrappingLabelStyle;
  if (!lazy protocol witness table cache variable for type WrappingLabelStyle and conformance WrappingLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WrappingLabelStyle and conformance WrappingLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FallbackLabelStyle and conformance FallbackLabelStyle()
{
  result = lazy protocol witness table cache variable for type FallbackLabelStyle and conformance FallbackLabelStyle;
  if (!lazy protocol witness table cache variable for type FallbackLabelStyle and conformance FallbackLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FallbackLabelStyle and conformance FallbackLabelStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelSty(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>()
{
  result = lazy protocol witness table cache variable for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>;
  if (!lazy protocol witness table cache variable for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>)
  {
    type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<PlainListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<PlainListStyleContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<PlainListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LabelStyleWritingModifier<TitleAndIconLabelStyle>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<SidebarLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<SidebarLabelStyle>, lazy protocol witness table accessor for type SidebarLabelStyle and conformance SidebarLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, LabelStyleWritingModifier<SidebarLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<InsetListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetListStyleContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<InsetListLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<InsetListLabelStyle>, lazy protocol witness table accessor for type InsetListLabelStyle and conformance InsetListLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetListStyleContext>, LabelStyleWritingModifier<InsetListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<InsetGroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<ListLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<ListLabelStyle>, lazy protocol witness table accessor for type ListLabelStyle and conformance ListLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, LabelStyleWritingModifier<ListLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchFocusContext(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x18D00E7E0);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<ToolbarItemLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<ToolbarItemLabelStyle>, lazy protocol witness table accessor for type ToolbarItemLabelStyle and conformance ToolbarItemLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, LabelStyleWritingModifier<ToolbarItemLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SwipeActionsStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<AccessibilityLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<AccessibilityLabelStyle>, lazy protocol witness table accessor for type AccessibilityLabelStyle and conformance AccessibilityLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, LabelStyleWritingModifier<AccessibilityLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MultimodalListGridContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListGridContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<MultimodalListGridLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalListGridLabelStyle>, lazy protocol witness table accessor for type MultimodalListGridLabelStyle and conformance MultimodalListGridLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListGridContext>, LabelStyleWritingModifier<MultimodalListGridLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MultimodalListStackContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListStackContext>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<MultimodalListStackLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalListStackLabelStyle>, lazy protocol witness table accessor for type MultimodalListStackLabelStyle and conformance MultimodalListStackLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListStackContext>, LabelStyleWritingModifier<MultimodalListStackLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type LabelStyleWritingModifier<FallbackLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<WrappingLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<WrappingLabelStyle>, lazy protocol witness table accessor for type WrappingLabelStyle and conformance WrappingLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, LabelStyleWritingModifier<WrappingLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v5 = a4(0, &type metadata for LabelStyleConfiguration.Title);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>, AccessibilityRepresentationModifier<LabelStyleConfiguration.Title>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>, AccessibilityRepresentationModifier<LabelStyleConfiguration.Title>>)
  {
    type metadata accessor for ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>();
    type metadata accessor for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>(255, &lazy cache variable for type metadata for AccessibilityRepresentationModifier<LabelStyleConfiguration.Title>, &protocol witness table for LabelStyleConfiguration.Title, type metadata accessor for AccessibilityRepresentationModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>, AccessibilityRepresentationModifier<LabelStyleConfiguration.Title>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>)
  {
    type metadata accessor for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>(255, &lazy cache variable for type metadata for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, type metadata accessor for LabeledContent);
    type metadata accessor for _LabeledContentStyleModifier<ToolbarLabeledContentStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, _LabeledContentStyleModifier<ToolbarLabeledContentStyle>>, AccessibilityRepresentationModifier<LabelStyleConfiguration.Title>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for _LabeledContentStyleModifier<ToolbarLabeledContentStyle>()
{
  if (!lazy cache variable for type metadata for _LabeledContentStyleModifier<ToolbarLabeledContentStyle>)
  {
    lazy protocol witness table accessor for type ToolbarLabeledContentStyle and conformance ToolbarLabeledContentStyle();
    v0 = type metadata accessor for _LabeledContentStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _LabeledContentStyleModifier<ToolbarLabeledContentStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarLabeledContentStyle and conformance ToolbarLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarLabeledContentStyle and conformance ToolbarLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type ToolbarLabeledContentStyle and conformance ToolbarLabeledContentStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarLabeledContentStyle and conformance ToolbarLabeledContentStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance <> LabeledContent<A, B>)
  {
    type metadata accessor for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>(255, &lazy cache variable for type metadata for LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, &type metadata for LabelStyleConfiguration.Icon, type metadata accessor for LabeledContent);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

uint64_t initializeWithCopy for FocusedValueList.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  type metadata accessor for (key: ViewIdentity, value: InspectorStorage)(0, a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI12ViewIdentityV3key_AA18ConfirmationDialogV5valuetWObTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined init with copy of BoundInputsView?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

id partial apply for closure #1 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 setAllowsMultipleSelection_];

  return [v1 setAllowsMultipleSelectionDuringEditing_];
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, a3, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    v17 = a5;
    if (!v11)
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v13 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v11)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v16)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v17(v9, v7, 1, v5);
}

id closure #1 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(void *a1, char a2)
{
  [a1 setAllowsMultipleSelection_];

  return [a1 setAllowsMultipleSelectionDuringEditing_];
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for AccessibilityNode();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

void type metadata accessor for (Range<Int>, Range<Int>)()
{
  if (!lazy cache variable for type metadata for (Range<Int>, Range<Int>))
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Range<Int>, Range<Int>));
    }
  }
}

void destroy for ToolbarStorage.GroupItem(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  }

  if (*(a1 + 120) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 80);
  }

  v4 = a1 + *(a2 + 60);
  v5 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v4);

LABEL_46:
      v19 = *(v4 + *(v5 + 20));

      return;
    }

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
        goto LABEL_26;
      }
    }

    if (*(v4 + 432))
    {
    }

    if (*(v4 + 448))
    {
    }

LABEL_26:

    if (*(v4 + 512))
    {
    }

    if (!*(v4 + 816))
    {
LABEL_36:
      v13 = *(v4 + 864);
      if (v13)
      {
        if (v13 == 1)
        {
LABEL_41:

          v14 = v4 + *(type metadata accessor for PlatformItemList.Item() + 112);
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

          goto LABEL_46;
        }

        __swift_destroy_boxed_opaque_existential_1(v4 + 840);
      }

      if (*(v4 + 880))
      {
      }

      goto LABEL_41;
    }

    v12 = *(v4 + 624);
    if (v12)
    {
      if (v12 == 1)
      {
LABEL_33:
        if (*(v4 + 776) != 1)
        {
        }

        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 600);
    }

    goto LABEL_33;
  }
}

Swift::Void __swiftcall UpdateCoalescingCollectionView.layoutSubviews()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate];
  v2 = v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_visibleCellsUpdate];
  if (v2 == 2 || (v2 & 1) == 0 || ![v0 dataSource])
  {
    v13 = 0;
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  v3 = *(v1 + 1);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 1) = v5;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in UpdateCoalescingCollectionView.layoutSubviews();
  *(v8 + 24) = v7;
  v14[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v14[5] = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_91;
  v9 = _Block_copy(v14);
  v10 = v0;

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(v1 + 1);
  v4 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  if (!v4)
  {
    *(v1 + 1) = v12;
    v13 = partial apply for closure #1 in UpdateCoalescingCollectionView.layoutSubviews();
LABEL_9:
    UpdateCoalescingCollectionView.updateContent()();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_18BFC6A0C()
{

  return swift_deallocObject();
}

uint64_t specialized UICollectionViewListCoordinatorBase.numberOfSections(in:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = type metadata accessor for ShadowSectionCollection();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ShadowListDataSource();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *((v2 & v1) + 0x88);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v0[v11], v7);
  ShadowListDataSource.sectionIDs.getter(v6);
  (*(v8 + 8))(v10, v7);
  v12 = specialized ViewLeafView.platformView.getter(v3);
  (*(v4 + 8))(v6, v3);
  return v12;
}

uint64_t @objc UICollectionViewListCoordinatorBase.numberOfSections(in:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = specialized UICollectionViewListCoordinatorBase.numberOfSections(in:)();

  return v6;
}

uint64_t specialized UICollectionViewListCoordinatorBase.collectionView(_:numberOfItemsInSection:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for ShadowListDataSource();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ShadowRowCollection();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = *((v4 & v3) + 0x88);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v13], v5);
  WitnessTable = swift_getWitnessTable();
  ListDiffable.rowIDs(forSectionAtOffset:)(a1, v5, WitnessTable);
  (*(v6 + 8))(v8, v5);
  v15 = ShadowRowCollection.count.getter(v9);
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t @objc UICollectionViewListCoordinatorBase.collectionView(_:numberOfItemsInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = specialized UICollectionViewListCoordinatorBase.collectionView(_:numberOfItemsInSection:)(a4);

  return v8;
}

uint64_t ListDiffable.rowIDs(forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  ListDiffable.sectionIndex(atOffset:)(a1, a2, a3);
  (*(a3 + 80))(v9, a2, a3);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t ListDiffable.sectionIndex(atOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(a3 + 56))(a2, a3, v7);
  swift_getAssociatedConformanceWitness();
  Collection.index(atOffset:)();
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance ShadowSectionCollection<A>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

id UpdateCoalescingCollectionView.contentSize.didset(double a1, double a2)
{
  v3 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates;
  v4 = *&v2[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates];
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  *&v2[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = v6;
  result = [v2 contentSize];
  if (v11 != a1 || v10 != a2)
  {
    UpdateCoalescingCollectionView.invalidateStackBehaviorLayoutIfNeeded()();
    result = specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  }

  v13 = *&v2[v3];
  v5 = v13 != 0;
  v14 = v13 - 1;
  if (!v5)
  {
    goto LABEL_16;
  }

  *&v2[v3] = v14;
  if (!v14 && v2[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] == 1)
  {

    return specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  }

  return result;
}

void UICollectionViewListCoordinatorBase.updateListContents(_:)(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x70) + 8);
  v124 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v123 = v4;
  v127 = type metadata accessor for ShadowListDataSource();
  v110 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v128 = v109 - v5;
  v6 = type metadata accessor for IndexPath();
  v119 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v112 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v109 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v121 = v109 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v109 - v14;
  UICollectionViewListCoordinatorBase.clearDataSourceUpdates()();
  v16 = *((*v3 & *v1) + 0xD8);
  v129 = v1;
  *(v1 + v16) = 0;
  v17 = [a1 preparedCells];
  if (!v17)
  {
    goto LABEL_52;
  }

  v18 = v17;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v120 = a1;
  v126 = v6;
  v125 = v10;
  if (v20)
  {
    if (v20 < 1)
    {
      __break(1u);
      goto LABEL_50;
    }

    v21 = v19 & 0xC000000000000001;
    v115 = *((*MEMORY[0x1E69E7D40] & *v129) + 0x88);
    swift_beginAccess();
    v22 = 0;
    v118 = (v119 + 32);
    v114 = (v110 + 16);
    v113 = (v110 + 8);
    v117 = (v119 + 8);
    v116 = v19;
    do
    {
      if (v21)
      {
        v23 = MEMORY[0x18D00E9C0](v22, v19);
      }

      else
      {
        v23 = *(v19 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = [a1 indexPathForCell_];
      if (v25)
      {
        v26 = v121;
        v27 = v25;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        (*v118)(v15, v26, v6);
        swift_getAssociatedTypeWitness();
        v28 = swift_dynamicCastUnknownClass();
        if (v28)
        {
          v29 = v28;
          v30 = v129;
          v31 = v128;
          v32 = v127;
          v33 = (*v114)(v128, v115 + v129, v127);
          v122 = v109;
          MEMORY[0x1EEE9AC00](v33);
          v109[-2] = v30;
          v109[-1] = v29;
          WitnessTable = swift_getWitnessTable();
          ListCoreDataSource.visitContent<A>(atRow:visitor:)(v15, partial apply for closure #1 in UICollectionViewListCoordinatorBase.updateListContents(_:), &v109[-4], v32, MEMORY[0x1E69E7CA8] + 8, WitnessTable, v130);
          v19 = v116;
          v35 = v31;
          v6 = v126;
          (*v113)(v35, v32);
          a1 = v120;
          UICollectionViewListCoordinatorBase.mirrorSelection(collectionView:indexPath:)(v120, v15);
        }

        (*v117)(v15, v6);
      }

      else
      {
      }

      ++v22;
    }

    while (v20 != v22);

    v10 = v125;
  }

  else
  {
  }

  v36 = &selRef_bundleIdentifier;
  v114 = *MEMORY[0x1E69DDC08];
  v37 = [a1 indexPathsForVisibleSupplementaryElementsOfKind_];
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = v38;
  v40 = *(v38 + 16);
  if (v40)
  {
    v41 = *((*MEMORY[0x1E69E7D40] & *v129) + 0x88);
    v42 = *((*MEMORY[0x1E69E7D40] & *v129) + 0xA0);
    v43 = v119;
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v109[1] = v39;
    v45 = v39 + v44;
    v122 = v41;
    swift_beginAccess();
    v111 = v42;
    swift_beginAccess();
    v46 = *(v43 + 16);
    v43 += 16;
    v117 = v46;
    v116 = *(v43 + 56);
    v121 = (v110 + 16);
    v47 = (v110 + 8);
    v118 = v43;
    v115 = (v43 - 8);
    v46(v10, v45, v6);
    while (1)
    {
      v57 = *v121;
      v58 = v128;
      v59 = v127;
      (*v121)(v128, &v122[v129], v127);
      v60 = IndexPath.section.getter();
      swift_getWitnessTable();
      LOBYTE(v60) = ListDiffable.hasHeader(forSectionAtOffset:)(v60);
      v61 = *v47;
      (*v47)(v58, v59);
      if (v60)
      {
        v62 = v114;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v64 = [a1 supplementaryViewForElementKind:v62 atIndexPath:isa];

        v10 = v125;
        if (v64)
        {
          swift_getAssociatedTypeWitness();
          v65 = swift_dynamicCastUnknownClass();
          if (v65)
          {
            v48 = v65;
            v49 = v129;
            v50 = v128;
            v51 = v127;
            v57(v128, &v122[v129], v127);
            v52 = *(v49 + v111);
            outlined copy of Transaction?(v52);
            v53 = v125;
            v113 = IndexPath.section.getter();
            v54 = swift_getWitnessTable();
            v55 = v48;
            v10 = v53;
            ListCoreDataSource.configureHeader(_:transaction:forSectionAtOffset:)(v55, v52, v113, v51, v54);
            outlined consume of ListItemTint?(v52);

            v56 = v51;
            a1 = v120;
            v61(v50, v56);
          }

          else
          {

            v10 = v125;
          }
        }
      }

      v6 = v126;
      (*v115)(v10, v126);
      v45 += v116;
      if (!--v40)
      {
        break;
      }

      v117(v10, v45, v6);
    }

    v36 = &selRef_bundleIdentifier;
  }

  else
  {
  }

  v66 = v36[407];
  v115 = *MEMORY[0x1E69DDC00];
  v67 = [a1 v66];
  v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v69 = v68;
  v70 = *(v68 + 16);
  if (v70)
  {
    v71 = *((*MEMORY[0x1E69E7D40] & *v129) + 0x88);
    v72 = *((*MEMORY[0x1E69E7D40] & *v129) + 0xA0);
    v73 = v119;
    v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v113 = v69;
    v75 = v69 + v74;
    v125 = v71;
    swift_beginAccess();
    v114 = v72;
    swift_beginAccess();
    v76 = *(v73 + 16);
    v73 += 16;
    v118 = v76;
    v117 = *(v73 + 56);
    v122 = (v110 + 16);
    v121 = (v110 + 8);
    v119 = v73;
    v116 = v73 - 8;
    v77 = v112;
    (v76)(v112, v75, v6);
    while (1)
    {
      v86 = *v122;
      v87 = v128;
      v88 = v127;
      (*v122)(v128, &v125[v129], v127);
      v89 = IndexPath.section.getter();
      swift_getWitnessTable();
      LOBYTE(v89) = ListDiffable.hasFooter(forSectionAtOffset:)(v89);
      v90 = *v121;
      (*v121)(v87, v88);
      if (v89)
      {
        v91 = v115;
        v92 = IndexPath._bridgeToObjectiveC()().super.isa;
        v93 = [a1 supplementaryViewForElementKind:v91 atIndexPath:v92];

        v6 = v126;
        if (v93)
        {
          swift_getAssociatedTypeWitness();
          v94 = swift_dynamicCastUnknownClass();
          if (v94)
          {
            v78 = v94;
            v79 = v129;
            v80 = v128;
            v81 = v127;
            v86(v128, &v125[v129], v127);
            v82 = *(v114 + v79);
            outlined copy of Transaction?(v82);
            v77 = v112;
            v83 = IndexPath.section.getter();
            v84 = swift_getWitnessTable();
            ListCoreDataSource.configureFooter(_:transaction:forSectionAtOffset:)(v78, v82, v83, v81, v84);
            outlined consume of ListItemTint?(v82);

            v85 = v81;
            a1 = v120;
            v90(v80, v85);
            v6 = v126;
          }

          else
          {

            v6 = v126;
            v77 = v112;
          }
        }
      }

      (*v116)(v77, v6);
      v75 = v117 + v75;
      if (!--v70)
      {
        break;
      }

      (v118)(v77, v75, v6);
    }
  }

  v95 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD4D770);

  v96 = [a1 visibleSupplementaryViewsOfKind_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionReusableView);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_48:

    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_48;
  }

LABEL_40:
  if ((v18 & 0xC000000000000001) == 0)
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v97 = *(v18 + 32);
      goto LABEL_43;
    }

    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

LABEL_50:
  v97 = MEMORY[0x18D00E9C0](0, v18);
LABEL_43:
  v98 = v97;

  type metadata accessor for TableGlobalHeader();
  v99 = swift_dynamicCastClass();
  if (v99)
  {
    v100 = v99;
    v101 = v129;
    v102 = MEMORY[0x1E69E7D40];
    v103 = *((*MEMORY[0x1E69E7D40] & *v129) + 0x88);
    swift_beginAccess();
    v104 = v110;
    v105 = v128;
    v106 = v127;
    (*(v110 + 16))(v128, &v101[v103], v127);
    v107 = *((*v102 & *v101) + 0xA0);
    swift_beginAccess();
    v108 = *&v101[v107];
    outlined copy of Transaction?(v108);
    ShadowListDataSource.configureGlobalHeader(_:transaction:)(v100, v108, v106);
    outlined consume of ListItemTint?(v108);

    (*(v104 + 8))(v105, v106);
  }

  else
  {
  }
}

uint64_t UICollectionViewListCoordinatorBase.clearDataSourceUpdates()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  swift_beginAccess();
  type metadata accessor for ListCoreBatchUpdates();
  ListCoreBatchUpdates.resetAll()();
  swift_endAccess();
  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  v8 = *((*v2 & *v0) + 0xD0);
  swift_beginAccess();
  (*(v5 + 40))(&v1[v8], v7, v4);
  return swift_endAccess();
}

Swift::Void __swiftcall ListCoreBatchUpdates.resetAll()()
{
  v2 = v1;
  v3 = v0;
  IndexSet.removeAll()();
  IndexSet.removeAll()();
  v4 = v3[10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v6 + 16));
  }

  else
  {
    v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Sit_Tt1g5(0, *(v6 + 24) >> 1);

    *(v2 + v4) = v7;
  }

  v8 = v3[11];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v8);
  if (v9)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v10 + 16));
  }

  else
  {
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV_Tt1g5(0, *(v10 + 24) >> 1);

    *(v2 + v8) = v11;
  }

  v12 = v3[12];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v12);
  if (v13)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v14 + 16));
  }

  else
  {
    v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV_Tt1g5(0, *(v14 + 24) >> 1);

    *(v2 + v12) = v15;
  }

  v16 = v3[13];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v2 + v16);
  if (v17)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v18 + 16));
  }

  else
  {
    v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV6source_AH11destinationt_Tt1g5(0, *(v18 + 24) >> 1);

    *(v2 + v16) = v19;
  }

  IndexSet.removeAll()();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Sit_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<(Int, Int)>();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI16PlatformItemListV0K0V_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, a3, a4, MEMORY[0x1E69E6F90]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for PlatformItemLabelView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>);
    }
  }
}

uint64_t NavigationListState.hasNonEmptySelection.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = *(v1 + 48) + 48 * v10;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v17 = *(v11 + 16);
    v18 = *v11;
    outlined init with copy of AnyListSelection(*(v1 + 56) + 40 * v10, &v28);
    v26 = v17;
    v25 = v18;
    LOBYTE(v27) = v12;
    *(&v27 + 1) = v13;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v19 = v18;
    v20 = v17;
    v21 = v27;
    v37[0] = v18;
    v37[1] = v17;
    v37[2] = v27;
    v14 = *(&v29 + 1);
    v15 = v30;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v29 + 1));
    if (((*(v15 + 16))(v14, v15) & 1) == 0 && (specialized Set.contains(_:)(v37, v2) & 1) == 0)
    {

      v33 = v21;
      v34 = v22;
      v35 = v23;
      v36 = v24;
      v16 = 1;
      v31 = v19;
      v32 = v20;
LABEL_14:
      outlined destroy of (key: NavigationState.ListKey, value: AnyListSelection)(&v31, type metadata accessor for (key: NavigationState.ListKey, value: AnyListSelection)?);
      return v16;
    }

    v5 &= v5 - 1;
    result = outlined destroy of (key: NavigationState.ListKey, value: AnyListSelection)(&v19, type metadata accessor for (key: NavigationState.ListKey, value: AnyListSelection));
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v16 = 0;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
      goto LABEL_14;
    }

    v5 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance PlatformItemLabelView<A, B, C>()
{
  result = lazy protocol witness table cache variable for type PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance PlatformItemLabelView<A, B, C>;
  if (!lazy protocol witness table cache variable for type PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance PlatformItemLabelView<A, B, C>)
  {
    type metadata accessor for PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemLabelView<ToolbarPlatformItemListFlags, LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content> and conformance PlatformItemLabelView<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LabeledContentStyleConfiguration.Content(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA32LabeledContentStyleConfigurationV0M0V_Tt2B5(v2, v6);
}

unint64_t NavigationPath.count.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  if ((*(v0 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = v0 + 8;
  v0 = *(v0 + 8);
  v3 = *(v4 + 8);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v6 = *(v0 + 16);
    v0 = i + v6;
    if (__OFADD__(i, v6))
    {
      __break(1u);
LABEL_19:
      v3 = __CocoaSet.count.getter();
      goto LABEL_11;
    }

    v1 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      v3 = v0 + v12;
      if (__OFADD__(v0, v12))
      {
LABEL_8:
        __break(1u);
LABEL_9:
        if (!(v1 >> 62))
        {
          v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = v0 + v7;
      if (__OFADD__(v0, v7))
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    if (v2 >> 62)
    {
      break;
    }

    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v3, v8);
    result = v3 + v8;
    if (!v9)
    {
      return result;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v11 = __CocoaSet.count.getter();
  v9 = __OFADD__(v3, v11);
  result = v3 + v11;
  if (v9)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA32LabeledContentStyleConfigurationV0M0V_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Content>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Content>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for LabeledContentStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t static AccessibilityLabeledContentContentModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v43 = *(a2 + 32);
  v44 = v7;
  v9 = *(a2 + 48);
  v45 = *(a2 + 64);
  v10 = *(a2 + 16);
  v41 = *a2;
  v42 = v10;
  v28 = v43;
  v29 = v9;
  v30 = *(a2 + 64);
  v26 = v41;
  v11 = *a1;
  v46 = *(a2 + 80);
  LODWORD(v31) = *(a2 + 80);
  v27 = v8;
  a3(&v22);
  *&v26 = v44;
  DWORD2(v26) = DWORD2(v44);
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  lazy protocol witness table accessor for type AccessibilityPresentation and conformance AccessibilityPresentation();
  result = PropertyList.subscript.getter();
  v13 = v26;
  v14 = *MEMORY[0x1E698D3F8];
  if (v26 == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_7;
  }

  v21 = v11;
  type metadata accessor for AccessibilityLabeledContentContentModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in static AccessibilityLabeledContentContentModifier._makeView(modifier:inputs:body:)(1, a4);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v34 = v41;
  v35 = v42;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *&v40[68] = v38;
    *&v40[52] = v37;
    *&v40[36] = v36;
    *&v40[20] = v35;
    *&v40[84] = v39;
    *&v40[4] = v34;
    *&v24[0] = __PAIR64__(v13, OffsetAttribute2);
    DWORD2(v24[0]) = v14;
    *(&v24[2] + 12) = *&v40[32];
    *(&v24[3] + 12) = *&v40[48];
    *(&v24[4] + 12) = *&v40[64];
    *(&v24[5] + 12) = *&v40[80];
    *(v24 + 12) = *v40;
    *(&v24[1] + 12) = *&v40[16];
    *(&v24[6] + 1) = result;
    v25 = 0;
    MEMORY[0x1EEE9AC00](result);
    v16 = type metadata accessor for AccessibilityLabeledContentContentModifier.Attachment();
    v19[2] = v16;
    v19[3] = swift_getWitnessTable();
    outlined init with copy of _ViewInputs(&v41, &v26);
    type metadata accessor for AccessibilityLabelPresentation?(0, &lazy cache variable for type metadata for Attribute<AccessibilityAttachmentModifier>, &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v24, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_18, v19, v16, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
    v30 = v24[4];
    v31 = v24[5];
    v32 = v24[6];
    v26 = v24[0];
    v27 = v24[1];
    v28 = v24[2];
    v33 = v25;
    v29 = v24[3];
    (*(*(v16 - 8) + 8))(&v26, v16);
    _s7SwiftUI25AccessibilityViewModifierPAAE04makeC19PropertiesTransform8modifier6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgAA01_M5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10AttachmentE0V_Tt2B5(v20, &v41, v22, v23);
    result = PreferencesOutputs.subscript.setter();
LABEL_7:
    *a5 = v22;
    a5[1] = v23;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23LabelStyleConfigurationV4IconV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Icon>, lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Icon>, lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for LabelStyleConfiguration.Icon, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LabelStyleConfiguration.Icon(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23LabelStyleConfigurationV4IconV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AccessibilityHidesLabelIcon()
{
  lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon();
  PropertyList.subscript.getter();
  if (v3)
  {
    v0 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput();
    PropertyList.subscript.getter();
    v0 = v2 ^ 1;
  }

  return v0 & 1;
}

uint64_t NavigationState.StackContent.pathSeed.getter@<X0>(_DWORD *a1@<X8>)
{
  result = outlined init with copy of NavigationState.Base(v1, __src);
  if (v15)
  {
    if (v15 == 1)
    {
      outlined consume of ResolvedNavigationDestinations?(__src[45]);
      memcpy(__dst, __src, 0x163uLL);
      v4 = __dst[23];
      result = outlined destroy of NavigationColumnState(__dst);
      *a1 = v4;
    }

    else
    {
      v5 = __src[0];
      outlined consume of NavigationSplitViewState?(__src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8]);
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v5 + 32;
        do
        {
          outlined init with copy of NavigationColumnState(v8, __dst);
          v9 = __dst[23];
          outlined destroy of NavigationColumnState(__dst);
          if (v7 != 0xFFFFFFFFLL && v9)
          {
            if (!v7 || v9 == 0xFFFFFFFFLL)
            {
              v7 = v9;
            }

            else
            {
              v10 = (v9 | (v7 << 32)) + ~(v9 << 32);
              v11 = (v10 ^ (v10 >> 22)) + ~((v10 ^ (v10 >> 22)) << 13);
              v12 = (9 * (v11 ^ (v11 >> 8))) ^ ((9 * (v11 ^ (v11 >> 8))) >> 15);
              v7 = ((v12 + ~(v12 << 27)) >> 31) ^ (v12 + ~(v12 << 27));
            }
          }

          v8 += 360;
          --v6;
        }

        while (v6);
      }

      else
      {

        LODWORD(v7) = 0;
      }

      *a1 = v7;
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void outlined consume of NavigationSplitViewState?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != 1)
  {
    outlined consume of Binding<NavigationSplitViewColumn>?(a2, a3);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a5);

    outlined consume of Binding<NavigationSplitViewColumn>?(a7, a8);
  }
}

uint64_t @objc NavigationSplitCoordinator.splitViewController(_:willChangeTo:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, __int128 *))
{
  v7 = a3;

  NavigationSplitCoordinator.splitViewController(_:willChangeTo:)(v7, a4, a5);
}

void NavigationSplitSidebarStateMachine.splitViewController(_:willChangeTo:visibilityEngine:)(void *a1, uint64_t a2, __int128 *a3)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3[2];
  v11 = a3[4];
  v42 = a3[3];
  v43 = v11;
  v44 = *(a3 + 80);
  v12 = a3[1];
  v39 = *a3;
  v40 = v12;
  v41 = v10;
  static Log.splitViewVisibility.getter();
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    outlined destroy of Logger?(v9);
  }

  else
  {
    v36 = v3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37[0] = v18;
      *v17 = 136315138;
      v19 = UISplitViewControllerDisplayMode.description.getter(a2);
      v35 = a1;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v37);
      a1 = v35;

      *(v17 + 4) = v21;
      _os_log_impl(&dword_18BD4A000, v15, v16, "willChangeTo %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x18D0110E0](v18, -1, -1);
      MEMORY[0x18D0110E0](v17, -1, -1);
    }

    (*(v14 + 8))(v9, v13);
    v3 = v36;
  }

  v38 = 17;
  v22 = swift_allocObject();
  v23 = v42;
  v24 = v43;
  *(v22 + 48) = v41;
  *(v22 + 64) = v23;
  *(v22 + 80) = v24;
  *(v22 + 96) = v44;
  v25 = v40;
  *(v22 + 16) = v39;
  *(v22 + 32) = v25;
  *(v22 + 104) = a1;
  *(v22 + 112) = a2;
  *(v22 + 120) = v3;
  outlined init with copy of UISplitViewControllerVisibilityEngine(&v39, v37);
  v26 = a1;

  static Update.enqueueAction(reason:_:)();

  if ([v26 style])
  {
    v27 = [v26 viewControllerForColumn_];
    if (v27)
    {
      v28 = v27;
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {
        v32 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v30 = [v29 topViewController];

      if (v30)
      {
        type metadata accessor for UIHostingController<AnyView>();
        v31 = swift_dynamicCastClass();
        if (v31)
        {
          v32 = *(v31 + direct field offset for UIHostingController.host);
        }

        else
        {
          v32 = 0;
        }

        v28 = v30;
        goto LABEL_16;
      }
    }
  }

  v32 = 0;
LABEL_17:
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  NavigationSplitSidebarStateMachine.coordinatedHost.didset(Strong);
}

uint64_t sub_18BFC9D50()
{

  if (*(v0 + 48))
  {
  }

  v1 = *(v0 + 64);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_8;
    }
  }

  if (*(v0 + 80))
  {
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t initializeWithCopy for UISplitViewControllerVisibilityEngine(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);

  if (v5)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v5;
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
  }

  v6 = (a2 + 48);
  v7 = *(a2 + 48);
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = *(a2 + 64);
      *(a1 + 48) = *v6;
      *(a1 + 64) = v8;
      goto LABEL_12;
    }

    v9 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v9;
  }

  else
  {
    *(a1 + 48) = *v6;
  }

  v10 = *(a2 + 64);
  if (v10)
  {
    v11 = *(a2 + 72);
    *(a1 + 64) = v10;
    *(a1 + 72) = v11;
  }

  else
  {
    *(a1 + 64) = *(a2 + 64);
  }

LABEL_12:
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t closure #1 in NavigationSplitSidebarStateMachine.splitViewController(_:willChangeTo:visibilityEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = a1;
  v28 = a2;
  v29 = a3;
  *&v37 = 0;
  LOBYTE(v30) = 1;
  Transaction.subscript.setter();
  withTransaction<A>(_:_:)();

  v11 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v11;
  v41 = *(a1 + 64);
  v42 = *(a1 + 80);
  v12 = *(a1 + 16);
  v37 = *a1;
  v38 = v12;
  UISplitViewControllerVisibilityEngine.visibility.getter(&v30);
  *(a4 + 24) = v30;
  static Log.splitViewVisibility.getter();
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    return outlined destroy of Logger?(v10);
  }

  outlined init with copy of UISplitViewControllerVisibilityEngine(a1, &v37);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined destroy of UISplitViewControllerVisibilityEngine(a1);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315138;
    v20 = *(a1 + 48);
    v32 = *(a1 + 32);
    v33 = v20;
    v34 = *(a1 + 64);
    v35 = *(a1 + 80);
    v21 = *(a1 + 16);
    v30 = *a1;
    v31 = v21;
    outlined init with copy of UISplitViewControllerVisibilityEngine(a1, &v37);
    v22 = UISplitViewControllerVisibilityEngine.description.getter();
    v24 = v23;
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    v37 = v30;
    v38 = v31;
    outlined destroy of UISplitViewControllerVisibilityEngine(&v37);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v36);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_18BD4A000, v16, v17, "wrote visibility back to bindings, %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x18D0110E0](v19, -1, -1);
    MEMORY[0x18D0110E0](v18, -1, -1);
  }

  return (*(v14 + 8))(v10, v13);
}

unsigned __int8 *closure #1 in closure #1 in NavigationSplitSidebarStateMachine.splitViewController(_:willChangeTo:visibilityEngine:)(unsigned __int8 *result, id a2, uint64_t a3)
{
  if (result[19] << 8 == 512)
  {
    result = [a2 isCollapsed];
    if (!result)
    {
      type metadata accessor for ObjectIdentifier?(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v6);
      v4 = 0;
      if ((a3 - 2) <= 4)
      {
        v4 = qword_18CDD51E8[a3 - 2];
      }

      AnyNavigationSplitVisibility.Kind.adoptingVisibleLeadingColumnCount(_:)(v4, &v5);
      LOWORD(v6) = v5;
      return dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityLabeledContentContentModifier.Attachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a1 + 104) = v4;
  *(a1 + 112) = *(a2 + 112);

  v5 = v4;
  return a1;
}

void type metadata accessor for UIHostingController<AnyView>()
{
  if (!lazy cache variable for type metadata for UIHostingController<AnyView>)
  {
    v0 = type metadata accessor for UIHostingController();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIHostingController<AnyView>);
    }
  }
}

void NavigationSplitSidebarStateMachine.coordinatedHost.didset(void *a1)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    if (v11 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  static Log.splitViewVisibility.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Logger?(v5);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = swift_unknownObjectWeakLoadStrong();
    v13 = v12;
    v37[1] = v1;
    if (v12)
    {
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37[0] = v13;
      v18 = v17;
      v38 = a1;
      v39 = v17;
      *v16 = 136315138;
      type metadata accessor for ObjectIdentifier?(0, &lazy cache variable for type metadata for ObjectIdentifier?, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6720]);
      v19 = String.init<A>(describing:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v39);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_18BD4A000, v14, v15, "old coordinatedHost: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v22 = v18;
      v13 = v37[0];
      MEMORY[0x18D0110E0](v22, -1, -1);
      MEMORY[0x18D0110E0](v16, -1, -1);
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v13;
      v39 = v26;
      *v25 = 136315138;
      type metadata accessor for ObjectIdentifier?(0, &lazy cache variable for type metadata for ObjectIdentifier?, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6720]);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v39);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_18BD4A000, v23, v24, "new coordinatedHost: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x18D0110E0](v26, -1, -1);
      MEMORY[0x18D0110E0](v25, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  v30 = MEMORY[0x1E69E7D40];
  if (a1)
  {
    v31 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x80);
    v32 = *(a1 + v31);
    v33 = __OFSUB__(v32, 1);
    v34 = v32 - 1;
    if (v33)
    {
      __break(1u);
      return;
    }

    *(a1 + v31) = v34 & ~(v34 >> 31);
  }

  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = *((*v30 & *v35) + 0x80);
    ++*(v35 + v36);
  }
}

void destroy for AccessibilityLabeledContentContentModifier.Attachment(uint64_t a1)
{

  v2 = *(a1 + 104);
}

void UINavigationItem.updateTrailingItemsIfNeeded(_:isFromSwiftUI:)(void *a1, char a2, SEL *a3, SEL *a4, SEL *a5)
{
  v9 = v5;
  v11 = [a1 *a3];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a2)
  {
LABEL_52:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 *a5];

    return;
  }

  v12 = [v9 *a3];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = a4;
  v44 = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v15 = MEMORY[0x1E69E7CC0];
    v40 = v9;
    v41 = a5;
    if (i)
    {
      v16 = 0;
      a5 = (v13 & 0xC000000000000001);
      v9 = (v13 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (a5)
        {
          v17 = MEMORY[0x18D00E9C0](v16, v13);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v21 = v44;
            v9 = v40;
            a5 = v41;
            goto LABEL_18;
          }
        }

        else
        {
          if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_45;
          }

          v17 = *(v13 + 8 * v16 + 32);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_15;
          }
        }

        v19 = v17;
        v20 = UIBarButtonItemGroup.isNotFromSwiftUI.getter();

        if (v20)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v16;
        if (v18 == i)
        {
          goto LABEL_16;
        }
      }
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_18:

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v21);

    v22 = [v9 *v42];
    if (!v22)
    {
      goto LABEL_52;
    }

    v23 = v22;
    v42 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = v15;
    v13 = v24 >> 62 ? __CocoaSet.count.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = MEMORY[0x1E69E7CC0];
    if (!v13)
    {
      break;
    }

    v26 = 0;
    a5 = (v24 & 0xC000000000000001);
    v9 = (v24 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (a5)
      {
        v27 = MEMORY[0x18D00E9C0](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      swift_getObjectType();
      if ([swift_getObjCClassFromMetadata() _isFromSwiftUI])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v26;
      if (v29 == v13)
      {
        v30 = v15;
        v9 = v40;
        a5 = v41;
        v25 = MEMORY[0x1E69E7CC0];
        goto LABEL_34;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_34:

  if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
  {
    v31 = __CocoaSet.count.getter();
    if (v31)
    {
      goto LABEL_37;
    }

LABEL_50:

    v39 = MEMORY[0x1E69E7CC0];
LABEL_51:
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v39);

    goto LABEL_52;
  }

  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_50;
  }

LABEL_37:
  v45 = v25;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v31 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x18D00E9C0](v32, v30);
      }

      else
      {
        v33 = *(v30 + 8 * v32 + 32);
      }

      v34 = v33;
      ++v32;
      _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_18CD69590;
      *(v35 + 32) = v34;
      v36 = objc_allocWithZone(MEMORY[0x1E69DC720]);
      v37 = v34;
      v38 = Array._bridgeToObjectiveC()().super.isa;

      [v36 initWithBarButtonItems:v38 representativeItem:0];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v31 != v32);

    v39 = v45;
    v9 = v40;
    a5 = v41;
    goto LABEL_51;
  }

  __break(1u);
}

void NavigationSplitSidebarStateMachine.splitViewController(_:willShow:visibilityEngine:)(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3[2];
  v12 = a3[4];
  v38 = a3[3];
  v39 = v12;
  v40 = *(a3 + 80);
  v13 = a3[1];
  v35 = *a3;
  v36 = v13;
  v37 = v11;
  static Log.splitViewVisibility.getter();
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    outlined destroy of Logger?(v10);
    if (a2 != 4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v34 = 17;
    v25 = swift_allocObject();
    v26 = v38;
    v27 = v39;
    *(v25 + 48) = v37;
    *(v25 + 64) = v26;
    *(v25 + 80) = v27;
    *(v25 + 96) = v40;
    v28 = v36;
    *(v25 + 16) = v35;
    *(v25 + 32) = v28;
    *(v25 + 104) = a1;
    outlined init with copy of UISplitViewControllerVisibilityEngine(&v35, v33);
    v29 = a1;
    static Update.enqueueAction(reason:_:)();

    NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(v29);
    return;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v17, v18))
  {

    goto LABEL_21;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v33[0] = v20;
  *v19 = 136315138;
  v32 = v4;
  v31 = v20;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v22 = 0xE700000000000000;
      v21 = 0x7972616D697270;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v22 = 0xED0000797261746ELL;
      v21 = 0x656D656C70707573;
      goto LABEL_20;
    }

LABEL_19:
    v22 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
    goto LABEL_20;
  }

  if (a2 == 2)
  {
    v22 = 0xE900000000000079;
    v21 = 0x7261646E6F636573;
    goto LABEL_20;
  }

  if (a2 == 3)
  {
    v22 = 0xE700000000000000;
    v21 = 0x746361706D6F63;
    goto LABEL_20;
  }

  if (a2 != 4)
  {
    goto LABEL_19;
  }

  v21 = 0x6F74636570736E69;
  v22 = 0xE900000000000072;
LABEL_20:
  v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v33);

  *(v19 + 4) = v23;
  _os_log_impl(&dword_18BD4A000, v17, v18, "willShow %s", v19, 0xCu);
  v24 = v31;
  __swift_destroy_boxed_opaque_existential_1(v31);
  MEMORY[0x18D0110E0](v24, -1, -1);
  MEMORY[0x18D0110E0](v19, -1, -1);

  v4 = v32;
LABEL_21:
  (*(v15 + 8))(v10, v14);
  if (a2 == 4)
  {
    goto LABEL_22;
  }

LABEL_3:
  NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(a1);
  if (a2 == 2 && !*(v4 + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    NavigationSplitSidebarStateMachine.coordinatedHost.didset(Strong);
  }
}

uint64_t NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)(void *a1)
{
  swift_weakInit();
  v2 = swift_allocObject();
  swift_weakInit();

  v3 = [a1 transitionCoordinator];
  if (v3)
  {
    v4 = v3;
    if ([a1 style])
    {
      v5 = [a1 viewControllerForColumn_];
      if (v5)
      {
        v6 = v5;
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (!v7)
        {
          swift_unknownObjectRelease();

LABEL_12:

          return swift_weakDestroy();
        }

        v8 = [v7 topViewController];

        if (v8)
        {
          type metadata accessor for UIHostingController<AnyView>();
          v9 = swift_dynamicCastClass();
          if (!v9)
          {
            swift_unknownObjectRelease();

            return swift_weakDestroy();
          }

          v6 = *(v9 + direct field offset for UIHostingController.host);

          specialized closure #1 in NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)();
          v10 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x80);
          ++*(v6 + v10);
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v12 = swift_allocObject();
          v12[2] = v11;
          v12[3] = partial apply for closure #2 in NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:);
          v12[4] = v2;
          aBlock[4] = partial apply for closure #1 in UISplitViewController.animateTopDetailAlongsideTransition(begin:end:);
          aBlock[5] = v12;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          aBlock[3] = &block_descriptor_63;
          v13 = _Block_copy(aBlock);

          [v4 animateAlongsideTransition:0 completion:v13];

          _Block_release(v13);

          swift_unknownObjectRelease();
          goto LABEL_12;
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return swift_weakDestroy();
}

uint64_t sub_18BFCB56C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BFCB5A4()
{

  return swift_deallocObject();
}

uint64_t specialized closure #1 in NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)()
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    static Log.splitViewVisibility.getter();
    v5 = type metadata accessor for Logger();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) == 1)
    {
      outlined destroy of Logger?(v2);
    }

    else
    {
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_18BD4A000, v7, v8, "begin animateAlongsideTransition", v9, 2u);
        MEMORY[0x18D0110E0](v9, -1, -1);
      }

      (*(v6 + 8))(v2, v5);
    }

    v10 = *(v4 + 16);
    *(v4 + 16) = v10 + 1;
    NavigationSplitSidebarStateMachine.transitionCount.didset(v10);
  }

  return result;
}

void NavigationSplitSidebarStateMachine.transitionCount.didset(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = *(v2 + 16);
  if (v10 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v10 != a1)
  {
    static Log.splitViewVisibility.getter();
    v11 = type metadata accessor for Logger();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (v13(v9, 1, v11) == 1)
    {
      outlined destroy of Logger?(v9);
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v24 = v12;
        v17 = v16;
        *v16 = 134217984;
        *(v16 + 4) = a1;
        _os_log_impl(&dword_18BD4A000, v14, v15, "old transitionCount: %ld", v16, 0xCu);
        v18 = v17;
        v12 = v24;
        MEMORY[0x18D0110E0](v18, -1, -1);
      }

      (*(v12 + 8))(v9, v11);
    }

    static Log.splitViewVisibility.getter();
    if (v13(v6, 1, v11) == 1)
    {
      outlined destroy of Logger?(v6);
      if (*(v2 + 16))
      {
        return;
      }

      goto LABEL_15;
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = *(v2 + 16);

      _os_log_impl(&dword_18BD4A000, v19, v20, "new transitionCount: %ld", v21, 0xCu);
      MEMORY[0x18D0110E0](v21, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v6, v11);
    if (!*(v2 + 16))
    {
LABEL_15:
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      NavigationSplitSidebarStateMachine.coordinatedHost.didset(Strong);
    }
  }
}

void UIKitNavigationController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v16.receiver = v3;
  v16.super_class = type metadata accessor for UIKitNavigationController();
  objc_msgSendSuper2(&v16, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  *(v3 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isTransitioningToSize) = 1;
  v14 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v13 = &block_descriptor_32;
  v7 = _Block_copy(&v10);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = partial apply for closure #2 in UIKitNavigationController.viewWillTransition(to:with:);
  v15 = v8;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v13 = &block_descriptor_64_0;
  v9 = _Block_copy(&v10);

  [a1 animateAlongsideTransition:v7 completion:v9];
  _Block_release(v9);
  _Block_release(v7);
}

uint64_t sub_18BFCBD30()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t getEnumTag for AnyNavigationSplitVisibility.Kind(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 3 | (4 * ((v1 >> 8) & 1))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void type metadata accessor for _ViewModifier_Content<PlatformItemListContentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _ViewModifier_Content();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemListContentModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<PlatformItemListContentModifier>, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>);
    }
  }
}

_WORD *destructiveInjectEnumTag for AnyNavigationSplitVisibility.Kind(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x103 | (a2 << 14);
  }

  else
  {
    *result = ((a2 - 3) << 6) & 0x100 | (a2 - 3) & 3 | 0xC000;
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>, HiddenModifierAllowingPlatformItemList> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemListContentModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<PlatformItemListContentModifier>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout>();
    lazy protocol witness table accessor for type _ViewModifier_Content<PlatformItemListContentModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<PlatformItemListContentModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<PlatformItemListContentModifier>, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<PlatformItemListContentModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void specialized NavigationSplitSidebarStateMachine.splitViewController(_:didChangeTo:)(uint64_t a1)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.splitViewVisibility.getter();
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {

LABEL_24:
      (*(v6 + 8))(v4, v5);
      goto LABEL_25;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          v12 = 0xE900000000000063;
          v13 = 0x6974616D6F747561;
          goto LABEL_23;
        case 1:
          v12 = 0xED0000796C6E4F79;
          v13 = 0x7261646E6F636573;
          goto LABEL_23;
        case 2:
          v11 = "oneBesideSecondary";
          goto LABEL_13;
      }
    }

    else
    {
      if (a1 <= 4)
      {
        if (a1 != 3)
        {
          v11 = "twoBesideSecondary";
LABEL_13:
          v12 = (v11 - 32) | 0x8000000000000000;
          v13 = 0xD000000000000012;
LABEL_23:
          v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v18);

          *(v9 + 4) = v15;
          _os_log_impl(&dword_18BD4A000, v7, v8, "didChangeTo: %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v10);
          MEMORY[0x18D0110E0](v10, -1, -1);
          MEMORY[0x18D0110E0](v9, -1, -1);

          goto LABEL_24;
        }

        v13 = 0xD000000000000010;
        v14 = "oneOverSecondary";
LABEL_21:
        v12 = (v14 - 32) | 0x8000000000000000;
        goto LABEL_23;
      }

      if (a1 == 5)
      {
        v13 = 0xD000000000000010;
        v14 = "twoOverSecondary";
        goto LABEL_21;
      }

      if (a1 == 6)
      {
        v12 = 0x800000018CD54330;
        v13 = 0xD000000000000014;
        goto LABEL_23;
      }
    }

    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E75;
    goto LABEL_23;
  }

  outlined destroy of Logger?(v4);
LABEL_25:
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  NavigationSplitSidebarStateMachine.coordinatedHost.didset(Strong);
}

void *closure #1 in UISplitViewController.animateTopDetailAlongsideTransition(begin:end:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return a3();
  }

  v5 = *((*MEMORY[0x1E69E7D40] & *result) + 0x80);
  v6 = *(result + v5);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (!v7)
  {
    *(result + v5) = v8 & ~(v8 >> 31);

    return a3();
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in NavigationSplitSidebarStateMachine.coordinateAnimatedColumnChange(alongside:)()
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    static Log.splitViewVisibility.getter();
    v5 = type metadata accessor for Logger();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) == 1)
    {
      outlined destroy of Logger?(v2);
    }

    else
    {
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_18BD4A000, v7, v8, "end animateAlongsideTransition", v9, 2u);
        MEMORY[0x18D0110E0](v9, -1, -1);
      }

      (*(v6 + 8))(v2, v5);
    }

    v10 = *(v4 + 16);
    *(v4 + 16) = v10 - 1;
    NavigationSplitSidebarStateMachine.transitionCount.didset(v10);
  }

  return result;
}

void closure #2 in UIKitNavigationController.viewWillTransition(to:with:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isTransitioningToSize] = 0;
  }
}

uint64_t protocol witness for static PlatformHiddenRepresentable.makeRepresentation(inputs:allowedKeys:) in conformance PlatformItemListHiddenRepresentable(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 2) == 0)
  {
    return PreferenceKeys.remove(_:)();
  }

  return result;
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA32LabeledContentStyleConfigurationV5LabelV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Label>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Label>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for LabeledContentStyleConfiguration.Label, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LabeledContentStyleConfiguration.Label(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA32LabeledContentStyleConfigurationV5LabelV_Tt2B5(v2, v6);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23LabelStyleConfigurationV5TitleV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Title>, lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Title>, lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for LabelStyleConfiguration.Title, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LabelStyleConfiguration.Title(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA23LabelStyleConfigurationV5TitleV_Tt2B5(v2, v6);
}

uint64_t protocol witness for static PlatformTextRepresentable.shouldMakeRepresentation(inputs:) in conformance PlatformItemListTextRepresentable(uint64_t a1)
{
  v3 = *(a1 + 48);
  v1 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  result = 0;
  if (v1)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    PropertyList.subscript.getter();
    return (v3 >> 2) & 1;
  }

  return result;
}

Swift::Void __swiftcall UIHostingController.updateIncomingBoundsIfNeeded(navigationController:)(UINavigationController *navigationController)
{
  [specialized UIHostingController.host.getter() bounds];
  v49.origin.x = 0.0;
  v49.origin.y = 0.0;
  v49.size.width = 0.0;
  v49.size.height = 0.0;
  if (!CGRectEqualToRect(v48, v49))
  {
    return;
  }

  v2 = [(UINavigationController *)navigationController viewIfLoaded];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = specialized UIHostingController.host.getter();
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;
LABEL_4:

    [v12 setBounds_];
    return;
  }

  v17 = [(UINavigationController *)navigationController splitViewController];
  if (v17)
  {
    v18 = v17;
    UISplitViewController.columnBounds(forNavController:)(&v46, navigationController);

    if (!v46.is_nil)
    {
      width = v46.value.size.width;
      height = v46.value.size.height;
      x = v46.value.origin.x;
      y = v46.value.origin.y;
      v12 = specialized UIHostingController.host.getter();
      v13 = x;
      v14 = y;
      v15 = width;
      v16 = height;
      goto LABEL_4;
    }
  }

  static RepresentableContextValues.current.getter();
  if (v41 < 2)
  {
    outlined consume of RepresentableContextValues?(v41, v42, v43, v44, v45);
    return;
  }

  outlined consume of RepresentableContextValues?(v19, v42, v43, v44, v45);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    v22 = *(Strong + 208);

    if (v21)
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v24 = ViewGraphDelegate.uiViewController.getter(ObjectType, v22);
      swift_unknownObjectRelease();
      if (v24)
      {
        v25 = [v24 splitViewController];
        if (v25)
        {
        }

        else
        {
          v30 = [v24 viewIfLoaded];
          if (v30)
          {
            v31 = v30;
            [v30 bounds];
            v33 = v32;
            v35 = v34;
            v37 = v36;
            v39 = v38;

            v40 = specialized UIHostingController.host.getter();
            [v40 setBounds_];

            goto LABEL_20;
          }
        }
      }

LABEL_20:
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall _UIHostingView.renderForPreferences(updateDisplayList:)(Swift::Bool updateDisplayList)
{
  v2 = _UIHostingView.base.getter();
  UIHostingViewBase.renderForPreferences(updateDisplayList:)(updateDisplayList);
}

uint64_t static PlatformItemListTextRepresentable.representationOptions(inputs:)@<X0>(uint64_t *a1@<X8>)
{
  lazy protocol witness table accessor for type IncludesAccessibilityText and conformance IncludesAccessibilityText();
  PropertyList.subscript.getter();
  if ((v6 & 1) != 0 || (lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput(), PropertyList.subscript.getter(), (v5 & 0x10) != 0))
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  lazy protocol witness table accessor for type IncludesStyledText and conformance IncludesStyledText();
  result = PropertyList.subscript.getter();
  *a1 = v2 | v4;
  return result;
}

uint64_t protocol witness for static PlatformTextRepresentable.makeRepresentation(inputs:context:outputs:) in conformance PlatformItemListTextRepresentable()
{

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

unint64_t lazy protocol witness table accessor for type PlatformItemListTextRepresentable.PlatformRepresentation and conformance PlatformItemListTextRepresentable.PlatformRepresentation()
{
  result = lazy protocol witness table cache variable for type PlatformItemListTextRepresentable.PlatformRepresentation and conformance PlatformItemListTextRepresentable.PlatformRepresentation;
  if (!lazy protocol witness table cache variable for type PlatformItemListTextRepresentable.PlatformRepresentation and conformance PlatformItemListTextRepresentable.PlatformRepresentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListTextRepresentable.PlatformRepresentation and conformance PlatformItemListTextRepresentable.PlatformRepresentation);
  }

  return result;
}

uint64_t closure #2 in static UIKitFlattenedButtonAdaptor._makeView(view:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for UIKitFlattenedButtonAdaptor();
  v3 = *(v2 + 36);
  v8[2] = v2;
  v4 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_23, v8, v4, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

unint64_t lazy protocol witness table accessor for type UpdateUIButton and conformance UpdateUIButton()
{
  result = lazy protocol witness table cache variable for type UpdateUIButton and conformance UpdateUIButton;
  if (!lazy protocol witness table cache variable for type UpdateUIButton and conformance UpdateUIButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateUIButton and conformance UpdateUIButton);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateUIButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  swift_unknownObjectWeakCopyInit();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  v6 = v4;
  v7 = v5;
  return a1;
}

void destroy for UpdateUIButton(uint64_t a1)
{

  MEMORY[0x18D011290](a1 + 40);

  v2 = *(a1 + 72);
}

unint64_t lazy protocol witness table accessor for type ButtonDisplayList<HostingUIButton> and conformance ButtonDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type ButtonDisplayList<HostingUIButton> and conformance ButtonDisplayList<A>;
  if (!lazy protocol witness table cache variable for type ButtonDisplayList<HostingUIButton> and conformance ButtonDisplayList<A>)
  {
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(255, &lazy cache variable for type metadata for ButtonDisplayList<HostingUIButton>, type metadata accessor for HostingUIButton, type metadata accessor for ButtonDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonDisplayList<HostingUIButton> and conformance ButtonDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonResponder and conformance ButtonResponder()
{
  result = lazy protocol witness table cache variable for type ButtonResponder and conformance ButtonResponder;
  if (!lazy protocol witness table cache variable for type ButtonResponder and conformance ButtonResponder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonResponder and conformance ButtonResponder);
  }

  return result;
}

uint64_t initializeWithCopy for ButtonResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

unint64_t lazy protocol witness table accessor for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton()
{
  result = lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton;
  if (!lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton;
  if (!lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton;
  if (!lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton;
  if (!lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton;
  if (!lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton);
  }

  return result;
}

uint64_t closure #3 in static UIKitMenuButton._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for UIKitMenuButton();
  v6 = MEMORY[0x1E69E6370];
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 16, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_1, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

void type metadata accessor for (())?()
{
  if (!lazy cache variable for type metadata for (())?)
  {
    type metadata accessor for ()();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (())?);
    }
  }
}

void type metadata accessor for WeakBox<UIButton>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t implicit closure #2 in static UIKitMenuButton._makeView(view:inputs:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *MEMORY[0x1E69E9840];
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v13 = type metadata accessor for UIKitMenuButton.TransformItemList();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for WeakBox<UIButton>?(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in Attribute.init<A>(_:), v12, v13, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v15;
}

uint64_t PlatformItemLabelView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v62 = a1[3];
  v4 = type metadata accessor for ModifiedContent();
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - v5;
  v61 = a1[6];
  v7 = v61;
  v8 = lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier();
  v74 = v7;
  v75 = v8;
  v64 = MEMORY[0x1E697E858];
  v59 = v4;
  swift_getWitnessTable();
  v58 = type metadata accessor for MergePlatformItemsView();
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v43 - v9;
  v11 = a1[5];
  v70 = a1[2];
  v71 = v12;
  v47 = v70;
  v72 = v11;
  v73 = &protocol witness table for MergePlatformItemsView<A>;
  v48 = v11;
  v49 = type metadata accessor for PlatformItemListGeneratingViewModifier();
  v55 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v43 - v13;
  v14 = a1[4];
  v56 = a1[7];
  v44 = v14;
  v15 = type metadata accessor for MergePlatformItemsView();
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v50 = type metadata accessor for ModifiedContent();
  v57 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = &v43 - v18;
  type metadata accessor for PlatformItemListTransformModifier();
  v19 = type metadata accessor for ModifiedContent();
  v54 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v43 - v22;
  v43 = v2;
  v23 = View.mergePlatformItems()(v14, v17);
  v24 = v61;
  v25 = v62;
  MEMORY[0x18D00A570](v23, v62, &type metadata for PlatformItemListContentModifier, v61);
  v26 = v10;
  v27 = v10;
  v28 = v59;
  View.mergePlatformItems()(v59, v27);
  (*(v63 + 8))(v6, v28);
  v29 = v52;
  (*(v60 + 32))(v52, v26, v58);
  v30 = v45;
  v31 = v49;
  MEMORY[0x18D00A570](v29, v15, v49, &protocol witness table for MergePlatformItemsView<A>);
  (*(v55 + 8))(v29, v31);
  (*(v53 + 8))(v17, v15);
  v32 = v47;
  v33 = implicit closure #1 in PlatformItemLabelView.body.getter(v43, v47, v25, v44, v48, v24, v56);
  v35 = v34;
  v68 = &protocol witness table for MergePlatformItemsView<A>;
  v69 = &protocol witness table for PlatformItemListGeneratingViewModifier<A, B>;
  v36 = v50;
  WitnessTable = swift_getWitnessTable();
  v38 = v46;
  View.transformPlatformItemList<A>(_:_:)(WitnessTable, v33, v35, v36, v32, WitnessTable);

  (*(v57 + 8))(v30, v36);
  v66 = WitnessTable;
  v67 = &protocol witness table for PlatformItemListTransformModifier<A>;
  v39 = swift_getWitnessTable();
  v40 = v51;
  static ViewBuilder.buildExpression<A>(_:)(v38, v19, v39);
  v41 = *(v54 + 8);
  v41(v38, v19);
  static ViewBuilder.buildExpression<A>(_:)(v40, v19, v39);
  return (v41)(v40, v19);
}

uint64_t View.mergePlatformItems()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

void (*implicit closure #1 in PlatformItemLabelView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t *a1)
{
  v21 = a6;
  v22 = a7;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v12 = type metadata accessor for PlatformItemLabelView();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  (*(v13 + 16))(&v21 - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  v19 = v22;
  *(v18 + 6) = v21;
  *(v18 + 7) = v19;
  (*(v13 + 32))(&v18[v17], v16, v12);
  return partial apply for implicit closure #2 in implicit closure #1 in PlatformItemLabelView.body.getter;
}

uint64_t sub_18BFCE254()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6 = *(v0 + 32);
  v3 = (type metadata accessor for PlatformItemLabelView() - 8);
  v4 = v0 + ((*(*v3 + 80) + 64) & ~*(*v3 + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  (*(*(v2 - 8) + 8))(v4 + v3[19], v2);
  (*(*(v6 - 8) + 8))(v4 + v3[20]);
  return swift_deallocObject();
}

double DefaultLabelStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>)
{
  *&v18 = swift_getKeyPath();
  WORD4(v18) = 0;
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v19[9] = 0;
  *&v19[16] = swift_getKeyPath();
  *&v19[24] = 0;
  *&v15[10] = *&v19[10];
  v14 = v18;
  *v15 = *v19;
  v20 = v18;
  v21 = 0;
  v22 = 0;
  v23 = *v19;
  v24 = 0;
  v25 = 0;
  v26 = *&v19[16];
  v27 = 0;
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(&v18, &v38, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(&v20, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = swift_getKeyPath();
  *&v28 = KeyPath;
  WORD4(v28) = 0;
  *v29 = v3;
  v29[8] = 0;
  v29[9] = 0;
  *&v29[16] = v4;
  *&v29[24] = 0;
  *&v17[10] = *&v29[10];
  v16 = v28;
  *v17 = *v29;
  v30 = KeyPath;
  v31 = 0;
  v32 = 0;
  v33 = v3;
  v34 = 0;
  v35 = 0;
  v36 = v4;
  v37 = 0;
  outlined init with copy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(&v28, &v38, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(&v30, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>);
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v40 = *&v15[16];
  v41 = v16;
  v42[0] = *v17;
  *(v42 + 10) = *&v17[10];
  v38 = v14;
  v39 = *v15;
  outlined copy of Environment<CGFloat?>.Content(v5, 0, 0);
  outlined copy of Environment<Bool>.Content(v6, 0);
  outlined copy of Environment<Bool>.Content(v7, 0);
  outlined consume of Environment<CGFloat?>.Content(v5, 0, 0);
  outlined consume of Environment<Bool>.Content(v6, 0);
  outlined consume of Environment<Bool>.Content(v7, 0);
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  outlined copy of Environment<CGFloat?>.Content(v8, 0, 0);
  outlined copy of Environment<Bool>.Content(v9, 0);
  outlined consume of Environment<CGFloat?>.Content(v8, 0, 0);
  outlined consume of Environment<Bool>.Content(v9, 0);
  v10 = v41;
  *(a1 + 32) = v40;
  *(a1 + 48) = v10;
  v11 = v42[1];
  *(a1 + 64) = v42[0];
  *(a1 + 80) = v11;
  result = *&v38;
  v13 = v39;
  *a1 = v38;
  *(a1 + 16) = v13;
  *(a1 + 96) = v5;
  *(a1 + 104) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = v7;
  *(a1 + 136) = 0;
  *(a1 + 144) = v8;
  *(a1 + 152) = 0;
  *(a1 + 153) = 0;
  *(a1 + 160) = v9;
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_18BFCE88C@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

uint64_t initializeWithCopy for MultimodalListStackLabelStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 9);
  v6 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v6, v5);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content(v7, v8);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  return a1;
}

uint64_t destroy for MultimodalListStackLabelStyle(uint64_t a1)
{
  outlined consume of Environment<CGFloat?>.Content(*a1, *(a1 + 8), *(a1 + 9));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Environment<Bool>.Content(v2, v3);
}

uint64_t destroy for WrappingLabelStyleView(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t UIKitMenuButton.Child.value.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a7;
  v56 = a8;
  v73 = a4;
  v74 = a5;
  v75 = a6;
  *v76 = a7;
  v60 = HIDWORD(a1);
  v61 = a2;
  v59 = HIDWORD(a2);
  v63 = type metadata accessor for UIKitMenuButton();
  v13 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v55 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v44 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v44 - v25);
  v57 = a4;
  v44 = a5;
  UIKitMenuButton.Child.menuButton.getter(&v44 - v25);
  v27 = v26[1];
  v54 = *v26;
  v53 = v27;
  outlined copy of AppIntentExecutor?(v54);
  v28 = *(v13 + 8);
  v28(v26, v63);
  v58 = a3;
  v45 = a6;
  UIKitMenuButton.Child.menuButton.getter(v23);
  v52 = v23[16];
  v29 = v63;
  v28(v23, v63);
  v30 = v49;
  v46 = a1;
  v31 = v44;
  UIKitMenuButton.Child.menuButton.getter(v49);
  v50 = *(v30 + 17);
  v28(v30, v29);
  v49 = AGCreateWeakAttribute();
  v32 = v48;
  v33 = v45;
  UIKitMenuButton.Child.menuButton.getter(v48);
  v47 = *(v32 + *(v29 + 68));
  v28(v32, v29);
  v34 = v51;
  LODWORD(v29) = v58;
  v35 = v33;
  UIKitMenuButton.Child.menuButton.getter(v51);
  v36 = v63;
  LODWORD(v48) = *(v34 + *(v63 + 72));
  v28(v34, v63);
  v51 = AGCreateWeakAttribute();
  v37 = v55;
  v38 = v57;
  UIKitMenuButton.Child.menuButton.getter(v55);
  v39 = (v37 + *(v36 + 76));
  v41 = *v39;
  v40 = v39[1];
  outlined copy of AppIntentExecutor?(*v39);
  v28(v37, v36);
  v42 = AGCreateWeakAttribute();
  LOBYTE(v73) = 4;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v74 = v54;
  v75 = v53;
  v76[0] = v52;
  v76[1] = v50;
  *&v76[4] = v49;
  v77 = 0;
  v78 = v47;
  v79 = v48;
  v80 = v51;
  v81 = 0;
  v82 = v41;
  v83 = v40;
  v84 = v42;
  v85 = 0;
  v64 = v38;
  v65 = v31;
  v66 = v35;
  v67 = v62;
  v68 = v46;
  v69 = v60;
  v70 = v61;
  v71 = v59;
  v72 = v29;
  return UIKitButton.init(configuration:label:)(&v73, partial apply for closure #1 in UIKitMenuButton.Child.value.getter, v56);
}

uint64_t UIKitMenuButton.Child.menuButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIKitMenuButton();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedMenuStyle@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  outlined copy of AppIntentExecutor?(v2);

  return outlined copy of AppIntentExecutor?(v4);
}

uint64_t MenuStyleModifier.styleBody(configuration:)(_OWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = a1[1];
  v16[0] = *a1;
  v16[1] = v12;
  (*(v3 + 24))(v16, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v11, AssociatedTypeWitness);
}

uint64_t DefaultMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  outlined copy of AppIntentExecutor?(v3);
  outlined copy of AppIntentExecutor?(v5);
  outlined copy of Environment<Bool>.Content(KeyPath, 0);
  outlined copy of Environment<Color?>.Content(v8, 0);
  outlined consume of Environment<Bool>.Content(KeyPath, 0);
  result = outlined consume of Environment<Color?>.Content(v8, 0);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 0;
  *(a2 + 64) = v8;
  *(a2 + 72) = 0;
  return result;
}

uint64_t ToolbarMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  outlined copy of AppIntentExecutor?(*a1);
  outlined copy of AppIntentExecutor?(v5);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  Namespace.wrappedValue.getter();
  _print_unlocked<A, B>(_:_:)();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 0;
  *(a2 + 64) = v8;
  *(a2 + 72) = 0;
  *(a2 + 80) = partial apply for closure #1 in View.platformItemIdentifier(_:);
  *(a2 + 88) = result;
  return result;
}

uint64_t sub_18BFCF440()
{

  return swift_deallocObject();
}

BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

__n128 ButtonMenuStyle.makeBody(configuration:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v14 = *a1;
  v15 = a1[1];
  v4 = a1[3];
  v11 = a1[2];
  KeyPath = swift_getKeyPath();
  v16[96] = 0;
  v12 = swift_getKeyPath();
  v16[88] = 0;
  v10 = swift_getKeyPath();
  v16[80] = 0;
  v5 = swift_getKeyPath();
  v16[72] = 0;
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  outlined copy of AppIntentExecutor?(v3);
  outlined copy of AppIntentExecutor?(v11);
  outlined consume of Environment<Color?>.Content(v6, 0);
  outlined consume of Environment<Bool>.Content(v7, 0);
  LOBYTE(v17) = 2;
  *(&v17 + 1) = KeyPath;
  v18.n128_u8[0] = 0;
  v18.n128_u64[1] = v12;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = v10;
  LOBYTE(v20) = 0;
  *(&v20 + 1) = v5;
  v21 = 0;
  v35 = 0;
  v33 = v19;
  v34 = v20;
  v31 = v17;
  v32 = v18;
  v22[0] = 2;
  v23 = KeyPath;
  v24 = 0;
  v25 = v12;
  v26 = 0;
  v27 = v10;
  v28 = 0;
  v29 = v5;
  v30 = 0;
  outlined init with copy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(&v17, v16, type metadata accessor for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
  outlined destroy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(v22, type metadata accessor for StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v11;
  *(a2 + 24) = v4;
  v8 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v8;
  *(a2 + 96) = v35;
  result = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = result;
  *(a2 + 97) = 256;
  return result;
}

uint64_t outlined init with copy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for BorderlessButtonMenuStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Selector?>.Content(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  outlined copy of Environment<Color?>.Content(v8, v9);
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  v10 = *(v2 + 56);
  LOBYTE(v2) = *(v2 + 64);
  outlined copy of Environment<Selector?>.Content(v10, v2);
  *(a1 + 56) = v10;
  *(a1 + 64) = v2;
  return a1;
}

uint64_t outlined destroy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for BorderlessButtonMenuStyle(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*(a1 + 8), *(a1 + 16));
  outlined consume of Environment<Selector?>.Content(*(a1 + 24), *(a1 + 32));
  outlined consume of Environment<Color?>.Content(*(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t static ListRepresentable.layoutOptions(_:)@<X0>(void *a1@<X8>)
{
  static Semantics.v3_2.getter();
  result = isLinkedOnOrAfter(_:)();
  if (result)
  {
    lazy protocol witness table accessor for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions();
    result = OptionSet<>.insert(_:)();
  }

  *a1 = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions()
{
  result = lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions;
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions);
  }

  return result;
}

uint64_t protocol witness for static CoreViewRepresentable.shouldEagerlyUpdateSafeArea(_:) in conformance ListRepresentable<A, B>(char **a1)
{
  return static ListRepresentable.shouldEagerlyUpdateSafeArea(_:)(*a1);
}

{
  return static ListRepresentable.shouldEagerlyUpdateSafeArea(_:)(*a1);
}

void type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for HStack<ControlGroupStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuTitleVisibilityKey>, &type metadata for MenuTitleVisibilityKey, &protocol witness table for MenuTitleVisibilityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<MenuTitleVisibilityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t static ListRepresentable.shouldEagerlyUpdateSafeArea(_:)(char *a1)
{
  if ([a1 isTracking] & 1) != 0 || (objc_msgSend(a1, sel_isDecelerating) & 1) != 0 || (objc_msgSend(a1, sel_isScrollAnimating))
  {
    return 1;
  }

  v3 = *&a1[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_safeAreaTransitionState + 8];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  LOBYTE(v3) = v5(ObjectType, v3);
  swift_unknownObjectRelease();
  return v3 & 1;
}

{
  if ([a1 isTracking] & 1) != 0 || (objc_msgSend(a1, sel_isDecelerating) & 1) != 0 || (objc_msgSend(a1, sel_isScrollAnimating))
  {
    return 1;
  }

  v3 = *&a1[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_safeAreaTransitionState + 8];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  LOBYTE(v3) = v5(ObjectType, v3);
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t assignWithTake for BorderlessButtonMenuStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 32);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 48);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v11;
  outlined consume of Environment<Color?>.Content(v12, v13);
  v14 = *(a2 + 64);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v14;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  return a1;
}

uint64_t protocol witness for MenuStyle.makeBody(configuration:) in conformance BorderlessButtonMenuStyle@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(v2 + 48);
  v12[2] = *(v2 + 32);
  v12[3] = v8;
  v13 = *(v2 + 64);
  v9 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v9;
  closure #1 in BorderlessButtonMenuStyle.makeBody(configuration:)(v12, v4, v5, v6, v7, a2);
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifi();
  return closure #2 in BorderlessButtonMenuStyle.makeBody(configuration:)(v12, v4, v5, v6, v7, a2 + *(v10 + 44));
}

uint64_t closure #1 in BorderlessButtonMenuStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = specialized Environment.wrappedValue.getter(*(a1 + 24), *(a1 + 32));
  v13 = specialized Environment.wrappedValue.getter(*(a1 + 8), *(a1 + 16));
  v16[0] = a2;
  v16[1] = a3;
  v17 = 0;
  v18 = v12;
  v19 = v13;
  v20 = a4;
  v21 = a5;
  specialized View.toolbarButtonLabel()(0, 4, v22);
  type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>();
  outlined copy of AppIntentExecutor?(a2);
  outlined copy of AppIntentExecutor?(a4);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v22, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>);
  KeyPath = swift_getKeyPath();
  outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(v16, v22, type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
  v22[400] = 0;
  v23 = KeyPath;
  v24 = 0;
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v16, type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
  outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(v22, a6, type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  *(a6 + 424) = 1;
  *(a6 + 432) = 2;
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v22, type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredic, type metadata accessor for ModifiedContent<ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInset, type metadata accessor for UIKitSystemButtonConfigurationModifier);
  return static UIButton.Configuration.borderless()();
}

uint64_t initializeWithCopy for UIKitMenuButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 < 0xFFFFFFFFuLL)
  {
    *a1 = *a2;
  }

  else
  {
    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v6;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = (v9 + 18 + a1) & ~v9;
  v11 = (v9 + 18 + a2) & ~v9;
  (*(v7 + 16))(v10, v11);
  v12 = *(v8 + 48);
  v13 = *(*(a3 + 24) - 8);
  v14 = v13 + 16;
  v15 = *(v13 + 80);
  v16 = v12 + v15;
  v17 = (v16 + v10) & ~v15;
  v18 = (v16 + v11) & ~v15;
  (*(v13 + 16))(v17, v18);
  v19 = *(v14 + 48);
  v20 = (v19 + v17);
  v21 = v19 + v18;
  *v20 = *(v19 + v18);
  v20[1] = *(v19 + v18 + 1);
  v22 = (v19 + v17 + 9) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v21 + 9) & 0xFFFFFFFFFFFFFFF8;
  if (*v23 < 0xFFFFFFFFuLL)
  {
    *v22 = *v23;
  }

  else
  {
    v24 = *(v23 + 8);
    *v22 = *v23;
    *(v22 + 8) = v24;
  }

  return a1;
}

uint64_t destroy for UIKitMenuButton(void *a1, uint64_t a2)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {
  }

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 18) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(v5 + 56);
  v8 = *(*(a2 + 24) - 8);
  v9 = v8 + 8;
  v10 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  result = (*(v8 + 8))(v10);
  if (*((*(v9 + 56) + v10 + 9) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t assignWithTake for ToolbarAppearanceConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

Swift::Void __swiftcall UpdateCoalescingCollectionView.didMoveToWindow()()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  objc_msgSendSuper2(&v12, sel_didMoveToWindow);
  v2 = [v0 window];
  if (!v2)
  {
    v11 = *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper];
    if (!v11)
    {
      return;
    }

    v8 = v11;
    if (static UserDefaultKeyedFeature.isEnabled.getter())
    {
      _UIUpdateCycleUnregisterIdleObserver();
    }

    goto LABEL_14;
  }

  v3 = *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper];
  if (v3)
  {
    v4 = v3;
    if (static UserDefaultKeyedFeature.isEnabled.getter())
    {
      _UIUpdateCycleRegisterIdleObserver();
    }

    v5 = &v4[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties];
    swift_beginAccess();
    if ((*(v5 + 38) | *(v5 + 16)))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong flashScrollIndicators];

      v4 = Strong;
    }
  }

  v7 = specialized UIView.firstAncestorWhere(_:)(v1);
  if (v7)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (!v10)
    {
      __break(1u);
      return;
    }

    (*(v10 + 8))(ObjectType, v10);
LABEL_14:
  }
}

uint64_t closure #2 in BorderlessButtonMenuStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = specialized Environment.wrappedValue.getter(*(a1 + 24), *(a1 + 32));
  v13 = specialized Environment.wrappedValue.getter(*(a1 + 8), *(a1 + 16));
  v18[0] = a2;
  v18[1] = a3;
  v19 = 0;
  v20 = v12;
  v21 = v13;
  v22 = a4;
  v23 = a5;
  specialized View.toolbarButtonLabel()(0, 4, v24);
  type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>();
  outlined copy of AppIntentExecutor?(a2);
  outlined copy of AppIntentExecutor?(a4);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0);
  type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.LineStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v24, type metadata accessor for ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>);
  KeyPath = swift_getKeyPath();
  outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(v18, v24, type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
  v24[400] = 0;
  v25 = KeyPath;
  v26 = 0;
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v18, type metadata accessor for UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>);
  outlined init with copy of UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>(v24, a6, type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  *(a6 + 424) = 1;
  *(a6 + 432) = 2;
  outlined destroy of ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>(v24, type metadata accessor for ModifiedContent<UIKitMenuButton<StaticIf<InvertedViewInputPredicate<InterfaceIdiomPredicate<VisionInterfaceIdiom>>, ModifiedContent<ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<MenuStyleConfiguration.Label, _ContentShapeKindModifier<Rectangle>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>>, MenuStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  outlined consume of Environment<Color?>.Content(v15, 0);
  return outlined consume of Environment<Selector?>.Content(v16, 0);
}

void *specialized UIView.firstAncestorWhere(_:)(void *a1)
{
  return specialized UIView.firstAncestorWhere(_:)(a1, specialized UIView.firstAncestorWhere(_:));
}

{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = a1;
    return a1;
  }

  v4 = [a1 superview];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = specialized UIView.firstAncestorWhere(_:)();

  return v6;
}

void *specialized UIView.firstAncestorWhere(_:)(void *a1, uint64_t (*a2)(void))
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v4 = a1;
  }

  else
  {
    v5 = [a1 superview];
    if (v5)
    {
      v6 = v5;
      v7 = a2();

      return v7;
    }

    return 0;
  }

  return a1;
}

uint64_t UIKitButton.init(configuration:label:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v4;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = *(a1 + 80);
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  type metadata accessor for UIKitButton();
  return a2();
}

uint64_t closure #1 in UIKitMenuButton.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a2);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  Value = AGGraphGetValue();
  (*(v8 + 16))(v10, Value, a4);
  static ViewBuilder.buildExpression<A>(_:)(v10, a4, a6);
  v15 = *(v8 + 8);
  v15(v10, a4);
  static ViewBuilder.buildExpression<A>(_:)(v13, a4, a6);
  return (v15)(v13, a4);
}

uint64_t initializeWithCopy for UIKitButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v8 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 64);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 16))((*(v10 + 80) + 81 + a1) & ~*(v10 + 80), (*(v10 + 80) + 81 + a2) & ~*(v10 + 80));
  return a1;
}

uint64_t destroy for UIKitButton(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
  }

  if (*(a1 + 56))
  {
  }

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 81) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t UIKitButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label();
  v6 = *(a1 + 24);
  *&v38 = &type metadata for UIKitButtonConfiguration.Label;
  *(&v38 + 1) = v4;
  *&v39 = v5;
  *(&v39 + 1) = v6;
  type metadata accessor for StaticSourceWriter();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 16);
  v34 = *(v2 + 32);
  v35 = v14;
  v16 = *(v2 + 48);
  v36 = *(v2 + 64);
  v17 = *(v2 + 16);
  v33[0] = *v2;
  v33[1] = v17;
  v29 = v34;
  v30 = v16;
  v31 = *(v2 + 64);
  v37 = *(v2 + 80);
  v32 = *(v2 + 80);
  v27 = v33[0];
  v28 = v15;
  v23[2] = v4;
  v23[3] = v6;
  v24 = v2;
  outlined init with copy of UIKitButtonConfiguration(v33, &v38);
  v18 = lazy protocol witness table accessor for type ResolvedUIKitButtonBody and conformance ResolvedUIKitButtonBody();
  View.viewAlias<A, B>(_:_:)(&type metadata for UIKitButtonConfiguration.Label, partial apply for closure #1 in UIKitButton.body.getter, v23, &unk_1EFF93510, &type metadata for UIKitButtonConfiguration.Label, v4, v18);
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v38 = v27;
  v39 = v28;
  outlined destroy of ResolvedUIKitButtonBody(&v38);
  v25 = v18;
  v26 = &protocol witness table for StaticSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, WitnessTable);
  v20 = *(v8 + 8);
  v20(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, WitnessTable);
  return (v20)(v13, v7);
}

uint64_t initializeWithCopy for UIKitButtonConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v6 = *(a2 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 64);
    *(a1 + 56) = v6;
    *(a1 + 64) = v7;
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t closure #1 in UIKitButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIKitButton();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 36), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t destroy for UIKitButtonConfiguration(uint64_t result)
{
  v1 = result;
  if (*(result + 8))
  {
  }

  if (*(v1 + 56))
  {
  }

  return result;
}

Swift::Void __swiftcall UIKitSearchBar.didMoveToWindow()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  v1 = OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder;
  v2 = v0[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder];
  if (v2 != 2 && [v0 isFirstResponder] != (v2 & 1))
  {
    v3 = &selRef_becomeFirstResponder;
    if ((v2 & 1) == 0)
    {
      v3 = &selRef_resignFirstResponder;
    }

    [v0 *v3];
  }

  v0[v1] = 2;
}

uint64_t getEnumTag for AccessibilityRelationshipScope.Relationship(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for AccessibilityRelationshipScope.Relationship(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t specialized static ListPadding.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v4 = *(a1 + 24);
  v9[0] = *(a1 + 8);
  v9[1] = v4;
  v10[0] = *(a1 + 40);
  *(v10 + 9) = *(a1 + 49);
  v5 = *(a2 + 24);
  v7[0] = *(a2 + 8);
  v7[1] = v5;
  v8[0] = *(a2 + 40);
  *(v8 + 9) = *(a2 + 49);
  return MEMORY[0x18D006FC0](v9, v7) & 1;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedUIKitButtonBody@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of UIKitButtonConfiguration(v9, v8);
}

uint64_t getEnumTag for ListStackBehavior(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ListStackBehavior(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t UIKitButtonStyleModifier.styleBody(configuration:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22[1] = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v17 = a1[3];
  v27 = a1[2];
  v28 = v17;
  v29 = a1[4];
  v30 = *(a1 + 80);
  v18 = a1[1];
  v25 = *a1;
  v26 = v18;
  (*(v7 + 16))(v9, v4, v6);
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v24 = v30;
  v23[0] = v25;
  v23[1] = v26;
  UIKitButtonStyleModifier.ResolvedBody.init(style:configuration:)(v9, v23, v6, v13);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  outlined init with copy of UIKitButtonConfiguration(&v25, v23);
  v20 = *(v11 + 8);
  v20(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v16, v10, WitnessTable);
  return (v20)(v16, v10);
}

uint64_t UIKitButtonStyleModifier.ResolvedBody.init(style:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody();
  v7 = a4 + *(v6 + 36);
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  v9 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v9;
  v10 = a4 + *(v6 + 40);
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t initializeWithCopy for UIKitButtonStyleModifier.ResolvedBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 8);
  if (v11)
  {
    v12 = *(v10 + 16);
    *(v9 + 8) = v11;
    *(v9 + 16) = v12;
  }

  else
  {
    *(v9 + 8) = *(v10 + 8);
  }

  *(v9 + 24) = *(v10 + 24);
  *(v9 + 25) = *(v10 + 25);
  v13 = *(v10 + 28);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 28) = v13;
  *(v9 + 37) = *(v10 + 37);
  *(v9 + 38) = *(v10 + 38);
  v14 = *(v10 + 40);
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 40) = v14;
  *(v9 + 49) = *(v10 + 49);
  v15 = *(v10 + 56);
  if (v15)
  {
    v16 = *(v10 + 64);
    *(v9 + 56) = v15;
    *(v9 + 64) = v16;
  }

  else
  {
    *(v9 + 56) = *(v10 + 56);
  }

  v17 = *(v10 + 72);
  *(v9 + 80) = *(v10 + 80);
  *(v9 + 72) = v17;
  v18 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 8);
  outlined copy of Environment<Bool>.Content(*v19, v21);
  *v18 = v20;
  *(v18 + 8) = v21;
  return a1;
}

uint64_t destroy for UIKitButtonStyleModifier.ResolvedBody(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + a1;
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 8))
  {
  }

  if (*(v5 + 56))
  {
  }

  v6 = (v4 + 95) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  v8 = *(v6 + 8);

  return outlined consume of Environment<Bool>.Content(v7, v8);
}

uint64_t UIKitButtonStyleModifier.ResolvedBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Flat();
  type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Nested();
  v31 = type metadata accessor for StaticIf();
  v36 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v30 - v5;
  type metadata accessor for StaticSourceWriter<ButtonStyleConfiguration.Label, HStack<UIKitButtonConfiguration.Label>>();
  v32 = type metadata accessor for ModifiedContent();
  v38 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v30 - v7;
  type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<ActionPlatformItemListFlags>, &type metadata for ActionPlatformItemListFlags, &protocol witness table for ActionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v8 = type metadata accessor for ModifiedContent();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v30 - v11;
  v47 = v3;
  v48 = v4;
  v49 = v2;
  v44 = v3;
  v45 = v4;
  v46 = v2;
  v30 = v2;
  v12 = lazy protocol witness table accessor for type UseFlattenedUIKitButton and conformance UseFlattenedUIKitButton();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v41 = v3;
  v42 = v4;
  v43 = v2;
  type metadata accessor for HStack<UIKitButtonConfiguration.Label>(0, &lazy cache variable for type metadata for HStack<UIKitButtonConfiguration.Label>, &type metadata for UIKitButtonConfiguration.Label, &protocol witness table for UIKitButtonConfiguration.Label, MEMORY[0x1E69817F0]);
  v16 = v15;
  v54 = v12;
  v55 = WitnessTable;
  v56 = v14;
  v17 = v31;
  v18 = swift_getWitnessTable();
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label();
  lazy protocol witness table accessor for type HStack<UIKitButtonConfiguration.Label> and conformance HStack<A>();
  v19 = v33;
  View.viewAlias<A, B>(_:_:)(&type metadata for ButtonStyleConfiguration.Label, UIKitButtonConfiguration.label.getter, v40, v17, &type metadata for ButtonStyleConfiguration.Label, v16, v18);
  (*(v36 + 8))(v6, v17);
  v20 = implicit closure #1 in UIKitButtonStyleModifier.ResolvedBody.body.getter(v30, v3, v4);
  v22 = v21;
  v52 = v18;
  v53 = &protocol witness table for StaticSourceWriter<A, B>;
  v23 = v32;
  v24 = swift_getWitnessTable();
  v25 = v34;
  View.transformPlatformItemList<A>(_:_:)(&type metadata for ActionPlatformItemListFlags, v20, v22, v23, &type metadata for ActionPlatformItemListFlags, v24);

  (*(v38 + 8))(v19, v23);
  v50 = v24;
  v51 = &protocol witness table for PlatformItemListTransformModifier<A>;
  v26 = swift_getWitnessTable();
  v27 = v35;
  static ViewBuilder.buildExpression<A>(_:)(v25, v8, v26);
  v28 = *(v37 + 8);
  v28(v25, v8);
  static ViewBuilder.buildExpression<A>(_:)(v27, v8, v26);
  return (v28)(v27, v8);
}

Swift::Void __swiftcall UIKitSearchBar.layoutSubviews()()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost;
  v3 = *&v0[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost];
  if (v3)
  {
    v4 = v3;
    v5 = [v0 traitCollection];
    [v5 displayScale];
    v7 = v6;

    v8 = 1.0;
    v9 = 1.0 / v7;
    [v1 safeAreaInsets];
    v33 = v10;
    v34 = v11;
    v35 = v12;
    v36 = v13;
    EdgeInsets.round(toMultipleOf:)();
    [v1 bounds];
    static Edge.Set.horizontal.getter();
    EdgeInsets.in(_:)();
    CGSize.inset(by:)();
    v15 = v14;
    v16 = *&v1[v2];
    if (v16)
    {
      v17 = v16;
      v18 = [v1 traitCollection];
      [v18 displayScale];
      v20 = v19;

      v21 = 1.0 / v20;
      [v17 sizeThatFits_];
      v23 = v22;

      if (v21 == 1.0)
      {
        v24 = ceil(v23);
      }

      else
      {
        v24 = v21 * ceil(v23 / v21);
      }

      v8 = 1.0;
    }

    else
    {
      v24 = 0.0;
    }

    EdgeInsets.originOffset.getter();
    v26 = v25;
    [v1 bounds];
    v28 = v26 + v27;
    if (v9 == v8)
    {
      v29 = round(v28);
    }

    else
    {
      v29 = v9 * round(v28 / v9);
    }

    [v1 bounds];
    v30 = CGRectGetMaxY(v38) - v24;
    v31 = v9 * round(v30 / v9);
    v32 = round(v30);
    if (v9 == 1.0)
    {
      v31 = v32;
    }

    [v4 setFrame_];
  }
}

uint64_t closure #1 in UIKitButtonStyleModifier.ResolvedBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29[1] = a3;
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9(0, v6);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - v16;
  (*(v5 + 16))(v8, a1, a2, v15);
  v18 = a1 + *(type metadata accessor for UIKitButtonStyleModifier.ResolvedBody() + 36);
  v19 = *(v18 + 48);
  v20 = *(v18 + 16);
  v37 = *(v18 + 32);
  v38 = v19;
  v21 = *(v18 + 48);
  v39 = *(v18 + 64);
  v22 = *(v18 + 16);
  v36[0] = *v18;
  v36[1] = v22;
  v32 = v37;
  v33 = v21;
  v34 = *(v18 + 64);
  v40 = *(v18 + 80);
  v35 = *(v18 + 80);
  v30 = v36[0];
  v31 = v20;
  (*(v5 + 32))(v13, v8, a2);
  v23 = &v13[*(v10 + 36)];
  v24 = v33;
  *(v23 + 2) = v32;
  *(v23 + 3) = v24;
  *(v23 + 4) = v34;
  v23[80] = v35;
  v25 = v31;
  *v23 = v30;
  *(v23 + 1) = v25;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  outlined init with copy of UIKitButtonConfiguration(v36, &v30);
  v27 = *(v11 + 8);
  v27(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v17, v10, WitnessTable);
  return (v27)(v17, v10);
}

uint64_t initializeWithCopy for UIKitButtonStyleModifier.ResolvedBody_Nested(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = *(v8 + 8);
  if (v9)
  {
    v10 = *(v8 + 16);
    *(v7 + 8) = v9;
    *(v7 + 16) = v10;
  }

  else
  {
    *(v7 + 8) = *(v8 + 8);
  }

  *(v7 + 24) = *(v8 + 24);
  *(v7 + 25) = *(v8 + 25);
  v11 = *(v8 + 28);
  *(v7 + 36) = *(v8 + 36);
  *(v7 + 28) = v11;
  *(v7 + 37) = *(v8 + 37);
  *(v7 + 38) = *(v8 + 38);
  v12 = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 40) = v12;
  *(v7 + 49) = *(v8 + 49);
  v13 = *(v8 + 56);
  if (v13)
  {
    v14 = *(v8 + 64);
    *(v7 + 56) = v13;
    *(v7 + 64) = v14;
  }

  else
  {
    *(v7 + 56) = *(v8 + 56);
  }

  v15 = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 72) = v15;
  return a1;
}

uint64_t destroy for UIKitButtonStyleModifier.ResolvedBody_Nested(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  result = (*v3)();
  v5 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 8))
  {
  }

  if (*(v5 + 56))
  {
  }

  return result;
}

void *assignWithTake for SearchFieldConfiguration(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  *(v8 + 1) = *(a2 + v7 + 2);
  v8[8] = *(a2 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 4);
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 40))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = a3[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(a1 + v16 + 8);
  if (v19 == 255)
  {
    goto LABEL_5;
  }

  v20 = v18[8];
  if (v20 == 255)
  {
    outlined destroy of PlatformItemCollection(v17);
LABEL_5:
    *v17 = *v18;
    *(v17 + 8) = v18[8];
    goto LABEL_6;
  }

  v21 = *v17;
  *v17 = *v18;
  *(v17 + 8) = v20 & 1;
  outlined consume of PlatformItemCollection.Storage(v21, v19 & 1);
LABEL_6:
  v22 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = v24[16];
  v26 = *(a1 + v22);
  v27 = *(a1 + v22 + 8);
  v28 = *(a1 + v22 + 16);
  *v23 = *v24;
  v23[16] = v25;
  outlined consume of Text.Storage(v26, v27, v28);
  *(v23 + 3) = *(v24 + 3);

  return a1;
}

uint64_t UIKitButtonConfiguration.label.getter@<X0>(uint64_t a1@<X8>)
{
  result = static VerticalAlignment.center.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t (*implicit closure #1 in UIKitButtonStyleModifier.ResolvedBody.body.getter(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return partial apply for implicit closure #2 in implicit closure #1 in UIKitButtonStyleModifier.ResolvedBody.body.getter;
}

uint64_t sub_18BFD2C38()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  v4 = v3 + *(v2 + 36);
  if (*(v4 + 8))
  {
  }

  if (*(v4 + 56))
  {
  }

  outlined consume of Environment<Bool>.Content(*(v3 + *(v2 + 40)), *(v3 + *(v2 + 40) + 8));

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for ToolbarAppearanceConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t UIKitButtonStyleModifier.ResolvedBody_Flat.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[1] = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v25 - v15;
  (*(v6 + 16))(v8, v3, v5, v14);
  v17 = v3 + *(a1 + 36);
  v18 = *(v17 + 48);
  v19 = *(v17 + 16);
  v29 = *(v17 + 32);
  v30 = v18;
  v20 = *(v17 + 48);
  v31 = *(v17 + 64);
  v21 = *(v17 + 16);
  v28[0] = *v17;
  v28[1] = v21;
  v26[2] = v29;
  v26[3] = v20;
  v26[4] = *(v17 + 64);
  v32 = *(v17 + 80);
  v27 = *(v17 + 80);
  v26[0] = v28[0];
  v26[1] = v19;
  UIKitButtonStyleModifier.ResolvedBody_Flat.Inner.init(style:configuration:)(v8, v26, v5, v12);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, WitnessTable);
  outlined init with copy of UIKitButtonConfiguration(v28, v26);
  v23 = *(v10 + 8);
  v23(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v16, v9, WitnessTable);
  return (v23)(v16, v9);
}

uint64_t specialized static ToolbarAppearanceConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 57);
  v7 = *(a1 + 58);
  v8 = *(a1 + 72);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v44 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 57);
  v14 = *(a2 + 58);
  v15 = *(a2 + 72);
  v17 = *(a2 + 8);
  v16 = *(a2 + 16);
  v19 = *(a1 + 8);
  v18 = *(a1 + 16);
  if (!v18)
  {
    v39 = *(a2 + 56);
    v41 = *(a1 + 56);
    v43 = *(a2 + 57);
    v36 = *(a1 + 57);
    v37 = *(a1 + 40);
    v23 = *(a2 + 58);
    v24 = *(a1 + 58);
    v25 = *(a1 + 8);
    v26 = *(a2 + 8);
    v27 = *(a2 + 72);
    v28 = *(a1 + 72);

    if (v16)
    {
      goto LABEL_32;
    }

    v8 = v28;
    v15 = v27;
    v17 = v26;
    v19 = v25;
    v7 = v24;
    v14 = v23;
    v6 = v36;
    v5 = v41;
    v13 = v43;
    v12 = v39;
    goto LABEL_11;
  }

  if (v16)
  {
    v37 = *(a1 + 40);
    if (v18 != v16)
    {
      v38 = *(a2 + 56);
      v40 = *(a1 + 56);
      v42 = *(a2 + 57);
      v34 = *(a2 + 72);
      v35 = *(a1 + 72);

      v20 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

      v21 = 0;
      if ((v20 & 1) == 0)
      {
        return v21 & 1;
      }

      v15 = v34;
      v8 = v35;
      v5 = v40;
      v13 = v42;
      v12 = v38;
      if (v2 != v9)
      {
        return v21 & 1;
      }

LABEL_12:
      if (v5)
      {
        if (!v12)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v4 == v11)
        {
          v29 = v12;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          goto LABEL_32;
        }
      }

      if (v6 == 2)
      {
        v21 = 0;
        if (v13 != 2)
        {
          return v21 & 1;
        }
      }

      else
      {
        if (v13 == 2)
        {
          goto LABEL_32;
        }

        v21 = 0;
        if ((v13 ^ v6))
        {
          return v21 & 1;
        }
      }

      if (v7 != v14)
      {
        return v21 & 1;
      }

      if (v19)
      {
        if (v17)
        {
          if (v19 != v17)
          {
            v30 = v8;

            v31 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

            if ((v31 ^ 1) & 1 | (v30 != v15) | v37 & 1)
            {
              v32 = (v31 ^ 1 | (v30 != v15)) ^ 1;
LABEL_37:
              v21 = v32 & v44;
              return v21 & 1;
            }

LABEL_38:
            v21 = (v3 == v10) & ~v44;
            return v21 & 1;
          }

LABEL_36:
          v32 = v8 == v15;
          if ((v8 != v15) | v37 & 1)
          {
            goto LABEL_37;
          }

          goto LABEL_38;
        }

        goto LABEL_15;
      }

      v33 = v8;

      if (!v17)
      {

        v8 = v33;
        goto LABEL_36;
      }

LABEL_32:
      v21 = 0;
      return v21 & 1;
    }

LABEL_11:
    if (v2 != v9)
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

LABEL_15:

  v21 = 0;
  return v21 & 1;
}

__n128 UIKitButtonStyleModifier.ResolvedBody_Flat.Inner.init(style:configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner();
  v7 = a4 + v6[9];
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  result = *a2;
  v10 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v10;
  v11 = a4 + v6[10];
  *v11 = 0;
  *(v11 + 8) = 0;
  v12 = a4 + v6[11];
  *v12 = 0;
  *(v12 + 8) = 0;
  return result;
}

void closure #2 in SwiftUISearchController.enqueueIsActiveUpdate(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SwiftUISearchController.flushPendingIsActive()();
  }
}

uint64_t initializeWithCopy for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  v11 = *(v10 + 8);
  if (v11)
  {
    v12 = *(v10 + 16);
    *(v9 + 8) = v11;
    *(v9 + 16) = v12;
  }

  else
  {
    *(v9 + 8) = *(v10 + 8);
  }

  *(v9 + 24) = *(v10 + 24);
  *(v9 + 25) = *(v10 + 25);
  v13 = *(v10 + 28);
  *(v9 + 36) = *(v10 + 36);
  *(v9 + 28) = v13;
  *(v9 + 37) = *(v10 + 37);
  *(v9 + 38) = *(v10 + 38);
  v14 = *(v10 + 40);
  *(v9 + 48) = *(v10 + 48);
  *(v9 + 40) = v14;
  *(v9 + 49) = *(v10 + 49);
  v15 = *(v10 + 56);
  if (v15)
  {
    v16 = *(v10 + 64);
    *(v9 + 56) = v15;
    *(v9 + 64) = v16;
  }

  else
  {
    *(v9 + 56) = *(v10 + 56);
  }

  v17 = *(v10 + 72);
  *(v9 + 80) = *(v10 + 80);
  *(v9 + 72) = v17;
  v18 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v8 + 95) & 0xFFFFFFFFFFFFFFF8;
  *v18 = *v19;
  *(v18 + 8) = *(v19 + 8);
  v20 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);

  return a1;
}

BOOL specialized static SearchFieldPlacement.Role.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 4u)
  {
    switch(a1)
    {
      case 2u:
        return a2 == 2;
      case 3u:
        return a2 == 3;
      case 4u:
        return a2 == 4;
    }

LABEL_16:
    if (a2 - 2 >= 6)
    {
      return ((a2 ^ a1) & 1) == 0;
    }

    return 0;
  }

  if (a1 == 5)
  {
    return a2 == 5;
  }

  if (a1 != 6)
  {
    if (a1 == 7)
    {
      return a2 == 7;
    }

    goto LABEL_16;
  }

  return a2 == 6;
}

void SwiftUISearchController.flushPendingIsActive()()
{
  v1 = v0;
  v2 = [v0 isActive];
  v3 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActive;
  v4 = v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActive];
  v5 = v4 & 1;
  if (v4 != 2 && v2 != v5)
  {
    [v0 setActive_];
    v7 = SwiftUISearchController._searchBar.getter();
    v8 = v7;
    v9 = v7[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive];
    v7[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive] = v5;
    if (v9 == v5)
    {
      goto LABEL_13;
    }

    v10 = *&v7[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarHost];
    if (!v10)
    {
      goto LABEL_13;
    }

    if (v4)
    {
      v11 = *MEMORY[0x1E69DDCE0];
      v12 = *(MEMORY[0x1E69DDCE0] + 8);
      v13 = *(MEMORY[0x1E69DDCE0] + 24);
      if (v7[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarVisibility] != 2)
      {
        [v10 intrinsicContentSize];
        v15 = v14;
        v16 = 0;
        v17 = 1.0;
        v18 = 4;
LABEL_12:
        [v8 _setOverrideContentInsets_forRectEdges_];
        [v8 sizeToFit];
        [v8 layoutIfNeeded];
        v20 = [v8 superview];
        [v20 sizeToFit];

        v21 = [v8 superview];
        [v21 layoutIfNeeded];

        v22 = v10;
        [v22 setAlpha_];
        [v22 setHidden_];

LABEL_13:
        UIKitSearchBar.enqueueFirstResponderUpdate(_:)(v4 & 1);

        goto LABEL_14;
      }
    }

    else
    {
      v11 = *MEMORY[0x1E69DDCE0];
      v12 = *(MEMORY[0x1E69DDCE0] + 8);
      v13 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v15 = *(MEMORY[0x1E69DDCE0] + 16);
    v19 = v10;
    v18 = 0;
    v17 = 0.0;
    v16 = 1;
    goto LABEL_12;
  }

LABEL_14:
  v1[v3] = 2;
}

uint64_t destroy for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (*(v3 + 56) + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 8))
  {
  }

  if (*(v4 + 56))
  {
  }
}

Swift::Void __swiftcall UpdateCoalescingCollectionView.safeAreaInsetsDidChange()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  objc_msgSendSuper2(&v7, sel_safeAreaInsetsDidChange);
  v1 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates;
  v2 = *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates];
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = v4;
  specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  v5 = *&v0[v1];
  v3 = v5 != 0;
  v6 = v5 - 1;
  if (!v3)
  {
    goto LABEL_9;
  }

  *&v0[v1] = v6;
  if (!v6 && v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] == 1)
  {
    specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  }
}

uint64_t UIKitButtonStyleModifier.ResolvedBody_Flat.Inner.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v31 - v5;
  v6 = *(a1 + 16);
  v38 = *(a1 + 24);
  v39 = v6;
  type metadata accessor for ResolvedButtonStyleBody();
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>();
  v36 = type metadata accessor for ModifiedContent();
  IsVisionEnabled = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v51 = &protocol witness table for ResolvedButtonStyleBody<A>;
  v52 = IsVisionEnabled;
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for UIKitFlattenedButtonAdaptor();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v31 - v11;
  v12 = v2 + *(a1 + 40);
  v14 = *(v12 + 8);
  LOBYTE(v53[0]) = *v12;
  v13 = v53[0];
  *(&v53[0] + 1) = v14;
  type metadata accessor for PlatformItemList.Item.SelectionBehavior?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v15 = v2 + *(a1 + 44);
  v31 = v2;
  v17 = *(v15 + 8);
  LOBYTE(v53[0]) = *v15;
  v16 = v53[0];
  *(&v53[0] + 1) = v17;
  State.wrappedValue.getter();
  v18 = v2 + *(a1 + 36);
  v19 = *(v18 + 48);
  v20 = *(v18 + 16);
  v54 = *(v18 + 32);
  v55 = v19;
  v21 = *(v18 + 48);
  v56 = *(v18 + 64);
  v22 = *(v18 + 16);
  v53[0] = *v18;
  v53[1] = v22;
  v49[2] = v54;
  v49[3] = v21;
  v49[4] = *(v18 + 64);
  v57 = *(v18 + 80);
  v50 = *(v18 + 80);
  v49[0] = v53[0];
  v49[1] = v20;
  v23 = type metadata accessor for UIButton.Configuration();
  v24 = v35;
  (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
  v47 = v13;
  v48 = v14;
  outlined init with copy of UIKitButtonConfiguration(v53, &v44);
  State.projectedValue.getter();
  v26 = v44;
  v25 = v45;
  LOBYTE(v14) = v46;
  v47 = v16;
  v48 = v17;
  State.projectedValue.getter();
  v41 = v39;
  v42 = v38;
  v43 = v31;
  v27 = v32;
  UIKitFlattenedButtonAdaptor.init(configuration:uikitButtonType:uiButtonConfiguration:options:isPressed:isMenuPresented:label:)(v49, 0, v24, 0, v26, v25, v14, v44, v32, v45, v46, partial apply for closure #1 in UIKitButtonStyleModifier.ResolvedBody_Flat.Inner.body.getter);
  v28 = v33;
  static ViewBuilder.buildExpression<A>(_:)(v27, v8, &protocol witness table for UIKitFlattenedButtonAdaptor<A>);
  v29 = *(v37 + 8);
  v29(v27, v8);
  static ViewBuilder.buildExpression<A>(_:)(v28, v8, &protocol witness table for UIKitFlattenedButtonAdaptor<A>);
  return v29(v28, v8);
}

void type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>);
    }
  }
}

uint64_t partial apply for closure #1 in FocusStoreUpdateAction.init<A>(value:focusScopes:searchFieldState:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80));

  return closure #1 in FocusStoreUpdateAction.init<A>(value:focusScopes:searchFieldState:)(a1, v1 + v4, v7, v8, v3);
}

uint64_t specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)()
{
  _s10Foundation9IndexPathVSgMaTm_2(0, &lazy cache variable for type metadata for BridgedListState?, type metadata accessor for BridgedListState, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22[-v2];
  v4 = type metadata accessor for BridgedListState(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  v23 = v0;
  static Update.ensure<A>(_:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return _s10Foundation9IndexPathVSgWOhTm_2(v3, &lazy cache variable for type metadata for BridgedListState?, type metadata accessor for BridgedListState);
  }

  outlined init with take of UpdateCoalescingCollectionView.UpdateInvalidation(v3, v10, type metadata accessor for BridgedListState);
  if (*&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates])
  {
    result = outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v10, type metadata accessor for BridgedListState);
    v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] = 1;
  }

  else
  {
    v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] = 0;
    type metadata accessor for _SemanticFeature<Semantics_v2>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
    v12 = static SemanticFeature.isEnabled.getter();
    v13 = 15.0;
    if (v12)
    {
      v13 = 16.0;
    }

    *v7 = v13;
    v14 = v4[5];
    v15 = type metadata accessor for BridgedListState.ScrollTarget(0);
    (*(*(v15 - 8) + 56))(v7 + v14, 1, 1, v15);
    v16 = v7 + v4[6];
    v32 = 1;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *(v16 + 4) = 0u;
    *(v16 + 5) = 0u;
    *(v16 + 6) = 0u;
    v16[112] = 1;
    outlined assign with copy of BridgedListState.ScrollTarget?(&v10[v4[5]], v7 + v14);
    v17 = &v10[v4[6]];
    if ((v17[112] & 1) == 0)
    {
      if (*&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper])
      {
        swift_beginAccess();
      }

      [v0 adjustedContentInset];
      [v0 contentOffset];
      [v0 contentSize];
      [v0 bounds];
      ScrollGeometry.init(contentOffset:contentSize:contentInsets:containerSize:)();
      v24 = 0;
      v18 = v30;
      *(v16 + 4) = v29;
      *(v16 + 5) = v18;
      *(v16 + 6) = v31;
      v19 = v26;
      *v16 = v25;
      *(v16 + 1) = v19;
      v20 = v28;
      *(v16 + 2) = v27;
      *(v16 + 3) = v20;
      v16[112] = 0;
    }

    v21 = *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_lastUpdateSeed];
    *(v7 + v4[7]) = v21;
    if (v21 != *&v10[v4[7]] || (v17[112] & 1) == 0)
    {
      BridgedListState.commit(to:)(*&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_bridgedState]);
    }

    outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v10, type metadata accessor for BridgedListState);
    return outlined destroy of UpdateCoalescingCollectionView.UpdateInvalidation(v7, type metadata accessor for BridgedListState);
  }

  return result;
}

uint64_t closure #1 in FocusStoreUpdateAction.init<A>(value:focusScopes:searchFieldState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v24 = a1;
  v7 = MEMORY[0x1E6981948];
  type metadata accessor for CollectionOfOne<Hashable>(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FocusStore.Entry();
  v16 = type metadata accessor for Optional();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v21 - v18;
  (*(v11 + 16))(v14, v22, a5, v17);
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWOcTm_0(v23, v10, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, v7);
  FocusStore.Entry.init(value:focusScopes:searchFieldState:)(v14, a3, v10, a5, v19);
  (*(*(v15 - 8) + 56))(v19, 0, 1, v15);
  type metadata accessor for FocusStore.Key();

  swift_getWitnessTable();
  return PropertyList.subscript.setter();
}

uint64_t closure #1 in UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BridgedListState(0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of UpdateCoalescingCollectionView.UpdateInvalidation(WeakValue, a1, type metadata accessor for BridgedListState);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return (*(*(v2 - 8) + 56))(a1, v4, 1, v2);
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>();
    lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t outlined assign with copy of BridgedListState.ScrollTarget?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BridgedListState.ScrollTarget?(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UIKitSystemButtonConfigurationModifier and conformance UIKitSystemButtonConfigurationModifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FocusStore.Entry.init(value:focusScopes:searchFieldState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FocusStore.Entry.Target();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  outlined init with take of Binding<SearchFieldState>(a3, &v14 - v11, type metadata accessor for Binding<SearchFieldState>);
  swift_storeEnumTagMultiPayload();
  return FocusStore.Entry.init(value:focusScopes:target:)(a1, a2, v12, a4, a5);
}

void type metadata accessor for PlatformItemList.Item.SelectionBehavior?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t UIKitFlattenedButtonAdaptor.init(configuration:uikitButtonType:uiButtonConfiguration:options:isPressed:isMenuPresented:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, void (*a12)(void *__return_ptr))
{
  v15 = *(a1 + 24);
  v16 = *(a1 + 36);
  v17 = *(a1 + 37);
  v18 = *(a1 + 49);
  if (v15)
  {
    if (*(a1 + 36))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v19 = a2;
    a12(a9);
    a4 |= 0x80uLL;
  }

  else
  {
    v19 = a2;
    a12(a9);
  }

  v20 = a4 | 0x100;
  if ((v18 & 1) == 0)
  {
    v20 = a4;
  }

  v22 = (v20 & 1) == 0 && v17 == 1;
  v23 = v20 | v22;
  v24 = a9 + *(type metadata accessor for UIKitFlattenedButtonAdaptor() + 36);
  *v24 = *a1;
  *(v24 + 2) = *(a1 + 16);
  v24[24] = v15;
  *(v24 + 25) = *(a1 + 25);
  *(v24 + 8) = *(a1 + 32);
  v24[36] = v16;
  v24[37] = v17;
  *(v24 + 38) = *(a1 + 38);
  *(v24 + 45) = *(a1 + 45);
  v24[49] = v18;
  *(v24 + 50) = *(a1 + 50);
  *(v24 + 65) = *(a1 + 65);
  *(v24 + 11) = v23;
  *(v24 + 12) = v19;
  v25 = type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
  result = outlined init with take of UIButton.Configuration?(a3, &v24[v25[7]]);
  v27 = &v24[v25[8]];
  *v27 = a5;
  *(v27 + 1) = a6;
  v27[16] = a7;
  v28 = &v24[v25[9]];
  *v28 = a8;
  *(v28 + 1) = a10;
  v28[16] = a11;
  return result;
}

uint64_t UpdateCoalescingCollectionView.bounds.setter(double a1, double a2, double a3, double a4)
{
  updated = type metadata accessor for UpdateCoalescingCollectionView(0);
  v30.receiver = v4;
  v30.super_class = updated;
  objc_msgSendSuper2(&v30, sel_bounds);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v29.receiver = v4;
  v29.super_class = updated;
  result = objc_msgSendSuper2(&v29, sel_setBounds_, a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates;
  v20 = *&v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates];
  v21 = __CFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  *&v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_ignoreGraphUpdates] = v22;
  [v4 bounds];
  v32.origin.x = v23;
  v32.origin.y = v24;
  v32.size.width = v25;
  v32.size.height = v26;
  v31.origin.x = v11;
  v31.origin.y = v13;
  v31.size.width = v15;
  v31.size.height = v17;
  result = CGRectEqualToRect(v31, v32);
  if ((result & 1) == 0)
  {
    result = specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  }

  v27 = *&v4[v19];
  v21 = v27 != 0;
  v28 = v27 - 1;
  if (!v21)
  {
    goto LABEL_11;
  }

  *&v4[v19] = v28;
  if (!v28 && v4[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingGraphUpdate] == 1)
  {
    return specialized UpdateCoalescingCollectionView.updateGraphState(isAnimatingScrollOverride:)();
  }

  return result;
}

void @objc UICollectionViewListCoordinatorBase.scrollViewDidScroll(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  if ([v4 canBecomeFirstResponder] && (objc_msgSend(v4, sel_isFirstResponder) & 1) == 0 && (objc_msgSend(v4, sel_isTracking) & 1) != 0)
  {
    [v4 becomeFirstResponder];
  }
}

uint64_t closure #1 in UIKitButtonStyleModifier.ResolvedBody_Flat.Inner.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v31 = type metadata accessor for ResolvedButtonStyleBody();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v29 - v5;
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier>();
  v32 = v7;
  v8 = type metadata accessor for ModifiedContent();
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v29 - v12;
  v13 = type metadata accessor for UIKitButtonStyleModifier.ResolvedBody_Flat.Inner();
  v14 = *(a1 + v13[9]);
  v15 = (a1 + v13[10]);
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v39) = v16;
  v40 = v17;
  type metadata accessor for PlatformItemList.Item.SelectionBehavior?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  LOBYTE(v39) = v14;
  BYTE1(v39) = v38;
  ButtonStyle.resolvedBody(configuration:)(&v39, a2, v6);
  KeyPath = swift_getKeyPath();
  v19 = (a1 + v13[11]);
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v39) = v20;
  v40 = v21;
  State.wrappedValue.getter();
  if (v38)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  v39 = KeyPath;
  LOBYTE(v40) = v22;
  v23 = v31;
  MEMORY[0x18D00A570](&v39, v31, v32, &protocol witness table for ResolvedButtonStyleBody<A>);

  (*(v33 + 8))(v6, v23);
  IsVisionEnabled = lazy protocol witness table accessor for type StaticIf<IsVisionEnabledPredicate, _EnvironmentKeyWritingModifier<Bool?>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v36 = &protocol witness table for ResolvedButtonStyleBody<A>;
  v37 = IsVisionEnabled;
  WitnessTable = swift_getWitnessTable();
  v26 = v30;
  static ViewBuilder.buildExpression<A>(_:)(v10, v8, WitnessTable);
  v27 = *(v34 + 8);
  v27(v10, v8);
  static ViewBuilder.buildExpression<A>(_:)(v26, v8, WitnessTable);
  return (v27)(v26, v8);
}

uint64_t UpdateCoalescingCollectionView.canBecomeFirstResponder.getter()
{
  result = [v0 isScrollEnabled];
  if (result)
  {
    v4.receiver = v0;
    v4.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
    result = objc_msgSendSuper2(&v4, sel_canBecomeFirstResponder);
    if (result)
    {
      v2 = *&v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_helper];
      if (v2)
      {
        v3 = v2 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
        swift_beginAccess();
        return (*(v3 + 82) & 8) == 0;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t outlined init with take of UIButton.Configuration?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for UIKitFlattenedButtonAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  *v11 = *v12;
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = *(v12 + 16);
    *(v11 + 8) = v13;
    *(v11 + 16) = v14;
  }

  else
  {
    *(v11 + 8) = *(v12 + 8);
  }

  *(v11 + 24) = *(v12 + 24);
  *(v11 + 25) = *(v12 + 25);
  v15 = *(v12 + 28);
  *(v11 + 36) = *(v12 + 36);
  *(v11 + 28) = v15;
  *(v11 + 37) = *(v12 + 37);
  *(v11 + 38) = *(v12 + 38);
  v16 = *(v12 + 40);
  *(v11 + 48) = *(v12 + 48);
  *(v11 + 40) = v16;
  *(v11 + 49) = *(v12 + 49);
  v17 = *(v12 + 56);
  if (v17)
  {
    v18 = *(v12 + 64);
    *(v11 + 56) = v17;
    *(v11 + 64) = v18;
  }

  else
  {
    *(v11 + 56) = *(v12 + 56);
  }

  v19 = *(v12 + 72);
  *(v11 + 80) = *(v12 + 80);
  *(v11 + 72) = v19;
  *(v11 + 88) = *(v12 + 88);
  v20 = ((v11 + 103) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v12 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + v9 + 8) & ~v9);
  v23 = ((v21 + v9 + 8) & ~v9);
  if ((*(v8 + 48))(v23, 1, v7))
  {
    v24 = *(v8 + 84);
    v25 = *(v8 + 64);
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 + 1;
    }

    memcpy(v22, v23, v26);
  }

  else
  {
    (*(v8 + 16))(v22, v23, v7);
    v28 = *(v8 + 56);
    v27 = v8 + 56;
    v28(v22, 0, 1, v7);
    v24 = *(v27 + 28);
    v25 = *(v27 + 8);
  }

  if (v24)
  {
    v29 = v25;
  }

  else
  {
    v29 = v25 + 1;
  }

  v30 = &v22[v29];
  v31 = &v23[v29];
  v32 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v33 + 8) < 0xFFFFFFFFuLL)
  {
    v34 = *v33;
    *(v32 + 16) = *(v33 + 16);
    *v32 = v34;
  }

  else
  {
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
    *(v32 + 16) = *(v33 + 16);
  }

  v35 = (v30 + 31) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v31 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v36 + 8) < 0xFFFFFFFFuLL)
  {
    v37 = *v36;
    *(v35 + 16) = *(v36 + 16);
    *v35 = v37;
  }

  else
  {
    *v35 = *v36;
    *(v35 + 8) = *(v36 + 8);
    *(v35 + 16) = *(v36 + 16);
  }

  return a1;
}

Swift::Void __swiftcall UIKitNavigationController._observeScrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  if ((*(v1 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isTransitioningToSize) & 1) == 0)
  {
    v8.receiver = v2;
    v8.super_class = type metadata accessor for UIKitNavigationController();
    [(UIScrollView *)&v8 _observeScrollViewDidScroll:a1];
    v4 = [v2 tabBarController];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for UIKitTabBarController();
      v6 = swift_dynamicCastClass();
      if (!v6)
      {
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v2;
    PlatformBarUpdater.callAsFunction(context:)(v2, v6);
  }
}

uint64_t destroy for UIKitFlattenedButtonAdaptor(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56);
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + a1 + (v7 | 7)) & ~(v7 | 7);
  if (*(v8 + 8))
  {
  }

  if (*(v8 + 56))
  {
  }

  v9 = (v7 + ((v8 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7;
  result = (*(v6 + 48))(v9, 1, v5);
  if (!result)
  {
    result = (*(v6 + 8))(v9, v5);
  }

  v11 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v12 = v11 + v9;
  }

  else
  {
    v12 = v11 + v9 + 1;
  }

  if (*(((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  if (*(((v12 + 31) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t PlatformBarUpdater.callAsFunction(context:)(void *a1, void *a2)
{
  v3 = v2;
  v39 = v3;
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = v3 + 56;
  *v7 = a1;
  *(v7 + 8) = a2;
  v8 = a1;
  v9 = a2;

  v10 = (v7 - 32);
  swift_beginAccess();
  v11 = *(v7 - 32);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  v18 = 0;
  if (v14)
  {
LABEL_8:
    while (1)
    {
      outlined init with copy of ToolbarPlacement.Role(*(v11 + 48) + 40 * (__clz(__rbit64(v14)) | (v18 << 6)), v43);
      outlined init with copy of ToolbarPlacement.Role(v43, &v41);
      if (v42 >= 7)
      {
        outlined destroy of ToolbarPlacement.Role(&v41);
        LOBYTE(v20) = 0;
      }

      else
      {
        v20 = 0x78u >> v42;
      }

      v14 &= v14 - 1;
      swift_beginAccess();
      v21 = *v10;
      if (!*(*v10 + 16))
      {
        break;
      }

      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = (*(v21 + 56) + 80 * v22);
      v44[0] = *v24;
      v26 = v24[2];
      v25 = v24[3];
      v27 = *(v24 + 57);
      v44[1] = v24[1];
      v44[2] = v26;
      *&v45[9] = v27;
      *v45 = v25;
      swift_endAccess();
      if (v44[0])
      {
        outlined init with copy of ToolbarAppearanceConfiguration(v44, &v41);
        PlatformBarUpdater.scrollGeometry(edge:)(v20 & 1, &v41);
        swift_beginAccess();
        InferredToolbarState.update(edge:to:)(v20 & 1);
        swift_endAccess();
        outlined init with copy of ToolbarPlacement.Role(v43, &v41);
        if (v42 > 6)
        {
          goto LABEL_23;
        }

        if (((1 << v42) & 0x56) != 0)
        {
          goto LABEL_33;
        }

        if (v42 == 3)
        {
          if (!*v7)
          {
            goto LABEL_33;
          }

          v33 = [*v7 toolbar];
          if (!v33)
          {
            goto LABEL_33;
          }

          v30 = v33;
          type metadata accessor for UIKitToolbar();
          v34 = swift_dynamicCastClass();
          if (v34)
          {
            specialized PlatformBarUpdater.updateBackgroundHost<A>(host:role:configuration:)(v34, v43, v44);
          }

          goto LABEL_27;
        }

        if (v42 == 5)
        {
          v28 = *(v39 + 64);
          if (v28)
          {
            v29 = v28;
            v30 = v29;
            v31 = 1;
            v32 = &selRef_tabBar;
            goto LABEL_26;
          }
        }

        else
        {
LABEL_23:
          if (v42)
          {
            outlined destroy of ToolbarPlacement.Role(&v41);
            goto LABEL_33;
          }

          if (*v7)
          {
            v29 = *v7;
            v30 = v29;
            v31 = 0;
            v32 = &selRef_navigationBar;
LABEL_26:
            specialized PlatformBarUpdater.updateBackgroundHost<A>(host:role:configuration:)(v29, v43, v44, v31, v32);
LABEL_27:
          }
        }

LABEL_33:
        if (*&v45[16])
        {
          outlined init with copy of ToolbarPlacement.Role(v43, &v41);
          swift_beginAccess();
          v36 = specialized Dictionary.subscript.modify(v40, &v41);
          if (*(v35 + 8) == 1)
          {
            (v36)(v40, 0);
            swift_endAccess();
          }

          else
          {
            *(v35 + 64) = 0;
            (v36)(v40, 0);
            swift_endAccess();
          }

          outlined destroy of ToolbarAppearanceConfiguration(v44);
          outlined destroy of ToolbarPlacement.Role(&v41);
        }

        else
        {
          outlined destroy of ToolbarAppearanceConfiguration(v44);
        }

        result = outlined destroy of ToolbarPlacement.Role(v43);
        v17 = 1;
        if (!v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_21:
        result = outlined destroy of ToolbarPlacement.Role(v43);
        if (!v14)
        {
          goto LABEL_4;
        }
      }
    }

    swift_endAccess();
    goto LABEL_21;
  }

LABEL_4:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      v37 = *(v39 + 56);
      v38 = *(v39 + 64);
      *v7 = 0;
      *(v7 + 8) = 0;

      return v17 & 1;
    }

    v14 = *(v11 + 64 + 8 * v19);
    ++v18;
    if (v14)
    {
      v18 = v19;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result + 56;
    do
    {
      v5 = *(v4 - 8);

      v5(a2);

      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t partial apply for closure #1 in FocusedValueModifier.Transform.updateValue()(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for FocusedValueModifier() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return closure #1 in FocusedValueModifier.Transform.updateValue()(a1, v1 + v6, v8, v9, v3, v4);
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t closure #1 in FocusedValueModifier.Transform.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;
  v23 = a3;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  v20 = type metadata accessor for FocusedValueModifier();
  (*(v10 + 16))(v12, a2 + *(v20 + 28), v9);
  if ((*(v13 + 48))(v12, 1, a6) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v13 + 32))(v19, v12, a6);
  if (*(a2 + *(v20 + 32)) == 1)
  {
    *(a1 + 16) = v23;
    if (v24)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }
  }

  else
  {
    v22 = (v24 & 1) != 0;
  }

  *(a1 + 8) = v22;
  (*(v13 + 16))(v16, v19, a6);
  swift_setAtWritableKeyPath();
  return (*(v13 + 8))(v19, a6);
}

void *closure #1 in UICollectionViewListCoordinator.createLayout(_:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v9 = MEMORY[0x1E69E7D40];
  v10 = type metadata accessor for ShadowListDataSource();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v42 = type metadata accessor for UICollectionLayoutListConfiguration();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = UICollectionViewListCoordinator.customTopSpacing(offset:)(a1);
  v16 = v15;
  v36 = UICollectionViewListCoordinator.customBottomSpacing(offset:)(a1);
  v39 = v17;
  v45[0] = a4;
  v45[1] = a5;
  UICollectionViewListCoordinator.listConfiguration(offset:environment:)(a1, v45, v14);
  v38 = v16;
  if ((v16 & 1) == 0)
  {
    UICollectionLayoutListConfiguration.headerTopPadding.setter();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
  v40 = v14;
  v18 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v19 = &a3[*((*v9 & *a3) + 0x120)];
  swift_beginAccess();
  [v18 setContentInsetsReference_];
  v20 = *((*v9 & *a3) + 0x88);
  swift_beginAccess();
  v21 = v37;
  v22 = *(v37 + 16);
  v44 = v20;
  v43 = v22;
  v22(v12, &a3[v20], v10);
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.margins(forSectionAtOffset:)(a1, v10, WitnessTable);
  v37 = *(v21 + 8);
  (v37)(v12, v10);
  OptionalEdgeInsets.leading.getter();
  if (v24)
  {
    swift_beginAccess();
    OptionalEdgeInsets.leading.getter();
    if (v25)
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      [v18 contentInsets];
      [v18 setContentInsets_];
    }
  }

  else
  {
    [v18 contentInsets];
    [v18 setContentInsets_];
  }

  v43(v12, &a3[v44], v10);
  ListCoreDataSource.margins(forSectionAtOffset:)(a1, v10, WitnessTable);
  v26 = v37;
  (v37)(v12, v10);
  OptionalEdgeInsets.trailing.getter();
  if (v27)
  {
    swift_beginAccess();
    OptionalEdgeInsets.trailing.getter();
    v28 = &selRef_setConfiguration_;
    if (v29)
    {
      swift_endAccess();
      v30 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
      goto LABEL_14;
    }

    swift_endAccess();
    v30 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    [v18 contentInsets];
  }

  else
  {
    v30 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    [v18 contentInsets];
    v28 = &selRef_setConfiguration_;
  }

  [v18 v28[15]];
LABEL_14:
  if ((v38 & 1) == 0)
  {
    [v18 _setPreBoundaryPadding_];
    [v18 v30[211]];
    [v18 v28[15]];
  }

  if ((v39 & 1) == 0)
  {
    [v18 _setPostBoundaryPadding_];
    [v18 v30[211]];
    [v18 v28[15]];
  }

  v43(v12, &a3[v44], v10);
  v31 = ShadowListDataSource.hasGlobalHeader.getter(v10);
  v26(v12, v10);
  if (v31)
  {
    [v18 v30[211]];
    [v18 v28[15]];
    [v18 v30[211]];
    [v18 v28[15]];
  }

  v32 = &a3[*((*MEMORY[0x1E69E7D40] & *a3) + 0x150)];
  if ((v32[1] & 1) == 0)
  {
    [v18 setInterGroupSpacing_];
  }

  (*(v41 + 8))(v40, v42);
  return v18;
}

uint64_t specialized FocusedValues.subscript.setter(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  (*(v6 + 16))(&v10 - v4, a1, v3);
  v7 = type metadata accessor for FocusedObjectKey();
  WitnessTable = swift_getWitnessTable();
  return FocusedValues.subscript.setter(v5, v7, v7, WitnessTable);
}

uint64_t FocusedValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = type metadata accessor for FocusedValues.Entry();
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v35 = a3;
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v32 - v22;
  (*(v13 + 16))(v15, a1, v12, v21);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    v24 = *(v13 + 8);
    v24(a1, v12);
    return (v24)(v15, v12);
  }

  else
  {
    v33 = a1;
    (*(v16 + 32))(v23, v15, AssociatedTypeWitness);
    v26 = v4;
    v27 = *(v4 + 8);
    if ((v27 & 2) != 0)
    {
      if (one-time initialization token for scene != -1)
      {
        swift_once();
      }

      v28 = &static FocusedValueScope.scene;
    }

    else
    {
      if (one-time initialization token for view != -1)
      {
        swift_once();
      }

      v28 = &static FocusedValueScope.view;
    }

    v29 = *(v28 + 1);
    v30 = *(v28 + 2);
    v37 = *v28;
    v38 = v29;
    v39 = v30;
    (*(v16 + 16))(v19, v23, AssociatedTypeWitness);
    v32 = v26;
    if ((v27 & 2) != 0)
    {
      v31 = *(v26 + 16);
    }

    else
    {
      v31 = -1;
    }

    FocusedValues.Entry.init(scope:value:inFocusedViewHierarchy:depth:)(&v37, v19, v27 & 1, v31, v10);
    (*(*(v34 - 8) + 56))(v10, 0, 1);
    type metadata accessor for FocusedValuePropertyKey();

    swift_getWitnessTable();
    PropertyList.subscript.setter();
    (*(v13 + 8))(v33, v12);
    return (*(v16 + 8))(v23, AssociatedTypeWitness);
  }
}

uint64_t UICollectionViewListCoordinator.customTopSpacing(offset:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ShadowListDataSource();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = *((v5 & v4) + 0x88);
  swift_beginAccess();
  v21 = *(v7 + 16);
  v21(v9, &v2[v10], v6);
  WitnessTable = swift_getWitnessTable();
  v22 = a1;
  ListCoreDataSource.margins(forSectionAtOffset:)(a1, v6, WitnessTable);
  v12 = *(v7 + 8);
  v12(v9, v6);
  *&result = COERCE_DOUBLE(OptionalEdgeInsets.top.getter());
  if (v14)
  {
    if (!v22)
    {
      swift_beginAccess();
      v18 = OptionalEdgeInsets.top.getter();
      if ((v19 & 1) == 0)
      {
        v20 = v18;
        swift_endAccess();
        return v20;
      }

      swift_endAccess();
      goto LABEL_13;
    }

    v15 = v21;
    v21(v9, &v2[v10], v6);
    ListCoreDataSource.spacing(forSectionAtOffset:)(v22, v6, WitnessTable);
    v12(v9, v6);
    if (v25)
    {
      v15(v9, &v2[v10], v6);
      result = v22 - 1;
      if (__OFSUB__(v22, 1))
      {
        __break(1u);
        return result;
      }

      ListCoreDataSource.spacing(forSectionAtOffset:)(result, v6, WitnessTable);
      v12(v9, v6);
      if ((v25 & 1) == 0 && (v24 & 1) == 0)
      {
        v17 = v23;
        goto LABEL_20;
      }

      v16 = &v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x148)];
      if ((*(v16 + 9) & 1) == 0 && (v16[1] & 1) == 0)
      {
        v17 = *v16;
LABEL_20:
        *&result = v17 * 0.5;
        return result;
      }

LABEL_13:
      *&result = 0.0;
      return result;
    }

    if (v24)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = v23 * 0.5;
    }
  }

  return result;
}

uint64_t FocusedValues.Entry.init(scope:value:inFocusedViewHierarchy:depth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 8) = v9;
  *(a5 + 16) = v10;
  v11 = type metadata accessor for FocusedValues.Entry();
  v12 = v11[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a5 + v12, a2, AssociatedTypeWitness);
  *(a5 + v11[10]) = a3;
  *(a5 + v11[11]) = a4;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ShadowListDataSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t ListCoreDataSource.margins(forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  ListDiffable.sectionIndex(atOffset:)(a1, a2, v6);
  (*(a3 + 112))(v10, a2, a3);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t one-time initialization function for scene()
{
  result = ViewIdentity.init()();
  static FocusedValueScope.scene = v1;
  qword_1EAB093D8 = 0x656E656353;
  unk_1EAB093E0 = 0xE500000000000000;
  return result;
}

uint64_t initializeWithCopy for FocusedValues.Entry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v9 = *(v6 + 80);
  v10 = (v9 + 24 + a1) & ~v9;
  v11 = (v9 + 24 + a2) & ~v9;

  v7(v10, v11, AssociatedTypeWitness);
  v12 = *(v8 + 48);
  v13 = v12 + v10;
  v14 = v12 + v11;
  *v13 = *v14;
  *((v13 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
  return a1;
}

uint64_t destroy for FocusedValues.Entry(uint64_t a1)
{

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 8);
  v5 = (a1 + *(v3 + 80) + 24) & ~*(v3 + 80);

  return v4(v5, AssociatedTypeWitness);
}

uint64_t ShadowListDataSource.margins(forSectionAt:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v2, v5);
  (*(*(a2 + 24) + 112))(a1, v5);
  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #1 in FocusedValues.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v31 = a5;
  v34 = a4;
  v35 = a3;
  v6 = type metadata accessor for FocusedValues.Entry();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = *(v6 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v30 - v16);
  v18 = *(v8 + 16);
  v18(v12, a1, v7, v15);
  v19 = *(v13 + 48);
  if (v19(v12, 1, v6) == 1)
  {
    return (*(v8 + 8))(v12, v7);
  }

  v30 = v13;
  (*(v13 + 32))(v17, v12, v6);
  v32 = v17;
  v21 = *v17;
  if (one-time initialization token for scene != -1)
  {
    swift_once();
  }

  v22 = v7;
  if (static FocusedValueScope.scene == v21 && ((v23 = v33, (v18)(v33, v35, v22), v24 = v19(v23, 1, v6), v25 = *(v8 + 8), v25(v23, v22), v24 == 1) || *v34 < *(v32 + *(v6 + 44))))
  {
    v26 = v35;
    v25(v35, v22);
    v27 = v30;
    v28 = v32;
    (*(v30 + 16))(v26, v32, v6);
    (*(v27 + 56))(v26, 0, 1, v6);
    *v34 = *(v28 + *(v6 + 44));
  }

  else
  {
    if (one-time initialization token for view != -1)
    {
      swift_once();
    }

    v28 = v32;
    v27 = v30;
    if (static FocusedValueScope.view == v21 && *(v32 + *(v6 + 40)) == 1)
    {
      v29 = v31;
      (*(v8 + 8))(v31, v22);
      (*(v27 + 16))(v29, v28, v6);
      (*(v27 + 56))(v29, 0, 1, v6);
    }
  }

  return (*(v27 + 8))(v28, v6);
}

unint64_t CollectionViewListDataSource.margins(forSectionAt:)@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v2 + 64);
  if (*(v4 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v5 = outlined init with copy of SectionAccumulator.Item(v4 + 152 * result + 32, v12);
  if (v13)
  {

    MEMORY[0x18D007000](v10, v6);
    ViewTraitCollection.value<A>(for:defaultValue:)();

    *&v11[9] = *&v9[9];
    v10[1] = v8;
    *v11 = *v9;
    v10[0] = v7;
    *a2 = v7;
    a2[1] = v8;
    a2[2] = *v11;
    *(a2 + 41) = *&v11[9];
  }

  else
  {
    MEMORY[0x18D007000](v5);
  }

  return outlined destroy of SectionAccumulator.Item(v12);
}