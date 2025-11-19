void storeEnumTagSinglePayload for SidebarListStyle.BodyContent(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
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

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 17) & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

_BYTE *partial apply for closure #1 in View.outlineRoot(_:isExpanded:)(_BYTE *result)
{
  v2 = *(v1 + 17);
  if (v2 == 2)
  {
    LOBYTE(v2) = result[1];
  }

  *result = *(v1 + 16);
  result[1] = v2 & 1;
  return result;
}

uint64_t storeEnumTagSinglePayload for ToolbarSearchFieldStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t closure #1 in ToolbarSearchFieldStyle.Implementation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>();
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = type metadata accessor for ToolbarSearchFieldStyle.Implementation();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v21 = *(a1 + 48);
  v48 = *(a1 + 32);
  v49 = v21;
  v50 = *(a1 + 64);
  v51 = *(a1 + 80);
  v22 = *(a1 + 16);
  v46 = *a1;
  v47 = v22;
  outlined init with copy of SearchFieldConfiguration(a2, &v40 - v19, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  outlined init with copy of SearchFieldConfiguration(v20, v17, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = swift_allocObject();
  outlined init with take of ToolbarSearchFieldStyle.Implementation(v20, v24 + v23, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  v25 = v24 + ((v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
  v26 = v40;
  v27 = v49;
  *(v25 + 32) = v48;
  *(v25 + 48) = v27;
  *(v25 + 64) = v50;
  *(v25 + 80) = v51;
  v28 = v47;
  *v25 = v46;
  *(v25 + 16) = v28;
  outlined init with copy of BoundInputsView?(&v46, v44);
  outlined init with copy of BoundInputsView?(&v46, v44);
  specialized closure #1 in ToolbarSearchFieldStyle.Implementation.customAccessoryReader<A>(_:)(a2, closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.body.getterpartial apply, v24, v26);
  type metadata accessor for Binding<SearchFieldState>(0);
  v30 = v29;
  MEMORY[0x18D00ACC0]();
  LODWORD(v23) = v13[1];
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v13, type metadata accessor for SearchFieldState);
  if (v23 == 1)
  {
    MEMORY[0x18D00ACC0](v30);
    v31 = *v10;
    _s7SwiftUI16SearchFieldStateVWOhTm_0(v10, type metadata accessor for SearchFieldState);
    v32 = v31 & 1;
  }

  else
  {
    v32 = 2;
  }

  type metadata accessor for StaticIf<HasCustomAccessoryPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ViewInputsBinding<EnvironmentValues.SearchCustomAccessory?, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>, _AppearanceActionModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>>(0);
  v34 = (v26 + *(v33 + 44));
  v35 = v41;
  v36 = (v7 + *(v41 + 48));
  *v36 = 0;
  v36[1] = 0;
  v36[2] = 0;
  *v7 = 0;
  v7[1] = 0;
  v37 = *(v35 + 44);
  v44[2] = v48;
  v44[3] = v49;
  v44[4] = v50;
  v45 = v51;
  v44[0] = v46;
  v44[1] = v47;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  ToolbarSearchFieldStyle.Implementation.searchToolbarContent(customScopeBar:customAccessory:)(v44, v42, v7 + v37);
  type metadata accessor for ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>(0);
  outlined init with copy of SearchFieldConfiguration(v7, &v34[*(v38 + 36)], type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>);
  *v34 = v32;
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v7, type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>);

  _s7SwiftUI16SearchFieldStateVWOhTm_0(v17, type metadata accessor for ToolbarSearchFieldStyle.Implementation);
  return outlined destroy of BoundInputsView?(&v46);
}

uint64_t closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  v16 = *(a1 + 48);
  v31[2] = *(a1 + 32);
  v31[3] = v16;
  v31[4] = *(a1 + 64);
  v32 = *(a1 + 80);
  v17 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v17;
  type metadata accessor for Binding<SearchFieldState>(0);
  v19 = v18;
  MEMORY[0x18D00ACC0]();
  v20 = v15[1];
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v15, type metadata accessor for SearchFieldState);
  if (v20 == 1)
  {
    MEMORY[0x18D00ACC0](v19);
    v21 = *v12;
    _s7SwiftUI16SearchFieldStateVWOhTm_0(v12, type metadata accessor for SearchFieldState);
    v22 = v21 & 1;
  }

  else
  {
    v22 = 2;
  }

  v23 = (v9 + *(v7 + 48));
  *v23 = 0;
  v23[1] = 0;
  v23[2] = 0;
  *v9 = 0;
  v9[1] = 0;
  v24 = *(v7 + 44);
  v25 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v25;
  v29[4] = *(a2 + 64);
  v30 = *(a2 + 80);
  v26 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v26;
  ToolbarSearchFieldStyle.Implementation.searchToolbarContent(customScopeBar:customAccessory:)(v29, v31, v9 + v24);
  type metadata accessor for ModifiedContent<_UnaryViewAdaptor<IDView<SearchFieldConfiguration.Suggestions, Bool>?>, ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>>(0);
  outlined init with copy of SearchFieldConfiguration(v9, &a3[*(v27 + 36)], type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>);
  *a3 = v22;
  return _s7SwiftUI16SearchFieldStateVWOhTm_0(v9, type metadata accessor for ToolbarModifier<(), TupleToolbarContent<TupleToolbarContent<(ToolbarItemGroup<UIKitSearchBarAdaptor>, ToolbarItemGroup<Button<Text>?>, SearchToolbarItem)>>>);
}

uint64_t ToolbarSearchFieldStyle.Implementation.updateCustomAccessoryState()()
{
  v1 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchFieldConfiguration(v0, v10, type metadata accessor for SearchFieldConfiguration);
  v11 = *(v0 + *(type metadata accessor for ToolbarSearchFieldStyle.Implementation() + 36));
  outlined init with copy of SearchFieldConfiguration(v10, v7, type metadata accessor for Binding<SearchFieldState>);
  MEMORY[0x18D00ACC0](v5);
  v3[3] = v11;
  v12 = v3[2];
  if (v12 == 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v3[2];
  }

  v14 = *v3;
  if (v13)
  {
    if (v14 != 2)
    {
      if (v12 == 2)
      {
        LOBYTE(v12) = v11;
      }

      if (v12)
      {
        *v3 = 1;
      }
    }
  }

  else if (v14 != 2)
  {
    *v3 = 0;
  }

  dispatch thunk of AnyLocation.set(_:transaction:)();
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v3, type metadata accessor for SearchFieldState);
  _s7SwiftUI16SearchFieldStateVWOhTm_0(v10, type metadata accessor for SearchFieldConfiguration);
  return _s7SwiftUI16SearchFieldStateVWOhTm_0(v7, type metadata accessor for Binding<SearchFieldState>);
}

uint64_t closure #1 in ToolbarSearchFieldStyle.Implementation.cancelButton.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.cancelButton.getter(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.CharacterView();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  type metadata accessor for Binding<SearchFieldState>(0);
  v26[1] = a1;
  MEMORY[0x18D00ACC0]();
  v32 = v17;
  outlined init with copy of SearchFieldConfiguration(v17, v14, type metadata accessor for SearchFieldState);
  *v14 = 2;
  v28 = v11;
  AttributedString.init(stringLiteral:)();
  v31 = v12;
  v18 = *(v12 + 36);
  v19 = *(v6 + 16);
  v27 = v8;
  v20 = v5;
  v19(v8, &v14[v18], v5);
  (*(v6 + 24))(&v14[v18], v11, v5);
  AttributedString.characters.getter();
  AttributedString.CharacterView._count.getter();
  v21 = v30;
  v22 = *(v29 + 8);
  v22(v4, v30);
  AttributedString.characters.getter();
  AttributedString.CharacterView._count.getter();
  v22(v4, v21);
  v23 = *(v6 + 8);
  v23(v27, v20);
  v23(v28, v20);
  if ((v14[8] & 1) == 0)
  {
    *(v14 + 1) = 0;
    v14[8] = 1;
  }

  v24 = v32;
  v14[*(v31 + 40)] = 0;
  if (!specialized static SearchFieldState.== infix(_:_:)(v24, v14))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  _s7SwiftUI16SearchFieldStateVWOhTm_0(v24, type metadata accessor for SearchFieldState);
  return _s7SwiftUI16SearchFieldStateVWOhTm_0(v14, type metadata accessor for SearchFieldState);
}

uint64_t key path getter for EnvironmentValues.horizontalSizeClass : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.horizontalSizeClass.getter();
  *a1 = v3;
  return result;
}

void *initializeBufferWithCopyOfBuffer for ToolbarSearchFieldStyle.Implementation(void *a1, void *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    a1[1] = a2[1];
    type metadata accessor for Binding<SearchFieldState>(0);
    v8 = *(v7 + 32);
    v9 = v6 + v8;
    v10 = a2 + v8;
    *v9 = *(a2 + v8);
    v9[1] = *(a2 + v8 + 1);
    *(v9 + 1) = *(a2 + v8 + 2);
    v9[8] = *(a2 + v8 + 8);
    *(v9 + 1) = *(a2 + v8 + 4);
    v11 = type metadata accessor for SearchFieldState(0);
    v12 = v11[9];
    v13 = type metadata accessor for AttributedString();
    v14 = *(*(v13 - 8) + 16);

    v14(&v9[v12], &v10[v12], v13);
    v9[v11[10]] = v10[v11[10]];
    v15 = v11[11];
    v16 = &v9[v15];
    v17 = &v10[v15];
    v16[4] = v17[4];
    *v16 = *v17;
    v18 = type metadata accessor for SearchFieldConfiguration(0);
    v19 = v18[6];
    v20 = v6 + v19;
    v21 = a2 + v19;
    v22 = v21[8];
    if (v22 == 255)
    {
      *v20 = *v21;
      v20[8] = v21[8];
    }

    else
    {
      v23 = *v21;
      v24 = v22 & 1;
      outlined copy of PlatformItemCollection.Storage(*v21, v22 & 1);
      *v20 = v23;
      v20[8] = v24;
    }

    *(v6 + v18[7]) = *(a2 + v18[7]);
    v25 = v18[8];
    v26 = v6 + v25;
    v27 = a2 + v25;
    v28 = *(a2 + v25);
    v29 = *(a2 + v25 + 8);
    v30 = *(a2 + v25 + 16);
    outlined copy of Text.Storage(v28, v29, v30);
    *v26 = v28;
    *(v26 + 1) = v29;
    v26[16] = v30;
    *(v26 + 3) = *(v27 + 3);
    v31 = a3[5];
    v32 = v6 + v31;
    v33 = a2 + v31;
    v34 = *v33;
    LOBYTE(v29) = v33[8];

    outlined copy of Environment<Selector?>.Content(v34, v29);
    *v32 = v34;
    v32[8] = v29;
    v35 = a3[6];
    v36 = v6 + v35;
    v37 = a2 + v35;
    v38 = *v37;
    LOBYTE(v29) = v37[8];
    outlined copy of Environment<Selector?>.Content(*v37, v29);
    *v36 = v38;
    v36[8] = v29;
    v39 = a3[8];
    *(v6 + a3[7]) = *(a2 + a3[7]);
    v40 = v6 + v39;
    v41 = *(a2 + v39);
    LOBYTE(v29) = *(a2 + v39 + 8);
    outlined copy of Environment<Selector?>.Content(v41, v29);
    *v40 = v41;
    v40[8] = v29;
    *(v6 + a3[9]) = *(a2 + a3[9]);
  }

  return v6;
}

void *initializeWithTake for ToolbarSearchFieldStyle.Implementation(void *a1, void *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  type metadata accessor for Binding<SearchFieldState>(0);
  v8 = *(v7 + 32);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *(a2 + v8);
  v9[1] = *(a2 + v8 + 1);
  *(v9 + 1) = *(a2 + v8 + 2);
  v9[8] = *(a2 + v8 + 8);
  *(v9 + 1) = *(a2 + v8 + 4);
  v11 = type metadata accessor for SearchFieldState(0);
  v12 = v11[9];
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v9[v11[10]] = v10[v11[10]];
  v14 = v11[11];
  v15 = &v9[v14];
  v16 = &v10[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = type metadata accessor for SearchFieldConfiguration(0);
  v18 = v17[6];
  v19 = a1 + v18;
  v20 = a2 + v18;
  *v19 = *v20;
  v19[8] = v20[8];
  *(a1 + v17[7]) = *(a2 + v17[7]);
  v21 = v17[8];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  v25 = a3[5];
  v26 = a3[6];
  v27 = a1 + v25;
  v28 = a2 + v25;
  *v27 = *v28;
  v27[8] = v28[8];
  v29 = a1 + v26;
  v30 = a2 + v26;
  *v29 = *v30;
  v29[8] = v30[8];
  v31 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v32 = a1 + v31;
  v33 = a2 + v31;
  *v32 = *v33;
  v32[8] = v33[8];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

void *assignWithTake for ToolbarSearchFieldStyle.Implementation(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
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
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a1 + v17 + 8);
  if (v20 == 255)
  {
    goto LABEL_5;
  }

  v21 = v19[8];
  if (v21 == 255)
  {
    outlined destroy of PlatformItemCollection(v18);
LABEL_5:
    *v18 = *v19;
    *(v18 + 8) = v19[8];
    goto LABEL_6;
  }

  v22 = *v18;
  *v18 = *v19;
  *(v18 + 8) = v21 & 1;
  outlined consume of PlatformItemCollection.Storage(v22, v20 & 1);
LABEL_6:
  *(a1 + v16[7]) = *(a2 + v16[7]);
  v23 = v16[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  LOBYTE(v23) = *(a2 + v23 + 16);
  v26 = *v24;
  v27 = *(v24 + 1);
  v28 = v24[16];
  *v24 = *v25;
  v24[16] = v23;
  outlined consume of Text.Storage(v26, v27, v28);
  *(v24 + 3) = *(v25 + 3);

  v29 = a3[5];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v32 = *v31;
  LOBYTE(v31) = v31[8];
  v33 = *v30;
  v34 = v30[8];
  *v30 = v32;
  v30[8] = v31;
  outlined consume of Environment<Selector?>.Content(v33, v34);
  v35 = a3[6];
  v36 = a1 + v35;
  v37 = a2 + v35;
  v38 = *v37;
  LOBYTE(v37) = v37[8];
  v39 = *v36;
  v40 = v36[8];
  *v36 = v38;
  v36[8] = v37;
  outlined consume of Environment<Selector?>.Content(v39, v40);
  v41 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v42 = a1 + v41;
  v43 = a2 + v41;
  v44 = *v43;
  LOBYTE(v43) = v43[8];
  v45 = *v42;
  v46 = v42[8];
  *v42 = v44;
  v42[8] = v43;
  outlined consume of Environment<Selector?>.Content(v45, v46);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t partial apply for closure #1 in ToolbarSearchFieldStyle.Implementation.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ToolbarSearchFieldStyle.Implementation() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in ToolbarSearchFieldStyle.Implementation.body.getter(a1, v6, a2);
}

uint64_t specialized closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.customScopeBarReader<A>(_:)(__int128 *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4)
{
  v5 = a1[3];
  v29 = a1[2];
  v30 = v5;
  v31 = a1[4];
  v32 = *(a1 + 10);
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  if (*(a4 + *(type metadata accessor for ToolbarSearchFieldStyle.Implementation() + 28)) == 1)
  {
    v17 = v27;
    v18 = v28;
    v15 = v29;
    v16 = v30;
    v8 = *(&v31 + 1);
    v7 = v31;
    v9 = v32;
    outlined init with copy of BoundInputsView(&v27, v25);
    v10 = v15;
    v11 = v16;
    v12 = v17;
    v13 = v18;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v20 = v13;
  v19 = v12;
  v22 = v11;
  v21 = v10;
  *&v23 = v7;
  *(&v23 + 1) = v8;
  v24 = v9;
  a2(&v19);
  v25[3] = v22;
  v25[4] = v23;
  v26 = v24;
  v25[0] = v19;
  v25[1] = v20;
  v25[2] = v21;
  return outlined destroy of BoundInputsView?(v25);
}

uint64_t specialized closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.customAccessoryReader<A>(_:)(__int128 *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4)
{
  v5 = a1[3];
  v29 = a1[2];
  v30 = v5;
  v31 = a1[4];
  v32 = *(a1 + 10);
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  if (*(a4 + *(type metadata accessor for ToolbarSearchFieldStyle.Implementation() + 36)) == 1)
  {
    v17 = v27;
    v18 = v28;
    v15 = v29;
    v16 = v30;
    v8 = *(&v31 + 1);
    v7 = v31;
    v9 = v32;
    outlined init with copy of BoundInputsView(&v27, v25);
    v10 = v15;
    v11 = v16;
    v12 = v17;
    v13 = v18;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v20 = v13;
  v19 = v12;
  v22 = v11;
  v21 = v10;
  *&v23 = v7;
  *(&v23 + 1) = v8;
  v24 = v9;
  a2(&v19);
  v25[3] = v22;
  v25[4] = v23;
  v26 = v24;
  v25[0] = v19;
  v25[1] = v20;
  v25[2] = v21;
  return outlined destroy of BoundInputsView?(v25);
}

uint64_t partial apply for closure #1 in ToolbarSearchFieldStyle.Implementation.cancelButton.getter()
{
  type metadata accessor for ToolbarSearchFieldStyle.Implementation();

  return closure #1 in ToolbarSearchFieldStyle.Implementation.cancelButton.getter();
}

uint64_t outlined init with take of Button<Text>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Button<Text>(0, &lazy cache variable for type metadata for Button<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for Button);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.customScopeBarReader<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ToolbarSearchFieldStyle.Implementation() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for ToolbarSearchFieldStyle.Implementation() - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);

  return closure #1 in closure #1 in ToolbarSearchFieldStyle.Implementation.body.getter(a1, v6, a2);
}

void one-time initialization function for isUIKitGestureDebuggingEnabled()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults);
  v0 = static NSUserDefaults.uiKit.getter();
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x18D00C850](0x7574736547676F4CLL, 0xEA00000000006572);
    v3 = [v1 BOOLForKey_];
  }

  else
  {
    v3 = 0;
  }

  isUIKitGestureDebuggingEnabled = v3;
}

id UIKitResponderGestureRecognizer.name.getter()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  if (v9)
  {
    return v8;
  }

  if (one-time initialization token for isUIKitGestureDebuggingEnabled != -1)
  {
    swift_once();
  }

  if (isUIKitGestureDebuggingEnabled && (v3 = &v0[OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder], (Strong = swift_weakLoadStrong()) != 0))
  {
    (*(*(*(v3 + 1) + 8) + 32))(*Strong);
    v5 = _typeName(_:qualified:)();
  }

  else
  {
    v7.receiver = v0;
    v7.super_class = ObjectType;
    result = objc_msgSendSuper2(&v7, sel_name);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v5;
}

void *closure #1 in UIKitResponderGestureRecognizer.name.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = (*(*(v3 + 8) + 80))(*result);
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  return result;
}

id UIKitResponderGestureRecognizer.didAttach(to:)(id result)
{
  if (result)
  {
    type metadata accessor for UIKitResponderEventBindingBridge();
    result = swift_dynamicCastClass();
    if (result)
    {

      return [v1 addTarget:result action:sel_flushActions];
    }
  }

  return result;
}

uint64_t UIKitResponderGestureRecognizer.isKind(of:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITapGestureRecognizer) == a1)
  {
    if (swift_weakLoadStrong())
    {
      AnyGestureResponder.requiredTapCount.getter();
      v7 = v6;

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_isKindOfClass_, ObjCClassFromMetadata);
}

Swift::Bool __swiftcall UIKitResponderGestureRecognizer.canPrevent(_:)(UIGestureRecognizer *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v29.receiver = v2;
    v29.super_class = ObjectType;
    v16 = [(UIGestureRecognizer *)&v29 canPreventGestureRecognizer:a1];
    return v16 & 1;
  }

  v7 = Strong;
  v8 = *(v5 + 1);
  v9 = swift_dynamicCastClass();
  if (!v9 || (v10 = v9 + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder, (v11 = swift_weakLoadStrong()) == 0))
  {
    v17 = [(UIGestureRecognizer *)a1 view];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for HostingScrollView();
      v19 = swift_dynamicCastClass();
      if (v19 && (v20 = v19, swift_weakLoadStrong()))
      {
        v21 = [v20 panGestureRecognizer];

        if (v21 == a1)
        {

          v26 = AnyGestureResponder.isCancellable.getter();

          if (v26)
          {
            v15 = 0;
          }

          else
          {
            v15 = 3;
          }

          goto LABEL_5;
        }
      }

      else
      {
      }
    }

    v22 = *v7;
    if ((AnyGestureResponder.isCancellable.getter() & 1) == 0 || ((*(v8 + 72))(&v27, v22, v8), v27 == 4) || !UIGestureRecognizer.cancelsOtherGestureRecognizers.getter())
    {
      v23 = AnyGestureResponder.isSimultaneous(with:)(a1, v22, v8);
      if (v23 == 2 || (v23 & 1) == 0)
      {
        v24 = AnyGestureResponder.isPrioritized(over:)(a1, v22, v8);
        if (v24 == 2)
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITextMultiTapRecognizer);
          if ([(UIGestureRecognizer *)a1 isKindOfClass:swift_getObjCClassFromMetadata()])
          {
            goto LABEL_20;
          }

          v28.receiver = v2;
          v28.super_class = ObjectType;
          v24 = [(UIGestureRecognizer *)&v28 canPreventGestureRecognizer:a1];
        }

        v16 = v24;

        return v16 & 1;
      }
    }

LABEL_20:

    v16 = 0;
    return v16 & 1;
  }

  v12 = *(v10 + 8);
  v13 = *v11;
  v14 = *(v12 + 72);
  swift_retain_n();
  v14(&v27, v13, v12);

  v15 = v27;
LABEL_5:
  v27 = v15;
  v16 = AnyGestureResponder.canPrevent(_:otherExclusionPolicy:)();

  return v16 & 1;
}

BOOL UIGestureRecognizer.cancelsOtherGestureRecognizers.getter()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD00000000000001ELL && 0x800000018CD420B0 == v5)
    {
      goto LABEL_20;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }
  }

  v8 = [v0 name];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == 0xD00000000000002ALL && 0x800000018CD42080 == v12)
    {
      goto LABEL_20;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return 1;
    }
  }

  v15 = [v0 name];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 != 0xD00000000000002ALL || 0x800000018CD42050 != v19)
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        return 1;
      }

      goto LABEL_21;
    }

LABEL_20:

    return 1;
  }

LABEL_21:
  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

uint64_t AnyGestureResponder.isSimultaneous(with:)(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 72))(&v8, a2, a3);
  if (v8 - 3 < 2)
  {
    return 0;
  }

  v4 = 1;
  if (v8)
  {
    if (v8 != 1)
    {
      return v4;
    }

    v4 = -1;
  }

  v5 = AnyGestureResponder.compare(with:)(a1) != v4;
  if (v6)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

uint64_t AnyGestureResponder.isPrioritized(over:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 2;
  (*(a3 + 72))(&v15, a2, a3);
  if (v15 == 4 || (getter of isLongPress #1 in AnyGestureResponder.isPrioritized(over:)(v6, a1) & 1) != 0)
  {
    v7 = AnyGestureResponder.compare(with:)(a1);
    v9 = v8;
    v10 = getter of isLongPress #1 in AnyGestureResponder.isPrioritized(over:)(v6, a1);

    if (v7 == -1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    if (v9)
    {
      v13 = 2;
    }

    else
    {
      v13 = 2 * (v7 != -1);
    }

    if (v10)
    {
      return v13;
    }

    else
    {
      return v12;
    }
  }

  else
  {

    return 2;
  }
}

Swift::Bool __swiftcall UIKitResponderGestureRecognizer.canBePrevented(by:)(UIGestureRecognizer *by)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v5 + 1);
    if (swift_dynamicCastClass() && swift_weakLoadStrong())
    {
      v9 = *v7;
      v10 = *(v8 + 72);

      v10(&v17, v9, v8);
      v11 = AnyGestureResponder.canPrevent(_:otherExclusionPolicy:)();
    }

    else
    {
      v12 = *v7;
      v13 = AnyGestureResponder.isSimultaneous(with:)(by, *v7, v8);
      if (v13 == 2 || (v13 & 1) == 0)
      {
        v14 = AnyGestureResponder.isPrioritized(over:)(by, v12, v8);
        if (v14 == 2)
        {
          v18.receiver = v2;
          v18.super_class = ObjectType;
          v11 = [(UIGestureRecognizer *)&v18 canBePreventedByGestureRecognizer:by];
        }

        else
        {
          v15 = v14;

          v11 = v15 ^ 1;
        }
      }

      else
      {

        v11 = 0;
      }
    }
  }

  else
  {
    v19.receiver = v2;
    v19.super_class = ObjectType;
    v11 = [(UIGestureRecognizer *)&v19 canBePreventedByGestureRecognizer:by];
  }

  return v11 & 1;
}

Swift::Bool __swiftcall UIKitResponderGestureRecognizer.shouldRequireFailure(of:)(UIGestureRecognizer *of)
{
  v2 = v1;
  swift_getObjectType();
  v4 = v1 + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(v4 + 8);
    if (swift_dynamicCastClass() && swift_weakLoadStrong())
    {
      v8 = AnyGestureResponder.shouldRequireFailure(of:)();

      LOBYTE(Strong) = v8 & 1;
    }

    else
    {
      v9 = *v6;
      if ((AnyGestureResponder.isCancellable.getter() & 1) == 0)
      {
        goto LABEL_17;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        v10 = [(UIGestureRecognizer *)of name];
        if (!v10)
        {
          goto LABEL_17;
        }

        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if (v12 == 0xD000000000000012 && 0x800000018CD420D0 == v14)
        {

          LOBYTE(Strong) = 1;
          return Strong;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {
LABEL_17:
          if (static UniversalGestureRelationshipsFeature.isEnabled.getter() & 1) == 0 || ((*(v7 + 72))(&v22, v9, v7), v22 != 3) || (AnyGestureResponder.dependency.getter(), !v21) || (v16 = AnyGestureResponder.compare(with:)(of), (v17) || v16 == 1)
          {

            LOBYTE(Strong) = 0;
            return Strong;
          }

          v18 = OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_isDeterminingDynamicFailureRequirement;
          if ((*(v2 + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_isDeterminingDynamicFailureRequirement) & 1) == 0)
          {
            *(v2 + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_isDeterminingDynamicFailureRequirement) = 1;
            if (([(UIGestureRecognizer *)of __requiresGestureRecognizerToFail:v2]& 1) != 0)
            {
            }

            else
            {
              v19 = [(UIGestureRecognizer *)of __canPreventGestureRecognizer:v2];

              if (v19)
              {
                *(v2 + v18) = 0;
                LOBYTE(Strong) = 1;
                return Strong;
              }
            }

            LOBYTE(Strong) = 0;
            *(v2 + v18) = 0;
            return Strong;
          }
        }
      }

      LOBYTE(Strong) = 1;
    }
  }

  return Strong;
}

Swift::Bool __swiftcall UIKitResponderGestureRecognizer.shouldBeRequiredToFail(by:)(UIGestureRecognizer *by)
{
  ObjectType = swift_getObjectType();
  if (swift_weakLoadStrong())
  {
    if (swift_dynamicCastClass() && swift_weakLoadStrong())
    {
      v4 = AnyGestureResponder.shouldRequireFailure(of:)();

      return v4 & 1;
    }
  }

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return [(UIGestureRecognizer *)&v6 shouldBeRequiredToFailByGestureRecognizer:by];
}

Swift::Bool __swiftcall UIKitResponderGestureRecognizer._canBeCancelled(by:)(UIGestureRecognizer *by)
{
  swift_getObjectType();
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v3 + 8);
    v7 = swift_dynamicCastClass();
    if (!v7 || (v8 = v7 + OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder, (v9 = swift_weakLoadStrong()) == 0) || (v10 = v9, v11 = *(v8 + 8), (*(v6 + 72))(&v15 + 1, *v5, v6), v12 = BYTE1(v15), (*(v11 + 72))(&v15, *v10, v11), , v15 - 3 <= 1) && (v12 - 3) < 2)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITapGestureRecognizer);
      if (([(UIGestureRecognizer *)by isKindOfClass:swift_getObjCClassFromMetadata()]& 1) == 0)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILongPressGestureRecognizer);
        if (![(UIGestureRecognizer *)by isKindOfClass:swift_getObjCClassFromMetadata()])
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITextMultiTapRecognizer);
          if (![(UIGestureRecognizer *)by isKindOfClass:swift_getObjCClassFromMetadata()]&& (AnyGestureResponder.isCancellable.getter() & 1) != 0)
          {
            v13 = UIGestureRecognizer.cancelsOtherGestureRecognizers.getter();

            return v13;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t AnyGestureResponder.compare(with:)(void *a1)
{
  if (!dispatch thunk of ViewResponder.gestureContainer.getter())
  {
    return 0;
  }

  if ([a1 container])
  {
    v2 = _UIGestureRecognizerContainerCompare();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  swift_unknownObjectRelease();
  return v2;
}

uint64_t getter of isLongPress #1 in AnyGestureResponder.isPrioritized(over:)(uint64_t a1, id a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3 == 2)
  {
    v4 = [a2 name];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (v6 == 0xD000000000000012 && 0x800000018CD420D0 == v8)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    swift_beginAccess();
    *v2 = v3 & 1;
  }

  return v3 & 1;
}

void specialized UIKitResponderGestureRecognizer.responder.didset()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI31UIKitResponderGestureRecognizer_responder];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*(v2 + 1) + 16))(v9, *Strong);

    outlined init with copy of _GraphInputs(v9, v8);
    outlined destroy of _ViewInputs(v9);
    v8[0] = v9[0];
    v8[1] = v9[1];
    v8[2] = v9[2];
    _GraphInputs.interfaceIdiom.getter();
    outlined destroy of _GraphInputs(v9);
    if (AnyInterfaceIdiom.accepts<A>(_:)())
    {
      type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_18CD69590;
      *(v4 + 32) = Int._bridgeToObjectiveC()();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v1 setAllowedTouchTypes_];
    }
  }
}

void ViewRendererHost.accessibilityFocus(id:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 8) + 8))(a3);
  lazy protocol witness table accessor for type AccessibilityViewGraph and conformance AccessibilityViewGraph();
  v6 = ViewGraph.subscript.getter();

  if (!v6 || !*v6)
  {
    return;
  }

  v7 = specialized AccessibilityRelationshipScope.nodes<A>(for:with:in:)(3u, a1, a2);
  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_32:

    return;
  }

LABEL_43:
  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_32;
  }

LABEL_5:
  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  do
  {
    if (v11)
    {
      v12 = MEMORY[0x18D00E9C0](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v28 = 4;
    AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v28, &v29);
    if (v29 != 3)
    {

LABEL_37:
      v22 = AccessibilityNode.representedElement.getter();
      if (one-time initialization token for focusSupportingTechnologies != -1)
      {
        swift_once();
      }

      v27 = static AccessibilityTechnologies.focusSupportingTechnologies;
      specialized static AccessibilityFocus.move(to:for:)(v22, &v27);

      return;
    }

    ++v10;
  }

  while (v14 != v9);
  if (v11)
  {
    v15 = 0;
    while (1)
    {
      v16 = MEMORY[0x18D00E9C0](v15, v8);
      if (__OFADD__(v15++, 1))
      {
        break;
      }

      v18 = v16;
      swift_unknownObjectRetain_n();
      v25 = 4;
      v13 = v18;
      AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v25, &v26);
      if (v26 != 3)
      {
        goto LABEL_36;
      }

      while (1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();

        if (!Strong)
        {
          break;
        }

        v13 = Strong;
        v25 = 4;
        AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v25, &v26);
        if (v26 != 3)
        {
          goto LABEL_36;
        }
      }

      swift_unknownObjectRelease();
      if (v15 == v9)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = 0;
    while (v20 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v8 + 32 + 8 * v20);
      v23 = 4;
      AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v23, &v24);
      if (v24 != 3)
      {
        v13 = v18;
LABEL_36:

        goto LABEL_37;
      }

      ++v20;
      v13 = v18;
      while (1)
      {
        v21 = swift_unknownObjectWeakLoadStrong();

        if (!v21)
        {
          break;
        }

        v13 = v21;
        v23 = 4;
        AccessibilityNode.impliedVisibility(consideringParent:with:)(1, &v23, &v24);
        if (v24 != 3)
        {
          goto LABEL_36;
        }
      }

      if (v20 == v9)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
}

void AccessibilityRequestFocusAction.callAsFunction<A>(id:in:)(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = *v2;
  if (*v2)
  {
    (*(v5 + 16))(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v6);
    AnyHashable.init<A>(_:)();
    v7(v9, a2);
    outlined destroy of AnyHashable(v9);
  }
}

uint64_t EnvironmentValues.requestAccessibilityFocus.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityRequestFocusKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityRequestFocusKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityRequestFocusKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityRequestFocusKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

void type metadata accessor for EnvironmentPropertyKey<AccessibilityRequestFocusKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityRequestFocusKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityRequestFocusKey>);
    }
  }
}

double key path getter for EnvironmentValues.requestAccessibilityFocus : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityRequestFocusKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityRequestFocusKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityRequestFocusKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityRequestFocusKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.requestAccessibilityFocus : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for EnvironmentPropertyKey<AccessibilityRequestFocusKey>();

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v3, v4);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityRequestFocusKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.accessibilityHint(_:isEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for _ContiguousArrayStorage<Text>();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3 & 1;
  *(v14 + 56) = a4;
  v16 = v14;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980100], &v16, a5, a6, MEMORY[0x1E6980100], a7);
}

uint64_t ModifiedContent<>.accessibilityHint(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Text>();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3 & 1;
  *(v14 + 56) = a4;
  v16 = v14;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  ModifiedContent<>.update<A>(_:replacing:isEnabled:)(MEMORY[0x1E6980100], &v16, a5, a6, a7);
}

uint64_t ModifiedContent<>.accessibilityHint(_:isEnabled:)@<X0>(char a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  ModifiedContent<>.accessibilityHint(_:isEnabled:)(v6, v7, v9 & 1, v11, a1, a2, a3);
  outlined consume of Text.Storage(v6, v8, v10 & 1);
}

uint64_t ModifiedContent<>.accessibilityHint<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  ModifiedContent<>.accessibilityHint(_:isEnabled:)(v10, v11, v13 & 1, v15, a2, a3, a4);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

uint64_t TabContent.accessibilityHint(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Text>();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3 & 1;
  *(v14 + 56) = a4;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  AccessibilityProperties.init<A>(_:_:)();
  TabContent.accessibility(_:isEnabled:)(v16, a5, a6, a7);
  return outlined destroy of AccessibilityProperties(v16);
}

uint64_t View.accessibilityHint(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t))
{

  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  a8(v9, v10);
  outlined consume of Text.Storage(v9, v11, v13 & 1);
}

uint64_t View.accessibilityHint<A>(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  a7();
  outlined consume of Text.Storage(v11, v13, v15 & 1);
}

uint64_t View.accessibilityHint(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  View.accessibilityHint(_:)(v8, v9, v11 & 1, v13, a5, a6);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t ModifiedContent<>.accessibilityHint<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  ModifiedContent<>.accessibilityHint(_:)(v8, v9, v11 & 1, v13, a2, a3);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t key path getter for SubscriptionView.action : <A, B>SubscriptionView<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 32);
  v6 = *(a2 + a3 - 24);
  v7 = *(a2 + a3 - 16);
  v8 = *(a2 + a3 - 8);
  v9 = (a1 + *(type metadata accessor for SubscriptionView() + 56));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 2) = v5;
  *(v12 + 3) = v6;
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  *(v12 + 6) = v11;
  *(v12 + 7) = v10;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Publisher.Output) -> ();
  a4[1] = v12;
}

uint64_t key path setter for SubscriptionView.action : <A, B>SubscriptionView<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 4) = v7;
  *(v11 + 5) = v8;
  *(v11 + 6) = v10;
  *(v11 + 7) = v9;
  v12 = (a2 + *(type metadata accessor for SubscriptionView() + 56));

  *v12 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.Publisher.Output) -> (@out ());
  v12[1] = v11;
  return result;
}

uint64_t SubscriptionView.action.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t SubscriptionView.action.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 56));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t static SubscriptionView._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v8[4] = a1[4];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a5 + 40))(v8, a3, a5);
}

uint64_t protocol witness for CustomCombineIdentifierConvertible.combineIdentifier.getter in conformance ActionDispatcherSubscriber<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for CombineIdentifier();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t *initializeBufferWithCopyOfBuffer for SubscriptionView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    v19 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
    v20 = v19[1];
    v21 = ((v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v19;
    v21[1] = v20;
  }

  return v3;
}

uint64_t assignWithTake for SubscriptionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  *((*(v9 + 24) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 24) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for SubscriptionView(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *storeEnumTagSinglePayload for SubscriptionView(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t assignWithCopy for SubscriptionView.Subscriber(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for SubscriptionView.Subscriber(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

char *assignWithCopy for ActionDispatcherSubscriber(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 28);
  v7 = type metadata accessor for CombineIdentifier();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}

char *initializeWithTake for ActionDispatcherSubscriber(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 28);
  v6 = type metadata accessor for CombineIdentifier();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithTake for ActionDispatcherSubscriber(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 28);
  v7 = type metadata accessor for CombineIdentifier();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t NavigationStackViewPosition.description.getter()
{
  _StringGuts.grow(_:)(104);
  MEMORY[0x18D00C9B0](0xD000000000000028, 0x800000018CD421C0);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](0x79656B202020200ALL, 0xEA0000000000203ALL);
  v2 = NavigationState.StackContent.Key.debugDescription.getter(*(v0 + 8), *(v0 + 16));
  MEMORY[0x18D00C9B0](v2);

  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD421F0);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](0xD000000000000018, 0x800000018CD42210);
  if (*(v0 + 40))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x18D00C9B0](v4, v5);

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NavigationStackViewPosition()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  MEMORY[0x18D00F6F0](v3);
  MEMORY[0x18D00F6F0](v4);
  MEMORY[0x18D00F6F0](v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance NavigationStackViewPosition()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  MEMORY[0x18D00F6F0](*v0);
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  MEMORY[0x18D00F6F0](v3);
  MEMORY[0x18D00F6F0](v4);
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationStackViewPosition()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  MEMORY[0x18D00F6F0](v2);
  MEMORY[0x18D00F6F0](v3);
  MEMORY[0x18D00F6F0](v4);
  MEMORY[0x18D00F6F0](v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NavigationStackViewPosition(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return specialized static NavigationStackViewPosition.== infix(_:_:)(&v5, &v7) & 1;
}

uint64_t specialized static NavigationStackViewPosition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), v2 && *(a1 + 32) == *(a2 + 32)))
  {
    return (*(a1 + 40) ^ *(a2 + 40) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t View.menuStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MenuStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t key path getter for MenuStyleConfiguration.primaryAction : MenuStyleConfiguration@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of AppIntentExecutor?(v3);
}

uint64_t key path setter for MenuStyleConfiguration.primaryAction : MenuStyleConfiguration(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  outlined copy of AppIntentExecutor?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t MenuStyleConfiguration.primaryAction.getter()
{
  v1 = *v0;
  outlined copy of AppIntentExecutor?(*v0);
  return v1;
}

uint64_t MenuStyleConfiguration.primaryAction.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t key path getter for MenuStyleConfiguration.onPresentationChanged : MenuStyleConfiguration@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of AppIntentExecutor?(v3);
}

uint64_t key path setter for MenuStyleConfiguration.onPresentationChanged : MenuStyleConfiguration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  outlined copy of AppIntentExecutor?(v3);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t MenuStyleConfiguration.onPresentationChanged.getter()
{
  v1 = *(v0 + 16);
  outlined copy of AppIntentExecutor?(v1);
  return v1;
}

uint64_t MenuStyleConfiguration.onPresentationChanged.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *assignWithTake for MenuStyleConfiguration(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (!a1[2])
  {
    if (v7)
    {
      v9 = a2[3];
      a1[2] = v7;
      a1[3] = v9;
      return a1;
    }

LABEL_14:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[3];
  a1[2] = v7;
  a1[3] = v8;

  return a1;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedMenuStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedMenuStyle and conformance ResolvedMenuStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance MenuStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t specialized ModifiedContent<>.accessibilityAction(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = v7;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  *(v16 + 24) = v15;
  type metadata accessor for MutableBox<AccessibilityAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18CD63400;
  v18 = AccessibilityActionHandlerSeed++;
  type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>();
  *(v17 + 56) = v19;
  *(v17 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v20 = swift_allocObject();
  *(v17 + 32) = v20;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = 2;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0u;
  *(v20 + 112) = 0;
  *(v20 + 120) = partial apply for specialized closure #1 in ModifiedContent<>.accessibilityAction<A>(_:label:image:_:);
  *(v20 + 128) = v16;
  *(v20 + 136) = v18;
  *(v17 + 72) = 0;
  v27 = v8[2];
  swift_beginAccess();
  v26 = v17;

  outlined copy of AccessibilityActionKind.ActionKind(a1, a2, a3, a4);

  outlined init with copy of AccessibilityAttachmentModifier(&v27, &v25);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

  AccessibilityProperties.subscript.getter();
  specialized Array.append<A>(contentsOf:)(v25);
  v25 = v26;
  AccessibilityProperties.subscript.setter();
  swift_endAccess();

  outlined destroy of AccessibilityAttachmentModifier(&v27);
  v21 = v8[1];
  *a7 = *v8;
  a7[1] = v21;
  a7[2] = v8[2];
  return outlined init with copy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(v8, v24);
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>>, AccessibilityAttachmentModifier>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 2;
  return result;
}

void OpenWindowAction.callAsFunction<A>(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static SceneNavigationStrategy_Phone.shared;
  v15 = qword_1EAB09798;

  if (v14 == 1)
  {
    specialized SceneNavigationStrategy_Phone.openWindow<A>(namespace:presenting:withBehavior:)(v11, v12, v13, a1, 1, v15, a2, a3, a4, a5);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t OpenWindowAction.callAsFunction<A>(value:sharingBehavior:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

uint64_t OpenWindowAction.callAsFunction<A>(value:destination:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

Swift::Void __swiftcall OpenWindowAction.callAsFunction(id:)(Swift::String id)
{
  object = id._object;
  countAndFlagsBits = id._countAndFlagsBits;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static SceneNavigationStrategy_Phone.shared;
  v8 = qword_1EAB09798;

  if (v7 == 1)
  {
    specialized SceneNavigationStrategy_Phone.openWindow(namespace:id:withBehavior:)(v4, v5, v6, countAndFlagsBits, object, 1, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t OpenWindowAction.callAsFunction(id:sharingBehavior:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

uint64_t OpenWindowAction.callAsFunction(id:destination:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction(id:destination:), v1, v0);
}

void OpenWindowAction.callAsFunction<A>(id:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *v7;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static SceneNavigationStrategy_Phone.shared;
  v17 = qword_1EAB09798;

  if (v16 == 1)
  {
    specialized SceneNavigationStrategy_Phone.openWindow<A>(namespace:id:presenting:withBehavior:)(v13, v14, v15, a1, a2, a3, 1, v17, a4, a5, a6, a7);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t OpenWindowAction.callAsFunction<A>(id:value:sharingBehavior:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

uint64_t OpenWindowAction.callAsFunction<A>(id:value:destination:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction<A>(value:sharingBehavior:), v1, v0);
}

uint64_t EnvironmentValues.openWindow.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

double key path getter for EnvironmentValues.openWindow : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t key path setter for EnvironmentValues.openWindow : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>();
  outlined copy of SceneList.Namespace(v3, v4, v5);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t assignWithCopy for OpenWindowAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  outlined consume of SceneList.Namespace(v7, v8, v9);
  v10 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v10;
  return a1;
}

uint64_t assignWithTake for OpenWindowAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  v7 = *(a1 + 16);
  *(a1 + 16) = v4;
  outlined consume of SceneList.Namespace(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

unint64_t lazy protocol witness table accessor for type OpenWindowAction.SharingBehavior.Behavior and conformance OpenWindowAction.SharingBehavior.Behavior()
{
  result = lazy protocol witness table cache variable for type OpenWindowAction.SharingBehavior.Behavior and conformance OpenWindowAction.SharingBehavior.Behavior;
  if (!lazy protocol witness table cache variable for type OpenWindowAction.SharingBehavior.Behavior and conformance OpenWindowAction.SharingBehavior.Behavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenWindowAction.SharingBehavior.Behavior and conformance OpenWindowAction.SharingBehavior.Behavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OpenWindowAction.Destination.Role and conformance OpenWindowAction.Destination.Role()
{
  result = lazy protocol witness table cache variable for type OpenWindowAction.Destination.Role and conformance OpenWindowAction.Destination.Role;
  if (!lazy protocol witness table cache variable for type OpenWindowAction.Destination.Role and conformance OpenWindowAction.Destination.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenWindowAction.Destination.Role and conformance OpenWindowAction.Destination.Role);
  }

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ToolbarItemGroup<A>.MakeView@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ToolbarItemGroup.init<A, B>(placement:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of ToolbarItemPlacement(a1, v5);
  type metadata accessor for LabeledToolbarItemGroupContent();
  swift_getWitnessTable();
  ToolbarItemGroup.init(placement:content:)(v5, partial apply for closure #1 in ToolbarItemGroup.init<A, B>(placement:content:label:), a2);
  return outlined destroy of ToolbarItemPlacement(a1);
}

uint64_t closure #1 in ToolbarItemGroup.init<A, B>(placement:content:label:)@<X0>(uint64_t (*a1)(double)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v30[1] = a6;
  v31 = a1;
  v32 = a3;
  v33 = a2;
  v34 = a7;
  MEMORY[0x1EEE9AC00](a1);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v14;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v18 = type metadata accessor for LabeledToolbarItemGroupContent();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v30 - v24;
  v26 = v31(v23);
  v33(v26);
  LabeledToolbarItemGroupContent.init(content:label:)(v13, v10, a4, a5, v21);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v21, v18, WitnessTable);
  v28 = *(v19 + 8);
  v28(v21, v18);
  static ViewBuilder.buildExpression<A>(_:)(v25, v18, WitnessTable);
  return (v28)(v25, v18);
}

uint64_t LabeledToolbarItemGroupContent.init(content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for LabeledToolbarItemGroupContent();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t LabeledToolbarItemGroupContent.body.getter(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v27 = a1[2];
  v2 = v27;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  type metadata accessor for LabeledControlGroupContent();
  swift_getWitnessTable();
  v6 = type metadata accessor for ControlGroup();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-v11];
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v1;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v1;
  ControlGroup.init<A, B>(content:label:)(partial apply for closure #1 in LabeledToolbarItemGroupContent.body.getter, partial apply for closure #2 in LabeledToolbarItemGroupContent.body.getter, v2, v3, v4, v5, v9);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t closure #1 in LabeledToolbarItemGroupContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v9, v10, v11);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a4);
  return (*(v6 + 8))(v8, a2);
}

uint64_t closure #2 in LabeledToolbarItemGroupContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for LabeledToolbarItemGroupContent();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v15 + 52), a3, a5);
  static ViewBuilder.buildExpression<A>(_:)(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

_OWORD *initializeBufferWithCopyOfBuffer for ToolbarItemGroup(_OWORD *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 - ((-42 - v6) | v6) > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v11 = ~v6;
    if (*(a2 + 40) == 1)
    {
      v12 = *(a2 + 3);
      *(a1 + 24) = v12;
      v13 = a2;
      (**(v12 - 8))(a1);
      a2 = v13;
      *(v3 + 40) = 1;
    }

    else
    {
      v14 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v14;
      *(a1 + 25) = *(a2 + 25);
    }

    v15 = (v3 + v6 + 41) & v11;
    v16 = (a2 + v6 + 41) & v11;
    (*(v5 + 16))(v15, v16, v4);
    *(v15 + v7) = *(v16 + v7);
  }

  return v3;
}

_OWORD *initializeWithTake for ToolbarItemGroup(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  *(a1 + 25) = *(a2 + 25);
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 41) & ~v7;
  v9 = (a2 + v7 + 41) & ~v7;
  (*(v5 + 32))(v8, v9);
  *(*(v6 + 32) + v8) = *(*(v6 + 32) + v9);
  return a1;
}

_OWORD *assignWithTake for ToolbarItemGroup(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1);
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    *(a1 + 25) = *(a2 + 25);
  }

  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (a1 + v9 + 41) & ~v9;
  v11 = (a2 + v9 + 41) & ~v9;
  (*(v7 + 40))(v10, v11);
  *(*(v8 + 24) + v10) = *(*(v8 + 24) + v11);
  return a1;
}

void storeEnumTagSinglePayload for ToolbarItemGroup(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + ((v9 + 41) & ~v9) + 1;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v10 + ((v9 + 41) & ~v9) != -1)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_44:
              if (v14 == 2)
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
            if (v14 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v14)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v20 = &a1[v9 + 41] & ~v9;
  if (v7 < 0xFE)
  {
    *(v20 + v10) = a2 + 1;
  }

  else
  {
    v21 = *(v6 + 56);

    v21(v20);
  }
}

unint64_t lazy protocol witness table accessor for type WorldAlignmentBehavior.Storage and conformance WorldAlignmentBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type WorldAlignmentBehavior.Storage and conformance WorldAlignmentBehavior.Storage;
  if (!lazy protocol witness table cache variable for type WorldAlignmentBehavior.Storage and conformance WorldAlignmentBehavior.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorldAlignmentBehavior.Storage and conformance WorldAlignmentBehavior.Storage);
  }

  return result;
}

uint64_t static _FlipForRTLEffect._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type Child and conformance Child();
  Attribute.init<A>(body:value:flags:update:)();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

_BYTE *protocol witness for Rule.value.getter in conformance Child@<X0>(char *a1@<X8>)
{
  result = AGGraphGetValue();
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedInspector and conformance ResolvedInspector()
{
  result = lazy protocol witness table cache variable for type ResolvedInspector and conformance ResolvedInspector;
  if (!lazy protocol witness table cache variable for type ResolvedInspector and conformance ResolvedInspector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedInspector and conformance ResolvedInspector);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedInspector and conformance ResolvedInspector;
  if (!lazy protocol witness table cache variable for type ResolvedInspector and conformance ResolvedInspector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedInspector and conformance ResolvedInspector);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InspectorStyleModifier<AutomaticInspectorStyle> and conformance InspectorStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type InspectorStyleModifier<AutomaticInspectorStyle> and conformance InspectorStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type InspectorStyleModifier<AutomaticInspectorStyle> and conformance InspectorStyleModifier<A>)
  {
    type metadata accessor for InspectorStyleModifier<AutomaticInspectorStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorStyleModifier<AutomaticInspectorStyle> and conformance InspectorStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for InspectorStyleModifier<AutomaticInspectorStyle>()
{
  if (!lazy cache variable for type metadata for InspectorStyleModifier<AutomaticInspectorStyle>)
  {
    lazy protocol witness table accessor for type AutomaticInspectorStyle and conformance AutomaticInspectorStyle();
    v0 = type metadata accessor for InspectorStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InspectorStyleModifier<AutomaticInspectorStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticInspectorStyle and conformance AutomaticInspectorStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticInspectorStyle and conformance AutomaticInspectorStyle;
  if (!lazy protocol witness table cache variable for type AutomaticInspectorStyle and conformance AutomaticInspectorStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticInspectorStyle and conformance AutomaticInspectorStyle);
  }

  return result;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedInspector@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedInspector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedInspector and conformance ResolvedInspector();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedInspector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedInspector and conformance ResolvedInspector();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t InspectorStyleModifier.styleBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  (*(v8 + 24))(a1, a2, a3, v9, v8, v15);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = *(v11 + 8);
  v19(v13, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v19)(v17, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance InspectorStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance InspectorStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t instantiation function for generic protocol witness table for InspectorStyleConfiguration.InspectorContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent()
{
  result = lazy protocol witness table cache variable for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent;
  if (!lazy protocol witness table cache variable for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent;
  if (!lazy protocol witness table cache variable for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for InspectorStyleConfiguration.MainContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent()
{
  result = lazy protocol witness table cache variable for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent;
  if (!lazy protocol witness table cache variable for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent;
  if (!lazy protocol witness table cache variable for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent);
  }

  return result;
}

uint64_t static PinnedBarModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2)
{
  v2 = a2;
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2[3];
  v17 = a2[2];
  v18 = v3;
  v19 = a2[4];
  v20 = *(a2 + 20);
  v4 = a2[1];
  v15 = *a2;
  v16 = v4;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v6 = v2[3];
  v27 = v2[2];
  v28 = v6;
  v29 = v2[4];
  v30 = *(v2 + 20);
  v26 = v2[1];
  _ViewInputs.position.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type PinnedBarModifier.MakeOffset and conformance PinnedBarModifier.MakeOffset();
  LODWORD(v2) = Attribute.init<A>(body:value:flags:update:)();
  *(&v25 + 1) = __PAIR64__(HIDWORD(v18), OffsetAttribute2);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ModifiedContent<_OpacityEffect, PinnedBarEffect>();
  lazy protocol witness table accessor for type PinnedBarModifier.MakeEffect and conformance PinnedBarModifier.MakeEffect();
  Attribute.init<A>(body:value:flags:update:)();
  *&v25 = __PAIR64__(v2, OffsetAttribute2);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type PinnedBarModifier.MakeConfiguration and conformance PinnedBarModifier.MakeConfiguration();
  v7 = Attribute.init<A>(body:value:flags:update:)();
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  LOBYTE(v23[0]) = 1;
  outlined init with copy of _ViewInputs(&v15, &v25);
  lazy protocol witness table accessor for type IsInPinnedBar and conformance IsInPinnedBar();
  PropertyList.subscript.setter();
  LOBYTE(v25) = 1;
  PropertyList.subscript.setter();
  LODWORD(v25) = v7;
  lazy protocol witness table accessor for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input();
  PropertyList.subscript.setter();
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v22 = v14;
  v21[0] = v9;
  v21[1] = v10;
  outlined init with copy of _ViewInputs(v21, &v25);
  static ModifiedContent<>._makeView(modifier:inputs:body:)();
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v25 = v9;
  v26 = v10;
  return outlined destroy of _ViewInputs(&v25);
}

uint64_t PinnedBarModifier.MakeOffset.value.getter()
{
  Value = AGGraphGetValue();
  v1 = *(Value + 8);
  *&v19 = *Value;
  *(&v19 + 1) = v1;
  v2 = *(Value + 32);
  v20 = *(Value + 16);
  v21 = v2;

  ViewTransform.nearestScrollGeometry.getter();
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;

  if ((v18 & 1) == 0)
  {
    v4 = AGGraphGetValue();
    v5 = *(v4 + 8);
    *&v19 = *v4;
    *(&v19 + 1) = v5;
    v6 = *(v4 + 32);
    v20 = *(v4 + 16);
    v21 = v6;
    type metadata accessor for CGPoint(0);

    v7 = AGGraphGetValue();
    ViewTransform.appendPosition(_:)(*v7);
    AGGraphGetValue();
    v10.origin.x = 0.0;
    v10.origin.y = 0.0;
    v10.size.width = MEMORY[0x18D00B390]();
    v10.size.height = v8;
    static CoordinateSpace.scrollView.getter();
    v11 = v19;
    v12 = v20;
    v13 = v21;

    CGRect.convert(to:transform:)();

    outlined destroy of CoordinateSpace(&v9);
    if (*AGGraphGetValue())
    {
      v15 = v26;
      v16 = v27;
      v17 = v28;
      v11 = v22;
      v12 = v23;
      v13 = v24;
      v14 = v25;
      ScrollGeometry.containerSize.getter();
      CGRectGetMaxY(v10);
    }

    else
    {
      CGRectGetMinY(v10);
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PinnedBarModifier.MakeOffset@<X0>(void *a1@<X8>)
{
  result = PinnedBarModifier.MakeOffset.value.getter();
  *a1 = v3;
  return result;
}

double *protocol witness for Rule.value.getter in conformance PinnedBarModifier.MakeConfiguration@<X0>(_BYTE *a1@<X8>)
{
  v2 = *AGGraphGetValue();
  result = AGGraphGetValue();
  v4 = *result <= 0.1;
  *a1 = v2;
  a1[1] = v4;
  return result;
}

char *PinnedBarModifier.MakeEffect.value.getter@<X0>(uint64_t a1@<X8>)
{
  AGGraphGetValue();
  ViewSize.height.getter();
  v3 = v2 <= 0.0;
  v4 = 1.0;
  if (!v3)
  {
    AGGraphGetValue();
    ViewSize.height.getter();
    v6 = v5 + *AGGraphGetValue();
    AGGraphGetValue();
    ViewSize.height.getter();
    v4 = v6 / v7;
  }

  v8 = fmin(v4, 1.0);
  if (v8 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  result = AGGraphGetValue();
  v11 = *result;
  *a1 = v9;
  *(a1 + 8) = v11;
  return result;
}

uint64_t PinnedBarEffect.updatePlatformGroup(_:)(uint64_t a1, char a2)
{
  type metadata accessor for PinnedBarView();
  swift_unknownObjectRetain();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC7SwiftUI13PinnedBarView_edge;
    *(v3 + OBJC_IVAR____TtC7SwiftUI13PinnedBarView_edge) = a2 & 1;
    v6 = UIView.containingHostingScrollView.getter();
    if (v6)
    {
      v7 = v6;
      HostingScrollView.addPinnedView(_:edge:)(v4, *(v4 + v5));
    }
  }

  return swift_unknownObjectRelease();
}

id protocol witness for PlatformGroupFactory.makePlatformGroup() in conformance PinnedBarEffect()
{
  v1 = *v0;
  v2 = type metadata accessor for PinnedBarView();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC7SwiftUI13PinnedBarView_edge] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

unint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance PinnedBarEffect@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 40) = a1;
  result = lazy protocol witness table accessor for type PinnedBarEffect and conformance PinnedBarEffect();
  *(v6 + 48) = result;
  *(v6 + 16) = v5;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 12) = 3;
  return result;
}

id UIView.containingHostingScrollView.getter()
{
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HostingScrollView();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  result = [v0 superview];
  if (result)
  {
    v4 = result;
    v5 = UIView.containingHostingScrollView.getter();

    return v5;
  }

  return result;
}

void HostingScrollView.removePinnedView(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pinnedViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = v7;
    [v8 removeFromSuperview];
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, a1);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }
}

void HostingScrollView.addPinnedView(_:edge:)(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7SwiftUI17HostingScrollView_pinnedViews;
  swift_beginAccess();
  if (*(*&v2[v6] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v8 = objc_allocWithZone(type metadata accessor for PinnedBarPortalView());
    v9 = a1;
    v10 = PinnedBarPortalView.init(edge:sourceView:)(a2 & 1, v9);
    [v3 addSubview_];
    swift_beginAccess();
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *&v3[v6];
    *&v3[v6] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v9, isUniquelyReferenced_nonNull_native);
    *&v3[v6] = v13;
    swift_endAccess();
  }
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance PinnedBarConfiguration.Input@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static PinnedBarConfiguration.Input.defaultValue;
  return result;
}

uint64_t static PinnedBarElementModifier._makeView(modifier:inputs:body:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t *))
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 1);
  v5 = *a2;
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input();
  v6 = PropertyList.subscript.getter();
  if (v10 == *MEMORY[0x1E698D3F8])
  {
    v10 = v5;
    v7 = *v4;
    v12 = v4[1];
    v8 = v4[3];
    v13 = v4[2];
    v14[0] = v8;
    *(v14 + 12) = *(v4 + 60);
    v11 = v7;
    return a3(v6, &v10);
  }

  else
  {
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PinnedBarElementModifier.MakeEffect and conformance PinnedBarElementModifier.MakeEffect();
    Attribute.init<A>(body:value:flags:update:)();
    lazy protocol witness table accessor for type PinnedBarElementEffect and conformance PinnedBarElementEffect();
    return static RendererEffect.makeRendererEffect(effect:inputs:body:)();
  }
}

char *PinnedBarElementModifier.MakeEffect.value.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = *AGGraphGetValue();
  result = AGGraphGetValue();
  if (result[1] == 1)
  {
    type metadata accessor for BarMagicPocketStyle?();
    result = AGGraphGetValue();
    v4 = *result;
  }

  else
  {
    v4 = 3;
  }

  *a1 = v2;
  a1[1] = v4;
  return result;
}

id protocol witness for PlatformGroupFactory.makePlatformGroup() in conformance PinnedBarElementEffect()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for PinnedBarElementView();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_style;
  v4[OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_style] = 3;
  *&v4[OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_pocketInteraction] = 0;
  v4[OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_edge] = v1;
  v4[v5] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t protocol witness for PlatformGroupFactory.updatePlatformGroup(_:) in conformance PinnedBarElementEffect()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for PinnedBarElementView();
  swift_unknownObjectRetain();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_edge) = v1;
    *(v3 + OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_style) = v2;
    PinnedBarElementView.update()();
  }

  return swift_unknownObjectRelease();
}

unint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance PinnedBarElementEffect@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 40) = a1;
  result = lazy protocol witness table accessor for type PinnedBarElementEffect and conformance PinnedBarElementEffect();
  *(v7 + 48) = result;
  *(v7 + 16) = v5;
  *(v7 + 17) = v6;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 12) = 3;
  return result;
}

void PinnedBarElementView.update()()
{
  v1 = OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_style;
  v2 = v0[OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_style];
  v3 = OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_pocketInteraction;
  if (v2 == 3)
  {
    if (!*&v0[OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_pocketInteraction])
    {
      return;
    }
  }

  else
  {
    if (*&v0[OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_pocketInteraction])
    {
      return;
    }

    v5 = UIView.containingHostingScrollView.getter();
    if (v5)
    {
      v6 = v5;
      if (v0[OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_edge])
      {
        v7 = 4;
      }

      else
      {
        v7 = 1;
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithScrollView:v5 edge:v7 style:v2 > 1];
      [v0 addInteraction_];

      v4 = *&v0[v3];
      *&v0[v3] = v8;
      goto LABEL_11;
    }

    if (v0[v1] != 3)
    {
      return;
    }

    v3 = OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_pocketInteraction;
    if (!*&v0[OBJC_IVAR____TtC7SwiftUIP33_7D9C6F3671D8F0DED7A6FE0403BDEF6A20PinnedBarElementView_pocketInteraction])
    {
      return;
    }
  }

  [v0 removeInteraction_];
  v4 = *&v0[v3];
  *&v0[v3] = 0;
LABEL_11:
}

char *PinnedBarPortalView.init(edge:sourceView:)(char a1, void *a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC7SwiftUI19PinnedBarPortalView_containerInteraction] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI19PinnedBarPortalView_edge] = a1 & 1;
  if (a1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69DD648]) init];
  *&v2[OBJC_IVAR____TtC7SwiftUI19PinnedBarPortalView_portalView] = v6;
  swift_unknownObjectWeakAssign();
  v14.receiver = v2;
  v14.super_class = type metadata accessor for PinnedBarPortalView();
  v7 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = OBJC_IVAR____TtC7SwiftUI19PinnedBarPortalView_portalView;
  v9 = *&v7[OBJC_IVAR____TtC7SwiftUI19PinnedBarPortalView_portalView];
  v10 = v7;
  [v9 setSourceView_];
  [*&v7[v8] setMatchesPosition_];
  [*&v7[v8] setMatchesTransform_];
  [*&v7[v8] setHidesSourceView_];
  [*&v7[v8] setMatchesAlpha_];
  [*&v7[v8] setForwardsClientHitTestingToSourceView_];
  [v10 addSubview_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DD6C0]) initWithEdge_];
  [v10 addInteraction_];

  v12 = *&v10[OBJC_IVAR____TtC7SwiftUI19PinnedBarPortalView_containerInteraction];
  *&v10[OBJC_IVAR____TtC7SwiftUI19PinnedBarPortalView_containerInteraction] = v11;

  return v10;
}

id PinnedBarView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void type metadata accessor for BarMagicPocketStyle?()
{
  if (!lazy cache variable for type metadata for BarMagicPocketStyle?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BarMagicPocketStyle?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input()
{
  result = lazy protocol witness table cache variable for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input;
  if (!lazy protocol witness table cache variable for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input;
  if (!lazy protocol witness table cache variable for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarConfiguration.Input and conformance PinnedBarConfiguration.Input);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PinnedBarElementModifier.MakeEffect and conformance PinnedBarElementModifier.MakeEffect()
{
  result = lazy protocol witness table cache variable for type PinnedBarElementModifier.MakeEffect and conformance PinnedBarElementModifier.MakeEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarElementModifier.MakeEffect and conformance PinnedBarElementModifier.MakeEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarElementModifier.MakeEffect and conformance PinnedBarElementModifier.MakeEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PinnedBarElementEffect and conformance PinnedBarElementEffect()
{
  result = lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarElementEffect and conformance PinnedBarElementEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PinnedBarModifier.MakeOffset and conformance PinnedBarModifier.MakeOffset()
{
  result = lazy protocol witness table cache variable for type PinnedBarModifier.MakeOffset and conformance PinnedBarModifier.MakeOffset;
  if (!lazy protocol witness table cache variable for type PinnedBarModifier.MakeOffset and conformance PinnedBarModifier.MakeOffset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarModifier.MakeOffset and conformance PinnedBarModifier.MakeOffset);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_OpacityEffect, PinnedBarEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_OpacityEffect, PinnedBarEffect>)
  {
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_OpacityEffect, PinnedBarEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PinnedBarModifier.MakeEffect and conformance PinnedBarModifier.MakeEffect()
{
  result = lazy protocol witness table cache variable for type PinnedBarModifier.MakeEffect and conformance PinnedBarModifier.MakeEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarModifier.MakeEffect and conformance PinnedBarModifier.MakeEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarModifier.MakeEffect and conformance PinnedBarModifier.MakeEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PinnedBarModifier.MakeConfiguration and conformance PinnedBarModifier.MakeConfiguration()
{
  result = lazy protocol witness table cache variable for type PinnedBarModifier.MakeConfiguration and conformance PinnedBarModifier.MakeConfiguration;
  if (!lazy protocol witness table cache variable for type PinnedBarModifier.MakeConfiguration and conformance PinnedBarModifier.MakeConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarModifier.MakeConfiguration and conformance PinnedBarModifier.MakeConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsInPinnedBar and conformance IsInPinnedBar()
{
  result = lazy protocol witness table cache variable for type IsInPinnedBar and conformance IsInPinnedBar;
  if (!lazy protocol witness table cache variable for type IsInPinnedBar and conformance IsInPinnedBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInPinnedBar and conformance IsInPinnedBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInPinnedBar and conformance IsInPinnedBar;
  if (!lazy protocol witness table cache variable for type IsInPinnedBar and conformance IsInPinnedBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInPinnedBar and conformance IsInPinnedBar);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PinnedBarConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for PinnedBarElementModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t lazy protocol witness table accessor for type PinnedBarEffect and conformance PinnedBarEffect()
{
  result = lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect;
  if (!lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PinnedBarEffect and conformance PinnedBarEffect);
  }

  return result;
}

uint64_t OpenDocumentAction.callAsFunction(at:)()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](OpenWindowAction.callAsFunction(id:destination:), v1, v0);
}

void NewDocumentAction.callAsFunction<A>(_:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  NewDocumentAction.callAsFunction<A>(_:)();
}

uint64_t initializeBufferWithCopyOfBuffer for OpenDocumentAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for OpenDocumentAction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of SceneList.Namespace(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for OpenDocumentAction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of SceneList.Namespace(v4, v5, v6);
  return a1;
}

id @objc UIApplication._swiftui_effectiveSceneConfiguration(connectingConfiguration:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = specialized UIApplication._swiftui_effectiveSceneConfiguration(connectingConfiguration:)(v4);

  return v6;
}

id specialized UIApplication._swiftui_effectiveSceneConfiguration(connectingConfiguration:)(void *a1)
{
  type metadata accessor for Logger?();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 delegateClass];
  if (result)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = ObjCClassMetadata == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }

    else
    {
      v10 = v8;
      static Log.openScene.getter();
      v11 = type metadata accessor for Logger();
      v12 = *(v11 - 8);
      if ((*(*(v11 - 8) + 48))(v5, 1, v11) == 1)
      {
        outlined destroy of Logger?(v5);
      }

      else
      {
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v31 = v15;
          v32 = swift_slowAlloc();
          v33[0] = v32;
          *v15 = 136315138;
          v16 = _typeName(_:qualified:)();
          v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v33);

          v19 = v31;
          *(v31 + 1) = v18;
          v20 = v14;
          v21 = v19;
          _os_log_impl(&dword_18BD4A000, v13, v20, "Registering %s for bridged scene configuration and returning the updated configuration", v19, 0xCu);
          v22 = v32;
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x18D0110E0](v22, -1, -1);
          MEMORY[0x18D0110E0](v21, -1, -1);
        }

        (*(v12 + 8))(v5, v11);
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      BridgedSceneCoordinator.register<A>(_:)(ObjCClassMetadata, ObjCClassMetadata, v10);
      swift_endAccess();
      v23 = static UIHostingSceneDelegate.bridgingID.getter();
      v25 = v24;
      type metadata accessor for AppSceneDelegate();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = MEMORY[0x18D00C850](v23, v25);

      v28 = swift_getObjCClassFromMetadata();
      v29 = [objc_opt_self() _configurationFromConfiguration_hostClass_bridgingID_sceneDelegateWrapper_];

      return v29;
    }
  }

  return result;
}

uint64_t type metadata completion function for FormVStack()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for FormVStack(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-18 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    (*(v4 + 16))((a1 + v5 + 17) & ~v5, (a2 + v5 + 17) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

uint64_t initializeWithCopy for FormVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((*(v4 + 80) + 17 + a1) & ~*(v4 + 80), (*(v4 + 80) + 17 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithCopy for FormVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 24))((*(v5 + 80) + 17 + a1) & ~*(v5 + 80), (*(v5 + 80) + 17 + a2) & ~*(v5 + 80));
  return a1;
}

uint64_t initializeWithTake for FormVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 17 + a1) & ~*(v4 + 80), (*(v4 + 80) + 17 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for FormVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 40))((*(v5 + 80) + 17 + a1) & ~*(v5 + 80), (*(v5 + 80) + 17 + a2) & ~*(v5 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for FormVStack(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
  }

  v8 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
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
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
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

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for FormVStack(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 17) & ~v8) + *(v6 + 64);
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
  v19 = &a1[v8 + 17] & ~v8;

  v18(v19);
}

uint64_t static FormVStack._makeView(view:inputs:)()
{
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for FormVStack();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static FormVStack._makeView(view:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for FormVStack();
  v6 = type metadata accessor for _VariadicView.Tree();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance FormVStack<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance _FormVStackLayout(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type _FormVStackLayout and conformance _FormVStackLayout();

  return MEMORY[0x1EEDE4B10](a1, a2, v4);
}

uint64_t protocol witness for Layout.updateCache(_:subviews:) in conformance _FormVStackLayout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type _FormVStackLayout and conformance _FormVStackLayout();

  return MEMORY[0x1EEDE4AF0](a1, a2, a3, v6);
}

uint64_t protocol witness for Layout.spacing(subviews:cache:) in conformance _FormVStackLayout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type _FormVStackLayout and conformance _FormVStackLayout();

  return MEMORY[0x1EEDE4B08](a1, a2, a3, v6);
}

uint64_t protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance _FormVStackLayout(uint64_t a1)
{
  lazy protocol witness table accessor for type _FormVStackLayout and conformance _FormVStackLayout();

  return MEMORY[0x1EEDE4AF8](a1);
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance _FormVStackLayout(uint64_t a1, double a2, double a3, double a4, double a5)
{
  lazy protocol witness table accessor for type _FormVStackLayout and conformance _FormVStackLayout();
  v10.n128_f64[0] = a2;
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;
  v13.n128_f64[0] = a5;

  return MEMORY[0x1EEDE4B00](a1, v10, v11, v12, v13);
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance _FormVStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance _FormVStackLayout(a1, a2, a9, a10, a11, a12, a3, a4, a5, a6, a7, a8, a13, MEMORY[0x1E6981A10]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance _FormVStackLayout(a1, a2, a9, a10, a11, a12, a3, a4, a5, a6, a7, a8, a13, MEMORY[0x1E6981A18]);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance _FormVStackLayout(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v9;
  v13[4] = *(a2 + 64);
  v14 = *(a2 + 80);
  v10 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v10;
  v15 = v8;
  v11 = lazy protocol witness table accessor for type _FormVStackLayout and conformance _FormVStackLayout();
  return (*(v11 + 88))(&v15, v13, a3, a4, a5, v11);
}

unint64_t instantiation function for generic protocol witness table for _FormVStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _FormVStackLayout and conformance _FormVStackLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _FormVStackLayout and conformance _FormVStackLayout()
{
  result = lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout;
  if (!lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout;
  if (!lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout;
  if (!lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout;
  if (!lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout;
  if (!lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _FormVStackLayout and conformance _FormVStackLayout);
  }

  return result;
}

uint64_t protocol witness for static _VariadicView_ImplicitRoot.implicitRoot.getter in conformance _FormVStackLayout@<X0>(uint64_t a1@<X8>)
{
  result = static HorizontalAlignment.center.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t protocol witness for static _VariadicView_AnyImplicitRoot.visitType<A>(visitor:) in conformance _FormVStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type _FormVStackLayout and conformance _FormVStackLayout();

  return MEMORY[0x1EEDE2308](a1, a4, a2, v8, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedTextEditorStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_1(&lazy protocol witness table cache variable for type ResolvedTextEditorStyle and conformance ResolvedTextEditorStyle, type metadata accessor for ResolvedTextEditorStyle);

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedTextEditorStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_1(&lazy protocol witness table cache variable for type ResolvedTextEditorStyle and conformance ResolvedTextEditorStyle, type metadata accessor for ResolvedTextEditorStyle);

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t TextEditorStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v12, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TextEditorStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TextEditorStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t EnvironmentValues.textEditorStyle.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey>, &type metadata for EnvironmentValues.TextEditorStyleKey, &protocol witness table for EnvironmentValues.TextEditorStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey>, &type metadata for EnvironmentValues.TextEditorStyleKey, &protocol witness table for EnvironmentValues.TextEditorStyleKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t View.textEditorStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextEditorStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

void type metadata accessor for (Binding<String>, Binding<TextSelection?>?)()
{
  if (!lazy cache variable for type metadata for (Binding<String>, Binding<TextSelection?>?))
  {
    type metadata accessor for Binding<String>();
    type metadata accessor for Binding<TextSelection?>?(255, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Binding<String>, Binding<TextSelection?>?));
    }
  }
}

void type metadata accessor for RangeSet<AttributedString.Index>()
{
  if (!lazy cache variable for type metadata for RangeSet<AttributedString.Index>)
  {
    type metadata accessor for AttributedString.Index();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_1(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v0 = type metadata accessor for RangeSet();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>);
    }
  }
}

uint64_t outlined destroy of TextEditor.Storage(uint64_t a1)
{
  v2 = type metadata accessor for TextEditor.Storage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TextEditorStyleConfiguration(uint64_t *a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for TextEditor.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v8 = *(v7 + 32);
      v9 = type metadata accessor for AttributedString();
      v10 = *(*(v9 - 8) + 16);

      v10(a1 + v8, a2 + v8, v9);
      v11 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v12 = (a1 + v11);
      v13 = (a2 + v11);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v15 = v14;
      v16 = *(v14 - 8);
      if ((*(v16 + 48))(v13, 1, v14))
      {
        type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v12, v13, *(*(v17 - 8) + 64));
      }

      else
      {
        v59 = v12;
        v29 = v13[1];
        *v12 = *v13;
        v12[1] = v29;
        v30 = *(v15 + 32);
        __dst = v12 + v30;
        v31 = v13 + v30;
        v32 = type metadata accessor for AttributedTextSelection.Indices(0);
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);

        if (v34(v31, 1, v32))
        {
          type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v36 = __dst;
          memcpy(__dst, v31, *(*(v35 - 8) + 64));
        }

        else
        {
          v36 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v48 = v47;
          }

          else
          {
            v48 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v48 - 8) + 16))(__dst, v31);
          swift_storeEnumTagMultiPayload();
          (*(v33 + 56))(__dst, 0, 1, v32);
        }

        v51 = type metadata accessor for AttributedTextSelection(0);
        v52 = *(v51 + 20);
        v53 = type metadata accessor for AttributeContainer();
        v54 = *(v53 - 8);
        if ((*(v54 + 48))(&v31[v52], 1, v53))
        {
          v55 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v36[v52], &v31[v52], *(*(v55 - 8) + 64));
        }

        else
        {
          (*(v54 + 16))(&v36[v52], &v31[v52], v53);
          (*(v54 + 56))(&v36[v52], 0, 1, v53);
        }

        v36[*(v51 + 24)] = v31[*(v51 + 24)];
        (*(v16 + 56))(v59, 0, 1, v15);
      }
    }

    else
    {
      v19 = a2[3];
      a1[2] = a2[2];
      a1[3] = v19;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v21 = *(v20 + 48);
      v22 = (a1 + v21);
      v23 = (a2 + v21);
      type metadata accessor for Binding<TextSelection?>(0);
      v25 = v24;
      v26 = *(v24 - 1);
      v27 = *(v26 + 48);

      if (v27(v23, 1, v25))
      {
        type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
        memcpy(v22, v23, *(*(v28 - 8) + 64));
      }

      else
      {
        v37 = v23[1];
        *v22 = *v23;
        v22[1] = v37;
        __dsta = v25;
        v60 = v22;
        v38 = v25[8];
        v39 = v22 + v38;
        v40 = v23 + v38;
        v41 = type metadata accessor for TextSelection(0);
        v42 = *(v41 - 8);
        v43 = *(v42 + 48);

        if (v43(v40, 1, v41))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v39, v40, *(*(v44 - 8) + 64));
          v46 = __dsta;
          v45 = v60;
        }

        else
        {
          v49 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v50 - 8) + 16))(v39, v40, v50);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v39, v40, *(*(v49 - 8) + 64));
          }

          v46 = __dsta;
          v45 = v60;
          v39[*(v41 + 20)] = v40[*(v41 + 20)];
          (*(v42 + 56))(v39, 0, 1, v41);
        }

        (*(v26 + 56))(v45, 0, 1, v46);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for TextEditorStyleConfiguration(uint64_t a1)
{
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v14 = a1 + *(v13 + 48);
    type metadata accessor for Binding<TextSelection?>(0);
    v16 = v15;
    result = (*(*(v15 - 8) + 48))(v14, 1, v15);
    if (result)
    {
      return result;
    }

    v17 = *(v16 + 32);
    v18 = type metadata accessor for TextSelection(0);
    result = (*(*(v18 - 8) + 48))(v14 + v17, 1, v18);
    if (result)
    {
      return result;
    }

    type metadata accessor for TextSelection.Indices(0);
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      return result;
    }

    type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    v20 = v19;
    v21 = *(*(v19 - 8) + 8);
    v22 = v14 + v17;
    goto LABEL_15;
  }

  type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a1 + *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v8 = v7;
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {

    v10 = v6 + *(v8 + 32);
    v11 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>();
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 8))(v10, v12);
    }

    v23 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v24 = type metadata accessor for AttributeContainer();
    v25 = *(v24 - 8);
    result = (*(v25 + 48))(v10 + v23, 1, v24);
    if (!result)
    {
      v21 = *(v25 + 8);
      v22 = v10 + v23;
      v20 = v24;
LABEL_15:

      return v21(v22, v20);
    }
  }

  return result;
}

char *initializeWithCopy for TextEditorStyleConfiguration(char *a1, char *a2)
{
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 16);

    v9(&a1[v7], &a2[v7], v8);
    v10 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v11 = &a1[v10];
    v12 = &a2[v10];
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v14 = v13;
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v12, 1, v13))
    {
      type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v11, v12, *(*(v16 - 8) + 64));
    }

    else
    {
      v54 = v11;
      v27 = *(v12 + 1);
      *v11 = *v12;
      *(v11 + 1) = v27;
      v28 = *(v14 + 32);
      __dst = &v11[v28];
      v29 = &v12[v28];
      v30 = type metadata accessor for AttributedTextSelection.Indices(0);
      v31 = *(v30 - 8);
      v32 = *(v31 + 48);

      if (v32(v29, 1, v30))
      {
        type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        v34 = __dst;
        memcpy(__dst, v29, *(*(v33 - 8) + 64));
      }

      else
      {
        v34 = __dst;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v43 = v42;
        }

        else
        {
          v43 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v43 - 8) + 16))(__dst, v29);
        swift_storeEnumTagMultiPayload();
        (*(v31 + 56))(__dst, 0, 1, v30);
      }

      v46 = type metadata accessor for AttributedTextSelection(0);
      v47 = *(v46 + 20);
      v48 = type metadata accessor for AttributeContainer();
      v49 = *(v48 - 8);
      if ((*(v49 + 48))(&v29[v47], 1, v48))
      {
        v50 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v34[v47], &v29[v47], *(*(v50 - 8) + 64));
      }

      else
      {
        (*(v49 + 16))(&v34[v47], &v29[v47], v48);
        (*(v49 + 56))(&v34[v47], 0, 1, v48);
      }

      v34[*(v46 + 24)] = v29[*(v46 + 24)];
      (*(v15 + 56))(v54, 0, 1, v14);
    }
  }

  else
  {
    v17 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v17;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v19 = *(v18 + 48);
    v20 = &a1[v19];
    v21 = &a2[v19];
    type metadata accessor for Binding<TextSelection?>(0);
    v23 = v22;
    v24 = *(v22 - 8);
    v25 = *(v24 + 48);

    if (v25(v21, 1, v23))
    {
      type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
      memcpy(v20, v21, *(*(v26 - 8) + 64));
    }

    else
    {
      v35 = *(v21 + 1);
      *v20 = *v21;
      *(v20 + 1) = v35;
      v36 = *(v23 + 32);
      __dsta = &v20[v36];
      v55 = v20;
      v37 = &v21[v36];
      v38 = type metadata accessor for TextSelection(0);
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);

      if (v40(v37, 1, v38))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dsta, v37, *(*(v41 - 8) + 64));
      }

      else
      {
        v44 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v45 - 8) + 16))(__dsta, v37, v45);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dsta, v37, *(*(v44 - 8) + 64));
        }

        __dsta[*(v38 + 20)] = v37[*(v38 + 20)];
        (*(v39 + 56))(__dsta, 0, 1, v38);
      }

      (*(v24 + 56))(v55, 0, 1, v23);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for TextEditorStyleConfiguration(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of TextEditor.Storage(a1);
    type metadata accessor for TextEditor.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      v8 = *(*(v7 - 8) + 16);

      v8(&a1[v6], &a2[v6], v7);
      v9 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v10 = &a1[v9];
      v11 = &a2[v9];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v13 = v12;
      v14 = *(v12 - 8);
      if ((*(v14 + 48))(v11, 1, v12))
      {
        type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v10, v11, *(*(v15 - 8) + 64));
      }

      else
      {
        v50 = v10;
        *v10 = *v11;
        *(v10 + 1) = *(v11 + 1);
        v25 = *(v13 + 32);
        __dst = &v10[v25];
        v26 = &v11[v25];
        v27 = type metadata accessor for AttributedTextSelection.Indices(0);
        v28 = *(v27 - 8);
        v29 = *(v28 + 48);

        if (v29(v26, 1, v27))
        {
          type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v31 = __dst;
          memcpy(__dst, v26, *(*(v30 - 8) + 64));
        }

        else
        {
          v31 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 16))(__dst, v26);
          swift_storeEnumTagMultiPayload();
          (*(v28 + 56))(__dst, 0, 1, v27);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v26[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v31[v43], &v26[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 16))(&v31[v43], &v26[v43], v44);
          (*(v45 + 56))(&v31[v43], 0, 1, v44);
        }

        v31[*(v42 + 24)] = v26[*(v42 + 24)];
        (*(v14 + 56))(v50, 0, 1, v13);
      }
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v17 = *(v16 + 48);
      v18 = &a1[v17];
      v19 = &a2[v17];
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      v23 = *(v22 + 48);

      if (v23(v19, 1, v21))
      {
        type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
        memcpy(v18, v19, *(*(v24 - 8) + 64));
      }

      else
      {
        *v18 = *v19;
        *(v18 + 1) = *(v19 + 1);
        v32 = *(v21 + 32);
        __dsta = &v18[v32];
        v51 = v18;
        v33 = &v19[v32];
        v34 = type metadata accessor for TextSelection(0);
        v35 = *(v34 - 8);
        v36 = *(v35 + 48);

        if (v36(v33, 1, v34))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(__dsta, v33, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v41 - 8) + 16))(__dsta, v33, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(__dsta, v33, *(*(v40 - 8) + 64));
          }

          __dsta[*(v34 + 20)] = v33[*(v34 + 20)];
          (*(v35 + 56))(__dsta, 0, 1, v34);
        }

        (*(v22 + 56))(v51, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for TextEditorStyleConfiguration(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextEditor.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v6 = *(v5 + 32);
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
    v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v10, 1, v11))
    {
      type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      v24 = v10[1];
      *v9 = *v10;
      v9[1] = v24;
      v25 = *(v12 + 32);
      v26 = v9 + v25;
      v27 = v10 + v25;
      v28 = type metadata accessor for AttributedTextSelection.Indices(0);
      v29 = *(v28 - 8);
      v49 = v26;
      if ((*(v29 + 48))(v27, 1, v28))
      {
        type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        memcpy(v26, v27, *(*(v30 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v39 = v38;
        }

        else
        {
          v39 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v39 - 8) + 32))(v26, v27);
        swift_storeEnumTagMultiPayload();
        (*(v29 + 56))(v26, 0, 1, v28);
      }

      v42 = type metadata accessor for AttributedTextSelection(0);
      v43 = *(v42 + 20);
      v44 = type metadata accessor for AttributeContainer();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(&v27[v43], 1, v44))
      {
        v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v47 = v49;
        memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
      }

      else
      {
        (*(v45 + 32))(&v49[v43], &v27[v43], v44);
        (*(v45 + 56))(&v49[v43], 0, 1, v44);
        v47 = v49;
      }

      v47[*(v42 + 24)] = v27[*(v42 + 24)];
      (*(v13 + 56))(v9, 0, 1, v12);
    }
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v17 = *(v16 + 48);
    v18 = (a1 + v17);
    v19 = (a2 + v17);
    type metadata accessor for Binding<TextSelection?>(0);
    v21 = v20;
    v22 = *(v20 - 8);
    if ((*(v22 + 48))(v19, 1, v20))
    {
      type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      v31 = v19[1];
      *v18 = *v19;
      v18[1] = v31;
      v32 = *(v21 + 32);
      v33 = v18 + v32;
      v34 = v19 + v32;
      v35 = type metadata accessor for TextSelection(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v34, 1, v35))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v33, v34, *(*(v37 - 8) + 64));
      }

      else
      {
        v40 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v41 - 8) + 32))(v33, v34, v41);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v33, v34, *(*(v40 - 8) + 64));
        }

        v33[*(v35 + 20)] = v34[*(v35 + 20)];
        (*(v36 + 56))(v33, 0, 1, v35);
      }

      (*(v22 + 56))(v18, 0, 1, v21);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for TextEditorStyleConfiguration(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of TextEditor.Storage(a1);
    type metadata accessor for TextEditor.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
      v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v9 = (a1 + v8);
      v10 = (a2 + v8);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v12 = v11;
      v13 = *(v11 - 8);
      if ((*(v13 + 48))(v10, 1, v11))
      {
        type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v9, v10, *(*(v14 - 8) + 64));
      }

      else
      {
        v24 = v10[1];
        *v9 = *v10;
        v9[1] = v24;
        v25 = *(v12 + 32);
        v26 = v9 + v25;
        v27 = v10 + v25;
        v28 = type metadata accessor for AttributedTextSelection.Indices(0);
        v29 = *(v28 - 8);
        v49 = v26;
        if ((*(v29 + 48))(v27, 1, v28))
        {
          type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          memcpy(v26, v27, *(*(v30 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 32))(v26, v27);
          swift_storeEnumTagMultiPayload();
          (*(v29 + 56))(v26, 0, 1, v28);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v27[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          v47 = v49;
          memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 32))(&v49[v43], &v27[v43], v44);
          (*(v45 + 56))(&v49[v43], 0, 1, v44);
          v47 = v49;
        }

        v47[*(v42 + 24)] = v27[*(v42 + 24)];
        (*(v13 + 56))(v9, 0, 1, v12);
      }
    }

    else
    {
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v17 = *(v16 + 48);
      v18 = (a1 + v17);
      v19 = (a2 + v17);
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      if ((*(v22 + 48))(v19, 1, v20))
      {
        type metadata accessor for Binding<TextSelection?>?(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
        memcpy(v18, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v31 = v19[1];
        *v18 = *v19;
        v18[1] = v31;
        v32 = *(v21 + 32);
        v33 = v18 + v32;
        v34 = v19 + v32;
        v35 = type metadata accessor for TextSelection(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v34, 1, v35))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v33, v34, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v41 - 8) + 32))(v33, v34, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v33, v34, *(*(v40 - 8) + 64));
          }

          v33[*(v35 + 20)] = v34[*(v35 + 20)];
          (*(v36 + 56))(v33, 0, 1, v35);
        }

        (*(v22 + 56))(v18, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata completion function for TextEditorStyleConfiguration()
{
  result = type metadata accessor for TextEditor.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for TextEditorStyleModifier<AutomaticTextEditorStyle>()
{
  if (!lazy cache variable for type metadata for TextEditorStyleModifier<AutomaticTextEditorStyle>)
  {
    lazy protocol witness table accessor for type AutomaticTextEditorStyle and conformance AutomaticTextEditorStyle();
    v0 = type metadata accessor for TextEditorStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TextEditorStyleModifier<AutomaticTextEditorStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticTextEditorStyle and conformance AutomaticTextEditorStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticTextEditorStyle and conformance AutomaticTextEditorStyle;
  if (!lazy protocol witness table cache variable for type AutomaticTextEditorStyle and conformance AutomaticTextEditorStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticTextEditorStyle and conformance AutomaticTextEditorStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextEditorBorderStyle and conformance TextEditorBorderStyle()
{
  result = lazy protocol witness table cache variable for type TextEditorBorderStyle and conformance TextEditorBorderStyle;
  if (!lazy protocol witness table cache variable for type TextEditorBorderStyle and conformance TextEditorBorderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorBorderStyle and conformance TextEditorBorderStyle);
  }

  return result;
}

uint64_t outlined init with copy of ResolvedTextEditorStyle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for RangeSet<String.Index>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey>, &type metadata for EnvironmentValues.TextEditorStyleKey, &protocol witness table for EnvironmentValues.TextEditorStyleKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextEditorStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t TextEditor.init(text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 10) = 0;
  v10 = (a5 + *(type metadata accessor for TextEditor(0) + 20));
  type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
  v12 = *(v11 + 48);
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
  type metadata accessor for TextEditor.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TextEditor.init(text:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 10) = 0;
  v12 = (a6 + *(type metadata accessor for TextEditor(0) + 20));
  type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
  v14 = *(v13 + 48);
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;
  outlined init with take of Binding<TextSelection?>(a5, &v12[v14], type metadata accessor for Binding<TextSelection?>);
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v15 - 8) + 56))(&v12[v14], 0, 1, v15);
  type metadata accessor for TextEditor.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

{
  outlined destroy of Binding<TextSelection?>?(a5, type metadata accessor for Binding<TextSelection>);
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 10) = 0;
  v11 = (a6 + *(type metadata accessor for TextEditor(0) + 20));
  type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
  v13 = *(v12 + 48);
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  *(v11 + 3) = a4;
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
  type metadata accessor for TextEditor.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TextEditor.init(text:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 10) = 0;
  v6 = a3 + *(type metadata accessor for TextEditor(0) + 20);
  outlined init with take of Binding<AttributedString>(a1, v6, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v7 = type metadata accessor for TextEditor.Storage.AttributedText(0);
  outlined init with take of Binding<AttributedString>(a2, v6 + *(v7 + 20), &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
  type metadata accessor for TextEditor.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t TextEditor.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 10) = 0;
  v4 = type metadata accessor for TextEditor(0);
  return outlined init with take of Binding<TextSelection?>(a1, a2 + *(v4 + 20), type metadata accessor for TextEditor.Storage);
}

uint64_t TextEditor.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIKitRichTextEditor(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TextEditor.Storage(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for TextEditor(0) + 20);
  outlined init with copy of TextEditor.Storage(v1 + v12, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Binding<TextSelection?>(v11, v5, type metadata accessor for TextEditor.Storage.AttributedText);
    outlined init with take of Binding<TextSelection?>(v5, a1, type metadata accessor for UIKitRichTextEditor);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>, UIKitRichTextEditor>.Storage, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>, type metadata accessor for UIKitRichTextEditor, MEMORY[0x1E697F948]);
    return swift_storeEnumTagMultiPayload();
  }

  outlined init with copy of TextEditor.Storage(v1 + v12, v8);
  v14 = static Edge.Set.all.getter();
  type metadata accessor for ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>(0);
  v16 = &v8[*(v15 + 36)];
  *v16 = 1;
  v16[8] = v14;
  v17 = static Alignment.center.getter();
  v19 = v18;
  v20 = specialized Environment.wrappedValue.getter(*v1, *(v1 + 8) | (*(v1 + 10) << 16));
  v21 = v20;
  if (v22 == 2)
  {
    v31[0] = static Color.clear.getter();
    v23 = AnyShapeStyle.init<A>(_:)();

    v21 = v23;
  }

  else if (!v20)
  {
    v25 = 0;
    v24 = 0;
    v26 = 0;
    goto LABEL_7;
  }

  v24 = -1;
  v25 = 256;
  v26 = static Edge.Set.all.getter();
LABEL_7:
  type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
  v28 = *(v27 + 48);
  type metadata accessor for ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>(0);
  v30 = &v8[*(v29 + 36)];
  *v30 = v21;
  *(v30 + 1) = v25;
  *(v30 + 2) = v24;
  v30[24] = v26;
  *(v30 + 4) = v17;
  *(v30 + 5) = v19;
  outlined init with take of Binding<TextSelection?>(v8, a1, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>, UIKitRichTextEditor>.Storage, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>, type metadata accessor for UIKitRichTextEditor, MEMORY[0x1E697F948]);
  swift_storeEnumTagMultiPayload();
  return outlined destroy of Binding<TextSelection?>?(&v11[v28], type metadata accessor for Binding<TextSelection?>?);
}

uint64_t key path getter for EnvironmentValues.scrollContentBackground : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6;
  return result;
}

uint64_t key path setter for EnvironmentValues.scrollContentBackground : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t outlined init with take of Binding<AttributedString>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>);
    }
  }
}

void type metadata accessor for _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>()
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?, type metadata accessor for ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?();
    v0 = type metadata accessor for _BackgroundModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>)
  {
    type metadata accessor for _ShapeView<Rectangle, AnyShapeStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>);
    }
  }
}

void type metadata accessor for _ShapeView<Rectangle, AnyShapeStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, AnyShapeStyle>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Rectangle, AnyShapeStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?, type metadata accessor for ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>();
    lazy protocol witness table accessor for type _ShapeView<Rectangle, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, AnyShapeStyle> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, AnyShapeStyle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of TextEditor.Storage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditor.Storage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Binding<TextSelection?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Binding<TextSelection?>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for TextEditor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v26 = *a2;
    *a1 = *a2;
    a1 = v26 + ((v4 + 16) & ~v4);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 10);
    v8 = *(a2 + 4);
    outlined copy of Environment<Color?>.Content(*a2, v8);
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 10) = v7;
    v10 = *(a3 + 20);
    v11 = (a1 + v10);
    v12 = a2 + v10;
    type metadata accessor for TextEditor.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = *(v12 + 1);
    *v11 = *v12;
    *(v11 + 1) = v14;
    v70 = v11;
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v16 = *(v15 + 32);
      v17 = type metadata accessor for AttributedString();
      v18 = *(*(v17 - 8) + 16);

      v18(&v70[v16], &v12[v16], v17);
      v19 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v20 = &v70[v19];
      v21 = &v12[v19];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v23 = v22;
      v24 = *(v22 - 8);
      if ((*(v24 + 48))(v21, 1, v22))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v20, v21, *(*(v25 - 8) + 64));
      }

      else
      {
        v68 = v20;
        v37 = *(v21 + 1);
        *v20 = *v21;
        *(v20 + 1) = v37;
        v38 = *(v23 + 32);
        __dst = &v20[v38];
        v39 = &v21[v38];
        v40 = type metadata accessor for AttributedTextSelection.Indices(0);
        v41 = *(v40 - 8);
        v42 = *(v41 + 48);

        if (v42(v39, 1, v40))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v44 = __dst;
          memcpy(__dst, v39, *(*(v43 - 8) + 64));
        }

        else
        {
          v44 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v56 = v55;
          }

          else
          {
            v56 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v56 - 8) + 16))(__dst, v39);
          swift_storeEnumTagMultiPayload();
          (*(v41 + 56))(__dst, 0, 1, v40);
        }

        v59 = type metadata accessor for AttributedTextSelection(0);
        v60 = *(v59 + 20);
        v61 = type metadata accessor for AttributeContainer();
        v62 = *(v61 - 8);
        if ((*(v62 + 48))(&v39[v60], 1, v61))
        {
          v63 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v44[v60], &v39[v60], *(*(v63 - 8) + 64));
        }

        else
        {
          (*(v62 + 16))(&v44[v60], &v39[v60], v61);
          (*(v62 + 56))(&v44[v60], 0, 1, v61);
        }

        v44[*(v59 + 24)] = v39[*(v59 + 24)];
        (*(v24 + 56))(v68, 0, 1, v23);
      }
    }

    else
    {
      v27 = *(v12 + 3);
      *(v11 + 2) = *(v12 + 2);
      *(v11 + 3) = v27;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v29 = *(v28 + 48);
      v30 = &v11[v29];
      v31 = &v12[v29];
      type metadata accessor for Binding<TextSelection?>(0);
      v33 = v32;
      v34 = *(v32 - 1);
      v35 = *(v34 + 48);

      if (v35(v31, 1, v33))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v30, v31, *(*(v36 - 8) + 64));
      }

      else
      {
        v45 = *(v31 + 1);
        *v30 = *v31;
        *(v30 + 1) = v45;
        __dsta = v33;
        v69 = v30;
        v46 = v33[8];
        v47 = &v30[v46];
        v48 = &v31[v46];
        v49 = type metadata accessor for TextSelection(0);
        v50 = *(v49 - 8);
        v51 = *(v50 + 48);

        if (v51(v48, 1, v49))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v47, v48, *(*(v52 - 8) + 64));
          v53 = v69;
          v54 = __dsta;
        }

        else
        {
          v57 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v58 - 8) + 16))(v47, v48, v58);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v47, v48, *(*(v57 - 8) + 64));
          }

          v64 = v47;
          v54 = __dsta;
          v53 = v69;
          v64[*(v49 + 20)] = v48[*(v49 + 20)];
          (*(v50 + 56))();
        }

        (*(v34 + 56))(v53, 0, 1, v54);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<Rectangle, AnyShapeStyle> and conformance _ShapeView<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t destroy for TextEditor(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Color?>.Content(*a1, *(a1 + 8));
  v4 = v3 + *(a2 + 20);
  type metadata accessor for TextEditor.Storage(0);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();

  if (v3 != 1)
  {

    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v16 = v4 + *(v15 + 48);
    type metadata accessor for Binding<TextSelection?>(0);
    v18 = v17;
    result = (*(*(v17 - 8) + 48))(v16, 1, v17);
    if (result)
    {
      return result;
    }

    v19 = *(v18 + 32);
    v20 = type metadata accessor for TextSelection(0);
    result = (*(*(v20 - 8) + 48))(v16 + v19, 1, v20);
    if (result)
    {
      return result;
    }

    type metadata accessor for TextSelection.Indices(0);
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      return result;
    }

    type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    v22 = v21;
    v23 = *(*(v21 - 8) + 8);
    v24 = v16 + v19;
    goto LABEL_15;
  }

  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v6 = *(v5 + 32);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = v4 + *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v10 = v9;
  result = (*(*(v9 - 8) + 48))(v8, 1, v9);
  if (!result)
  {

    v12 = v8 + *(v10 + 32);
    v13 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>();
      }

      else
      {
        v14 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v14 - 8) + 8))(v12, v14);
    }

    v25 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v26 = type metadata accessor for AttributeContainer();
    v27 = *(v26 - 8);
    result = (*(v27 + 48))(v12 + v25, 1, v26);
    if (!result)
    {
      v23 = *(v27 + 8);
      v24 = v12 + v25;
      v22 = v26;
LABEL_15:

      return v23(v24, v22);
    }
  }

  return result;
}

uint64_t initializeWithCopy for TextEditor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 10);
  v8 = *(a2 + 4);
  outlined copy of Environment<Color?>.Content(*a2, v8);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 10) = v7;
  v9 = *(a3 + 20);
  v68 = a1;
  v10 = (a1 + v9);
  v11 = a2 + v9;
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v13;
  if (EnumCaseMultiPayload == 1)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v15 = *(v14 + 32);
    v16 = type metadata accessor for AttributedString();
    v17 = *(*(v16 - 8) + 16);

    v17(&v10[v15], &v11[v15], v16);
    v18 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v19 = &v10[v18];
    v20 = &v11[v18];
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v22 = v21;
    v23 = *(v21 - 8);
    if ((*(v23 + 48))(v20, 1, v21))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v19, v20, *(*(v24 - 8) + 64));
    }

    else
    {
      v66 = v19;
      v35 = *(v20 + 1);
      *v19 = *v20;
      *(v19 + 1) = v35;
      v36 = *(v22 + 32);
      __dst = &v19[v36];
      v37 = &v20[v36];
      v38 = type metadata accessor for AttributedTextSelection.Indices(0);
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);

      if (v40(v37, 1, v38))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        v42 = __dst;
        memcpy(__dst, v37, *(*(v41 - 8) + 64));
      }

      else
      {
        v42 = __dst;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v54 = v53;
        }

        else
        {
          v54 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v54 - 8) + 16))(__dst, v37);
        swift_storeEnumTagMultiPayload();
        (*(v39 + 56))(__dst, 0, 1, v38);
      }

      v57 = type metadata accessor for AttributedTextSelection(0);
      v58 = *(v57 + 20);
      v59 = type metadata accessor for AttributeContainer();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(&v37[v58], 1, v59))
      {
        v61 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v42[v58], &v37[v58], *(*(v61 - 8) + 64));
      }

      else
      {
        (*(v60 + 16))(&v42[v58], &v37[v58], v59);
        (*(v60 + 56))(&v42[v58], 0, 1, v59);
      }

      v42[*(v57 + 24)] = v37[*(v57 + 24)];
      (*(v23 + 56))(v66, 0, 1, v22);
    }
  }

  else
  {
    v25 = *(v11 + 3);
    *(v10 + 2) = *(v11 + 2);
    *(v10 + 3) = v25;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v27 = *(v26 + 48);
    v28 = &v10[v27];
    v29 = &v11[v27];
    type metadata accessor for Binding<TextSelection?>(0);
    v31 = v30;
    v32 = *(v30 - 1);
    v33 = *(v32 + 48);

    if (v33(v29, 1, v31))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v28, v29, *(*(v34 - 8) + 64));
    }

    else
    {
      v43 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v43;
      __dsta = v31;
      v67 = v28;
      v44 = v31[8];
      v45 = &v28[v44];
      v46 = &v29[v44];
      v47 = type metadata accessor for TextSelection(0);
      v48 = *(v47 - 8);
      v49 = *(v48 + 48);

      if (v49(v46, 1, v47))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v45, v46, *(*(v50 - 8) + 64));
        v51 = v67;
        v52 = __dsta;
      }

      else
      {
        v55 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v56 - 8) + 16))(v45, v46, v56);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v45, v46, *(*(v55 - 8) + 64));
        }

        v62 = v45;
        v52 = __dsta;
        v51 = v67;
        v62[*(v47 + 20)] = v46[*(v47 + 20)];
        (*(v48 + 56))();
      }

      (*(v32 + 56))(v51, 0, 1, v52);
    }
  }

  swift_storeEnumTagMultiPayload();
  return v68;
}

uint64_t *assignWithCopy for TextEditor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 10);
  v8 = *(a2 + 4);
  outlined copy of Environment<Color?>.Content(*a2, v8);
  v9 = *a1;
  *a1 = v6;
  v10 = *(a1 + 4);
  *(a1 + 4) = v8;
  *(a1 + 10) = v7;
  outlined consume of Environment<Color?>.Content(v9, v10);
  if (a1 != a2)
  {
    v11 = *(a3 + 20);
    v12 = a1 + v11;
    v13 = a2 + v11;
    outlined destroy of Binding<TextSelection?>?(a1 + v11, type metadata accessor for TextEditor.Storage);
    type metadata accessor for TextEditor.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *v12 = *v13;
    *(v12 + 1) = *(v13 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v16 = *(v15 + 32);
      v17 = type metadata accessor for AttributedString();
      v18 = *(*(v17 - 8) + 16);

      v18(&v12[v16], &v13[v16], v17);
      v19 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v20 = &v12[v19];
      v21 = &v13[v19];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v23 = v22;
      v24 = *(v22 - 8);
      if ((*(v24 + 48))(v21, 1, v22))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v20, v21, *(*(v25 - 8) + 64));
      }

      else
      {
        v64 = v20;
        *v20 = *v21;
        *(v20 + 1) = *(v21 + 1);
        v35 = *(v23 + 32);
        __dst = &v20[v35];
        v36 = &v21[v35];
        v37 = type metadata accessor for AttributedTextSelection.Indices(0);
        v38 = *(v37 - 8);
        v39 = *(v38 + 48);

        if (v39(v36, 1, v37))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v41 = __dst;
          memcpy(__dst, v36, *(*(v40 - 8) + 64));
        }

        else
        {
          v41 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v52 = v51;
          }

          else
          {
            v52 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v52 - 8) + 16))(__dst, v36);
          swift_storeEnumTagMultiPayload();
          (*(v38 + 56))(__dst, 0, 1, v37);
        }

        v55 = type metadata accessor for AttributedTextSelection(0);
        v56 = *(v55 + 20);
        v57 = type metadata accessor for AttributeContainer();
        v58 = *(v57 - 8);
        if ((*(v58 + 48))(&v36[v56], 1, v57))
        {
          v59 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v41[v56], &v36[v56], *(*(v59 - 8) + 64));
        }

        else
        {
          (*(v58 + 16))(&v41[v56], &v36[v56], v57);
          (*(v58 + 56))(&v41[v56], 0, 1, v57);
        }

        v41[*(v55 + 24)] = v36[*(v55 + 24)];
        (*(v24 + 56))(v64, 0, 1, v23);
      }
    }

    else
    {
      *(v12 + 2) = *(v13 + 2);
      *(v12 + 3) = *(v13 + 3);
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v27 = *(v26 + 48);
      v28 = &v12[v27];
      v29 = &v13[v27];
      type metadata accessor for Binding<TextSelection?>(0);
      v31 = v30;
      v32 = *(v30 - 1);
      v33 = *(v32 + 48);

      if (v33(v29, 1, v31))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v28, v29, *(*(v34 - 8) + 64));
      }

      else
      {
        *v28 = *v29;
        *(v28 + 1) = *(v29 + 1);
        __dsta = v31;
        v65 = v28;
        v42 = v31[8];
        v43 = &v28[v42];
        v44 = &v29[v42];
        v45 = type metadata accessor for TextSelection(0);
        v46 = *(v45 - 8);
        v47 = *(v46 + 48);

        if (v47(v44, 1, v45))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v43, v44, *(*(v48 - 8) + 64));
          v49 = v65;
          v50 = __dsta;
        }

        else
        {
          v53 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v54 - 8) + 16))(v43, v44, v54);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v43, v44, *(*(v53 - 8) + 64));
          }

          v61 = v43;
          v50 = __dsta;
          v49 = v65;
          v61[*(v45 + 20)] = v44[*(v45 + 20)];
          (*(v46 + 56))();
        }

        (*(v32 + 56))(v49, 0, 1, v50);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for TextEditor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 7) = *(a2 + 7);
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  type metadata accessor for TextEditor.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(v6 + 8);
    *v5 = *v6;
    *(v5 + 8) = v7;
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v9 = *(v8 + 32);
    v10 = type metadata accessor for AttributedString();
    (*(*(v10 - 8) + 32))(v5 + v9, v6 + v9, v10);
    v11 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v12 = (v5 + v11);
    v13 = (v6 + v11);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v15 = v14;
    v16 = *(v14 - 8);
    if ((*(v16 + 48))(v13, 1, v14))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v12, v13, *(*(v17 - 8) + 64));
    }

    else
    {
      v27 = v13[1];
      *v12 = *v13;
      v12[1] = v27;
      v28 = *(v15 + 32);
      v29 = v12 + v28;
      v30 = v13 + v28;
      v31 = type metadata accessor for AttributedTextSelection.Indices(0);
      v32 = *(v31 - 8);
      v51 = v29;
      if ((*(v32 + 48))(v30, 1, v31))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        memcpy(v29, v30, *(*(v33 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v42 = v41;
        }

        else
        {
          v42 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v42 - 8) + 32))(v29, v30);
        swift_storeEnumTagMultiPayload();
        (*(v32 + 56))(v29, 0, 1, v31);
      }

      v44 = type metadata accessor for AttributedTextSelection(0);
      v45 = *(v44 + 20);
      v46 = type metadata accessor for AttributeContainer();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(&v30[v45], 1, v46))
      {
        v48 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v49 = v51;
        memcpy(&v51[v45], &v30[v45], *(*(v48 - 8) + 64));
      }

      else
      {
        (*(v47 + 32))(&v51[v45], &v30[v45], v46);
        (*(v47 + 56))(&v51[v45], 0, 1, v46);
        v49 = v51;
      }

      v49[*(v44 + 24)] = v30[*(v44 + 24)];
      (*(v16 + 56))(v12, 0, 1, v15);
    }
  }

  else
  {
    v18 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v18;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v20 = *(v19 + 48);
    v21 = (v5 + v20);
    v22 = (v6 + v20);
    type metadata accessor for Binding<TextSelection?>(0);
    v24 = v23;
    v25 = *(v23 - 8);
    if ((*(v25 + 48))(v22, 1, v23))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v21, v22, *(*(v26 - 8) + 64));
    }

    else
    {
      v34 = v22[1];
      *v21 = *v22;
      v21[1] = v34;
      v35 = *(v24 + 32);
      v36 = v21 + v35;
      v37 = v22 + v35;
      v38 = type metadata accessor for TextSelection(0);
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v37, 1, v38))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v36, v37, *(*(v40 - 8) + 64));
      }

      else
      {
        v52 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v43 - 8) + 32))(v36, v37, v43);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v36, v37, *(*(v52 - 8) + 64));
        }

        v36[*(v38 + 20)] = v37[*(v38 + 20)];
        (*(v39 + 56))(v36, 0, 1, v38);
      }

      (*(v25 + 56))(v21, 0, 1, v24);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *assignWithTake for TextEditor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 4);
  v7 = *(a2 + 10);
  v8 = *a1;
  *a1 = *a2;
  v9 = *(a1 + 4);
  *(a1 + 4) = v6;
  *(a1 + 10) = v7;
  outlined consume of Environment<Color?>.Content(v8, v9);
  if (a1 != a2)
  {
    v10 = *(a3 + 20);
    v11 = a1 + v10;
    v12 = a2 + v10;
    outlined destroy of Binding<TextSelection?>?(a1 + v10, type metadata accessor for TextEditor.Storage);
    type metadata accessor for TextEditor.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *(v12 + 8);
      *v11 = *v12;
      *(v11 + 8) = v13;
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v15 = *(v14 + 32);
      v16 = type metadata accessor for AttributedString();
      (*(*(v16 - 8) + 32))(v11 + v15, v12 + v15, v16);
      v17 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v18 = (v11 + v17);
      v19 = (v12 + v17);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      if ((*(v22 + 48))(v19, 1, v20))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v18, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v33 = v19[1];
        *v18 = *v19;
        v18[1] = v33;
        v34 = *(v21 + 32);
        v35 = v18 + v34;
        v36 = v19 + v34;
        v37 = type metadata accessor for AttributedTextSelection.Indices(0);
        v38 = *(v37 - 8);
        v57 = v35;
        if ((*(v38 + 48))(v36, 1, v37))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          memcpy(v35, v36, *(*(v39 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v48 = v47;
          }

          else
          {
            v48 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v48 - 8) + 32))(v35, v36);
          swift_storeEnumTagMultiPayload();
          (*(v38 + 56))(v35, 0, 1, v37);
        }

        v50 = type metadata accessor for AttributedTextSelection(0);
        v51 = *(v50 + 20);
        v52 = type metadata accessor for AttributeContainer();
        v53 = *(v52 - 8);
        if ((*(v53 + 48))(&v36[v51], 1, v52))
        {
          v54 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          v55 = v57;
          memcpy(&v57[v51], &v36[v51], *(*(v54 - 8) + 64));
        }

        else
        {
          (*(v53 + 32))(&v57[v51], &v36[v51], v52);
          (*(v53 + 56))(&v57[v51], 0, 1, v52);
          v55 = v57;
        }

        v55[*(v50 + 24)] = v36[*(v50 + 24)];
        (*(v22 + 56))(v18, 0, 1, v21);
      }
    }

    else
    {
      v24 = *(v12 + 16);
      *v11 = *v12;
      *(v11 + 16) = v24;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v26 = *(v25 + 48);
      v27 = (v11 + v26);
      v28 = (v12 + v26);
      type metadata accessor for Binding<TextSelection?>(0);
      v30 = v29;
      v31 = *(v29 - 8);
      if ((*(v31 + 48))(v28, 1, v29))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v27, v28, *(*(v32 - 8) + 64));
      }

      else
      {
        v40 = v28[1];
        *v27 = *v28;
        v27[1] = v40;
        v41 = *(v30 + 32);
        v42 = v27 + v41;
        v43 = v28 + v41;
        v44 = type metadata accessor for TextSelection(0);
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v43, 1, v44))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v42, v43, *(*(v46 - 8) + 64));
        }

        else
        {
          v58 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v49 - 8) + 32))(v42, v43, v49);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v42, v43, *(*(v58 - 8) + 64));
          }

          v42[*(v44 + 20)] = v43[*(v44 + 20)];
          (*(v45 + 56))(v42, 0, 1, v44);
        }

        (*(v31 + 56))(v27, 0, 1, v30);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata completion function for TextEditor()
{
  result = type metadata accessor for TextEditor.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>, UIKitRichTextEditor> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>, UIKitRichTextEditor> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>, UIKitRichTextEditor> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>, UIKitRichTextEditor>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>, type metadata accessor for UIKitRichTextEditor, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>, UIKitRichTextEditor> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<Rectangle, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesEditMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesEditMenuInteraction>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>, ViewInputFlagModifier<ProvidesEditMenuInteraction>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ShapeView<Rectangle, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>, _BackgroundModifier<ModifiedContent<_ShapeView<Rectangle, AnyShapeStyle>, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>>(255);
    lazy protocol witness table accessor for type _ShapeView<Rectangle, AnyShapeStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type ResolvedTextEditorStyle and conformance ResolvedTextEditorStyle, type metadata accessor for ResolvedTextEditorStyle);
    lazy protocol witness table accessor for type StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedTextEditorStyle, StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>();
    lazy protocol witness table accessor for type UseLegacySafeAreaPropagation and conformance UseLegacySafeAreaPropagation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<UseLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseLegacySafeAreaPropagation and conformance UseLegacySafeAreaPropagation()
{
  result = lazy protocol witness table cache variable for type UseLegacySafeAreaPropagation and conformance UseLegacySafeAreaPropagation;
  if (!lazy protocol witness table cache variable for type UseLegacySafeAreaPropagation and conformance UseLegacySafeAreaPropagation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseLegacySafeAreaPropagation and conformance UseLegacySafeAreaPropagation);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TextEditor.Storage.AttributedText(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    a1[1] = a2[1];
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v9 = *(v8 + 32);
    v10 = type metadata accessor for AttributedString();
    v11 = *(*(v10 - 8) + 16);

    v11(v6 + v9, a2 + v9, v10);
    v12 = *(a3 + 20);
    v13 = (v6 + v12);
    v14 = (a2 + v12);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v16 = v15;
    v17 = *(v15 - 8);
    if ((*(v17 + 48))(v14, 1, v15))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v13, v14, *(*(v18 - 8) + 64));
    }

    else
    {
      v19 = v14[1];
      *v13 = *v14;
      v13[1] = v19;
      v20 = *(v16 + 32);
      __dst = v13 + v20;
      v38 = v13;
      v21 = v14 + v20;
      v22 = type metadata accessor for AttributedTextSelection.Indices(0);
      v23 = *(v22 - 8);
      v24 = *(v23 + 48);

      if (v24(v21, 1, v22))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        v26 = __dst;
        memcpy(__dst, v21, *(*(v25 - 8) + 64));
        v27 = v38;
      }

      else
      {
        v28 = v23;
        v26 = __dst;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v30 = v29;
        }

        else
        {
          v30 = type metadata accessor for AttributedString.Index();
        }

        v27 = v38;
        (*(*(v30 - 8) + 16))(__dst, v21);
        swift_storeEnumTagMultiPayload();
        (*(v28 + 56))(__dst, 0, 1, v22);
      }

      v31 = type metadata accessor for AttributedTextSelection(0);
      v32 = *(v31 + 20);
      v33 = type metadata accessor for AttributeContainer();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(&v21[v32], 1, v33))
      {
        v35 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v26[v32], &v21[v32], *(*(v35 - 8) + 64));
      }

      else
      {
        (*(v34 + 16))(&v26[v32], &v21[v32], v33);
        (*(v34 + 56))(&v26[v32], 0, 1, v33);
      }

      v26[*(v31 + 24)] = v21[*(v31 + 24)];
      (*(v17 + 56))(v27, 0, 1, v16);
    }
  }

  return v6;
}

uint64_t destroy for TextEditor.Storage.AttributedText(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a1 + *(a2 + 20);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v9 = v8;
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (!result)
  {

    v11 = v7 + *(v9 + 32);
    v12 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>();
      }

      else
      {
        v13 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v13 - 8) + 8))(v11, v13);
    }

    v14 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v15 = type metadata accessor for AttributeContainer();
    v17 = *(v15 - 8);
    result = (*(v17 + 48))(v11 + v14, 1, v15);
    if (!result)
    {
      v16 = *(v17 + 8);

      return v16(v11 + v14, v15);
    }
  }

  return result;
}

char *initializeWithCopy for TextEditor.Storage.AttributedText(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for AttributedString();
  v10 = *(*(v9 - 8) + 16);

  v10(&a1[v8], &a2[v8], v9);
  v11 = *(a3 + 20);
  v12 = &a1[v11];
  v13 = &a2[v11];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v15 = v14;
  v16 = *(v14 - 8);
  if ((*(v16 + 48))(v13, 1, v14))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
    memcpy(v12, v13, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = *(v13 + 1);
    *v12 = *v13;
    *(v12 + 1) = v18;
    v19 = *(v15 + 32);
    __dst = &v12[v19];
    v37 = v12;
    v20 = &v13[v19];
    v21 = type metadata accessor for AttributedTextSelection.Indices(0);
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);

    if (v23(v20, 1, v21))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
      v25 = __dst;
      memcpy(__dst, v20, *(*(v24 - 8) + 64));
      v26 = v37;
    }

    else
    {
      v27 = v22;
      v25 = __dst;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>();
        v29 = v28;
      }

      else
      {
        v29 = type metadata accessor for AttributedString.Index();
      }

      v26 = v37;
      (*(*(v29 - 8) + 16))(__dst, v20);
      swift_storeEnumTagMultiPayload();
      (*(v27 + 56))(__dst, 0, 1, v21);
    }

    v30 = type metadata accessor for AttributedTextSelection(0);
    v31 = *(v30 + 20);
    v32 = type metadata accessor for AttributeContainer();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(&v20[v31], 1, v32))
    {
      v34 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v25[v31], &v20[v31], *(*(v34 - 8) + 64));
    }

    else
    {
      (*(v33 + 16))(&v25[v31], &v20[v31], v32);
      (*(v33 + 56))(&v25[v31], 0, 1, v32);
    }

    v25[*(v30 + 24)] = v20[*(v30 + 24)];
    (*(v16 + 56))(v26, 0, 1, v15);
  }

  return a1;
}

char *assignWithCopy for TextEditor.Storage.AttributedText(char *a1, char *a2, uint64_t a3)
{
  v5 = a1;
  *a1 = *a2;

  *(v5 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 24))(&v5[v7], &a2[v7], v8);
  v9 = *(a3 + 20);
  v10 = &v5[v9];
  v11 = &a2[v9];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v10, 1, v12);
  v17 = v15(v11, 1, v13);
  if (!v16)
  {
    if (v17)
    {
      outlined destroy of Binding<TextSelection?>?(v10, type metadata accessor for Binding<AttributedTextSelection>);
      goto LABEL_7;
    }

    *v10 = *v11;

    *(v10 + 1) = *(v11 + 1);

    v27 = *(v13 + 32);
    v28 = &v10[v27];
    v29 = &v11[v27];
    v30 = type metadata accessor for AttributedTextSelection.Indices(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v32(v28, 1, v30);
    v34 = v32(v29, 1, v30);
    if (v33)
    {
      if (!v34)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v36 = v35;
        }

        else
        {
          v36 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v36 - 8) + 16))(v28, v29);
        swift_storeEnumTagMultiPayload();
        (*(v31 + 56))(v28, 0, 1, v30);
        goto LABEL_29;
      }
    }

    else
    {
      if (!v34)
      {
        if (v5 != a2)
        {
          outlined destroy of Binding<TextSelection?>?(v28, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
          }

          else
          {
            v45 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v45 - 8) + 16))(v28, v29, v45);
          swift_storeEnumTagMultiPayload();
        }

LABEL_29:
        v46 = type metadata accessor for AttributedTextSelection(0);
        v47 = *(v46 + 20);
        v48 = type metadata accessor for AttributeContainer();
        v49 = *(v48 - 8);
        v50 = *(v49 + 48);
        v51 = v50(&v28[v47], 1, v48);
        v52 = v50(&v29[v47], 1, v48);
        if (v51)
        {
          if (!v52)
          {
            (*(v49 + 16))(&v28[v47], &v29[v47], v48);
            (*(v49 + 56))(&v28[v47], 0, 1, v48);
LABEL_35:
            v28[*(v46 + 24)] = v29[*(v46 + 24)];
            return v5;
          }
        }

        else
        {
          if (!v52)
          {
            (*(v49 + 24))(&v28[v47], &v29[v47], v48);
            goto LABEL_35;
          }

          (*(v49 + 8))(&v28[v47], v48);
        }

        v53 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v28[v47], &v29[v47], *(*(v53 - 8) + 64));
        goto LABEL_35;
      }

      outlined destroy of Binding<TextSelection?>?(v28, type metadata accessor for AttributedTextSelection.Indices);
    }

    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
    memcpy(v28, v29, *(*(v38 - 8) + 64));
    goto LABEL_29;
  }

  if (v17)
  {
LABEL_7:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
    memcpy(v10, v11, *(*(v26 - 8) + 64));
    return v5;
  }

  *v10 = *v11;
  *(v10 + 1) = *(v11 + 1);
  v18 = *(v13 + 32);
  __dst = &v10[v18];
  v56 = v5;
  v19 = &v11[v18];
  v20 = type metadata accessor for AttributedTextSelection.Indices(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);

  if (v22(v19, 1, v20))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
    v24 = __dst;
    memcpy(__dst, v19, *(*(v23 - 8) + 64));
    v25 = v19;
    v5 = v56;
  }

  else
  {
    v24 = __dst;
    v25 = v19;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<AttributedString.Index>();
      v39 = v37;
    }

    else
    {
      v39 = type metadata accessor for AttributedString.Index();
    }

    v5 = v56;
    (*(*(v39 - 8) + 16))(__dst, v25);
    swift_storeEnumTagMultiPayload();
    (*(v21 + 56))(__dst, 0, 1, v20);
  }

  v40 = type metadata accessor for AttributedTextSelection(0);
  v41 = *(v40 + 20);
  v42 = type metadata accessor for AttributeContainer();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(&v25[v41], 1, v42))
  {
    v44 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v24[v41], &v25[v41], *(*(v44 - 8) + 64));
  }

  else
  {
    (*(v43 + 16))(&v24[v41], &v25[v41], v42);
    (*(v43 + 56))(&v24[v41], 0, 1, v42);
  }

  v24[*(v40 + 24)] = v25[*(v40 + 24)];
  (*(v14 + 56))(v10, 0, 1, v13);
  return v5;
}

char *initializeWithTake for TextEditor.Storage.AttributedText(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  v10 = *(a3 + 20);
  v11 = &a1[v10];
  v12 = &a2[v10];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v14 = v13;
  v15 = *(v13 - 8);
  if ((*(v15 + 48))(v12, 1, v13))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
    memcpy(v11, v12, *(*(v16 - 8) + 64));
  }

  else
  {
    v17 = *(v12 + 1);
    *v11 = *v12;
    *(v11 + 1) = v17;
    v18 = *(v14 + 32);
    v19 = &v11[v18];
    v20 = &v12[v18];
    v21 = type metadata accessor for AttributedTextSelection.Indices(0);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v20, 1, v21))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
      memcpy(v19, v20, *(*(v23 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>();
        v25 = v24;
      }

      else
      {
        v25 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v25 - 8) + 32))(v19, v20);
      swift_storeEnumTagMultiPayload();
      (*(v22 + 56))(v19, 0, 1, v21);
    }

    v26 = type metadata accessor for AttributedTextSelection(0);
    v27 = *(v26 + 20);
    v28 = type metadata accessor for AttributeContainer();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(&v20[v27], 1, v28))
    {
      v30 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
      memcpy(&v19[v27], &v20[v27], *(*(v30 - 8) + 64));
    }

    else
    {
      (*(v29 + 32))(&v19[v27], &v20[v27], v28);
      (*(v29 + 56))(&v19[v27], 0, 1, v28);
    }

    v19[*(v26 + 24)] = v20[*(v26 + 24)];
    (*(v15 + 56))(v11, 0, 1, v14);
  }

  return a1;
}

char *assignWithTake for TextEditor.Storage.AttributedText(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v10, 1, v12);
  v17 = v15(v11, 1, v13);
  if (!v16)
  {
    if (v17)
    {
      outlined destroy of Binding<TextSelection?>?(v10, type metadata accessor for Binding<AttributedTextSelection>);
      goto LABEL_7;
    }

    *v10 = *v11;

    *(v10 + 1) = *(v11 + 1);

    v26 = *(v13 + 32);
    v27 = &v10[v26];
    v28 = &v11[v26];
    v29 = type metadata accessor for AttributedTextSelection.Indices(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    v32 = v31(v27, 1, v29);
    v33 = v31(v28, 1, v29);
    if (v32)
    {
      if (!v33)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v35 = v34;
        }

        else
        {
          v35 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v35 - 8) + 32))(v27, v28);
        swift_storeEnumTagMultiPayload();
        (*(v30 + 56))(v27, 0, 1, v29);
        goto LABEL_29;
      }
    }

    else
    {
      if (!v33)
      {
        if (a1 != a2)
        {
          outlined destroy of Binding<TextSelection?>?(v27, type metadata accessor for AttributedTextSelection.Indices);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
          }

          else
          {
            v44 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v44 - 8) + 32))(v27, v28, v44);
          swift_storeEnumTagMultiPayload();
        }

LABEL_29:
        v45 = type metadata accessor for AttributedTextSelection(0);
        v46 = *(v45 + 20);
        v47 = type metadata accessor for AttributeContainer();
        v48 = *(v47 - 8);
        v49 = *(v48 + 48);
        v50 = v49(&v27[v46], 1, v47);
        v51 = v49(&v28[v46], 1, v47);
        if (v50)
        {
          if (!v51)
          {
            (*(v48 + 32))(&v27[v46], &v28[v46], v47);
            (*(v48 + 56))(&v27[v46], 0, 1, v47);
LABEL_35:
            v27[*(v45 + 24)] = v28[*(v45 + 24)];
            return a1;
          }
        }

        else
        {
          if (!v51)
          {
            (*(v48 + 40))(&v27[v46], &v28[v46], v47);
            goto LABEL_35;
          }

          (*(v48 + 8))(&v27[v46], v47);
        }

        v52 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v27[v46], &v28[v46], *(*(v52 - 8) + 64));
        goto LABEL_35;
      }

      outlined destroy of Binding<TextSelection?>?(v27, type metadata accessor for AttributedTextSelection.Indices);
    }

    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
    memcpy(v27, v28, *(*(v38 - 8) + 64));
    goto LABEL_29;
  }

  if (v17)
  {
LABEL_7:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
    memcpy(v10, v11, *(*(v25 - 8) + 64));
    return a1;
  }

  v18 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v18;
  v19 = *(v13 + 32);
  v20 = &v10[v19];
  v21 = &v11[v19];
  v22 = type metadata accessor for AttributedTextSelection.Indices(0);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
    memcpy(v20, v21, *(*(v24 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for RangeSet<AttributedString.Index>();
      v37 = v36;
    }

    else
    {
      v37 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v37 - 8) + 32))(v20, v21);
    swift_storeEnumTagMultiPayload();
    (*(v23 + 56))(v20, 0, 1, v22);
  }

  v39 = type metadata accessor for AttributedTextSelection(0);
  v40 = *(v39 + 20);
  v41 = type metadata accessor for AttributeContainer();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(&v21[v40], 1, v41))
  {
    v43 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    memcpy(&v20[v40], &v21[v40], *(*(v43 - 8) + 64));
  }

  else
  {
    (*(v42 + 32))(&v20[v40], &v21[v40], v41);
    (*(v42 + 56))(&v20[v40], 0, 1, v41);
  }

  v20[*(v39 + 24)] = v21[*(v39 + 24)];
  (*(v14 + 56))(v10, 0, 1, v13);
  return a1;
}

void type metadata completion function for TextEditor.Storage.AttributedText()
{
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(319, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(319, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TextEditor.Storage(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v9 = *(v8 + 32);
      v10 = type metadata accessor for AttributedString();
      v11 = *(*(v10 - 8) + 16);

      v11(a1 + v9, a2 + v9, v10);
      v12 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v13 = (a1 + v12);
      v14 = (a2 + v12);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v16 = v15;
      v17 = *(v15 - 8);
      if ((*(v17 + 48))(v14, 1, v15))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v13, v14, *(*(v18 - 8) + 64));
      }

      else
      {
        v60 = v13;
        v30 = v14[1];
        *v13 = *v14;
        v13[1] = v30;
        v31 = *(v16 + 32);
        __dst = v13 + v31;
        v32 = v14 + v31;
        v33 = type metadata accessor for AttributedTextSelection.Indices(0);
        v34 = *(v33 - 8);
        v35 = *(v34 + 48);

        if (v35(v32, 1, v33))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v37 = __dst;
          memcpy(__dst, v32, *(*(v36 - 8) + 64));
        }

        else
        {
          v37 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v49 = v48;
          }

          else
          {
            v49 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v49 - 8) + 16))(__dst, v32);
          swift_storeEnumTagMultiPayload();
          (*(v34 + 56))(__dst, 0, 1, v33);
        }

        v52 = type metadata accessor for AttributedTextSelection(0);
        v53 = *(v52 + 20);
        v54 = type metadata accessor for AttributeContainer();
        v55 = *(v54 - 8);
        if ((*(v55 + 48))(&v32[v53], 1, v54))
        {
          v56 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v37[v53], &v32[v53], *(*(v56 - 8) + 64));
        }

        else
        {
          (*(v55 + 16))(&v37[v53], &v32[v53], v54);
          (*(v55 + 56))(&v37[v53], 0, 1, v54);
        }

        v37[*(v52 + 24)] = v32[*(v52 + 24)];
        (*(v17 + 56))(v60, 0, 1, v16);
      }
    }

    else
    {
      v20 = a2[3];
      a1[2] = a2[2];
      a1[3] = v20;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v22 = *(v21 + 48);
      v23 = (a1 + v22);
      v24 = (a2 + v22);
      type metadata accessor for Binding<TextSelection?>(0);
      v26 = v25;
      v27 = *(v25 - 1);
      v28 = *(v27 + 48);

      if (v28(v24, 1, v26))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v23, v24, *(*(v29 - 8) + 64));
      }

      else
      {
        v38 = v24[1];
        *v23 = *v24;
        v23[1] = v38;
        __dsta = v26;
        v61 = v23;
        v39 = v26[8];
        v40 = v23 + v39;
        v41 = v24 + v39;
        v42 = type metadata accessor for TextSelection(0);
        v43 = *(v42 - 8);
        v44 = *(v43 + 48);

        if (v44(v41, 1, v42))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v40, v41, *(*(v45 - 8) + 64));
          v47 = __dsta;
          v46 = v61;
        }

        else
        {
          v50 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v51 - 8) + 16))(v40, v41, v51);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v40, v41, *(*(v50 - 8) + 64));
          }

          v47 = __dsta;
          v46 = v61;
          v40[*(v42 + 20)] = v41[*(v42 + 20)];
          (*(v43 + 56))(v40, 0, 1, v42);
        }

        (*(v27 + 56))(v46, 0, 1, v47);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for TextEditor.Storage(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v14 = a1 + *(v13 + 48);
    type metadata accessor for Binding<TextSelection?>(0);
    v16 = v15;
    result = (*(*(v15 - 8) + 48))(v14, 1, v15);
    if (result)
    {
      return result;
    }

    v17 = *(v16 + 32);
    v18 = type metadata accessor for TextSelection(0);
    result = (*(*(v18 - 8) + 48))(v14 + v17, 1, v18);
    if (result)
    {
      return result;
    }

    type metadata accessor for TextSelection.Indices(0);
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      return result;
    }

    type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    v20 = v19;
    v21 = *(*(v19 - 8) + 8);
    v22 = v14 + v17;
    goto LABEL_15;
  }

  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a1 + *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v8 = v7;
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {

    v10 = v6 + *(v8 + 32);
    v11 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>();
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 8))(v10, v12);
    }

    v23 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v24 = type metadata accessor for AttributeContainer();
    v25 = *(v24 - 8);
    result = (*(v25 + 48))(v10 + v23, 1, v24);
    if (!result)
    {
      v21 = *(v25 + 8);
      v22 = v10 + v23;
      v20 = v24;
LABEL_15:

      return v21(v22, v20);
    }
  }

  return result;
}

char *initializeWithCopy for TextEditor.Storage(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  if (EnumCaseMultiPayload == 1)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 16);

    v9(&a1[v7], &a2[v7], v8);
    v10 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v11 = &a1[v10];
    v12 = &a2[v10];
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v14 = v13;
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v12, 1, v13))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v11, v12, *(*(v16 - 8) + 64));
    }

    else
    {
      v54 = v11;
      v27 = *(v12 + 1);
      *v11 = *v12;
      *(v11 + 1) = v27;
      v28 = *(v14 + 32);
      __dst = &v11[v28];
      v29 = &v12[v28];
      v30 = type metadata accessor for AttributedTextSelection.Indices(0);
      v31 = *(v30 - 8);
      v32 = *(v31 + 48);

      if (v32(v29, 1, v30))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        v34 = __dst;
        memcpy(__dst, v29, *(*(v33 - 8) + 64));
      }

      else
      {
        v34 = __dst;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v43 = v42;
        }

        else
        {
          v43 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v43 - 8) + 16))(__dst, v29);
        swift_storeEnumTagMultiPayload();
        (*(v31 + 56))(__dst, 0, 1, v30);
      }

      v46 = type metadata accessor for AttributedTextSelection(0);
      v47 = *(v46 + 20);
      v48 = type metadata accessor for AttributeContainer();
      v49 = *(v48 - 8);
      if ((*(v49 + 48))(&v29[v47], 1, v48))
      {
        v50 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v34[v47], &v29[v47], *(*(v50 - 8) + 64));
      }

      else
      {
        (*(v49 + 16))(&v34[v47], &v29[v47], v48);
        (*(v49 + 56))(&v34[v47], 0, 1, v48);
      }

      v34[*(v46 + 24)] = v29[*(v46 + 24)];
      (*(v15 + 56))(v54, 0, 1, v14);
    }
  }

  else
  {
    v17 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v17;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v19 = *(v18 + 48);
    v20 = &a1[v19];
    v21 = &a2[v19];
    type metadata accessor for Binding<TextSelection?>(0);
    v23 = v22;
    v24 = *(v22 - 8);
    v25 = *(v24 + 48);

    if (v25(v21, 1, v23))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v20, v21, *(*(v26 - 8) + 64));
    }

    else
    {
      v35 = *(v21 + 1);
      *v20 = *v21;
      *(v20 + 1) = v35;
      v36 = *(v23 + 32);
      __dsta = &v20[v36];
      v55 = v20;
      v37 = &v21[v36];
      v38 = type metadata accessor for TextSelection(0);
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);

      if (v40(v37, 1, v38))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dsta, v37, *(*(v41 - 8) + 64));
      }

      else
      {
        v44 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v45 - 8) + 16))(__dsta, v37, v45);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dsta, v37, *(*(v44 - 8) + 64));
        }

        __dsta[*(v38 + 20)] = v37[*(v38 + 20)];
        (*(v39 + 56))(__dsta, 0, 1, v38);
      }

      (*(v24 + 56))(v55, 0, 1, v23);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for TextEditor.Storage(char *a1, char *a2)
{
  if (a1 != a2)
  {
    outlined destroy of Binding<TextSelection?>?(a1, type metadata accessor for TextEditor.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      v8 = *(*(v7 - 8) + 16);

      v8(&a1[v6], &a2[v6], v7);
      v9 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v10 = &a1[v9];
      v11 = &a2[v9];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v13 = v12;
      v14 = *(v12 - 8);
      if ((*(v14 + 48))(v11, 1, v12))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v10, v11, *(*(v15 - 8) + 64));
      }

      else
      {
        v50 = v10;
        *v10 = *v11;
        *(v10 + 1) = *(v11 + 1);
        v25 = *(v13 + 32);
        __dst = &v10[v25];
        v26 = &v11[v25];
        v27 = type metadata accessor for AttributedTextSelection.Indices(0);
        v28 = *(v27 - 8);
        v29 = *(v28 + 48);

        if (v29(v26, 1, v27))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v31 = __dst;
          memcpy(__dst, v26, *(*(v30 - 8) + 64));
        }

        else
        {
          v31 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 16))(__dst, v26);
          swift_storeEnumTagMultiPayload();
          (*(v28 + 56))(__dst, 0, 1, v27);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v26[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v31[v43], &v26[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 16))(&v31[v43], &v26[v43], v44);
          (*(v45 + 56))(&v31[v43], 0, 1, v44);
        }

        v31[*(v42 + 24)] = v26[*(v42 + 24)];
        (*(v14 + 56))(v50, 0, 1, v13);
      }
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v17 = *(v16 + 48);
      v18 = &a1[v17];
      v19 = &a2[v17];
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      v23 = *(v22 + 48);

      if (v23(v19, 1, v21))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v18, v19, *(*(v24 - 8) + 64));
      }

      else
      {
        *v18 = *v19;
        *(v18 + 1) = *(v19 + 1);
        v32 = *(v21 + 32);
        __dsta = &v18[v32];
        v51 = v18;
        v33 = &v19[v32];
        v34 = type metadata accessor for TextSelection(0);
        v35 = *(v34 - 8);
        v36 = *(v35 + 48);

        if (v36(v33, 1, v34))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(__dsta, v33, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v41 - 8) + 16))(__dsta, v33, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(__dsta, v33, *(*(v40 - 8) + 64));
          }

          __dsta[*(v34 + 20)] = v33[*(v34 + 20)];
          (*(v35 + 56))(__dsta, 0, 1, v34);
        }

        (*(v22 + 56))(v51, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for TextEditor.Storage(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v6 = *(v5 + 32);
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
    v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v10, 1, v11))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      v24 = v10[1];
      *v9 = *v10;
      v9[1] = v24;
      v25 = *(v12 + 32);
      v26 = v9 + v25;
      v27 = v10 + v25;
      v28 = type metadata accessor for AttributedTextSelection.Indices(0);
      v29 = *(v28 - 8);
      v49 = v26;
      if ((*(v29 + 48))(v27, 1, v28))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        memcpy(v26, v27, *(*(v30 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>();
          v39 = v38;
        }

        else
        {
          v39 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v39 - 8) + 32))(v26, v27);
        swift_storeEnumTagMultiPayload();
        (*(v29 + 56))(v26, 0, 1, v28);
      }

      v42 = type metadata accessor for AttributedTextSelection(0);
      v43 = *(v42 + 20);
      v44 = type metadata accessor for AttributeContainer();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(&v27[v43], 1, v44))
      {
        v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v47 = v49;
        memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
      }

      else
      {
        (*(v45 + 32))(&v49[v43], &v27[v43], v44);
        (*(v45 + 56))(&v49[v43], 0, 1, v44);
        v47 = v49;
      }

      v47[*(v42 + 24)] = v27[*(v42 + 24)];
      (*(v13 + 56))(v9, 0, 1, v12);
    }
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
    v17 = *(v16 + 48);
    v18 = (a1 + v17);
    v19 = (a2 + v17);
    type metadata accessor for Binding<TextSelection?>(0);
    v21 = v20;
    v22 = *(v20 - 8);
    if ((*(v22 + 48))(v19, 1, v20))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      v31 = v19[1];
      *v18 = *v19;
      v18[1] = v31;
      v32 = *(v21 + 32);
      v33 = v18 + v32;
      v34 = v19 + v32;
      v35 = type metadata accessor for TextSelection(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v34, 1, v35))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v33, v34, *(*(v37 - 8) + 64));
      }

      else
      {
        v40 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v41 - 8) + 32))(v33, v34, v41);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v33, v34, *(*(v40 - 8) + 64));
        }

        v33[*(v35 + 20)] = v34[*(v35 + 20)];
        (*(v36 + 56))(v33, 0, 1, v35);
      }

      (*(v22 + 56))(v18, 0, 1, v21);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for TextEditor.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Binding<TextSelection?>?(a1, type metadata accessor for TextEditor.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
      v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v9 = (a1 + v8);
      v10 = (a2 + v8);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v12 = v11;
      v13 = *(v11 - 8);
      if ((*(v13 + 48))(v10, 1, v11))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v9, v10, *(*(v14 - 8) + 64));
      }

      else
      {
        v24 = v10[1];
        *v9 = *v10;
        v9[1] = v24;
        v25 = *(v12 + 32);
        v26 = v9 + v25;
        v27 = v10 + v25;
        v28 = type metadata accessor for AttributedTextSelection.Indices(0);
        v29 = *(v28 - 8);
        v49 = v26;
        if ((*(v29 + 48))(v27, 1, v28))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          memcpy(v26, v27, *(*(v30 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>();
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 32))(v26, v27);
          swift_storeEnumTagMultiPayload();
          (*(v29 + 56))(v26, 0, 1, v28);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v27[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          v47 = v49;
          memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 32))(&v49[v43], &v27[v43], v44);
          (*(v45 + 56))(&v49[v43], 0, 1, v44);
          v47 = v49;
        }

        v47[*(v42 + 24)] = v27[*(v42 + 24)];
        (*(v13 + 56))(v9, 0, 1, v12);
      }
    }

    else
    {
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)();
      v17 = *(v16 + 48);
      v18 = (a1 + v17);
      v19 = (a2 + v17);
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      if ((*(v22 + 48))(v19, 1, v20))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v18, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v31 = v19[1];
        *v18 = *v19;
        v18[1] = v31;
        v32 = *(v21 + 32);
        v33 = v18 + v32;
        v34 = v19 + v32;
        v35 = type metadata accessor for TextSelection(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v34, 1, v35))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v33, v34, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v41 - 8) + 32))(v33, v34, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v33, v34, *(*(v40 - 8) + 64));
          }

          v33[*(v35 + 20)] = v34[*(v35 + 20)];
          (*(v36 + 56))(v33, 0, 1, v35);
        }

        (*(v22 + 56))(v18, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void type metadata completion function for TextEditor.Storage()
{
  type metadata accessor for Binding<TextSelection?>?(319);
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3[4] = v3;
    v1 = type metadata accessor for TextEditor.Storage.AttributedText(319);
    if (v2 <= 0x3F)
    {
      v3[5] = *(v1 - 8) + 64;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

void (*ToggleStyleConfiguration.isOn.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v5 = v1[1];
  *(v3 + 24) = *v1;
  *(v3 + 32) = v5;
  v6 = *(v1 + 16);
  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  return ToggleStyleConfiguration.isOn.modify;
}

void ToggleStyleConfiguration.isOn.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 18) = *(*a1 + 17);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  free(v1);
}

uint64_t ToggleStyleConfiguration.isOn.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v4);
  return v4;
}

void *key path getter for ToggleStyleConfiguration.isOn : ToggleStyleConfiguration@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  result = MEMORY[0x18D00ACC0](&v6);
  *a2 = v6;
  return result;
}

void key path setter for ToggleStyleConfiguration.isOn : ToggleStyleConfiguration(uint64_t a1, void *a2)
{
  v2 = a2[6];
  v3 = a2[7];
  v4 = a2[8];
  v5 = a2[9];

  outlined copy of ToggleStyleConfiguration.Effect(v2, v3, v4, v5);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  outlined consume of ToggleStyleConfiguration.Effect(v2, v3, v4, v5);
}

uint64_t ToggleStyleConfiguration.$isOn.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t closure #2 in ResolvedToggleStyle.body.getter()
{
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v1);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedToggleStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedToggleStyle and conformance ResolvedToggleStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedToggleStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedToggleStyleBody and conformance ResolvedToggleStyleBody();

  return MEMORY[0x1EEDE2370](a1, a2, a3, v6);
}

uint64_t ResolvedToggleStyleBody.ArchiveBody.body.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 72);
  if (v8)
  {
    v27 = *(v1 + 104);
    v23 = *(v1 + 88);
    v25 = *(v1 + 96);
    v26 = *(v1 + 80);
    v10 = *(v1 + 48);
    v9 = *(v1 + 56);
    v2 = *(v1 + 64) & 1;
    outlined copy of Environment<AppIntentExecutor?>.Content(v10, v9, v2);
    v24 = v8;

    v11 = static Alignment.center.getter();
    v13 = v12;
    _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v28);
    v14 = v28;
    result = specialized Environment.wrappedValue.getter(v25, v27);
    v16 = v26;
    v17 = result & 1;
    v18 = v10;
    v3 = v23;
    v19 = v24;
    v20 = 1;
    v21 = v13 & 0xFFFFFFFFFFFFFF00;
    v22 = closure #1 in ResolvedToggleStyleBody.ArchiveBody.body.getter;
    v5 = &outlined read-only object #0 of ResolvedToggleStyleBody.ArchiveBody.body.getter;
    v7 = v13;
  }

  else
  {

    v22 = 0;
    v18 = 0;
    v9 = 0;
    v20 = 0;
    v14 = 0;
    v21 = 0;
    v11 = v6;
  }

  *a1 = v5;
  *(a1 + 8) = v11;
  *(a1 + 16) = v21 | v7;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0;
  *(a1 + 56) = v18;
  *(a1 + 64) = v9;
  *(a1 + 72) = v2;
  *(a1 + 80) = v19;
  *(a1 + 88) = v16;
  *(a1 + 96) = v3;
  *(a1 + 104) = v17;
  *(a1 + 105) = v20;
  return result;
}

uint64_t closure #1 in ResolvedToggleStyleBody.ArchiveBody.body.getter@<X0>(uint64_t a1@<X8>)
{
  static Binding.constant(_:)();
  v12[0] = v15[0];
  v12[1] = v15[1];
  v13 = v16;
  memset(v14, 0, sizeof(v14));
  ToggleStyleConfiguration.init(toggleState:appIntentAction:)(v12, v14, v15);
  v2 = v17;
  v3 = v18;
  v4 = v19;
  v5 = v23;
  if (v23)
  {
    v6 = v22 & 1;
    v7 = v20;
    v8 = v21;
    v9 = v24;
    v10 = v25;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v9 = 0;
    v10 = 0;
  }

  outlined copy of ToggleStyleConfiguration.Effect(v20, v21, v22, v23);

  result = outlined destroy of ToggleStyleConfiguration(v15);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  return result;
}

uint64_t ResolvedToggleStyleBody.archivedBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v12[2] = v1[2];
  v12[3] = v3;
  v4 = v1[5];
  v12[4] = v1[4];
  v12[5] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  KeyPath = swift_getKeyPath();
  v11[0] = 0;
  v7 = v1[3];
  *(a1 + 32) = v1[2];
  *(a1 + 48) = v7;
  v8 = v1[5];
  *(a1 + 64) = v1[4];
  *(a1 + 80) = v8;
  v9 = v1[1];
  *a1 = *v1;
  *(a1 + 16) = v9;
  *(a1 + 96) = KeyPath;
  *(a1 + 104) = 0;
  return outlined init with copy of ToggleStyleConfiguration(v12, v11);
}

uint64_t closure #1 in ArchivableToggleAppIntentModifier.body(content:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  outlined init with copy of ArchivableToggleAppIntentModifier(a1, v5);
  if (static Update.threadIsUpdating.getter())
  {
    if (v3)
    {
      dispatch thunk of AnyLocation.wasRead.setter();
LABEL_6:
      v5[0] = v2 == 0;

      dispatch thunk of AnyLocation.set(_:transaction:)();
      outlined destroy of ArchivableToggleAppIntentModifier(a1);
    }
  }

  else if (v3)
  {
    dispatch thunk of AnyLocation.get()();
    v2 = v5[0];
    goto LABEL_6;
  }

  static Log.internalError(_:)();
  return outlined destroy of ArchivableToggleAppIntentModifier(a1);
}

uint64_t closure #2 in ArchivableToggleAppIntentModifier.body(content:)@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  if (static Update.threadIsUpdating.getter())
  {
    if (v6)
    {
      dispatch thunk of AnyLocation.wasRead.setter();
    }
  }

  else if (v6)
  {
    dispatch thunk of AnyLocation.get()();
    v5 = v9;
  }

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a3 = v5;
  *(a3 + 8) = a1 & 1;
  *(a3 + 16) = KeyPath;
  *(a3 + 24) = 0;
  *(a3 + 32) = result;
  *(a3 + 104) = 0;
  return result;
}

uint64_t ArchivableToggleAppIntentModifier.encode(to:)(void *a1)
{
  type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableToggleAppIntentModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys, &unk_1EFFA4C48, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = v1[1];
  v20 = *v1;
  v21 = v8;
  v9 = v1[3];
  v22 = v1[2];
  v23 = v9;
  v12[2] = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of ArchivableAppIntentToggle(&v20, &v16);
  lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v20;
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v15 = 0;
  lazy protocol witness table accessor for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle();
  v10 = v24;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v19;
  outlined destroy of ArchivableAppIntentToggle(v14);
  if (!v10)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ArchivableToggleAppIntentModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableToggleAppIntentModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys, &unk_1EFFA4C48, MEMORY[0x1E69E6F48]);
  v18 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v17;
  v32 = 0;
  lazy protocol witness table accessor for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle();
  v10 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v8 + 8))(v7, v10);
  v12 = v27;
  v13 = v28;
  v19[0] = v27;
  v19[1] = v28;
  v14 = v29;
  v15 = v30;
  v19[2] = v29;
  v19[3] = v30;
  v11 &= 1u;
  v20 = v11;
  *(v9 + 64) = v11;
  *(v9 + 32) = v14;
  *(v9 + 48) = v15;
  *v9 = v12;
  *(v9 + 16) = v13;
  outlined init with copy of ArchivableToggleAppIntentModifier(v19, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v21[0] = v27;
  v21[1] = v28;
  v21[2] = v29;
  v21[3] = v30;
  v22 = v11;
  return outlined destroy of ArchivableToggleAppIntentModifier(v21);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ArchivableToggleAppIntentModifier.CodingKeys()
{
  if (*v0)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 0x7453656C67676F74;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableToggleAppIntentModifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7453656C67676F74 && a2 == 0xEB00000000657461;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableToggleAppIntentModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableToggleAppIntentModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ArchivableToggleAppIntentModifier@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v15[2] = *(v1 + 32);
  v15[3] = v3;
  v16 = *(v1 + 64);
  v4 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  v8 = swift_allocObject();
  v9 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v1 + 64);
  v10 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  v17 = 0;
  KeyPath = swift_getKeyPath();
  v12 = v16;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = partial apply for closure #1 in ArchivableToggleAppIntentModifier.body(content:);
  *(a1 + 24) = v5;
  *(a1 + 32) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(a1 + 40) = 0;
  *(a1 + 48) = partial apply for closure #2 in ArchivableToggleAppIntentModifier.body(content:);
  *(a1 + 56) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
  *(a1 + 82) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = KeyPath;
  *(a1 + 104) = v12;
  outlined init with copy of ArchivableToggleAppIntentModifier(v15, v14);
  return outlined init with copy of ArchivableToggleAppIntentModifier(v15, v14);
}

uint64_t ArchivableAppIntentToggle.Box.update(property:phase:)(char *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = v4 == 0;
  if (!v4)
  {
    v6 = *a1;
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    LOBYTE(v27) = v6;
    _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for StoredLocation<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E697E540]);
    swift_allocObject();
    v7 = StoredLocation.init(initialValue:host:signal:)();
    v8 = *(v1 + 24);
    v9 = *(a1 + 2);
    v10 = *(a1 + 3);
    v11 = *(a1 + 7);
    v26 = a1[32];
    *&v27 = v7;
    *(&v27 + 1) = v8;
    *&v28 = v9;
    *(&v28 + 1) = v10;
    v29[0] = v26;
    *&v29[8] = *(a1 + 40);
    *&v29[24] = v11;
    type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for LocationBox<ArchivableAppIntentToggle.AppIntentLocation>, lazy protocol witness table accessor for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation, &unk_1EFFA4CC0, MEMORY[0x1E697DCF0]);
    swift_allocObject();

    outlined copy of Environment<AppIntentExecutor?>.Content(v9, v10, v26);
    v12 = *&v29[8];

    v4 = LocationBox.init(_:)();
    *(v2 + 16) = v4;
  }

  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for AppIntentExecutor?, &type metadata for AppIntentExecutor, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v15 = v14;
  v16 = *Value;
  v17 = Value[1];
  v18 = *(v2 + 24);
  swift_beginAccess();
  v19 = *(v18 + 16);
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  outlined copy of AppIntentExecutor?(v16);
  outlined copy of AppIntentExecutor?(v16);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19);
  swift_beginAccess();
  v20 = v4[2];
  v27 = v4[1];
  v28 = v20;
  v21 = v4[4];
  *v29 = v4[3];
  *&v29[16] = v21;
  v22 = lazy protocol witness table accessor for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation();
  LOBYTE(v19) = (*(v22 + 64))(&v25, &unk_1EFFA4CC0, v22);
  *a1 = v25;

  *(a1 + 1) = v4;
  if (v19)
  {
    swift_beginAccess();
    v23 = (*(v22 + 24))(&unk_1EFFA4CC0, v22);
    swift_endAccess();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16);
    if (v23 & 1) != 0 || (v15)
    {
      return 1;
    }
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16);
    if (v15)
    {
      return 1;
    }
  }

  return v5;
}