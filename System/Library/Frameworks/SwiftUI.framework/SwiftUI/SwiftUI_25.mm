uint64_t SearchModifier.environmentModifier.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  SearchModifier.adjustedState.getter(a1, a2);
  v5 = *(a1 + 44);
  v6 = type metadata accessor for SearchEnvironmentWritingModifier(0);
  result = _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(&v2[v5], a2 + *(v6 + 20), type metadata accessor for Binding<AttributedString>);
  *(a2 + *(v6 + 24)) = *v2;
  return result;
}

uint64_t View.searchEnvironmentTransform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchEnvironmentTransformModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV02__E14_searchStorage33_01524358DA8FEB8BCC0A94C08F00494ALLVGMaTm_0(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>>();
    lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<SearchFieldConfiguration.Key> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, _PreferenceWritingModifier<SearchFieldConfiguration.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<SearchFieldConfiguration.Key> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<SearchFieldConfiguration.Key> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<SearchFieldConfiguration.Key> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for WritableKeyPath<TextFieldState, String>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<SearchFieldConfiguration.Key>, &type metadata for SearchFieldConfiguration.Key, &protocol witness table for SearchFieldConfiguration.Key, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<SearchFieldConfiguration.Key> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t SearchPrimitiveModifier.SearchConfigModifier.field.getter(uint64_t a1)
{
  type metadata accessor for SearchField();
  _s7SwiftUI5StateVySbGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  swift_getKeyPath();
  v7 = v1 + *(a1 + 40);
  LOBYTE(v14) = *v7;
  WitnessTable = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  swift_getKeyPath();
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v14 = v9;
  v15 = v10;
  outlined copy of AppIntentExecutor?(v9);
  v11 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  v13[0] = WitnessTable;
  v13[1] = v11;
  swift_getWitnessTable();
  View.environment<A>(_:_:)();

  outlined consume of TriggerSubmitAction?(v9, v10);
  return (*(v4 + 8))(v6, v3);
}

uint64_t destroy for SearchField(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 9) & ~v6) + *(v5 + 64);
  v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v9 = (v7 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 + ((v6 + 16) & ~(v6 | 3)) <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8 + ((v6 + 16) & ~(v6 | 3));
  }

  v11 = a1[v10];
  v12 = v11 - 2;
  if (v11 < 2)
  {
    goto LABEL_20;
  }

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
      goto LABEL_20;
    }

    v14 = *a1;
    if (v10 < 4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v13 == 2)
  {
    v14 = *a1;
    if (v10 >= 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
      if (v10 < 4)
      {
        goto LABEL_19;
      }

LABEL_17:
      v11 = v14 + 2;
      goto LABEL_20;
    }

    v14 = *a1;
    if (v10 >= 4)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v11 = (v14 | (v12 << (8 * v10))) + 2;
LABEL_20:
  v15 = ~v6;
  if (v11 == 1)
  {

    (*(v5 + 8))((v6 + ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + (v6 | 3) + 8) & ~(v6 | 3)) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v15, v4);
  }

  else
  {
    (*(v5 + 8))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 5) & v15, v4);
  }

  v16 = &a1[v10 + 8] & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 17);
  if (v17 >= 2)
  {
    v17 = *v16 + 2;
  }

  if (v17 == 1)
  {
  }

  v18 = *(*(a2 + 16) - 8);
  v19 = *(v18 + 8);
  v20 = (v16 + *(v18 + 80) + 18) & ~*(v18 + 80);

  return v19(v20);
}

uint64_t protocol witness for Location.wasRead.getter in conformance SearchZipLocation()
{
  if (dispatch thunk of AnyLocation.wasRead.getter())
  {
    return 1;
  }

  else
  {
    return dispatch thunk of AnyLocation.wasRead.getter() & 1;
  }
}

uint64_t outlined init with take of (SearchFieldState, Bool)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for ((SearchFieldState, AttributedString), Bool)(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle;
  if (!lazy protocol witness table cache variable for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle);
  }

  return result;
}

uint64_t View.tokenFieldStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TokenFieldStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t TextField.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(v4 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v28 = v5;
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = type metadata accessor for TextField();
  v29[0] = TextField.$text.getter();
  v29[1] = v8;
  v29[2] = v9;
  v29[3] = v10;
  TextField.$state.getter(v7, v34);
  v48 = v34[4];
  *v49 = v35[0];
  *&v49[12] = *(v35 + 12);
  v44 = v34[0];
  v45 = v34[1];
  v46 = v34[2];
  v47 = v34[3];
  v11 = MEMORY[0x1E6981948];
  type metadata accessor for Binding<String>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  Binding.zip<A>(with:)();
  v42[4] = v48;
  v43[0] = *v49;
  *(v43 + 12) = *&v49[12];
  v42[0] = v44;
  v42[1] = v45;
  v42[2] = v46;
  v42[3] = v47;
  outlined destroy of State<TextFieldState>(v42, &lazy cache variable for type metadata for Binding<TextFieldState>, v11);

  v48 = v39;
  *v49 = v40;
  *&v49[16] = v41[0];
  *&v49[28] = *(v41 + 12);
  v44 = v35[2];
  v45 = v36;
  v46 = v37;
  v47 = v38;
  v12 = *(&v36 + 1);
  v13 = v36;
  if (v36 == v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of Binding<TextSelection?>(&v45, v29, type metadata accessor for (String, TextFieldState));

    v12 = *(&v46 + 1);
    v13 = v46;
    v32 = *v49;
    v33[0] = *&v49[16];
    *(v33 + 12) = *&v49[28];
    v30 = v47;
    v31 = v48;
  }

  else
  {
    outlined init with copy of Binding<TextSelection?>(&v45, v29, type metadata accessor for (String, TextFieldState));

    v32 = *v49;
    v33[0] = *&v49[16];
    *(v33 + 12) = *&v49[28];
    v30 = v47;
    v31 = v48;
  }

  lazy protocol witness table accessor for type TextFieldStateTextProjection and conformance TextFieldStateTextProjection();
  v14 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v15 = v44;

  outlined destroy of ResolvedTextFieldStyle(&v44, type metadata accessor for Binding<(String, TextFieldState)>);
  v16 = v30;
  *(a2 + 120) = v31;
  v17 = v33[0];
  *(a2 + 136) = v32;
  *(a2 + 152) = v17;
  *(a2 + 164) = *(v33 + 12);
  LOBYTE(v29[0]) = 1;
  *(a2 + 72) = v15;
  *(a2 + 80) = v14;
  *(a2 + 88) = v13;
  *(a2 + 96) = v12;
  *(a2 + 104) = v16;
  *(a2 + 180) = 1;
  *a2 = TextField.$text.getter();
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 33) = *(a1 + v7[11]);
  v21 = (a1 + v7[12]);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  *(a2 + 40) = *v21;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
  v26 = v7[14];
  outlined copy of Text?(v22, v23, v24, v25);
  outlined assign with copy of Binding<TextSelection?>?(a1 + v26, a2 + v28);
  return (*(*(v7 - 1) + 8))(a1, v7);
}

uint64_t outlined destroy of State<TextFieldState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  type metadata accessor for Binding<String>(0, a2, &type metadata for TextFieldState, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Binding<TextSelection?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (String, TextFieldState)()
{
  if (!lazy cache variable for type metadata for (String, TextFieldState))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, TextFieldState));
    }
  }
}

uint64_t outlined copy of StateOrBinding<TextFieldState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  if (a15)
  {

    outlined copy of TextFieldState.FormatActions?(a5);
    return outlined copy of TextFieldState.FormatActions?(a9);
  }

  else
  {

    outlined copy of TextFieldState.FormatActions?(a3);
    outlined copy of TextFieldState.FormatActions?(a7);
  }
}

uint64_t outlined copy of TextFieldState.FormatActions?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of TextFieldState.FormatActions?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined init with copy of ResolvedTextFieldStyle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedTextFieldStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of TextField<_TextFieldStyleLabel>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Binding<TextFieldState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for TextFieldState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of Binding<AttributedString>(uint64_t a1)
{
  type metadata accessor for Binding<AttributedString>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for NavigableListModifier.EnsureNavigationAuthority(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  if (*(a2 + 32) == 1)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    swift_weakCopyInit();
    v4 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v4;
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t destroy for NavigableListModifier.BoundListSelectionDetector(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80) & 0xF8 | 7;
  v5 = (((((((((((((result + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 31) & 0xFFFFFFFFFFFFFFFCLL) + v4 + 4) & ~v4;
  v6 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v7 = *(v3 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 > v6)
  {
    v6 = v7;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v5 + v6);
  if (v8 <= 2)
  {
    if (v8 == 2)
    {
LABEL_13:
      v9 = *(v3 + 8);

      return v9(v5, v2);
    }

    if (v8 == 1)
    {
      v10 = *(*(a2 + 16) - 8);
      result = (*(v3 + 48))((((((((((((((result + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 31) & 0xFFFFFFFFFFFFFFFCLL) + v4 + 4) & ~v4, 1, v2);
      v3 = v10;
      if (result)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  return result;
}

uint64_t outlined destroy of SearchEnvironmentWritingModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SearchPrimitiveModifier.init(base:searchField:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SearchModifier();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for SearchPrimitiveModifier() + 36);
  v8 = type metadata accessor for SearchField();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_18BF027B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

char *initializeWithCopy for SearchFieldConfiguration.Data(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for AttributedString();
  v10 = *(*(v9 - 8) + 16);

  v10(&a1[v8], &a2[v8], v9);
  v11 = *(a3 + 20);
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *&a2[v11];
  v15 = *&a2[v11 + 8];
  LOBYTE(v9) = a2[v11 + 16];
  outlined copy of Text.Storage(v14, v15, v9);
  *v12 = v14;
  *(v12 + 1) = v15;
  v12[16] = v9;
  *(v12 + 3) = *(v13 + 3);
  v16 = *(a3 + 24);
  v17 = &a1[v16];
  v18 = &a2[v16];
  v19 = v18[8];

  if (v19 == 255)
  {
    *v17 = *v18;
    v17[8] = v18[8];
  }

  else
  {
    v20 = *v18;
    v21 = v19 & 1;
    outlined copy of PlatformItemCollection.Storage(v20, v21);
    *v17 = v20;
    v17[8] = v21;
  }

  return a1;
}

uint64_t outlined copy of PlatformItemCollection?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of PlatformItemCollection.Storage(result, a2 & 1);
  }

  return result;
}

uint64_t sub_18BF02A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t closure #1 in SearchField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a2;
  v50 = a5;
  v42 = type metadata accessor for ResolvedSearchFieldStyle(0);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTextFieldStyle and conformance SearchFieldConfigurationTextFieldStyle, &type metadata for SearchFieldConfigurationTextFieldStyle, type metadata accessor for TextFieldStyleModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for TextFieldStyleModifier<SearchFieldConfigurationTextFieldStyle>(255, &lazy cache variable for type metadata for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>, lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle, &type metadata for SearchFieldConfigurationTokenFieldStyle, type metadata accessor for TokenFieldStyleModifier);
  v10 = type metadata accessor for ModifiedContent();
  v11 = lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control();
  v44 = v11;
  v72 = a4;
  v73 = &protocol witness table for TextFieldStyleModifier<A>;
  v46 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v71 = &protocol witness table for TokenFieldStyleModifier<A>;
  v43 = v10;
  v41 = swift_getWitnessTable();
  v66 = &type metadata for SearchFieldConfiguration.Control;
  v67 = v10;
  v68 = v11;
  v69 = v41;
  type metadata accessor for StaticSourceWriter();
  v39 = type metadata accessor for ModifiedContent();
  v48 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v37 - v12;
  IsNotConfiguredFromStyle = type metadata accessor for SearchField.IsNotConfiguredFromStyle();
  v14 = swift_getWitnessTable();
  HasSuggestions = lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions();
  v66 = IsNotConfiguredFromStyle;
  v67 = &type metadata for SearchHasSuggestions;
  v68 = v14;
  v69 = HasSuggestions;
  v16 = type metadata accessor for AndOperationViewInputPredicate();
  type metadata accessor for StaticSourceWriter<SearchFieldConfiguration.Suggestions, _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>>();
  v45 = type metadata accessor for StaticIf();
  v17 = type metadata accessor for ModifiedContent();
  v47 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v40 = &v37 - v21;
  v22 = v9;
  outlined init with copy of SearchBoundProperty<AttributedString>(a1, v9, type metadata accessor for SearchFieldConfiguration);
  v56 = a3;
  v57 = a4;
  v23 = v49;
  v58 = v49;
  updated = lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle, type metadata accessor for ResolvedSearchFieldStyle);
  View.viewAlias<A, B>(_:_:)(&type metadata for SearchFieldConfiguration.Control, partial apply for closure #1 in closure #1 in SearchField.body.getter, v55, v42, &type metadata for SearchFieldConfiguration.Control, v43, updated);
  outlined destroy of StateOrBinding<SearchFieldState>(v22, type metadata accessor for ResolvedSearchFieldStyle);
  v51 = a3;
  v52 = a4;
  v53 = v23;
  v54 = a1;
  type metadata accessor for _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>();
  v26 = v25;
  v64 = updated;
  v65 = &protocol witness table for StaticSourceWriter<A, B>;
  v27 = v39;
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions();
  lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>?>);
  v30 = v26;
  v31 = v38;
  View.viewAlias<A, B, C>(if:_:source:)(v16, partial apply for closure #2 in closure #1 in SearchField.body.getter, v27, v16, v30, v19, v28, v29);
  (*(v48 + 8))(v31, v27);
  v61 = v29;
  v62 = &protocol witness table for StaticSourceWriter<A, B>;
  v63 = MEMORY[0x1E697E100];
  v32 = swift_getWitnessTable();
  v59 = v28;
  v60 = v32;
  v33 = swift_getWitnessTable();
  v34 = v40;
  static ViewBuilder.buildExpression<A>(_:)(v19, v17, v33);
  v35 = *(v47 + 8);
  v35(v19, v17);
  static ViewBuilder.buildExpression<A>(_:)(v34, v17, v33);
  return (v35)(v34, v17);
}

uint64_t type metadata accessor for SearchUnavailableContent.Label()
{
  result = type metadata singleton initialization cache for SearchUnavailableContent.Label;
  if (!type metadata singleton initialization cache for SearchUnavailableContent.Label)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Environment<Binding<AttributedString>?>.Content(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for SearchUnavailableContent.Label()
{
  type metadata accessor for Environment<Binding<AttributedString>?>.Content(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void storeEnumTagSinglePayload for Section(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = a4[3];
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(a4[4] - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v9 + 80);
  v16 = *(*(v8 - 8) + 64);
  v17 = *(v12 + 80);
  v18 = *(v12 + 64);
  if (v13 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = *(v12 + 84);
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  v20 = v18 + 7;
  v21 = ((v18 + 7 + ((v16 + v17 + ((v14 + v15) & ~v15)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v19 >= a3)
  {
    v25 = 0;
    if (v19 >= a2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v26 = ~v19 + a2;
    bzero(a1, v21);
    if (v21 <= 3)
    {
      v27 = (v26 >> 8) + 1;
    }

    else
    {
      v27 = 1;
    }

    if (v21 <= 3)
    {
      *a1 = v26;
      if (v25 > 1)
      {
LABEL_32:
        if (v25 == 2)
        {
          *&a1[v21] = v27;
        }

        else
        {
          *&a1[v21] = v27;
        }

        return;
      }
    }

    else
    {
      *a1 = v26;
      if (v25 > 1)
      {
        goto LABEL_32;
      }
    }

    if (v25)
    {
      a1[v21] = v27;
    }

    return;
  }

  v22 = (a3 - v19 + 255) >> 8;
  if (v21 <= 3)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a2)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
  }

  else if (v25)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v7 == v19)
  {
    v28 = *(v6 + 56);
    v29 = a1;

LABEL_40:
    v28(v29);
    return;
  }

  v30 = &a1[v14 + v15] & ~v15;
  if (v10 == v19)
  {
    v31 = *(v9 + 56);

    v31(v30);
  }

  else
  {
    v29 = ((v30 + v16 + v17) & ~v17);
    if (v13 == v19)
    {
      v28 = *(v12 + 56);

      goto LABEL_40;
    }

    v32 = &v29[v20] & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      *v32 = 0;
      *(v32 + 8) = 0;
      *(v32 + 16) = 0;
      *v32 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v32 + 8) = a2;
    }
  }
}

uint64_t getEnumTagSinglePayload for Section(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = a3[4];
  v7 = *(v5 + 84);
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(*(a3[3] - 8) + 64);
  v15 = *(v11 + 80);
  if (v12 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(a3[2] - 8) + 64) + v13;
  v18 = *(*(v6 - 8) + 64) + 7;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v19 = ((v18 + ((v14 + v15 + (v17 & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 17;
  v20 = (a2 - v16 + 255) >> 8;
  if (v19 <= 3)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *&a1[v19];
      if (!*&a1[v19])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = *&a1[v19];
      if (!v24)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    v26 = (v24 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v27 = *a1;
    }

    else
    {
      v26 = 0;
      v27 = *a1;
    }

    return v16 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = a1[v19];
    if (a1[v19])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  if (v7 == v16)
  {
    v28 = *(v5 + 48);

    return v28(a1, v7);
  }

  else
  {
    v29 = &a1[v17] & ~v13;
    if (v9 == v16)
    {
      v30 = *(v8 + 48);

      return v30(v29);
    }

    else
    {
      v31 = (v29 + v14 + v15) & ~v15;
      if (v12 == v16)
      {
        v32 = *(v11 + 48);

        return v32(v31, v12, v6);
      }

      else
      {
        v33 = *(((v18 + v31) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v33 >= 0xFFFFFFFF)
        {
          LODWORD(v33) = -1;
        }

        if ((v33 + 1) >= 2)
        {
          return v33;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance SubmitScopeModifier@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v10 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  *a1 = KeyPath;
  a1[1] = partial apply for closure #1 in SubmitScopeModifier.body(content:);
  a1[2] = v5;
  return outlined init with copy of SubmitScopeModifier(v9, v8);
}

uint64_t sub_18BF03CD4()
{
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t outlined init with copy of SubmitScopeModifier(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v3, v4, v5);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return a2;
}

uint64_t type metadata completion function for UIKitSearchBarAdaptor()
{
  result = type metadata accessor for SearchFieldConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for SearchToolbarItem()
{
  result = type metadata singleton initialization cache for SearchToolbarItem;
  if (!type metadata singleton initialization cache for SearchToolbarItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SearchToolbarItem()
{
  result = type metadata accessor for SearchFieldConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AsOptional()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EnvironmentValues.SearchCustomAccessory(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in SearchField.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  type metadata accessor for SearchField();

  return closure #1 in SearchField.suggestionsList(_:)(v4, v3, a1);
}

uint64_t closure #1 in SearchField.suggestionsList(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v5 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>();
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>(0);
  v36 = *(v15 - 8);
  v37 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = type metadata accessor for SearchField();
  if (*(a1 + *(v21 + 44)) == 1)
  {
    v22 = v21;
    SearchField.$state.getter(v11);
    KeyPath = swift_getKeyPath();
    v32 = a1;
    v33 = a3;
    v39 = KeyPath;
    v24 = *(v11 + *(v9 + 32) + 1);
    type metadata accessor for WritableKeyPath<SearchFieldState, SearchSuggestionsPlacement.Role>(0);
    lazy protocol witness table accessor for type SearchEnvironmentTransformModifier<SearchStateEnvironmentTransformModifier.Transform>.UpdateEnvironment and conformance SearchEnvironmentTransformModifier<A>.UpdateEnvironment(&lazy protocol witness table cache variable for type WritableKeyPath<SearchFieldState, SearchSuggestionsPlacement.Role> and conformance WritableKeyPath<A, B>, type metadata accessor for WritableKeyPath<SearchFieldState, SearchSuggestionsPlacement.Role>);
    v25 = dispatch thunk of AnyLocation.projecting<A>(_:)();

    v39 = *v11;
    v40 = v25;
    v41 = v24;
    type metadata accessor for _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>(0, &lazy cache variable for type metadata for Binding<SearchSuggestionsPlacement.Role>, &type metadata for SearchSuggestionsPlacement.Role, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v38);

    *v14 = v38;
    SearchField.multiSuggestions(_:)(v35, v22, &v14[*(v34 + 36)]);
    outlined destroy of StateOrBinding<SearchFieldState>(v11, type metadata accessor for Binding<SearchFieldState>);
    SearchField.state.getter();
    LOBYTE(v22) = *v7;
    outlined destroy of StateOrBinding<SearchFieldState>(v7, type metadata accessor for SearchFieldState);
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v14, v17, type metadata accessor for TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>);
    v26 = v37;
    v27 = &v17[*(v37 + 36)];
    *v27 = (v22 & 1) == 0;
    *(v27 + 1) = 0;
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v17, v20, type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>);
    v28 = v33;
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(v20, v33, type metadata accessor for ModifiedContent<TextInputSuggestions<ModifiedContent<ModifiedContent<ModifiedContent<EnvironmentValues.SearchSuggestions, SearchTextTransformModifier>, _EnvironmentKeyWritingModifier<SearchSuggestionsPlacement>>, OnChangeOfSuggestionsModifier>?>, DynamicHiddenModifier>);
    return (*(v36 + 56))(v28, 0, 1, v26);
  }

  else
  {
    v30 = v37;
    v31 = *(v36 + 56);

    return v31(a3, 1, 1, v30);
  }
}

uint64_t getEnumTagSinglePayload for TextInputSuggestions(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t destroy for SearchFieldConfiguration(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = *(v4 + 32);
  v6 = a1 + *(type metadata accessor for SearchFieldState(0) + 36);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(v6 + v5, v7);
  v8 = a1 + *(a2 + 24);
  v9 = *(v8 + 8);
  if (v9 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v8, v9 & 1);
  }

  outlined consume of Text.Storage(*(a1 + *(a2 + 32)), *(a1 + *(a2 + 32) + 8), *(a1 + *(a2 + 32) + 16));
}

uint64_t sub_18BF047F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance SearchHasSuggestions(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedSearchFieldStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle(&lazy protocol witness table cache variable for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle, type metadata accessor for ResolvedSearchFieldStyle);

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t type metadata accessor for ToolbarSearchFieldStyle.Implementation()
{
  result = type metadata singleton initialization cache for ToolbarSearchFieldStyle.Implementation;
  if (!type metadata singleton initialization cache for ToolbarSearchFieldStyle.Implementation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ToolbarSearchFieldStyle.Implementation()
{
  result = type metadata accessor for SearchFieldConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BF04B7C()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t lazy protocol witness table accessor for type ToolbarSearchFieldStyle.Implementation and conformance ToolbarSearchFieldStyle.Implementation(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t instantiation function for generic protocol witness table for EnvironmentValues.SearchCustomScopeBar(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>();
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle>, lazy protocol witness table accessor for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle, &type metadata for ConditionallyBorderedStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E697FBE0], MEMORY[0x1E697FBD8], MEMORY[0x1E69801E0]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, a3, a4, a5, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v9 = type metadata accessor for StaticIf();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle()
{
  result = lazy protocol witness table cache variable for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle;
  if (!lazy protocol witness table cache variable for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, lazy protocol witness table accessor for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst, &type metadata for BorderedButtonStyle_CarCatalyst);
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle);
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle>, lazy protocol witness table accessor for type ConditionallyBorderedStyle and conformance ConditionallyBorderedStyle, &type metadata for ConditionallyBorderedStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ConditionallyBorderedStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ViewInputFlagModifier<SupportsAccessibilityButtonBorder>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ViewInputFlagModifier<SupportsAccessibilityButtonBorder>>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SupportsAccessibilityButtonBorder>, lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder, &type metadata for SupportsAccessibilityButtonBorder, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ViewInputFlagModifier<SupportsAccessibilityButtonBorder>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ViewInputFlagModifier<SupportsAccessibilityButtonBorder>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

void type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<SupportsAccessibilityButtonBorder> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<SupportsAccessibilityButtonBorder> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<SupportsAccessibilityButtonBorder> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SupportsAccessibilityButtonBorder>, lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder, &type metadata for SupportsAccessibilityButtonBorder, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<SupportsAccessibilityButtonBorder> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>)
  {
    type metadata accessor for _ContentShapeModifier<Rectangle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton()
{
  result = lazy protocol witness table cache variable for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton;
  if (!lazy protocol witness table cache variable for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityButtonBorderModifier>, _PaddingLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityButtonBorderModifier>, _PaddingLayout>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityButtonBorderModifier>, lazy protocol witness table accessor for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier, &type metadata for AccessibilityButtonBorderModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityButtonBorderModifier>, _PaddingLayout>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityButtonBorderModifier>, _PaddingLayout>, ButtonShapeEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityButtonBorderModifier>, _PaddingLayout>, ButtonShapeEffect>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityButtonBorderModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityButtonBorderModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityButtonBorderModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityButtonBorderModifier>, lazy protocol witness table accessor for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier, &type metadata for AccessibilityButtonBorderModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityButtonBorderModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

id static ButtonShapeEffect._makeView(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X2>, uint64_t a4@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = *a1;
  v7 = a2[3];
  v59 = a2[2];
  v60 = v7;
  v61 = a2[4];
  v62 = *(a2 + 20);
  v8 = a2[1];
  v57 = *a2;
  v58 = v8;
  v9 = v7;
  v10 = DWORD2(v7);
  v11 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *v37 = v9;
  *&v37[8] = v10;
  v12 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  v53 = v59;
  v54 = v60;
  v55 = v61;
  v56 = v62;
  v51 = v57;
  v52 = v58;
  LOBYTE(v27) = 0;
  outlined init with copy of _ViewInputs(&v57, v37);
  lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder();
  PropertyList.subscript.setter();
  v63[2] = v53;
  v63[3] = v54;
  v63[4] = v55;
  v64 = v56;
  v63[0] = v51;
  v63[1] = v52;
  *&v37[32] = v53;
  *&v37[48] = v54;
  *&v37[64] = v55;
  *&v37[80] = v56;
  *v37 = v51;
  *&v37[16] = v52;
  v13 = outlined init with copy of _ViewInputs(v63, &v27);
  a3(&v24, v13, v37);
  v65[2] = *&v37[32];
  v65[3] = *&v37[48];
  v65[4] = *&v37[64];
  v66 = *&v37[80];
  v65[0] = *v37;
  v65[1] = *&v37[16];
  outlined destroy of _ViewInputs(v65);
  if (v11)
  {
    v14 = v6;
    *v37 = v24;
    *&v37[8] = v25;
    v15 = PreferencesOutputs.subscript.getter();
    v6 = HIDWORD(v15) & 1;
    if ((v15 & 0x100000000) != 0)
    {
      IndirectAttribute2 = 0;
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
      v37[0] = 0;
      PreferencesOutputs.subscript.setter();
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      *&v37[32] = v53;
      *&v37[48] = v54;
      *&v37[64] = v55;
      *&v37[80] = v56;
      *v37 = v51;
      *&v37[16] = v52;
      result = outlined destroy of _ViewInputs(v37);
      *a4 = v24;
      *(a4 + 8) = v25;
      return result;
    }

    v14 = v6;
    IndirectAttribute2 = 0;
    LOBYTE(v6) = 1;
  }

  *v37 = v24;
  *&v37[8] = v25;
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
  {
    v17 = AGGraphCreateIndirectAttribute2();
    v37[0] = 0;
    PreferencesOutputs.subscript.setter();
    v18 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v17 = 0;
  v18 = 1;
LABEL_11:
  v42 = v57;
  v43 = v58;
  v44 = v59;
  v19 = _GraphInputs.accessibilityShowButtonShapes.getter();
  v20 = v24;
  v21 = v25;
  v22 = HIDWORD(v25);
  v47 = v59;
  v48 = v60;
  v49 = v61;
  v50 = v62;
  v45 = v57;
  v46 = v58;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *v37 = v19;
    *&v37[4] = v14;
    *&v37[40] = v47;
    *&v37[56] = v48;
    *&v37[72] = v49;
    *&v37[88] = v50;
    *&v37[8] = v45;
    *&v37[24] = v46;
    *&v38 = v20;
    *(&v38 + 1) = __PAIR64__(v22, v21);
    LODWORD(v39) = IndirectAttribute2;
    BYTE4(v39) = v6;
    DWORD2(v39) = v17;
    BYTE12(v39) = v18;
    v40 = result;
    v41 = 2;
    v33 = v38;
    v34 = v39;
    v35 = result;
    v36 = 2;
    v29 = *&v37[32];
    v30 = *&v37[48];
    v31 = *&v37[64];
    v32 = *&v37[80];
    v27 = *v37;
    v28 = *&v37[16];
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    outlined init with copy of _ViewInputs(&v57, v26);
    lazy protocol witness table accessor for type ButtonShapeEffect.EffectState and conformance ButtonShapeEffect.EffectState();

    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ButtonShapeEffect.EffectState(v37);
    if ((v18 & 1) == 0)
    {
      AGGraphSetIndirectDependency();
    }

    if ((v6 & 1) == 0)
    {
      AGGraphSetIndirectDependency();
    }

    v29 = v53;
    v30 = v54;
    v31 = v55;
    LODWORD(v32) = v56;
    v27 = v51;
    v28 = v52;
    result = outlined destroy of _ViewInputs(&v27);
    *a4 = v20;
    *(a4 + 8) = v21;
    *(a4 + 12) = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonShapeEffect.EffectState and conformance ButtonShapeEffect.EffectState()
{
  result = lazy protocol witness table cache variable for type ButtonShapeEffect.EffectState and conformance ButtonShapeEffect.EffectState;
  if (!lazy protocol witness table cache variable for type ButtonShapeEffect.EffectState and conformance ButtonShapeEffect.EffectState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonShapeEffect.EffectState and conformance ButtonShapeEffect.EffectState);
  }

  return result;
}

uint64_t initializeWithCopy for ButtonShapeEffect.EffectState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 117) = *(a2 + 117);
  v4 = *(a2 + 128);
  v5 = *(a2 + 136);
  *(a1 + 128) = v4;
  *(a1 + 136) = v5;
  *(a1 + 144) = *(a2 + 144);

  v6 = v4;
  v7 = v5;
  return a1;
}

void destroy for ButtonShapeEffect.EffectState(uint64_t a1)
{

  v2 = *(a1 + 136);
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E697FBE0], MEMORY[0x1E697FBD8], MEMORY[0x1E69801E0]);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, lazy protocol witness table accessor for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car, &type metadata for BorderlessButtonStyle_Car, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car()
{
  result = lazy protocol witness table cache variable for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car;
  if (!lazy protocol witness table cache variable for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase()
{
  result = lazy protocol witness table cache variable for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase;
  if (!lazy protocol witness table cache variable for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase);
  }

  return result;
}

void type metadata accessor for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for HStack<ButtonStyleConfiguration.Label>, &type metadata for ButtonStyleConfiguration.Label, &protocol witness table for ButtonStyleConfiguration.Label, MEMORY[0x1E69817F0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<ButtonStyleConfiguration.Label>, OpacityButtonHighlightModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier()
{
  result = lazy protocol witness table cache variable for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier;
  if (!lazy protocol witness table cache variable for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>);
    lazy protocol witness table accessor for type HasAccessibilityButtonBorder and conformance HasAccessibilityButtonBorder();
    lazy protocol witness table accessor for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for _ContentShapeModifier<Rectangle>()
{
  if (!lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v0 = type metadata accessor for _ContentShapeModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HasAccessibilityButtonBorder and conformance HasAccessibilityButtonBorder()
{
  result = lazy protocol witness table cache variable for type HasAccessibilityButtonBorder and conformance HasAccessibilityButtonBorder;
  if (!lazy protocol witness table cache variable for type HasAccessibilityButtonBorder and conformance HasAccessibilityButtonBorder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasAccessibilityButtonBorder and conformance HasAccessibilityButtonBorder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityButtonBorderModifier and conformance AccessibilityButtonBorderModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>);
    lazy protocol witness table accessor for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<HasAccessibilityButtonBorder, AccessibilityButtonBorderModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier>);
    lazy protocol witness table accessor for type IsConditionallyBorderedPredicate and conformance IsConditionallyBorderedPredicate();
    lazy protocol witness table accessor for type ConditionallyBorderedButton and conformance ConditionallyBorderedButton();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsConditionallyBorderedPredicate, ConditionallyBorderedButton, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsConditionallyBorderedPredicate and conformance IsConditionallyBorderedPredicate()
{
  result = lazy protocol witness table cache variable for type IsConditionallyBorderedPredicate and conformance IsConditionallyBorderedPredicate;
  if (!lazy protocol witness table cache variable for type IsConditionallyBorderedPredicate and conformance IsConditionallyBorderedPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsConditionallyBorderedPredicate and conformance IsConditionallyBorderedPredicate);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OpacityButtonHighlightModifier>, OpacityRendererEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OpacityButtonHighlightModifier>, OpacityRendererEffect>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<OpacityButtonHighlightModifier>, lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier, &type metadata for OpacityButtonHighlightModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OpacityButtonHighlightModifier>, OpacityRendererEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<OpacityButtonHighlightModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<OpacityButtonHighlightModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<OpacityButtonHighlightModifier> and conformance _ViewModifier_Content<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<OpacityButtonHighlightModifier>, lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier, &type metadata for OpacityButtonHighlightModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<OpacityButtonHighlightModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void SheetBridge.contingentlyPresent(_:from:animated:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v4 + v8, v43);
  LOBYTE(v8) = PresentationState.isDismissingFromSheetBridge.getter();
  outlined destroy of PresentationState(v43);
  if (v8)
  {
    v9 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v4 + v9, v43);
    LOBYTE(v9) = PresentationState.isDismissalPreemptable.getter();
    outlined destroy of PresentationState(v43);
    if ((v9 & 1) != 0 && [a2 _willPreemptRunningPresentationTransition])
    {
      v10 = direct field offset for SheetBridge.presentationState;
      swift_beginAccess();
      outlined init with copy of PresentationState(v4 + v10, v43);
      v11 = PresentationState.Base.presentedVC.getter();
      outlined destroy of PresentationState(v43);
      if (v11)
      {
        v11[direct field offset for PresentationHostingController.wasPreempted] = 1;
      }

      SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1, a2, a3 & 1, 0, 1);
    }

    else
    {
      swift_beginAccess();
      PresentationState.enqueueDelayedPresentation_IsDismissing(_:animated:)(a1, a3 & 1);
      swift_endAccess();
    }
  }

  else
  {
    v12 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v4 + v12, v43);
    v41 = v50;
    *v42 = *v51;
    *&v42[11] = *&v51[11];
    v37 = v46;
    v38 = v47;
    v39 = v48;
    v40 = v49;
    v33 = v43[4];
    v34 = v43[5];
    v35 = v44;
    v36 = v45;
    v29 = v43[0];
    v30 = v43[1];
    v31 = v43[2];
    v32 = v43[3];
    if (v51[26] == 9)
    {

      outlined destroy of SheetPreference(&v29);
      v13 = direct field offset for SheetBridge.presentationState;
      swift_beginAccess();
      outlined init with copy of PresentationState(v4 + v13, v43);
      v14 = PresentationState.Base.presentedVC.getter();
      outlined destroy of PresentationState(v43);
      if (v14)
      {
        v15 = direct field offset for SheetBridge.presentationState;
        swift_beginAccess();
        outlined init with copy of SheetPreference(a1, v43);
        *&v45 = v14;
        BYTE8(v45) = a3 & 1;
        v51[26] = 9;
        v16 = v14;
        PresentationState.base.willset(v43);
        outlined assign with take of PresentationState.Base(v43, v4 + v15);
        swift_endAccess();

        return;
      }
    }

    else
    {
      outlined destroy of PresentationState.Base(&v29);
    }

    v17 = [a2 presentedViewController];
    if (v17)
    {
      v18 = v17;
      if ([v17 isBeingDismissed])
      {
        type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          v20 = v19;
          v21 = direct field offset for SheetBridge.presentationState;
          swift_beginAccess();
          outlined init with copy of SheetPreference(a1, v43);
          *&v45 = v20;
          BYTE8(v45) = a3 & 1;
          v51[26] = 9;
          v22 = v18;
          PresentationState.base.willset(v43);
          outlined assign with take of PresentationState.Base(v43, v4 + v21);
          swift_endAccess();
          v23 = type metadata accessor for SheetBridge();
          PresentationHostingController.configureSecondaryDismissDelegate<A>(_:)(v4, v23, &protocol witness table for SheetBridge<A>);

          return;
        }
      }
    }

    if (*(v4 + direct field offset for SheetBridge.clientNeedsOutOfWindowPresentationSuppression) == 1 && (SheetBridge.presenterHasWindow.getter(), (v24 & 1) == 0))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        MEMORY[0x18D009810](0xD0000000000000A0, 0x800000018CD43B20);
      }

      else
      {
        v28 = direct field offset for SheetBridge.presentationState;
        swift_beginAccess();
        outlined init with copy of SheetPreference(a1, v43);
        BYTE10(v44) = a3 & 1;
        v51[26] = 10;
        PresentationState.base.willset(v43);
        outlined assign with take of PresentationState.Base(v43, v4 + v28);
        swift_endAccess();
      }
    }

    else
    {
      v25 = direct field offset for SheetBridge.presentationState;
      swift_beginAccess();
      outlined init with copy of PresentationState(v4 + v25, v43);
      v26 = PresentationState.Base.presentedVC.getter();
      outlined destroy of PresentationState(v43);
      SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(a1, a2, a3 & 1, v26, 0);
    }
  }
}

id partial apply for closure #1 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = makeHostingController #1 <A>() in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(*(v1 + 24), *(v1 + 32));
    v3 = 0;
  }

  *a1 = v4;
  return v3;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TintAdjustmentMode?>, &lazy cache variable for type metadata for TintAdjustmentMode?, MEMORY[0x1E697F510], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ResetTabViewEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

unint64_t lazy protocol witness table accessor for type ResetTabViewEnvironmentModifier and conformance ResetTabViewEnvironmentModifier()
{
  result = lazy protocol witness table cache variable for type ResetTabViewEnvironmentModifier and conformance ResetTabViewEnvironmentModifier;
  if (!lazy protocol witness table cache variable for type ResetTabViewEnvironmentModifier and conformance ResetTabViewEnvironmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResetTabViewEnvironmentModifier and conformance ResetTabViewEnvironmentModifier);
  }

  return result;
}

uint64_t assignWithCopy for ResolvedScrollBehavior(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

void type metadata accessor for [HandGestureShortcutPaginationDirection](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ContainerRelativeFrameModifier()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ContainerRelativeFrameModifier.MakeLayout and conformance ContainerRelativeFrameModifier.MakeLayout();
  Attribute.init<A>(body:value:flags:update:)();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

unint64_t lazy protocol witness table accessor for type ContainerRelativeFrameModifier.MakeLayout and conformance ContainerRelativeFrameModifier.MakeLayout()
{
  result = lazy protocol witness table cache variable for type ContainerRelativeFrameModifier.MakeLayout and conformance ContainerRelativeFrameModifier.MakeLayout;
  if (!lazy protocol witness table cache variable for type ContainerRelativeFrameModifier.MakeLayout and conformance ContainerRelativeFrameModifier.MakeLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerRelativeFrameModifier.MakeLayout and conformance ContainerRelativeFrameModifier.MakeLayout);
  }

  return result;
}

uint64_t ContainerRelativeFrameModifier.MakeLayout.resolvedLength(axis:size:)(char a1, double a2, double a3)
{
  AGGraphGetValue();
  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    return 0;
  }

  Value = AGGraphGetValue();
  if (*(Value + 24))
  {
    MEMORY[0x1EEE9AC00](Value);
    Attribute.syncMainIfReferences<A>(do:)();
    return v9;
  }

  else
  {
    if (a1)
    {
      v8 = a3;
    }

    else
    {
      v8 = a2;
    }

    return *&v8;
  }
}

uint64_t SceneBridge.publishEvent(event:type:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (static SceneBridge._devNullSceneBridge)
  {
    v7 = static SceneBridge._devNullSceneBridge == v4;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v9 = a1;
    swift_beginAccess();
    v10 = *(v4 + 16);
    if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      a1 = v9;
      if (*(v13 + 16))
      {

        specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
        if (v14)
        {

          PassthroughSubject.send(_:)();

          return 1;
        }

        a1 = v9;
      }
    }

    else
    {
      swift_endAccess();
      a1 = v9;
    }
  }

  SceneBridge.enqueueUnpublishedEvent(_:for:)(a1, a3, a4);
  return 0;
}

uint64_t SceneBridge.enqueueUnpublishedEvent(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC7SwiftUI11SceneBridge_enqueuedEvents;
  swift_beginAccess();
  if (*(*(v3 + v7) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v8 & 1) != 0))
  {
    swift_endAccess();

    specialized Array.append<A>(contentsOf:)(v9);
    v10 = v17;
  }

  else
  {
    swift_endAccess();
    v10 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(a1, v16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  outlined init with take of Any(v16, &v10[32 * v12 + 32]);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + v7);
  *(v3 + v7) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v3 + v7) = v15;
  return swift_endAccess();
}

uint64_t SceneBridge.activationConditionsPreferencesDidChange(_:)(void *a1)
{
  v2 = v1;
  type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreferenceValues.Value<(preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)>(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *a1;
  PreferenceValues.subscript.getter();
  v12 = v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_activationConditionsPreferenceSeed;
  if (*(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_activationConditionsPreferenceSeed + 4) == 1)
  {
    v13 = *&v11[*(v9 + 28)];
LABEL_7:
    *v12 = v13;
    *(v12 + 4) = 0;
    outlined init with copy of Predicate<Pack{String}>?(v11, v7, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
    v15 = *(v5 + 48);
    SceneBridge.setActivationConditions(preferred:)(v7, &v7[v15]);
    outlined destroy of Predicate<Pack{String}>?(&v7[v15], type metadata accessor for Predicate<Pack{String}>?);
    outlined destroy of Predicate<Pack{String}>?(v7, type metadata accessor for Predicate<Pack{String}>?);
    return outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for PreferenceValues.Value<(preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)>);
  }

  v13 = *&v11[*(v9 + 28)];
  if (v13 == -1 || v13 != *v12)
  {
    goto LABEL_7;
  }

  return outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for PreferenceValues.Value<(preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)>);
}

uint64_t SceneBridge.setActivationConditions(preferred:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Predicate<Pack{String}>();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v50 - v8;
  type metadata accessor for Predicate<Pack{String}>?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  v58 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v50 - v27;
  outlined init with copy of Predicate<Pack{String}>?(a1, &v50 - v27, type metadata accessor for Predicate<Pack{String}>?);
  outlined init with copy of Predicate<Pack{String}>?(a2, &v28[*(v16 + 48)], type metadata accessor for Predicate<Pack{String}>?);
  v57 = v28;
  outlined init with copy of Predicate<Pack{String}>?(v28, v25, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
  v29 = *(v16 + 48);
  v30 = v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge__preferredActivationConditions;
  swift_beginAccess();
  outlined assign with take of Predicate<Pack{String}>?(v25, v30, type metadata accessor for Predicate<Pack{String}>?);
  outlined assign with take of Predicate<Pack{String}>?(&v25[v29], v30 + *(v16 + 48), type metadata accessor for Predicate<Pack{String}>?);
  swift_endAccess();
  v31 = *(v16 + 48);
  outlined init with copy of Predicate<Pack{String}>?(v30, v14, type metadata accessor for Predicate<Pack{String}>?);
  v32 = v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_defaultActivationConditions;
  outlined init with copy of Predicate<Pack{String}>?(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_defaultActivationConditions, v11, type metadata accessor for Predicate<Pack{String}>?);
  static SceneBridge.merge(predicate:with:)(v14, v11, v22);
  outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for Predicate<Pack{String}>?);
  outlined destroy of Predicate<Pack{String}>?(v14, type metadata accessor for Predicate<Pack{String}>?);
  outlined init with copy of Predicate<Pack{String}>?(v30 + *(v16 + 48), v14, type metadata accessor for Predicate<Pack{String}>?);
  outlined init with copy of Predicate<Pack{String}>?(v32 + *(v16 + 48), v11, type metadata accessor for Predicate<Pack{String}>?);
  static SceneBridge.merge(predicate:with:)(v14, v11, &v22[v31]);
  outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for Predicate<Pack{String}>?);
  outlined destroy of Predicate<Pack{String}>?(v14, type metadata accessor for Predicate<Pack{String}>?);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v35 = [objc_allocWithZone(MEMORY[0x1E69DCE78]) init];
    v36 = v53;
    outlined init with copy of Predicate<Pack{String}>?(v58, v53, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
    v37 = *(v16 + 48);
    v39 = v54;
    v38 = v55;
    v40 = *(v54 + 48);
    if (v40(v36, 1, v55) == 1)
    {
      outlined destroy of Predicate<Pack{String}>?(v36 + v37, type metadata accessor for Predicate<Pack{String}>?);
      outlined destroy of Predicate<Pack{String}>?(v36, type metadata accessor for Predicate<Pack{String}>?);
    }

    else
    {
      v41 = v51;
      (*(v39 + 32))(v51, v36, v38);
      outlined destroy of Predicate<Pack{String}>?(v36 + v37, type metadata accessor for Predicate<Pack{String}>?);
      v42 = v39;
      v43 = specialized SceneBridge.buildActivationConditions(_:)(v41);
      [v35 setPrefersToActivateForTargetContentIdentifierPredicate_];

      v39 = v42;
      (*(v42 + 8))(v41, v38);
    }

    v44 = v56;
    outlined init with copy of Predicate<Pack{String}>?(v58, v56, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
    v45 = *(v16 + 48);
    if (v40(v44 + v45, 1, v38) == 1)
    {
      outlined destroy of Predicate<Pack{String}>?(v44 + v45, type metadata accessor for Predicate<Pack{String}>?);
      outlined destroy of Predicate<Pack{String}>?(v44, type metadata accessor for Predicate<Pack{String}>?);
    }

    else
    {
      v46 = v52;
      (*(v39 + 32))(v52, v44 + v45, v38);
      outlined destroy of Predicate<Pack{String}>?(v44, type metadata accessor for Predicate<Pack{String}>?);
      v47 = v39;
      v48 = specialized SceneBridge.buildActivationConditions(_:)(v46);
      [v35 setCanActivateForTargetContentIdentifierPredicate_];

      (*(v47 + 8))(v46, v38);
    }

    [v34 setActivationConditions_];
  }

  outlined destroy of Predicate<Pack{String}>?(v58, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
  return outlined destroy of Predicate<Pack{String}>?(v57, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ConnectionOptionPayloadStoragePreferenceKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EAB096F0;
  *a1 = static ConnectionOptionPayloadStoragePreferenceKey.defaultValue;
  a1[1] = v1;
}

void type metadata accessor for PreferenceValues.Value<NavigationTitleStorage?>()
{
  if (!lazy cache variable for type metadata for PreferenceValues.Value<NavigationTitleStorage?>)
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for PreferenceValues.Value();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PreferenceValues.Value<NavigationTitleStorage?>);
    }
  }
}

double protocol witness for PresentationTransitionStyle._makePresentationTransition() in conformance AutomaticPresentationTransitionStyle@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void type metadata accessor for AnyHashable?()
{
  if (!lazy cache variable for type metadata for AnyHashable?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyHashable?);
    }
  }
}

void type metadata accessor for (Decodable & Encodable)?()
{
  if (!lazy cache variable for type metadata for (Decodable & Encodable)?)
  {
    type metadata accessor for Decodable & Encodable();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (Decodable & Encodable)?);
    }
  }
}

unint64_t type metadata accessor for Decodable & Encodable()
{
  result = lazy cache variable for type metadata for Decodable & Encodable;
  if (!lazy cache variable for type metadata for Decodable & Encodable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Decodable & Encodable);
  }

  return result;
}

uint64_t initializeWithCopy for SheetPreference(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v5 = (a2 + 8);
  v4 = *(a2 + 8);

  if (v4)
  {
    v6 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v6;
  }

  else
  {
    *(a1 + 8) = *v5;
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);
  if (v7)
  {
    v8 = *(a2 + 64);
    *(a1 + 56) = v7;
    *(a1 + 64) = v8;
    (**(v7 - 8))(a1 + 32, a2 + 32);
  }

  else
  {
    v9 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v9;
    *(a1 + 64) = *(a2 + 64);
  }

  *(a1 + 72) = *(a2 + 72);
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t destroy for SheetPreference(uint64_t a1)
{

  if (*(a1 + 8))
  {
  }

  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  }
}

uint64_t one-time initialization function for clientNeedsOscillationSuppression()
{
  static Semantics.v6.getter();
  result = isLinkedOnOrAfter(_:)();
  clientNeedsOscillationSuppression = result & 1;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t protocol witness for ViewGraphFeature.modifyViewOutputs(outputs:inputs:graph:) in conformance RemoteSheetContainerViewGraphFeature()
{
  PreferencesOutputs.subscript.getter();
  result = AGCreateWeakAttribute();
  *v0 = result;
  return result;
}

uint64_t sub_18BF089C0()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for StyleContextWriter<SheetStyleContext>, MEMORY[0x1E697F2A0], MEMORY[0x1E697F298], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>();
  type metadata accessor for ModifiedContent();
  v0 = MEMORY[0x1E69E6720];
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TintAdjustmentMode?>, &lazy cache variable for type metadata for TintAdjustmentMode?, MEMORY[0x1E697F510], MEMORY[0x1E69E6720]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v1 = MEMORY[0x1E6980A08];
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior, MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], v1);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, v1);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, v1);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, v0);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ResetFormEnvironmentModifier and conformance ResetFormEnvironmentModifier()
{
  result = lazy protocol witness table cache variable for type ResetFormEnvironmentModifier and conformance ResetFormEnvironmentModifier;
  if (!lazy protocol witness table cache variable for type ResetFormEnvironmentModifier and conformance ResetFormEnvironmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResetFormEnvironmentModifier and conformance ResetFormEnvironmentModifier);
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetSearchEnvironmentModifier()
{
  lazy protocol witness table accessor for type ResetSearchEnvironmentModifier and conformance ResetSearchEnvironmentModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ResetSearchEnvironmentModifier and conformance ResetSearchEnvironmentModifier()
{
  result = lazy protocol witness table cache variable for type ResetSearchEnvironmentModifier and conformance ResetSearchEnvironmentModifier;
  if (!lazy protocol witness table cache variable for type ResetSearchEnvironmentModifier and conformance ResetSearchEnvironmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResetSearchEnvironmentModifier and conformance ResetSearchEnvironmentModifier);
  }

  return result;
}

void type metadata accessor for _PreferenceWritingModifier<NavigationTransitionKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<NavigationTransitionKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<NavigationTransitionKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<NavigationTransitionKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationTransitionKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for Attribute<RemoteSheetContainerVCKey.Storage?>()
{
  if (!lazy cache variable for type metadata for Attribute<RemoteSheetContainerVCKey.Storage?>)
  {
    _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(255, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<RemoteSheetContainerVCKey.Storage?>);
    }
  }
}

uint64_t View.resetListStackBehavior()()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t View.clearNavigationContext()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, MEMORY[0x1E6980A08]);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  MEMORY[0x18D00A570](v9);
  swift_getKeyPath();
  LOBYTE(v16) = 0;
  v17 = a1;
  v18 = &protocol witness table for ClearNavigationContextModifier;
  WitnessTable = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  (*(v4 + 8))(v6, v3);
  swift_getKeyPath();
  v16 = -1;
  v13 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>();
  v15[1] = WitnessTable;
  v15[2] = v13;
  swift_getWitnessTable();
  View.environment<A>(_:_:)();

  return (*(v8 + 8))(v11, v7);
}

uint64_t static NavigationTransition<>.zoom<A>(sourceID:in:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = _convertToAnyHashable<A>(_:)();
  *a2 = a1;
  return result;
}

__n128 initializeWithCopy for _NavigationTransitionStyleOutputs(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    *a1 = *a2;
    v3 = *(a2 + 40);
    *(a1 + 32) = v2;
    *(a1 + 40) = v3;
    (**(v2 - 8))(a1 + 8, a2 + 8);
  }

  else
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    result = *(a2 + 32);
    *(a1 + 32) = result;
  }

  return result;
}

uint64_t destroy for _NavigationTransitionStyleOutputs(uint64_t result)
{
  if (*(result + 32))
  {
    return __swift_destroy_boxed_opaque_existential_1(result + 8);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedMenuIndicatorProminence>, &type metadata for ReducedMenuIndicatorProminence, &protocol witness table for ReducedMenuIndicatorProminence, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ReducedMenuIndicatorProminence> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized static ResetTabViewEnvironmentModifier.makeEnvironment(modifier:environment:)(uint64_t a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabBarPlacementKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TabBarPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TabBarPlacementKey>);

  PropertyList.subscript.setter();
  v2 = *(a1 + 8);
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Form<FormStyleConfiguration.Content>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static ResetSearchEnvironmentModifier.makeEnvironment(modifier:environment:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v4 == 4)
  {
    LOBYTE(v4) = 3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v1)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  LOBYTE(v4) = 7;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  *&v6 = 0;
  v4 = 0u;
  v5 = 0u;
  BYTE8(v6) = -1;
  outlined init with copy of CollectionOfOne<FocusStoreList.Item>(&v4, v3, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement, MEMORY[0x1E69E6720]);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of CollectionOfOne<FocusStoreList.Item>(&v4, &lazy cache variable for type metadata for ToolbarItemPlacement?, &type metadata for ToolbarItemPlacement, MEMORY[0x1E69E6720]);
  *&v4 = 0;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v4) = 0;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.IsSearchingKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v4) = 2;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  outlined init with copy of CollectionOfOne<FocusStoreList.Item>(&v4, v3, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFocusContextKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFocusContextKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of CollectionOfOne<FocusStoreList.Item>(&v4, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>);
  v4 = 0uLL;
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t outlined init with copy of CollectionOfOne<FocusStoreList.Item>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  _s7SwiftUI5StateVySbGMaTm_2(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of CollectionOfOne<FocusStoreList.Item>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI5StateVySbGMaTm_2(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unsigned __int8 *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ContainerBackgroundKeys.HostTransparency(unsigned __int8 *result, void *(*a2)(_BYTE *__return_ptr))
{
  if (*result >= 2u)
  {
    *&v5[17] = v2;
    *&v5[25] = v3;
    v4 = result;
    result = a2(v5);
    *v4 = v5[0];
  }

  return result;
}

void type metadata accessor for (PresentationOptionsPreference, ContainerBackgroundKeys.Transparency)()
{
  if (!lazy cache variable for type metadata for (PresentationOptionsPreference, ContainerBackgroundKeys.Transparency))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PresentationOptionsPreference, ContainerBackgroundKeys.Transparency));
    }
  }
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = __CocoaSet.count.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = __CocoaSet.count.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIBarButtonItem]();
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A], type metadata accessor for [UIBarButtonItem]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [NavigationDestinationResolverBase], type metadata accessor for NavigationDestinationResolverBase, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [NavigationDestinationResolverBase] and conformance [A], &lazy cache variable for type metadata for [NavigationDestinationResolverBase], type metadata accessor for NavigationDestinationResolverBase);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NavigationDestinationResolverBase();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIMenuElement]();
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIMenuElement] and conformance [A], type metadata accessor for [UIMenuElement]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [AccessibilityNode] and conformance [A], &lazy cache variable for type metadata for [AccessibilityNode], type metadata accessor for AccessibilityNode);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AccessibilityNode();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [DateSequenceTimeline], type metadata accessor for DateSequenceTimeline, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [DateSequenceTimeline] and conformance [A], &lazy cache variable for type metadata for [DateSequenceTimeline], type metadata accessor for DateSequenceTimeline);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DateSequenceTimeline();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIFocusItem]();
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIFocusItem] and conformance [A], type metadata accessor for [UIFocusItem]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusItem);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIView]();
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIView] and conformance [A], type metadata accessor for [UIView]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [NavigationPath_ItemBoxBase], type metadata accessor for NavigationPath_ItemBoxBase, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [NavigationPath_ItemBoxBase] and conformance [A], &lazy cache variable for type metadata for [NavigationPath_ItemBoxBase], type metadata accessor for NavigationPath_ItemBoxBase);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NavigationPath_ItemBoxBase();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [NSObject & PlatformAccessibilityElementProtocol], type metadata accessor for NSObject & PlatformAccessibilityElementProtocol, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [NSObject & PlatformAccessibilityElementProtocol] and conformance [A], &lazy cache variable for type metadata for [NSObject & PlatformAccessibilityElementProtocol], type metadata accessor for NSObject & PlatformAccessibilityElementProtocol);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIViewController]();
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIViewController] and conformance [A], type metadata accessor for [UIViewController]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = __CocoaSet.count.getter();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x1E697E600];
          _sSay7SwiftUI15AnyFontModifierCGMaTm_1(0, &lazy cache variable for type metadata for [AnyFontModifier], MEMORY[0x1E697E600], MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AccessibilityNode] and conformance [A](&lazy protocol witness table cache variable for type [AnyFontModifier] and conformance [A], &lazy cache variable for type metadata for [AnyFontModifier], v8);
          for (i = 0; i != v6; ++i)
          {
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AnyFontModifier();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [UIFocusEnvironment]();
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [UIFocusEnvironment] and conformance [A], type metadata accessor for [UIFocusEnvironment]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for UIFocusEnvironment);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [NSLayoutConstraint]();
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A], type metadata accessor for [NSLayoutConstraint]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [_UISceneSettingsDiffAction]();
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [_UISceneSettingsDiffAction] and conformance [A], type metadata accessor for [_UISceneSettingsDiffAction]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UISceneSettingsDiffAction);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for [_UISceneBSActionHandler]();
          lazy protocol witness table accessor for type [UIView] and conformance [A](&lazy protocol witness table cache variable for type [_UISceneBSActionHandler] and conformance [A], type metadata accessor for [_UISceneBSActionHandler]);
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UISceneBSActionHandler);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          type metadata accessor for WeakBox<EntityGestureResponder>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [ViewResponder] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ViewResponder();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void type metadata accessor for PresentationSizing?()
{
  if (!lazy cache variable for type metadata for PresentationSizing?)
  {
    type metadata accessor for PresentationSizing();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PresentationSizing?);
    }
  }
}

uint64_t outlined init with copy of PresentationSizing?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PresentationSizing?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PresentationOptionsPreference?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void _UIHostingView.setWantsTransparentBackground(for:_:)(int a1, char a2)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xA0);
  v4 = *(v2 + v3);
  if ((v4 & a1) != 0)
  {
    v5 = ~a1;
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v4;
  if ((v4 & a1) == a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1;
  }

  v8 = v7 | v4;
  if ((a2 & 1) == 0)
  {
    v8 = v6;
  }

  *(v2 + v3) = v8;
  _UIHostingView.transparentBackgroundReasons.didset(v4);
}

uint64_t specialized static PresentationState.Base.dismissedPresentations(from:to:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of PresentationState.Base(a1, &v101);
  outlined init with copy of PresentationState.Base(a2, v115);
  if (v114 == 4)
  {
    v3 = &v101;
LABEL_10:
    outlined destroy of SheetPreference(v3);
    v4 = v115;
LABEL_11:
    outlined destroy of PresentationState.Base(v4);
    return MEMORY[0x1E69E7CC0];
  }

  if (v114 == 8)
  {

    switch(v124)
    {
      case 2:
        outlined init with copy of PresentationState.Base(v115, v76);

        outlined init with copy of SheetPreference(&v101, &v95);
        outlined init with copy of SheetPreference(&v108, &v89);
        v87 = *&v76[72];
        v88[0] = *&v76[88];
        *(v88 + 10) = *&v76[98];
        v83 = *&v76[8];
        v84 = *&v76[24];
        v85 = *&v76[40];
        v86 = *&v76[56];
        if (*(&v96 + 1) != *(&v90 + 1) || *(&v96 + 1) != *(&v84 + 1))
        {
          goto LABEL_38;
        }

        break;
      case 8:
        outlined init with copy of PresentationState.Base(v115, v76);

        v99 = v105;
        v100[0] = v106[0];
        *(v100 + 10) = *(v106 + 10);
        v95 = v101;
        v96 = v102;
        v97 = v103;
        v98 = v104;
        v93 = *&v76[64];
        v94[0] = *&v76[80];
        *(v94 + 10) = *&v76[90];
        v89 = *v76;
        v90 = *&v76[16];
        v91 = *&v76[32];
        v92 = *&v76[48];
        v87 = v112;
        v88[0] = *v113;
        *(v88 + 10) = *&v113[10];
        v83 = v108;
        v84 = v109;
        v85 = v110;
        v86 = v111;
        v74[4] = v81;
        v75[0] = v82[0];
        *(v75 + 10) = *(v82 + 10);
        v74[0] = v77;
        v74[1] = v78;
        v74[2] = v79;
        v74[3] = v80;
        v12 = *&v76[24];
        v13 = *(&v78 + 1);
        v5 = MEMORY[0x1E69E7CC0];
        if (*(&v102 + 1) != *&v76[24] && *(&v96 + 1) != *(&v78 + 1))
        {
          outlined init with copy of SheetPreference(&v95, &v68);
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v15 = *(v5 + 16);
          v14 = *(v5 + 24);
          if (v15 >= v14 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
          }

          *(v5 + 16) = v15 + 1;
          v16 = (v5 + 112 * v15);
          v17 = v68;
          v18 = v70;
          v16[3] = v69;
          v16[4] = v18;
          v16[2] = v17;
          v19 = v71;
          v20 = v72;
          v21 = v73[0];
          *(v16 + 122) = *(v73 + 10);
          v16[6] = v20;
          v16[7] = v21;
          v16[5] = v19;
        }

        if (*(&v84 + 1) == v12 || *(&v84 + 1) == v13)
        {
          outlined destroy of SheetPreference(v74);
          outlined destroy of SheetPreference(&v83);
          outlined destroy of SheetPreference(&v89);
          v31 = &v95;
          goto LABEL_60;
        }

        outlined init with copy of SheetPreference(&v83, &v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
        }

        v23 = *(v5 + 16);
        v22 = *(v5 + 24);
        if (v23 >= v22 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
        }

        outlined destroy of SheetPreference(v74);
        outlined destroy of SheetPreference(&v83);
        outlined destroy of SheetPreference(&v89);
        outlined destroy of SheetPreference(&v95);
        *(v5 + 16) = v23 + 1;
        v24 = (v5 + 112 * v23);
        v26 = v69;
        v25 = v70;
        v24[2] = v68;
        v24[3] = v26;
        v24[4] = v25;
        v28 = v72;
        v27 = v73[0];
        v29 = *(v73 + 10);
        v30 = v71;
        goto LABEL_58;
      case 11:
        outlined init with copy of PresentationState.Base(v115, v76);
        outlined init with copy of SheetPreference(&v101, &v95);
        v93 = *&v76[64];
        v94[0] = *&v76[80];
        *(v94 + 10) = *&v76[90];
        v89 = *v76;
        v90 = *&v76[16];
        v91 = *&v76[32];
        v92 = *&v76[48];
        outlined init with copy of SheetPreference(&v108, &v83);
        if (*(&v96 + 1) != *(&v84 + 1) || *(&v96 + 1) != *(&v90 + 1))
        {
LABEL_38:
          outlined destroy of SheetPreference(&v83);
          outlined destroy of SheetPreference(&v89);
          outlined destroy of SheetPreference(&v95);
          goto LABEL_39;
        }

        break;
      default:
LABEL_39:
        *&v76[64] = v105;
        *&v76[80] = v106[0];
        *&v76[90] = *(v106 + 10);
        *v76 = v101;
        *&v76[16] = v102;
        *&v76[32] = v103;
        *&v76[48] = v104;
        v99 = v112;
        v100[0] = *v113;
        *(v100 + 10) = *&v113[10];
        v95 = v108;
        v96 = v109;
        v97 = v110;
        v98 = v111;
        PresentationState.Base.lastPresentation.getter(&v89);
        v32 = v89;
        if (v89)
        {
          v33 = *(&v90 + 1);
          outlined destroy of SheetPreference(&v89);
          v34 = *&v76[24];
          if (*&v76[24] == v33)
          {
            v5 = MEMORY[0x1E69E7CC0];
            v35 = *(&v96 + 1);
            v34 = v33;
            goto LABEL_48;
          }
        }

        else
        {
          _ss11AnyHashableVSgWOhTm_3(&v89, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
          v33 = 0;
          v34 = *&v76[24];
        }

        outlined init with copy of SheetPreference(v76, &v89);
        v5 = MEMORY[0x1E69E7CC0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
        }

        v36 = *(v5 + 16);
        v37 = *(v5 + 24);
        v38 = v36 + 1;
        if (v36 >= v37 >> 1)
        {
          v65 = v5;
          v66 = *(v5 + 16);
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v36 + 1, 1, v65);
          v36 = v66;
          v5 = v67;
        }

        *(v5 + 16) = v38;
        v39 = (v5 + 112 * v36);
        v40 = v89;
        v41 = v91;
        v39[3] = v90;
        v39[4] = v41;
        v39[2] = v40;
        v42 = v92;
        v43 = v93;
        v44 = v94[0];
        *(v39 + 122) = *(v94 + 10);
        v39[6] = v43;
        v39[7] = v44;
        v39[5] = v42;
        v35 = *(&v96 + 1);
        if (!v32)
        {
LABEL_49:
          if (v35 == v34)
          {
            goto LABEL_50;
          }

          outlined init with copy of SheetPreference(&v95, &v89);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
          }

          v48 = *(v5 + 16);
          v47 = *(v5 + 24);
          if (v48 >= v47 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v5);
          }

          outlined destroy of SheetPreference(&v95);
          outlined destroy of SheetPreference(v76);
          *(v5 + 16) = v48 + 1;
          v24 = (v5 + 112 * v48);
          v50 = v90;
          v49 = v91;
          v24[2] = v89;
          v24[3] = v50;
          v24[4] = v49;
          v28 = v93;
          v27 = v94[0];
          v29 = *(v94 + 10);
          v30 = v92;
LABEL_58:
          *(v24 + 122) = v29;
          v24[6] = v28;
          v24[7] = v27;
          v24[5] = v30;
LABEL_61:
          v51 = v115;
LABEL_70:
          outlined destroy of PresentationState.Base(v51);
          return v5;
        }

LABEL_48:
        if (v35 == v33)
        {
LABEL_50:
          outlined destroy of SheetPreference(&v95);
          v31 = v76;
          goto LABEL_60;
        }

        goto LABEL_49;
    }

    type metadata accessor for SheetPreference?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SheetPreference>, &type metadata for SheetPreference, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18CD63400;
    outlined init with copy of SheetPreference(&v95, v5 + 32);
    outlined destroy of SheetPreference(&v83);
    outlined destroy of SheetPreference(&v89);
    outlined destroy of SheetPreference(&v95);
    outlined destroy of SheetPreference(&v108);
    v31 = &v101;
LABEL_60:
    outlined destroy of SheetPreference(v31);
    goto LABEL_61;
  }

  if (v124 == 3)
  {

    PresentationState.Base.lastPresentation.getter(v76);
    outlined init with copy of SheetPreference?(v76, &v95, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    if (v95)
    {
      type metadata accessor for SheetPreference?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SheetPreference>, &type metadata for SheetPreference, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      v7 = v99;
      v8 = v100[0];
      v9 = v97;
      *(v5 + 80) = v98;
      *(v5 + 96) = v7;
      *(v5 + 112) = v8;
      *(v5 + 122) = *(v100 + 10);
      v10 = v95;
      v11 = v96;
      *(v5 + 16) = xmmword_18CD63400;
      *(v5 + 32) = v10;
      *(v5 + 48) = v11;
      *(v5 + 64) = v9;
      _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    }

    else
    {
      _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      v5 = MEMORY[0x1E69E7CC0];
    }

    v57 = v115 + 8;
    goto LABEL_69;
  }

  if (v124 == 8)
  {

    *&v76[64] = v115[4];
    *&v76[80] = v116[0];
    *&v76[90] = *(v116 + 10);
    *v76 = v115[0];
    *&v76[16] = v115[1];
    *&v76[32] = v115[2];
    *&v76[48] = v115[3];
    v99 = v122;
    v100[0] = *v123;
    *(v100 + 10) = *&v123[10];
    v95 = v118;
    v96 = v119;
    v97 = v120;
    v98 = v121;
    PresentationState.Base.lastPresentation.getter(&v89);
    if (v89)
    {
      v6 = *(&v90 + 1);
      outlined destroy of SheetPreference(&v89);
      if (v6 == *&v76[24] || v6 == *(&v96 + 1))
      {
        outlined destroy of SheetPreference(&v95);
        outlined destroy of SheetPreference(v76);
        v4 = &v101;
        goto LABEL_11;
      }
    }

    else
    {
      _ss11AnyHashableVSgWOhTm_3(&v89, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    }

    PresentationState.Base.lastPresentation.getter(&v89);
    outlined init with copy of SheetPreference?(&v89, &v83, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    if (v83)
    {
      type metadata accessor for SheetPreference?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SheetPreference>, &type metadata for SheetPreference, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      v52 = v87;
      v53 = v88[0];
      v54 = v85;
      *(v5 + 80) = v86;
      *(v5 + 96) = v52;
      *(v5 + 112) = v53;
      *(v5 + 122) = *(v88 + 10);
      v55 = v83;
      v56 = v84;
      *(v5 + 16) = xmmword_18CD63400;
      *(v5 + 32) = v55;
      *(v5 + 48) = v56;
      *(v5 + 64) = v54;
      _ss11AnyHashableVSgWOhTm_3(&v89, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    }

    else
    {
      _ss11AnyHashableVSgWOhTm_3(&v89, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
      v5 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of SheetPreference(&v95);
    v57 = v76;
LABEL_69:
    outlined destroy of SheetPreference(v57);
    v51 = &v101;
    goto LABEL_70;
  }

  if (v114 == 3)
  {

    v3 = &v101 + 8;
    goto LABEL_10;
  }

  PresentationState.Base.lastPresentation.getter(v76);
  v45 = *v76;
  if (*v76)
  {
    v46 = *&v76[24];
    outlined destroy of SheetPreference(v76);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    v46 = 0;
  }

  PresentationState.Base.lastPresentation.getter(v76);
  if (*v76)
  {
    v59 = *&v76[24];
    outlined destroy of SheetPreference(v76);
    if (v45 && v46 == v59)
    {
      goto LABEL_76;
    }
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    if (!v45)
    {
LABEL_76:
      _s2os6LoggerVSgWOhTm_1(&v101, type metadata accessor for (PresentationState.Base, PresentationState.Base));
      return MEMORY[0x1E69E7CC0];
    }
  }

  PresentationState.Base.lastPresentation.getter(v76);
  outlined init with copy of SheetPreference?(v76, &v95, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  if (v95)
  {
    type metadata accessor for SheetPreference?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SheetPreference>, &type metadata for SheetPreference, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    v60 = v99;
    v61 = v100[0];
    v62 = v97;
    *(v5 + 80) = v98;
    *(v5 + 96) = v60;
    *(v5 + 112) = v61;
    *(v5 + 122) = *(v100 + 10);
    v63 = v95;
    v64 = v96;
    *(v5 + 16) = xmmword_18CD63400;
    *(v5 + 32) = v63;
    *(v5 + 48) = v64;
    *(v5 + 64) = v62;
    _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(v76, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    v5 = MEMORY[0x1E69E7CC0];
  }

  _s2os6LoggerVSgWOhTm_1(&v101, type metadata accessor for (PresentationState.Base, PresentationState.Base));
  return v5;
}

double PresentationState.Base.lastPresentation.getter@<D0>(_OWORD *a1@<X8>)
{
  outlined init with copy of PresentationState.Base(v1, v13);
  if (v20 > 6u)
  {
    if (v20 > 9u)
    {
      if (v20 == 10)
      {
LABEL_20:
        outlined destroy of SheetPreference(v13);
        goto LABEL_21;
      }

      if (v20 == 11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v20 != 7)
      {
        if (v20 == 8)
        {

          v25 = v18;
          v26[0] = *v19;
          *(v26 + 10) = *&v19[10];
          v21 = v14;
          v22 = v15;
          v23 = v16;
          v24 = v17;
          outlined destroy of SheetPreference(v13);
LABEL_17:
          v10 = v26[0];
          a1[4] = v25;
          a1[5] = v10;
          *(a1 + 90) = *(v26 + 10);
          v11 = v22;
          *a1 = v21;
          a1[1] = v11;
          v5 = v24;
          a1[2] = v23;
          a1[3] = v5;
          return *&v5;
        }

        goto LABEL_20;
      }

      outlined destroy of PresentationState.Base(v13);
    }

LABEL_21:
    *&v5 = 0;
    *(a1 + 90) = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    return *&v5;
  }

  if (v20 > 3u)
  {
    if (v20 == 4)
    {
      v25 = *&v13[64];
      v26[0] = *&v13[80];
      *(v26 + 10) = *&v13[90];
      v21 = *v13;
      v22 = *&v13[16];
      v4 = *&v13[32];
      v3 = *&v13[48];
      goto LABEL_16;
    }

    if (v20 != 5)
    {
      goto LABEL_14;
    }

LABEL_11:

    v3 = *&v13[56];
    v25 = *&v13[72];
    v26[0] = *&v13[88];
    *(v26 + 10) = *&v13[98];
    v21 = *&v13[8];
    v22 = *&v13[24];
    v4 = *&v13[40];
LABEL_16:
    v23 = v4;
    v24 = v3;
    goto LABEL_17;
  }

  if (v20 >= 2u)
  {
    goto LABEL_11;
  }

LABEL_14:
  *(v26 + 10) = *&v13[90];
  v25 = *&v13[64];
  v26[0] = *&v13[80];
  v5 = *v13;
  v6 = *&v13[16];
  v21 = *v13;
  v22 = *&v13[16];
  v8 = *&v13[32];
  v7 = *&v13[48];
  v23 = *&v13[32];
  v24 = *&v13[48];
  v9 = *&v13[80];
  a1[4] = *&v13[64];
  a1[5] = v9;
  *(a1 + 90) = *(v26 + 10);
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v7;
  return *&v5;
}

uint64_t outlined init with copy of SheetPreference?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for SheetPreference?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void specialized RootViewDelegate.updateAppFocus<A>(view:)(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = _UIHostingView.sceneActivationState.getter();
  v4 = specialized Sequence<>.contains(_:)(v2, v3 & 1, &outlined read-only object #0 of RootViewDelegate.updateAppFocus<A>(view:));
  v5 = [a1 window];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 windowScene];

    if (v7)
    {
      v8 = [v7 _isKeyWindowScene];

      if (v4 & v8)
      {
        _UIHostingView.focusedValues.getter(&v32);
        v9 = v32;
        v11 = v34;
        v10 = v35;
        v30 = v33;
        v31 = v32;
        if (!static AppGraph.shared || (, Value = AGGraphGetValue(), v13 = *Value, v14 = Value[3], , , v13 == 1))
        {
          if (v9 != 1)
          {

            v13 = 1;
            goto LABEL_11;
          }

          v15 = 1;
        }

        else
        {
          if (v9 == 1)
          {

            outlined copy of Transaction?(v13);

LABEL_11:
            outlined consume of ListItemTint?(v13);
            outlined consume of ListItemTint?(v9);
            LODWORD(v9) = 0;
            goto LABEL_14;
          }

          outlined copy of Transaction?(v13);
          outlined consume of ListItemTint?(v9);

          LODWORD(v9) = v14 == v10;
          v15 = v13;
        }

        outlined consume of ListItemTint?(v15);
LABEL_14:
        v16 = specialized _UIHostingView.focusBridge.getter();
        swift_beginAccess();
        v17 = v16[6];
        v18 = v16[7];
        v19 = v16[8];
        if (static AppGraph.shared)
        {
          v20 = v10;
          v21 = v11;

          v22 = AGGraphGetValue();
          v23 = *v22;
          v24 = v22[1];

          if (v24)
          {
            if (v18)
            {

              outlined copy of FocusStore?(v23, v24);
              outlined consume of FocusStore?(v17, v18);

              outlined consume of FocusStore?(v23, v24);
              if (v23 == v17)
              {
                v25 = v9;
              }

              else
              {
                v25 = 0;
              }

              v11 = v21;
              v10 = v20;
              if (v25)
              {
                goto LABEL_26;
              }

              goto LABEL_29;
            }

            outlined copy of FocusStore?(v23, v24);

LABEL_28:
            outlined consume of FocusStore?(v23, v24);
            outlined consume of FocusStore?(v17, v18);
            v11 = v21;
            v10 = v20;
            goto LABEL_29;
          }

          v11 = v21;
          v10 = v20;
          if (!v18)
          {
LABEL_25:

            outlined consume of FocusStore?(v23, 0);
            if (v9)
            {
LABEL_26:

LABEL_38:

              return;
            }

LABEL_29:
            if (static AppGraph.shared)
            {
              v32 = v31;
              LOBYTE(v33) = v30;
              v34 = v11;
              v35 = v10;

              v26 = AGGraphSetValue();
              v32 = v17;
              v33 = v18;
              v34 = v19;
              v27 = AGGraphSetValue();
              if ((v26 & 1) != 0 || v27)
              {
                AppGraph.graphDidChange()();
              }
            }

            else
            {
            }

            if (static AppDelegate.shared)
            {
              v28 = *(static AppDelegate.shared + OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController);
              if (v28)
              {
                v29 = v28;
                UIKitMainMenuController.commandsDidChange()();
              }
            }

            goto LABEL_38;
          }
        }

        else
        {

          v23 = 0;
          if (!v18)
          {
            goto LABEL_25;
          }
        }

        v20 = v10;
        v21 = v11;

        v24 = 0;
        goto LABEL_28;
      }
    }
  }
}

void closure #3 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(uint64_t a1, char a2, void *a3, char a4, int a5, void *a6)
{
  swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v12 + v13, &aBlock);
    v40 = v54;
    *v41 = v55[0];
    *&v41[11] = *(v55 + 11);
    v36 = v50;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v34[4] = v46;
    v34[5] = v47;
    v34[6] = v48;
    v35 = v49;
    v34[0] = aBlock;
    v34[1] = v43;
    v34[2] = v44;
    v34[3] = v45;
    if (BYTE10(v55[1]) > 1u)
    {

      outlined destroy of PresentationState.Base(v34);
      return;
    }

    outlined destroy of SheetPreference(v34);
    if ((a2 & 1) == 0)
    {
      v14 = [a3 presentedViewController];
      if (v14)
      {
        v15 = v14;
        if (([v14 isBeingDismissed] & 1) == 0)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v16 = [v15 preferredTransition];
            if (v16)
            {

              v17 = swift_dynamicCastClass();
              if (v17)
              {
                v18 = v17;
                v19 = swift_unknownObjectWeakLoadStrong();
                if (v19)
                {
                  v20 = v19;
                  v21 = v15;
                  v22 = [v20 window];
                  if (v22)
                  {
                    v23 = v22;

                    v20 = v23;
                  }

                  else
                  {
                    [v18 setPreferredTransition_];
                  }
                }
              }
            }

            [a3 dismissViewControllerAnimated:a4 & 1 completion:0];
          }
        }
      }
    }

    v24 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v12 + v24, &aBlock);
    PresentationState.Base.presentationSeed.getter(&v32);
    outlined destroy of PresentationState(&aBlock);
    if (v33 == 1 || v32 == -1 || a5 == -1 || v32 != a5)
    {
      goto LABEL_23;
    }

    if (a4)
    {
      [a3 presentViewController:a6 animated:1 completion:0];
LABEL_23:

      return;
    }

    v25 = objc_opt_self();
    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    *(v26 + 24) = a6;
    v27 = swift_allocObject();
    *(v27 + 16) = partial apply for closure #1 in closure #3 in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:);
    *(v27 + 24) = v26;
    *&v44 = partial apply for thunk for @callee_guaranteed () -> ();
    *(&v44 + 1) = v27;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v43 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v43 + 1) = &block_descriptor_17;
    v28 = _Block_copy(&aBlock);
    v29 = a3;
    v30 = a6;

    [v25 _performWithoutDeferringTransitions_];

    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_18BF0BCB4()
{

  return swift_deallocObject();
}

uint64_t PresentationState.Base.presentationSeed.getter@<X0>(uint64_t a1@<X8>)
{
  result = outlined init with copy of PresentationState.Base(v1, &v7);
  if (v12 > 6u)
  {
    if (v12 > 9u)
    {
      if (v12 == 10)
      {
        goto LABEL_15;
      }

      if (v12 != 11)
      {
LABEL_17:
        v4 = 0;
        v5 = 1;
        goto LABEL_18;
      }
    }

    else if (v12 != 7)
    {
      if (v12 == 8)
      {

        outlined destroy of SheetPreference(&v11);
      }

      else
      {
      }

      goto LABEL_15;
    }

    result = outlined destroy of PresentationState.Base(&v7);
    goto LABEL_17;
  }

  if (v12 > 3u)
  {
    if (v12 == 5)
    {
      goto LABEL_10;
    }

LABEL_15:
    v6 = &v7;
    goto LABEL_16;
  }

  if (v12 >= 2u)
  {
LABEL_10:

    v6 = &v8;
LABEL_16:
    result = outlined destroy of SheetPreference(v6);
    goto LABEL_17;
  }

  v4 = v10;
  result = outlined destroy of SheetPreference(&v7);
  v5 = 0;
LABEL_18:
  *a1 = v4;
  *(a1 + 4) = v5;
  return result;
}

uint64_t @objc SheetBridge.adaptivePresentationStyle(for:traitCollection:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = specialized SheetBridge.adaptivePresentationStyle(for:traitCollection:)(v7);

  return v9;
}

id @objc PresentationHostingController._remoteSheet.getter(void *a1)
{
  v1 = a1;
  v2 = PresentationHostingController._remoteSheet.getter();

  return v2;
}

uint64_t closure #1 in PresentationHostingController._remoteSheet.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemoteSheetContainerVCKey.Storage?(0, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage, MEMORY[0x1E69E6720]);
  result = AGGraphGetValue();
  if (*(result + 8) == 255)
  {
    v3 = 0;
  }

  else
  {
    outlined init with copy of RemoteSheetContainerVCKey.Storage(result, v4);
    v3 = RemoteSheetContainerVCKey.Storage.remoteSheet.getter();
    result = outlined destroy of RemoteSheetContainerVCKey.Storage(v4);
  }

  *a1 = v3;
  return result;
}

uint64_t outlined init with take of RemoteSheetContainerVCKey.Storage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t RemoteSheetContainerVCWriter.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewLeafView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  v20 = v1;
  ViewResponderFilter.view.getter(v6);
  ViewLeafView.representedViewProvider.getter();
  (*(v4 + 8))(v6, v3);
  *a1 = 0;
  *(a1 + 8) = -1;
  v16 = *(v8 + 16);
  v16(v12, v15, AssociatedTypeWitness);
  type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UIRemoteSheetContaining);
  if (swift_dynamicCast())
  {
    outlined destroy of RemoteSheetContainerVCKey.Storage?(a1, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(a1 + 8) = 0;
  }

  else
  {
    v16(v19, v15, AssociatedTypeWitness);
    type metadata accessor for _UISceneBSActionHandler(0, &lazy cache variable for type metadata for _UIRemoteViewControllerContaining);
    if (swift_dynamicCast())
    {
      outlined destroy of RemoteSheetContainerVCKey.Storage?(a1, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(a1 + 8) = 1;
    }
  }

  outlined init with copy of FocusGroupIdentifier?(a1, &v22, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
  if (v23 == 255)
  {
    (*(v8 + 8))(v15, AssociatedTypeWitness);
    return outlined destroy of RemoteSheetContainerVCKey.Storage?(&v22, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
  }

  else
  {
    outlined destroy of RemoteSheetContainerVCKey.Storage?(&v22, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
    if (swift_weakLoadStrong())
    {
      v22 = AGCreateWeakAttribute();
      v21 = 1;
      lazy protocol witness table accessor for type EnableTransparentBackgroundMutation and conformance EnableTransparentBackgroundMutation();
      default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
      GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    }

    return (*(v8 + 8))(v15, AssociatedTypeWitness);
  }
}

uint64_t View.alert(isPresented:content:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(__int128 *__return_ptr, void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v45 = a1;
  *(&v45 + 1) = a2;
  LOBYTE(v46) = a3;
  v12 = a3 & 1;
  _ss11AnyHashableVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v13 = MEMORY[0x18D00ACC0](&v33);
  if (v33 == 1)
  {
    a4(&v33, v13);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v33, v14, v15, v16);
    v53 = v41;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v36;
  }

  else
  {
    _s7SwiftUI5AlertVSgWOi0_(&v45);
  }

  v29 = v53;
  v30 = v54;
  v31 = v55;
  v32 = v56;
  v25 = v49;
  v26 = v50;
  v27 = v51;
  v28 = v52;
  v21 = v45;
  v22 = v46;
  v23 = v47;
  v24 = v48;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = v12;
  v20 = 0;
  memset(v19, 0, sizeof(v19));

  View.presentationCommon(_:onDismiss:id:)(&v21, partial apply for closure #1 in View.actionSheet(isPresented:content:), v17, v19, a6, a7);

  _ss11AnyHashableVSgWOhTm_0(v19, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  return _ss11AnyHashableVSgWOhTm_0(&v33, &lazy cache variable for type metadata for Alert?, &type metadata for Alert);
}

uint64_t sub_18BF0C66C()
{

  return swift_deallocObject();
}

uint64_t View.presentationCommon(_:onDismiss:id:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[9];
  v35 = a1[8];
  v36 = v10;
  v37 = a1[10];
  v38 = *(a1 + 176);
  v11 = a1[5];
  v31 = a1[4];
  v32 = v11;
  v12 = a1[7];
  v33 = a1[6];
  v34 = v12;
  v13 = a1[1];
  v27 = *a1;
  v28 = v13;
  v14 = a1[3];
  v29 = a1[2];
  v30 = v14;
  _ss11AnyHashableVSgWOcTm_1(a4, v24, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  v15 = swift_allocObject();
  v16 = v36;
  *(v15 + 144) = v35;
  *(v15 + 160) = v16;
  *(v15 + 176) = v37;
  v17 = v32;
  *(v15 + 80) = v31;
  *(v15 + 96) = v17;
  v18 = v34;
  *(v15 + 112) = v33;
  *(v15 + 128) = v18;
  v19 = v28;
  *(v15 + 16) = v27;
  *(v15 + 32) = v19;
  v20 = v30;
  *(v15 + 48) = v29;
  *(v15 + 64) = v20;
  v21 = v24[1];
  *(v15 + 216) = v24[0];
  *(v15 + 192) = v38;
  *(v15 + 200) = a2;
  *(v15 + 208) = a3;
  *(v15 + 232) = v21;
  *(v15 + 248) = v25;
  v26[0] = partial apply for closure #1 in View.presentationCommon(_:onDismiss:id:);
  v26[1] = v15;
  _ss11AnyHashableVSgWOcTm_1(&v27, v24, &lazy cache variable for type metadata for Alert?, &type metadata for Alert);
  outlined copy of AppIntentExecutor?(a2);
  type metadata accessor for AlertTransformModifier<Alert.Presentation.Key>();
  MEMORY[0x18D00A570](v26, a5, v22, a6);
}

{
  v10 = a1[2];
  v25 = a1[3];
  v26 = *(a1 + 8);
  v11 = *a1;
  v23 = a1[1];
  v24 = v10;
  v22 = v11;
  v12 = MEMORY[0x1E69E6720];
  _ss11AnyHashableVSgWOcTm_0(a4, v19, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  v13 = swift_allocObject();
  v14 = v23;
  v15 = v25;
  *(v13 + 48) = v24;
  *(v13 + 64) = v15;
  *(v13 + 16) = v22;
  *(v13 + 32) = v14;
  v16 = v19[1];
  *(v13 + 104) = v19[0];
  *(v13 + 80) = v26;
  *(v13 + 88) = a2;
  *(v13 + 96) = a3;
  *(v13 + 120) = v16;
  *(v13 + 136) = v20;
  v21[0] = partial apply for closure #1 in View.presentationCommon(_:onDismiss:id:);
  v21[1] = v13;
  _ss11AnyHashableVSgWOcTm_0(&v22, v19, &lazy cache variable for type metadata for ActionSheet?, &type metadata for ActionSheet, v12);
  outlined copy of AppIntentExecutor?(a2);
  type metadata accessor for AlertTransformModifier<ActionSheet.Presentation.Key>();
  MEMORY[0x18D00A570](v21, a5, v17, a6);
}

uint64_t sub_18BF0C828()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    if (*(v0 + 72))
    {
      outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
    }

    outlined consume of Text.Storage(*(v0 + 88), *(v0 + 96), *(v0 + 104));

    if (*(v0 + 120))
    {
    }

    if (*(v0 + 168))
    {
      outlined consume of Text.Storage(*(v0 + 144), *(v0 + 152), *(v0 + 160));

      if (*(v0 + 176))
      {
      }
    }
  }

  if (*(v0 + 200))
  {
  }

  if (*(v0 + 240))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  }

  return swift_deallocObject();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AlertTransformModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ScrollBehaviorModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t closure #2 in static ScrollBehaviorModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v5 = HIDWORD(a3);
  v14[0] = a2 & 1;
  v15 = HIDWORD(a2);
  v6 = type metadata accessor for ScrollBehaviorModifier.LayoutRoleFilter();
  v20 = v6;
  WitnessTable = swift_getWitnessTable();
  v21 = WitnessTable;
  type metadata accessor for Attribute<[ScrollableCollection]>();
  v9 = v8;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, closure #1 in Attribute.init<A>(_:)partial apply, v19, v6, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v10);
  type metadata accessor for ScrollBehaviorModifier.ScrollBehaviorProvider();
  *(a1 + 4) = v13;
  v14[0] = v3 & 1;
  v15 = v5;
  v17 = v6;
  v18 = WitnessTable;
  result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, closure #1 in Attribute.init<A>(_:)partial apply, v16, v6, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v11);
  *(a1 + 8) = v13;
  return result;
}

double ScrollViewChildTransform.value.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v56 = *v1;
  v57 = v2;
  v58 = v1[2];
  v59 = *(v1 + 6);
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  *&v53 = *Value;
  *(&v53 + 1) = v4;
  v5 = *(Value + 32);
  v54 = *(Value + 16);
  v55 = v5;

  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  AGGraphGetValue();
  AGGraphGetValue();
  EdgeInsets.adding(_:)();
  AGGraphGetValue();
  EdgeInsets.adding(_:)();
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  v6 = lazy protocol witness table accessor for type ScrollViewChildTransform and conformance ScrollViewChildTransform();
  MEMORY[0x18D000B90](&unk_1EFF89548, MEMORY[0x1E69E6370], v6);
  Rule.withObservation<A>(observationCenter:do:)();

  AGGraphGetValue();
  v7 = AGGraphGetValue();
  outlined init with copy of ScrollViewConfiguration(v7, &v45);
  static Edge.Set.all.getter();
  v8 = v45;
  if (v45)
  {
    static Edge.Set.horizontal.getter();
    if ((v8 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v45 & 2) != 0)
  {
LABEL_5:
    static Edge.Set.vertical.getter();
  }

LABEL_6:
  outlined destroy of ScrollViewConfiguration(&v45);
  v9 = EdgeInsets.in(_:)();
  v49 = v10;
  v50 = v11;
  v51 = v12;
  v52 = v13;
  MEMORY[0x1EEE9AC00](v9);
  EdgeInsets.xFlipIfRightToLeft(layoutDirection:)();
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v15 = *v14;
  v16 = v14[1];
  type metadata accessor for CGSize(0);
  v17 = AGGraphGetValue();
  v18 = v15 + *v17;
  v19 = v16 + v17[1];
  EdgeInsets.originOffset.getter();
  v21 = v18 - v20;
  v23 = v19 - v22;
  v24 = AGGraphGetValue();
  v25 = v24[1];
  v45 = *v24;
  v46 = v25;
  v47 = v24[2];
  ViewFrame.origin.getter();
  ViewTransform.resetPosition(_:)(__PAIR128__(v23 + v27, v21 + v26));
  v28 = AGGraphGetValue();
  MEMORY[0x1EEE9AC00](v28);
  EdgeInsets.xFlipIfRightToLeft(layoutDirection:)();
  CGSize.outset(by:)();
  type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    *&v45 = v59;
    ViewTransform.appendSizedSpace(id:size:)();
    v29 = AGGraphGetValue();
    ViewTransform.appendPosition(_:)(*v29);
  }

  static Semantics.v6.getter();
  isLinkedOnOrAfter(_:)();
  v30 = AGGraphGetValue();
  MEMORY[0x18D00B390](v30, v31);
  static ScrollGeometry.viewTransform(contentInsets:contentSize:containerSize:)();
  ViewTransform.UnsafeBuffer.appendScrollGeometry(_:isClipped:)();
  static ScrollCoordinateSpace.all.getter();
  ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)();
  AGGraphGetValue();
  if (Axis.Set.contains(_:)())
  {
    static ScrollCoordinateSpace.horizontal.getter();
    ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)();
  }

  AGGraphGetValue();
  if (Axis.Set.contains(_:)())
  {
    static ScrollCoordinateSpace.vertical.getter();
    ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)();
  }

  v32 = AGGraphGetValue();
  v33 = *v32;
  v34 = v32[1];
  v35 = AGGraphGetValue();
  ViewTransform.UnsafeBuffer.appendTranslation(_:)(__PAIR128__(v34 + *(v35 + 88), v33 + *(v35 + 80)));
  static ScrollCoordinateSpace.content.getter();
  v36 = AGGraphGetValue();
  v37 = *(v36 + 32);
  v45 = *(v36 + 16);
  v46 = v37;
  MEMORY[0x18D00B390](v36, v38);
  ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)();
  if (static SemanticFeature.isEnabled.getter())
  {
    v39 = AGGraphGetValue();
    width = v39->width;
    height = v39->height;
    ViewTransform.UnsafeBuffer.appendTranslation(_:)(*v39);
    static ScrollCoordinateSpace.safeArea.getter();
    ViewTransform.UnsafeBuffer.appendSizedSpace(id:size:transform:)();
    ViewTransform.UnsafeBuffer.appendTranslation(_:)(__PAIR128__(-height, -width));
  }

  static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace.getter();
  ViewTransform.UnsafeBuffer.appendCoordinateSpace(id:transform:)();
  ViewTransform.append(movingContentsOf:)();
  v42 = v54;
  *a1 = v53;
  a1[1] = v42;
  result = *&v55;
  a1[2] = v55;
  return result;
}

uint64_t outlined init with copy of CoordinateSpaceNameModifier(__int128 *a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = *a1;
    v4 = a1[1];
    *(a2 + 25) = *(a1 + 25);
    *a2 = v3;
    *(a2 + 16) = v4;
  }

  else
  {
    v5 = *(a1 + 24);
    *(a2 + 24) = v5;
    (**(v5 - 8))(a2);
    *(a2 + 40) = 0;
  }

  return a2;
}

uint64_t View.scrollTargetLayout(isEnabled:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v5 = v3;
  return MEMORY[0x18D00A570](&v5, a2, &type metadata for ScrollTargetModifier, a3);
}

void SceneBridge.preferencesDidChange(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v4);
  *&v30 = *a1;
  v5 = v30;
  SceneBridge.userActivityPreferencesDidChange(_:)(&v30);
  *&v30 = v5;
  SceneBridge.activationConditionsPreferencesDidChange(_:)(&v30);
  swift_beginAccess();
  *&v24[0] = v5;
  PreferenceValues.subscript.getter();
  v6 = *(v2 + 40);
  if (v6 == -1 || v27 == -1 || v6 != v27)
  {
    *(v2 + 40) = v27;
    *(v2 + 48) = v26;
  }

  swift_endAccess();
  swift_beginAccess();
  *&v26 = v5;
  PreferenceValues.subscript.getter();
  v7 = *(v2 + 64);
  if (v7 == -1 || *&v32[28] == -1 || v7 != *&v32[28])
  {
    *(v2 + 64) = *&v32[28];
    v22[0] = v30;
    v22[1] = v31;
    v23[0] = *v32;
    *(v23 + 9) = *&v32[9];
    v19 = v30;
    v20 = v31;
    v21[0] = *v32;
    *(v21 + 9) = *&v32[9];
    outlined init with copy of (String, TabEntry)(v22, &v26, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720], type metadata accessor for PredicateExpressions.Variable<String>);
    closure #2 in SceneBridge.preferencesDidChange(_:)(&v19);
    v24[0] = v19;
    v24[1] = v20;
    v25[0] = v21[0];
    *(v25 + 9) = *(v21 + 9);
    outlined destroy of NavigationTitleStorage?(v24);
  }

  v26 = v30;
  v27 = v31;
  v28 = *v32;
  v29 = *&v32[16];
  outlined destroy of Predicate<Pack{String}>?(&v26, type metadata accessor for PreferenceValues.Value<NavigationTitleStorage?>);
  swift_endAccess();
  swift_beginAccess();
  *&v24[0] = v5;
  PreferenceValues.subscript.getter();
  v8 = *(v2 + 68);
  if (v8 == -1 || DWORD1(v26) == -1 || v8 != DWORD1(v26))
  {
    *(v2 + 68) = DWORD1(v26);
    v9 = v26;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      if (v9 == 2)
      {
        type metadata accessor for UITraitUserInterfaceStyle();
        UIWindowScene.traitOverrides.getter();
        UITraitOverrides.remove(_:)();
      }

      else
      {
        UIWindowScene.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
      }

      UIWindowScene.traitOverrides.setter();
    }
  }

  swift_endAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 _isKeyWindowScene];

    if (v14)
    {
      if (static AppDelegate.shared)
      {
        v15 = *(static AppDelegate.shared + OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController);
        if (v15)
        {
          *&v24[0] = v5;
          v16 = v15;
          PreferenceValues.subscript.getter();
          v17 = v26;
          v18 = OBJC_IVAR____TtC7SwiftUI23UIKitMainMenuController_currentResponderCommands;
          swift_beginAccess();
          *&v16[v18] = v17;
        }
      }
    }
  }
}

void SceneBridge.userActivityPreferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v59 = *a1;
  PreferenceValues.subscript.getter();
  v3 = v55;
  v4 = v56;
  v5 = v57;
  v6 = v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityPreferenceSeed;
  if ((*(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityPreferenceSeed + 4) & 1) == 0 && v58 != -1 && *v6 != -1 && v58 == *v6)
  {
    outlined consume of FocusStore?(v55, v56);
    return;
  }

  *v6 = v58;
  *(v6 + 4) = 0;
  if (v4)
  {
    if (*(v5 + 16))
    {
      v8 = OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo;
      v9 = *(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo);
      if (v9)
      {
        v10 = *(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo);
      }

      else
      {
        v18 = type metadata accessor for UserActivityTrackingInfo();
        v19 = objc_allocWithZone(v18);
        *&v19[OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_userActivity] = 0;
        v20 = OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_handlers;
        *&v19[v20] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_SbSo14NSUserActivityCcTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        swift_weakInit();
        swift_weakAssign();
        v21 = &v19[OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_activityType];
        *v21 = v3;
        v21[1] = v4;
        v54.receiver = v19;
        v54.super_class = v18;

        v10 = objc_msgSendSuper2(&v54, sel_init);
      }

      v22 = OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_userActivity;
      v23 = *&v10[OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_userActivity];
      if (v23)
      {
        v24 = v9;
        v25 = [v23 activityType];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v26 == v3 && v4 == v28)
        {

LABEL_29:
          v38 = *&v10[v22];
          if (v38)
          {
            [v38 setNeedsSave_];
          }

          goto LABEL_37;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v30)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v31 = v9;
      }

      v32 = objc_allocWithZone(MEMORY[0x1E696B090]);

      v33 = MEMORY[0x18D00C850](v3, v4);

      v34 = [v32 initWithActivityType_];

      [v34 becomeCurrent];
      v35 = *&v10[v22];
      *&v10[v22] = v34;
      if (v35)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserActivity);
        v36 = v34;
        v35 = v35;
        v37 = static NSObject.== infix(_:_:)();

        if (v37)
        {
LABEL_34:

          v40 = *(v2 + v8);
          *(v2 + v8) = v10;
          v41 = v10;

          type metadata accessor for UserActivityTrackingInfo?(0, v42, v43);
          v45 = v44;
          v58 = v44;
          v55 = v10;
          v46 = v41;
          SceneBridge.publishEvent(event:type:identifier:)(&v55, v45, 0xD000000000000018, 0x800000018CD7A830);

          __swift_destroy_boxed_opaque_existential_1(&v55);
          v47 = *&v10[v22];
          Strong = swift_unknownObjectWeakLoadStrong();
          v49 = v47;
          if (Strong)
          {
            v50 = v49;
            v51 = Strong;
            [v51 setUserActivity_];
          }

          else
          {

            v52 = *(v2 + 72);
            *(v2 + 72) = v47;
          }

LABEL_37:
          v53 = OBJC_IVAR____TtC7SwiftUI24UserActivityTrackingInfo_handlers;
          swift_beginAccess();
          *&v10[v53] = v5;

          return;
        }
      }

      else
      {
        v39 = v34;
      }

      [v34 setDelegate_];
      v36 = v34;
      goto LABEL_34;
    }
  }

  v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo);
  *(v2 + OBJC_IVAR____TtC7SwiftUI11SceneBridge_userActivityTrackingInfo) = 0;

  type metadata accessor for UserActivityTrackingInfo?(0, v12, v13);
  v58 = v14;
  v55 = 0;
  SceneBridge.publishEvent(event:type:identifier:)(&v55, v14, 0xD000000000000018, 0x800000018CD7A830);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    [v15 setUserActivity_];
  }

  else
  {
    v17 = *(v2 + 72);
    *(v2 + 72) = 0;
  }
}

void type metadata accessor for _DictionaryStorage<String, [Any]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, [Any]>)
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for [Any], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, [Any]>);
    }
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance SceneBridge.ActivationConditionsPreferenceKey@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)();
  v3 = *(v2 + 48);
  type metadata accessor for Predicate<Pack{String}>();
  v5 = v4;
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1, 1, 1, v4);

  return v7(a1 + v3, 1, 1, v5);
}

uint64_t outlined init with copy of NavigationTitleStorage?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVySbGMaTm_9(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for PredicateExpressions.Variable<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__int128 *closure #2 in SceneBridge.preferencesDidChange(_:)(__int128 *result)
{
  v1 = result[1];
  v17 = *result;
  v18 = v1;
  *v19 = result[2];
  *&v19[9] = *(result + 41);
  v2 = *(&v1 + 1);
  if (*(&v1 + 1) == 1)
  {
    return result;
  }

  v3 = v18;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  outlined copy of Text?(v17, *(&v17 + 1), v18, v2);
  outlined copy of Transaction?(*v19);

  v5 = [v4 traitCollection];
  v6 = [v5 _environmentWrapper];
  if (!v6)
  {
LABEL_7:
    EnvironmentValues.init()();
    v16 = v15;
    EnvironmentValues.configureForRoot()();
    if (one-time initialization token for configuredForPlatform != -1)
    {
      swift_once();
    }

    if (v15)
    {
      if (!static EnvironmentValues.configuredForPlatform || v15 != static EnvironmentValues.configuredForPlatform)
      {
        goto LABEL_13;
      }
    }

    else if (static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_13;
    }

    EnvironmentValues.plist.setter();
LABEL_13:
    EnvironmentValues._configureForPlatform(traitCollection:)(v5);
    goto LABEL_14;
  }

  v7 = v6;
  type metadata accessor for EnvironmentWrapper();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_7;
  }

  v8 = v7;
  dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

LABEL_14:
  v12 = v16;
  if (v2)
  {
    v15 = 0uLL;
    MEMORY[0x18D009CB0](&v14, v4);
    LOBYTE(v13) = v3 & 1;
    v9 = Text.resolveString(in:with:idiom:)();
    v10 = MEMORY[0x18D00C850](v9);
  }

  else
  {
    v11 = v4;
    v10 = 0;
  }

  [v4 setTitle_];

  return outlined destroy of NavigationTitleStorage?(&v17);
}

void closure #1 in ScenePresentationBridge.preferencesDidChange(_:)(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v4 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  v6 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v4 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v6)
  {
    return;
  }

  v7 = [v6 window];

  if (!v7)
  {
    return;
  }

  v8 = [v7 windowScene];

  if (!v8)
  {
    return;
  }

  v9 = [v8 session];

  if (!v9)
  {
    return;
  }

  outlined init with copy of AnyHashable?(a1, &v18);
  if (!v19)
  {

    _ss11AnyHashableVSgWOhTm_4(&v18, type metadata accessor for AnyHashable?);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
LABEL_13:
    _ss11AnyHashableVSgWOhTm_4(&v20, type metadata accessor for (Decodable & Encodable)?);
    return;
  }

  type metadata accessor for Decodable & Encodable();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    goto LABEL_12;
  }

  if (!*(&v21 + 1))
  {
LABEL_12:

    goto LABEL_13;
  }

  outlined init with take of MutableCollection & RangeReplaceableCollection(&v20, &v23);
  __swift_project_boxed_opaque_existential_1(&v23, v24);
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v12 = v11;
  v13 = [v9 userInfo];
  if (v13)
  {
    v14 = v13;
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v21 + 1) = MEMORY[0x1E6969080];
    *&v20 = v10;
    *(&v20 + 1) = v12;
    outlined init with take of Any(&v20, &v18);
    outlined copy of Data._Representation(v10, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v18, 0xD00000000000001CLL, 0x800000018CD41370, isUniquelyReferenced_nonNull_native);
    if (v15)
    {
      v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v17.super.isa = 0;
    }

    [v9 setUserInfo_];

    outlined consume of Data._Representation(v10, v12);
  }

  else
  {
    [v9 setUserInfo_];

    outlined consume of Data._Representation(v10, v12);
  }

  __swift_destroy_boxed_opaque_existential_1(&v23);
}

uint64_t storeEnumTagSinglePayload for SheetPreference(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *makeHostingController #1 <A>() in SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 73);
  v5 = *(a1 + 72);
  type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
  v7 = objc_allocWithZone(v6);

  v8 = a2;
  v9 = specialized PresentationHostingController.init(rootView:delegate:placement:legacyDrawsBackground:)(v3, a2, &protocol witness table for SheetBridge<A>, v5, v4);
  v10 = *&v9[direct field offset for UIHostingController.host];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();

  return v9;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UIHostingView<AnyView>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature()
{
  result = lazy protocol witness table cache variable for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature;
  if (!lazy protocol witness table cache variable for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature);
  }

  return result;
}

uint64_t SheetBridge.requiresTransparentHostKey.getter()
{
  v1 = v0 + direct field offset for SheetBridge.host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = ViewGraphDelegate.popoverBridge.getter(ObjectType, *(*(v3 + 16) + 8));
    swift_unknownObjectRelease();
    if (v5)
    {
    }

    return v5 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteSheetContainerVCKey.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>()
{
  result = lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>;
  if (!lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>)
  {
    type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Binding<PresentationMode>(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static ClearNavigationContextModifier._makeViewInputs(modifier:inputs:)()
{
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.setter();
  _GraphInputs.resetCurrentStyleableView()();
  lazy protocol witness table accessor for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.ListSelectionCanonicalIDKey and conformance NavigationAuthority.ListSelectionCanonicalIDKey);
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetTabViewEnvironmentModifier()
{
  lazy protocol witness table accessor for type ResetTabViewEnvironmentModifier and conformance ResetTabViewEnvironmentModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ResetFormEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetFormEnvironmentModifier()
{
  lazy protocol witness table accessor for type ResetFormEnvironmentModifier and conformance ResetFormEnvironmentModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ResetSearchEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

void SheetContent.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v40[1] = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for StyleContextWriter<SheetStyleContext>, MEMORY[0x1E697F2A0], MEMORY[0x1E697F298], MEMORY[0x1E697F4C8]);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>();
  v5 = v4;
  v47 = type metadata accessor for ModifiedContent();
  v63 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = v40 - v6;
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TintAdjustmentMode?>, &lazy cache variable for type metadata for TintAdjustmentMode?, MEMORY[0x1E697F510], MEMORY[0x1E69E6720]);
  v7 = type metadata accessor for ModifiedContent();
  v57 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = v40 - v8;
  v50 = type metadata accessor for ModifiedContent();
  v60 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = v40 - v9;
  v10 = MEMORY[0x1E6980A08];
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior, MEMORY[0x1E6980A08]);
  v11 = type metadata accessor for ModifiedContent();
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = v40 - v12;
  v49 = type metadata accessor for ModifiedContent();
  v58 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v44 = v40 - v13;
  v52 = type metadata accessor for ModifiedContent();
  v59 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = v40 - v14;
  v53 = type metadata accessor for ModifiedContent();
  v66 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v48 = v40 - v15;
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], v10);
  v54 = type metadata accessor for ModifiedContent();
  v64 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = v40 - v16;
  v61 = type metadata accessor for ModifiedContent();
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, v10);
  v62 = type metadata accessor for ModifiedContent();
  type metadata accessor for Binding<PresentationMode>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, v10);
  v65 = type metadata accessor for ModifiedContent();
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v40[2] = v40 - v17;
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v40 - v20;
  v22 = v5;
  v55 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  static Alignment.center.getter();
  v24 = *(a1 + 24);
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v80 = v24;
  v81 = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  View.styleContext<A>(_:)();
  (*(v18 + 8))(v21, v3);
  v26 = lazy protocol witness table accessor for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>();
  v78 = WitnessTable;
  v79 = v26;
  v40[0] = v22;
  v27 = swift_getWitnessTable();
  v28 = v43;
  View.renderContainerBackgroundInHostingView<A>(_:)();
  swift_getKeyPath();
  v77 = 2;
  v29 = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>();
  v75 = v27;
  v76 = v29;
  v30 = v47;
  v31 = swift_getWitnessTable();
  v32 = v41;
  View.environment<A>(_:_:)();

  (*(v63 + 8))(v28, v30);
  v33 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TintAdjustmentMode?> and conformance _EnvironmentKeyWritingModifier<A>();
  v73 = v31;
  v74 = v33;
  v34 = swift_getWitnessTable();
  v35 = v45;
  View.resetScrollEnvironment()(v7, v34);
  (*(v57 + 8))(v32, v7);
  v36 = lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier();
  v71 = v34;
  v72 = v36;
  v37 = v50;
  v38 = swift_getWitnessTable();
  View.resetListStackBehavior()();
  (*(v60 + 8))(v35, v37);
  v39 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>, &type metadata for ListStackBehavior);
  v69 = v38;
  v70 = v39;
  swift_getWitnessTable();
  View.resetSearchEnvironment()();
}

void sub_18BF0F880()
{
  (*(*(v3 - 408) + 8))(v1, v2);
  *(v3 - 208) = v0;
  *(v3 - 200) = &protocol witness table for ResetSearchEnvironmentModifier;
  swift_getWitnessTable();
  View.resetFormEnvironment()();
}

void sub_18BF0F8E4()
{
  (*(*(v3 - 392) + 8))(v2, v1);
  *(v3 - 224) = v0;
  *(v3 - 216) = &protocol witness table for ResetFormEnvironmentModifier;
  swift_getWitnessTable();
  View.resetTabViewEnvironment()();
}

uint64_t sub_18BF0F948()
{
  (*(*(v5 - 384) + 8))(v1, v2);
  swift_getKeyPath();
  *(v5 - 121) = 0;
  *(v5 - 240) = v0;
  *(v5 - 232) = &protocol witness table for ResetTabViewEnvironmentModifier;
  v6 = *(v5 - 432);
  WitnessTable = swift_getWitnessTable();
  v8 = *(v5 - 448);
  View.environment<A>(_:_:)();

  (*(*(v5 - 328) + 8))(v3, v6);
  v9 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370]);
  *(v5 - 256) = WitnessTable;
  *(v5 - 248) = v9;
  v10 = *(v5 - 424);
  v11 = swift_getWitnessTable();
  v12 = *(v5 - 544);
  View.clearNavigationContext()(v11, v12);
  (*(*(v5 - 344) + 8))(v8, v10);
  *(v5 - 272) = v11;
  *(v5 - 264) = &protocol witness table for ClearNavigationContextModifier;
  v13 = swift_getWitnessTable();
  v14 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled);
  *(v5 - 288) = v13;
  *(v5 - 280) = v14;
  v15 = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed);
  *(v5 - 304) = v15;
  *(v5 - 296) = v16;
  v17 = *(v5 - 336);
  swift_getWitnessTable();
  View.clearSharingPickerHost()();
  (*(*(v5 - 320) + 8))(v12, v17);
  return (*(*(v5 - 416) + 8))(v4, *(v5 - 560));
}

uint64_t sub_18BF0FB9C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.tintAdjustmentMode.getter();
  *a1 = v3;
  return result;
}

uint64_t View.navigationTransition<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(v6);
  View.preference<A>(key:value:)();
  return _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(v6, type metadata accessor for _NavigationTransitionOutputs?);
}

void type metadata accessor for _NavigationTransitionOutputs?()
{
  if (!lazy cache variable for type metadata for _NavigationTransitionOutputs?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _NavigationTransitionOutputs?);
    }
  }
}

uint64_t specialized static ResetFormEnvironmentModifier.makeEnvironment(modifier:environment:)(uint64_t a1)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  type metadata accessor for Form<FormStyleConfiguration.Content>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormInsetsKey>, &type metadata for FormInsetsKey, &protocol witness table for FormInsetsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FormInsetsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormInsetsKey>, &type metadata for FormInsetsKey, &protocol witness table for FormInsetsKey);

  PropertyList.subscript.setter();
  v2 = *(a1 + 8);
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for Form<FormStyleConfiguration.Content>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormRowInfoVisibilityKey>, &type metadata for FormRowInfoVisibilityKey, &protocol witness table for FormRowInfoVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FormRowInfoVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormRowInfoVisibilityKey>, &type metadata for FormRowInfoVisibilityKey, &protocol witness table for FormRowInfoVisibilityKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for Form<FormStyleConfiguration.Content>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormRowAccessoryVisibilityKey>, &type metadata for FormRowAccessoryVisibilityKey, &protocol witness table for FormRowAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<FormRowAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<FormRowAccessoryVisibilityKey>, &type metadata for FormRowAccessoryVisibilityKey, &protocol witness table for FormRowAccessoryVisibilityKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for Form<FormStyleConfiguration.Content>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveFormStyleKey>, &type metadata for EffectiveFormStyleKey, &protocol witness table for EffectiveFormStyleKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EffectiveFormStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EffectiveFormStyleKey>, &type metadata for EffectiveFormStyleKey, &protocol witness table for EffectiveFormStyleKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for Form<FormStyleConfiguration.Content>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

__n128 initializeWithCopy for _NavigationTransitionStyleOutputs.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 < 0xFFFFFFFF)
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    result = *(a2 + 32);
    *(a1 + 32) = result;
  }

  else
  {
    *a1 = *a2;
    v3 = *(a2 + 40);
    *(a1 + 32) = v2;
    *(a1 + 40) = v3;
    (**(v2 - 8))(a1 + 8, a2 + 8);
  }

  return result;
}

id _sSo6UIViewC7SwiftUIE20firstDescendantWhereyABSgSbABXEF05_sSo6a2C7B103UIE15firstDescendant6ofType9predicatexSgxm_SbxXEtlFSbABXEfU_AC34MatchedTransitionSourceMarkingViewC_Tg5xSbRi_zRi0_zlyAC0stuvW0CIsgnd_Tf1cn_nTf4ng_nTm(void *a1, uint64_t (*a2)(uint64_t *), uint64_t a3, void (*a4)(void), uint64_t (*a5)(id, uint64_t (*)(void), uint64_t))
{
  a4(0);
  v9 = swift_dynamicCastClass();
  if (v9 && (v20 = v9, v10 = a1, v11 = a2(&v20), v10, (v11 & 1) != 0))
  {
    v12 = v10;
  }

  else
  {
    v13 = [a1 subviews];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
LABEL_19:
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v15 != i; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x18D00E9C0](i, v14);
      }

      else
      {
        if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v17 = *(v14 + 8 * i + 32);
      }

      v18 = v17;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = a5(v17, a2, a3);

      if (v10)
      {

        return v10;
      }
    }

    return 0;
  }

  return v10;
}

uint64_t UIViewController.firstDescendantWhere(_:)(uint64_t (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  if (a1(v2))
  {
    v6 = v2;
  }

  else
  {
    v7 = [v2 childViewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
LABEL_18:
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v9 != i; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x18D00E9C0](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v3 = UIViewController.firstDescendantWhere(_:)(a1, a2);

      if (v3)
      {

        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t specialized UIViewController.matchingBarButton<A>(id:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = UIViewController.trailingItems.getter();
  v5 = UIViewController.centerItems.getter();
  v31 = v4;
  specialized Array.append<A>(contentsOf:)(v5);
  v6 = UIViewController.leadingItems.getter();
  specialized Array.append<A>(contentsOf:)(v6);
  v7 = v4;
  v8 = [v3 toolbarItems];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  *&v29[0] = v7;
  specialized Array.append<A>(contentsOf:)(v10);
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((*&v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v12 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x18D00E9C0](v12, v7);
      }

      else
      {
        if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      type metadata accessor for UIKitBarButtonItem(0);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = v16;
        v18 = v16 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
        swift_beginAccess();
        v19 = type metadata accessor for ToolbarStorage.Item(0);
        if ((*(*(v19 - 8) + 48))(v18, 1, v19))
        {

          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
LABEL_18:
          outlined destroy of MatchedTransitionIdentifier?(&v26, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier);
          goto LABEL_9;
        }

        outlined init with copy of MatchedTransitionIdentifier?(v18 + 64, &v26, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier);
        if (!*(&v27 + 1))
        {

          goto LABEL_18;
        }

        v29[0] = v26;
        v29[1] = v27;
        v30 = v28;
        outlined init with copy of AnyHashable(a1, v25);
        AnyHashable.init<A>(_:)();
        v20 = MEMORY[0x18D00E7E0](v29, &v26);
        outlined destroy of AnyHashable(&v26);
        if (v20)
        {
          v21 = *(&v30 + 1);
          outlined destroy of MatchedTransitionIdentifier(v29);
          if (v21 == a2)
          {

            return v17;
          }
        }

        else
        {
          outlined destroy of MatchedTransitionIdentifier(v29);
        }
      }

LABEL_9:
      ++v12;
      if (v15 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  return 0;
}

unint64_t UIViewController.trailingItems.getter(SEL *a1, uint64_t a2)
{
  j = v2;
  v44 = MEMORY[0x1E69E7CC0];
  v6 = &selRef_bundleIdentifier;
  v7 = [v2 navigationItem];
  v8 = [v7 *a1];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v33 = j;
    v34 = a2;
    v6 = 0;
    v39 = v9 & 0xC000000000000001;
    v36 = v9 + 32;
    v37 = v9 & 0xFFFFFFFFFFFFFF8;
    v11 = MEMORY[0x1E69E7CC0];
    v35 = v9;
    v38 = i;
    while (1)
    {
      if (v39)
      {
        v12 = MEMORY[0x18D00E9C0](v6, v9);
      }

      else
      {
        if (v6 >= *(v37 + 16))
        {
          goto LABEL_45;
        }

        v12 = *(v36 + 8 * v6);
      }

      v13 = v12;
      v14 = __OFADD__(v6++, 1);
      if (v14)
      {
        break;
      }

      v15 = [v12 barButtonItems];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = v16 >> 62;
      if (v16 >> 62)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      j = v11 >> 62;
      if (v11 >> 62)
      {
        v19 = __CocoaSet.count.getter();
      }

      else
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v18;
      v14 = __OFADD__(v19, v18);
      a2 = v19 + v18;
      if (v14)
      {
        goto LABEL_41;
      }

      v40 = v13;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!j)
        {
          v20 = v11 & 0xFFFFFFFFFFFFFF8;
          if (a2 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

LABEL_21:
        __CocoaSet.count.getter();
        goto LABEL_22;
      }

      if (j)
      {
        goto LABEL_21;
      }

LABEL_22:
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v41 = v11;
      a2 = *(v20 + 16);
      j = *(v20 + 24);
      if (v17)
      {
        v21 = __CocoaSet.count.getter();
        if (v21)
        {
LABEL_27:
          if (((j >> 1) - a2) < v42)
          {
            goto LABEL_43;
          }

          v22 = v20 + 8 * a2 + 32;
          if (v17)
          {
            if (v21 < 1)
            {
              goto LABEL_46;
            }

            type metadata accessor for [UIBarButtonItem]();
            a2 = lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A], type metadata accessor for [UIBarButtonItem]);
            for (j = 0; j != v21; ++j)
            {
              v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v43, j, v16);
              v26 = *v25;
              (v24)(v43, 0);
              *(v22 + 8 * j) = v26;
            }

            v9 = v35;
            v23 = v42;
          }

          else
          {
            v23 = v42;
            swift_arrayInitWithCopy();
          }

          i = v38;
          v11 = v41;
          if (v23 > 0)
          {
            v27 = *(v20 + 16);
            v14 = __OFADD__(v27, v23);
            v28 = v27 + v23;
            if (v14)
            {
              goto LABEL_44;
            }

            *(v20 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      v11 = v41;
      if (v42 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v6 == i)
      {

        v44 = v11;
        j = v33;
        a2 = v34;
        v6 = 0x1E723B000;
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_49:
  v29 = [j *(v6 + 3080)];
  v30 = [v29 *a2];

  if (v30)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  specialized Array.append<A>(contentsOf:)(v31);
  return v44;
}

unint64_t UIViewController.centerItems.getter()
{
  v1 = [v0 navigationItem];
  v2 = [v1 centerItemGroups];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v34 = v3 & 0xC000000000000001;
    v32 = v3 + 32;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x1E69E7CC0];
    v30 = i;
    v31 = v3;
    while (1)
    {
      if (v34)
      {
        v7 = MEMORY[0x18D00E9C0](v5, v3);
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_46;
        }

        v7 = *(v32 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        break;
      }

      v10 = [v7 barButtonItems];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v6 >> 62;
      if (v6 >> 62)
      {
        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = v13;
      v9 = __OFADD__(v15, v13);
      v16 = v15 + v13;
      if (v9)
      {
        goto LABEL_42;
      }

      v35 = v8;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v14)
        {
          goto LABEL_23;
        }

LABEL_22:
        __CocoaSet.count.getter();
        goto LABEL_23;
      }

      if (v14)
      {
        goto LABEL_22;
      }

      v17 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = v6;
        goto LABEL_24;
      }

LABEL_23:
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v36 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v12)
      {
        v20 = __CocoaSet.count.getter();
        if (v20)
        {
LABEL_28:
          if (((v19 >> 1) - v18) < v37)
          {
            goto LABEL_44;
          }

          v21 = v17 + 8 * v18 + 32;
          if (v12)
          {
            if (v20 < 1)
            {
              goto LABEL_47;
            }

            type metadata accessor for [UIBarButtonItem]();
            lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarMatchedTransitionIdentifier> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type [UIBarButtonItem] and conformance [A], type metadata accessor for [UIBarButtonItem]);
            for (j = 0; j != v20; ++j)
            {
              v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v38, j, v11);
              v26 = *v25;
              (v24)(v38, 0);
              *(v21 + 8 * j) = v26;
            }

            i = v30;
            v3 = v31;
            v22 = v37;
          }

          else
          {
            v22 = v37;
            swift_arrayInitWithCopy();
          }

          v6 = v36;
          if (v22 > 0)
          {
            v27 = *(v17 + 16);
            v9 = __OFADD__(v27, v22);
            v28 = v27 + v22;
            if (v9)
            {
              goto LABEL_45;
            }

            *(v17 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      v6 = v36;
      if (v37 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v5 == i)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of PresentationSizing?(uint64_t a1)
{
  type metadata accessor for PresentationSizing?(0, &lazy cache variable for type metadata for PresentationSizing?, type metadata accessor for PresentationSizing);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall PresentationHostingController.sizingOptionsDidChange(from:)(SwiftUI::UIHostingControllerSizingOptions from)
{
  v2 = v1;
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *from.rawValue;
  v5 = &v1[direct field offset for PresentationHostingController.observedSize];
  if ((v1[direct field offset for PresentationHostingController.observedSize + 16] & 1) == 0)
  {
    *v55 = *v5;
    closure #1 in PresentationHostingController.sizingOptionsDidChange(from:)(v55, v1);
  }

  v6 = [v1 presentingViewController];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = direct field offset for PresentationHostingController.lastPresentationOptions;
  swift_beginAccess();
  if (!*&v2[v8])
  {

    *&v47 = 0;
    v45 = 0u;
    v46 = 0u;
LABEL_16:
    outlined destroy of PresentationSizing?(&v45);
LABEL_18:
    v55[0] = v4;
    UIHostingController.sizingOptionsDidChange(from:)(v55);
    return;
  }

  outlined init with copy of PresentationOptionsPreference(&v2[v8], v55);
  type metadata accessor for EnvironmentPropertyKey<PresentationKind.Key>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    outlined init with copy of PresentationSizing?(v56 + 8, &v42);
    if (v44)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v42, &v45);
    }

    else
    {
      *(&v46 + 1) = &type metadata for AutomaticPresentationSizing;
      *&v47 = &protocol witness table for AutomaticPresentationSizing;
    }
  }

  else
  {
    *&v47 = 0;
    v45 = 0u;
    v46 = 0u;
  }

  outlined destroy of PresentationOptionsPreference(v55);
  if (!*(&v46 + 1))
  {

    goto LABEL_16;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v45, v57);
  if ((PresentationHostingController.shouldUsePresentationSizing.getter() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v57);
    goto LABEL_18;
  }

  v9 = [v2 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  UIUserInterfaceIdiom.idiom.getter(v10, &v45);
  v11 = v45;
  if (v45)
  {
    v12 = *(&v45 + 1);
    v55[0] = v45;
  }

  else
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v12 = v55[1];
    v11 = v55[0];
  }

  v13 = UIViewController.nonPresentedAncestor.getter();
  v14 = [v13 view];

  v37 = v14;
  if (v14)
  {
    v36 = *&v2[direct field offset for PresentationHostingController.lastColumnCount];
    v15 = [v2 traitCollection];
    v16 = [v15 _environmentWrapper];
    if (v16)
    {
      v17 = v16;
      type metadata accessor for EnvironmentWrapper();
      if (swift_dynamicCastClass())
      {
        v18 = v12;
        v19 = v11;
        v20 = v17;
        dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

        v11 = v19;
        v12 = v18;

        v21 = v55[1];
        v22 = v55[0];
        v51 = *v55;
LABEL_32:
        v55[0] = v22;
        v55[1] = v21;
        EnvironmentValues.readableWidth.getter();
        v25 = v24;

        v54 = 1;
        v53 = 1;
        v52 = 1;
        *&v45 = v37;
        *(&v45 + 1) = v36;
        v46 = 0uLL;
        LOBYTE(v47) = 1;
        *(&v47 + 1) = 0;
        LOBYTE(v48) = 1;
        *(&v48 + 1) = 0;
        LOBYTE(v49) = 1;
        *(&v49 + 1) = v11;
        *&v50 = v12;
        *(&v50 + 1) = v25;
        outlined init with copy of _Benchmark(v57, v55);
        *&v55[9] = v47;
        v56[0] = v48;
        v56[1] = v49;
        v56[2] = v50;
        *&v55[5] = v45;
        *&v55[7] = v46;
        specialized UIHostingController.host.getter();
        specialized UIHostingController.host.getter();
        v26 = v12;
        v27 = *(v3 + 1032);
        v28 = *(v3 + 1040);
        type metadata accessor for _UIHostingView();
        WitnessTable = swift_getWitnessTable();
        swift_unknownObjectWeakInit();
        outlined init with copy of PresentationSizingContext(&v45, &v42);
        specialized SheetSizing.sheetSizeThatFits<A>(host:subview:)(&v38);
        v30 = v29;
        v32 = v31;
        outlined destroy of weak FallbackResponderProvider?(&v38);
        PresentationHostingController.preferredContentSize.setter(v30, v32);
        *v5 = v30;
        v5[1] = v32;
        *(v5 + 16) = 0;
        outlined destroy of OpenURLOptions(&v45);
        v33 = specialized UIHostingController.host.getter();
        _UIHostingView.viewGraph.getter();

        _ProposedSize.init(width:height:)();
        v38 = v42;
        LOBYTE(WitnessTable) = BYTE8(v42);
        v40 = v43;
        v41 = v44;
        v34 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v35 = swift_allocObject();
        v35[2] = v27;
        v35[3] = v28;
        v35[4] = v34;
        v35[5] = v11;
        v35[6] = v26;
        swift_beginAccess();
        type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
        ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
        swift_endAccess();

        outlined destroy of SheetSizing(v55);
        __swift_destroy_boxed_opaque_existential_1(v57);
        return;
      }
    }

    EnvironmentValues.init()();
    v51 = *v55;
    EnvironmentValues.configureForRoot()();
    v23 = v51;
    if (one-time initialization token for configuredForPlatform != -1)
    {
      swift_once();
    }

    if (v23)
    {
      if (!static EnvironmentValues.configuredForPlatform || v23 != static EnvironmentValues.configuredForPlatform)
      {
        goto LABEL_31;
      }
    }

    else if (static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_31;
    }

    EnvironmentValues.plist.setter();
LABEL_31:
    EnvironmentValues._configureForPlatform(traitCollection:)(v15);

    v21 = *(&v51 + 1);
    v22 = v51;
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_18BF116B0()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BF116E8()
{

  return swift_deallocObject();
}

void _UIHostingView.transparentBackgroundReasons.didset(int a1)
{
  if ((a1 != 0) == (*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0)) == 0))
  {
    _UIHostingView.updateBackgroundColor()();
  }
}

uint64_t PresentationState.presentPreemptingDismissal(_:presentedVC:presentationSeed:)(uint64_t a1, void *a2, int *a3)
{
  v6 = *a3;
  outlined init with copy of PresentationState.Base(v3, &v10);
  switch(v15)
  {
    case 2:
    case 3:
    case 5:

      v7 = &v11;
      goto LABEL_7;
    case 4:
    case 6:
    case 10:
      goto LABEL_6;
    case 7:
    case 11:
      outlined destroy of PresentationState.Base(&v10);
      goto LABEL_8;
    case 8:

      outlined destroy of SheetPreference(&v14);
      goto LABEL_6;
    case 12:
      goto LABEL_8;
    default:

LABEL_6:
      v7 = &v10;
LABEL_7:
      outlined destroy of SheetPreference(v7);
LABEL_8:
      outlined init with copy of SheetPreference(a1, &v10);
      v12 = a2;
      v13 = v6;
      v15 = 0;
      v8 = a2;
      PresentationState.base.willset(&v10);
      return outlined assign with take of PresentationState.Base(&v10, v3);
  }
}

uint64_t PresentationState.base.willset(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.presentation.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s2os6LoggerVSgWOhTm_1(v6, type metadata accessor for Logger?);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v37 = 0xD00000000000001CLL;
    v38 = 0x800000018CD569F0;
    v11 = PresentationState.Base.description.getter();
    MEMORY[0x18D00C9B0](v11);

    MEMORY[0x18D00C9B0](0x209286E220, 0xA500000000000000);
    v12 = PresentationState.Base.description.getter();
    MEMORY[0x18D00C9B0](v12);

    v14 = v37;
    v13 = v38;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = a1;
      v18 = v17;
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136315138;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v37);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_18BD4A000, v15, v16, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x18D0110E0](v19, -1, -1);
      v21 = v18;
      a1 = v35;
      MEMORY[0x18D0110E0](v21, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
  }

  v22 = PresentationState.Base.presentedVC.getter();
  if (v22)
  {
  }

  else
  {
    v23 = PresentationState.Base.presentedVC.getter();
    if (v23)
    {
      v24 = v23;
      v25 = *(v23 + direct field offset for UIHostingController.host);

      v37 = 0;
      LOBYTE(v38) = 1;
      type metadata accessor for _SemanticFeature<Semantics_v6>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
      ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    }
  }

  v26 = PresentationState.Base.willPresentAgainAfterDismiss.getter();
  v27 = specialized static PresentationState.Base.dismissedPresentations(from:to:)(v2, a1);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v27 + 32;
    v30 = (v26 & 1) == 0;
    do
    {
      outlined init with copy of SheetPreference(v29, &v37);
      v31 = v38;
      v32 = v39;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v38, v39);
      outlined destroy of SheetPreference(&v37);
      if (v31)
      {
        v36 = 17;
        v33 = swift_allocObject();
        *(v33 + 16) = v31;
        *(v33 + 24) = v32;
        *(v33 + 32) = v30;

        static Update.enqueueAction(reason:_:)();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v31);
      }

      v29 += 112;
      --v28;
    }

    while (v28);
  }
}

uint64_t sub_18BF11D60()
{

  return swift_deallocObject();
}

uint64_t PresentationState.Base.willPresentAgainAfterDismiss.getter()
{
  outlined init with copy of PresentationState.Base(v0, &v4);
  result = 0;
  switch(v7[106])
  {
    case 2:
    case 3:

      v2 = v5;
      goto LABEL_5;
    case 4:
    case 0xA:
      goto LABEL_3;
    case 5:

      v3 = v5;
      goto LABEL_11;
    case 6:
      goto LABEL_9;
    case 7:
    case 0xB:
      outlined destroy of PresentationState.Base(&v4);
      goto LABEL_12;
    case 8:

      outlined destroy of SheetPreference(v7);
      goto LABEL_9;
    case 9:

LABEL_9:
      v3 = &v4;
LABEL_11:
      outlined destroy of SheetPreference(v3);
LABEL_12:
      result = 1;
      break;
    case 0xC:
      return result;
    default:

LABEL_3:
      v2 = &v4;
LABEL_5:
      outlined destroy of SheetPreference(v2);
      result = 0;
      break;
  }

  return result;
}

void type metadata accessor for (PresentationState.Base, PresentationState.Base)()
{
  if (!lazy cache variable for type metadata for (PresentationState.Base, PresentationState.Base))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PresentationState.Base, PresentationState.Base));
    }
  }
}

uint64_t assignWithTake for PresentationState.Base(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 234);
  if (v4 >= 0xC)
  {
    v4 = *a1 + 12;
  }

  if (v4 <= 5)
  {
    if (v4 <= 2)
    {
      if (v4 >= 2)
      {
        if (v4 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_22;
      }

      goto LABEL_35;
    }

    if (v4 != 4)
    {
LABEL_22:

      if (*(a1 + 16))
      {
      }

      if (*(a1 + 64))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 40);
      }

LABEL_34:

      goto LABEL_42;
    }

    goto LABEL_30;
  }

  if (v4 <= 8)
  {
    if (v4 != 6)
    {
      if (v4 != 7)
      {

        if (*(a1 + 8))
        {
        }

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 32);
        }

        if (*(a1 + 136))
        {
        }

        if (*(a1 + 184))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 160);
        }

        goto LABEL_34;
      }

      v5 = *a1;
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_30;
  }

  if (v4 == 9)
  {
LABEL_35:

    if (*(a1 + 8))
    {
    }

    if (*(a1 + 56))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    v5 = *(a1 + 112);
    goto LABEL_41;
  }

  if (v4 == 10 || v4 == 11)
  {
LABEL_30:

    if (*(a1 + 8))
    {
    }

    if (*(a1 + 56))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    goto LABEL_34;
  }

LABEL_42:
  v6 = *(a2 + 234);
  if (v6 >= 0xC)
  {
    v6 = *a2 + 12;
  }

  if (v6 > 5)
  {
    if (v6 > 8)
    {
      if (v6 == 9)
      {
        v25 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v25;
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 105) = *(a2 + 105);
        goto LABEL_65;
      }

      if (v6 == 10)
      {
        v29 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v29;
        *(a1 + 91) = *(a2 + 91);
        goto LABEL_68;
      }

      if (v6 != 11)
      {
        goto LABEL_71;
      }
    }

    else if (v6 != 6)
    {
      if (v6 == 7)
      {
        *a1 = *a2;
        LOBYTE(v6) = 7;
        goto LABEL_69;
      }

      v10 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v10;
      *(a1 + 218) = *(a2 + 218);
      v11 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v11;
      v12 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v12;
      v13 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v13;
      v14 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v14;
LABEL_68:
      v30 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v30;
      v31 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v31;
      goto LABEL_69;
    }

LABEL_60:
    v18 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v18;
    *(a1 + 90) = *(a2 + 90);
    goto LABEL_68;
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v22 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v22;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      v23 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v23;
      v24 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v24;
      LOBYTE(v6) = 3;
      goto LABEL_69;
    }

    if (v6 != 4)
    {
      v15 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v15;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      v16 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v16;
      v17 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v17;
      LOBYTE(v6) = 5;
      goto LABEL_69;
    }

    goto LABEL_60;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v7 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v7;
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = *(a2 + 112);
        v8 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v8;
        v9 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v9;
        LOBYTE(v6) = 2;
LABEL_69:
        *(a1 + 234) = v6;
        return a1;
      }

LABEL_71:
      v33 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v33;
      *(a1 + 219) = *(a2 + 219);
      v34 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v34;
      v35 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v35;
      v36 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v36;
      v37 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v37;
      v38 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v38;
      v39 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v39;
      return a1;
    }

    v26 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v26;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 108) = *(a2 + 108);
LABEL_65:
    v27 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v27;
    v28 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v28;
    goto LABEL_69;
  }

  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 108) = *(a2 + 108);
  v20 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v20;
  v21 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v21;
  *(a1 + 234) = 0;
  return a1;
}

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(unsigned int a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 60);
  v6 = *(a2 + 64);
  v24 = *(a2 + 48);
  v25 = v6;
  v7 = *(a2 + 16);
  v21 = *a2;
  v22 = v7;
  v27[0] = v21;
  v27[1] = v7;
  v27[3] = v24;
  v27[4] = v6;
  v8 = *(a2 + 48);
  v9 = *a2;
  v10 = *(a2 + 16);
  v23 = *(a2 + 32);
  v26 = *(a2 + 80);
  v27[2] = v23;
  v28 = v26;
  v41 = v23;
  v42 = v8;
  v43 = *(a2 + 64);
  v44 = *(a2 + 80);
  v39 = v9;
  v40 = v10;
  outlined init with copy of _ViewInputs(a2, v37);
  outlined init with copy of _ViewInputs(v27, v37);
  v11 = _ViewInputs.animatedPosition()();
  v29[2] = v41;
  v29[3] = v42;
  v29[4] = v43;
  v30 = v44;
  v29[0] = v39;
  v29[1] = v40;
  outlined destroy of _ViewInputs(v29);
  v31[2] = v23;
  v31[3] = v24;
  v31[4] = v25;
  v32 = v26;
  v31[0] = v21;
  v31[1] = v22;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v39 = v21;
  v40 = v22;
  outlined init with copy of _ViewInputs(v31, v37);
  v12 = _ViewInputs.animatedCGSize()();
  v33[2] = v41;
  v33[3] = v42;
  v33[4] = v43;
  v34 = v44;
  v33[0] = v39;
  v33[1] = v40;
  outlined destroy of _ViewInputs(v33);
  *&v39 = __PAIR64__(v5, a1);
  *(&v39 + 1) = __PAIR64__(v12, v11);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.transform.setter();
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v36 = v26;
  v35[0] = v21;
  v35[1] = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v15 = v21;
  v16 = v22;
  v13 = outlined init with copy of _ViewInputs(v35, &v39);
  a3(v13, &v15);
  v37[2] = v17;
  v37[3] = v18;
  v37[4] = v19;
  v38 = v20;
  v37[0] = v15;
  v37[1] = v16;
  outlined destroy of _ViewInputs(v37);
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v39 = v21;
  v40 = v22;
  return outlined destroy of _ViewInputs(&v39);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CoordinateSpaceNameModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v3, v7, a3);
}

unint64_t lazy protocol witness table accessor for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform()
{
  result = lazy protocol witness table cache variable for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform;
  if (!lazy protocol witness table cache variable for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpaceNameTransform and conformance CoordinateSpaceNameTransform);
  }

  return result;
}

uint64_t View.coordinateSpace(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of NamedCoordinateSpace(a1, v6);
  MEMORY[0x18D00A570](v6, a2, &type metadata for CoordinateSpaceNameModifier, a3);
  return outlined destroy of CoordinateSpaceNameModifier(v6);
}

_OWORD *initializeWithCopy for CoordinateSpaceNameModifier(_OWORD *result, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v2 = *(a2 + 16);
    *result = *a2;
    result[1] = v2;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    *(v4 + 40) = 0;
    return v4;
  }

  return result;
}

uint64_t outlined destroy of CoordinateSpaceNameModifier(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    return v1;
  }

  return result;
}

uint64_t destroy for CoordinateSpaceNameModifier(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t RootViewDelegate.hostingView<A>(_:didChangePreferences:)(void *a1, uint64_t *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = *a2;
  specialized RootViewDelegate.updateAppFocus<A>(view:)(a1);
  swift_beginAccess();
  v12 = v5;
  PreferenceValues.subscript.getter();
  v6 = *(v2 + 16);
  if (v6 == -1 || v14 == -1 || v6 != v14)
  {
    *(v2 + 16) = v14;
    LOBYTE(v12) = v13;
    _UIHostingView.colorScheme.setter(&v12);
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v15[0] = v5;
    (*(v10 + 40))(a1, v15, *(v4 + 80), *(v4 + 88), ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void _UIHostingView.colorScheme.setter(_BYTE *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v3 = *(v1 + v2);
  *(v1 + v2) = *a1;
  v4 = v3;
  _UIHostingView.didChangeColorScheme(from:)(&v4);
}

void _UIHostingView.didChangeColorScheme(from:)(unsigned __int8 *a1)
{
  v1 = *a1;
  _UIHostingView.colorScheme.getter(&v14);
  if (v1 == 2)
  {
    if (v14 == 2)
    {
      return;
    }
  }

  else if (v14 != 2 && ((v14 ^ v1) & 1) == 0)
  {
    return;
  }

  v2 = _UIHostingView.viewController.getter();
  if (v2)
  {
    v3 = v2;
    _UIHostingView.colorScheme.getter(&v13);
    v4 = 1;
    if (v13)
    {
      v4 = 2;
    }

    if (v13 == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    [v3 setOverrideUserInterfaceStyle_];
    v6 = specialized _UIHostingView.statusBarBridge.getter();

    v7 = [v3 isBeingPresented];
    if (!swift_unknownObjectWeakLoadStrong())
    {
      __break(1u);
      return;
    }

    v8 = *(v6 + 40);
    v9 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v11 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v8 + 16) + 8));
    swift_unknownObjectRelease();
    swift_unknownObjectWeakInit();

    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = partial apply for closure #1 in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:);
    *(v12 + 32) = v9;

    onNextMainRunLoop(do:)();
  }

  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();

  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t specialized SheetBridge.adaptivePresentationStyle(for:traitCollection:)(void *a1)
{
  v2 = v1;
  v4 = v1 + direct field offset for SheetBridge.host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = [v7 traitCollection];

      v9 = [v8 userInterfaceIdiom];
      if (v9 == 6)
      {
        return -1;
      }
    }
  }

  v10 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v2 + v10, v14);
  v11 = PresentationState.Base.presentedVC.getter();
  outlined destroy of PresentationState(v14);
  if (!v11)
  {
    return -1;
  }

  v12 = specialized PresentationHostingController.adaptivePresentationStyle(traitCollection:kind:)(a1, 2);

  return v12;
}

uint64_t specialized PresentationHostingController.adaptivePresentationStyle(traitCollection:kind:)(void *a1, char a2)
{
  v5 = [a1 verticalSizeClass];
  if (v5 == 1)
  {
    v6 = (v2 + direct field offset for PresentationHostingController.lastPresentationOptions);
    swift_beginAccess();
    if (!*v6)
    {
LABEL_9:
      if ([a1 verticalSizeClass] == 2)
      {
        return 5;
      }

      v12 = a2;
      v13 = &unk_18CDDADE0;
      return v13[v12];
    }

    v7 = v6 + 41;
  }

  else
  {
    if ([a1 horizontalSizeClass] != 1)
    {
      return -1;
    }

    v8 = (v2 + direct field offset for PresentationHostingController.lastPresentationOptions);
    swift_beginAccess();
    if (!*v8)
    {
      goto LABEL_25;
    }

    v7 = (v8 + 5);
  }

  v9 = *v7;
  if (v9 == 6)
  {
    goto LABEL_8;
  }

  if (v9 == 2 && a2 != 1)
  {
    _StringGuts.grow(_:)(162);
    MEMORY[0x18D00C9B0](8257, 0xE200000000000000);
    lazy protocol witness table accessor for type PresentationKind and conformance PresentationKind();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v14);

    MEMORY[0x18D00C9B0](0x100000000000009ELL, 0x800000018CD55A60);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    return -1;
  }

  if (v9 <= 2)
  {
    if ((v9 - 1) >= 2)
    {
LABEL_8:
      if (v5 == 1)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

    return -1;
  }

  if (v9 == 3)
  {
LABEL_25:
    if (a2 == 1)
    {
      return 2;
    }

    else
    {
      return -1;
    }
  }

  if (v9 == 4)
  {
    goto LABEL_9;
  }

  if ([a1 verticalSizeClass] != 2)
  {
    v12 = a2;
    v13 = &unk_18CDDAE08;
    return v13[v12];
  }

  return 8;
}

uint64_t PresentationHostingController._remoteSheet.getter()
{
  v0 = specialized UIHostingController.host.getter();
  _UIHostingView.viewGraph.getter();

  lazy protocol witness table accessor for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature();
  v1 = ViewGraph.subscript.getter();

  if (!v1)
  {
    return 0;
  }

  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](Attribute);
  type metadata accessor for PresentationSizing?(0, &lazy cache variable for type metadata for _UIRemoteSheet?, type metadata accessor for _UIRemoteSheet);
  static Update.ensure<A>(_:)();
  return v4;
}

unint64_t type metadata accessor for _UIRemoteSheet()
{
  result = lazy cache variable for type metadata for _UIRemoteSheet;
  if (!lazy cache variable for type metadata for _UIRemoteSheet)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _UIRemoteSheet);
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance RemoteSheetContainerVCKey(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v4 = outlined init with take of RemoteSheetContainerVCKey.Storage?(a1, &v6, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage, MEMORY[0x1E69E6720], _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0);
  if (v7 == 255)
  {
    a2(v8, v4);
    if (v7 != 255)
    {
      outlined destroy of RemoteSheetContainerVCKey.Storage?(&v6, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage);
    }
  }

  else
  {
    outlined init with copy of RemoteSheetContainerVCKey.Storage(&v6, v8, MEMORY[0x1E69E7D90]);
  }

  return outlined init with take of RemoteSheetContainerVCKey.Storage?(v8, a1, &lazy cache variable for type metadata for RemoteSheetContainerVCKey.Storage?, &type metadata for RemoteSheetContainerVCKey.Storage, MEMORY[0x1E69E6720], _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0);
}

uint64_t ViewResponderFilter.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ViewLeafView();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t type metadata accessor for _UISceneBSActionHandler(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t EnvironmentValues.accessibilityVoiceOverEnabled.getter()
{
  v3 = *v0;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v2);
  return v2 & 1;
}

BOOL keypath_get_3Tm@<W0>(__int128 *a1@<X0>, unsigned __int8 a2@<W3>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  v5 = a2;
  result = EnvironmentValues.isEnabled(for:)(&v5);
  *a3 = result;
  return result;
}

double _s7SwiftUI5AlertVSgWOi0_(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for Alert(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t implicit closure #1 in static AlertTransformModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  v11 = type metadata accessor for AlertTransformModifier.Transform();
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v7, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v9, v11, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return AssociatedTypeWitness;
}

double static ScrollBehaviorModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v37 = a4;
  v38[0] = a3;
  v39 = a6;
  v65 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v8 = a2[1];
  v61 = a2[2];
  v62 = v7;
  v9 = a2[3];
  v63 = a2[4];
  v10 = a2[1];
  v59 = *a2;
  v60 = v10;
  v55 = v61;
  v56 = v9;
  v57 = a2[4];
  v11 = *a1;
  v64 = *(a2 + 20);
  v58 = *(a2 + 20);
  v53 = v59;
  v54 = v8;
  outlined init with copy of _ViewInputs(&v59, v51);
  PreferenceKeys.add(_:)();
  v42 = v11;
  type metadata accessor for ScrollBehaviorModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a5 - 8) + 64))
  {
    closure #1 in static ScrollBehaviorModifier._makeView(modifier:inputs:body:)(1, a5);
  }

  v12 = v60;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v14 = *MEMORY[0x1E698D3F8];
  *&v51[0] = __PAIR64__(*MEMORY[0x1E698D3F8], OffsetAttribute2);
  *(&v51[0] + 1) = v14;
  MEMORY[0x1EEE9AC00](OffsetAttribute2);
  v33 = type metadata accessor for ScrollBehaviorModifier.ScrollBehaviorProvider();
  WitnessTable = swift_getWitnessTable();
  v15 = MEMORY[0x1E698D388];
  type metadata accessor for Attribute<ResolvedScrollBehavior>(0, &lazy cache variable for type metadata for Attribute<ResolvedScrollBehavior>, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E698D388]);
  v16 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v51, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_3, v32, v33, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  v19 = v49[0];
  v20 = swift_beginAccess();
  LODWORD(v51[0]) = *(v12 + 16);
  v36 = v19;
  DWORD1(v51[0]) = v19;
  MEMORY[0x1EEE9AC00](v20);
  v35 = v21;
  v22 = type metadata accessor for ScrollBehaviorModifier.ChildEnvironment();
  v33 = v22;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<ResolvedScrollBehavior>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], v15);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v51, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v32, v22, v16, v23, MEMORY[0x1E69E7410], v24);
  _GraphInputs.environment.setter();
  v49[2] = v55;
  v49[3] = v56;
  v49[4] = v57;
  v50 = v58;
  v49[0] = v53;
  v49[1] = v54;
  v45 = v55;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v43 = v53;
  v44 = v54;
  v25 = outlined init with copy of _ViewInputs(v49, v51);
  (*&v38[0])(&v40, v25, &v43);
  v51[2] = v45;
  v51[3] = v46;
  v51[4] = v47;
  v52 = v48;
  v51[0] = v43;
  v51[1] = v44;
  outlined destroy of _ViewInputs(v51);
  v26 = v40;
  *&v27 = v41;
  *&v43 = v40;
  *v38 = v27;
  DWORD2(v43) = v41;
  v28 = PreferencesOutputs.subscript.getter();
  if ((v28 & 0x100000000) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    v32[0] = a5;
    v32[1] = v35;
    LOBYTE(v33) = 0;
    HIDWORD(v33) = v29;
    LOBYTE(WitnessTable) = 1;
    HIDWORD(WitnessTable) = v29;
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
  }

  v45 = v55;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v43 = v53;
  v44 = v54;
  outlined destroy of _ViewInputs(&v43);
  v30 = v39;
  *v39 = v26;
  result = v38[0];
  v30[1] = *&v38[0];
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ScrollTargetModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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