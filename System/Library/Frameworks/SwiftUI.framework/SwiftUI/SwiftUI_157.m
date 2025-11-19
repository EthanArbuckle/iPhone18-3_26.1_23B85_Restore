void type metadata accessor for State<_DragReorderableView_DragState>()
{
  if (!lazy cache variable for type metadata for State<_DragReorderableView_DragState>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<_DragReorderableView_DragState>);
    }
  }
}

void *NavigationTitleStorage.reduce(onto:)(void *result)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (!v6 || *(v1 + 40) == 5 || !*(v1 + 48))
  {
    result = (result)(&v14);
    v7 = v17;
    if (v17 != 1)
    {
      v8 = v18;
      v9 = v19;
      v10 = v20;
      if (!v6)
      {
        v3 = v14;
        v4 = v15;
        v5 = v16;
        outlined copy of Text?(v14, v15, v16, v17);
        v6 = v7;
      }

      *v2 = v3;
      *(v2 + 8) = v4;
      *(v2 + 16) = v5;
      *(v2 + 24) = v6;
      v11 = *(v2 + 40);
      if (v11 == 5)
      {
        LOBYTE(v11) = v8;
      }

      *(v2 + 40) = v11;
      v12 = *(v2 + 48);
      if (!v12)
      {

        v12 = v9;
      }

      result = outlined destroy of NavigationTitleStorage?(&v14);
      *(v2 + 48) = v12;
      v13 = *(v2 + 56);
      if (v13 == 3)
      {
        LOBYTE(v13) = v10;
      }

      *(v2 + 56) = v13;
    }
  }

  return result;
}

uint64_t View.navigationTitle<A>(_:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a8;
  v23 = a6;
  v22 = a9;
  v15 = *(a7 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D009CE0](v28, v16);
  Text.assertUnstyled(_:options:)();
  (*(v15 + 16))(v18, a5, a7);
  v19 = AnyView.init<A>(_:)();
  *&v25 = a1;
  *(&v25 + 1) = a2;
  *&v26 = a3 & 1;
  *(&v26 + 1) = a4;
  *v27 = 1;
  v27[8] = 5;
  *&v27[16] = v19;
  v27[24] = 3;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  View.navigationTitlePreferenceTransform(adding:)(&v25, v23, v24, v22);
  v28[0] = v25;
  v28[1] = v26;
  v29[0] = *v27;
  *(v29 + 9) = *&v27[9];
  return outlined destroy of NavigationTitleStorage(v28);
}

uint64_t View.navigationTitle<A>(_:icon:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  View.navigationTitle<A>(_:icon:)(v10, v11, v13 & 1, v15, a1, a2, a3, a4, a5);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

uint64_t View.navigationTitle<A, B>(_:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  View.navigationTitle<A>(_:icon:)(v14, v15, v17 & 1, v19, a2, a3, a4, a5, a6);
  outlined consume of Text.Storage(v14, v16, v18 & 1);
}

uint64_t View.assistiveAccessNavigationIcon(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v11[0] = a1;

  v8 = 0u;
  v9 = 0u;
  *v10 = 1;
  v10[8] = 5;
  *&v10[16] = AnyView.init<A>(_:)();
  v10[24] = 3;
  View.navigationTitlePreferenceTransform(adding:)(&v8, a2, a3, a4);
  v11[0] = v8;
  v11[1] = v9;
  v12[0] = *v10;
  *(v12 + 9) = *&v10[9];
  return outlined destroy of NavigationTitleStorage(v11);
}

uint64_t View.assistiveAccessNavigationIcon(systemImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  specialized Image.init(systemName:)(a1, a2);
  View.assistiveAccessNavigationIcon(_:)(v10, a3, a4, a5);
}

uint64_t View.navigationTitle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a6;
  v51 = a7;
  v52 = a5;
  v44 = a4;
  v45 = a3;
  v42 = a1;
  v43 = a2;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>();
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v16 + *(v17 + 60);
  v19 = LocalizedStringKey.init(stringLiteral:)();
  v48 = v20;
  v49 = v19;
  v46 = v21;
  v47 = v22;
  v54[0] = 1;
  *&v61 = a1;
  *(&v61 + 1) = a2;
  *&v62 = a3;
  *(&v62 + 1) = a4;
  _s7SwiftUI7BindingVySiGMaTm_0(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v55);
  v56 = 0u;
  v57 = 0u;
  *&v58 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(&v58 + 1) = 0;
  *v59 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *&v59[8] = 0;
  v59[16] = 0;
  *&v59[17] = v61;
  v59[19] = BYTE2(v61);
  *&v59[20] = 0;
  v59[24] = v54[0];
  *&v59[25] = 2;
  v59[27] = 0;
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v25(v13, 1, 1, v23);
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(0, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
  v27 = v26;
  v28 = *(v26 + 56);
  v25(&v18[v28], 1, 1, v24);
  v29 = v58;
  v64 = v58;
  v65[0] = *v59;
  *(v65 + 12) = *&v59[12];
  v31 = v55;
  v30 = v56;
  v61 = v55;
  v62 = v56;
  v63 = v57;
  v60 = 0;
  *(v18 + 9) = v57;
  *(v18 + 10) = v29;
  *(v18 + 7) = v31;
  *(v18 + 8) = v30;
  v32 = v65[1];
  *(v18 + 11) = v65[0];
  *(v18 + 12) = v32;
  *(v18 + 26) = 0;
  v18[220] = 0;
  v33 = v43;
  *v18 = v42;
  *(v18 + 1) = v33;
  v34 = v44;
  *(v18 + 2) = v45;
  *(v18 + 3) = v34;
  v18[32] = 0;
  v18[72] = 0;
  *(v18 + 5) = 0u;
  *(v18 + 6) = 0u;
  outlined init with copy of TextFieldState(&v55, v54);

  outlined assign with copy of Binding<TextSelection?>?(v13, &v18[v28]);
  v35 = Text.init(_:tableName:bundle:comment:)();
  v37 = v36;
  LOBYTE(v24) = v38;
  v40 = v39;
  outlined destroy of TextFieldState(&v55);
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgWOhTm_0(v13, type metadata accessor for Binding<TextSelection?>?);
  *(v18 + 5) = v35;
  *(v18 + 6) = v37;
  v18[56] = v24 & 1;
  *(v18 + 8) = v40;
  (*(*(v27 - 8) + 56))(v18, 0, 1, v27);
  *v16 = 0;
  MEMORY[0x18D00A570](v16, v52, v50, v53);
  return _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgWOhTm_0(v16, type metadata accessor for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>);
}

uint64_t View.navigationSubtitle(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  static Semantics.v4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    MEMORY[0x18D009CE0](v9);
    Text.assertUnstyled(_:options:)();
  }

  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3 & 1;
  v9[3] = a4;
  return View.preference<A>(key:value:)();
}

uint64_t View.navigationSubtitle<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v11[0] = v4;
  v11[1] = v5;
  v8 = v7 & 1;
  v11[2] = v7 & 1;
  v11[3] = v9;
  View.preference<A>(key:value:)();
  outlined consume of Text.Storage(v4, v6, v8);
}

uint64_t NavigationTitleStorage.accessibilityLabel(in:)()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v3 = *v0;
  v2 = *(v0 + 8);
  outlined copy of Text.Storage(*v0, v2, v1 & 1);

  static AccessibilityCore.TextResolutionOptions.defaultAttributedText.getter();
  v4 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
  outlined consume of Text.Storage(v3, v2, v1 & 1);

  return v4;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance NavigationSubtitleKey(void *result, void *(*a2)(__int128 *__return_ptr))
{
  v2 = result;
  v3 = result[3];
  if (v3)
  {
    v4 = *result;
    v5 = result[2];
  }

  else
  {
    result = a2(&v6);
    v4 = v6;
    v5 = v7;
    v3 = v8;
  }

  *v2 = v4;
  v2[2] = v5;
  v2[3] = v3;
  return result;
}

void type metadata accessor for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>()
{
  if (!lazy cache variable for type metadata for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>)
  {
    _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
    lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>();
    v0 = type metadata accessor for NavigationPropertiesModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TextField<Text> and conformance TextField<A>()
{
  result = lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>;
  if (!lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>)
  {
    _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for TextField<Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for TextField);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextField<Text> and conformance TextField<A>);
  }

  return result;
}

uint64_t _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationSubtitleKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationSubtitleKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationSubtitleKey> and conformance _PreferenceWritingModifier<A>)
  {
    _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<NavigationSubtitleKey>, &type metadata for NavigationSubtitleKey, &protocol witness table for NavigationSubtitleKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<NavigationSubtitleKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t assignWithCopy for NavigationTitleStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  v16 = (a1 + 32);
  v17 = *(a2 + 32);
  if (*(a1 + 32) == 1)
  {
    if (v17 != 1)
    {
      *v16 = v17;

      goto LABEL_16;
    }

    v18 = 1;
  }

  else
  {
    if (v17 != 1)
    {
      *v16 = v17;

      goto LABEL_16;
    }

    outlined destroy of Transaction(a1 + 32);
    v18 = *(a2 + 32);
  }

  *v16 = v18;
LABEL_16:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for NavigationTitleStorage(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      outlined consume of Text.Storage(v6, v7, v8);
      *(a1 + 24) = v4;

      goto LABEL_6;
    }

    outlined destroy of Text(a1);
  }

  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
LABEL_6:
  v10 = (a1 + 32);
  v11 = *(a2 + 32);
  if (*(a1 + 32) != 1)
  {
    if (v11 != 1)
    {
      *v10 = v11;

      goto LABEL_11;
    }

    outlined destroy of Transaction(a1 + 32);
    v11 = 1;
  }

  *v10 = v11;
LABEL_11:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void *specialized static NavigationTitleKey.reduce(value:nextValue:)(void *result, void *(*a2)(__int128 *__return_ptr))
{
  v2 = result;
  v3 = result[3];
  if (v3 == 1)
  {
    a2(v16);
    v4 = *(v2 + 1);
    v18 = *v2;
    v19 = v4;
    *v20 = *(v2 + 2);
    *&v20[9] = *(v2 + 41);
    result = outlined destroy of NavigationTitleStorage?(&v18);
    v5 = v16[1];
    *v2 = v16[0];
    *(v2 + 1) = v5;
    *(v2 + 2) = v17[0];
    *(v2 + 41) = *(v17 + 9);
  }

  else
  {
    v6 = *result;
    v7 = result[1];
    v8 = result[2];
    if (!v3 || *(result + 40) == 5 || !result[6])
    {
      result = a2(&v18);
      v9 = *(&v19 + 1);
      if (*(&v19 + 1) != 1)
      {
        v10 = v20[8];
        v11 = *&v20[16];
        v12 = v20[24];
        if (!v3)
        {
          v7 = *(&v18 + 1);
          v6 = v18;
          v8 = v19;
          outlined copy of Text?(v18, *(&v18 + 1), v19, *(&v19 + 1));
          v3 = v9;
        }

        *v2 = v6;
        v2[1] = v7;
        v2[2] = v8;
        v2[3] = v3;
        v13 = *(v2 + 40);
        if (v13 == 5)
        {
          LOBYTE(v13) = v10;
        }

        *(v2 + 40) = v13;
        v14 = v2[6];
        if (!v14)
        {

          v14 = v11;
        }

        result = outlined destroy of NavigationTitleStorage?(&v18);
        v2[6] = v14;
        v15 = *(v2 + 56);
        if (v15 == 3)
        {
          LOBYTE(v15) = v12;
        }

        *(v2 + 56) = v15;
      }
    }
  }

  return result;
}

uint64_t ImmersiveSpaceSceneUpdateTransition.Style.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x6574616D696E612ELL;
  }

  if (a1 == 1)
  {
    return 0x6D696E41746F6E2ELL;
  }

  outlined copy of Transaction?(a1);
  v3 = Animation.description.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  outlined consume of ListItemTint?(a1);
  return 0x6574616D696E612ELL;
}

uint64_t ImmersiveSpaceSceneUpdateTransition.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(18);

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xEC00000064657461;
      v3 = 0x6D696E41746F6E2ELL;
    }

    else
    {

      v4 = Animation.description.getter();
      MEMORY[0x18D00C9B0](v4);

      MEMORY[0x18D00C9B0](41, 0xE100000000000000);
      outlined consume of ListItemTint?(a1);
      v3 = 0x6574616D696E612ELL;
      v2 = 0xEA00000000002864;
    }
  }

  else
  {
    v2 = 0xEE00296C696E2864;
    v3 = 0x6574616D696E612ELL;
  }

  MEMORY[0x18D00C9B0](v3, v2);

  MEMORY[0x18D00C9B0](0x203A6465657320, 0xE700000000000000);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  return 0x203A656C797473;
}

void ImmersiveSpace.init<A>(content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  ImmersiveSpace.init<A>(content:)();
}

void ImmersiveSpace.init<A>(id:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  ImmersiveSpace.init<A>(id:content:)();
}

void ImmersiveSpace.init(id:for:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  ImmersiveSpace.init<A>(id:for:content:)();
}

void ImmersiveSpace.init<A>(for:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init(id:for:content:defaultValue:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  ImmersiveSpace.init<A>(id:for:content:defaultValue:)();
}

void ImmersiveSpace.init(for:content:defaultValue:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  ImmersiveSpace.init<A>(for:content:defaultValue:)();
}

void ImmersiveSpace.init<>(id:lazyContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type NoImmersiveSpaceData and conformance NoImmersiveSpaceData()
{
  result = lazy protocol witness table cache variable for type NoImmersiveSpaceData and conformance NoImmersiveSpaceData;
  if (!lazy protocol witness table cache variable for type NoImmersiveSpaceData and conformance NoImmersiveSpaceData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoImmersiveSpaceData and conformance NoImmersiveSpaceData);
  }

  return result;
}

unint64_t destroy for ImmersiveSpaceSceneUpdateTransition.Style(unint64_t *a1)
{
  result = *a1;
  v2 = -1;
  if (result < 0xFFFFFFFF)
  {
    v2 = result;
  }

  v3 = v2 + 1;
  if (result)
  {
    v4 = v3 > 1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ImmersiveSpaceSceneUpdateTransition.Style(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  LODWORD(v4) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v4 = *a2;
  }

  v5 = v4 + 1;
  if (v3)
  {
    v6 = v5 > 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = a1;

    a1 = v7;
  }

  *a1 = v3;
  return a1;
}

uint64_t *assignWithCopy for ImmersiveSpaceSceneUpdateTransition.Style(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  LODWORD(v4) = -1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v5) = -1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = v5 + 1;
  v7 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v4 = *a2;
  }

  v8 = v4 + 1;
  if (v7)
  {
    v9 = v8 >= 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  if (v3)
  {
    v11 = v6 > 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a1 = v7;
    if (v10)
    {
    }
  }

  else if (v10)
  {
    *a1 = v7;
  }

  else
  {

    *a1 = *a2;
  }

  return a1;
}

unint64_t *assignWithTake for ImmersiveSpaceSceneUpdateTransition.Style(unint64_t *result, unint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result < 0xFFFFFFFF)
  {
    v2 = *result;
  }

  v3 = v2 + 1;
  v4 = *a2;
  if (*result)
  {
    v5 = v3 > 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *result = v4;
  }

  else
  {
    LODWORD(v6) = -1;
    if (v4 < 0xFFFFFFFF)
    {
      v6 = *a2;
    }

    if (v4 && (v6 + 1) > 1)
    {
      v7 = result;

      result = v7;
      *v7 = v4;
    }

    else
    {
      *result = v4;
      v8 = result;

      return v8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImmersiveSpaceSceneUpdateTransition.Style(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImmersiveSpaceSceneUpdateTransition.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t destroy for ImmersiveSpaceSceneUpdateTransition(uint64_t *a1)
{
  result = *a1;
  if (result != 1)
  {
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ImmersiveSpaceSceneUpdateTransition(void *result, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 != 1)
  {
    v4 = result;

    result = v4;
  }

  v5 = a2[1];
  *result = v3;
  result[1] = v5;
  return result;
}

uint64_t *assignWithCopy for ImmersiveSpaceSceneUpdateTransition(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 1)
  {
    if (v5 != 1)
    {
      *a1 = v5;

      goto LABEL_9;
    }

    v6 = 1;
  }

  else
  {
    if (v5 != 1)
    {
      *a1 = v5;

      goto LABEL_9;
    }

    outlined destroy of Animation?(a1);
    v6 = *a2;
  }

  *a1 = v6;
LABEL_9:
  a1[1] = a2[1];
  return a1;
}

uint64_t outlined destroy of Animation?(uint64_t a1)
{
  type metadata accessor for Animation?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Animation?()
{
  if (!lazy cache variable for type metadata for Animation?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Animation?);
    }
  }
}

void *assignWithTake for ImmersiveSpaceSceneUpdateTransition(void *result, uint64_t *a2)
{
  v3 = *a2;
  if (*result == 1)
  {
    if (v3 == 1)
    {
      *result = 1;
    }

    else
    {
      *result = v3;
    }
  }

  else if (v3 == 1)
  {
    v4 = result;
    outlined destroy of Animation?(result);
    result = v4;
    *v4 = 1;
  }

  else
  {
    *result = v3;
    v5 = result;

    result = v5;
  }

  result[1] = a2[1];
  return result;
}

uint64_t getEnumTagSinglePayload for ImmersiveSpaceSceneUpdateTransition(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

void ImmersiveSpace.init<>(content:)()
{
  ImmersiveSpace.init<A>(content:)();
}

{
  ImmersiveSpace.init<A>(content:)();
}

void ImmersiveSpace.init<>(id:content:)()
{
  ImmersiveSpace.init<A>(id:content:)();
}

{
  ImmersiveSpace.init<A>(id:content:)();
}

_BYTE *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ScreenEdgesSystemGestureKey(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (result[1] == 1)
  {
    result = a2(&v5);
    v3 = 0;
    v4 = v5;
    if (BYTE1(v5))
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = *result;
    v3 = *result;
  }

  *v2 = (v3 | v4);
  return result;
}

uint64_t View.defersSystemGestures(on:)(char a1)
{
  *(swift_allocObject() + 16) = a1;
  View.transformPreference<A>(_:_:)();
}

char *partial apply for closure #1 in View.defersSystemGestures(on:)(char *result)
{
  v2 = *(v1 + 16);
  if (result[1])
  {
    v3 = 0;
    result[1] = 0;
  }

  else
  {
    v3 = *result;
  }

  *result = v3 | v2;
  return result;
}

void type metadata accessor for _PreferenceTransformModifier<ScreenEdgesSystemGestureKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<ScreenEdgesSystemGestureKey>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<ScreenEdgesSystemGestureKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<ScreenEdgesSystemGestureKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<ScreenEdgesSystemGestureKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<ScreenEdgesSystemGestureKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<ScreenEdgesSystemGestureKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<ScreenEdgesSystemGestureKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t DefaultDatePickerStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DatePickerStyleConfiguration(a1, v7, type metadata accessor for DatePickerStyleConfiguration);
  outlined init with copy of Date?(v7, a2, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v8 = v5[8];
  type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(0, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
  v10 = v9;
  v11 = MEMORY[0x1E69E6720];
  outlined init with copy of Date?(&v7[v8], a2 + *(v9 + 36), &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  outlined init with copy of Date?(&v7[v5[9]], a2 + *(v10 + 40), &lazy cache variable for type metadata for Date?, v11);
  *(a2 + *(v10 + 44)) = *&v7[v5[10]];
  outlined destroy of DatePickerStyleConfiguration(v7, type metadata accessor for DatePickerStyleConfiguration);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>();
  return closure #2 in DefaultDatePickerStyle.makeBody(configuration:)(a1, a2 + *(v12 + 44));
}

uint64_t closure #2 in DefaultDatePickerStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CollapsibleWheelDatePickerStyle();
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DatePickerStyleConfiguration(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DatePickerStyleConfiguration(a1, v11, type metadata accessor for DatePickerStyleConfiguration);
  outlined init with copy of Date?(v11, a2, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v12 = v9[8];
  type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(0, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
  v14 = v13;
  v15 = MEMORY[0x1E69E6720];
  outlined init with copy of Date?(&v11[v12], a2 + *(v13 + 36), &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  outlined init with copy of Date?(&v11[v9[9]], a2 + *(v14 + 40), &lazy cache variable for type metadata for Date?, v15);
  *(a2 + *(v14 + 44)) = *&v11[v9[10]];
  outlined destroy of DatePickerStyleConfiguration(v11, type metadata accessor for DatePickerStyleConfiguration);
  *v7 = swift_getKeyPath();
  v16 = MEMORY[0x1E697DCB8];
  type metadata accessor for Binding<Date>(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v17 = v5[7];
  *(v7 + v17) = swift_getKeyPath();
  type metadata accessor for Binding<Date>(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], v16);
  swift_storeEnumTagMultiPayload();
  v18 = v5[8];
  *(v7 + v18) = swift_getKeyPath();
  type metadata accessor for Binding<Date>(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], v16);
  swift_storeEnumTagMultiPayload();
  v19 = v7 + v5[9];
  *v19 = 0;
  *(v19 + 1) = 0;
  type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>();
  outlined init with copy of DatePickerStyleConfiguration(v7, a2 + *(v20 + 36), type metadata accessor for CollapsibleWheelDatePickerStyle);
  outlined destroy of DatePickerStyleConfiguration(v7, type metadata accessor for CollapsibleWheelDatePickerStyle);
  *v7 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v21 = v5[7];
  *(v7 + v21) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v22 = v5[8];
  *(v7 + v22) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v23 = v7 + v5[9];
  *v23 = 0;
  *(v23 + 1) = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>();
  outlined init with copy of DatePickerStyleConfiguration(v7, a2 + *(v24 + 36), type metadata accessor for CollapsibleWheelDatePickerStyle);
  outlined destroy of DatePickerStyleConfiguration(v7, type metadata accessor for CollapsibleWheelDatePickerStyle);
  *v7 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v25 = v5[7];
  *(v7 + v25) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v26 = v5[8];
  *(v7 + v26) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v27 = v7 + v5[9];
  *v27 = 0;
  *(v27 + 1) = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>();
  outlined init with copy of DatePickerStyleConfiguration(v7, a2 + *(v28 + 36), type metadata accessor for CollapsibleWheelDatePickerStyle);
  return outlined destroy of DatePickerStyleConfiguration(v7, type metadata accessor for CollapsibleWheelDatePickerStyle);
}

uint64_t protocol witness for DatePickerStyle.makeBody(configuration:) in conformance DefaultDatePickerStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DatePickerStyleConfiguration(a1, v7, type metadata accessor for DatePickerStyleConfiguration);
  outlined init with copy of Date?(v7, a2, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v8 = v5[8];
  type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(0, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
  v10 = v9;
  v11 = MEMORY[0x1E69E6720];
  outlined init with copy of Date?(&v7[v8], a2 + *(v9 + 36), &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
  outlined init with copy of Date?(&v7[v5[9]], a2 + *(v10 + 40), &lazy cache variable for type metadata for Date?, v11);
  *(a2 + *(v10 + 44)) = *&v7[v5[10]];
  outlined destroy of DatePickerStyleConfiguration(v7, type metadata accessor for DatePickerStyleConfiguration);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>();
  return closure #2 in DefaultDatePickerStyle.makeBody(configuration:)(a1, a2 + *(v12 + 44));
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for Binding<Date>(0, a3, MEMORY[0x1E6969530], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>)
  {
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
    type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>);
    }
  }
}

void type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>)
  {
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(255, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
    type metadata accessor for DatePickerStyleModifier<CompactDatePickerStyle>(255, &lazy cache variable for type metadata for DatePickerStyleModifier<CompactDatePickerStyle>, lazy protocol witness table accessor for type CompactDatePickerStyle and conformance CompactDatePickerStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CompactDatePickerStyle and conformance CompactDatePickerStyle()
{
  result = lazy protocol witness table cache variable for type CompactDatePickerStyle and conformance CompactDatePickerStyle;
  if (!lazy protocol witness table cache variable for type CompactDatePickerStyle and conformance CompactDatePickerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompactDatePickerStyle and conformance CompactDatePickerStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>();
    type metadata accessor for DatePickerStyleModifier<CompactDatePickerStyle>(255, &lazy cache variable for type metadata for DatePickerStyleModifier<WheelDatePickerStyle>, lazy protocol witness table accessor for type WheelDatePickerStyle and conformance WheelDatePickerStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>)
  {
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(255, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>()
{
  if (!lazy cache variable for type metadata for DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>)
  {
    type metadata accessor for CollapsibleWheelDatePickerStyle();
    lazy protocol witness table accessor for type CollapsibleWheelDatePickerStyle and conformance CollapsibleWheelDatePickerStyle();
    v0 = type metadata accessor for DatePickerStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CollapsibleWheelDatePickerStyle and conformance CollapsibleWheelDatePickerStyle()
{
  result = lazy protocol witness table cache variable for type CollapsibleWheelDatePickerStyle and conformance CollapsibleWheelDatePickerStyle;
  if (!lazy protocol witness table cache variable for type CollapsibleWheelDatePickerStyle and conformance CollapsibleWheelDatePickerStyle)
  {
    type metadata accessor for CollapsibleWheelDatePickerStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollapsibleWheelDatePickerStyle and conformance CollapsibleWheelDatePickerStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, a3);
    type metadata accessor for DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>();
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for DatePickerStyleModifier<CompactDatePickerStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for DatePickerStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
    lazy protocol witness table accessor for type ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>>();
    lazy protocol witness table accessor for type DatePicker<DatePickerStyleConfiguration.Label> and conformance DatePicker<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, DatePickerStyleModifier<CompactDatePickerStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DatePicker<DatePickerStyleConfiguration.Label> and conformance DatePicker<A>()
{
  result = lazy protocol witness table cache variable for type DatePicker<DatePickerStyleConfiguration.Label> and conformance DatePicker<A>;
  if (!lazy protocol witness table cache variable for type DatePicker<DatePickerStyleConfiguration.Label> and conformance DatePicker<A>)
  {
    type metadata accessor for DatePicker<DatePickerStyleConfiguration.Label>(255, &lazy cache variable for type metadata for DatePicker<DatePickerStyleConfiguration.Label>, &type metadata for DatePickerStyleConfiguration.Label, &protocol witness table for DatePickerStyleConfiguration.Label, type metadata accessor for DatePicker);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatePicker<DatePickerStyleConfiguration.Label> and conformance DatePicker<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, DatePickerStyleModifier<WheelDatePickerStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DatePicker<DatePickerStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<InsetGroupedListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<InsetGroupedListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<InsetGroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedListStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DatePickerStyleModifier<CollapsibleWheelDatePickerStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for Binding<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of DatePickerStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DatePickerStyleConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

SwiftUI::FieldDatePickerStyle __swiftcall FieldDatePickerStyle.init()()
{
  result.presentsCalendarOverlay = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t GraphicalDatePickerStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DatePickerStyleConfiguration(a1, a2);
  v3 = type metadata accessor for UIKitDatePicker(0);
  *(a2 + v3[5]) = 3;
  v4 = v3[6];
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], v5);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  *(a2 + v7) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], v5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for DatePickerStyle.makeBody(configuration:) in conformance GraphicalDatePickerStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of DatePickerStyleConfiguration(a1, a2);
  v3 = type metadata accessor for UIKitDatePicker(0);
  *(a2 + v3[5]) = 3;
  v4 = v3[6];
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], v5);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  *(a2 + v7) = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], v5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for _SystemDatePicker()
{
  result = type metadata singleton initialization cache for _SystemDatePicker;
  if (!type metadata singleton initialization cache for _SystemDatePicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _SystemDatePicker and conformance _SystemDatePicker(unint64_t *a1, void (*a2)(uint64_t))
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

char *initializeBufferWithCopyOfBuffer for _SystemDatePicker(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Locale();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v9 = a3[5];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for Calendar();
      (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    }

    else
    {
      *&a1[v9] = *&a2[v9];
    }

    swift_storeEnumTagMultiPayload();
    v11 = a3[6];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = type metadata accessor for TimeZone();
      (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    }

    else
    {
      *&a1[v11] = *&a2[v11];
    }

    swift_storeEnumTagMultiPayload();
    v29 = a2;
    v30 = a3;
    v13 = a3[7];
    v14 = &a1[v13];
    v15 = &a2[v13];
    v16 = *&a2[v13 + 8];
    *v14 = *&a2[v13];
    *(v14 + 1) = v16;
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
    v18 = *(v17 + 32);
    v19 = type metadata accessor for Date();
    v20 = *(v19 - 8);
    v21 = *(v20 + 16);

    v21(&v14[v18], &v15[v18], v19);
    v31 = type metadata accessor for DatePickerStyleConfiguration(0);
    v22 = v31[6];
    v23 = *(v20 + 48);
    if (v23(&v15[v22], 1, v19))
    {
      _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v14[v22], &v15[v22], *(*(v24 - 8) + 64));
    }

    else
    {
      v21(&v14[v22], &v15[v22], v19);
      (*(v20 + 56))(&v14[v22], 0, 1, v19);
    }

    v25 = v31[7];
    if (v23(&v15[v25], 1, v19))
    {
      _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&v14[v25], &v15[v25], *(*(v26 - 8) + 64));
    }

    else
    {
      v21(&v14[v25], &v15[v25], v19);
      (*(v20 + 56))(&v14[v25], 0, 1, v19);
    }

    *&v14[v31[8]] = *&v15[v31[8]];
    v27 = v30[9];
    a1[v30[8]] = v29[v30[8]];
    a1[v27] = v29[v27];
  }

  return a1;
}

uint64_t destroy for _SystemDatePicker(uint64_t a1, int *a2)
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Locale();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  else
  {
  }

  v5 = a2[5];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Calendar();
    (*(*(v6 - 8) + 8))(a1 + v5, v6);
  }

  else
  {
  }

  v7 = a2[6];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for TimeZone();
    (*(*(v8 - 8) + 8))(a1 + v7, v8);
  }

  else
  {
  }

  v9 = a1 + a2[7];

  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v11 = *(v10 + 32);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v19 = *(v13 + 8);
  v19(v9 + v11, v12);
  v14 = type metadata accessor for DatePickerStyleConfiguration(0);
  v15 = *(v14 + 24);
  v16 = *(v13 + 48);
  if (!v16(v9 + v15, 1, v12))
  {
    v19(v9 + v15, v12);
  }

  v17 = *(v14 + 28);
  result = (v16)(v9 + v17, 1, v12);
  if (!result)
  {

    return (v19)(v9 + v17, v12);
  }

  return result;
}

char *initializeWithCopy for _SystemDatePicker(char *a1, char *a2, int *a3)
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Locale();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  v7 = a3[5];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Calendar();
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
  }

  else
  {
    *&a1[v7] = *&a2[v7];
  }

  swift_storeEnumTagMultiPayload();
  v9 = a3[6];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for TimeZone();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
  }

  else
  {
    *&a1[v9] = *&a2[v9];
  }

  swift_storeEnumTagMultiPayload();
  v28 = a1;
  v29 = a3;
  v11 = a3[7];
  v12 = &a1[v11];
  v30 = a2;
  v13 = &a2[v11];
  v14 = *&a2[v11 + 8];
  *v12 = *&a2[v11];
  *(v12 + 1) = v14;
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v16 = *(v15 + 32);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);

  v19(&v12[v16], &v13[v16], v17);
  v20 = type metadata accessor for DatePickerStyleConfiguration(0);
  v21 = v20[6];
  v22 = *(v18 + 48);
  if (v22(&v13[v21], 1, v17))
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v12[v21], &v13[v21], *(*(v23 - 8) + 64));
  }

  else
  {
    v19(&v12[v21], &v13[v21], v17);
    (*(v18 + 56))(&v12[v21], 0, 1, v17);
  }

  v24 = v20[7];
  if (v22(&v13[v24], 1, v17))
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v12[v24], &v13[v24], *(*(v25 - 8) + 64));
  }

  else
  {
    v19(&v12[v24], &v13[v24], v17);
    (*(v18 + 56))(&v12[v24], 0, 1, v17);
  }

  *&v12[v20[8]] = *&v13[v20[8]];
  v26 = v29[9];
  v28[v29[8]] = v30[v29[8]];
  v28[v26] = v30[v26];
  return v28;
}

char *assignWithCopy for _SystemDatePicker(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    v6 = MEMORY[0x1E6969770];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(a1, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, v6, MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Locale();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
    v8 = a3[5];
    v9 = MEMORY[0x1E6969AE8];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(&a1[v8], &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, v9, MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for Calendar();
      (*(*(v10 - 8) + 16))(&a1[v8], &a2[v8], v10);
    }

    else
    {
      *&a1[v8] = *&a2[v8];
    }

    swift_storeEnumTagMultiPayload();
    v11 = a3[6];
    v12 = MEMORY[0x1E6969BC0];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(&a1[v11], &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, v12, MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = type metadata accessor for TimeZone();
      (*(*(v13 - 8) + 16))(&a1[v11], &a2[v11], v13);
    }

    else
    {
      *&a1[v11] = *&a2[v11];
    }

    swift_storeEnumTagMultiPayload();
  }

  v32 = a3;
  v14 = a3[7];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *&a1[v14] = *&a2[v14];

  *(v15 + 1) = *(v16 + 1);

  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v18 = *(v17 + 32);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v31 = *(v20 + 24);
  v31(&v15[v18], &v16[v18], v19);
  v33 = type metadata accessor for DatePickerStyleConfiguration(0);
  v21 = v33[6];
  v22 = *(v20 + 48);
  v23 = v22(&v15[v21], 1, v19);
  v24 = v22(&v16[v21], 1, v19);
  if (v23)
  {
    if (!v24)
    {
      (*(v20 + 16))(&v15[v21], &v16[v21], v19);
      (*(v20 + 56))(&v15[v21], 0, 1, v19);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v24)
  {
    (*(v20 + 8))(&v15[v21], v19);
LABEL_17:
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v15[v21], &v16[v21], *(*(v25 - 8) + 64));
    goto LABEL_18;
  }

  v31(&v15[v21], &v16[v21], v19);
LABEL_18:
  v26 = v33[7];
  v27 = v22(&v15[v26], 1, v19);
  v28 = v22(&v16[v26], 1, v19);
  if (!v27)
  {
    if (!v28)
    {
      v31(&v15[v26], &v16[v26], v19);
      goto LABEL_24;
    }

    (*(v20 + 8))(&v15[v26], v19);
    goto LABEL_23;
  }

  if (v28)
  {
LABEL_23:
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v15[v26], &v16[v26], *(*(v29 - 8) + 64));
    goto LABEL_24;
  }

  (*(v20 + 16))(&v15[v26], &v16[v26], v19);
  (*(v20 + 56))(&v15[v26], 0, 1, v19);
LABEL_24:
  *&v15[v33[8]] = *&v16[v33[8]];
  a1[v32[8]] = a2[v32[8]];
  a1[v32[9]] = a2[v32[9]];
  return a1;
}

uint64_t _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, a2, a3, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *initializeWithTake for _SystemDatePicker(char *a1, char *a2, int *a3)
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  v7 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for Locale();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  v9 = a3[5];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
  v11 = v10;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for Calendar();
    (*(*(v12 - 8) + 32))(&a1[v9], &a2[v9], v12);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v9], &a2[v9], *(*(v11 - 8) + 64));
  }

  v13 = a3[6];
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
  v15 = v14;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for TimeZone();
    (*(*(v16 - 8) + 32))(&a1[v13], &a2[v13], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(&a1[v13], &a2[v13], *(*(v15 - 8) + 64));
  }

  v35 = a3;
  v36 = a1;
  v17 = a3[7];
  v18 = &a1[v17];
  v34 = a2;
  v19 = &a2[v17];
  v20 = *&a2[v17 + 8];
  *v18 = *&a2[v17];
  *(v18 + 1) = v20;
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v22 = *(v21 + 32);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 32);
  v25(&v18[v22], &v19[v22], v23);
  v26 = type metadata accessor for DatePickerStyleConfiguration(0);
  v27 = v26[6];
  v28 = *(v24 + 48);
  if (v28(&v19[v27], 1, v23))
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v18[v27], &v19[v27], *(*(v29 - 8) + 64));
  }

  else
  {
    v25(&v18[v27], &v19[v27], v23);
    (*(v24 + 56))(&v18[v27], 0, 1, v23);
  }

  v30 = v26[7];
  if (v28(&v19[v30], 1, v23))
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v18[v30], &v19[v30], *(*(v31 - 8) + 64));
  }

  else
  {
    v25(&v18[v30], &v19[v30], v23);
    (*(v24 + 56))(&v18[v30], 0, 1, v23);
  }

  *&v18[v26[8]] = *&v19[v26[8]];
  result = v36;
  v33 = v35[9];
  v36[v35[8]] = v34[v35[8]];
  v36[v33] = v34[v33];
  return result;
}

char *assignWithTake for _SystemDatePicker(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    v6 = MEMORY[0x1E6969770];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(a1, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>.Content, v6, MEMORY[0x1E697DCB8]);
    v8 = v7;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = type metadata accessor for Locale();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    v10 = a3[5];
    v11 = MEMORY[0x1E6969AE8];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(&a1[v10], &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>.Content, v11, MEMORY[0x1E697DCB8]);
    v13 = v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for Calendar();
      (*(*(v14 - 8) + 32))(&a1[v10], &a2[v10], v14);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v10], &a2[v10], *(*(v13 - 8) + 64));
    }

    v15 = a3[6];
    v16 = MEMORY[0x1E6969BC0];
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GWOhTm_0(&a1[v15], &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0]);
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>.Content, v16, MEMORY[0x1E697DCB8]);
    v18 = v17;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = type metadata accessor for TimeZone();
      (*(*(v19 - 8) + 32))(&a1[v15], &a2[v15], v19);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(&a1[v15], &a2[v15], *(*(v18 - 8) + 64));
    }
  }

  v39 = a3;
  v20 = a3[7];
  v21 = &a1[v20];
  v22 = &a2[v20];
  *&a1[v20] = *&a2[v20];

  *(v21 + 1) = *(v22 + 1);

  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  v24 = *(v23 + 32);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v38 = *(v26 + 40);
  v38(&v21[v24], &v22[v24], v25);
  v40 = type metadata accessor for DatePickerStyleConfiguration(0);
  v27 = v40[6];
  v28 = *(v26 + 48);
  v29 = v28(&v21[v27], 1, v25);
  v30 = v28(&v22[v27], 1, v25);
  if (v29)
  {
    if (!v30)
    {
      (*(v26 + 32))(&v21[v27], &v22[v27], v25);
      (*(v26 + 56))(&v21[v27], 0, 1, v25);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v30)
  {
    (*(v26 + 8))(&v21[v27], v25);
LABEL_16:
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v21[v27], &v22[v27], *(*(v31 - 8) + 64));
    goto LABEL_17;
  }

  v38(&v21[v27], &v22[v27], v25);
LABEL_17:
  v32 = v40[7];
  v33 = v28(&v21[v32], 1, v25);
  v34 = v28(&v22[v32], 1, v25);
  if (!v33)
  {
    if (!v34)
    {
      v38(&v21[v32], &v22[v32], v25);
      goto LABEL_23;
    }

    (*(v26 + 8))(&v21[v32], v25);
    goto LABEL_22;
  }

  if (v34)
  {
LABEL_22:
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&v21[v32], &v22[v32], *(*(v35 - 8) + 64));
    goto LABEL_23;
  }

  (*(v26 + 32))(&v21[v32], &v22[v32], v25);
  (*(v26 + 56))(&v21[v32], 0, 1, v25);
LABEL_23:
  *&v21[v40[8]] = *&v22[v40[8]];
  v36 = v39[9];
  a1[v39[8]] = a2[v39[8]];
  a1[v36] = a2[v36];
  return a1;
}

void _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for _SystemDatePicker()
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(319, &lazy cache variable for type metadata for Environment<Locale>.Content, MEMORY[0x1E6969770], MEMORY[0x1E697DCB8]);
  if (v0 <= 0x3F)
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(319, &lazy cache variable for type metadata for Environment<Calendar>.Content, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCB8]);
    if (v1 <= 0x3F)
    {
      _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(319, &lazy cache variable for type metadata for Environment<TimeZone>.Content, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCB8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DatePickerStyleConfiguration(319);
        if (v3 <= 0x3F)
        {
          swift_initStructMetadata();
        }
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type _SystemDatePicker.Style and conformance _SystemDatePicker.Style()
{
  result = lazy protocol witness table cache variable for type _SystemDatePicker.Style and conformance _SystemDatePicker.Style;
  if (!lazy protocol witness table cache variable for type _SystemDatePicker.Style and conformance _SystemDatePicker.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SystemDatePicker.Style and conformance _SystemDatePicker.Style);
  }

  return result;
}

uint64_t AutomaticTableStyle.makeBody(configuration:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  outlined init with copy of Binding<AnySelectionManager>?(a1, a2);
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  a2[7] = v4;
  a2[8] = v5;
  a2[9] = v6;
  a2[10] = v7;
  a2[11] = v8;
  a2[12] = v9;
  a2[13] = v10;
  outlined copy of Binding<[SwiftUIAnySortComparator]>?(v4, v5);

  return outlined copy of Binding<AnyTableColumnCustomization>?(v7, v8);
}

uint64_t closure #1 in closure #1 in ProgressViewGauge.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for ProgressView);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v28 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 10);
  v28 = *(a1 + 9);
  v29 = v15;
  specialized Environment.wrappedValue.getter(*(a1 + 16), *(a1 + 24), &v30);
  if (v30 & 2) != 0 && (specialized Environment.wrappedValue.getter(*(a1 + 32), *(a1 + 40)))
  {
    v13 = 0.0;
  }

  if (v13 < 0.0 || v13 > 1.0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  if (v13 <= 1.0)
  {
    v18 = v13;
  }

  else
  {
    v18 = 1.0;
  }

  if (v13 >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for CustomProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for CustomProgressView);
  v21 = v20[13];
  *(v9 + v21) = 1;
  v22 = v9 + v20[14];
  *v22 = 256;
  v23 = v20[15];
  *v9 = v19;
  *(v9 + 8) = v13 < 0.0;
  *(v9 + 9) = 0;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  *(v9 + v21) = 0;
  *v22 = v14 & 1;
  v22[1] = 0;
  *(v9 + v23) = 0.0;
  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>.Base, type metadata accessor for ProgressView.Base);
  swift_storeEnumTagMultiPayload();
  outlined init with take of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(v9, v12);
  outlined init with copy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(v12, v6);
  *a2 = v28 & 1;
  type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)();
  v25 = v24;
  outlined init with copy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(v6, &a2[*(v24 + 48)]);
  v26 = *(v25 + 64);
  outlined destroy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(v12);
  a2[v26] = v29 & 1;
  return outlined destroy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(v6);
}

uint64_t protocol witness for View.body.getter in conformance ProgressViewGauge@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v8 = *v1;
  v9[0] = v3;
  *(v9 + 9) = *(v1 + 25);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>(0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>, type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>);
  v5 = a1 + *(v4 + 44);
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>(0, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>, type metadata accessor for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>);
  return closure #1 in closure #1 in ProgressViewGauge.body.getter(&v8, (v5 + *(v6 + 44)));
}

uint64_t AccessoryLinearCapacityGaugeStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 10) = v6;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressViewGauge and conformance ProgressViewGauge()
{
  result = lazy protocol witness table cache variable for type ProgressViewGauge and conformance ProgressViewGauge;
  if (!lazy protocol witness table cache variable for type ProgressViewGauge and conformance ProgressViewGauge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewGauge and conformance ProgressViewGauge);
  }

  return result;
}

void type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>)
  {
    type metadata accessor for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>();
    lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>, type metadata accessor for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>);
    }
  }
}

void type metadata accessor for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>()
{
  if (!lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>)
  {
    type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)();
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>);
    }
  }
}

void type metadata accessor for (GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)()
{
  if (!lazy cache variable for type metadata for (GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?))
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.MinimumValueLabel?);
    type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(255, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for ProgressView);
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.MaximumValueLabel?);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?));
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _VariadicView.Tree();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for GaugeStyleConfiguration.CurrentValueLabel?);
    v9[0] = &type metadata for GaugeStyleConfiguration.Label;
    v9[1] = v6;
    v9[2] = &protocol witness table for GaugeStyleConfiguration.Label;
    v9[3] = lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel? and conformance <A> A?();
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with take of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for ProgressView);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for ProgressView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(uint64_t a1)
{
  type metadata accessor for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>(0, &lazy cache variable for type metadata for ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, type metadata accessor for ProgressView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for VStack<HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>()
{
  if (!lazy cache variable for type metadata for VStack<HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>)
  {
    type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>();
    lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>);
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<HStack<TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)>>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(GaugeStyleConfiguration.MinimumValueLabel?, ProgressView<GaugeStyleConfiguration.Label, GaugeStyleConfiguration.CurrentValueLabel?>, GaugeStyleConfiguration.MaximumValueLabel?)> and conformance TupleView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CarPlay.body.getter@<X0>(uint64_t a1@<X8>)
{
  specialized ResolvedUISceneAdaptor.init(id:kind:content:)(0x79616C50726143, 0xE700000000000000, 0, 0, 0, &v15);
  v20 = *&v16[24];
  v19 = *&v16[8];
  v17 = v15;
  v18 = v16[0];
  v8 = v15;
  v9 = *v16;
  v10 = *&v16[16];
  v2 = type metadata accessor for ResolvedUISceneAdaptor();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v8, v2, &v11);
  outlined destroy of SceneID(&v17);
  outlined destroy of UISceneAdaptorConfiguration.Kind(&v19);
  outlined destroy of AnyView(&v20);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v8 = v11;
  LOBYTE(v9) = v12;
  *(&v9 + 1) = v13;
  v10 = v14;
  static SceneBuilder.buildBlock<A>(_:)(&v8, v2, a1);
  outlined consume of SceneID(v3, *(&v3 + 1), v4);
  outlined consume of UISceneAdaptorConfiguration.Kind(v5, v6);
}

void PrintItem.init(content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t TableSections.init(list:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of TableRowList(a1, a2);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  if (v6)
  {
    v23 = a2;
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableSections.Item>, &type metadata for TableSections.Item, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD63400;
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v22 = (*(v9 + 16))(v8, v9);
    v10 = *(*v6 + 88);

    v12 = v10(v11);
    v13 = *(*v6 + 96);
    v14 = v13();
    v24 = v10;
    v15 = (v10)();
    result = v13();
    if (v12 < v15 || result < v12)
    {
      __break(1u);
    }

    else
    {
      v18 = v24(result);
      result = v13();
      if (v14 >= v18 && result >= v14)
      {
        if (!__OFSUB__(v14, v12))
        {
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
          *(v7 + 48) = v22;
          *(v7 + 56) = 0u;
          *(v7 + 72) = 0u;
          *(v7 + 88) = 0;
          *(v7 + 96) = v6;
          *(v7 + 104) = 0;
          *(v7 + 112) = 0;
          *(v7 + 120) = v14 - v12;

          result = outlined destroy of TableRowList(a1);
          *(v23 + 40) = v7;
          return result;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v20 = outlined init with copy of TableRowList(a1, &v26);
  v25[0] = MEMORY[0x1E69E7CC0];
  memset(&v25[1], 0, 24);
  MEMORY[0x1EEE9AC00](v20);
  static Update.ensure<A>(_:)();
  TableSections.Accumulator.finalize()();
  outlined destroy of TableRowList(a1);
  v21 = v25[0];

  result = outlined destroy of TableSections.Accumulator(v25);
  *(a2 + 40) = v21;
  return result;
}

void TableSections.firstIndexPath<A>(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v21 = a3;
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  MatchingID = type metadata accessor for TableSections.FindMatchingID();
  MEMORY[0x1EEE9AC00](MatchingID);
  v10 = &v21 - v9;
  v22 = v3;
  v29 = *(v3 + 40);
  v25 = *(v29 + 16);
  if (v25)
  {
    v11 = 0;
    v12 = v29 + 32;
    v13 = (v4 + 16);
    v14 = (v4 + 32);
    v24 = (v8 + 8);
    while (v11 < *(v29 + 16))
    {
      *v35 = v11;
      outlined init with copy of TableSections.Item(v12, &v35[8]);
      if (*&v35[56] == 1)
      {
        goto LABEL_10;
      }

      v23 = *v35;
      *v35 = *&v35[8];
      *&v35[16] = *&v35[24];
      *&v35[32] = *&v35[40];
      *&v35[48] = *&v35[56];
      *&v35[64] = *&v35[72];
      *&v35[80] = *&v35[88];
      v15 = v26;
      v16 = v28;
      (*v13)(v26, v27, v28);
      v17 = *&v35[16];
      (*v14)(v10, v15, v16);
      *&v10[MatchingID[9]] = v17;
      v10[MatchingID[10]] = 0;
      *&v10[MatchingID[11]] = 0;
      outlined init with copy of TableRowList?(&v35[24], &v30);
      if (*(&v31 + 1))
      {
        v33[0] = v30;
        v33[1] = v31;
        v34 = v32;
        TableRowList.visitRows<A>(applying:from:)();
        outlined destroy of TableRowList(v33);
      }

      else
      {
        outlined destroy of TableRowList?(&v30);
        TableRowList.visitRows<A>(applying:from:)();
      }

      if (v10[MatchingID[10]] == 1)
      {
        v19 = v21;
        MEMORY[0x18D0006A0](*&v10[MatchingID[11]], v23);
        (*v24)(v10, MatchingID);
        outlined destroy of TableSections.Item(v35);
        v20 = type metadata accessor for IndexPath();
        (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
        return;
      }

      ++v11;
      (*v24)(v10, MatchingID);
      outlined destroy of TableSections.Item(v35);
      v12 += 96;
      if (v25 == v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v18 = type metadata accessor for IndexPath();
    (*(*(v18 - 8) + 56))(v21, 1, 1, v18);
  }
}

uint64_t TableSections.firstIndexPath(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v19 = result;
  v20 = 0;
  v23 = 0;
  v3 = *(v2 + 40);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      *v18 = v5;
      outlined init with copy of TableSections.Item(v6, &v18[8]);
      if (*&v18[56] == 1)
      {
        goto LABEL_10;
      }

      v7 = *v18;
      *v18 = *&v18[8];
      *&v18[16] = *&v18[24];
      *&v18[32] = *&v18[40];
      *&v18[48] = *&v18[56];
      *&v18[64] = *&v18[72];
      *&v18[80] = *&v18[88];
      v22 = 0;
      v21 = *&v18[16];
      v8 = outlined init with copy of TableRowList?(&v18[24], &v13);
      if (*(&v14 + 1))
      {
        v16[0] = v13;
        v16[1] = v14;
        v17 = v15;
        MEMORY[0x1EEE9AC00](v8);
        static Update.ensure<A>(_:)();
        outlined destroy of TableRowList(v16);
      }

      else
      {
        v9 = outlined destroy of TableRowList?(&v13);
        MEMORY[0x1EEE9AC00](v9);
        static Update.ensure<A>(_:)();
      }

      if (v20 == 1)
      {
        MEMORY[0x18D0006A0](v22, v7);
        outlined destroy of TableSections.Item(v18);
        v11 = type metadata accessor for IndexPath();
        return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
      }

      ++v5;
      result = outlined destroy of TableSections.Item(v18);
      v6 += 96;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v10 = type metadata accessor for IndexPath();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  return result;
}

void TableSections.Accumulator.finalize()()
{
  v1 = *v0;
  if (*(*v0 + 2))
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = v3 - v2;
    if (v3 <= v2)
    {
      return;
    }

    outlined init with copy of TableRowList((v0 + 4), v26);
    v5 = v0[1];
    v6 = specialized ResolvedTableRowIDs.init(rowList:start:limit:)(v26, v5, v3);
    v8 = v7;
    v10 = v9;
    v25 = v11 & 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v13 = *(v1 + 2);
    v12 = *(v1 + 3);
    if (v13 >= v12 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v1);
    }

    *(v1 + 2) = v13 + 1;
    v14 = &v1[96 * v13];
    *(v14 + 4) = v5;
    v14[40] = 0;
    v15 = v26[0];
    *(v14 + 11) = *(v26 + 3);
    *(v14 + 41) = v15;
    *(v14 + 6) = v4;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 11) = 0;
    *(v14 + 12) = v6;
  }

  else
  {
    outlined init with copy of TableRowList((v0 + 4), v26);
    v16 = v0[2];
    v17 = specialized ResolvedTableRowIDs.init(rowList:start:limit:)(v26, 0, v16);
    v8 = v18;
    v10 = v19;
    v25 = v20 & 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v22 = *(v1 + 2);
    v21 = *(v1 + 3);
    if (v22 >= v21 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v1);
    }

    *(v1 + 2) = v22 + 1;
    v14 = &v1[96 * v22];
    *(v14 + 4) = 0;
    v14[40] = 0;
    v23 = v26[0];
    *(v14 + 11) = *(v26 + 3);
    *(v14 + 41) = v23;
    *(v14 + 6) = v16;
    *(v14 + 56) = 0u;
    *(v14 + 72) = 0u;
    *(v14 + 11) = 0;
    *(v14 + 12) = v17;
  }

  v14[104] = v25;
  *(v14 + 105) = *v24;
  *(v14 + 27) = *&v24[3];
  *(v14 + 14) = v8;
  *(v14 + 15) = v10;
  *v0 = v1;
}

uint64_t closure #1 in TableSections.FindMatchingID.visit<A, B>(rowValue:view:children:traits:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v40 = a5;
  v35 = a4;
  v39 = a2;
  v43 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v37 = &v33 - v8;
  v44 = *(v7 - 8);
  v38 = v44;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  dispatch thunk of Identifiable.id.getter();
  v18 = v13;
  v19 = v7;
  v20 = v37;
  v21 = swift_dynamicCast();
  v22 = v43;
  v23 = *(v43 + 56);
  v23(v16, v21 ^ 1u, 1, a3);
  (*(v22 + 16))(v13, v39, a3);
  v23(v13, 0, 1, a3);
  v24 = *(TupleTypeMetadata2 + 48);
  v25 = *(v44 + 16);
  v39 = v16;
  v25(v20, v16, v19);
  v25(&v20[v24], v18, v19);
  v26 = *(v22 + 48);
  if (v26(v20, 1, a3) != 1)
  {
    v25(v41, v20, v19);
    if (v26(&v20[v24], 1, a3) != 1)
    {
      v29 = v43;
      v30 = v34;
      (*(v43 + 32))(v34, &v20[v24], a3);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v29 + 8);
      v31(v30, a3);
      v27 = *(v38 + 8);
      v27(v18, v19);
      v31(v41, a3);
      v27(v20, v19);
      goto LABEL_8;
    }

    v27 = *(v38 + 8);
    v27(v18, v19);
    (*(v43 + 8))(v41, a3);
    goto LABEL_6;
  }

  v27 = *(v38 + 8);
  v27(v18, v19);
  if (v26(&v20[v24], 1, a3) != 1)
  {
LABEL_6:
    (*(v36 + 8))(v20, TupleTypeMetadata2);
    v28 = 0;
    goto LABEL_8;
  }

  v27(v20, v19);
  v28 = 1;
LABEL_8:
  result = (v27)(v39, v19);
  *v40 = v28 & 1;
  return result;
}

BOOL protocol witness for TableRowVisitor.visit<A, B>(rowValue:view:children:traits:) in conformance TableSections.FindMatchingRow()
{
  v1 = *(v0 + 32);
  if (*v0 == v1)
  {
    result = 0;
    *(v0 + 8) = 1;
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24) + 1;
    *(v0 + 24) = v4;
    *(v0 + 32) = v1 + 1;
    return v4 != v3;
  }

  return result;
}

uint64_t TableSections.Accumulator.visit<A, B>(rowValue:view:children:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  outlined init with copy of TableRowList?(a3, &v49);
  if (*(&v50 + 1))
  {
    v56[0] = v49;
    v56[1] = v50;
    v12 = v51;
    v57 = v51;
    v13 = *(&v50 + 1);
    __swift_project_boxed_opaque_existential_1(v56, *(&v50 + 1));
    v14 = (*(v12 + 16))(v13, v12);
    outlined init with copy of TableRowList(v56, &v49);
    v15 = specialized ResolvedTableRowIDs.init(rowList:start:limit:)(&v49, 0, 0x7FFFFFFFFFFFFFFFLL);
    LOBYTE(v13) = v16;
    v18 = v17;
    v20 = v19;
    v21 = *(v7 + 8);
    v22 = (*(*(a6 - 8) + 48))(a2, 1, a6) != 1;
    outlined init with copy of TableRowList(v56, &v50 + 8);
    *&v49 = v21;
    BYTE8(v49) = v22;
    *&v50 = v14;
    *&v53 = v15;
    BYTE8(v53) = v13 & 1;
    *&v54 = v18;
    *(&v54 + 1) = v20;
    v23 = *v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[96 * v25];
    v27 = v50;
    *(v26 + 2) = v49;
    *(v26 + 3) = v27;
    v28 = v51;
    v29 = v52;
    v30 = v54;
    *(v26 + 6) = v53;
    *(v26 + 7) = v30;
    *(v26 + 4) = v28;
    *(v26 + 5) = v29;
    *v7 = v23;
    v31 = *(v7 + 16) + v14;
    *(v7 + 16) = v31;
    outlined destroy of TableRowList(v56);
    *(v7 + 24) = v31;
  }

  else
  {
    outlined destroy of TableRowList?(&v49);
    v32 = *(v7 + 16) + 1;
    *(v7 + 16) = v32;
    if ((*(*(a5 - 8) + 48))(a1, 1, a5) == 1 && (*(*(a6 - 8) + 48))(a2, 1, a6) != 1)
    {
      outlined init with copy of TableRowList(v7 + 32, &v49);
      v33 = *(v7 + 8);
      v34 = specialized ResolvedTableRowIDs.init(rowList:start:limit:)(&v49, v33, 1);
      v36 = v35;
      v38 = v37;
      v55 = v39 & 1;
      v40 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40);
        v43 = v42 + 1;
        v40 = v48;
      }

      *(v40 + 2) = v43;
      v44 = &v40[96 * v42];
      *(v44 + 4) = v33;
      v44[40] = 0;
      v45 = v49;
      *(v44 + 11) = *(&v49 + 3);
      *(v44 + 41) = v45;
      *(v44 + 6) = 1;
      *(v44 + 56) = 0u;
      *(v44 + 72) = 0u;
      *(v44 + 11) = 0;
      *(v44 + 12) = v34;
      v44[104] = v55;
      v46 = *(v56 + 3);
      *(v44 + 105) = v56[0];
      *(v44 + 27) = v46;
      *(v44 + 14) = v36;
      *(v44 + 15) = v38;
      *v7 = v40;
      *(v7 + 24) = v32;
    }
  }

  ++*(v7 + 8);
  return 1;
}

uint64_t outlined destroy of TableSections.Accumulator(uint64_t a1)
{
  v2 = a1 + 32;

  __swift_destroy_boxed_opaque_existential_1(v2);
  return a1;
}

uint64_t outlined init with copy of TableRowList?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>(0, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TableSections.FindMatchingRow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TableSections.FindMatchingRow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t destroy for TableSections.Accumulator(uint64_t a1)
{
  v1 = a1 + 32;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t initializeWithCopy for TableSections.Accumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 32, a2 + 32, v5);
  return a1;
}

void *assignWithCopy for TableSections.Accumulator(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  __swift_assign_boxed_opaque_existential_1(a1 + 4, a2 + 4);
  return a1;
}

uint64_t assignWithTake for TableSections.Accumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t destroy for TableSections.Item(uint64_t a1)
{
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 72);

  return outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v2, v3);
}

uint64_t initializeWithCopy for TableSections.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v6 = *(a2 + 64);
  v7 = *(a2 + 72);
  outlined copy of ResolvedTableRowIDs.Storage(v6, v7);
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithCopy for TableSections.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);
  if (*(a1 + 48))
  {
    v5 = (a1 + 24);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 24));
    }

    else
    {
      outlined destroy of TableRowList(v5);
      v6 = *(a2 + 56);
      v7 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v7;
      *(a1 + 56) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 48) = v4;
    *(a1 + 56) = *(a2 + 56);
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v9;
    *(a1 + 24) = v8;
  }

  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  outlined copy of ResolvedTableRowIDs.Storage(v10, v11);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v12, v13);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for TableSections.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  if (*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 24);
    }

    else
    {
      outlined destroy of TableRowList(a1 + 24);
    }
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v6, v7);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableSections.Item(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for TableSections.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for TableSections.FindMatchingID()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableSections.FindMatchingID(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *((v3 + v5 + 23) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for TableSections.FindMatchingID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for TableSections.FindMatchingID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for TableSections.FindMatchingID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for TableSections.FindMatchingID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableSections.FindMatchingID(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}

_DWORD *storeEnumTagSinglePayload for TableSections.FindMatchingID(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFE)
  {
    *(((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t destroy for TableSections(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for TableSections(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t *assignWithCopy for TableSections(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for TableSections(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

BOOL specialized TableSections.FindMatchingID.visit<A, B>(rowValue:view:children:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a4 + 24);
  v15[2] = *(a4 + 16);
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = v10;
  v15[6] = a7;
  v15[7] = a8;
  v16 = v8;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TableSections.FindMatchingID.visit<A, B>(rowValue:view:children:traits:), v15, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v11, &v17);
  if (v17 == 2 || (v17 & 1) == 0)
  {
    v13 = *(a4 + 44);
    v14 = *(v8 + v13) + 1;
    *(v8 + v13) = v14;
    return v14 != *(v8 + *(a4 + 36));
  }

  else
  {
    result = 0;
    *(v8 + *(a4 + 40)) = 1;
  }

  return result;
}

double key path getter for EnvironmentValues.listRowInsets : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.listRowInsets : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI6ToggleVyAA0C18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path getter for EnvironmentValues.sizeCategory : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.sizeCategory.getter();
  *a1 = v3;
  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA29DigitalCrownAccessoryModifierVyqd__GGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t destroy for DigitalCrownIndicatorModifier(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{

  a3(*(a1 + 16), *(a1 + 24));
}

uint64_t initializeWithCopy for DigitalCrownIndicatorModifier(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  a4(v8, v9);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for DigitalCrownIndicatorModifier(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), void (*a5)(uint64_t, uint64_t))
{
  v9 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v9;

  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  a4(v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  a5(v12, v13);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for DigitalCrownIndicatorModifier(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  *a1 = *a2;

  v7 = *(a2 + 24);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  a4(v8, v9);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for DigitalCrownIndicatorModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for DigitalCrownIndicatorModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DigitalCrownAccessoryModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized FocusState.projectedValue.getter(*(v2 + 32), *(v2 + 5));
  v6 = v5;
  v8 = v7;
  swift_getWitnessTable();
  v9 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  View.focused(_:)(v4, v6, v8 & 1, v9, WitnessTable, &v30);

  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v35 = *(v2 + 2);
  v36 = *(v2 + 24);
  v11 = swift_allocObject();
  v12 = *v2;
  v13 = v2[1];
  *(v11 + 16) = *(a2 + 16);
  *(v11 + 32) = v12;
  v14 = v2[2];
  *(v11 + 48) = v13;
  *(v11 + 64) = v14;
  *(v11 + 80) = *(v2 + 48);

  outlined init with copy of Environment<Visibility>(&v35, &v25);
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for FocusStateBindingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], type metadata accessor for FocusStateBindingModifier);
  type metadata accessor for ModifiedContent();
  v23 = WitnessTable;
  v24 = &protocol witness table for FocusStateBindingModifier<A>;

  swift_getWitnessTable();
  View.transformPreference<A>(_:_:)();

  v18 = v25;
  v19 = v26;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<DigitalCrownViewKey>, &type metadata for DigitalCrownViewKey, &protocol witness table for DigitalCrownViewKey, MEMORY[0x1E6980910]);
  v15 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>();
  v16 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v18, v15, v16);

  v25 = v30;
  v26 = v31;
  v27 = v32;
  v28 = v33;
  v29 = v34;
  static ViewBuilder.buildExpression<A>(_:)(&v25, v15, v16);
}

uint64_t closure #1 in DigitalCrownAccessoryModifier.body(content:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  if (!*(&v15 + 1))
  {
LABEL_4:
    if ((v15 & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  type metadata accessor for GraphHost();

  if (static GraphHost.isUpdating.getter())
  {
    dispatch thunk of AnyLocation.wasRead.setter();
    result = outlined destroy of FocusState<Bool>(&v15);
    goto LABEL_4;
  }

  dispatch thunk of AnyLocation.get()();
  result = outlined destroy of FocusState<Bool>(&v15);
  if ((v14 & 1) == 0)
  {
    return result;
  }

LABEL_5:
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(*a2, *(a2 + 8), a3, a4);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  specialized Environment.wrappedValue.getter(v8, v9);
  type metadata accessor for LazyView();
  swift_getWitnessTable();
  View.opacity(_:)();

  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v10 = AnyView.init<A>(_:)();
  v11 = *(v7 + 8);

  v12 = specialized Environment.wrappedValue.getter(v8, v9);
  v13 = *(v7 + 17);

  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  *(v7 + 17) = v13;
  *(v7 + 18) = 257;
  return result;
}

uint64_t DigitalCrownIndicatorModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v42 = *(v2 + 48);
  v4 = v2[2];
  v40 = v2[1];
  v41 = v4;
  v39 = *v2;
  v5 = specialized FocusState.projectedValue.getter(v4, *(&v4 + 1));
  v7 = v6;
  v9 = v8;
  swift_getWitnessTable();
  v10 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  View.focused(_:)(v5, v7, v9 & 1, v10, WitnessTable, &v19);

  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v12 = swift_allocObject();
  v13 = v39;
  v14 = v40;
  *(v12 + 16) = *(a2 + 16);
  *(v12 + 32) = v13;
  v15 = v41;
  *(v12 + 48) = v14;
  *(v12 + 64) = v15;
  *(v12 + 80) = v42;
  (*(*(a2 - 8) + 16))(v26, &v39, a2);
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for FocusStateBindingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], type metadata accessor for FocusStateBindingModifier);
  type metadata accessor for ModifiedContent();
  v24 = WitnessTable;
  v25 = &protocol witness table for FocusStateBindingModifier<A>;
  swift_getWitnessTable();
  View.transformPreference<A>(_:_:)();

  v19 = v34;
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v23 = v38;
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<DigitalCrownViewKey>, &type metadata for DigitalCrownViewKey, &protocol witness table for DigitalCrownViewKey, MEMORY[0x1E6980910]);
  v16 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>();
  v17 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v19, v16, v17);

  v34 = v26[0];
  v35 = v26[1];
  v36 = v27;
  v37 = v28;
  v38 = v29;
  static ViewBuilder.buildExpression<A>(_:)(&v34, v16, v17);
}

uint64_t closure #1 in DigitalCrownIndicatorModifier.body(content:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  if (!*(&v15 + 1))
  {
LABEL_4:
    if ((v15 & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  type metadata accessor for GraphHost();

  if (static GraphHost.isUpdating.getter())
  {
    dispatch thunk of AnyLocation.wasRead.setter();
    result = outlined destroy of FocusState<Bool>(&v15);
    goto LABEL_4;
  }

  dispatch thunk of AnyLocation.get()();
  result = outlined destroy of FocusState<Bool>(&v15);
  if ((v14 & 1) == 0)
  {
    return result;
  }

LABEL_5:
  v8 = *v7;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(*a2, *(a2 + 8), a3, a4);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  specialized Environment.wrappedValue.getter(v9, v10, &v14);
  type metadata accessor for LazyView();
  swift_getWitnessTable();
  View.opacity(_:)();

  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v11 = AnyView.init<A>(_:)();
  v12 = *(v7 + 16);

  result = specialized Environment.wrappedValue.getter(v9, v10, &v14);
  v13 = v14;
  *v7 = v8;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  *(v7 + 17) = v13;
  *(v7 + 18) = 257;
  return result;
}

uint64_t outlined init with copy of Environment<Visibility>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGMaTm_0(0, &lazy cache variable for type metadata for Environment<Visibility>, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E697DB50]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>)
  {
    _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<DigitalCrownViewKey>, &type metadata for DigitalCrownViewKey, &protocol witness table for DigitalCrownViewKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t outlined destroy of FocusState<Bool>(uint64_t a1)
{
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(0, &lazy cache variable for type metadata for FocusState<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], type metadata accessor for FocusState);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyADyAA01_c9Modifier_E0VyAA021DigitalCrownAccessoryF0VyxGGAA017FocusStateBindingF033_274D264A38B51DC68ACC48A91353B7D0LLVySbGGAA020_PreferenceTransformF0VyAA0ghC3KeyVGGAaBHPAoaBHPAjaBHPyHC_AnA0cF0HPyHCHC_AtaVHPyHCHCTm(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for FocusStateBindingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], type metadata accessor for FocusStateBindingModifier);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI25FocusStateBindingModifier33_274D264A38B51DC68ACC48A91353B7D0LLVySbGMaTm_1(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<DigitalCrownViewKey>, &type metadata for DigitalCrownViewKey, &protocol witness table for DigitalCrownViewKey, MEMORY[0x1E6980910]);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _PreferenceTransformModifier<DigitalCrownViewKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable();
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance DigitalCrownViewKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EAB09F20;
  v2 = dword_1EAB09F28;
  v3 = BYTE2(dword_1EAB09F28);
  v4 = HIBYTE(dword_1EAB09F28);
  *a1 = static DigitalCrownViewKey.defaultValue;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 18) = v3;
  *(a1 + 19) = v4;
}

uint64_t specialized static DigitalCrownViewKey.reduce(value:nextValue:)(uint64_t result, void (*a2)(void *__return_ptr))
{
  if ((*(result + 19) & 1) == 0)
  {
    v2 = result;
    a2(v10);
    v3 = v10[1];
    v4 = v11;
    v5 = v12;
    v6 = v13;
    v7 = *v2;
    v8 = v10[0];
    if (!v10[0])
    {

      v8 = v7;
    }

    *v2 = v8;
    v9 = *(v2 + 8);
    if (!v3)
    {

      v3 = v9;
    }

    *(v2 + 8) = v3;
    *(v2 + 16) = v4;
    *(v2 + 17) = v5;
    *(v2 + 18) = (*(v2 + 18) | v6) & 1;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DigitalCrownViewStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for DigitalCrownViewStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  return a1;
}

uint64_t assignWithTake for DigitalCrownViewStorage(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  return a1;
}

uint64_t getEnumTagSinglePayload for DigitalCrownViewStorage(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 20))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DigitalCrownViewStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.updateFidelity.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<UpdateFidelityKey>();
    _s10Foundation4DateVACSLAAWlTm_5(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UpdateFidelityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<UpdateFidelityKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<UpdateFidelityKey>();
    _s10Foundation4DateVACSLAAWlTm_5(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UpdateFidelityKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<UpdateFidelityKey>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t DateSequenceTimeline.requestedFidelityForStartEntry(in:withPreviousEntry:)(uint64_t a1, char *a2)
{
  v69 = a2;
  v65 = a1;
  type metadata accessor for Date?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v55 - v6;
  type metadata accessor for (lower: Date, upper: Date)();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v66 = type metadata accessor for Date();
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  type metadata accessor for Range<Date>();
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v69)
  {
    v62 = v27;
    v63 = v14;
    v64 = v9;
    v33 = v68;
    v69 = v7;
    v56 = v16;
    v57 = v19;
    v58 = v4;
    outlined init with copy of _Benchmark(v67 + OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule, v71);
    v34 = v72;
    v35 = v73;
    v36 = __swift_project_boxed_opaque_existential_1(v71, v72);
    DateInterval.start.getter();
    static Date.distantFuture.getter();
    _s10Foundation4DateVACSLAAWlTm_5(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    v37 = v66;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v65 = v35;
    v38 = v37;
    v39 = *(v33 + 32);
    v61 = v36;
    v40 = v63;
    v39(v63, v25, v37);
    v60 = v34;
    v41 = v64;
    v39((v40 + v64[12]), v22, v37);
    _sypSgWOcTm_2(v40, v11, type metadata accessor for (lower: Date, upper: Date));
    v42 = v41[12];
    v39(v30, v11, v38);
    v59 = v30;
    v43 = v68;
    v44 = *(v68 + 8);
    v44(&v11[v42], v38);
    outlined init with take of (lower: Date, upper: Date)(v40, v11);
    v45 = v41[12];
    v46 = v59;
    v47 = &v59[*(v62 + 36)];
    v64 = v39;
    v39(v47, &v11[v45], v38);
    v44(v11, v38);
    v70 = 1;
    TimelineSchedule.lazyEntries(within:mode:limit:)();
    _sypSgWOhTm_6(v46, type metadata accessor for Range<Date>);
    dispatch thunk of _AnySequenceBox._makeIterator()();

    __swift_destroy_boxed_opaque_existential_1(v71);
    v48 = v69;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v49 = *(v43 + 48);
    if (v49(v48, 1, v38) != 1)
    {
      v50 = v57;
      (v64)(v57, v48, v38);
      v48 = v58;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (v49(v48, 1, v38) != 1)
      {
        v51 = v56;
        (v64)(v56, v48, v38);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v53 = Date._bridgeToObjectiveC()().super.isa;
        v54 = [v67 estimatedFidelityForPresentationTime:isa nextPresentationTime:v53];

        v44(v51, v38);
        v44(v50, v38);
        return v54;
      }

      v44(v50, v38);
    }

    _sypSgWOhTm_6(v48, type metadata accessor for Date?);
    return 0;
  }

  v31 = v69;

  return [v31 requestedFidelity];
}

uint64_t areEqual #1 <A>(_:_:) in static DateSequenceTimeline.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a2, v17);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a3);
    (*(v9 + 32))(v12, v8, a3);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, a3);
  }

  else
  {
    v14(v8, 1, 1, a3);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  return v15 & 1;
}

Swift::Void __swiftcall TimelineView.Context.invalidateTimelineContent()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 80))(0xD00000000000001ELL, 0x800000018CD57090);
  }
}

uint64_t (*TimelineView<>.AlwaysOnTimelinePreferenceWriter.value.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v14 = type metadata accessor for DateSequenceTimeline();
  v15 = a1;
  Value = AGGraphGetValue();
  v17 = *(v8 + 16);
  v17(v13, Value, a3);
  v17(v10, v13, a3);
  v18 = specialized DateSequenceTimeline.__allocating_init(identifier:schedule:)(v15, v10, v14, a3, a5);

  (*(v8 + 8))(v13, a3);
  *(swift_allocObject() + 16) = v18;
  return partial apply for closure #1 in TimelineView<>.AlwaysOnTimelinePreferenceWriter.value.getter;
}

uint64_t closure #1 in TimelineView<>.AlwaysOnTimelinePreferenceWriter.value.getter(void *a1, void *a2)
{
  v3 = a2;
  MEMORY[0x18D00CC30]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t protocol witness for Rule.value.getter in conformance TimelineView<A, B><>.AlwaysOnTimelinePreferenceWriter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (**a3)()@<X8>)
{
  TimelineView<>.AlwaysOnTimelinePreferenceWriter.value.getter(*v3, *(v3 + 8), *(a1 + 16), a2, *(a1 + 32));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in TimelineView<>.AlwaysOnTimelinePreferenceWriter.value.getter;
  *(result + 24) = v6;
  *a3 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a3[1] = result;
  return result;
}

BOOL TimelineIdentifier.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  _sypSgWOcTm_2(a1, v6, type metadata accessor for Any?);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      v3 = *&v5[OBJC_IVAR____TtC7SwiftUI18TimelineIdentifier_identifier];

      return v3 == *(v1 + OBJC_IVAR____TtC7SwiftUI18TimelineIdentifier_identifier);
    }
  }

  else
  {
    _sypSgWOhTm_6(v6, type metadata accessor for Any?);
  }

  return 0;
}

void type metadata accessor for (lower: Date, upper: Date)()
{
  if (!lazy cache variable for type metadata for (lower: Date, upper: Date))
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: Date, upper: Date));
    }
  }
}

void type metadata accessor for Range<Date>()
{
  if (!lazy cache variable for type metadata for Range<Date>)
  {
    type metadata accessor for Date();
    _s10Foundation4DateVACSLAAWlTm_5(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Date>);
    }
  }
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (lower: Date, upper: Date)();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized DateSequenceTimeline.unconfiguredEntries(for:previousEntry:)()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = DateInterval.duration.getter();
  v7 = v6 * 4.0;
  if (v7 < 1.84467441e19)
  {
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 1.84467441e19;
  }

  if (v7 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= 1.84467441e19)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  outlined init with copy of _Benchmark(v0 + OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule, v23);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  LOBYTE(v22) = 1;
  v8 = TimelineSchedule.entries(within:mode:limit:)();
  v9 = *(v8 + 16);
  if (v9)
  {
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = objc_opt_self();
    v12 = *(v2 + 16);
    v11 = v2 + 16;
    v20 = v12;
    v21 = v10;
    v13 = *(v11 + 64);
    v19[1] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v15 = *(v11 + 56);
    do
    {
      v20(v4, v14, v1);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v17 = [v21 entryForPresentationTime:isa withRequestedFidelity:-1];

      (*(v11 - 8))(v4, v1);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += v15;
      --v9;
    }

    while (v9);

    v18 = v22;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

unint64_t type metadata accessor for BLSAlwaysOnTimelineUnconfiguredEntry()
{
  result = lazy cache variable for type metadata for BLSAlwaysOnTimelineUnconfiguredEntry;
  if (!lazy cache variable for type metadata for BLSAlwaysOnTimelineUnconfiguredEntry)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BLSAlwaysOnTimelineUnconfiguredEntry);
  }

  return result;
}

id specialized DateSequenceTimeline.__allocating_init(identifier:schedule:)(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5)
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = objc_allocWithZone(a3);
  outlined init with copy of _Benchmark(v14, v10 + OBJC_IVAR____TtC7SwiftUI20DateSequenceTimeline_schedule);
  v13.receiver = v10;
  v13.super_class = a3;
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_configure_, a1, 0);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t NavigationStateHost.__deallocating_deinit()
{
  v1 = v0[8];
  v6[6] = v0[7];
  v6[7] = v1;
  v7[0] = v0[9];
  *(v7 + 10) = *(v0 + 154);
  v2 = v0[4];
  v6[2] = v0[3];
  v6[3] = v2;
  v3 = v0[6];
  v6[4] = v0[5];
  v6[5] = v3;
  v4 = v0[2];
  v6[0] = v0[1];
  v6[1] = v4;
  outlined destroy of NavigationState?(v6);

  return swift_deallocClassInstance();
}

id UIBezierPath.init(_:)(uint64_t a1)
{
  Path.roundedRect()();
  if (v30 == 2 || (FixedRoundedRect.isUniform.getter() & 1) == 0)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = Path.cgPath.getter();
    v15 = [ObjCClassFromMetadata bezierPathWithCGPath_];
    outlined destroy of Path(a1);

    return v15;
  }

  else
  {
    v2 = FixedRoundedRect.needsContinuousCorners.getter();
    v3 = swift_getObjCClassFromMetadata();
    if (v2)
    {
      v4 = v3;
      FixedRoundedRect.rect.getter();
      v26 = v6;
      v28 = v5;
      v8 = v7;
      v10 = v9;
      FixedRoundedRect.cornerSize.getter();
      v12 = [(objc_class *)v4 bezierPathWithRoundedRect:v28 cornerRadius:v26, v8, v10, v11];
    }

    else
    {
      v17 = objc_allocWithZone(v3);
      FixedRoundedRect.rect.getter();
      v27 = v19;
      v29 = v18;
      v21 = v20;
      v23 = v22;
      FixedRoundedRect.cornerSize.getter();
      v12 = [v17 initWithArcRoundedRectForSwiftUI:v29 cornerRadius:{v27, v21, v23, v24}];
    }

    v25 = v12;
    outlined destroy of Path(a1);
    return v25;
  }
}

uint64_t UIUserInterfaceStyle.init(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 1;
  if (v1)
  {
    v2 = 2;
  }

  if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t LayoutDirection.init(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2 * (result != 0);
  if (result == 1)
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t UILegibilityWeight.init(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    return -1;
  }

  else
  {
    return v1 & 1;
  }
}

id Animation.caBasicAnimation.getter()
{
  Animation.function.getter();
  if (v27 >= 5u)
  {
    if (v27 == 5)
    {
      v13 = [objc_allocWithZone(MEMORY[0x1E69794A8]) init];
      [v13 setTimeOffset_];
      LODWORD(v14) = 1.0;
      [v13 setSpeed_];
      [v13 setDuration_];

      [v13 setMass_];
      [v13 setStiffness_];
      [v13 setDamping_];
      [v13 setInitialVelocity_];
      return v13;
    }

    outlined consume of Animation.Function(v22, v23, v24, v25, v26, v27);
  }

  else
  {
    Animation.function.getter();
    LOBYTE(v15) = v21;
    Animation.Function.bezierForm.getter();
    outlined consume of Animation.Function(v16, v17, v18, v19, v20, v21);
    if ((v27 & 1) == 0)
    {
      v0 = [objc_allocWithZone(MEMORY[0x1E6979318]) init];
      [v0 setTimeOffset_];
      LODWORD(v1) = 1.0;
      [v0 setSpeed_];
      v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
      v2 = *&v23;
      *&v7 = v2;
      v3 = *&v24;
      *&v8 = v3;
      v4 = *&v25;
      *&v9 = v4;
      v5 = *&v26;
      *&v10 = v5;
      v11 = [v6 initWithControlPoints__:v7 :{v8, v9, v10}];
      [v0 setTimingFunction_];

      [v0 setDuration_];
      return v0;
    }
  }

  return 0;
}

id UIBlurEffect.init(materialID:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v2 > 2)
      {
        if ((v2 - 3) < 2)
        {
          v17 = 9;
        }

        else
        {
          if ((v2 - 6) < 2)
          {
            return 0;
          }

          v17 = 10;
        }
      }

      else
      {
        v16 = 7;
        if (v2 != 1)
        {
          v16 = 4;
        }

        if (v2)
        {
          v17 = v16;
        }

        else
        {
          v17 = 6;
        }
      }

      return [swift_getObjCClassFromMetadata() effectWithStyle_];
    }

    v15 = 2;
  }

  else if (v3)
  {
    v15 = 1;
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = v2;
    v9 = *(v2 + 48);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = MEMORY[0x18D00C850](v4, v5);
    v12 = MEMORY[0x18D00C850](v6, v7);
    v13 = [ObjCClassFromMetadata _effectForLightMaterial_darkMaterial_bundle_];

    if (v13)
    {

      outlined consume of Material.ID(v8, 0);
      return v13;
    }

    v2 = v8;
    v15 = 0;
  }

  outlined consume of Material.ID(v2, v15);
  return 0;
}

uint64_t specialized UITableViewScrollPosition.init(_:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  static UnitPoint.bottom.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 3;
  }

  static UnitPoint.bottomLeading.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 3;
  }

  static UnitPoint.bottomTrailing.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 3;
  }

  static UnitPoint.top.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 1;
  }

  static UnitPoint.topLeading.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 1;
  }

  static UnitPoint.topTrailing.getter();
  if (static UnitPoint.== infix(_:_:)())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t outlined consume of Animation.Function(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 7u)
  {
    if (a6 == 8 || a6 == 9)
    {
    }
  }

  else if (a6 == 6 || a6 == 7)
  {
  }

  return result;
}

uint64_t Preview.init(_:traits:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a2;
  v16[1] = a3;
  v7 = type metadata accessor for PreviewSourceContentCategory();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for PreviewSourceContentDomain();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DefaultPreviewSource<ViewPreviewBody>();
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v9 + 104))(v11, *MEMORY[0x1E6966790], v8, v13);
  PreviewSourceContentCategory.init(stringLiteral:)();
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  DefaultPreviewSource.init(contentDomain:contentCategory:supportsOnDevicePreviews:supportsInteractivePreviews:body:)();
  type metadata accessor for Preview.ViewTraits();
  lazy protocol witness table accessor for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>();
  Preview.init<A, B>(displayName:source:traits:)();
}

void type metadata accessor for DefaultPreviewSource<ViewPreviewBody>()
{
  if (!lazy cache variable for type metadata for DefaultPreviewSource<ViewPreviewBody>)
  {
    v0 = type metadata accessor for DefaultPreviewSource();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DefaultPreviewSource<ViewPreviewBody>);
    }
  }
}

uint64_t Preview.init<A>(_:traits:arguments:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[2] = a2;
  v17[3] = a3;
  v17[1] = a1;
  type metadata accessor for DefaultPreviewSource<ViewPreviewBody>();
  MEMORY[0x1EEE9AC00](v11);
  v12 = type metadata accessor for PreviewArguments();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - v14;
  buildArguments #1 <A>() in Preview.init<A>(_:traits:arguments:body:)(a4);

  static PreviewSource<>.viewGroupSource<A>(arguments:body:)(v15, a5, a6, a7);
  (*(v13 + 8))(v15, v12);
  type metadata accessor for Preview.ViewTraits();
  lazy protocol witness table accessor for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>();
  Preview.init<A, B>(displayName:source:traits:)();
}

uint64_t buildArguments #1 <A>() in Preview.init<A>(_:traits:arguments:body:)(uint64_t a1)
{
  v2 = type metadata accessor for PreviewArgumentsBuilder.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10[1] = a1;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v6 = static PreviewArgumentsBuilder.buildExpression<A>(_:)();
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(v3 + 16))(v7, v10 - v5, v2);
  _finalizeUninitializedArray<A>(_:)();
  MEMORY[0x18D000E60]();

  static PreviewArgumentsBuilder.buildFinalResult(_:)();
  v8 = *(v3 + 8);
  v8(v10 - v5, v2);
  return (v8)(v10 - v5, v2);
}

uint64_t static PreviewSource<>.viewGroupSource<A>(arguments:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PreviewSourceContentCategory();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for PreviewSourceContentDomain();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 104))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6966790], v10);
  PreviewSourceContentCategory.init(stringLiteral:)();
  v13 = type metadata accessor for PreviewArguments();
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v19 - v15, a1, v14);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a2;
  v17[4] = a3;

  return DefaultPreviewSource.init<A>(contentDomain:contentCategory:supportsOnDevicePreviews:supportsInteractivePreviews:arguments:body:)();
}

uint64_t Preview.init<A>(_:traits:body:arguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(double)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19[2] = a2;
  v19[3] = a3;
  v19[0] = a8;
  v19[1] = a1;
  type metadata accessor for DefaultPreviewSource<ViewPreviewBody>();
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for PreviewArguments();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v19 - v16;
  a6(v15);
  static PreviewSource<>.viewGroupSource<A>(arguments:body:)(v17, a4, a5, a7);
  (*(v14 + 8))(v17, v13);
  type metadata accessor for Preview.ViewTraits();
  lazy protocol witness table accessor for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>();
  Preview.init<A, B>(displayName:source:traits:)();
}

uint64_t ViewPreviewSource.makeView.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ViewPreviewSource.makeView.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ViewPreviewSource.contentDomain.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6966790];
  v3 = type metadata accessor for PreviewSourceContentDomain();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for PreviewSource.contentDomain.getter in conformance ViewPreviewSource@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6966790];
  v3 = type metadata accessor for PreviewSourceContentDomain();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t closure #1 in static PreviewSource<>.viewSource(body:)@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(v12);
  v11 = v13;
  v3 = v13;
  v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  *(a2 + 24) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v5 + 32))(boxed_opaque_existential_1, v8, v3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

unint64_t lazy protocol witness table accessor for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>()
{
  result = lazy protocol witness table cache variable for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>;
  if (!lazy protocol witness table cache variable for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>)
  {
    type metadata accessor for DefaultPreviewSource<ViewPreviewBody>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultPreviewSource<ViewPreviewBody> and conformance DefaultPreviewSource<A>);
  }

  return result;
}

uint64_t ViewPreviewBody.init<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t closure #1 in static PreviewSource<>.viewGroupSource<A>(arguments:body:)@<X0>(void (*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(v12);
  v11 = v13;
  v3 = v13;
  v4 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  *(a2 + 24) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v5 + 32))(boxed_opaque_existential_1, v8, v3);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void __swiftcall _Previewable.init()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.runtimeIssuesLog.getter();
  Logger.init(_:)();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_18BD4A000, v4, v5, "'@Previewable' can only be used in a #Preview body closure", v6, 2u);
    MEMORY[0x18D0110E0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
}

id HostingUIButton.isHighlighted.setter(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  result = objc_msgSendSuper2(&v15, sel_setHighlighted_, a1 & 1);
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed];
  v7 = *&v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed + 8];
  if (v7)
  {
    v8 = v6[16];
    v9 = *v6;
    v14.receiver = v2;
    v14.super_class = ObjectType;

    objc_msgSendSuper2(&v14, sel_isHighlighted);
    v10 = static Animation.coreAnimationDefault(duration:)();
    v13.receiver = v2;
    v13.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v13, sel_isHighlighted);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v9;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8 & 1;
    *(v12 + 41) = v11;

    onNextMainRunLoop(do:)();
  }

  return result;
}

id HostingUIButton.intrinsicContentSize.getter()
{
  ObjectType = swift_getObjectType();
  if (AGGraphGetWeakValue())
  {

    static _ProposedSize.unspecified.getter();
    LayoutComputer.sizeThatFits(_:)();
  }

  else
  {
    v3.receiver = v0;
    v3.super_class = ObjectType;
    return objc_msgSendSuper2(&v3, sel_intrinsicContentSize);
  }
}

double HostingUIButton._baselineOffsets(at:)(double a1, double a2)
{
  if (!AGGraphGetWeakValue())
  {
    return 2.22507386e-308;
  }

  if (a1 == 0.0 && a2 == 0.0)
  {

    static _ProposedSize.unspecified.getter();
    LayoutComputer.sizeThatFits(_:)();
  }

  else
  {
  }

  static VerticalAlignment.firstTextBaseline.getter();
  static ViewSize.fixed(_:)();
  v4 = COERCE_DOUBLE(LayoutComputer.explicitAlignment(_:at:)());
  v6 = v5;
  static VerticalAlignment.lastTextBaseline.getter();
  static ViewSize.fixed(_:)();
  LayoutComputer.explicitAlignment(_:at:)();
  if (v6)
  {
    v7 = 2.22507386e-308;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

id closure #1 in HostingUIButton.swiftUI_accessibilityActivateBlock.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong swiftUI:Strong accessibilityShowContextMenuForElement:0 targetPointValue:?];

  return v2;
}

uint64_t closure #1 in HostingUIButton.focusItems(in:)@<X0>(void *a1@<X0>, unint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v12 = a1;
  v47.receiver = a1;
  v47.super_class = type metadata accessor for HostingUIButton();
  v14 = objc_msgSendSuper2(&v47, sel_focusItemsInRect_, a3, a4, a5, a6);
  type metadata accessor for UIFocusItem();
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
LABEL_16:
    v16 = __CocoaSet.count.getter();
    v44 = v12;
    v45 = a2;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = v12;
    v45 = a2;
    if (v16)
    {
LABEL_3:
      v43 = v7;
      v17 = 0;
      a2 = v15 & 0xC000000000000001;
      v7 = v15 & 0xFFFFFFFFFFFFFF8;
      v48 = v15 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a2)
        {
          MEMORY[0x18D00E9C0](v17, v15);
          v12 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v18 = v46;
            v12 = v44;
            goto LABEL_18;
          }
        }

        else
        {
          if (v17 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          swift_unknownObjectRetain();
          v12 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v7 = v48;
        }

        ++v17;
        if (v12 == v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *v45 = v18;
  v20 = specialized UIFocusEnvironment.nearestRenderer()(v19);
  if (!v20)
  {
LABEL_39:
    v39 = MEMORY[0x1E69E7CC0];
    return specialized Array.append<A>(contentsOf:)(v39);
  }

  v22 = v20;
  v23 = v21;
  ObjectType = swift_getObjectType();
  v25 = (*(v23 + 24))(ObjectType, v23);
  if (v22 == v12)
  {
LABEL_25:
    swift_unknownObjectRelease();
    if (v25)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  swift_getObjectType();
  v26 = swift_conformsToProtocol2();
  if (v26 && v12)
  {
    v27 = v26;
    v28 = swift_getObjectType();
    v29 = v12;
    v30 = UIFocusEnvironment.nearestRenderer()();
    if (v30)
    {
      v31 = v30;
      swift_unknownObjectRelease();
      if (v31 == v22)
      {
        v25 = (*(v27 + 56))(v28, v27);

        goto LABEL_25;
      }
    }

    v12 = v44;
  }

  for (i = v12; ; i = v38)
  {
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      if (i)
      {
        v34 = v33;
        v35 = swift_getObjectType();
        v36 = (*(v34 + 8))(v35, v34);
        if (v36)
        {
          break;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_36:
    v38 = [i parentFocusEnvironment];
    swift_unknownObjectRelease();
    if (!v38)
    {
      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    swift_unknownObjectRetain();
  }

  v25 = v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRelease();
  if (!Strong || (swift_unknownObjectRelease(), Strong != v22))
  {

    goto LABEL_36;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_41:
  v40 = v44;
  v41 = specialized static FocusBridge.focusItems(responderNode:rect:host:skipRoot:)(v25, v40, v22 != v44, a3, a4, a5, a6);

  v39 = v41;
  return specialized Array.append<A>(contentsOf:)(v39);
}

id HostingUIButton._parentContainer.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if ((MEMORY[0x18D008800]() & 1) == 0)
  {
    v8.receiver = v1;
    v8.super_class = ObjectType;
    return objc_msgSendSuper2(&v8, sel__parentGestureRecognizerContainer);
  }

  if (!swift_weakLoadStrong())
  {
    v3 = &v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_host];
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_6;
    }

    v4 = *(v3 + 1);
    v5 = swift_getObjectType();
    (*(v4 + 16))(v5, v4);
    swift_unknownObjectRelease();
  }

LABEL_6:
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = ViewResponder.parentGestureContainer.getter();

    return v7;
  }

  return result;
}

id HostingUIButton.makePreview()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  if (swift_weakLoadStrong())
  {
    type metadata accessor for PlatformUnaryViewResponder();
    v4 = swift_dynamicCastClassUnconditional();
    v13 = 0u;
    v14 = 0u;
    v15 = 6;
    MEMORY[0x1EEE9AC00](v4);

    static Update.ensure<A>(_:)();
    v16 = 0u;
    v17 = 0u;
    v18 = 6;
    Path.roundedRect()();
    if (v12 == 2)
    {
    }

    else
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath);
      v10[0] = v16;
      v10[1] = v17;
      v11 = v18;
      outlined init with copy of Path.Storage(v10, v9);
      v5 = UIBezierPath.init(_:)(&v16);
      [v2 setVisiblePath_];
    }

    outlined destroy of Path(&v16);
  }

  v6 = [v1 _effectiveContentView];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v6 parameters:v2];

  return v7;
}

uint64_t closure #1 in HostingUIButton.makePreview()(uint64_t a1, uint64_t a2)
{
  *&v18[0] = 4;
  v8 = 1;
  v9 = 0u;
  v10 = 0u;
  v11 = 2;
  dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();
  outlined destroy of CoordinateSpace(&v8);
  v3 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v3;
  v15 = *(a2 + 32);
  v16[0] = v14[0];
  v16[1] = v3;
  v17 = v15;
  outlined init with copy of Path.Storage(v16, &v8);
  v4 = Path.isEmpty.getter();
  outlined destroy of Path(v14);
  if (v4 & 1) != 0 || (v5 = *(a2 + 16), v12[0] = *a2, v12[1] = v5, v13 = *(a2 + 32), v18[0] = v12[0], v18[1] = v5, v19 = v13, outlined init with copy of Path.Storage(v18, &v8), v6 = Path.isInfinite.getter(), result = outlined destroy of Path(v12), (v6))
  {
    v8 = 1;
    v9 = 0u;
    v10 = 0u;
    v11 = 2;
    dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();
    return outlined destroy of CoordinateSpace(&v8);
  }

  return result;
}

id HostingUIButton.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_childLayoutComputer] = 0;
  swift_weakInit();
  *&v1[OBJC_IVAR____TtC7SwiftUI15HostingUIButton_host + 8] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t HostingUIButton.__ivar_destroyer()
{
  outlined consume of Binding<NavigationSplitViewColumn>?(*(v0 + OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed), *(v0 + OBJC_IVAR____TtC7SwiftUI15HostingUIButton_isPressed + 8));
  swift_weakDestroy();
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI15HostingUIButton_host;

  return outlined destroy of weak FallbackResponderProvider?(v1);
}

uint64_t protocol witness for PlatformGroupFactory.renderPlatformGroup(_:in:size:renderer:) in conformance UIKitButtonBase(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v8[2] = a5;
  v8[3] = v6;
  v8[4] = a4;
  *&v8[5] = a1;
  *&v8[6] = a2;
  return MEMORY[0x18D00AC20](partial apply for closure #1 in UIKitButtonBase.renderPlatformGroup(_:in:size:renderer:), v8);
}

uint64_t specialized TextAttributeValidationRecord.formUnion(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8 = result;
    v9 = *(v4 + 16);
    if (v9)
    {
      outlined copy of AttributedTextFormatting.Constraints?(a3);
      outlined copy of AttributedTextFormatting.Constraints?(a3);
      outlined copy of AttributedTextFormatting.Constraints?(v9);
      outlined copy of AttributedTextFormatting.Constraints?(a3);
      v10 = static AttributedTextFormatting.Constraints.== infix(_:_:)();

      outlined consume of AttributedTextFormatting.Constraints?(a3);
      if (v10)
      {
        *v4 = (*v4 | v8) & 1;

        AttributedString.AttributeDependencies.merge(_:uniquingKeysWith:)();
        outlined consume of AttributedTextFormatting.Constraints?(a3);
      }

      v11 = a3;
    }

    else
    {
      outlined copy of AttributedTextFormatting.Constraints?(a3);
      outlined copy of AttributedTextFormatting.Constraints?(0);
      outlined copy of AttributedTextFormatting.Constraints?(a3);

      outlined consume of AttributedTextFormatting.Constraints?(a3);
      v11 = 0;
    }

    outlined consume of AttributedTextFormatting.Constraints?(v11);
    v12 = *(v4 + 16);

    outlined consume of AttributedTextFormatting.Constraints?(v12);
    *v4 = v8 & 1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;

    return outlined copy of AttributedTextFormatting.Constraints?(a3);
  }

  return result;
}

void RichTextAttributeResolver.init(environment:content:for:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  *a4 = *a1;
  a4[1] = v7;
  a4[2] = MEMORY[0x1E69E7CC8];

  v8 = static NSAttributedStringKey.kitFont.getter();
  *&v55[0] = v6;
  *(&v55[0] + 1) = v7;
  v49 = type metadata accessor for FontAttributeDefinition(0);
  v50 = lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type FontAttributeDefinition and conformance FontAttributeDefinition, type metadata accessor for FontAttributeDefinition);
  v9 = __swift_allocate_boxed_opaque_existential_1(&v47);

  FontAttributeDefinition.init<A>(in:environment:content:)(v55, a2, a3, v9);
  specialized Dictionary.subscript.setter(&v47, v8);
  v10 = static NSAttributedStringKey.kitForegroundColor.getter();
  *&v55[0] = v6;
  *(&v55[0] + 1) = v7;
  v49 = &unk_1EFFFB5D8;
  v50 = lazy protocol witness table accessor for type ForgroundColorAttributeDefinition and conformance ForgroundColorAttributeDefinition();

  ForgroundColorAttributeDefinition.init<A>(in:environment:)(v55, &v47);
  specialized Dictionary.subscript.setter(&v47, v10);
  v11 = static NSAttributedStringKey.kitBackgroundColor.getter();
  v47 = v6;
  v48 = v7;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute();

  v12 = MEMORY[0x1E697D838];
  specialized ColorMappedAttributedStringKeyDefinition.init<A>(for:in:environment:wantsFallbackColor:mapping:)(&v47, 0, closure #1 in RichTextAttributeResolver.init(environment:content:for:), 0, v51);
  type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(0, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute, v12, type metadata accessor for ColorMappedAttributedStringKeyDefinition);
  v49 = v13;
  v50 = lazy protocol witness table accessor for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>(&lazy protocol witness table cache variable for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute, v12);
  v14 = swift_allocObject();
  v47 = v14;
  v15 = v51[1];
  *(v14 + 16) = v51[0];
  *(v14 + 32) = v15;
  *(v14 + 48) = v52;
  specialized Dictionary.subscript.setter(&v47, v11);
  v16 = static NSAttributedStringKey.kitStrikethroughStyle.getter();
  *&v55[0] = v6;
  *(&v55[0] + 1) = v7;
  v49 = &unk_1EFFFB500;
  v50 = lazy protocol witness table accessor for type StrikethroughStyleAttributeDefinition and conformance StrikethroughStyleAttributeDefinition();

  StrikethroughStyleAttributeDefinition.init<A>(in:environment:)(&v47);
  specialized Dictionary.subscript.setter(&v47, v16);
  v17 = static NSAttributedStringKey.kitStrikethroughColor.getter();
  v47 = v6;
  v48 = v7;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();

  v18 = MEMORY[0x1E697D878];
  specialized ColorMappedAttributedStringKeyDefinition.init<A>(for:in:environment:wantsFallbackColor:mapping:)(&v47, 0, closure #4 in RichTextAttributeResolver.init(environment:content:for:), 0, v53);
  type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(0, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute, v18, type metadata accessor for ColorMappedAttributedStringKeyDefinition);
  v49 = v19;
  v50 = lazy protocol witness table accessor for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>(&lazy protocol witness table cache variable for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute, v18);
  v20 = swift_allocObject();
  v47 = v20;
  v21 = v53[1];
  *(v20 + 16) = v53[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v54;
  specialized Dictionary.subscript.setter(&v47, v17);
  v22 = static NSAttributedStringKey.kitUnderlineStyle.getter();
  *&v55[0] = v6;
  *(&v55[0] + 1) = v7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
  type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber>();
  v49 = v23;
  v50 = lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber> and conformance MappedAttributedStringKeyDefinition<A, B>, type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber>);
  v24 = swift_allocObject();
  v47 = v24;

  v25 = MEMORY[0x1E697D828];
  MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)(closure #3 in RichTextAttributeResolver.init(environment:content:for:), 0, v24 + 16);
  specialized Dictionary.subscript.setter(&v47, v22);
  v26 = static NSAttributedStringKey.kitUnderlineColor.getter();
  v47 = v6;
  v48 = v7;

  specialized ColorMappedAttributedStringKeyDefinition.init<A>(for:in:environment:wantsFallbackColor:mapping:)(&v47, 0, closure #4 in RichTextAttributeResolver.init(environment:content:for:), 0, v55);
  type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(0, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, v25, type metadata accessor for ColorMappedAttributedStringKeyDefinition);
  v49 = v27;
  v50 = lazy protocol witness table accessor for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>(&lazy protocol witness table cache variable for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>, &lazy cache variable for type metadata for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, v25);
  v28 = swift_allocObject();
  v47 = v28;
  v29 = v55[1];
  *(v28 + 16) = v55[0];
  *(v28 + 32) = v29;
  *(v28 + 48) = v56;
  specialized Dictionary.subscript.setter(&v47, v26);
  v30 = static NSAttributedStringKey.kitKern.getter();
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute();
  type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>(0, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute);
  v49 = v31;
  v50 = lazy protocol witness table accessor for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>(&lazy protocol witness table cache variable for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute);
  v32 = swift_allocObject();
  v47 = v32;

  MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)(closure #6 in RichTextAttributeResolver.init(environment:content:for:), 0, v32 + 16);
  specialized Dictionary.subscript.setter(&v47, v30);
  v33 = static NSAttributedStringKey.kitTracking.getter();
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute();
  type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>(0, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.TrackingAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute);
  v49 = v34;
  v50 = lazy protocol witness table accessor for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>(&lazy protocol witness table cache variable for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.TrackingAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.TrackingAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute);
  v35 = swift_allocObject();
  v47 = v35;

  MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)(closure #6 in RichTextAttributeResolver.init(environment:content:for:), 0, v35 + 16);
  specialized Dictionary.subscript.setter(&v47, v33);
  v36 = static NSAttributedStringKey.kitBaselineOffset.getter();
  v45 = v6;
  v46 = v7;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute();
  type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>(0, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute);
  v49 = v37;
  v50 = lazy protocol witness table accessor for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>(&lazy protocol witness table cache variable for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat>, lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute);
  v38 = swift_allocObject();
  v47 = v38;

  MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)(closure #6 in RichTextAttributeResolver.init(environment:content:for:), 0, v38 + 16);
  specialized Dictionary.subscript.setter(&v47, v36);
  v39 = *MEMORY[0x1E69DB5F0];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute();
  type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph>();
  v49 = v40;
  v50 = lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph> and conformance MappedAttributedStringKeyDefinition<A, B>, type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph>);
  v41 = swift_allocObject();
  v47 = v41;

  v42 = v39;
  MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)(closure #8 in RichTextAttributeResolver.init(environment:content:for:), 0, v41 + 16);
  specialized Dictionary.subscript.setter(&v47, v42);
  v43 = static NSAttributedStringKey.kitParagraphStyle.getter();
  v45 = v6;
  v46 = v7;
  v49 = type metadata accessor for ParagraphStyleAttributeDefinition(0);
  v50 = lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type ParagraphStyleAttributeDefinition and conformance ParagraphStyleAttributeDefinition, type metadata accessor for ParagraphStyleAttributeDefinition);
  v44 = __swift_allocate_boxed_opaque_existential_1(&v47);
  ParagraphStyleAttributeDefinition.init<A>(in:environment:)(&v45, v44);
  specialized Dictionary.subscript.setter(&v47, v43);
}

uint64_t FontAttributeDefinition.init<A>(in:environment:content:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = type metadata accessor for FontAttributeDefinition(0);
  v10 = v9[9];
  LOWORD(v21) = -256;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for TypesettingLanguage.Resolved?);
  AtomicBox.init(wrappedValue:)();
  *(a4 + v10) = v19;
  v11 = (a4 + v9[8]);
  *v11 = a2;
  v11[1] = a3;
  EnvironmentValues.attributeScopeContext.getter();
  *(a4 + v9[11]) = 0uLL;
  static AttributeScope.keys.getter();
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CDD3F30;
  v13 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
  *(v12 + 32) = MEMORY[0x1E697D898];
  *(v12 + 40) = v13;
  v14 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  v15 = MEMORY[0x1E69684E0];
  *(v12 + 48) = MEMORY[0x1E6968508];
  *(v12 + 56) = v14;
  v16 = MEMORY[0x1E69684D8];
  *(v12 + 64) = v15;
  *(v12 + 72) = v16;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  AttributedString.Keys.init<A>(_:)();
  AttributedString.Keys.intersection(_:)();

  *(a4 + v9[10]) = v12;
  *a4 = EnvironmentValues.fontModifiers.getter();
  *&v20 = v8;
  *(&v20 + 1) = v7;
  EnvironmentValues.typesettingConfiguration.getter();
  EnvironmentValues.fontResolutionContext.getter();
  v17 = (a4 + v9[6]);
  *v17 = v20;
  v17[1] = v21;
  v17[2] = v22;
  EnvironmentValues.locale.getter();
}

uint64_t ForgroundColorAttributeDefinition.init<A>(in:environment:)@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  v4 = PropertyList.Tracker.init()();
  static AttributeScope.keys.getter();
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18CD63410;
  v6 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
  *(v5 + 32) = MEMORY[0x1E697D848];
  *(v5 + 40) = v6;
  v7 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
  *(v5 + 48) = MEMORY[0x1E6968518];
  *(v5 + 56) = v7;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  AttributedString.Keys.init<A>(_:)();
  AttributedString.Keys.intersection(_:)();

  *a2 = v5;

  EnvironmentValues.addDependencies(from:)();

  if (PropertyList.Tracker.hasDifferentUsedValues(_:)())
  {
    PropertyList.Tracker.reset()();
  }

  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t StrikethroughStyleAttributeDefinition.init<A>(in:environment:)@<X0>(uint64_t a1@<X8>)
{
  EnvironmentValues.attributeScopeContext.getter();

  *(a1 + 8) = v6;
  static AttributeScope.keys.getter();
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18CD63410;
  v3 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();
  *(v2 + 32) = MEMORY[0x1E697D878];
  *(v2 + 40) = v3;
  v4 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  *(v2 + 48) = MEMORY[0x1E6968508];
  *(v2 + 56) = v4;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  AttributedString.Keys.init<A>(_:)();
  AttributedString.Keys.intersection(_:)();

  *a1 = v2;
  return result;
}

id closure #3 in RichTextAttributeResolver.init(environment:content:for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1[1] == 1)
  {
    result = 0;
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  *a2 = result;
  return result;
}

uint64_t MappedAttributedStringKeyDefinition.init<A>(for:in:environment:mappedTo:mapping:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  EnvironmentValues.attributeScopeContext.getter();

  *a3 = v7;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  result = static AttributeScope.contains<A>(_:)();
  *(a3 + 32) = result & 1;
  return result;
}

uint64_t closure #8 in RichTextAttributeResolver.init(environment:content:for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x1E69655A0];
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  outlined init with copy of AttributedString.AdaptiveImageGlyph?(a1, v7, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, v4);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v7, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    v16 = 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph);
    (*(v9 + 16))(v11, v14, v8);
    v16 = NSAdaptiveImageGlyph.init(_:)();
    result = (*(v9 + 8))(v14, v8);
  }

  *a2 = v16;
  return result;
}

double ParagraphStyleAttributeDefinition.init<A>(in:environment:)@<D0>(double *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  static AttributeScope.keys.getter();
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18CDE2490;
  v6 = lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute();
  *(v5 + 32) = MEMORY[0x1E6965560];
  *(v5 + 40) = v6;
  v7 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute();
  *(v5 + 48) = MEMORY[0x1E69684D0];
  *(v5 + 56) = v7;
  v8 = lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute();
  *(v5 + 64) = MEMORY[0x1E6965550];
  *(v5 + 72) = v8;
  v9 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute();
  *(v5 + 80) = MEMORY[0x1E697D858];
  *(v5 + 88) = v9;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  AttributedString.Keys.init<A>(_:)();
  AttributedString.Keys.intersection(_:)();

  *a2 = v5;
  v12[0] = v3;
  v12[1] = v4;
  v10 = type metadata accessor for ParagraphStyleAttributeDefinition(0);

  ParagraphStyleResolutionContext.init(_:)();
  EnvironmentValues.attributeScopeContext.getter();

  result = v3;
  *(a2 + *(v10 + 24)) = *v12;
  return result;
}

uint64_t RichTextAttributeResolver.update(with:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  v7 = 0;
  v4 = v1[2];

  v5 = specialized _NativeDictionary.mapValues<A>(_:)(v4, v2, v3, &v7);

  v1[2] = v5;
  return v7;
}

Swift::Void __swiftcall RichTextAttributeResolver.update(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = *(v1 + 16);

  v5 = specialized _NativeDictionary.mapValues<A>(_:)(v4, countAndFlagsBits, object);

  *(v1 + 16) = v5;
}

unint64_t RichTextAttributeResolver.definition(of:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = *v2;
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    outlined init with copy of _Benchmark(*(v4 + 56) + 40 * v5, v15);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v15, v16);
    return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, a2);
  }

  else if (static AttributeScope.subscript.getter())
  {
    v15[0] = v13;
    EnvironmentValues.attributeScopeContext.getter();
    v14 = v16[0];
    static AttributedStringKey.definition(constraintedBy:)(&v14, a2);
  }

  else
  {
    v8 = lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints();
    v9 = MEMORY[0x1E6980378];
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(MEMORY[0x1E6980378], v8, v10, v11);
    type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(0, &lazy cache variable for type metadata for EmptyTextAttributeDefinition<AttributedTextFormatting.Constraints>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints, v9, type metadata accessor for EmptyTextAttributeDefinition);
    a2[3] = v12;
    result = lazy protocol witness table accessor for type EmptyTextAttributeDefinition<AttributedTextFormatting.Constraints> and conformance EmptyTextAttributeDefinition<A>();
    a2[4] = result;
  }

  return result;
}

uint64_t RichTextAttributeResolver.nsAttributes(for:)(uint64_t a1)
{
  v3 = type metadata accessor for AttributeContainer();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v1 + 16);
  v8 = *(v7 + 16);
  v46 = a1;
  v8(v6, a1, v4);
  v9 = Dictionary<>.init<A>(_:including:)();
  v44 = 0;
  v10 = v45 + 64;
  v11 = 1 << *(v45 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v45 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  while (v13)
  {
    v17 = v15;
LABEL_16:
    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v21 = v20 | (v17 << 6);
    v22 = *(*(v45 + 48) + 8 * v21);
    outlined init with copy of _Benchmark(*(v45 + 56) + 40 * v21, &v49);
    *&v51 = v22;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v49, &v51 + 8);
    v23 = v22;
LABEL_17:
    v54[0] = v51;
    v54[1] = v52;
    v54[2] = v53;
    v24 = v51;
    if (!v51)
    {

      return v9;
    }

    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>((v54 + 8), &v51);
    v25 = *(&v52 + 1);
    v26 = v53;
    __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    (*(*(v26 + 8) + 16))(&v49, v46, v25);
    if (v50)
    {
      outlined init with take of Any(&v49, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v9;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
      v30 = v9[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_37;
      }

      v34 = v29;
      if (v9[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = v28;
          specialized _NativeDictionary.copy()();
          v28 = v42;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_39;
        }
      }

      v9 = v47;
      if (v34)
      {
        v16 = (v47[7] + 32 * v28);
        __swift_destroy_boxed_opaque_existential_1(v16);
        outlined init with take of Any(v48, v16);
      }

      else
      {
        v47[(v28 >> 6) + 8] |= 1 << v28;
        *(v9[6] + 8 * v28) = v24;
        outlined init with take of Any(v48, (v9[7] + 32 * v28));
        v40 = v9[2];
        v32 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v32)
        {
          goto LABEL_38;
        }

        v9[2] = v41;
      }
    }

    else
    {
      outlined destroy of Any?(&v49);
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
      if (v37)
      {
        v38 = v36;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v9;
        if (!v39)
        {
          specialized _NativeDictionary.copy()();
          v9 = v47;
        }

        outlined init with take of Any((v9[7] + 32 * v38), v48);
        specialized _NativeDictionary._delete(at:)(v38, v9);
      }

      else
      {

        memset(v48, 0, sizeof(v48));
      }

      outlined destroy of Any?(v48);
    }

    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  if (v14 <= v15 + 1)
  {
    v18 = v15 + 1;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18 - 1;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      v13 = 0;
      v52 = 0u;
      v53 = 0u;
      v15 = v19;
      v51 = 0u;
      goto LABEL_17;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  type metadata accessor for NSAttributedStringKey(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t RichTextAttributeResolver.merge(_:into:override:)(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v199 = a4;
  v197 = a2;
  v7 = MEMORY[0x1E69E6720];
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v182 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v183 = &v175 - v11;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v189 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v190 = &v175 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v194 = &v175 - v17;
  v188 = type metadata accessor for AttributedString.LineHeight();
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v181 = &v175 - v20;
  v193 = type metadata accessor for AttributedString.TextAlignment();
  v191 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v176 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v177 = &v175 - v23;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], v7);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v185 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v186 = &v175 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v179 = (&v175 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v184 = &v175 - v31;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], v7);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v178 = &v175 - v33;
  v34 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v175 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributeContainer?, MEMORY[0x1E69688E0], v7);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v175 - v39;
  v41 = type metadata accessor for AttributeContainer();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v175 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v4[1];
  *&v196 = *v4;
  *(&v196 + 1) = v45;
  v46 = v4[2];
  LODWORD(v195) = a3;
  if ((a3 & 1) == 0 && !*(a1 + 16))
  {

    return $defer #1 <A>() in RichTextAttributeResolver.merge(_:into:override:)();
  }

  v192 = v46;
  v47 = *(v199 + 16);
  v48 = *(v199 + 24);

  v198 = v47;
  v199 = v48;
  AttributeContainer.init<A>(_:including:)();
  (*(v42 + 56))(v40, 0, 1, v41);
  (*(v42 + 32))(v44, v40, v41);
  (*(v35 + 104))(v37, *MEMORY[0x1E69686E8], v34);
  AttributeContainer.merge(_:mergePolicy:)();
  (*(v35 + 8))(v37, v34);
  (*(v42 + 8))(v44, v41);
  specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB648], a1, &v201);
  v49 = v195;
  if (*(&v202 + 1))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
    if (swift_dynamicCast())
    {
      v50 = *&v200[0];
      lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
      AttributeContainer.subscript.getter();
      specialized static FontAttributeDefinition.markdownFontModifiers(for:)(v201, SBYTE8(v201));
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
      AttributeContainer.subscript.getter();
      if (v204)
      {
        v51 = *(&v196 + 1);
        v52 = v196;
      }

      else
      {
        v54 = v196;
        v201 = v196;
        EnvironmentValues.effectiveFont.getter();
        v51 = *(&v54 + 1);
        v52 = v54;
      }

      *&v207 = v52;
      *(&v207 + 1) = v51;
      EnvironmentValues.fontResolutionContext.getter();
      v55 = Font.platformFont(in:modifiers:overrideContextModifiers:)();

      v201 = v200[0];
      v202 = v200[1];
      v203 = v200[2];
      outlined destroy of Font.Context(&v201);
      type metadata accessor for CTFontRef(0);
      lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type CTFontRef and conformance CTFontRef, type metadata accessor for CTFontRef);
      if (static _CFObject.== infix(_:_:)())
      {
        goto LABEL_21;
      }

      if (static AttributeScope.contains<A>(_:)())
      {
        v56 = v50;
        *&v200[0] = Font.init(_:)();
      }

      else
      {
        if ((static AttributeScope.contains<A>(_:)() & 1) == 0)
        {
          goto LABEL_21;
        }

        AttributeContainer.subscript.getter();
        if (BYTE8(v200[0]) != 1)
        {
          goto LABEL_21;
        }

        *&v200[0] = 0;
        BYTE8(v200[0]) = 0;
      }

      AttributeContainer.subscript.setter();
LABEL_21:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      swift_getKeyPath();
      v59 = specialized AttributeContainer.subscript.modify(v200);
      if ((*(v58 + 8) & 1) == 0)
      {
        *v58 = *v58 & 0xFFFFFFFFFFFFFFFBLL | (CTFontRef.symbolicTraits.getter() >> 8) & 4;
      }

      (v59)(v200, 0);

      v60 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v60);
      swift_getKeyPath();
      v62 = specialized AttributeContainer.subscript.modify(v200);
      if ((*(v61 + 8) & 1) == 0)
      {
        *v61 = *v61 & 0xFFFFFFFFFFFFFFFELL | CTFontRef.symbolicTraits.getter() & 1;
      }

      (v62)(v200, 0);

      v63 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v63);
      swift_getKeyPath();
      v65 = specialized AttributeContainer.subscript.modify(v200);
      if ((*(v64 + 8) & 1) == 0)
      {
        *v64 = *v64 & 0xFFFFFFFFFFFFFFFDLL | CTFontRef.symbolicTraits.getter() & 2;
      }

      (v65)(v200, 0);

      AttributeContainer.subscript.getter();
      if (BYTE8(v200[0]))
      {

        v49 = v195;
      }

      else
      {
        v49 = v195;
        if (!*&v200[0])
        {
          *&v200[0] = 0;
          BYTE8(v200[0]) = 1;
          AttributeContainer.subscript.setter();
        }
      }

      goto LABEL_32;
    }
  }

  else
  {
    outlined destroy of Any?(&v201);
  }

  if (v49)
  {
    *&v201 = 0;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
    AttributeContainer.subscript.setter();
    *&v201 = 0;
    BYTE8(v201) = 1;
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
    AttributeContainer.subscript.setter();
  }

LABEL_32:
  specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB6B8], a1, &v201);
  if (!*(&v202 + 1))
  {
    outlined destroy of Any?(&v201);
LABEL_39:
    if (v49)
    {
      v201 = xmmword_18CD633F0;
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();
      AttributeContainer.subscript.setter();
      v68 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v68);
      swift_getKeyPath();
      v70 = specialized AttributeContainer.subscript.modify(&v201);
      if ((*(v69 + 8) & 1) == 0)
      {
        *v69 &= ~0x20uLL;
      }

      (v70)(&v201, 0);
    }

    goto LABEL_70;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v66 = *&v200[0];
  specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB6B0], a1, &v201);
  v175 = a1;
  if (*(&v202 + 1))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
    if (swift_dynamicCast())
    {
      v67 = *&v200[0];
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(&v201);
    v67 = 0;
  }

  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();
  AttributeContainer.subscript.getter();
  v71 = v201;
  if (*(&v201 + 1) != 1 && v201 == v66)
  {
    if (*(&v201 + 1))
    {
      v201 = v196;
      dispatch thunk of AnyColorBox.resolve(in:)();
      v72 = Color.Resolved.kitColor.getter();
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      if (v67)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
        v73 = v67;
        v74 = static NSObject.== infix(_:_:)();

        v49 = v195;
        if (v74)
        {

          v75 = v66;
          v76 = *(&v71 + 1);
LABEL_52:
          outlined consume of Text.LineStyle?(v75, v76);
          a1 = v175;
          goto LABEL_70;
        }
      }

      else
      {
      }
    }

    else if (!v67)
    {
      v75 = v66;
      v76 = 0;
      goto LABEL_52;
    }
  }

  if (v66)
  {
    if (v67)
    {
      type metadata accessor for UIKitPlatformColorDefinition();
      v77 = v67;
      v78 = Color.init(_platformColor:definition:)();
    }

    else
    {
      v78 = 0;
    }
  }

  else
  {
    v78 = 1;
  }

  v79 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v79);
  swift_getKeyPath();
  v81 = specialized AttributeContainer.subscript.modify(&v201);
  if ((*(v80 + 8) & 1) == 0)
  {
    v82 = v66 != 1 || v78 == 1;
    v83 = 32;
    if (v82)
    {
      v83 = 0;
    }

    *v80 = *v80 & 0xFFFFFFFFFFFFFFDFLL | v83;
  }

  (v81)(&v201, 0);

  if (static AttributeScope.contains<A>(_:)())
  {
    *&v201 = v66;
    *(&v201 + 1) = v78;
    outlined copy of Text.LineStyle?(v66, v78);
    AttributeContainer.subscript.setter();
  }

  outlined consume of Text.LineStyle?(v71, *(&v71 + 1));

  a1 = v175;
  outlined consume of Text.LineStyle?(v66, v78);
  v49 = v195;
LABEL_70:
  specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB758], a1, &v201);
  if (*(&v202 + 1))
  {
    if (swift_dynamicCast())
    {
      v84 = *&v200[0];
      v85 = *&v200[0] == 0;
      specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB750], a1, &v201);
      if (*(&v202 + 1))
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
        if (swift_dynamicCast())
        {
          v86 = *&v200[0];
          if (v84)
          {
            type metadata accessor for UIKitPlatformColorDefinition();
            v87 = v86;
            v85 = Color.init(_platformColor:definition:)();
          }

          else
          {
            v85 = 1;
          }

LABEL_81:
          lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
          if ((static AttributeScope.contains<A>(_:)() & 1) == 0)
          {
LABEL_99:

            goto LABEL_100;
          }

          AttributeContainer.subscript.getter();
          v88 = v201;
          outlined consume of Text.LineStyle?(v201, *(&v201 + 1));
          if (*(&v88 + 1) == 1)
          {
            v49 = v195;
            if (v85 != 1)
            {
LABEL_98:
              *&v201 = v84;
              *(&v201 + 1) = v85;
              outlined copy of Text.LineStyle?(v84, v85);
              AttributeContainer.subscript.setter();
              goto LABEL_99;
            }
          }

          else
          {
            if (v85 == 1)
            {
              v89 = 0;
            }

            else
            {
              v89 = v84;
            }

            v49 = v195;
            if (v85 == 1 || v88 != v89)
            {
              goto LABEL_98;
            }
          }

          AttributeContainer.subscript.getter();
          v90 = v201;
          if (*(&v201 + 1) >= 2uLL)
          {

            outlined consume of Text.LineStyle?(v90, *(&v90 + 1));
            v200[0] = v196;
            dispatch thunk of AnyColorBox.resolve(in:)();
            outlined consume of Text.LineStyle?(v90, *(&v90 + 1));
            v91 = Color.Resolved.kitColor.getter();
            objc_opt_self();
            swift_dynamicCastObjCClassUnconditional();
            if (v86)
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
              v92 = v86;
              v93 = static NSObject.== infix(_:_:)();

              v49 = v195;
              if (v93)
              {

LABEL_100:
                outlined consume of Text.LineStyle?(v84, v85);
                goto LABEL_101;
              }
            }

            else
            {

              v49 = v195;
            }
          }

          else
          {
            outlined consume of Text.LineStyle?(v201, *(&v201 + 1));
            v49 = v195;
            if (!v86)
            {
              goto LABEL_100;
            }
          }

          goto LABEL_98;
        }
      }

      else
      {
        outlined destroy of Any?(&v201);
      }

      v86 = 0;
      goto LABEL_81;
    }
  }

  else
  {
    outlined destroy of Any?(&v201);
  }

  if (v49)
  {
    v201 = xmmword_18CD633F0;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
    AttributeContainer.subscript.setter();
  }

LABEL_101:
  specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB600], a1, &v201);
  if (!*(&v202 + 1))
  {
    outlined destroy of Any?(&v201);
LABEL_110:
    if ((v49 & 1) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_110;
  }

  v94 = *&v200[0];
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute();
  if ((static AttributeScope.contains<A>(_:)() & 1) == 0)
  {

    if ((v49 & 1) == 0)
    {
      goto LABEL_112;
    }

LABEL_111:
    *&v201 = 0;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute();
    AttributeContainer.subscript.setter();
    goto LABEL_112;
  }

  AttributeContainer.subscript.getter();
  if (!v207 && (v95 = v196, v201 = v196, , , v204 = EnvironmentValues.effectiveBackgroundStyle.getter(), v200[0] = v95, v96 = ShapeStyle.fallbackColor(in:level:)(), , , , !v96) || (v201 = v196, dispatch thunk of AnyColorBox.resolve(in:)(), , v97 = Color.Resolved.kitColor.getter(), objc_opt_self(), swift_dynamicCastObjCClassUnconditional(), v98 = v94, v99 = static NSObject.== infix(_:_:)(), v98, v97, (v99 & 1) == 0))
  {
    type metadata accessor for UIKitPlatformColorDefinition();
    v98 = v94;
    *&v201 = Color.init(_platformColor:definition:)();
    AttributeContainer.subscript.setter();
  }

  v49 = v195;
LABEL_112:
  specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB650], a1, &v201);
  if (!*(&v202 + 1))
  {
    outlined destroy of Any?(&v201);
LABEL_120:
    if ((v49 & 1) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_121;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_120;
  }

  v100 = *&v200[0];
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
  if (static AttributeScope.contains<A>(_:)())
  {
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
    v101 = v178;
    AttributeContainer.subscript.getter();
    v102 = type metadata accessor for URL();
    v103 = (*(*(v102 - 8) + 48))(v101, 1, v102);
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v101, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    v104 = AttributeContainer.subscript.getter();
    if (!*&v200[0])
    {
      if (v103 == 1)
      {
        v201 = v196;
        if (!MEMORY[0x18D006440](v104))
        {
          goto LABEL_128;
        }
      }

      else
      {
        v201 = v196;
        EnvironmentValues.effectiveLinkColor.getter();
      }
    }

    v201 = v196;
    dispatch thunk of AnyColorBox.resolve(in:)();

    v105 = Color.Resolved.kitColor.getter();
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v106 = v100;
    v107 = static NSObject.== infix(_:_:)();

    if (v107)
    {
LABEL_129:

      v49 = v195;
      goto LABEL_130;
    }

LABEL_128:
    type metadata accessor for UIKitPlatformColorDefinition();
    v106 = v100;
    *&v201 = Color.init(_platformColor:definition:)();
    AttributeContainer.subscript.setter();
    goto LABEL_129;
  }

  if (v49)
  {
LABEL_121:
    *&v201 = 0;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
    AttributeContainer.subscript.setter();
  }

LABEL_130:
  specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB660], a1, &v201);
  if (*(&v202 + 1))
  {
    if (swift_dynamicCast())
    {
      v108 = *&v200[0];
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute();
      if (static AttributeScope.contains<A>(_:)())
      {
        *&v201 = v108;
        BYTE8(v201) = 0;
        goto LABEL_137;
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v201);
  }

  if ((v49 & 1) == 0)
  {
    goto LABEL_138;
  }

  *&v201 = 0;
  BYTE8(v201) = 1;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.KerningAttribute and conformance AttributeScopes.SwiftUIAttributes.KerningAttribute();
LABEL_137:
  AttributeContainer.subscript.setter();
LABEL_138:
  specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB748], a1, &v201);
  if (*(&v202 + 1))
  {
    if (swift_dynamicCast())
    {
      v109 = *&v200[0];
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute();
      if (static AttributeScope.contains<A>(_:)())
      {
        *&v201 = v109;
        BYTE8(v201) = 0;
        goto LABEL_145;
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v201);
  }

  if ((v49 & 1) == 0)
  {
    goto LABEL_146;
  }

  *&v201 = 0;
  BYTE8(v201) = 1;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TrackingAttribute and conformance AttributeScopes.SwiftUIAttributes.TrackingAttribute();
LABEL_145:
  AttributeContainer.subscript.setter();
LABEL_146:
  specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB610], a1, &v201);
  if (*(&v202 + 1))
  {
    if (swift_dynamicCast())
    {
      v110 = *&v200[0];
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute();
      if (static AttributeScope.contains<A>(_:)())
      {
        *&v201 = v110;
        BYTE8(v201) = 0;
        AttributeContainer.subscript.setter();
        v111 = v194;
        goto LABEL_153;
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v201);
  }

  v111 = v194;
  if (v49)
  {
    *&v201 = 0;
    BYTE8(v201) = 1;
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute and conformance AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute();
    AttributeContainer.subscript.setter();
  }

LABEL_153:
  specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB688], a1, &v201);
  if (!*(&v202 + 1))
  {
    outlined destroy of Any?(&v201);
LABEL_161:
    if (v49)
    {
      v118 = v186;
      (*(v191 + 56))(v186, 1, 1, v193);
      v119 = MEMORY[0x1E6965580];
      outlined init with copy of AttributedString.AdaptiveImageGlyph?(v118, v185, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
      lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute();
      AttributeContainer.subscript.setter();
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v118, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v119);
      LOBYTE(v201) = 2;
      lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute();
      AttributeContainer.subscript.setter();
      v120 = v190;
      (*(v187 + 56))(v190, 1, 1, v188);
      v121 = MEMORY[0x1E6965590];
      outlined init with copy of AttributedString.AdaptiveImageGlyph?(v120, v189, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute();
      AttributeContainer.subscript.setter();
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v120, &lazy cache variable for type metadata for AttributedString.LineHeight?, v121);
      LOWORD(v201) = 3;
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute();
      AttributeContainer.subscript.setter();
    }

    goto LABEL_203;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_161;
  }

  v195 = *&v200[0];
  lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute();
  if (static AttributeScope.contains<A>(_:)())
  {
    v112 = [v195 alignment];
    if (v112 > 2)
    {
      v113 = *(&v196 + 1);
      v114 = v193;
      v115 = v191;
      v116 = v179;
      if ((v112 - 3) >= 2)
      {
        goto LABEL_216;
      }

      v124 = 1;
      v125 = v184;
    }

    else
    {
      v113 = *(&v196 + 1);
      v114 = v193;
      v115 = v191;
      v116 = v179;
      if (v112)
      {
        if (v112 == 1)
        {
          v117 = MEMORY[0x1E6965578];
        }

        else
        {
          if (v112 != 2)
          {
            goto LABEL_216;
          }

          v117 = MEMORY[0x1E6965570];
        }
      }

      else
      {
        v117 = MEMORY[0x1E6965568];
      }

      v125 = v184;
      (*(v191 + 104))(v184, *v117, v193);
      v124 = 0;
    }

    v126 = *(v115 + 56);
    v126(v125, v124, 1, v114);
    outlined init with copy of AttributedString.AdaptiveImageGlyph?(v125, v116, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    if ((*(v115 + 48))(v116, 1, v114) == 1)
    {
      v127 = v114;
      v128 = MEMORY[0x1E6965580];
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v116, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
      v129 = v186;
      v126(v186, 1, 1, v127);
      outlined init with copy of AttributedString.AdaptiveImageGlyph?(v129, v185, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v128);
      AttributeContainer.subscript.setter();
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v129, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v128);
LABEL_172:
      v111 = v194;
LABEL_177:
      v123 = v184;
      goto LABEL_178;
    }

    v179 = v126;
    v130 = v177;
    (*(v115 + 32))(v177, v116, v114);
    *&v201 = v196;
    *(&v201 + 1) = v113;
    EnvironmentValues.textAlignment.getter();
    if (LOBYTE(v200[0]) == 2)
    {
      v111 = v194;
      v131 = v179;
    }

    else
    {
      v111 = v194;
      v131 = v179;
      if ((v200[0] & 1) == 0)
      {
        v163 = v196;
        v201 = v196;
        EnvironmentValues.multilineTextAlignment.getter();
        v200[0] = v163;
        EnvironmentValues.layoutDirection.getter();
        v208 = v204;
        v207 = v163;
        v164 = v193;
        EnvironmentValues.writingMode.getter();
        v205 = v206;
        v165 = v176;
        AttributedString.TextAlignment.init(_:layoutDirection:writingMode:)();
        v166 = static AttributedString.TextAlignment.== infix(_:_:)();
        v167 = v191;
        v168 = *(v191 + 8);
        v168(v165, v164);
        v169 = v130;
        v170 = v186;
        if (v166)
        {
          v171 = v186;
          v172 = 1;
        }

        else
        {
          (*(v167 + 16))(v186, v169, v164);
          v171 = v170;
          v172 = 0;
        }

        v179(v171, v172, 1, v164);
        v173 = v164;
        v174 = MEMORY[0x1E6965580];
        outlined init with copy of AttributedString.AdaptiveImageGlyph?(v170, v185, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
        AttributeContainer.subscript.setter();
        _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v170, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v174);
        v168(v169, v173);
        goto LABEL_172;
      }
    }

    v132 = v191;
    v133 = v130;
    v134 = v186;
    (*(v191 + 16))(v186, v133, v114);
    v131(v134, 0, 1, v114);
    v135 = v114;
    v136 = MEMORY[0x1E6965580];
    outlined init with copy of AttributedString.AdaptiveImageGlyph?(v134, v185, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    AttributeContainer.subscript.setter();
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v134, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v136);
    (*(v132 + 8))(v133, v135);
    goto LABEL_177;
  }

  v122 = v186;
  (*(v191 + 56))(v186, 1, 1, v193);
  outlined init with copy of AttributedString.AdaptiveImageGlyph?(v122, v185, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  AttributeContainer.subscript.setter();
  v123 = v122;
LABEL_178:
  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v123, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute();
  if (static AttributeScope.contains<A>(_:)())
  {
    if ([v195 alignment] == 3)
    {
      static TextJustification.full.getter();
    }

    else
    {
      LOWORD(v201) = 3;
    }

    AttributeContainer.subscript.setter();
  }

  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute();
  if ((static AttributeScope.contains<A>(_:)() & 1) == 0)
  {
    LOBYTE(v201) = 2;
    AttributeContainer.subscript.setter();
    goto LABEL_193;
  }

  v137 = [v195 baseWritingDirection];
  if (v137 == 1)
  {
    v138 = 1;
LABEL_191:
    LOBYTE(v201) = v138;
    goto LABEL_192;
  }

  if (!v137)
  {
    LOBYTE(v201) = 0;
LABEL_192:
    AttributeContainer.subscript.setter();
    v111 = v194;
LABEL_193:
    lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute();
    v139 = static AttributeScope.contains<A>(_:)();
    v140 = v188;
    if (v139)
    {
      v141 = v195;
      v142 = v181;
      v197 = v141;
      AttributedString.LineHeight.init(_:)();
      v201 = v196;
      EnvironmentValues.lineHeight.getter();
      v143 = v187;
      v144 = *(v187 + 48);
      if (v144(v111, 1, v140) == 1)
      {
        v145 = v180;
        static AttributedString.LineHeight.variable.getter();
        if (v144(v111, 1, v140) != 1)
        {
          _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v111, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
        }
      }

      else
      {
        v145 = v180;
        (*(v143 + 32))(v180, v111, v140);
      }

      lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type AttributedString.LineHeight and conformance AttributedString.LineHeight, MEMORY[0x1E6965590]);
      v148 = dispatch thunk of static Equatable.== infix(_:_:)();
      v149 = *(v143 + 8);
      v149(v145, v140);
      v150 = v190;
      if (v148)
      {
        (*(v143 + 56))(v190, 1, 1, v140);
        v151 = v140;
        v152 = v142;
        v153 = MEMORY[0x1E6965590];
        outlined init with copy of AttributedString.AdaptiveImageGlyph?(v150, v189, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
        AttributeContainer.subscript.setter();

        _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v150, &lazy cache variable for type metadata for AttributedString.LineHeight?, v153);
        v154 = v152;
        v155 = v151;
      }

      else
      {
        (*(v143 + 16))(v190, v142, v140);
        (*(v143 + 56))(v150, 0, 1, v140);
        v156 = v142;
        v157 = MEMORY[0x1E6965590];
        outlined init with copy of AttributedString.AdaptiveImageGlyph?(v150, v189, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
        AttributeContainer.subscript.setter();

        _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v150, &lazy cache variable for type metadata for AttributedString.LineHeight?, v157);
        v154 = v156;
        v155 = v140;
      }

      v149(v154, v155);
    }

    else
    {
      v146 = v190;
      (*(v187 + 56))(v190, 1, 1, v188);
      v147 = MEMORY[0x1E6965590];
      outlined init with copy of AttributedString.AdaptiveImageGlyph?(v146, v189, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      AttributeContainer.subscript.setter();

      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v146, &lazy cache variable for type metadata for AttributedString.LineHeight?, v147);
    }

LABEL_203:
    specialized Dictionary.subscript.getter(*MEMORY[0x1E69DB5F0], a1, &v201);
    if (*(&v202 + 1))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph);
      if (swift_dynamicCast())
      {
        v158 = *&v200[0];
        lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute();
        if (static AttributeScope.contains<A>(_:)())
        {
          v159 = v158;
          v160 = v183;
          AttributedString.AdaptiveImageGlyph.init(_:)();
          v161 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
          (*(*(v161 - 8) + 56))(v160, 0, 1, v161);
          v162 = MEMORY[0x1E69655A0];
          outlined init with copy of AttributedString.AdaptiveImageGlyph?(v160, v182, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
          AttributeContainer.subscript.setter();

          _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v160, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, v162);
        }

        else
        {
        }
      }
    }

    else
    {
      outlined destroy of Any?(&v201);
    }

    return $defer #1 <A>() in RichTextAttributeResolver.merge(_:into:override:)();
  }

  if (v137 == -1)
  {
    v138 = 2;
    goto LABEL_191;
  }

  *&v201 = 0;
  *(&v201 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  MEMORY[0x18D00C9B0](0xD000000000000020, 0x800000018CD572E0);
  *&v200[0] = [v195 baseWritingDirection];
  type metadata accessor for NSWritingDirection(0);
  _print_unlocked<A, B>(_:_:)();
LABEL_216:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t $defer #1 <A>() in RichTextAttributeResolver.merge(_:into:override:)()
{
  RichTextAttributeResolver.fixup(_:)(v2);
  v0 = v3;

  return outlined consume of AttributedTextFormatting.Constraints?(v0);
}

void (*specialized AttributeContainer.subscript.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  AttributeContainer.subscript.getter();
  v5 = *(v4 + 24);
  *v4 = *(v4 + 16);
  *(v4 + 8) = v5;
  return AttributeContainer.subscript.modifyspecialized ;
}

void AttributeContainer.subscript.modifyspecialized (void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  AttributeContainer.subscript.setter();

  free(v1);
}

uint64_t RichTextAttributeResolver.fixup(_:)@<X0>(uint64_t a1@<X8>)
{
  EnvironmentValues.attributeScopeContext.getter();
  AttributedTextFormatting.Constraints.constrain(_:)();
  *(a1 + 8) = v3;
  result = outlined consume of AttributedTextFormatting.Constraints?(0);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *a1 = 1;
  return result;
}

void FontAttributeDefinition.nsValue(in:)(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FontAttributeDefinition(0) + 40));
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();

  v4 = AttributedString.Keys.contains(_:)();

  v5 = 0;
  if (v4)
  {
    AttributeContainer.subscript.getter();
    v5 = v3;
  }

  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();

  v6 = AttributedString.Keys.contains(_:)();

  if (v6)
  {
    AttributeContainer.subscript.getter();
    v7 = v3;
    v8 = v14;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  v9 = AttributedString.Keys.contains(_:)();

  if (v9)
  {
    AttributeContainer.subscript.getter();
    v10 = v3;
    v11 = v14;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = FontAttributeDefinition.nsValue(font:intent:language:)(v5, v7, v8, v10, v11);

  type metadata accessor for CTFontRef(0);
  a1[3] = v13;
  *a1 = v12;
}

uint64_t FontAttributeDefinition.nsValue(font:intent:language:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a4;
  v44 = a1;
  v10 = type metadata accessor for TypesettingLanguage();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = specialized static FontAttributeDefinition.markdownFontModifiers(for:)(a2, a3 & 1);
  *&v50 = *v6;

  specialized Array.append<A>(contentsOf:)(v22);
  v53 = v50;
  v43 = type metadata accessor for FontAttributeDefinition(0);
  v23 = v6 + *(v43 + 20);
  outlined init with copy of ParagraphStyleAttributeDefinition(v23, v21, MEMORY[0x1E697F888]);
  static TypesettingLanguage.automatic.getter();
  LOBYTE(v22) = MEMORY[0x18D007860](v21, v12);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v12, MEMORY[0x1E697F888]);
  v45 = v21;
  if ((v22 & 1) != 0 && a5)
  {
    static TypesettingLanguage.explicit(from:)();
  }

  else
  {
    outlined init with copy of ParagraphStyleAttributeDefinition(v21, v15, MEMORY[0x1E697F888]);
  }

  outlined init with take of TypesettingLanguage(v15, v18, MEMORY[0x1E697F888]);
  v24 = v18;
  FontAttributeDefinition.resolvedTypesettingLanguage(_:)(v18, &v50);
  v25 = v50;
  v26 = v51;
  v27 = BYTE1(v51);
  if (TypesettingLanguage.Resolved.fontModifier.getter())
  {
    outlined consume of TypesettingLanguage.Resolved(v25, *(&v25 + 1), v26, v27);

    MEMORY[0x18D00CC30](v28);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    outlined consume of TypesettingLanguage.Resolved(v25, *(&v25 + 1), v26, v27);
  }

  v29 = v24;
  v30 = v23 + *(type metadata accessor for TypesettingConfiguration() + 20);
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  *&v50 = v31;
  BYTE8(v50) = v30;
  v32 = TypesettingLanguageAwareLineHeightRatio.fontModifier.getter();
  v33 = v45;
  if (v32)
  {

    MEMORY[0x18D00CC30](v34);
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v35 = *(v43 + 24);
  if (!v44)
  {
  }

  v36 = *(v6 + v35 + 16);
  v49[0] = *(v6 + v35);
  v49[1] = v36;
  v38 = *(v6 + v35);
  v37 = *(v6 + v35 + 16);
  v49[2] = *(v6 + v35 + 32);
  v46 = v38;
  v47 = v37;
  v48 = *(v6 + v35 + 32);

  outlined init with copy of Font.Context(v49, &v50);
  v39 = Font.platformFont(in:modifiers:overrideContextModifiers:)();

  v50 = v46;
  v51 = v47;
  v52 = v48;
  outlined destroy of Font.Context(&v50);
  v40 = MEMORY[0x1E697F888];
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v29, MEMORY[0x1E697F888]);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v33, v40);
  return v39;
}

uint64_t FontAttributeDefinition.resolvedTypesettingLanguage(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for TypesettingLanguage.Storage();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = -256;
  outlined init with copy of ParagraphStyleAttributeDefinition(a1, v8, MEMORY[0x1E697F870]);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  if ((*(*(v10 - 8) + 48))(v8, 2, v10) != 2)
  {
    getter of resolved #1 in FontAttributeDefinition.resolvedTypesettingLanguage(_:)(v9, v3, a2);
    outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v8, MEMORY[0x1E697F870]);
  }

  v11 = *(type metadata accessor for FontAttributeDefinition(0) + 36);
  *&v16 = *(v3 + v11);
  type metadata accessor for AtomicBox<TypesettingLanguage.Resolved?>();
  AtomicBox.wrappedValue.getter();
  v12 = v20;
  v13 = HIBYTE(v20);
  if (v13 > 0xFE)
  {
    getter of resolved #1 in FontAttributeDefinition.resolvedTypesettingLanguage(_:)(v9, v3, &v19);
    v18 = *(v3 + v11);
    v16 = v19;
    v17 = v20;

    AtomicBox.wrappedValue.setter();

    getter of resolved #1 in FontAttributeDefinition.resolvedTypesettingLanguage(_:)(v9, v3, a2);
  }

  v15 = v19;

  *a2 = v15;
  *(a2 + 16) = v12;
  *(a2 + 17) = v13;
  return result;
}

uint64_t getter of resolved #1 in FontAttributeDefinition.resolvedTypesettingLanguage(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FontAttributeDefinition(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = v11 >> 8;
  if (v11 >> 8 <= 0xFE)
  {
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    LOWORD(v17) = *(a1 + 32);
  }

  else
  {
    v24 = *(a1 + 32);
    v25 = v10;
    v26 = v9;
    outlined init with copy of ParagraphStyleAttributeDefinition(a2, &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FontAttributeDefinition);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    outlined init with take of TypesettingLanguage(&v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13, type metadata accessor for FontAttributeDefinition);
    TypesettingLanguage.resolve(with:locale:)();

    v15 = v27;
    v16 = v28;
    v17 = v29;
    LOBYTE(v12) = v30;
    v18 = v29 | (v30 << 8);
    swift_beginAccess();
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    *(a1 + 16) = v15;
    *(a1 + 24) = v16;
    v21 = *(a1 + 32);
    *(a1 + 32) = v18;
    outlined copy of TypesettingLanguage.Resolved(v15, v16, v17, v12);
    outlined consume of TypesettingLanguage.Resolved?(v19, v20, v21);
    v11 = v24;
    v10 = v25;
    v9 = v26;
  }

  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 17) = v12;
  return outlined copy of TypesettingLanguage.Resolved?(v9, v10, v11);
}

uint64_t FontAttributeDefinition.fixup(_:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FontAttributeDefinition(0) + 40));
  AttributedString.AttributeDependencies.init()();
  outlined consume of AttributedTextFormatting.Constraints?(0);
  specialized Sequence.reduce<A>(_:_:)(0, v5, 0, 0, partial apply for closure #1 in FontAttributeDefinition.fixup(_:), v3, a1);

  return outlined consume of AttributedTextFormatting.Constraints?(0);
}

uint64_t closure #1 in FontAttributeDefinition.fixup(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  type metadata accessor for FontAttributeDefinition(0);

  AttributedTextFormatting.Constraints.constrain<A>(_:in:)(v12);

  v7 = v12[0];
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;

  outlined copy of AttributedTextFormatting.Constraints?(v4);
  specialized TextAttributeValidationRecord.formUnion(_:)(v7, v8, v9, v10);

  return outlined consume of AttributedTextFormatting.Constraints?(v9);
}

BOOL FontAttributeDefinition.update(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TypesettingConfiguration();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for FontAttributeDefinition(0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = *a1;
  v16 = a1[1];
  v36 = (&v32 - v18);
  outlined init with copy of ParagraphStyleAttributeDefinition(v2, &v32 - v18, type metadata accessor for FontAttributeDefinition);
  v19 = *(v7 + 16);
  v34 = v13[7];
  v19(v12, v2 + v34, v6);
  *&v45 = v17;
  *(&v45 + 1) = v16;
  EnvironmentValues.locale.getter();
  lazy protocol witness table accessor for type FontAttributeDefinition and conformance FontAttributeDefinition(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = v7;
  v20 = *(v7 + 8);
  v20(v9, v6);
  v37 = v6;
  v38 = v12;
  v20(v12, v6);
  v21 = v33;
  if ((a1 & 1) == 0)
  {
    outlined init with copy of ParagraphStyleAttributeDefinition(v2, v33, type metadata accessor for FontAttributeDefinition);
    *&v42 = *(v21 + v13[9]);
    v45 = 0uLL;
    LOWORD(v46) = -256;
    type metadata accessor for AtomicBox<TypesettingLanguage.Resolved?>();

    AtomicBox.wrappedValue.setter();

    outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v21, type metadata accessor for FontAttributeDefinition);
  }

  *&v42 = v17;
  *(&v42 + 1) = v16;
  EnvironmentValues.attributeScopeContext.getter();
  v22 = (v2 + v13[11]);

  *v22 = v45;
  *&v45 = v17;
  *(&v45 + 1) = v16;
  v23 = EnvironmentValues.fontModifiers.getter();

  *v2 = v23;
  *&v45 = v17;
  *(&v45 + 1) = v16;
  v24 = v35;
  EnvironmentValues.typesettingConfiguration.getter();
  outlined assign with take of ParagraphStyleResolutionContext(v24, v2 + v13[5], MEMORY[0x1E6980430]);
  v40 = v17;
  v41 = v16;
  EnvironmentValues.fontResolutionContext.getter();
  v25 = (v2 + v13[6]);
  v26 = v25[1];
  v45 = *v25;
  v46 = v26;
  v47 = v25[2];
  outlined destroy of Font.Context(&v45);
  v27 = v43;
  *v25 = v42;
  v25[1] = v27;
  v25[2] = v44;
  v40 = v17;
  v41 = v16;
  v28 = v38;
  EnvironmentValues.locale.getter();
  (*(v39 + 40))(v2 + v34, v28, v37);
  outlined init with copy of ParagraphStyleAttributeDefinition(v2, v21, type metadata accessor for FontAttributeDefinition);
  v29 = v36;
  v30 = specialized static FontAttributeDefinition.== infix(_:_:)(v36, v21);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v21, type metadata accessor for FontAttributeDefinition);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v29, type metadata accessor for FontAttributeDefinition);
  return (v30 & 1) == 0;
}

uint64_t protocol witness for TextAttributeDefinition.update(with:) in conformance FontAttributeDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 - 8;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v3 + *(v6 + 40));

  *v9 = a1;
  v9[1] = a2;
  outlined init with copy of ParagraphStyleAttributeDefinition(v3, v8, type metadata accessor for FontAttributeDefinition);
  v13 = *&v8[*(v6 + 44)];
  v11[0] = 0;
  v11[1] = 0;
  v12 = -256;
  type metadata accessor for AtomicBox<TypesettingLanguage.Resolved?>();

  AtomicBox.wrappedValue.setter();
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v8, type metadata accessor for FontAttributeDefinition);
}

uint64_t ParagraphStyleAttributeDefinition.nsValue(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], v4);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v28 = *v2;
  lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute();

  LOBYTE(v4) = AttributedString.Keys.contains(_:)();

  if (v4)
  {
    AttributeContainer.subscript.getter();
  }

  else
  {
    v17 = type metadata accessor for AttributedString.TextAlignment();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  }

  outlined init with take of AttributedString.TextAlignment?(v13, v16, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  v18 = *v2;
  v28 = *v2;
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute();

  v19 = AttributedString.Keys.contains(_:)();

  if (v19)
  {
    AttributeContainer.subscript.getter();
    v20 = v28;
  }

  else
  {
    v20 = 2;
  }

  v28 = v18;
  lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute();

  v21 = AttributedString.Keys.contains(_:)();

  if (v21)
  {
    AttributeContainer.subscript.getter();
  }

  else
  {
    v22 = type metadata accessor for AttributedString.LineHeight();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  }

  outlined init with take of AttributedString.TextAlignment?(v7, v10, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  v28 = *v2;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute();

  v23 = AttributedString.Keys.contains(_:)();

  if (v23)
  {
    AttributeContainer.subscript.getter();
    v24 = v28;
  }

  else
  {
    v24 = 3;
  }

  LOWORD(v28) = v24;
  v25 = ParagraphStyleAttributeDefinition.nsValue(alignment:writingDirection:lineHeight:justification:)(v16, v20, v10, &v28);
  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v10, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v16, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  if (v25)
  {
    result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle);
  }

  else
  {
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v25;
  a1[3] = result;
  return result;
}

void *ParagraphStyleAttributeDefinition.nsValue(alignment:writingDirection:lineHeight:justification:)(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for ParagraphStyleResolutionContext();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOWORD(a4) = *a4;
  v19 = type metadata accessor for ParagraphStyleAttributeDefinition(0);
  outlined init with copy of ParagraphStyleAttributeDefinition(v4 + *(v19 + 20), v18, MEMORY[0x1E6980A70]);
  v20 = a4 & 0xFE;
  if ((a4 & 0xFE) != 2)
  {
    static TextJustification.full.getter();
    v20 = v31[6];
  }

  *v18 = v20;
  v33 = 1;
  v32 = 1;
  v21 = makeParagraphStyle(context:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)();
  [v21 setLineBreakMode_];
  if ([v21 isFullyJustified])
  {
    v22 = 3;
  }

  else if ([v21 horizontalAlignment] == 2)
  {
    v22 = 0;
  }

  else if ([v21 horizontalAlignment] == 3)
  {
    v22 = 2;
  }

  else
  {
    if ([v21 horizontalAlignment] != 4)
    {
      goto LABEL_12;
    }

    v22 = 1;
  }

  [v21 setAlignment_];
LABEL_12:
  outlined init with copy of AttributedString.AdaptiveImageGlyph?(a3, v12, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  v23 = type metadata accessor for AttributedString.LineHeight();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v12, 1, v23) == 1)
  {
    ParagraphStyleResolutionContext.lineHeight.getter();
    if (v25(v12, 1, v23) != 1)
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v12, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    }
  }

  else
  {
    (*(v24 + 32))(v15, v12, v23);
    (*(v24 + 56))(v15, 0, 1, v23);
  }

  outlined init with copy of AttributedString.AdaptiveImageGlyph?(v15, v9, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  if (v25(v9, 1, v23) == 1)
  {
    v26 = MEMORY[0x1E6965590];
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v15, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v18, MEMORY[0x1E6980A70]);
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v9, &lazy cache variable for type metadata for AttributedString.LineHeight?, v26);
  }

  else
  {
    v27 = AttributedString.LineHeight.baselineInterval.getter();
    v29 = v28;
    (*(v24 + 8))(v9, v23);
    switch(v27)
    {
      case 3:
        [v21 setMinimumLineHeight_];
        [v21 setMaximumLineHeight_];
        break;
      case 2:
        [v21 setLineSpacing_];
        break;
      case 1:
        [v21 setLineHeightMultiple_];
        break;
    }

    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v15, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v18, MEMORY[0x1E6980A70]);
  }

  return v21;
}

uint64_t ParagraphStyleAttributeDefinition.fixup(_:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  AttributedString.AttributeDependencies.init()();
  outlined consume of AttributedTextFormatting.Constraints?(0);
  specialized Sequence.reduce<A>(_:_:)(0, v5, 0, 0, partial apply for closure #1 in ParagraphStyleAttributeDefinition.fixup(_:), v3, a1);

  return outlined consume of AttributedTextFormatting.Constraints?(0);
}

uint64_t closure #1 in ParagraphStyleAttributeDefinition.fixup(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = *(a1 + 3);
  type metadata accessor for ParagraphStyleAttributeDefinition(0);

  AttributedTextFormatting.Constraints.constrain<A>(_:in:)(v12);

  v7 = v12[0];
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;

  outlined copy of AttributedTextFormatting.Constraints?(v4);
  specialized TextAttributeValidationRecord.formUnion(_:)(v7, v8, v9, v10);

  return outlined consume of AttributedTextFormatting.Constraints?(v9);
}

BOOL ParagraphStyleAttributeDefinition.update(with:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParagraphStyleResolutionContext();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ParagraphStyleAttributeDefinition(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = *a1;
  v15 = a1[1];
  outlined init with copy of ParagraphStyleAttributeDefinition(v2, v18 - v12, type metadata accessor for ParagraphStyleAttributeDefinition);
  *&v18[0] = v14;
  *(&v18[0] + 1) = v15;

  ParagraphStyleResolutionContext.init(_:)();
  outlined assign with take of ParagraphStyleResolutionContext(v6, v2 + *(v8 + 28), MEMORY[0x1E6980A70]);
  v19 = v14;
  v20 = v15;
  EnvironmentValues.attributeScopeContext.getter();
  v16 = (v2 + *(v8 + 32));

  *v16 = v18[0];
  outlined init with copy of ParagraphStyleAttributeDefinition(v2, v10, type metadata accessor for ParagraphStyleAttributeDefinition);
  LOBYTE(v2) = specialized static ParagraphStyleAttributeDefinition.== infix(_:_:)(v13, v10);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v10, type metadata accessor for ParagraphStyleAttributeDefinition);
  outlined destroy of (Locale.Language, TypesettingLanguage.Flags)(v13, type metadata accessor for ParagraphStyleAttributeDefinition);
  return (v2 & 1) == 0;
}

uint64_t StrikethroughStyleAttributeDefinition.fixup(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = a2;
  type metadata accessor for <<opaque return type of AttributedString.Keys.makeIterator()>>.0();
  v5 = v4;
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  AttributedString.AttributeDependencies.init()();
  v11 = v35;
  outlined consume of AttributedTextFormatting.Constraints?(0);
  v35 = v8;

  outlined copy of AttributedTextFormatting.Constraints?(0);
  v23[1] = v8;

  AttributedString.Keys.makeIterator()();

  swift_getOpaqueTypeConformance2();
  v12 = v5;
  dispatch thunk of IteratorProtocol.next()();
  v23[0] = v11;
  if (v39)
  {
    v30 = 0;
    v13 = 0;
    v29 = 0;
    v14 = v11;
    v27 = a1;
    v28 = v7;
    v26 = v9;
    do
    {
      v35 = v9;
      v36 = v10;

      AttributedTextFormatting.Constraints.constrain<A>(_:in:)(v31);

      v15 = v31[0];
      v17 = v32;
      v16 = v33;
      v18 = v13;
      v19 = v10;
      v20 = v34;
      LOBYTE(v35) = v29 & 1;
      v36 = v14;
      v37 = v18;
      v38 = v30;

      outlined copy of AttributedTextFormatting.Constraints?(v18);
      specialized TextAttributeValidationRecord.formUnion(_:)(v15, v17, v16, v20);
      v7 = v28;

      v9 = v26;
      v10 = v19;
      outlined consume of AttributedTextFormatting.Constraints?(v16);

      outlined consume of AttributedTextFormatting.Constraints?(v18);
      v29 = v35;
      v14 = v36;
      v13 = v37;
      v30 = v38;
      swift_getOpaqueTypeConformance2();
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v39);
  }

  else
  {
    v29 = 0;
    v13 = 0;
    v30 = 0;
    v14 = v11;
  }

  (*(v24 + 8))(v7, v12);

  result = outlined consume of AttributedTextFormatting.Constraints?(0);
  v22 = v25;
  *v25 = v29;
  v22[1] = v14;
  v22[2] = v13;
  v22[3] = v30;
  return result;
}

double StrikethroughStyleAttributeDefinition.nsValue(in:)@<D0>(uint64_t a1@<X8>)
{
  v10 = *v1;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.StrikethroughStyleAttribute();
  swift_bridgeObjectRetain_n();
  v3 = AttributedString.Keys.contains(_:)();

  if (v3)
  {
    AttributeContainer.subscript.getter();
    v4 = v10;
    v5 = v11;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  v6 = AttributedString.Keys.contains(_:)();

  if (v6)
  {
    AttributeContainer.subscript.getter();
    if (v5 == 1)
    {
      if ((v10 & 0x20) != 0)
      {
        v7 = v11;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        goto LABEL_15;
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      if (!v8)
      {
        goto LABEL_15;
      }

LABEL_14:
      *(a1 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      *a1 = v8;
      return result;
    }
  }

  else if (v5 == 1)
  {
    goto LABEL_15;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  outlined consume of Text.LineStyle?(v4, v5);
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_15:
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

BOOL StrikethroughStyleAttributeDefinition.update(with:)()
{

  EnvironmentValues.attributeScopeContext.getter();

  *(v0 + 8) = v3;
  *(v0 + 16) = v4;

  v1 = specialized static StrikethroughStyleAttributeDefinition.== infix(_:_:)();

  return (v1 & 1) == 0;
}

uint64_t ForgroundColorAttributeDefinition.fixup(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v27 = a2;
  type metadata accessor for <<opaque return type of AttributedString.Keys.makeIterator()>>.0();
  v5 = v4;
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  AttributedString.AttributeDependencies.init()();
  v11 = v39;
  outlined consume of AttributedTextFormatting.Constraints?(0);
  v39 = v8;

  v28 = v11;

  outlined copy of AttributedTextFormatting.Constraints?(0);
  v25 = v8;

  AttributedString.Keys.makeIterator()();

  swift_getOpaqueTypeConformance2();
  dispatch thunk of IteratorProtocol.next()();
  if (v43)
  {
    v12 = 0;
    v13 = 0;
    v29 = a1;
    v30 = v7;
    v14 = 0;
    v15 = v28;
    v31 = v10;
    v32 = v9;
    do
    {

      EnvironmentValues.init(_:tracker:)();
      v16 = v5;
      v33 = v35;
      v34 = v36;
      EnvironmentValues.attributeScopeContext.getter();

      AttributedTextFormatting.Constraints.constrain<A>(_:in:)(&v35);

      v17 = v35;
      v18 = v36;
      v19 = v37;
      v20 = v38;
      LOBYTE(v39) = v14 & 1;
      v40 = v15;
      v41 = v13;
      v42 = v12;

      outlined copy of AttributedTextFormatting.Constraints?(v13);
      v21 = v17;
      v5 = v16;
      specialized TextAttributeValidationRecord.formUnion(_:)(v21, v18, v19, v20);

      v22 = v19;
      v7 = v30;
      outlined consume of AttributedTextFormatting.Constraints?(v22);

      outlined consume of AttributedTextFormatting.Constraints?(v13);
      v14 = v39;
      v15 = v40;
      v13 = v41;
      v12 = v42;
      swift_getOpaqueTypeConformance2();
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v43);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v15 = v28;
  }

  (*(v26 + 8))(v7, v5);

  result = outlined consume of AttributedTextFormatting.Constraints?(0);
  v24 = v27;
  *v27 = v14;
  v24[1] = v15;
  v24[2] = v13;
  v24[3] = v12;
  return result;
}

uint64_t ForgroundColorAttributeDefinition.nsValue(in:)@<X0>(uint64_t a1@<X8>)
{
  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = v1[1];
  v11 = v1[2];
  v19 = *v1;
  v10 = v19;
  v20 = v9;
  v21 = v11;
  v18 = v19;
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();

  v12 = AttributedString.Keys.contains(_:)();

  v13 = 0;
  if (v12)
  {
    AttributeContainer.subscript.getter();
    v13 = v18;
  }

  v18 = v10;
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();

  v14 = AttributedString.Keys.contains(_:)();

  if (v14)
  {
    AttributeContainer.subscript.getter();
  }

  else
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  }

  v16 = MEMORY[0x1E6968FB0];
  outlined init with take of AttributedString.TextAlignment?(v5, v8, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  ForgroundColorAttributeDefinition.nsValue(color:link:)(v13, v8, a1);

  return _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgWOhTm_0(v8, &lazy cache variable for type metadata for URL?, v16);
}

uint64_t ForgroundColorAttributeDefinition.nsValue(color:link:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  if ((*(*(v6 - 8) + 48))(a2, 1, v6) == 1)
  {
    if (!a1)
    {

      v7 = EnvironmentValues.init(_:tracker:)();
      v8 = MEMORY[0x18D006440](v7);

      if (!v8)
      {
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return result;
      }
    }
  }

  else if (!a1)
  {

    EnvironmentValues.init(_:tracker:)();
    EnvironmentValues.effectiveLinkColor.getter();

    goto LABEL_8;
  }

LABEL_8:

  EnvironmentValues.init(_:tracker:)();
  dispatch thunk of AnyColorBox.resolve(in:)();

  Color.Resolved.kitColor.getter();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  *(a3 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);

  *a3 = v10;
  return result;
}

uint64_t protocol witness for TextAttributeDefinition.update(with:) in conformance ForgroundColorAttributeDefinition(__int128 *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;

  EnvironmentValues.addDependencies(from:)();

  v3 = PropertyList.Tracker.hasDifferentUsedValues(_:)();
  if (v3)
  {
    PropertyList.Tracker.reset()();
  }

  *(v1 + 8) = v5;
  *(v1 + 16) = v2;
  return v3 & 1;
}

uint64_t MappedAttributedStringKeyDefinition.dependencies.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + 32) == 1)
  {
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18CD63400;
    v6 = *(a1 + 32);
    *(v5 + 32) = *(a1 + 16);
    *(v5 + 40) = v6;
  }

  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  result = AttributedString.Keys.init<A>(_:)();
  *a2 = v8;
  return result;
}

uint64_t MappedAttributedStringKeyDefinition.fixup(_:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {

    AttributedTextFormatting.Constraints.constrain<A>(_:in:)(v7);

    v4 = v7[0];
    v5 = v7[1];
    v6 = v8;
  }

  else
  {
    AttributedString.AttributeDependencies.init()();
    v5 = v7[0];
    result = outlined consume of AttributedTextFormatting.Constraints?(0);
    v4 = 0;
    v6 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return result;
}

uint64_t MappedAttributedStringKeyDefinition.nsValue(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21[2] = a1;
  v24 = a3;
  v21[1] = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v8;
  v10 = *(a2 + 24);
  v11 = type metadata accessor for Optional();
  v22 = *(v11 - 8);
  v23 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - v13;
  v15 = *(v3 + 16);
  if (*(v3 + 32) == 1)
  {
    AttributeContainer.subscript.getter();
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v9, 1, 1, AssociatedTypeWitness, v12);
  }

  v15(v9);
  (*(v7 + 8))(v9, v6);
  v16 = *(v10 - 8);
  if ((*(v16 + 48))(v14, 1, v10) == 1)
  {
    result = (*(v22 + 8))(v14, v23);
    v18 = v24;
    *v24 = 0u;
    *(v18 + 1) = 0u;
  }

  else
  {
    v19 = v24;
    v24[3] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    return (*(v16 + 32))(boxed_opaque_existential_1, v14, v10);
  }

  return result;
}

BOOL MappedAttributedStringKeyDefinition.update(with:)()
{

  EnvironmentValues.attributeScopeContext.getter();

  *v0 = v3;
  v0[1] = v4;

  v1 = static AttributedTextFormatting.Constraints.== infix(_:_:)();

  return (v1 & 1) == 0;
}

double ColorMappedAttributedStringKeyDefinition.constraints.getter@<D0>(_OWORD *a1@<X8>)
{

  EnvironmentValues.init(_:tracker:)();
  EnvironmentValues.attributeScopeContext.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t ColorMappedAttributedStringKeyDefinition.dependencies.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + 32))
  {
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    v6 = *(a1 + 16);
    *(v5 + 16) = xmmword_18CD63400;
    *(v5 + 32) = v6;
  }

  _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  result = AttributedString.Keys.init<A>(_:)();
  *a2 = v8;
  return result;
}

uint64_t ColorMappedAttributedStringKeyDefinition.fixup(_:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 32))
  {
    ColorMappedAttributedStringKeyDefinition.constraints.getter(&v7);
    AttributedTextFormatting.Constraints.constrain<A>(_:in:)(v8);

    v4 = v8[0];
    v5 = v8[1];
    v6 = v9;
  }

  else
  {
    AttributedString.AttributeDependencies.init()();
    v5 = v8[0];
    result = outlined consume of AttributedTextFormatting.Constraints?(0);
    v4 = 0;
    v6 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return result;
}

uint64_t ColorMappedAttributedStringKeyDefinition.nsValue(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  if (*(v1 + 32))
  {
    AttributeContainer.subscript.getter();
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v9, 1, 1, AssociatedTypeWitness, v7);
  }

  v10 = (*(v1 + 16))(v9);
  result = (*(v6 + 8))(v9, v5);
  if (v10 || (*(v2 + 33) & 1) != 0 && (, , v13 = EnvironmentValues.init(_:tracker:)(), v15 = v17, v16 = v18, v14 = MEMORY[0x18D006440](v13), , result = , v14))
  {

    EnvironmentValues.init(_:tracker:)();
    v15 = v17;
    v16 = v18;
    dispatch thunk of AnyColorBox.resolve(in:)();

    Color.Resolved.kitColor.getter();
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    *(a1 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);

    *a1 = v12;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t ColorMappedAttributedStringKeyDefinition.update(with:)(__int128 *a1)
{
  v2 = v1[1];
  v5 = *a1;

  EnvironmentValues.addDependencies(from:)();

  v3 = PropertyList.Tracker.hasDifferentUsedValues(_:)();
  if (v3)
  {
    PropertyList.Tracker.reset()();
  }

  *v1 = v5;
  v1[1] = v2;
  return v3 & 1;
}

unint64_t lazy protocol witness table accessor for type ForgroundColorAttributeDefinition and conformance ForgroundColorAttributeDefinition()
{
  result = lazy protocol witness table cache variable for type ForgroundColorAttributeDefinition and conformance ForgroundColorAttributeDefinition;
  if (!lazy protocol witness table cache variable for type ForgroundColorAttributeDefinition and conformance ForgroundColorAttributeDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForgroundColorAttributeDefinition and conformance ForgroundColorAttributeDefinition);
  }

  return result;
}

uint64_t specialized static FontAttributeDefinition.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(*a1, *a2) & 1) != 0 && (v4 = type metadata accessor for FontAttributeDefinition(0), (static TypesettingConfiguration.== infix(_:_:)()) && (v5 = (a1 + v4[6]), v6 = v5[1], v37[0] = *v5, v37[1] = v6, v8 = *v5, v7 = v5[1], v37[2] = v5[2], v9 = v5[2], v35 = v7, v36 = v9, v10 = (a2 + v4[6]), v11 = v10[2], v12 = *v10, v13 = *v10, v39 = v10[1], v40 = v11, v38 = v12, v31 = v13, v32 = v39, v33 = v10[2], v34 = v8, outlined init with copy of Font.Context(v37, v30), outlined init with copy of Font.Context(&v38, v30), v14 = MEMORY[0x18D009B10](&v34, &v31), v41[0] = v31, v41[1] = v32, v41[2] = v33, outlined destroy of Font.Context(v41), v42[0] = v34, v42[1] = v35, v42[2] = v36, outlined destroy of Font.Context(v42), (v14) && (MEMORY[0x18D000480](a1 + v4[7], a2 + v4[7]) & 1) != 0 && ((v15 = v4[8], v16 = *(a1 + v15), v17 = *(a1 + v15 + 8), v18 = (a2 + v15), v16 == *v18) && v17 == v18[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v19 = v4[9], *&v34 = *(a1 + v19), *&v31 = *(a2 + v19), type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for TypesettingLanguage.Resolved?), lazy protocol witness table accessor for type TypesettingLanguage.Resolved? and conformance <A> A?(), , , v20 = static AtomicBox<A>.== infix(_:_:)(), , , (v20) && (v21 = v4[10], *&v34 = *(a1 + v21), *&v31 = *(a2 + v21), , , v22 = static AttributedString.Keys.== infix(_:_:)(), , , (v22))
  {
    v23 = v4[11];
    v24 = *(a1 + v23);
    v25 = *(a1 + v23 + 8);
    *&v34 = v24;
    *(&v34 + 1) = v25;
    v26 = (a2 + v23);
    v27 = v26[1];
    *&v31 = *v26;
    *(&v31 + 1) = v27;

    v28 = static AttributedTextFormatting.Constraints.== infix(_:_:)();
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t specialized static ParagraphStyleAttributeDefinition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{

  v4 = static AttributedString.Keys.== infix(_:_:)();

  if (v4 & 1) != 0 && (v5 = type metadata accessor for ParagraphStyleAttributeDefinition(0), (MEMORY[0x18D0093D0](a1 + *(v5 + 20), a2 + *(v5 + 20))))
  {

    v6 = static AttributedTextFormatting.Constraints.== infix(_:_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t specialized static StrikethroughStyleAttributeDefinition.== infix(_:_:)()
{

  v0 = static AttributedString.Keys.== infix(_:_:)();

  if (v0)
  {

    v1 = static AttributedTextFormatting.Constraints.== infix(_:_:)();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t specialized static FontAttributeDefinition.markdownFontModifiers(for:)(char a1, char a2)
{
  result = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    return result;
  }

  if ((a1 & 2) != 0)
  {
    type metadata accessor for AnyFontModifier();
    static AnyFontModifier.static<A>(_:)();
    MEMORY[0x18D00CC30]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v4;
    if ((a1 & 1) == 0)
    {
LABEL_4:
      if ((a1 & 4) == 0)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_4;
  }

  type metadata accessor for AnyFontModifier();
  static AnyFontModifier.static<A>(_:)();
  MEMORY[0x18D00CC30]();
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = v4;
  if ((a1 & 4) != 0)
  {
LABEL_12:
    type metadata accessor for AnyFontModifier();
    static AnyFontModifier.static<A>(_:)();
    MEMORY[0x18D00CC30]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v4;
  }

  return result;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>();
  result = static _DictionaryStorage.copy(original:)();
  v5 = result;
  v6 = 0;
  v27 = result;
  v28 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v26 = result + 64;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v28 + 56);
      v32 = *(*(v28 + 48) + 8 * v17);
      v38 = 40 * v17;
      outlined init with copy of _Benchmark(v18 + 40 * v17, v37);
      outlined init with copy of _Benchmark(v37, &v34);
      v19 = v35;
      v20 = v36;
      __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
      v21 = *(v20 + 8);
      v22 = *(v21 + 32);
      v33 = v32;
      v22(a2, a3, v19, v21);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v5 = v27;
      *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(v27[6] + 8 * v17) = v33;
      result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v34, v27[7] + v38);
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      v12 = v31;
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v31 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized ColorMappedAttributedStringKeyDefinition.init<A>(for:in:environment:wantsFallbackColor:mapping:)@<X0>(uint64_t *a1@<X2>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v7 = *a1;
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  v8 = PropertyList.Tracker.init()();

  v9 = static AttributeScope.contains<A>(_:)();

  EnvironmentValues.addDependencies(from:)();

  if (PropertyList.Tracker.hasDifferentUsedValues(_:)())
  {
    PropertyList.Tracker.reset()();
  }

  *a5 = v7;
  *(a5 + 8) = v8;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v9 & 1;
  *(a5 + 33) = a2 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type StrikethroughStyleAttributeDefinition and conformance StrikethroughStyleAttributeDefinition()
{
  result = lazy protocol witness table cache variable for type StrikethroughStyleAttributeDefinition and conformance StrikethroughStyleAttributeDefinition;
  if (!lazy protocol witness table cache variable for type StrikethroughStyleAttributeDefinition and conformance StrikethroughStyleAttributeDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StrikethroughStyleAttributeDefinition and conformance StrikethroughStyleAttributeDefinition);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute> and conformance ColorMappedAttributedStringKeyDefinition<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ColorMappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BackgroundColorAttribute>(255, a2, a3, a4, type metadata accessor for ColorMappedAttributedStringKeyDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber>()
{
  if (!lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSNumber);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
    v0 = type metadata accessor for MappedAttributedStringKeyDefinition();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute, NSNumber>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.BaselineOffsetAttribute, CGFloat> and conformance MappedAttributedStringKeyDefinition<A, B>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.KerningAttribute, CGFloat>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for MappedAttributedStringKeyDefinition();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph>()
{
  if (!lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSAdaptiveImageGlyph);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute and conformance AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute();
    v0 = type metadata accessor for MappedAttributedStringKeyDefinition();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MappedAttributedStringKeyDefinition<AttributeScopes.SwiftUIAttributes.AdaptiveImageGlyphAttribute, NSAdaptiveImageGlyph>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.TextAlignmentAttribute and conformance AttributeScopes.CoreTextAttributes.TextAlignmentAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.CoreTextAttributes.LineHeightAttribute and conformance AttributeScopes.CoreTextAttributes.LineHeightAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.TextJustificationAttribute and conformance AttributeScopes.SwiftUIAttributes.TextJustificationAttribute);
  }

  return result;
}

void _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ParagraphStyleAttributeDefinition(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    *v7 = *(a2 + v6);
    *(v7 + 1) = *(a2 + v6 + 8);
    *(v7 + 8) = *(a2 + v6 + 16);
    v7[18] = *(a2 + v6 + 18);
    v7[19] = *(a2 + v6 + 19);
    v9 = type metadata accessor for ParagraphStyleResolutionContext();
    v10 = v9[12];
    v11 = type metadata accessor for AttributedString.LineHeight();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);

    if (v13(&v8[v10], 1, v11))
    {
      _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
      memcpy(&v7[v10], &v8[v10], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(&v7[v10], &v8[v10], v11);
      (*(v12 + 56))(&v7[v10], 0, 1, v11);
    }

    v7[v9[13]] = v8[v9[13]];
    *&v7[v9[14]] = *&v8[v9[14]];
    *&v7[v9[15]] = *&v8[v9[15]];
    *&v7[v9[16]] = *&v8[v9[16]];
    *&v7[v9[17]] = *&v8[v9[17]];
    *&v7[v9[18]] = *&v8[v9[18]];
    v7[v9[19]] = v8[v9[19]];
    v7[v9[20]] = v8[v9[20]];
    v7[v9[21]] = v8[v9[21]];
    v15 = *(a3 + 24);
    v16 = (v5 + v15);
    v17 = (a2 + v15);
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
  }

  return v5;
}

uint64_t destroy for ParagraphStyleAttributeDefinition(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);
  v5 = *(type metadata accessor for ParagraphStyleResolutionContext() + 48);
  v6 = type metadata accessor for AttributedString.LineHeight();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }
}

void *initializeWithCopy for ParagraphStyleAttributeDefinition(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *v5 = *(a2 + v4);
  *(v5 + 1) = *(a2 + v4 + 8);
  *(v5 + 8) = *(a2 + v4 + 16);
  v5[18] = *(a2 + v4 + 18);
  v5[19] = *(a2 + v4 + 19);
  v7 = type metadata accessor for ParagraphStyleResolutionContext();
  v8 = v7[12];
  v9 = type metadata accessor for AttributedString.LineHeight();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  if (v11(&v6[v8], 1, v9))
  {
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v5[v8], &v6[v8], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&v5[v8], &v6[v8], v9);
    (*(v10 + 56))(&v5[v8], 0, 1, v9);
  }

  v5[v7[13]] = v6[v7[13]];
  *&v5[v7[14]] = *&v6[v7[14]];
  *&v5[v7[15]] = *&v6[v7[15]];
  *&v5[v7[16]] = *&v6[v7[16]];
  *&v5[v7[17]] = *&v6[v7[17]];
  *&v5[v7[18]] = *&v6[v7[18]];
  v5[v7[19]] = v6[v7[19]];
  v5[v7[20]] = v6[v7[20]];
  v5[v7[21]] = v6[v7[21]];
  v13 = *(a3 + 24);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;

  return a1;
}

void *assignWithCopy for ParagraphStyleAttributeDefinition(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v21 = a3;
  v22 = a2;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[2] = *(a2 + v6 + 2);
  v7[3] = *(a2 + v6 + 3);
  *(v7 + 1) = *(a2 + v6 + 8);
  v7[16] = *(a2 + v6 + 16);
  v7[17] = *(a2 + v6 + 17);
  v7[18] = *(a2 + v6 + 18);
  v7[19] = *(a2 + v6 + 19);
  v9 = type metadata accessor for ParagraphStyleResolutionContext();
  v10 = v9[12];
  v11 = type metadata accessor for AttributedString.LineHeight();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(&v7[v10], 1, v11);
  v15 = v13(&v8[v10], 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      (*(v12 + 24))(&v7[v10], &v8[v10], v11);
      goto LABEL_7;
    }

    (*(v12 + 8))(&v7[v10], v11);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v7[v10], &v8[v10], *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v12 + 16))(&v7[v10], &v8[v10], v11);
  (*(v12 + 56))(&v7[v10], 0, 1, v11);
LABEL_7:
  v7[v9[13]] = v8[v9[13]];
  *&v7[v9[14]] = *&v8[v9[14]];
  *&v7[v9[15]] = *&v8[v9[15]];
  *&v7[v9[16]] = *&v8[v9[16]];
  *&v7[v9[17]] = *&v8[v9[17]];
  *&v7[v9[18]] = *&v8[v9[18]];
  v7[v9[19]] = v8[v9[19]];
  v7[v9[20]] = v8[v9[20]];
  v7[v9[21]] = v8[v9[21]];
  v17 = *(v21 + 24);
  v18 = a1 + v17;
  v19 = v22 + v17;
  *(a1 + v17) = *(v22 + v17);

  *(v18 + 1) = *(v19 + 1);

  return a1;
}

void *initializeWithTake for ParagraphStyleAttributeDefinition(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  *(v7 + 1) = *(a2 + v6 + 8);
  *(v7 + 8) = *(a2 + v6 + 16);
  v7[18] = *(a2 + v6 + 18);
  v7[19] = *(a2 + v6 + 19);
  v9 = type metadata accessor for ParagraphStyleResolutionContext();
  v10 = v9[12];
  v11 = type metadata accessor for AttributedString.LineHeight();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(&v8[v10], 1, v11))
  {
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v7[v10], &v8[v10], *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 32))(&v7[v10], &v8[v10], v11);
    (*(v12 + 56))(&v7[v10], 0, 1, v11);
  }

  v7[v9[13]] = v8[v9[13]];
  *&v7[v9[14]] = *&v8[v9[14]];
  *&v7[v9[15]] = *&v8[v9[15]];
  *&v7[v9[16]] = *&v8[v9[16]];
  *&v7[v9[17]] = *&v8[v9[17]];
  *&v7[v9[18]] = *&v8[v9[18]];
  v7[v9[19]] = v8[v9[19]];
  v7[v9[20]] = v8[v9[20]];
  v7[v9[21]] = v8[v9[21]];
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

void *assignWithTake for ParagraphStyleAttributeDefinition(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v21 = a3;
  v22 = a2;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[2] = *(a2 + v6 + 2);
  v7[3] = *(a2 + v6 + 3);
  *(v7 + 1) = *(a2 + v6 + 8);
  v7[16] = *(a2 + v6 + 16);
  v7[17] = *(a2 + v6 + 17);
  v7[18] = *(a2 + v6 + 18);
  v7[19] = *(a2 + v6 + 19);
  v9 = type metadata accessor for ParagraphStyleResolutionContext();
  v10 = v9[12];
  v11 = type metadata accessor for AttributedString.LineHeight();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(&v7[v10], 1, v11);
  v15 = v13(&v8[v10], 1, v11);
  if (!v14)
  {
    if (!v15)
    {
      (*(v12 + 40))(&v7[v10], &v8[v10], v11);
      goto LABEL_7;
    }

    (*(v12 + 8))(&v7[v10], v11);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    _ss23_ContiguousArrayStorageCy10Foundation19AttributedStringKey_pXpGMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v7[v10], &v8[v10], *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v12 + 32))(&v7[v10], &v8[v10], v11);
  (*(v12 + 56))(&v7[v10], 0, 1, v11);
LABEL_7:
  v7[v9[13]] = v8[v9[13]];
  *&v7[v9[14]] = *&v8[v9[14]];
  *&v7[v9[15]] = *&v8[v9[15]];
  *&v7[v9[16]] = *&v8[v9[16]];
  *&v7[v9[17]] = *&v8[v9[17]];
  *&v7[v9[18]] = *&v8[v9[18]];
  v7[v9[19]] = v8[v9[19]];
  v7[v9[20]] = v8[v9[20]];
  v7[v9[21]] = v8[v9[21]];
  v17 = *(v21 + 24);
  v18 = a1 + v17;
  v19 = v22 + v17;
  *(a1 + v17) = *(v22 + v17);

  *(v18 + 1) = *(v19 + 1);

  return a1;
}

uint64_t type metadata completion function for ParagraphStyleAttributeDefinition()
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for MappedAttributedStringKeyDefinition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}