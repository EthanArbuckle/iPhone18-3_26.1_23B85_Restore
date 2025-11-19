uint64_t initializeWithCopy for ToolbarItemGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 40) == 1)
  {
    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    (**(v6 - 8))(a1, a2);
    *(a1 + 40) = 1;
  }

  else
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 25) = *(a2 + 25);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v10 + 41 + a1) & ~v10;
  v12 = (v10 + 41 + a2) & ~v10;
  (*(v8 + 16))(v11, v12);
  *(*(v9 + 48) + v11) = *(*(v9 + 48) + v12);
  return a1;
}

uint64_t destroy for ToolbarItemGroup(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 41) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(unsigned __int8 a1)
{
  v2 = a1;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable();
  _ViewInputs.requestedTextRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable();
  _ViewInputs.requestedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable();
  _ViewInputs.requestedNamedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable();
  _ViewInputs.requestedSpacerRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable();
  _ViewInputs.requestedHiddenRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  result = PropertyList.subscript.setter();
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    if (a1)
    {
      PropertyList.subscript.getter();
    }

    return PropertyList.subscript.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable()
{
  result = lazy protocol witness table cache variable for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable;
  if (!lazy protocol witness table cache variable for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable()
{
  result = lazy protocol witness table cache variable for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable;
  if (!lazy protocol witness table cache variable for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable()
{
  result = lazy protocol witness table cache variable for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable;
  if (!lazy protocol witness table cache variable for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable()
{
  result = lazy protocol witness table cache variable for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable;
  if (!lazy protocol witness table cache variable for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey);
  }

  return result;
}

uint64_t static ToolbarItemGroup._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *a2;
  v28 = a2[1];
  v29 = v7;
  v30[0] = v8;
  *(v30 + 12) = *(a2 + 60);
  v10 = *a1;
  v27 = v9;
  v15[1] = v10;
  type metadata accessor for ToolbarItemGroup();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static ToolbarItemGroup._makeToolbar(content:inputs:)(1, a3);
  }

  AGGraphCreateOffsetAttribute2();
  type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ToolbarItemGroup.MakeView();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  _GraphValue.value.getter();
  closure #2 in static ToolbarItemGroup._makeToolbar(content:inputs:)(1);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v25 = v29;
  v26[0] = v30[0];
  *(v26 + 12) = *(v30 + 12);
  v23 = v27;
  v24 = v28;
  v21 = a4;
  v22 = lazy protocol witness table accessor for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  v12 = static ToolbarContent.makeViewList<A>(placement:content:inputs:)(OffsetAttribute2, v15, &v23);
  v16[0] = v10;
  _GraphValue.value.getter();
  v19 = v29;
  v20[0] = v30[0];
  *(v20 + 12) = *(v30 + 12);
  v17 = v27;
  v18 = v28;
  outlined init with copy of _ToolbarInputs(&v27, &v23);
  ToolbarMakeEntries.init<A>(placement:toolbarItemGroup:viewList:inputs:)(OffsetAttribute2, v12, &v17, &v23);
  v19 = v25;
  v20[0] = v26[0];
  v20[1] = v26[1];
  v20[2] = v26[2];
  v17 = v23;
  v18 = v24;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of ToolbarMakeEntries(&v23, v16);
  type metadata accessor for [ToolbarStorage.Entry]();
  lazy protocol witness table accessor for type ToolbarMakeEntries and conformance ToolbarMakeEntries();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ToolbarMakeEntries(&v23);
  v19 = v29;
  v20[0] = v30[0];
  *(v20 + 12) = *(v30 + 12);
  v17 = v27;
  v18 = v28;
  static ToolbarContent.makeToolbarOutputs(placement:entries:inputs:)(&v17, a5);
  return outlined destroy of ToolbarMakeEntries(&v23);
}

uint64_t closure #1 in static ToolbarItemGroup._makeToolbar(content:inputs:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarItemGroup();
  v5 = *(v4 + 36);
  v9[2] = v4;
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v5, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static ToolbarItemGroup._makeToolbar(content:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for ToolbarItemGroup();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_6, v5, &type metadata for ToolbarItemPlacement, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

uint64_t type metadata completion function for PopoverPresentationModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t partial apply for closure #1 in Optional<A>.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(*(v2 + 16) - 8) + 16))(a2, a1, *(v2 + 16));
  type metadata accessor for _ConditionalContent.Storage();
  return swift_storeEnumTagMultiPayload();
}

{
  (*(*(*(v2 + 16) - 8) + 16))(a2, a1, *(v2 + 16));
  type metadata accessor for _ConditionalContent.Storage();
  return swift_storeEnumTagMultiPayload();
}

uint64_t _ConditionalContent<>.CommandsProvider.makeTrueOutputs(child:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  *v8 = a2[2];
  *&v8[12] = *(a2 + 44);
  v5 = *(a3 + 16);
  _GraphValue.init(_:)();
  return (*(*(a3 + 32) + 32))(v9, v7, v5);
}

_BYTE *assignWithCopy for CommandGroup(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for CommandOperation();
  v5 = *(v4 + 20);
  v6 = &a1[v5];
  v7 = &a2[v5];
  v8 = *&a2[v5];
  v9 = *&a2[v5 + 8];
  v10 = a2[v5 + 16];
  outlined copy of Text.Storage(v8, v9, v10);
  v11 = *v6;
  v12 = *(v6 + 1);
  v13 = v6[16];
  *v6 = v8;
  *(v6 + 1) = v9;
  v6[16] = v10;
  outlined consume of Text.Storage(v11, v12, v13);
  *(v6 + 3) = *(v7 + 3);

  v14 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 24))(&v6[v14], &v7[v14], v15);
  v16 = *(v4 + 24);
  v17 = &a1[v16];
  v18 = &a2[v16];
  v19 = *&a1[v16];
  v20 = *v18;
  if (!v19)
  {
    if (v20)
    {
      v22 = v18[1];
      *v17 = v20;
      v17[1] = v22;

      return a1;
    }

LABEL_7:
    *v17 = *v18;
    return a1;
  }

  if (!v20)
  {

    goto LABEL_7;
  }

  v21 = v18[1];
  *v17 = v20;
  v17[1] = v21;

  return a1;
}

unint64_t lazy protocol witness table accessor for type OnModifierKeysChangedModifier and conformance OnModifierKeysChangedModifier()
{
  result = lazy protocol witness table cache variable for type OnModifierKeysChangedModifier and conformance OnModifierKeysChangedModifier;
  if (!lazy protocol witness table cache variable for type OnModifierKeysChangedModifier and conformance OnModifierKeysChangedModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnModifierKeysChangedModifier and conformance OnModifierKeysChangedModifier);
  }

  return result;
}

uint64_t sub_18BED2B04()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2(255);
  }

  else
  {
    type metadata accessor for _TaskModifier(255);
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_18BED2B6C()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2(255);
  }

  else
  {
    type metadata accessor for _TaskModifier(255);
  }

  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t sub_18BED2C50()
{
  type metadata accessor for _ViewModifier_Content<OnModifierKeysChangedModifier>();
  lazy protocol witness table accessor for type _ViewModifier_Content<OnModifierKeysChangedModifier> and conformance _ViewModifier_Content<A>();
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for _ViewModifier_Content<OnModifierKeysChangedModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OnModifierKeysChangedModifier>)
  {
    lazy protocol witness table accessor for type OnModifierKeysChangedModifier and conformance OnModifierKeysChangedModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<OnModifierKeysChangedModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<OnModifierKeysChangedModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<OnModifierKeysChangedModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<OnModifierKeysChangedModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<OnModifierKeysChangedModifier>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<OnModifierKeysChangedModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t type metadata completion function for HelpView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t View._onModifierKeysChanged(mask:initial:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = 0;
  v12 = 0;
  return MEMORY[0x18D00A570](&v7, a5, &type metadata for OnModifierKeysChangedModifier, a6);
}

uint64_t FocusState.init<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Optional();
  swift_getWitnessTable();
  v4 = type metadata accessor for FocusState();
  *(a2 + *(v4 + 36)) = 0;
  v5 = *(*(a1 - 8) + 56);
  v5(a2, 1, 1, a1);
  return (v5)(a2 + *(v4 + 40), 1, 1, a1);
}

_DWORD *storeEnumTagSinglePayload for HelpView(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
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
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v18[2] = 0;
      v18[3] = 0;
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[3] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t type metadata completion function for GridRow()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static GridRow._makeViewList(view:inputs:)(unsigned int *a1, uint64_t a2)
{
  v6 = *a1;
  type metadata accessor for GridRow();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v4[1] = v6;
  type metadata accessor for VerticalAlignment?(0, &lazy cache variable for type metadata for VerticalAlignment?, MEMORY[0x1E697F2F0], MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  return static RowTransformTrait.makeViewList<A>(content:alignment:inputs:)(&v5, v4, a2);
}

void type metadata accessor for VerticalAlignment?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static RowTransformTrait.makeViewList<A>(content:alignment:inputs:)(int *a1, unsigned int *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  outlined init with copy of _ViewListInputs(a3, v13);
  v5 = _ViewListInputs.traits.getter();
  v6 = *MEMORY[0x1E698D3F8];
  if ((v5 & 0x100000000) == 0)
  {
    v6 = v5;
  }

  v11 = __PAIR64__(v4, v6);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RowTransformTrait and conformance RowTransformTrait();
  Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v11) = 0;
  _ViewListInputs.traits.setter();
  if (v14)
  {
    v11 = v14;
    v12 = v15 & 1;
    v14 = 0;
    v15 = 0;
    specialized Set._Variant.insert(_:)(&v10, &type metadata for GridMetadata);
    v7 = v11;
    v8 = v12;

    v14 = v7;
    v15 = v8;
  }

  LODWORD(v11) = v3;
  static View.makeDebuggableViewList(view:inputs:)();
  return outlined destroy of _ViewListInputs(v13);
}

unint64_t lazy protocol witness table accessor for type RowTransformTrait and conformance RowTransformTrait()
{
  result = lazy protocol witness table cache variable for type RowTransformTrait and conformance RowTransformTrait;
  if (!lazy protocol witness table cache variable for type RowTransformTrait and conformance RowTransformTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RowTransformTrait and conformance RowTransformTrait);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x18D00F6C0](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  v6 = MEMORY[0x18D00F6C0](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  if (*(*v3 + 24) <= *(*v3 + 16))
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      specialized _NativeSet.copyAndResize(capacity:)();
    }

    v6 = *v3;
    result = MEMORY[0x18D00F6C0](*(*v3 + 40), v4);
    v7 = -1 << *(v6 + 32);
    a2 = result & ~v7;
    if ((*(v6 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v8 = ~v7;
      while (*(*(v6 + 48) + 8 * a2) != v4)
      {
        a2 = (a2 + 1) & v8;
        if (((*(v6 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_14;
    }
  }

  else if ((a3 & 1) == 0)
  {
    v5 = a2;
    result = specialized _NativeSet.copy()();
    a2 = v5;
  }

LABEL_11:
  v9 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v4;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (!v11)
  {
    *(v9 + 16) = v12;
    return result;
  }

  __break(1u);
LABEL_14:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  result = MEMORY[0x18D00F6C0](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for UITextFormattingViewControllerComponentKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void type metadata accessor for _SetStorage<ObjectIdentifier>()
{
  if (!lazy cache variable for type metadata for _SetStorage<ObjectIdentifier>)
  {
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<ObjectIdentifier>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FocusStateBindingModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t GridRow.init(alignment:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2 & 1;
  type metadata accessor for GridRow();
  return a3();
}

uint64_t View.focused<A>(_:equals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v22 = a6;
  v23 = a3;
  v20 = a1;
  v21 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FocusState.Binding();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = type metadata accessor for FocusStateBindingModifier();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, v20, v10, v16);
  (*(v7 + 16))(v9, v21, a4);
  FocusStateBindingModifier.init(binding:value:)(v13, v9, a4, v18);
  MEMORY[0x18D00A570](v18, v23, v14, v24);
  return (*(v15 + 8))(v18, v14);
}

uint64_t FocusStateBindingModifier.init(binding:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FocusState.Binding();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for FocusStateBindingModifier();
  v10 = *(*(a3 - 8) + 32);
  v11 = a4 + *(v9 + 36);

  return v10(v11, a2, a3);
}

uint64_t initializeWithCopy for GridRow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((*(v4 + 80) + 9 + a1) & ~*(v4 + 80), (*(v4 + 80) + 9 + a2) & ~*(v4 + 80));
  return a1;
}

id one-time initialization function for dynamicColorCache()
{
  result = [objc_opt_self() strongToWeakObjectsMapTable];
  dynamicColorCache = result;
  return result;
}

uint64_t RowTransformTrait.value.getter@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    ViewTraitCollection.init()();
  }

  else
  {
    v5 = *AGGraphGetValue();
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  RowTransformTrait.update(data:)(&v4);
  result = ViewTraitCollection.subscript.setter();
  *a2 = v5;
  return result;
}

uint64_t RowTransformTrait.update(data:)(uint64_t *a1)
{
  v2 = AGMakeUniqueID();
  type metadata accessor for VerticalAlignment?(0, &lazy cache variable for type metadata for VerticalAlignment?, MEMORY[0x1E697F2F0], MEMORY[0x1E69E6720]);
  result = AGGraphGetValue();
  v4 = *result;
  v5 = v2;
  v6 = *(result + 8) | 0x20;
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = v8 + 1;
  v10 = 48;
  while (--v9)
  {
    v11 = *(v7 + v10);
    v10 += 24;
    if ((v11 & 0xE0) == 0x20)
    {
      return result;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 + 1, 1, v7);
    v7 = result;
  }

  v13 = *(v7 + 16);
  v12 = *(v7 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v13 + 1;
  v14 = v7 + 24 * v13;
  *(v14 + 32) = v5;
  *(v14 + 40) = v4;
  *(v14 + 48) = v6;
  *a1 = v7;
  return result;
}

double static FocusStateBindingModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v10 = *(a2 + 16);
  v53 = *(a2 + 32);
  v54 = v9;
  v11 = *(a2 + 48);
  v55 = *(a2 + 64);
  v12 = *(a2 + 16);
  v51 = *a2;
  v52 = v12;
  v45 = v53;
  v46 = v11;
  v47 = *(a2 + 64);
  v13 = *a1;
  v56 = *(a2 + 80);
  v48 = *(a2 + 80);
  v43 = v51;
  v44 = v10;
  a3(&v41);
  v14 = v54;
  v15 = DWORD2(v54);
  *&v43 = v54;
  DWORD2(v43) = DWORD2(v54);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    v35 = v15;
    v37 = a6;
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v48 = v56;
    v43 = v51;
    v44 = v52;
    v39 = HIDWORD(v41);
    v40 = v42;
    type metadata accessor for FocusStateBindingResponder();
    swift_allocObject();
    outlined init with copy of _ViewInputs(&v51, v49);

    v16 = FocusStateBindingResponder.init(inputs:outputs:)(&v43);
    *&v43 = v16;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type FocusStateBindingResponderFilter and conformance FocusStateBindingResponderFilter();
    v34 = Attribute.init<A>(body:value:flags:update:)();
    *(v16 + 216) = v34;
    *(v16 + 220) = 0;
    v38 = v13;
    v17 = a4;
    v36 = a5;
    type metadata accessor for FocusStateBindingModifier();
    type metadata accessor for _GraphValue();
    v33 = _GraphValue.value.getter();
    lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey();

    PropertyList.subscript.getter();
    v32 = v43;
    v18 = one-time initialization token for focusBridge;

    if (v18 != -1)
    {
      swift_once();
    }

    *&v49[0] = static CachedEnvironment.ID.focusBridge;
    swift_beginAccess();
    type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for FocusBridge?, type metadata accessor for FocusBridge, MEMORY[0x1E69E6720]);
    v19 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();

    v20 = one-time initialization token for focusScopes;

    if (v20 != -1)
    {
      swift_once();
    }

    *&v49[0] = static CachedEnvironment.ID.focusScopes;
    swift_beginAccess();
    type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for [Namespace.ID], MEMORY[0x1E6981EA0], MEMORY[0x1E69E62F8]);
    v21 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();

    LODWORD(v43) = v33;
    *(&v43 + 1) = v16;
    *&v44 = __PAIR64__(v19, v32);
    DWORD2(v44) = v21;
    BYTE12(v44) = 0;
    MEMORY[0x1EEE9AC00](v22);
    v23 = v36;
    v30 = type metadata accessor for FocusStateBindingModifier.ListItemFilter();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for FocusItem?(0, &lazy cache variable for type metadata for Attribute<FocusStoreList>, &type metadata for FocusStoreList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v43, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_17, v29, v30, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);

    v26 = v49[0];
    v49[2] = v53;
    v49[3] = v54;
    v49[4] = v55;
    v50 = v56;
    v49[0] = v51;
    v49[1] = v52;
    outlined init with copy of _ViewInputs(&v51, &v43);
    UIKitHostedFocusItemLifecycle.init(inputs:responders:)(v49, v34, &v43);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of UIKitHostedFocusItemLifecycle(&v43);
    AGGraphSetFlags();
    LOBYTE(v43) = 0;
    v27 = PreferencesOutputs.subscript.setter();
    *&v43 = v14;
    DWORD2(v43) = v35;
    MEMORY[0x1EEE9AC00](v27);
    v29[0] = v17;
    v29[1] = v23;
    LODWORD(v30) = v26;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

    a6 = v37;
  }

  *a6 = v41;
  result = v42;
  a6[1] = v42;
  return result;
}

uint64_t type metadata accessor for FocusStateBindingResponder()
{
  result = type metadata singleton initialization cache for FocusStateBindingResponder;
  if (!type metadata singleton initialization cache for FocusStateBindingResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FocusStateBindingResponder.init(inputs:outputs:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 60);
  *(v1 + 216) = 0;
  *(v1 + 220) = 1;
  *(v1 + 248) = 0;
  v4 = _ViewOutputs.viewResponders()();

  v2[56] = v4;
  v2[57] = v3;
  v2[58] = _ViewInputs.animatedPosition()();
  swift_beginAccess();
  v5 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v2[59] = v5;
  v2[60] = _GraphInputs.isEnabled.getter();
  return DefaultLayoutViewResponder.init(inputs:)();
}

unint64_t lazy protocol witness table accessor for type FocusStateBindingResponderFilter and conformance FocusStateBindingResponderFilter()
{
  result = lazy protocol witness table cache variable for type FocusStateBindingResponderFilter and conformance FocusStateBindingResponderFilter;
  if (!lazy protocol witness table cache variable for type FocusStateBindingResponderFilter and conformance FocusStateBindingResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FocusStateBindingResponderFilter and conformance FocusStateBindingResponderFilter);
  }

  return result;
}

uint64_t initializeWithCopy for FocusStateBindingModifier.ListItemFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);

  return a1;
}

id UIKitHostedFocusItemLifecycle.init(inputs:responders:)@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1[2];
  v6 = a1[4];
  v15 = a1[3];
  v16 = v6;
  v7 = a1[1];
  v12 = *a1;
  v17 = *(a1 + 20);
  v13 = v7;
  v14 = v5;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  *(a3 + 44) = 2;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a3 + 48) = result;
    *(a3 + 56) = 0;
    *(a3 + 60) = 1;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = MEMORY[0x1E69E7CC0];
    v9 = HIDWORD(v15);
    *a3 = DWORD2(v13);
    *(a3 + 4) = v9;
    *(a3 + 8) = _ViewInputs.animatedPosition()();
    v11 = v12;
    swift_beginAccess();
    v10 = CachedEnvironment.animatedSize(for:)();
    swift_endAccess();
    *(a3 + 12) = v10;
    lazy protocol witness table accessor for type UIKitHostContainerFocusItemInput and conformance UIKitHostContainerFocusItemInput();
    PropertyList.subscript.getter();
    *(a3 + 16) = v11;
    lazy protocol witness table accessor for type _GraphInputs.IsFocusSystemEnabledKey and conformance _GraphInputs.IsFocusSystemEnabledKey();
    PropertyList.subscript.getter();
    result = outlined destroy of _ViewInputs(&v12);
    *(a3 + 20) = v11;
    *(a3 + 24) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle()
{
  result = lazy protocol witness table cache variable for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle;
  if (!lazy protocol witness table cache variable for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitHostedFocusItemLifecycle and conformance UIKitHostedFocusItemLifecycle);
  }

  return result;
}

uint64_t initializeWithCopy for UIKitHostedFocusItemLifecycle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectWeakCopyInit();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);
  v5 = v4;
  swift_unknownObjectRetain();

  return a1;
}

uint64_t destroy for UIKitHostedFocusItemLifecycle(uint64_t a1)
{
  MEMORY[0x18D011290](a1 + 32);

  swift_unknownObjectRelease();
}

uint64_t implicit closure #1 in static FocusStateBindingModifier._makeView(modifier:inputs:body:)(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = type metadata accessor for FocusStateBindingModifier.ListTransform();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for WeakBox<FocusBridge>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v5, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_19, v6, v7, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v2);
  return v4;
}

unint64_t instantiation function for generic protocol witness table for HelpStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content);
  }

  return result;
}

uint64_t sub_18BED509C()
{
  lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedHelpStyle and conformance ResolvedHelpStyle();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ResolvedHelpStyle and conformance ResolvedHelpStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle;
  if (!lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle;
  if (!lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedHelpStyle and conformance ResolvedHelpStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedHelpStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedHelpStyle and conformance ResolvedHelpStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<HelpView<HelpStyleConfiguration.Content>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for HelpView<HelpStyleConfiguration.Content>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v5 = a4(0, &type metadata for HelpStyleConfiguration.Content);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for HelpView<HelpStyleConfiguration.Content>(255, &lazy cache variable for type metadata for HelpView<HelpStyleConfiguration.Content>, &protocol witness table for HelpStyleConfiguration.Content, type metadata accessor for HelpView);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, AccessibilityAttachmentModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HelpView<HelpStyleConfiguration.Content> and conformance HelpView<A>()
{
  result = lazy protocol witness table cache variable for type HelpView<HelpStyleConfiguration.Content> and conformance HelpView<A>;
  if (!lazy protocol witness table cache variable for type HelpView<HelpStyleConfiguration.Content> and conformance HelpView<A>)
  {
    type metadata accessor for HelpView<HelpStyleConfiguration.Content>(255, &lazy cache variable for type metadata for HelpView<HelpStyleConfiguration.Content>, &protocol witness table for HelpStyleConfiguration.Content, type metadata accessor for HelpView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HelpView<HelpStyleConfiguration.Content> and conformance HelpView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HelpStyleModifier<DefaultHelpStyle> and conformance HelpStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type HelpStyleModifier<DefaultHelpStyle> and conformance HelpStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type HelpStyleModifier<DefaultHelpStyle> and conformance HelpStyleModifier<A>)
  {
    type metadata accessor for HelpStyleModifier<DefaultHelpStyle>(255, &lazy cache variable for type metadata for HelpStyleModifier<DefaultHelpStyle>, lazy protocol witness table accessor for type DefaultHelpStyle and conformance DefaultHelpStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HelpStyleModifier<DefaultHelpStyle> and conformance HelpStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for HelpStyleModifier<DefaultHelpStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for HelpStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultHelpStyle and conformance DefaultHelpStyle()
{
  result = lazy protocol witness table cache variable for type DefaultHelpStyle and conformance DefaultHelpStyle;
  if (!lazy protocol witness table cache variable for type DefaultHelpStyle and conformance DefaultHelpStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultHelpStyle and conformance DefaultHelpStyle);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance HelpStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_18BED5778()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

void type metadata accessor for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>)
  {
    type metadata accessor for HelpView<HelpStyleConfiguration.Content>(255, &lazy cache variable for type metadata for HelpView<HelpStyleConfiguration.Content>, &protocol witness table for HelpStyleConfiguration.Content, type metadata accessor for HelpView);
    type metadata accessor for HelpStyleModifier<DefaultHelpStyle>(255, &lazy cache variable for type metadata for HelpStyleModifier<TooltipHelpStyle>, lazy protocol witness table accessor for type TooltipHelpStyle and conformance TooltipHelpStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>, HelpStyleModifier<EmptyHelpStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>, HelpStyleModifier<EmptyHelpStyle>>)
  {
    type metadata accessor for ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>();
    type metadata accessor for HelpStyleModifier<DefaultHelpStyle>(255, &lazy cache variable for type metadata for HelpStyleModifier<EmptyHelpStyle>, lazy protocol witness table accessor for type EmptyHelpStyle and conformance EmptyHelpStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HelpView<HelpStyleConfiguration.Content>, HelpStyleModifier<TooltipHelpStyle>>, HelpStyleModifier<EmptyHelpStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TooltipHelpStyle and conformance TooltipHelpStyle()
{
  result = lazy protocol witness table cache variable for type TooltipHelpStyle and conformance TooltipHelpStyle;
  if (!lazy protocol witness table cache variable for type TooltipHelpStyle and conformance TooltipHelpStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TooltipHelpStyle and conformance TooltipHelpStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyHelpStyle and conformance EmptyHelpStyle()
{
  result = lazy protocol witness table cache variable for type EmptyHelpStyle and conformance EmptyHelpStyle;
  if (!lazy protocol witness table cache variable for type EmptyHelpStyle and conformance EmptyHelpStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyHelpStyle and conformance EmptyHelpStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HelpStyleConfiguration.Content, TooltipModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HelpStyleConfiguration.Content, TooltipModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HelpStyleConfiguration.Content, TooltipModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for HelpView<HelpStyleConfiguration.Content>(255, &lazy cache variable for type metadata for ModifiedContent<HelpStyleConfiguration.Content, TooltipModifier>, &type metadata for TooltipModifier, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HelpStyleConfiguration.Content, TooltipModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance HelpStyleConfiguration.Content(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<HelpStyleConfiguration.Content>, lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content, &type metadata for HelpStyleConfiguration.Content, &lazy protocol witness table cache variable for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

double static TooltipModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, void *a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v36 = a2[2];
  v37 = v5;
  v7 = a2[3];
  v38 = a2[4];
  v8 = a2[1];
  v34 = *a2;
  v35 = v8;
  v30 = v36;
  v31 = v7;
  v32 = a2[4];
  v9 = *a1;
  v39 = *(a2 + 20);
  v33 = *(a2 + 20);
  v28 = v34;
  v29 = v6;
  a3(&v22);
  v10 = v35;
  swift_beginAccess();
  *&v28 = __PAIR64__(*(v10 + 16), v9);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TooltipModifier.ResolveText and conformance TooltipModifier.ResolveText();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  v12 = PropertyList.subscript.getter();
  if ((v28 & 4) != 0)
  {
    MEMORY[0x1EEE9AC00](v12);
    v23 = v37;
    v24 = DWORD2(v37);
    *&v28 = v37;
    DWORD2(v28) = DWORD2(v37);
    MEMORY[0x1EEE9AC00](v13);
    outlined init with copy of PreferencesInputs(&v23, v27);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v25 = v37;
  v26 = DWORD2(v37);
  *&v28 = v37;
  DWORD2(v28) = DWORD2(v37);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    type metadata accessor for _SemanticFeature<Semantics_v5>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    if (static SemanticFeature.isEnabled.getter())
    {
      *&v28 = v25;
      DWORD2(v28) = v26;
      v14 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
      if (v14)
      {
        *&v28 = v25;
        DWORD2(v28) = v26;
        MEMORY[0x1EEE9AC00](v14);
        outlined init with copy of PreferencesInputs(&v25, v27);
        PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

        type metadata accessor for TooltipResponder();
        v15 = swift_allocObject();
        v15[28] = 0;
        v15[29] = 0;
        v15[27] = 0;
        outlined init with copy of _ViewInputs(&v34, &v28);
        static CGSize.invalidValue.getter();
        v15[30] = v16;
        v15[31] = v17;
        ViewTransform.init()();
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v28 = v34;
        v29 = v35;
        v18 = DefaultLayoutViewResponder.init(inputs:)();
        v28 = v22;

        v19 = _ViewOutputs.viewResponders()();

        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v28 = v34;
        v29 = v35;
        v20 = _ViewInputs.animatedPosition()();
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v28 = v34;
        v29 = v35;
        swift_beginAccess();
        LODWORD(v15) = CachedEnvironment.animatedSize(for:)();
        swift_endAccess();
        *&v28 = v18;
        *(&v28 + 1) = __PAIR64__(v11, v19);
        *&v29 = __PAIR64__(v15, v20);
        DWORD2(v29) = HIDWORD(v37);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        type metadata accessor for [ViewResponder](0);
        lazy protocol witness table accessor for type TooltipModifier.TooltipResponderUpdater and conformance TooltipModifier.TooltipResponderUpdater();
        Attribute.init<A>(body:value:flags:update:)();

        LOBYTE(v28) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }
  }

  *a4 = v22;
  result = *(&v22 + 1);
  a4[1] = *(&v22 + 1);
  return result;
}

unint64_t lazy protocol witness table accessor for type TooltipModifier.ResolveText and conformance TooltipModifier.ResolveText()
{
  result = lazy protocol witness table cache variable for type TooltipModifier.ResolveText and conformance TooltipModifier.ResolveText;
  if (!lazy protocol witness table cache variable for type TooltipModifier.ResolveText and conformance TooltipModifier.ResolveText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TooltipModifier.ResolveText and conformance TooltipModifier.ResolveText);
  }

  return result;
}

uint64_t type metadata accessor for TooltipResponder()
{
  result = type metadata singleton initialization cache for TooltipResponder;
  if (!type metadata singleton initialization cache for TooltipResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TooltipModifier.TooltipResponderUpdater and conformance TooltipModifier.TooltipResponderUpdater()
{
  result = lazy protocol witness table cache variable for type TooltipModifier.TooltipResponderUpdater and conformance TooltipModifier.TooltipResponderUpdater;
  if (!lazy protocol witness table cache variable for type TooltipModifier.TooltipResponderUpdater and conformance TooltipModifier.TooltipResponderUpdater)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TooltipModifier.TooltipResponderUpdater and conformance TooltipModifier.TooltipResponderUpdater);
  }

  return result;
}

uint64_t initializeWithCopy for TooltipModifier.TooltipResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t ModifiedContent<>.accessibilityHint(_:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{

  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  ModifiedContent<>.accessibilityHint(_:)(v4, v5, v7 & 1, v9, a1, a2);
  outlined consume of Text.Storage(v4, v6, v8 & 1);
}

uint64_t ModifiedContent<>.accessibilityValue(_:isEnabled:)@<X0>(char a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9 & 1;
  ModifiedContent<>.update(isEnabled:body:)(a1, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:), a2, a3);
  outlined consume of Text.Storage(v6, v8, v10);
}

{
  return ModifiedContent<>.update(isEnabled:body:)(a1, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:), a2, a3);
}

uint64_t static Material._experimentalGlass.getter()
{
  v0 = type metadata accessor for GlassMaterialProvider.Size();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GlassMaterialProvider.Options?();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GlassMaterialProvider.Variant();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GlassMaterialProvider();
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v8 + 104))(v10, *MEMORY[0x1E6999DE0], v7, v12);
  v13 = type metadata accessor for GlassMaterialProvider.Options();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  (*(v1 + 104))(v3, *MEMORY[0x1E6999D40], v0);
  GlassMaterialProvider.init(_:options:size:)();
  lazy protocol witness table accessor for type GlassMaterialProvider and conformance GlassMaterialProvider();
  return Material.init<A>(provider:)();
}

void type metadata accessor for GlassMaterialProvider.Options?()
{
  if (!lazy cache variable for type metadata for GlassMaterialProvider.Options?)
  {
    type metadata accessor for GlassMaterialProvider.Options();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GlassMaterialProvider.Options?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassMaterialProvider and conformance GlassMaterialProvider()
{
  result = lazy protocol witness table cache variable for type GlassMaterialProvider and conformance GlassMaterialProvider;
  if (!lazy protocol witness table cache variable for type GlassMaterialProvider and conformance GlassMaterialProvider)
  {
    type metadata accessor for GlassMaterialProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassMaterialProvider and conformance GlassMaterialProvider);
  }

  return result;
}

uint64_t View.help(_:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{

  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  View.help(_:)(v4, v5, v7 & 1, v9, a1, a2);
  outlined consume of Text.Storage(v4, v6, v8 & 1);
}

uint64_t View.help(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v14 = *(a5 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D009CE0](&v20, v15);
  Text.assertUnstyled(_:options:)();
  (*(v14 + 16))(v17, v7, a5);
  HelpView.init(content:text:)(v17, a1, a2, a3 & 1, a4, a5, a6);
  outlined copy of Text.Storage(a1, a2, a3 & 1);
}

uint64_t HelpView.init(content:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for HelpView();
  v13 = a7 + *(result + 36);
  *v13 = a2;
  *(v13 + 8) = a3;
  *(v13 + 16) = a4 & 1;
  *(v13 + 24) = a5;
  return result;
}

uint64_t initializeWithCopy for HelpView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Text.Storage(*v8, v10, v11);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = *(v8 + 24);

  return a1;
}

uint64_t destroy for HelpView(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
}

uint64_t HelpView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content();
  v6 = *(a1 + 24);
  v29 = &type metadata for HelpStyleConfiguration.Content;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  type metadata accessor for StaticSourceWriter();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = v2 + *(a1 + 36);
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  v17 = *(v14 + 24);
  v29 = *v14;
  v30 = v15;
  LOBYTE(v31) = v16;
  v32 = v17;
  v24 = v4;
  v25 = v6;
  v26 = v2;
  outlined copy of Text.Storage(v29, v15, v16);
  v18 = lazy protocol witness table accessor for type ResolvedHelpStyle and conformance ResolvedHelpStyle();

  View.viewAlias<A, B>(_:_:)(&type metadata for HelpStyleConfiguration.Content, partial apply for closure #1 in HelpView.body.getter, v23, &unk_1F0013FD0, &type metadata for HelpStyleConfiguration.Content, v4, v18);
  outlined consume of Text.Storage(v29, v30, v31);

  v27 = v18;
  v28 = &protocol witness table for StaticSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, WitnessTable);
  v20 = *(v8 + 8);
  v20(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, WitnessTable);
  return (v20)(v13, v7);
}

uint64_t closure #1 in HelpView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v6, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t destroy for ToggleStyleConfiguration(uint64_t a1)
{

  v3 = *(a1 + 72);
  if (v3)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  return result;
}

uint64_t initializeWithCopy for TooltipModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t destroy for TooltipModifier(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t NavigationColumnState.hasDismissableColumnContent.getter()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 88);
    v11 = *(v0 + 40);
    v12 = v1;
    v3 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = v3;
    v15 = v2;
    if (NavigationListState.hasNonEmptySelection.getter())
    {
      return 1;
    }
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v0 + 120, &v11);
  if (v18)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(&v11, v10);
  }

  else
  {
    outlined init with copy of NavigationColumnState.ColumnContent(&v11, v10);
  }

  if (v10[88] != 255)
  {
    outlined destroy of NavigationRequest.Action?(v10, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    outlined destroy of NavigationColumnState.ColumnContent(&v11);
    return 1;
  }

  outlined destroy of NavigationColumnState.ColumnContent(&v11);
  v5 = outlined init with copy of NavigationColumnState.ColumnContent(v0 + 120, &v11);
  if (v18)
  {
    outlined destroy of NavigationRequest.Action?(&v11, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    return 0;
  }

  v6 = v17;
  v7 = (*(*v16 + 88))(v5);

  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(v6 + 16);

  if (__OFADD__(v8, v9))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  outlined destroy of NavigationRequest.Action?(&v11, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  return v8 + v9 > 1;
}

uint64_t assignWithCopy for _NavigationSplitReader.ForestRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 56) = *(a2 + 56);

  swift_weakCopyAssign();
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v4 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v4;
  *(a1 + 104) = *(a2 + 104);

  v5 = *(a2 + 136);
  if (!*(a1 + 136))
  {
    if (v5)
    {
      *(a1 + 136) = v5;
      *(a1 + 144) = *(a2 + 144);
      (**(v5 - 8))(a1 + 112, a2 + 112);
      return a1;
    }

LABEL_7:
    v7 = *(a2 + 112);
    v8 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 112) = v7;
    *(a1 + 128) = v8;
    return a1;
  }

  v6 = (a1 + 112);
  if (!v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v6, (a2 + 112));
  return a1;
}

uint64_t assignWithCopy for NavigationSplitCore(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  __swift_assign_boxed_opaque_existential_1((a1 + 64), (a2 + 64));
  v7 = *(a2 + 104);
  v8 = *(a1 + 104);
  *(a1 + 104) = v7;
  v9 = v7;

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  __swift_assign_boxed_opaque_existential_1((a1 + 128), (a2 + 128));
  v10 = *(a2 + 168);
  v11 = *(a1 + 168);
  *(a1 + 168) = v10;
  v12 = v10;

  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 250) = *(a2 + 250);
  swift_weakCopyAssign();
  *(a1 + 264) = *(a2 + 264);

  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 288) = *(a2 + 288);

  v13 = (a1 + 296);
  v14 = (a2 + 296);
  v15 = *(a2 + 320);
  if (*(a1 + 320))
  {
    if (v15)
    {
      __swift_assign_boxed_opaque_existential_1(v13, (a2 + 296));
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
      v16 = *v14;
      v17 = *(a2 + 312);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 296) = v16;
      *(a1 + 312) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + 320) = v15;
    *(a1 + 328) = *(a2 + 328);
    (**(v15 - 8))(v13, a2 + 296);
  }

  else
  {
    v18 = *v14;
    v19 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *v13 = v18;
    *(a1 + 312) = v19;
  }

  return a1;
}

uint64_t assignWithCopy for NavigationSplitRepresentable(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  v6 = v4;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  __swift_assign_boxed_opaque_existential_1((a1 + 64), (a2 + 64));
  v7 = *(a2 + 104);
  v8 = *(a1 + 104);
  *(a1 + 104) = v7;
  v9 = v7;

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  __swift_assign_boxed_opaque_existential_1((a1 + 128), (a2 + 128));
  v10 = *(a2 + 168);
  v11 = *(a1 + 168);
  *(a1 + 168) = v10;
  v12 = v10;

  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 250) = *(a2 + 250);
  swift_weakCopyAssign();
  *(a1 + 264) = *(a2 + 264);

  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 288) = *(a2 + 288);

  v13 = (a1 + 296);
  v14 = (a2 + 296);
  v15 = *(a2 + 320);
  if (*(a1 + 320))
  {
    if (v15)
    {
      __swift_assign_boxed_opaque_existential_1(v13, (a2 + 296));
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
      v16 = *v14;
      v17 = *(a2 + 312);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 296) = v16;
      *(a1 + 312) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + 320) = v15;
    *(a1 + 328) = *(a2 + 328);
    (**(v15 - 8))(v13, a2 + 296);
  }

  else
  {
    v18 = *v14;
    v19 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 328);
    *v13 = v18;
    *(a1 + 312) = v19;
  }

  v20 = *(a2 + 336);
  v21 = *(a2 + 344);
  outlined copy of Environment<Bool>.Content(v20, v21);
  v22 = *(a1 + 336);
  v23 = *(a1 + 344);
  *(a1 + 336) = v20;
  *(a1 + 344) = v21;
  outlined consume of Environment<Bool>.Content(v22, v23);
  v24 = *(a2 + 352);
  v25 = *(a2 + 360);
  outlined copy of Environment<Bool>.Content(v24, v25);
  v26 = *(a1 + 352);
  v27 = *(a1 + 360);
  *(a1 + 352) = v24;
  *(a1 + 360) = v25;
  outlined consume of Environment<Bool>.Content(v26, v27);
  v28 = *(a2 + 368);
  v29 = *(a2 + 376);
  v30 = *(a2 + 384);
  v31 = *(a2 + 392);
  v32 = *(a2 + 400);
  outlined copy of Environment<NavigationEventHandlers>.Content(v28, v29, v30, v31, v32);
  v33 = *(a1 + 368);
  v34 = *(a1 + 376);
  v35 = *(a1 + 384);
  v36 = *(a1 + 392);
  v37 = *(a1 + 400);
  *(a1 + 368) = v28;
  *(a1 + 376) = v29;
  *(a1 + 384) = v30;
  *(a1 + 392) = v31;
  *(a1 + 400) = v32;
  outlined consume of Environment<NavigationEventHandlers>.Content(v33, v34, v35, v36, v37);
  return a1;
}

double ContainerBackgroundRendererModifier.ChildEnvironment.value.getter@<D0>(int a1@<W1>, _OWORD *a2@<X8>)
{
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  *&v17 = v6;
  *(&v17 + 1) = v5;

  ContainerBackgroundRendererModifier.ChildEnvironment.background.getter(a1, &v13);
  if (v16 == 1)
  {
    goto LABEL_8;
  }

  outlined consume of ContainerBackgroundValue?(v13, v14, v15, v16);
  ContainerBackgroundRendererModifier.ChildEnvironment.background.getter(a1, &v13);
  if (v16 == 1)
  {
    goto LABEL_8;
  }

  if (!(v14 >> 62))
  {
    outlined consume of ContainerBackgroundValue?(v13, v14, v15, v16);
    v11 = 1;
    goto LABEL_9;
  }

  if (v14 >> 62 != 1)
  {
    outlined consume of ContainerBackgroundValue?(v13, v14, v15, v16);
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v7 = v13;
  v8 = v14;
  v9 = v16;
  v10 = v15;
  outlined copy of ContainerBackgroundValue.Content(v13, v14);
  outlined consume of ContainerBackgroundValue?(v7, v8, v10, v9);

  v11 = 1;
LABEL_9:
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>(0, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, Bool>, MEMORY[0x1E697F230], MEMORY[0x1E69E6370], MEMORY[0x1E69E6CE0]);
  AGGraphGetValue();
  LOBYTE(v13) = v11;

  swift_setAtWritableKeyPath();

  result = *&v17;
  *a2 = v17;
  return result;
}

void ContainerBackgroundRendererModifier.ChildEnvironment.background.getter(int a1@<W1>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    a2[2] = 0;
    v6 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v3 = *Value;
    v4 = *(Value + 8);
    v6 = *(Value + 24);
    v5 = *(Value + 32);
    *(a2 + 16) = *(Value + 16);
    outlined copy of ContainerBackgroundValue.Content(v3, v4);
  }

  *a2 = v3;
  a2[1] = v4;
  a2[3] = v6;
  a2[4] = v5;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey>, &type metadata for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, &protocol witness table for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t initializeWithTake for NavigationSplitRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  v10 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 211) = *(a2 + 211);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  swift_weakTakeInit();
  *(a1 + 264) = *(a2 + 264);
  v11 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v11;
  v12 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v12;
  v13 = *(a2 + 336);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = v13;
  *(a1 + 344) = *(a2 + 344);
  v14 = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 352) = v14;
  *(a1 + 400) = *(a2 + 400);
  v15 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v15;
  return a1;
}

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance NavigationSplitRepresentable@<X0>(uint64_t *a1@<X8>)
{
  result = NavigationSplitRepresentable.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t NavigationSplitRepresentable.makeCoordinator()()
{
  outlined init with copy of _VariadicView_Children(v0, v24);
  outlined init with copy of _VariadicView_Children(v0 + 64, v23);
  outlined init with copy of _VariadicView_Children(v0 + 128, v22);
  v1 = *(v0 + 192);
  v20 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v18 = *(v0 + 226);
  v19 = *(v0 + 225);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v17 = *(v0 + 248);
  outlined init with copy of NavigationAuthority(v0 + 256, v21);
  type metadata accessor for NavigationSplitCoordinator();
  v7 = swift_allocObject();
  *(v7 + 208) = 0;
  type metadata accessor for NavigationSplitSidebarStateMachine();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 512;
  swift_unknownObjectWeakInit();
  *(v8 + 40) = 2;
  *(v7 + 248) = v8;
  *(v7 + 280) = 1;
  *(v7 + 288) = 0;
  *(v7 + 296) = 0;
  *(v7 + 304) = 0;
  *(v7 + 336) = 0u;
  *(v7 + 352) = 0u;
  *(v7 + 368) = 0;
  *(v7 + 376) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo27UISplitViewControllerColumnV_7SwiftUI26NavigationStackCoordinatorCyAE05SplitfI8StrategyVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v7 + 384) = 0;
  *(v7 + 392) = 0;
  *(v7 + 396) = -1;
  v9 = v24[1];
  v10 = v24[2];
  v11 = v23[3];
  *(v7 + 16) = v24[0];
  *(v7 + 32) = v9;
  v12 = v24[3];
  *(v7 + 48) = v10;
  *(v7 + 64) = v12;
  *(v7 + 112) = v23[2];
  *(v7 + 128) = v11;
  v13 = v23[1];
  *(v7 + 80) = v23[0];
  *(v7 + 96) = v13;
  v14 = v22[3];
  *(v7 + 176) = v22[2];
  *(v7 + 192) = v14;
  v15 = v22[1];
  *(v7 + 144) = v22[0];
  *(v7 + 160) = v15;
  *(v7 + 208) = v1;
  *(v7 + 216) = v20;
  *(v7 + 224) = v2;
  *(v7 + 232) = v3;
  *(v7 + 240) = v4;
  *(v7 + 241) = v19;
  *(v7 + 242) = v18;
  *(v7 + 256) = v6;
  *(v7 + 264) = v5;
  *(v7 + 272) = v17;
  outlined init with take of NavigationAuthority(v21, v7 + 312);
  swift_beginAccess();

  outlined assign with copy of UINavigationPresentationAdaptor?(v0 + 296, v7 + 336);
  swift_endAccess();
  return v7;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo27UISplitViewControllerColumnV_7SwiftUI26NavigationStackCoordinatorCyAE05SplitfI8StrategyVGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<UISplitViewControllerColumn, NavigationStackCoordinator<SplitColumnNavigationStrategy>>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined assign with copy of UINavigationPresentationAdaptor?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UINavigationPresentationAdaptor?();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id specialized NavigationSplitCoordinator.makeSplitViewController(environment:seeds:splitViewControllerProxyStorage:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1[1];
  v40 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>, &type metadata for NavigationEventHandlersKey, &protocol witness table for NavigationEventHandlersKey);
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v5 = v65;
  v6 = v66;
  v7 = v67;
  v8 = v68;
  v9 = *(v3 + 280);
  v10 = *(v3 + 288);
  v11 = *(v3 + 296);
  *(v3 + 280) = v65;
  *(v3 + 288) = v6;
  *(v3 + 296) = v7;
  *(v3 + 304) = v8;
  outlined copy of AppIntentExecutor?(v5);
  outlined copy of AppIntentExecutor?(v7);
  outlined consume of NavigationEventHandlers?(v9, v10, v11);
  v12 = *(v3 + 256);
  v13 = *(v3 + 264);
  LOWORD(v9) = *(v3 + 272);
  LOWORD(v10) = *(v3 + 274);
  swift_beginAccess();
  v14 = *(v3 + 224);
  v54[0] = v12;
  v54[1] = v13;
  v55 = v9;
  v56 = v10;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = v5;
  v61 = v6;
  v62 = v7;
  v63 = v8;
  v64 = v14;
  *&v47 = v12;
  *(&v47 + 1) = v13;
  LOWORD(v48) = v9;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v16 = v15;

  MEMORY[0x18D00ACC0](&v41, v16);
  v17 = v41;
  if (v41 >> 14 > 1u)
  {
    v18 = a2;
    if (v41 >> 14 == 2)
    {
      outlined destroy of UISplitViewControllerVisibilityEngine(v54);
      v19 = 2;
    }

    else
    {
      outlined destroy of UISplitViewControllerVisibilityEngine(v54);
      if (v17 == 49152)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }
    }
  }

  else
  {
    v18 = a2;
    outlined destroy of UISplitViewControllerVisibilityEngine(v54);
    v19 = 1;
  }

  v20 = [objc_allocWithZone(type metadata accessor for UIKitSplitViewController()) initWithStyle_];
  if (v18)
  {
    swift_getKeyPath();
    *&v47 = v18;
    lazy protocol witness table accessor for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *&v47 = *(v18 + 16);

    specialized NavigationSplitCoordinator.applyOverrides(from:to:)(&v47, v20);
  }

  [v20 setPrimaryBackgroundStyle_];
  v21 = qword_18CE05380[*(v3 + 224)];
  v22 = v20;
  [v22 setPreferredSplitBehavior_];
  [v22 _setUsesExtraWidePrimaryColumn_];
  [v22 setDelegate_];
  v23 = *(v3 + 264);
  v24 = *(v3 + 272);
  v25 = *(v3 + 280);
  v26 = *(v3 + 288);
  v27 = *(v3 + 296);
  v28 = *(v3 + 304);
  *&v47 = *(v3 + 256);
  *(&v47 + 1) = v23;
  LODWORD(v48) = v24;
  v49 = 0;
  *&v50 = 0;
  BYTE8(v50) = 0;
  *&v51 = v25;
  *(&v51 + 1) = v26;
  *&v52 = v27;
  *(&v52 + 1) = v28;
  v53 = *(v3 + 224);
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v41 = v47;
  v42 = v48;
  v43 = v50;

  outlined copy of NavigationEventHandlers?(v25, v26, v27);
  v29 = UISplitViewControllerVisibilityEngine.initialDisplayMode.getter();
  outlined destroy of UISplitViewControllerVisibilityEngine(&v47);
  [v22 setPreferredDisplayMode_];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey);
  if (v4)
  {

    v30 = v40;
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v30 = v40;
    PropertyList.subscript.getter();
  }

  *(v22 + OBJC_IVAR____TtC7SwiftUI24UIKitSplitViewController_allowsSecureDrawing) = v41;
  *&v41 = v30;
  *(&v41 + 1) = v4;
  if (NavigationSplitCoordinator.presentsWithGesture(environment:)(&v41) != 2)
  {
    v31 = *(v3 + 264);
    v32 = *(v3 + 272);
    v33 = *(v3 + 280);
    v34 = *(v3 + 288);
    v35 = *(v3 + 296);
    v36 = *(v3 + 304);
    v37 = *(v3 + 224);
    *&v41 = *(v3 + 256);
    *(&v41 + 1) = v31;
    LODWORD(v42) = v32;
    *(&v42 + 1) = 0;
    *&v43 = 0;
    BYTE8(v43) = 0;
    *&v44 = v33;
    *(&v44 + 1) = v34;
    *&v45 = v35;
    *(&v45 + 1) = v36;
    v46 = v37;

    outlined copy of NavigationEventHandlers?(v33, v34, v35);
    outlined destroy of UISplitViewControllerVisibilityEngine(&v41);
    [v22 setPresentsWithGesture_];
  }

  *&v41 = v30;
  *(&v41 + 1) = v4;
  NavigationSplitCoordinator.makeNavigationControllers(splitController:environment:)(v22, &v41);

  return v22;
}

id protocol witness for UIViewControllerRepresentable.makeUIViewController(context:) in conformance NavigationSplitRepresentable(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v7[0] = v3;
  v7[1] = v2;
  v4 = *(v1 + 288);

  v5 = specialized NavigationSplitCoordinator.makeSplitViewController(environment:seeds:splitViewControllerProxyStorage:)(v7, v4);

  return v5;
}

uint64_t outlined consume of NavigationEventHandlers?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(result);

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a3);
  }

  return result;
}

uint64_t outlined copy of NavigationEventHandlers?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    outlined copy of AppIntentExecutor?(result);

    return outlined copy of AppIntentExecutor?(a3);
  }

  return result;
}

uint64_t destroy for UISplitViewControllerVisibilityEngine(void *a1)
{

  result = a1[4];
  if (result)
  {
  }

  v3 = a1[6];
  if (v3)
  {
    if (v3 == 1)
    {
      return result;
    }
  }

  if (a1[8])
  {
  }

  return result;
}

uint64_t UISplitViewControllerVisibilityEngine.initialDisplayMode.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = v0[6];
  v6 = *(v0 + 80);
  if (v5 >= 2)
  {
    v7 = objc_opt_self();

    v8 = [v7 mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v29.origin.x = v10;
    v29.origin.y = v12;
    v29.size.width = v14;
    v29.size.height = v16;
    Width = CGRectGetWidth(v29);
    v30.origin.x = v10;
    v30.origin.y = v12;
    v30.size.width = v14;
    v30.size.height = v16;
    if (CGRectGetHeight(v30) >= Width)
    {
      v18 = 1194.0;
    }

    else
    {
      v18 = 1024.0;
    }

    v31.origin.x = v10;
    v31.origin.y = v12;
    v31.size.width = v14;
    v31.size.height = v16;
    LOBYTE(v25) = CGRectGetWidth(v31) >= v18;
    HIBYTE(v25) = 1;
    v5(&v26, &v25);
    v19 = v26;
    if ((v26 & 0xFF00) != 0x200)
    {
      v26 = v2;
      v27 = v1;
      v28 = v3;
      type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
      MEMORY[0x18D00ACC0](&v25);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
      v22 = v25 >> 14;
      if (v22 < 2 || v22 != 2 && v25 == 49152)
      {
        v23 = 0x4000;
      }

      else
      {
        v23 = 0x8000;
      }

      LOWORD(v26) = v19 & 0x1FF | v23;
      return AnyNavigationSplitVisibility.Kind.displayMode(proposed:behavior:)(0, 1, v6);
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
  }

  if ((v4 & 0xFF00) == 0x200)
  {
    v26 = v2;
    v27 = v1;
    v28 = v3;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
    MEMORY[0x18D00ACC0](&v25);
    return AnyNavigationSplitVisibility.Kind.displayMode(proposed:behavior:)(0, 1, v6);
  }

  v26 = v2;
  v27 = v1;
  v28 = v3;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>);
  MEMORY[0x18D00ACC0](&v25);
  v20 = v25 >> 14;
  if (v20 < 2 || v20 != 2 && v25 == 49152)
  {
    v21 = 2;
  }

  else
  {
    v21 = 4;
  }

  if (v4 == 1)
  {
    v21 = 2;
  }

  if (v4)
  {
    return v21;
  }

  else
  {
    return 1;
  }
}

uint64_t AnyNavigationSplitVisibility.Kind.displayMode(proposed:behavior:)(uint64_t result, char a2, unsigned __int8 a3)
{
  v4 = *v3 >> 14;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (!a3)
      {
        if (a2)
        {
          return 0;
        }

        if ((result - 2) < 5)
        {
          return qword_18CD720D8[result - 2];
        }

        return 1;
      }

      if (a3 == 1)
      {
        if (a2)
        {
          return 0;
        }

        if ((result - 2) < 5)
        {
          return qword_18CD72100[result - 2];
        }

        return 1;
      }

      if (a2)
      {
        return 0;
      }

      return result;
    }

    if (!*v3)
    {
      return 1;
    }

    if (*v3 != 1)
    {
      if (!a3)
      {
        return 4;
      }

      if (a3 == 1)
      {
        return 5;
      }

      if ((a2 & 1) != 0 || (result - 3) >= 4)
      {
        return 4;
      }

      else
      {
        return qword_18CD720B8[result - 3];
      }
    }

    v5 = a3;
    if (a3)
    {
LABEL_11:
      v6 = 2;
      v7 = 2;
      if (((result - 3) & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        v7 = 3;
      }

      if ((a2 & 1) == 0)
      {
        v6 = v7;
      }

      if (v5 == 1)
      {
        return 3;
      }

      else
      {
        return v6;
      }
    }

    return 2;
  }

  if (v4)
  {
    if (!*v3)
    {
      return 1;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        return 3;
      }

      v9 = 2;
      if (((result - 3) & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        v9 = 3;
      }

      if (a2)
      {
        return 2;
      }

      else
      {
        return v9;
      }
    }

    return 2;
  }

  if (*v3)
  {
    if (*v3 == 1)
    {
      v5 = a3;
      if (!a3)
      {
        return 2;
      }

      goto LABEL_11;
    }

    return 1;
  }

  if (a3)
  {
    v8 = 3;
    if (!(a2 & 1 | ((result - 2) < 5)))
    {
      v8 = 1;
    }

    if (a3 == 1)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else if (a2 & 1 | ((result - 2) < 5))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void NavigationSplitCoordinator.makeNavigationControllers(splitController:environment:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a2[1];
  v23 = *a2;
  v6 = *(v2 + 264);
  v7 = *(v2 + 272);
  *&v27 = *(v2 + 256);
  *(&v27 + 1) = v6;
  v28 = v7;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v9 = v8;

  MEMORY[0x18D00ACC0](&v25, v9);
  v10 = v25 >> 14;
  LODWORD(v22) = v10 >= 2 && (v10 == 2 || v25 != 49152);

LABEL_7:
  v11 = 0;
  if (v22)
  {
    v12 = 1;
  }

  else
  {
LABEL_29:
    v12 = 2;
  }

  v13 = 0;
  v14 = v11;
  while (1)
  {
    v24 = v14;
    v11 = v12;
    outlined init with copy of NavigationAuthority(v3 + 312, &v27);
    v15 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];
    outlined init with copy of NavigationAuthority(&v27, &v25);
    v16 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_navigationAuthority;
    swift_beginAccess();
    v17 = v15;
    _s7SwiftUI15NavigationStateV12StackContentVSgWOdTm_0(&v25, v15 + v16, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    swift_endAccess();
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey>, &type metadata for EnvironmentValues.AllowsToolbarConversionKey, &protocol witness table for EnvironmentValues.AllowsToolbarConversionKey);
    if (v5)
    {
      swift_retain_n();
      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    if ((v25 & 1) == 0)
    {
      v18 = [v17 navigationBar];
      [v18 setPreferredBehavioralStyle_];
    }

    *(v17 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isDataDriven) = 1;
    v19 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure;
    if (*(v17 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure) == 1)
    {

      outlined destroy of NavigationAuthority(&v27);
      v20 = 1;
    }

    else
    {
      HIDWORD(v22) = v13;
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowsToolbarConversionKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey);
      if (v5)
      {
        PropertyList.Tracker.value<A>(_:for:)();
      }

      else
      {
        PropertyList.subscript.getter();
      }

      outlined destroy of NavigationAuthority(&v27);
      v20 = v25;
    }

    *(v17 + v19) = v20;

    swift_beginAccess();
    outlined init with copy of UINavigationPresentationAdaptor?(v3 + 336, &v25);
    if (v26)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v25, &v27);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v27, &v25);
      v21 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy;
      swift_beginAccess();
      outlined assign with take of UIKitNavigationController.PlatformNavigationRequestStrategy(&v25, v17 + v21);
      swift_endAccess();
    }

    else
    {
      outlined destroy of UINavigationPresentationAdaptor?(&v25);
    }

    if ([a1 style])
    {
      [a1 setViewController:v17 forColumn:v24];
    }

    if (v13)
    {
      break;
    }

    v13 = 1;
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = 0;
    v14 = 2;
    if (v11 == 1)
    {
      goto LABEL_29;
    }
  }

  *&v27 = v23;
  *(&v27 + 1) = v5;
  NavigationSplitCoordinator.makeCompactController(splitController:environment:)(a1, &v27);
}

void NavigationSplitCoordinator.makeCompactController(splitController:environment:)(void *a1, uint64_t *a2)
{
  if (*(v2 + 208))
  {
    type metadata accessor for NavigationStackCoordinator<CollapsedSplitNavigationStrategy_Phone>(0, &lazy cache variable for type metadata for UIHostingController<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for UIHostingController);
    v5 = objc_allocWithZone(v4);
    v6 = swift_retain_n();
    v13 = specialized UIHostingController.init(rootView:)(v6);
    [a1 setViewController:v13 forColumn:3];
  }

  else
  {
    v8 = *a2;
    v7 = a2[1];
    outlined init with copy of NavigationAuthority(v2 + 312, v16);
    v9 = v2;
    v10 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];
    outlined init with copy of NavigationAuthority(v16, &v14);
    v11 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_navigationAuthority;
    swift_beginAccess();
    _s7SwiftUI15NavigationStateV12StackContentVSgWOdTm_0(&v14, v10 + v11, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    swift_endAccess();
    *&v14 = v8;
    *(&v14 + 1) = v7;
    UIKitNavigationController.configure(environment:)(&v14);
    outlined destroy of NavigationAuthority(v16);
    swift_beginAccess();
    outlined init with copy of UINavigationPresentationAdaptor?(v9 + 336, &v14);
    if (v15)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v14, v16);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, &v14);
      v12 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy;
      swift_beginAccess();
      outlined assign with take of UIKitNavigationController.PlatformNavigationRequestStrategy(&v14, v10 + v12);
      swift_endAccess();
    }

    else
    {
      outlined destroy of UINavigationPresentationAdaptor?(&v14);
    }

    if ([a1 style])
    {
      [a1 setViewController:v10 forColumn:3];
    }
  }
}

uint64_t NavigationSplitRepresentable.updateUIViewController(_:context:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  v56 = a2[1];
  v53 = a2[3];
  v54 = a2[2];
  v55 = *(v2 + 280);
  v52 = specialized Environment.wrappedValue.getter(*(v2 + 336), *(v2 + 344));
  v51 = specialized Environment.wrappedValue.getter(*(v2 + 352), *(v2 + 360));
  v5 = *(v2 + 384);
  v84 = *(v2 + 368);
  v85 = v5;
  v86 = *(v2 + 400);
  v6 = specialized Environment.wrappedValue.getter();
  v8 = v7;
  v10 = v9;
  v11 = *(v3 + 240);
  v12 = *(v3 + 248);
  v13 = *(v3 + 192);
  v47 = *(v3 + 200);
  v48 = *(v3 + 216);
  v49 = v14;
  v45 = *(v3 + 224);
  v46 = *(v3 + 208);
  v50 = *(v3 + 225);
  v44 = *(v3 + 226);
  v15 = *(v3 + 288);
  *(v4 + 256) = *(v3 + 232);
  *(v4 + 264) = v11;
  *(v4 + 272) = v12;

  swift_beginAccess();
  outlined assign with copy of _VariadicView_Children(v3, v4 + 16);
  swift_endAccess();
  swift_beginAccess();
  outlined assign with copy of _VariadicView_Children(v3 + 64, v4 + 80);
  swift_endAccess();
  swift_beginAccess();
  outlined assign with copy of _VariadicView_Children(v3 + 128, v4 + 144);
  swift_endAccess();
  *(v4 + 208) = v13;

  v16 = *(v4 + 280);
  v17 = *(v4 + 288);
  v18 = *(v4 + 296);
  *(v4 + 280) = v6;
  *(v4 + 288) = v8;
  *(v4 + 296) = v10;
  *(v4 + 304) = v49;
  outlined consume of NavigationEventHandlers?(v16, v17, v18);
  v58 = v6;
  outlined copy of AppIntentExecutor?(v6);
  v59 = v10;
  outlined copy of AppIntentExecutor?(v10);
  static Semantics.v6_1.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    swift_beginAccess();
    *(v4 + 216) = v47;
    *(v4 + 224) = v46;
    *(v4 + 232) = v48;
    *(v4 + 240) = v45;
    *(v4 + 241) = v50;
    *(v4 + 242) = v44;
  }

  if (v15)
  {
    swift_getKeyPath();
    *&v67 = v15;
    lazy protocol witness table accessor for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *&v67 = *(v15 + 16);

    specialized NavigationSplitCoordinator.applyOverrides(from:to:)(&v67, a1);
  }

  swift_beginAccess();
  v19 = qword_18CE05380[*(v4 + 224)];
  if ([a1 preferredSplitBehavior] != v19)
  {
    [a1 setPreferredSplitBehavior_];
  }

  NavigationSplitCoordinator.width(for:)(0, &v74);
  if (v77[9])
  {
    static Semantics.v6.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      UISplitViewController.resetPrimaryColumnWidth()();
    }
  }

  else
  {
    v20 = v74;
    v21 = v75;
    v22 = v77;
    v23 = MEMORY[0x1E69DE3C8];
    if (v77[8])
    {
      v22 = MEMORY[0x1E69DE3C8];
    }

    v24 = *v22;
    [a1 setPreferredPrimaryColumnWidth_];
    [a1 setMaximumPrimaryColumnWidth_];
    if (v21)
    {
      [a1 setMinimumPrimaryColumnWidth_];
    }

    else
    {
      [a1 setMinimumPrimaryColumnWidth_];
    }
  }

  NavigationSplitCoordinator.width(for:)(1, &v78);
  if (v83)
  {
    if ([a1 style] == 2)
    {
      static Semantics.v6.getter();
      if (isLinkedOnOrAfter(_:)())
      {
        UISplitViewController.resetSupplementaryColumnWidth()();
      }
    }
  }

  else
  {
    v25 = v78;
    v26 = v79;
    v27 = v82;
    v28 = v81;
    [a1 setPreferredSupplementaryColumnWidth_];
    if ((v27 & 1) == 0)
    {
      [a1 setMaximumSupplementaryColumnWidth_];
    }

    if ((v26 & 1) == 0)
    {
      [a1 setMinimumSupplementaryColumnWidth_];
    }
  }

  *&v67 = v54;
  *(&v67 + 1) = v53;
  v29 = NavigationSplitCoordinator.presentsWithGesture(environment:)(&v67);
  if (v29 != 2)
  {
    v30 = v29 & 1;
    if ([a1 presentsWithGesture] != v30)
    {
      [a1 setPresentsWithGesture_];
    }
  }

  *&v67 = v54;
  *(&v67 + 1) = v53;
  EnvironmentValues.horizontalSizeClass.getter();
  v32 = (v61 & 1) == 0 && v61 != 2;
  UISplitViewController.updateBackground(isCollapsed:wantsTransparentBackgroundWhenCollapsed:containerWantsTransparentBackground:sidebarDimmingIgnoresSafeArea:)(v32, v52 & 1, v51 & 1, v50);
  *&v67 = v54;
  *(&v67 + 1) = v53;
  NavigationSplitCoordinator.updateStackCoordinators(isCollapsed:splitController:environment:transaction:seeds:wantsTransparentBackgroundWhenCollapsed:)(v32, a1, &v67, v56, v55, v52 & 1);
  v33 = Transaction.disablesAnimations.getter();
  Transaction.subscript.getter();
  if (v67 == 1)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v59);
  }

  else
  {
    v35 = *(v4 + 264);
    v36 = *(v4 + 272);
    v37 = *(v4 + 280);
    v38 = *(v4 + 288);
    v39 = *(v4 + 296);
    v40 = *(v4 + 304);
    *&v67 = *(v4 + 256);
    *(&v67 + 1) = v35;
    LODWORD(v68) = v36;
    v69 = 0;
    *&v70 = 0;
    BYTE8(v70) = 0;
    *&v71 = v37;
    *(&v71 + 1) = v38;
    *&v72 = v39;
    *(&v72 + 1) = v40;
    v73 = *(v4 + 224);
    v63 = v70;
    v64 = v71;
    v65 = v72;
    v66 = v73;
    v61 = v67;
    v62 = v68;

    outlined copy of NavigationEventHandlers?(v37, v38, v39);
    UISplitViewControllerVisibilityEngine.visibility.getter(&v60);
    outlined destroy of UISplitViewControllerVisibilityEngine(&v67);
    LOBYTE(v61) = 17;
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    *(v43 + 24) = v42;
    *(v43 + 32) = (v33 & 1) == 0;

    static Update.enqueueAction(reason:_:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v58);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v59);
  }
}

uint64_t sub_18BED9AF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18BED9B28()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BED9B60()
{

  return swift_deallocObject();
}

uint64_t specialized Environment.wrappedValue.getter()
{
  v1 = *v0;
  if (*(v0 + 32) == 1)
  {
    v2 = *(v0 + 16);
    outlined copy of AppIntentExecutor?(v1);
    outlined copy of AppIntentExecutor?(v2);
  }

  else
  {

    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000018CD3F9B0, &v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<NavigationEventHandlers>(v0, &lazy cache variable for type metadata for Environment<NavigationEventHandlers>, &type metadata for NavigationEventHandlers);

    return v8;
  }

  return v1;
}

{
  v1 = *v0;
  if (*(v0 + 32) != 1)
  {

    v2 = static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6465766C6F736552, 0xE800000000000000, &v7);
      _os_log_impl(&dword_18BD4A000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x18D0110E0](v5, -1, -1);
      MEMORY[0x18D0110E0](v4, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<NavigationEventHandlers>(v0, &lazy cache variable for type metadata for Environment<ListLabelConfiguration.Resolved>, &type metadata for ListLabelConfiguration.Resolved);

    LOBYTE(v1) = v7;
  }

  return v1 & 1;
}

{
  v1 = *v0;
  if (*(v0 + 32) == 1)
  {
    outlined copy of Text?(v1, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  }

  else
  {

    v2 = static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C616E6F6974704FLL, 0xEE003E747865543CLL, &v7);
      _os_log_impl(&dword_18BD4A000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x18D0110E0](v5, -1, -1);
      MEMORY[0x18D0110E0](v4, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<ToolbarItemMetrics?>(v0, &lazy cache variable for type metadata for Environment<Text?>, &lazy cache variable for type metadata for Text?, MEMORY[0x1E6981148]);

    return v7;
  }

  return v1;
}

{
  v1 = *v0;
  if (*(v0 + 32) == 1)
  {
    outlined copy of Binding<String>?(v1, *(v0 + 8));
  }

  else
  {

    v2 = static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000018CD3F3E0, &v7);
      _os_log_impl(&dword_18BD4A000, v3, v2, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x18D0110E0](v5, -1, -1);
      MEMORY[0x18D0110E0](v4, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of PlaybackButton.State(v0, type metadata accessor for Environment<Binding<String>?>);

    return v7;
  }

  return v1;
}

uint64_t NavigationSplitCoordinator.width(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  if (result)
  {
    if (result != 1)
    {
      v14 = 0;
      v15 = 0;
      v9 = 0;
      v11 = 0;
      goto LABEL_13;
    }

    v4 = 1;
  }

  swift_beginAccess();
  v5 = *(v2 + 232);
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) == 0))
  {
    result = swift_endAccess();
    v14 = 0;
    v15 = 0;
    v9 = 0;
    v11 = 0;
    LOBYTE(v4) = 0;
LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  v8 = *(v5 + 56) + 40 * v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  LODWORD(v4) = *(v8 + 32);
  swift_endAccess();
  if ((v4 & 0x80000000) != 0)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
    result = static SemanticFeature.isEnabled.getter();
    if (result)
    {
      v13 = 0;
      v15 = v10 & 1;
      LOBYTE(v4) = v4 & 1;
      v14 = v9;
      v9 = v12;
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
      lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
      result = static SemanticFeature.isEnabled.getter();
      v14 = 0;
      v13 = 0;
      if (v4)
      {
        v16 = v12;
      }

      else
      {
        v16 = v11;
      }

      if (result)
      {
        v11 = v16;
      }

      else
      {
        v11 = 0;
      }

      v15 = 1;
      LOBYTE(v4) = (result & 1) == 0;
      v9 = v12;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_splitViewColumnGestureBehavior>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    result = static SemanticFeature.isEnabled.getter();
    v13 = 0;
    if (result)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    v15 = (result ^ 1) & 1;
    LOBYTE(v4) = (result ^ 1) & 1;
    v11 = v14;
  }

LABEL_14:
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v4;
  *(a2 + 33) = v13;
  return result;
}

id UISplitViewController.resetPrimaryColumnWidth()()
{
  [v0 minimumPrimaryColumnWidth];
  v1 = *MEMORY[0x1E69DE3C8];
  if (v2 != *MEMORY[0x1E69DE3C8])
  {
    [v0 setMinimumPrimaryColumnWidth_];
  }

  [v0 preferredPrimaryColumnWidth];
  if (v3 != v1)
  {
    [v0 setPreferredPrimaryColumnWidth_];
  }

  result = [v0 maximumPrimaryColumnWidth];
  if (v5 != v1)
  {

    return [v0 setMaximumPrimaryColumnWidth_];
  }

  return result;
}

void UISplitViewController.updateBackground(isCollapsed:wantsTransparentBackgroundWhenCollapsed:containerWantsTransparentBackground:sidebarDimmingIgnoresSafeArea:)(int a1, int a2, char a3, char a4)
{
  v5 = v4;
  v10 = [v5 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 6)
  {
    return;
  }

  v31 = a4;
  v12 = 0;
  LOBYTE(v13) = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v13)
        {
          if (v12 == 2)
          {
            v22 = 0;
            if ((a3 & 1) == 0 && (a1 & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_31;
          }

          LOBYTE(v13) = 1;
          goto LABEL_3;
        }

        v14 = outlined read-only object #0 of UISplitViewController.updateBackground(isCollapsed:wantsTransparentBackgroundWhenCollapsed:containerWantsTransparentBackground:sidebarDimmingIgnoresSafeArea:)[v12 + 4];
        if ([v5 style])
        {
          v15 = [v5 viewControllerForColumn_];
          if (v15)
          {
            break;
          }
        }

LABEL_18:
        if (v12 == 2)
        {
          goto LABEL_27;
        }

        LOBYTE(v13) = 0;
        ++v12;
      }

      v16 = v15;
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (!v17)
      {

        goto LABEL_18;
      }

      v18 = [v17 viewControllers];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v19 >> 62))
      {
        break;
      }

      if (__CocoaSet.count.getter() <= 0)
      {
        goto LABEL_21;
      }

LABEL_12:
      if ((v19 & 0xC000000000000001) == 0)
      {
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v20 = *(v19 + 32);
          goto LABEL_15;
        }

        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v20 = MEMORY[0x18D00E9C0](0, v19);
LABEL_15:
      v21 = v20;

      v13 = [v21 _wantsTransparentBackground];

      if (v12 == 2)
      {
        v22 = 0;
        if ((a3 & 1) == 0 && (a1 & (a2 | v13) & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }

LABEL_3:
      ++v12;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_12;
    }

LABEL_21:

    if (v12 == 2)
    {
      break;
    }

    LOBYTE(v13) = 0;
    ++v12;
  }

LABEL_27:
  v22 = 0;
  if ((a3 & 1) == 0 && (a1 & a2 & 1) == 0)
  {
LABEL_29:
    v23 = [v5 view];
    if (v23)
    {
      v24 = v23;
      v22 = [v23 backgroundColor];

      goto LABEL_31;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_31:
  v25 = [v5 view];
  if (!v25)
  {
    goto LABEL_48;
  }

  v26 = v25;
  v27 = [v25 backgroundColor];

  if (v22)
  {
    if (v27)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
      v32 = v22;
      v28 = static NSObject.== infix(_:_:)();

      if (v28)
      {
        goto LABEL_40;
      }
    }

LABEL_38:
    v29 = [v5 view];
    if (v29)
    {
      v30 = v29;
      [v29 setBackgroundColor_];

      v32 = v22;
      goto LABEL_40;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v27)
  {

    goto LABEL_38;
  }

  v32 = 0;
LABEL_40:
  [v5 _setWantsFloatingSidebar_];
}

void NavigationSplitCoordinator.updateStackCoordinators(isCollapsed:splitController:environment:transaction:seeds:wantsTransparentBackgroundWhenCollapsed:)(char a1, id a2, uint64_t *a3, uint64_t a4, unint64_t a5, char a6)
{
  v9 = v6;
  v10 = a1;
  v114 = a3[1];
  v115 = *a3;
  v11 = *(v6 + 208);
  if (v11)
  {
    v12 = a2;
    if (a1)
    {
      if (*(v6 + 384))
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  swift_beginAccess();
  if (*(*(v6 + 376) + 16))
  {
LABEL_9:
    v10 = a1;
    if (a1)
    {
      v11 = *(v9 + 208);
      v12 = a2;
      if (*(v9 + 384))
      {
LABEL_4:
        if (!v11)
        {
LABEL_5:
          if ((*(v9 + 392) & 1) == 0)
          {
            swift_beginAccess();
            v7 = *(v9 + 376);
            v8 = *(v9 + 264);
            v13 = *(v9 + 272);
            *&v117 = *(v9 + 256);
            *(&v117 + 1) = v8;
            LOWORD(v118) = v13;
            _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
            v15 = v14;

            MEMORY[0x18D00ACC0](v148, v15);
            v16 = LOWORD(v148[0]) >> 14;
            v106 = v10;
            v111 = v16 >= 2 && (v16 == 2 || LOWORD(v148[0]) != 49152);

            if (*(v7 + 16))
            {
              v75 = 0;
              v76 = 0;
              v77 = MEMORY[0x1E69E7D40];
              v8 = &lazy cache variable for type metadata for NavigationState.StackContent?;
              do
              {
                if (v75)
                {
                  break;
                }

                if (v76)
                {
                  if (v76 != 1)
                  {
                    v78 = 0;
                    v75 = 1;
                    goto LABEL_82;
                  }
                }

                else if (v111)
                {
                  v75 = 0;
                  v78 = 1;
                  goto LABEL_82;
                }

                v75 = 0;
                v78 = 2;
LABEL_82:
                v79 = specialized __RawDictionaryStorage.find<A>(_:)(v76);
                if ((v80 & 1) == 0)
                {

                  v10 = v106;
                  v12 = a2;
                  goto LABEL_103;
                }

                v81 = *(*(v7 + 56) + 8 * v79);
                v143 = 0u;
                v144 = 0u;
                v141 = 0u;
                v142 = 0u;
                v139 = 0u;
                v140 = 0u;
                v137 = 0u;
                v138 = 0u;
                v135 = 0u;
                v136 = 0u;
                v133 = 0u;
                v134 = 0u;
                v131 = 0u;
                v132 = 0u;
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                v119 = 0u;
                v120 = 0u;
                v117 = 0u;
                v118 = 0u;
                v145 = -1;
                v82 = *((*v77 & *v81) + 0xB0);
                swift_beginAccess();
                v83 = v81;
                _s7SwiftUI15NavigationStateV12StackContentVSgWOdTm_0(&v117, v81 + v82, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
                swift_endAccess();
                *(v83 + *((*v77 & *v83) + 0xA8)) = -1;

                v76 = v78;
                v12 = a2;
              }

              while (*(v7 + 16));
            }

            v10 = v106;
          }

LABEL_103:
          if (![v12 style])
          {
            goto LABEL_112;
          }

          v99 = [v12 viewControllerForColumn_];
          if (!v99)
          {
            goto LABEL_118;
          }

          v7 = v99;
          objc_opt_self();
          v100 = swift_dynamicCastObjCClass();
          if (!v100)
          {
            goto LABEL_117;
          }

          v101 = *(v9 + 384);
          if (!v101)
          {
            goto LABEL_119;
          }

          v102 = v100;

          v103 = v101;

          v104 = NavigationSplitCoordinator.allRoots.getter();
          specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(v102, v115, v114, a4, a5, a6 & 1, v115, v114, v104);

LABEL_108:
          *(v9 + 392) = v10 & 1;
          return;
        }

LABEL_97:
        v93 = [v12 viewControllerForColumn_];
        v94 = v93;
        v95 = *(v9 + 208);
        if (v95)
        {
          if (!v93)
          {
            goto LABEL_108;
          }

          type metadata accessor for NavigationStackCoordinator<CollapsedSplitNavigationStrategy_Phone>(0, &lazy cache variable for type metadata for UIHostingController<PreparedCompactColumn>, lazy protocol witness table accessor for type PreparedCompactColumn and conformance PreparedCompactColumn, &type metadata for PreparedCompactColumn, type metadata accessor for UIHostingController);
          v96 = swift_dynamicCastClass();
          if (v96)
          {
            v97 = *(v96 + direct field offset for UIHostingController.host);

            v98 = v97;
            specialized _UIHostingView.setRootView(_:transaction:)(v95);

            goto LABEL_108;
          }
        }

        goto LABEL_108;
      }

LABEL_11:
      if (!v11)
      {
        swift_beginAccess();
        v7 = *(v9 + 216);
        v8 = *(v9 + 256);
        v17 = *(v9 + 264);
        v18 = *(v9 + 272);
        *&v117 = v8;
        *(&v117 + 1) = v17;
        LOWORD(v118) = v18;
        _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
        v20 = v19;

        MEMORY[0x18D00ACC0](v149, v20);
        v21 = LOWORD(v149[0]) >> 14;
        if (v21 < 2 || v21 != 2 && LOWORD(v149[0]) == 49152)
        {
          v22 = 2;
        }

        else
        {
          v22 = 3;
        }

        outlined init with copy of NavigationAuthority(v9 + 312, &v117);
        type metadata accessor for NavigationStackCoordinator<CollapsedSplitNavigationStrategy_Phone>(0, &lazy cache variable for type metadata for NavigationStackCoordinator<CollapsedSplitNavigationStrategy_Phone>, lazy protocol witness table accessor for type CollapsedSplitNavigationStrategy_Phone and conformance CollapsedSplitNavigationStrategy_Phone, &type metadata for CollapsedSplitNavigationStrategy_Phone, type metadata accessor for NavigationStackCoordinator);
        v85 = objc_allocWithZone(v84);
        v86 = specialized NavigationStackCoordinator.init(context:navigationAuthority:)(v7, 4, v22, &v117);
        if (![v12 style])
        {
          goto LABEL_113;
        }

        v87 = [v12 viewControllerForColumn_];
        if (!v87)
        {
          goto LABEL_121;
        }

        v8 = v87;
        objc_opt_self();
        v88 = swift_dynamicCastObjCClass();
        if (!v88)
        {
          goto LABEL_120;
        }

        [v88 setDelegate_];

        v8 = a2;
        if (![a2 style])
        {
          goto LABEL_114;
        }

        v89 = [a2 viewControllerForColumn_];
        if (!v89)
        {
          goto LABEL_123;
        }

        v8 = v89;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_122;
        }

        type metadata accessor for UIKitNavigationController();
        v90 = swift_dynamicCastClass();
        v12 = a2;
        if (v90)
        {
          v91 = (v90 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_context);
          *v91 = v7;
          v91[1] = 4;
          v91[2] = v22;
        }

        v92 = *(v9 + 384);
        *(v9 + 384) = v86;

        if (!*(v9 + 208))
        {
          goto LABEL_5;
        }
      }

      goto LABEL_97;
    }

    v23 = a2;
    if (*(v9 + 392) == 1)
    {
      v24 = *(v9 + 384);
      if (v24)
      {
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v145 = -1;
        v25 = MEMORY[0x1E69E7D40];
        v26 = *((*MEMORY[0x1E69E7D40] & *v24) + 0xB0);
        swift_beginAccess();
        v27 = v24;
        _s7SwiftUI15NavigationStateV12StackContentVSgWOdTm_0(&v117, v24 + v26, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        swift_endAccess();
        *(v27 + *((*v25 & *v27) + 0xA8)) = -1;
      }
    }

    swift_beginAccess();
    v28 = *(v9 + 376);
    v7 = *(v9 + 256);
    v29 = *(v9 + 264);
    v30 = *(v9 + 272);
    v150[0] = v7;
    v150[1] = v29;
    v151 = v30;
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
    v32 = v31;

    MEMORY[0x18D00ACC0](v149, v32);
    v33 = LOWORD(v149[0]) >> 14;
    v105 = v33 >= 2 && (v33 == 2 || LOWORD(v149[0]) != 49152);

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    if (!*(v28 + 16))
    {
LABEL_48:

      v10 = a1;
      goto LABEL_108;
    }

    v38 = 0;
    v39 = 0;
    while (1)
    {
      if (v38)
      {
        goto LABEL_48;
      }

      if (v39)
      {
        if (v39 != 1)
        {
          v8 = 0;
          v42 = 1;
          goto LABEL_36;
        }
      }

      else if (v105)
      {
        v42 = 0;
        v8 = 1;
        goto LABEL_36;
      }

      v42 = 0;
      v8 = 2;
LABEL_36:
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
      if ((v44 & 1) == 0)
      {
        goto LABEL_48;
      }

      v45 = *(*(v28 + 56) + 8 * v43);
      if (![v23 style])
      {
        goto LABEL_111;
      }

      v46 = [v23 viewControllerForColumn_];
      if (!v46)
      {
        goto LABEL_116;
      }

      v7 = v46;
      v110 = v45;
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      if (!v47)
      {
        goto LABEL_115;
      }

      v48 = v47;
      v49 = [v47 traitCollection];
      *&v146 = v115;
      *(&v146 + 1) = v114;

      UITraitCollection.resolvedPreEnvironment(base:)(&v146, &v147);

      v146 = v147;

      UITraitCollection.coreResolvedBaseEnvironment(base:)();

      v146 = v147;

      UITraitCollection.coreResolvedGlassMaterialEnvironment(base:)();

      v50 = v147;
      v51 = [v23 traitCollection];
      v52 = [v51 userInterfaceIdiom];

      if (!v39 && v52 == 1)
      {
        static _GraphInputs.defaultInterfaceIdiom.getter();
        v41 = static Solarium.isEnabled(for:)();
        _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_18CD63400;
        v54 = v53 + 32;
LABEL_47:
        outlined init with copy of _VariadicView_Children(v9 + 16, v54);
        goto LABEL_28;
      }

      _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_18CD63400;
      v54 = v53 + 32;
      if (v39 == 2)
      {
        v40 = v9 + 144;
      }

      else
      {
        if (v39 != 1)
        {
          v41 = 0;
          goto LABEL_47;
        }

        v40 = v9 + 80;
      }

      outlined init with copy of _VariadicView_Children(v40, v54);
      v41 = 0;
LABEL_28:

      specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(v48, v50, *(&v50 + 1), a4, a5, v41 & 1, v50, *(&v50 + 1), v53);

      v23 = a2;
      v38 = v42;
      v39 = v8;
      if (!*(v28 + 16))
      {
        goto LABEL_48;
      }
    }
  }

  v34 = *(v6 + 264);
  v35 = *(v6 + 272);
  *&v117 = *(v6 + 256);
  *(&v117 + 1) = v34;
  LOWORD(v118) = v35;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v8 = v36;

  MEMORY[0x18D00ACC0](v150, v8);
  v37 = LOWORD(v150[0]) >> 14;
  v112 = v37 >= 2 && (v37 == 2 || LOWORD(v150[0]) != 49152);

LABEL_53:
  v55 = 0;
  if (v112)
  {
    v56 = 1;
  }

  else
  {
LABEL_69:
    v56 = 2;
  }

  v57 = 0;
  v7 = v55;
  while (1)
  {
    v55 = v56;
    *&v117 = v115;
    *(&v117 + 1) = v114;
    v58 = NavigationSplitCoordinator.makeExpandedStackCoordinator(splitController:environment:uiColumn:)(a2, &v117, v7);
    swift_beginAccess();
    v59 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150[0] = *(v9 + 376);
    v61 = v150[0];
    *(v9 + 376) = 0x8000000000000000;
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    v64 = *(v61 + 16);
    v65 = (v63 & 1) == 0;
    v66 = __OFADD__(v64, v65);
    v67 = v64 + v65;
    if (v66)
    {
      break;
    }

    v8 = v63;
    if (*(v61 + 24) < v67)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, isUniquelyReferenced_nonNull_native);
      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if ((v8 & 1) != (v68 & 1))
      {
        goto LABEL_124;
      }

LABEL_61:
      v69 = v150[0];
      if (v8)
      {
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_61;
    }

    v72 = v62;
    specialized _NativeDictionary.copy()();
    v62 = v72;
    v69 = v150[0];
    if (v8)
    {
LABEL_62:
      v70 = v69[7];
      v71 = *(v70 + 8 * v62);
      *(v70 + 8 * v62) = v59;

      goto LABEL_66;
    }

LABEL_64:
    v69[(v62 >> 6) + 8] |= 1 << v62;
    *(v69[6] + 8 * v62) = v7;
    *(v69[7] + 8 * v62) = v59;
    v73 = v69[2];
    v66 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v66)
    {
      goto LABEL_110;
    }

    v69[2] = v74;
LABEL_66:
    *(v9 + 376) = v69;
    swift_endAccess();

    if (v57)
    {
      goto LABEL_9;
    }

    v57 = 1;
    if (!v55)
    {
      goto LABEL_53;
    }

    v56 = 0;
    v7 = 2;
    if (v55 == 1)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:

LABEL_116:
  __break(1u);
LABEL_117:

LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:

LABEL_121:
  __break(1u);
LABEL_122:

LABEL_123:
  __break(1u);
LABEL_124:
  type metadata accessor for UISplitViewControllerColumn(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t NavigationSplitCoordinator.makeExpandedStackCoordinator(splitController:environment:uiColumn:)(void *a1, uint64_t *a2, unint64_t a3)
{
  if (a3 >= 5)
  {
    goto LABEL_21;
  }

  v4 = v3;
  v8 = *a2;
  v7 = a2[1];
  v9 = 0x504020100uLL >> (8 * a3);
  swift_beginAccess();
  v37 = *(v3 + 216);
  v10 = *(v3 + 264);
  v11 = *(v3 + 272);
  *&v39 = *(v3 + 256);
  *(&v39 + 1) = v10;
  v40 = v11;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v13 = v12;

  MEMORY[0x18D00ACC0](v38, v13);
  v14 = LOWORD(v38[0]) >> 14;
  if (v14 < 2 || v14 != 2 && LOWORD(v38[0]) == 49152)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  outlined init with copy of NavigationAuthority(v3 + 312, &v39);
  type metadata accessor for NavigationStackCoordinator<CollapsedSplitNavigationStrategy_Phone>(0, &lazy cache variable for type metadata for NavigationStackCoordinator<SplitColumnNavigationStrategy>, lazy protocol witness table accessor for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy, &type metadata for SplitColumnNavigationStrategy, type metadata accessor for NavigationStackCoordinator);
  v17 = objc_allocWithZone(v16);
  v18 = specialized NavigationStackCoordinator.init(context:navigationAuthority:)(v37, v9, v15, &v39);
  if (![a1 style])
  {
    __break(1u);
    goto LABEL_19;
  }

  v35 = v15;
  v36 = v9;
  v19 = [a1 viewControllerForColumn_];
  if (!v19)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = v19;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
LABEL_19:

    goto LABEL_20;
  }

  v21 = v20;
  v22 = [(UINavigationController *)v20 traitCollection];
  v38[0] = v8;
  v38[1] = v7;
  UITraitCollection.resolvedEnvironment(base:)(v38, &v39);

  v23 = v39;
  v24 = specialized NavigationSplitCoordinator.transparentBackground(for:splitController:)(a3, a1);
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18CD63400;
  if (a3 == 2)
  {
    v26 = v4 + 144;
  }

  else if (a3 == 1)
  {
    v26 = v4 + 80;
  }

  else
  {
    v26 = v4 + 16;
  }

  swift_beginAccess();
  outlined init with copy of _VariadicView_Children(v26, v25 + 32);

  v28 = specialized NavigationStackCoordinator.makeRootHostingController(environment:transparentBackground:strategy:)(v27, *(&v23 + 1), v24 & 1, v23, *(&v23 + 1), v25);

  type metadata accessor for UIKitNavigationController();
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    v30 = (v29 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_context);
    *v30 = v37;
    v30[1] = v36 & 7;
    v30[2] = v35;
  }

  [(UINavigationController *)v21 setDelegate:v18];
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_18CD69590;
  *(v31 + 32) = v28;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v32 = v28;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [(UINavigationController *)v21 _swiftui_setViewControllers:isa];

  specialized UIHostingController.prepareNavigationBar(in:navigationController:isRoot:)(v23, *(&v23 + 1), v21, 1);

  return v18;
}

unint64_t lazy protocol witness table accessor for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy()
{
  result = lazy protocol witness table cache variable for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy;
  if (!lazy protocol witness table cache variable for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SplitColumnNavigationStrategy and conformance SplitColumnNavigationStrategy);
  }

  return result;
}

uint64_t specialized NavigationSplitCoordinator.transparentBackground(for:splitController:)(uint64_t a1, id a2)
{
  v3 = [a2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = 0;
  if (!a1 && v4 == 1)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v5 = static Solarium.isEnabled(for:)();
  }

  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>)
  {
    type metadata accessor for StyleContextWriter<SidebarListStyleContext>(255, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchField>, lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField, &type metadata for EnvironmentValues.SearchField, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchField> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField()
{
  result = lazy protocol witness table cache variable for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField;
  if (!lazy protocol witness table cache variable for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarListStyle.HasSearchField and conformance SidebarListStyle.HasSearchField);
  }

  return result;
}

void type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>()
{
  if (!lazy cache variable for type metadata for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>)
  {
    type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>();
    lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for SidebarListStyle.BodyContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>)
  {
    type metadata accessor for StyleContextWriter<SidebarListStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarListStyleContext>, lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext, &type metadata for SidebarListStyleContext, MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext()
{
  result = lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext;
  if (!lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext;
  if (!lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarListStyleContext and conformance SidebarListStyleContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>();
    lazy protocol witness table accessor for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<SidebarListStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarListStyleContext>, lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext, &type metadata for SidebarListStyleContext, MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<SidebarListStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t type metadata completion function for SidebarListStyle.BodyContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>()
{
  result = lazy protocol witness table cache variable for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>;
  if (!lazy protocol witness table cache variable for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>)
  {
    type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>);
  }

  return result;
}

uint64_t type metadata completion function for SidebarListBody()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
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

uint64_t type metadata completion function for SidebarListBody.CollectionViewBody()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for SidebarListBody.TableViewRoot()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t associated type witness table accessor for View.Body : View in SidebarListBody<A, B>()
{
  return associated type witness table accessor for View.Body : View in SidebarListBody<A, B>();
}

{
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18BEDC878()
{
  type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  type metadata accessor for SidebarListBody.CollectionViewBody();
  type metadata accessor for SidebarListBody.TableViewRoot();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for StaticIf();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_18BEDC9F8()
{
  type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
  type metadata accessor for CollectionViewListRoot();
  type metadata accessor for _DUIPreviewMode(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t closure #2 in static NavigableListModifier._makeInputs(modifier:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for NavigableListModifier();
  v3 = *(v2 + 36);
  v7[2] = v2;
  type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, partial apply for closure #1 in static PointerOffset.of(_:), v7, v8, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v9;
}

uint64_t storeEnumTagSinglePayload for ListPadding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata completion function for SearchPrimitiveModifier()
{
  result = type metadata accessor for SearchModifier();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SearchField();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableListSections and conformance DisableListSections()
{
  result = lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections;
  if (!lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections;
  if (!lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections;
  if (!lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections;
  if (!lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections;
  if (!lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableListSections and conformance DisableListSections);
  }

  return result;
}

uint64_t closure #1 in static CollectionViewListRoot._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for CollectionViewListRoot();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t sub_18BEDCF5C()
{
  type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();

  return swift_getWitnessTable();
}

void type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>?);
    }
  }
}

void type metadata accessor for ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>)
  {
    type metadata accessor for <<opaque return type of View.truePreference<A>(_:)>>.0();
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListRowInsetsTraitKey>, &type metadata for ListRowInsetsTraitKey, &protocol witness table for ListRowInsetsTraitKey, MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>();
    type metadata accessor for StyleContextWriter<SidebarListStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SidebarListStyleContext>, lazy protocol witness table accessor for type SidebarListStyleContext and conformance SidebarListStyleContext, &type metadata for SidebarListStyleContext, MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<<<opaque return type of View.truePreference<A>(_:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>, StyleContextWriter<SidebarListStyleContext>>);
    }
  }
}

void type metadata accessor for <<opaque return type of View.truePreference<A>(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.truePreference<A>(_:)>>.0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.truePreference<A>(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of View.truePreference<A>(_:)>>.0)
  {
    lazy protocol witness table accessor for type _TestApp.RootView and conformance _TestApp.RootView();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.truePreference<A>(_:)>>.0);
    }
  }
}

uint64_t specialized closure #1 in _NavigationSplitReader.PreparedColumn.updateValue()(uint64_t result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a3)
    {
      v5 = result;

      *v5 = 0;
      *(v5 + 8) = a3;
      *(v5 + 16) = a4 & 1;
    }
  }

  return result;
}

uint64_t destroy for NavigableListModifier.EnsureNavigationAuthority(uint64_t result)
{
  if (*(result + 32) != 1)
  {
    swift_weakDestroy();
  }

  return result;
}

void *type metadata accessor for AnyStyle()
{
  return &unk_1EFF91680;
}

{
  return &unk_1EFFDAFA0;
}

{
  return &unk_1EFFABBE8;
}

uint64_t type metadata accessor for StyleType()
{
  return __swift_instantiateGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance OnChangeOfSuggestionsModifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t sub_18BEDD450()
{
  type metadata accessor for SearchModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SearchPrimitiveModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SearchEnvironmentWritingModifier(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for SearchStateEnvironmentTransformModifier(255);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SubmitScopeModifier and conformance SubmitScopeModifier();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t storeEnumTagSinglePayload for SearchFieldPlacement.Role(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance SearchEnvironmentWritingModifier()
{
  lazy protocol witness table accessor for type SearchFieldState and conformance SearchFieldState(&lazy protocol witness table cache variable for type SearchEnvironmentWritingModifier and conformance SearchEnvironmentWritingModifier, type metadata accessor for SearchEnvironmentWritingModifier);

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContentMarginModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

void type metadata completion function for SearchPrimitiveModifier.FocusStoreListFilter()
{
  type metadata accessor for SearchFieldState?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_18BEDD8B8()
{
  type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for SearchField();
  _s7SwiftUI5StateVySbGMaTm_2(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  swift_getWitnessTable();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>)
  {
    type metadata accessor for TriggerSubmitAction?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>);
    }
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ResetScrollEnvironmentModifier.AdditionalResetModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetScrollEnvironmentModifier.AdditionalResetModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(void))
{
  if (!*a2)
  {
    type metadata accessor for _ViewModifier_Content<OnSubmitModifier>(255, a3, a4);
    type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>();
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18BEDDC60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t outlined init with take of SearchFieldState?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)@<X0>(int a1@<W0>, int *a2@<X1>, __int128 *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v61 = a8;
  v59 = a6;
  HIDWORD(v54) = a4;
  v76 = *MEMORY[0x1E69E9840];
  v60 = *a2;
  v13 = a3[3];
  v69 = a3[2];
  v70 = v13;
  v71 = a3[4];
  v72 = *(a3 + 20);
  v14 = a3[1];
  v67 = *a3;
  v68 = v14;
  swift_unknownObjectWeakInit();
  updated = type metadata accessor for UpdateCollectionViewListCoordinator();
  v16 = updated[28];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = AssociatedTypeWitness;
  v18 = type metadata accessor for CollectionViewListDataSource();
  (*(*(v18 - 8) + 56))(a9 + v16, 1, 1, v18);
  *(a9 + updated[29]) = 0;
  v19 = AGSubgraphGetCurrent();
  if (!v19)
  {
    __break(1u);
  }

  v56 = &v54;
  *(a9 + updated[30]) = v19;
  *a9 = a1;
  MEMORY[0x1EEE9AC00](v19);
  v20 = v59;
  v53[2] = a5;
  v53[3] = v59;
  v21 = v61;
  v53[4] = a7;
  v53[5] = v61;
  LODWORD(v66[0]) = v60;
  *&v73 = v59;
  *(&v73 + 1) = a5;
  *&v74 = v61;
  *(&v74 + 1) = a7;
  type metadata accessor for CollectionViewListRoot();
  type metadata accessor for _GraphValue();
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v22 = _GraphValue.value.getter();
  *(a9 + 4) = v22;
  MEMORY[0x1EEE9AC00](v22);
  v53[-4] = a5;
  v53[-3] = v20;
  v53[-2] = a7;
  v53[-1] = v21;
  v23 = v60;
  LODWORD(v73) = v60;
  v24 = _GraphValue.subscript.getter();
  *(a9 + 8) = v66[0];
  MEMORY[0x1EEE9AC00](v24);
  v53[-4] = a5;
  v53[-3] = v20;
  v53[-2] = a7;
  v53[-1] = v21;
  LODWORD(v73) = v23;
  v25 = _GraphValue.subscript.getter();
  *(a9 + 12) = v66[0];
  MEMORY[0x1EEE9AC00](v25);
  v53[-4] = a5;
  v53[-3] = v20;
  v53[-2] = a7;
  v53[-1] = v21;
  LODWORD(v73) = v23;
  v26 = _GraphValue.subscript.getter();
  v55 = v53;
  v73 = v67;
  v74 = v68;
  v75 = v69;
  v27 = HIDWORD(v68);
  *(a9 + 16) = v66[0];
  *(a9 + 20) = v27;
  MEMORY[0x1EEE9AC00](v26);
  v56 = a5;
  v53[-4] = a5;
  v53[-3] = v20;
  v53[-2] = a7;
  v53[-1] = v21;
  LODWORD(v66[0]) = v23;
  type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  _GraphValue.subscript.getter();
  *(a9 + 24) = v63;
  outlined init with copy of _GraphInputs(&v73, v66);
  v55 = a7;
  if (one-time initialization token for listStackBehavior != -1)
  {
    swift_once();
  }

  v28 = v74;
  *&v63 = static CachedEnvironment.ID.listStackBehavior;
  swift_beginAccess();
  v29 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v73);
  *(a9 + 28) = v29;
  outlined init with copy of _GraphInputs(&v73, v66);
  if (one-time initialization token for appIntentsDataSourcePayloadProvider != -1)
  {
    swift_once();
  }

  *&v63 = static CachedEnvironment.ID.appIntentsDataSourcePayloadProvider;
  swift_beginAccess();
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?();
  v30 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v73);
  *(a9 + 92) = v30;
  outlined init with copy of _GraphInputs(&v73, v66);
  if (one-time initialization token for editMode != -1)
  {
    swift_once();
  }

  *&v63 = static CachedEnvironment.ID.editMode;
  swift_beginAccess();
  type metadata accessor for Binding<EditMode>?();
  v31 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v73);
  *(a9 + 32) = v31;
  outlined init with copy of _GraphInputs(&v73, v66);
  if (one-time initialization token for listSectionSpacing != -1)
  {
    swift_once();
  }

  *&v63 = static CachedEnvironment.ID.listSectionSpacing;
  swift_beginAccess();
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(0, &lazy cache variable for type metadata for ListSectionSpacing?, &type metadata for ListSectionSpacing, MEMORY[0x1E69E6720]);
  v32 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v73);
  *(a9 + 36) = v32;
  outlined init with copy of _GraphInputs(&v73, v66);
  if (one-time initialization token for listRowSpacing != -1)
  {
    swift_once();
  }

  *&v63 = static CachedEnvironment.ID.listRowSpacing;
  swift_beginAccess();
  _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_1(0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v33 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v73);
  *(a9 + 40) = v33;
  outlined init with copy of _GraphInputs(&v73, v66);
  if (one-time initialization token for listSectionCornerRadius != -1)
  {
    swift_once();
  }

  *&v63 = static CachedEnvironment.ID.listSectionCornerRadius;
  swift_beginAccess();
  v34 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v73);
  *(a9 + 44) = v34;
  outlined init with copy of _GraphInputs(&v73, v66);
  if (one-time initialization token for menuOrder != -1)
  {
    swift_once();
  }

  *&v63 = static CachedEnvironment.ID.menuOrder;
  swift_beginAccess();
  v35 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v73);
  *(a9 + 48) = v35;
  v63 = v73;
  v64 = v74;
  v65 = v75;
  outlined init with copy of _GraphInputs(&v73, v66);
  v37 = AssociatedConformanceWitness;
  v36 = v58;
  v38 = _GraphInputs.selectionStorage<A>(forType:)();
  v40 = v39;
  v66[0] = v63;
  v66[1] = v64;
  v66[2] = v65;
  outlined destroy of _GraphInputs(v66);
  *(a9 + 52) = WeakSelectionBasedStorage.init(_:)(v38, v40, v36, v37);
  *(a9 + 60) = v41;
  *(a9 + 68) = v42;
  *(a9 + 76) = v43;
  outlined init with copy of _GraphInputs(&v73, &v63);
  if (one-time initialization token for listReorderControlVisibility != -1)
  {
    swift_once();
  }

  *&v62 = static CachedEnvironment.ID.listReorderControlVisibility;
  swift_beginAccess();
  v44 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v73);
  *(a9 + 84) = v44;
  outlined init with copy of _GraphInputs(&v73, &v63);
  if (one-time initialization token for listDeleteControlVisibility != -1)
  {
    swift_once();
  }

  *&v62 = static CachedEnvironment.ID.listDeleteControlVisibility;
  swift_beginAccess();
  v45 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v73);
  *(a9 + 88) = v45;
  *(a9 + 96) = *(v28 + 16);
  type metadata accessor for SourceInput<ListRowHeightTemplateContent>();
  lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>, type metadata accessor for SourceInput<ListRowHeightTemplateContent>);
  PropertyList.subscript.getter();
  if (v63)
  {

    Attribute = AGWeakAttributeGetAttribute();
    v47 = *MEMORY[0x1E698D3F8];
    v48 = Attribute;
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      closure #6 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)();
      v62 = v63;
      v49 = _ViewOutputs.layoutComputer.getter();

      if ((v49 & 0x100000000) != 0)
      {
        v48 = v47;
      }

      else
      {
        v48 = v49;
      }

      Attribute = HIDWORD(v54);
    }
  }

  else
  {
    Attribute = *MEMORY[0x1E698D3F8];
    v48 = *MEMORY[0x1E698D3F8];
  }

  if (one-time initialization token for subviewsSizingOption != -1)
  {
    swift_once();
  }

  *&v62 = static CachedEnvironment.ID.subviewsSizingOption;
  swift_beginAccess();
  v50 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  *&v63 = __PAIR64__(v48, v50);
  DWORD2(v63) = Attribute;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform();
  v51 = Attribute.init<A>(body:value:flags:update:)();
  result = outlined destroy of _ViewInputs(&v67);
  *(a9 + 100) = v51;
  return result;
}

uint64_t implicit closure #2 in static SearchPrimitiveModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v6 = type metadata accessor for SearchPrimitiveModifier.FocusStoreListFilter();
  WitnessTable = swift_getWitnessTable();
  _s7SwiftUI7BindingVy10Foundation16AttributedStringVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_22, &v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v8;
}

uint64_t closure #1 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a3;
  v14 = a2;
  v15 = a5;
  v16 = a4;
  v6 = type metadata accessor for CollectionViewListRoot();
  v7 = *(v6 + 64);
  v11[2] = v6;
  type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, v12, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v13;
}

uint64_t closure #3 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a3;
  v14 = a2;
  v15 = a5;
  v16 = a4;
  v6 = type metadata accessor for CollectionViewListRoot();
  v7 = *(v6 + 56);
  v12[2] = v6;
  v8 = MEMORY[0x1E69E7DE0];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t sub_18BEDED14()
{
  type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type SearchOverlayView and conformance SearchOverlayView();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t closure #4 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a3;
  v14 = a2;
  v15 = a5;
  v16 = a4;
  v6 = type metadata accessor for CollectionViewListRoot();
  v7 = *(v6 + 60);
  v12[2] = v6;
  v8 = MEMORY[0x1E69E7DE0];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

unint64_t lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes);
  }

  return result;
}

void type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?()
{
  if (!lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?);
    }
  }
}

unint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.SelectionBasedStorageKey<A>@<X0>(uint64_t a1@<X8>)
{
  result = static _GraphInputs.SelectionBasedStorageKey.defaultValue.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  return result;
}

uint64_t WeakSelectionBasedStorage.init(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1;
  }

  v37 = v9;
  v38 = v8 == a1;
  v35 = a3;
  v36 = a4;
  type metadata accessor for Set();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v10 = type metadata accessor for WeakAttribute();
  v11 = MEMORY[0x1E69E73E0];
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in WeakSelectionBasedStorage.init(_:), v34, MEMORY[0x1E69E73E0], v10, v12, &v39);
  v13 = v39;
  if (v40)
  {
    v13 = 0;
  }

  v24 = v13;
  v14 = HIDWORD(a1);
  if (v8 == HIDWORD(a1))
  {
    LODWORD(v14) = 0;
  }

  v37 = v14;
  v38 = v8 == HIDWORD(a1);
  v32 = a3;
  v33 = a4;
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v15 = type metadata accessor for WeakAttribute();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in WeakSelectionBasedStorage.init(_:), v31, v11, v15, v16, &v39);
  if (v8 == a2)
  {
    v17 = 0;
  }

  else
  {
    v17 = a2;
  }

  v37 = v17;
  v38 = v8 == a2;
  v29 = a3;
  v30 = a4;
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v18 = type metadata accessor for WeakAttribute();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in WeakSelectionBasedStorage.init(_:), v28, v11, v18, v19, &v39);
  v20 = HIDWORD(a2);
  if (v8 == HIDWORD(a2))
  {
    LODWORD(v20) = 0;
  }

  v37 = v20;
  v38 = v8 == HIDWORD(a2);
  v26 = a3;
  v27 = a4;
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v21 = type metadata accessor for WeakAttribute();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in WeakSelectionBasedStorage.init(_:), v25, v11, v21, v22, &v39);
  return v24;
}

uint64_t storeEnumTagSinglePayload for AccessibilityRelationshipScope.Relationship(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchScopeActivation.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent()
{
  result = lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent;
  if (!lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent;
  if (!lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>? and conformance <A> A?)
  {
    type metadata accessor for TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>?, type metadata accessor for TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)>? and conformance <A> A?);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ListRowHeightTemplateContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for (ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?))
  {
    type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?(255);
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?));
    }
  }
}

void type metadata accessor for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>)
  {
    type metadata accessor for _ViewModifier_Content<NavigationCommonModifier>(255, &lazy cache variable for type metadata for SearchFieldStyleModifier<ToolbarSearchFieldStyle>, lazy protocol witness table accessor for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle, &type metadata for ToolbarSearchFieldStyle, type metadata accessor for SearchFieldStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform()
{
  result = lazy protocol witness table cache variable for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform;
  if (!lazy protocol witness table cache variable for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform);
  }

  return result;
}

void type metadata accessor for TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>()
{
  if (!lazy cache variable for type metadata for TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_4(255, &lazy cache variable for type metadata for SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>, &type metadata for SearchFieldConfiguration.Scopes, &protocol witness table for SearchFieldConfiguration.Scopes, type metadata accessor for SearchScopeToolbarContent);
    v0 = type metadata accessor for TupleToolbarContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for CollectionViewListDataSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>()
{
  if (!lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>)
  {
    type metadata accessor for TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>();
    v0 = type metadata accessor for ToolbarModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>);
    }
  }
}

void type metadata completion function for UICollectionViewListCoordinatorBase()
{
  type metadata accessor for ShadowListUpdateRecorder();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ListCoreBatchUpdates();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Optional();
      if (v2 <= 0x3F)
      {
        _s10Foundation9IndexPathVSgMaTm_1(319, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Binding();
          type metadata accessor for Optional();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Optional();
            if (v5 <= 0x3F)
            {
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for ListCoreBatchUpdates()
{
  result = type metadata accessor for IndexSet();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for IndexPath?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation9IndexPathVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation9IndexPathVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation9IndexPathVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation9IndexPathVSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for BridgedListState.ScrollTarget()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined destroy of BridgedListState(uint64_t a1)
{
  v2 = type metadata accessor for BridgedListState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_UNKNOWN **base witness table accessor for View in ListRepresentable<A, B>()
{
  return &protocol witness table for ListRepresentable<A, B>;
}

{
  return &protocol witness table for ListRepresentable<A, B>;
}

uint64_t protocol witness for static CoreViewRepresentable.dynamicProperties.getter in conformance ListRepresentable<A, B>()
{
  return MEMORY[0x1EEDE15A0]();
}

{
  return MEMORY[0x1EEDE15A0]();
}

uint64_t outlined destroy of SearchFieldState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16SearchFieldStateVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16SearchFieldStateVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16SearchFieldStateVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16SearchFieldStateVWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI16SearchFieldStateVWOhTm_4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for SearchFieldState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t protocol witness for Projection.get(base:) in conformance StringToAttributedStringProjection()
{
  v0 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v0 - 8);

  AttributeContainer.init()();
  return AttributedString.init(_:attributes:)();
}

uint64_t SearchModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a2;
  v45 = type metadata accessor for SearchStateEnvironmentTransformModifier(0);
  MEMORY[0x1EEE9AC00](v45);
  v52 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = type metadata accessor for SearchEnvironmentWritingModifier(0);
  MEMORY[0x1EEE9AC00](v43);
  v49 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SearchPrimitiveModifier();
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35[-v6];
  swift_getWitnessTable();
  v8 = a1;
  v9 = type metadata accessor for _ViewModifier_Content();
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for ModifiedContent();
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v35[-v12];
  v44 = type metadata accessor for ModifiedContent();
  v50 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v35[-v13];
  v41 = type metadata accessor for ModifiedContent();
  v51 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v35[-v16];
  KeyPath = swift_getKeyPath();
  v62[0] = 1;
  v63 = 4;
  v64 = KeyPath;
  v65 = 0;
  v66 = 0;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](v67, v62, v9, &type metadata for SubmitScopeModifier, WitnessTable);
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v64, v65, v66);
  v38 = v67[2];
  v37 = v67[3];
  v36 = v68;
  v19 = v8;
  SearchModifier.primitiveModifier.getter(v8, v7);
  v20 = lazy protocol witness table accessor for type SubmitScopeModifier and conformance SubmitScopeModifier();
  v60 = WitnessTable;
  v61 = v20;
  v21 = swift_getWitnessTable();
  v22 = v39;
  MEMORY[0x18D00A570](v7, v10, v5, v21);
  (*(v48 + 8))(v7, v5);
  v23 = v49;
  SearchModifier.environmentModifier.getter(v19, v49);
  v58 = v21;
  v59 = &protocol witness table for SearchPrimitiveModifier<A>;
  v24 = swift_getWitnessTable();
  v25 = v40;
  MEMORY[0x18D00A570](v23, v11, v43, v24);
  outlined destroy of SearchEnvironmentWritingModifier(v23, type metadata accessor for SearchEnvironmentWritingModifier);
  (*(v46 + 8))(v22, v11);
  v26 = v52;
  SearchModifier.environmentStorageTransform.getter(v19, v52);
  v56 = v24;
  v57 = &protocol witness table for SearchEnvironmentWritingModifier;
  v27 = v44;
  v28 = swift_getWitnessTable();
  v29 = v42;
  MEMORY[0x18D00A570](v26, v27, v45, v28);
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v38, v37, v36);
  outlined destroy of SearchEnvironmentWritingModifier(v26, type metadata accessor for SearchStateEnvironmentTransformModifier);
  (*(v50 + 8))(v25, v27);
  v54 = v28;
  v55 = &protocol witness table for SearchStateEnvironmentTransformModifier;
  v30 = v41;
  v31 = swift_getWitnessTable();
  v32 = v47;
  static ViewBuilder.buildExpression<A>(_:)(v29, v30, v31);
  v33 = *(v51 + 8);
  v33(v29, v30);
  static ViewBuilder.buildExpression<A>(_:)(v32, v30, v31);
  return (v33)(v32, v30);
}

uint64_t initializeWithCopy for SubmitScopeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v3, v4, v5);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  return a1;
}

uint64_t outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return outlined consume of TriggerSubmitAction?(a1, a2);
  }

  else
  {
  }
}

uint64_t outlined init with copy of SearchFieldState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ResolvedSearchFieldStyle and conformance ResolvedSearchFieldStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SearchField.init(state:isPresented:control:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a3;
  v13 = type metadata accessor for SearchFieldState(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 2;
  v16[1] = specialized static SearchSuggestionsPlacement.Role.initial.getter() & 1;
  *(v16 + 1) = 2;
  *(v16 + 1) = 0;
  v16[8] = 1;
  AttributedString.init()();
  v16[*(v14 + 48)] = 0;
  v17 = *(v14 + 52);
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v18 = &v16[v17];
  v19 = byte_1EAB095CC;
  *v18 = static SearchFocusUpdate.empty;
  v18[4] = v19;
  property wrapper backing initializer of SearchField.state(v16, a7);
  v20 = type metadata accessor for SearchField();
  v21 = a7 + v20[9];
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(a7 + v20[11]) = 0;
  outlined destroy of StateOrBinding<SearchFieldState>(a7, type metadata accessor for StateOrBinding<SearchFieldState>);
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(a1, a7, type metadata accessor for Binding<SearchFieldState>);
  type metadata accessor for StateOrBinding<SearchFieldState>(0);
  swift_storeEnumTagMultiPayload();
  (*(*(a6 - 8) + 32))(a7 + v20[10], a5, a6);
  result = outlined consume of StateOrBinding<Bool>(*v21, *(v21 + 8), *(v21 + 16), *(v21 + 17));
  v23 = v25;
  *v21 = a2;
  *(v21 + 8) = v23;
  *(v21 + 16) = a4 & 1;
  *(v21 + 17) = 1;
  return result;
}

uint64_t outlined init with take of Binding<SearchFieldState>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7BindingVyAA16SearchFieldStateVGWObTm_1(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of Binding<SearchFieldState>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithCopy for SearchField(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = ((v7 + 9) & ~v7) + v8;
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 24;
  v12 = v7 | 3;
  if (v10 + ((v7 + 16) & ~(v7 | 3)) <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10 + ((v7 + 16) & ~(v7 | 3));
  }

  v14 = a2[v13];
  v15 = v14 - 2;
  if (v14 < 2)
  {
    goto LABEL_20;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = *a2;
    if (v13 < 4)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v16 == 2)
  {
    v17 = *a2;
    if (v13 >= 4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v16 == 3)
    {
      v17 = *a2 | (a2[2] << 16);
      if (v13 < 4)
      {
        goto LABEL_19;
      }

LABEL_17:
      v14 = v17 + 2;
      goto LABEL_20;
    }

    v17 = *a2;
    if (v13 >= 4)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v14 = (v17 | (v15 << (8 * v13))) + 2;
LABEL_20:
  v18 = ~v7;
  if (v14 == 1)
  {
    *a1 = *a2;
    v19 = ~v12;
    v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = v20 + v12;
    v23 = v21 + v12;
    v24 = ((v22 + 8) & v19);
    v25 = ((v23 + 8) & v19);
    v26 = (v25 + 7);
    *v24 = *v25;
    v24[1] = v25[1];
    v24[2] = v25[2];
    v24[3] = v25[3];
    v27 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v26) = *(v26 & 0xFFFFFFFFFFFFFFFCLL);
    *(v27 + 4) = *(v28 + 4);
    *v27 = v26;
    v29 = v7 + 5;
    v30 = (v29 + v27) & v18;
    v31 = (v29 + v28) & v18;
    v32 = *(v6 + 16);
    v33 = v5;

    v32(v30, v31, v33);
    *(v30 + v8) = *(v31 + v8);
    v34 = (v30 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = (v31 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = *(v35 + 4);
    *(v34 + 8) = *(v35 + 8);
    *(v34 + 4) = v36;
    v37 = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1];
    *(a1 + 2) = a2[2];
    *(a1 + 3) = a2[3];
    v38 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v40 = *v39;
    *(v38 + 4) = *(v39 + 4);
    *v38 = v40;
    v41 = (v38 + v7 + 5) & v18;
    v42 = (v39 + v7 + 5) & v18;
    (*(v6 + 16))(v41, v42, v5);
    *(v41 + v8) = *(v42 + v8);
    v43 = (v41 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v44 = (v42 + v8) & 0xFFFFFFFFFFFFFFFCLL;
    v45 = *(v44 + 4);
    *(v43 + 8) = *(v44 + 8);
    *(v43 + 4) = v45;
    *((a1 + 7 + v10) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v10 + 7] & 0xFFFFFFFFFFFFFFF8);

    v37 = 0;
  }

  *(a1 + v13) = v37;
  v46 = (v13 + 8 + a1) & 0xFFFFFFFFFFFFFFF8;
  v47 = &a2[v13 + 8] & 0xFFFFFFFFFFFFFFF8;
  v48 = *(v47 + 17);
  if (v48 >= 2)
  {
    v48 = *v47 + 2;
  }

  if (v48 == 1)
  {
    *v46 = *v47;
    *(v46 + 8) = *(v47 + 8);
    *(v46 + 16) = *(v47 + 16);

    v49 = 1;
  }

  else
  {
    v49 = 0;
    *v46 = *v47;
    *(v46 + 8) = *(v47 + 8);
  }

  *(v46 + 17) = v49;
  v50 = *(*(a3 + 16) - 8);
  v51 = v50 + 16;
  v52 = *(v50 + 80);
  v53 = (v46 + v52 + 18) & ~v52;
  v54 = (v47 + v52 + 18) & ~v52;
  (*(v50 + 16))(v53, v54);
  *(v53 + *(v51 + 48)) = *(v54 + *(v51 + 48));
  return a1;
}

unint64_t lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions()
{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions;
  if (!lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions);
  }

  return result;
}

void type metadata completion function for SearchFieldConfigurationReader()
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(319, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t static SearchFieldConfigurationReader._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2[3];
  v11 = a2[1];
  v42 = a2[2];
  v43 = v10;
  v12 = a2[3];
  v44 = a2[4];
  v13 = a2[1];
  v40 = *a2;
  v41 = v13;
  v33 = v42;
  v34 = v12;
  v35 = a2[4];
  v14 = *a1;
  v45 = *(a2 + 20);
  v36 = *(a2 + 20);
  v31 = v40;
  v32 = v11;
  outlined init with copy of _ViewInputs(&v40, &v25);
  PreferenceKeys.add(_:)();
  v24 = v14;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  *&v26 = a5;
  *(&v26 + 1) = a6;
  type metadata accessor for SearchFieldConfigurationReader();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in static SearchFieldConfigurationReader._makeView(view:inputs:)(1, a3, a4, a5, a6);
  }

  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v22[2] = v33;
  v22[3] = v34;
  v22[4] = v35;
  v23 = v36;
  v22[0] = v31;
  v22[1] = v32;
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v16 = v31;
  v17 = v32;
  v18 = v33;
  outlined init with copy of _ViewInputs(v22, &v25);
  static View.makeDebuggableView(view:inputs:)();
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v25 = v16;
  v26 = v17;
  outlined destroy of _ViewInputs(&v25);
  result = PreferencesOutputs.subscript.getter();
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {

    v37 = v40;
    v38 = v41;
    v39 = v42;
    outlined init with copy of _GraphInputs(&v40, &v16);
    _s7SwiftUI12_GraphInputsV11isSourceNily09AttributeC008OptionalH0VySbGxmAA9ViewAliasRzlFAA24SearchFieldConfigurationV6ScopesV_TtB5();
    outlined destroy of _GraphInputs(&v40);
    LODWORD(v16) = v14;
    _GraphValue.value.getter();
    type metadata accessor for Optional();
    *&v16 = a3;
    *(&v16 + 1) = a4;
    *&v17 = a5;
    *(&v17 + 1) = a6;
    type metadata accessor for SearchFieldConfigurationReader.MakeContent();
    swift_getWitnessTable();
    _GraphValue.init<A>(_:)();
    swift_getWitnessTable();
    static View.makeDebuggableView(view:inputs:)();
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v16 = v31;
    v17 = v32;
    v18 = v33;
    return outlined destroy of _ViewInputs(&v16);
  }

  return result;
}

double static PrimitiveSelectionContainerModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v30 = a1[2];
  v31 = v5;
  v32 = a1[4];
  v33 = *(a1 + 20);
  v6 = a1[1];
  v28 = *a1;
  v29 = v6;
  *&v36[0] = __PAIR64__(*MEMORY[0x1E698D3F8], AGGraphCreateOffsetAttribute2());
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type PrimitiveSelectionContainerModifier.MakeSelectionContext and conformance PrimitiveSelectionContainerModifier.MakeSelectionContext();
  v7 = Attribute.init<A>(body:value:flags:update:)();
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  outlined init with copy of _ViewInputs(&v28, v36);
  PreferenceKeys.add(_:)();
  LODWORD(v36[0]) = v7;
  lazy protocol witness table accessor for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey();
  PropertyList.subscript.setter();
  v34[2] = v24;
  v34[3] = v25;
  v34[4] = v26;
  v35 = v27;
  v34[0] = v22;
  v34[1] = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v16 = v22;
  v17 = v23;
  v8 = outlined init with copy of _ViewInputs(v34, v36);
  a2(&v14, v8, &v16);
  v36[2] = v18;
  v36[3] = v19;
  v36[4] = v20;
  v37 = v21;
  v36[0] = v16;
  v36[1] = v17;
  outlined destroy of _ViewInputs(v36);
  v9 = v14;
  *&v16 = v14;
  v13 = v15;
  DWORD2(v16) = LODWORD(v15);
  v10 = PreferencesOutputs.subscript.getter();
  if ((v10 & 0x100000000) == 0)
  {
    MEMORY[0x1EEE9AC00](v10);
    MEMORY[0x1EEE9AC00](v11);
    AGGraphMutateAttribute();
  }

  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v16 = v22;
  v17 = v23;
  outlined destroy of _ViewInputs(&v16);
  *a3 = v9;
  result = v13;
  a3[1] = v13;
  return result;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey);
  }

  return result;
}

uint64_t static NavigableListModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  type metadata accessor for SelectionManagerBox();
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v53 - v9;
  v10 = type metadata accessor for NavigableListModifier.BoundListSelectionDetector();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - v12;
  v14 = *a1;
  v15 = lazy protocol witness table accessor for type NavigationAuthority.ListKeyViewInputKey and conformance NavigationAuthority.ListKeyViewInputKey();
  PropertyList.subscript.getter();
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
    result = PropertyList.subscript.getter();
    if (v68 == 1)
    {
      v60 = v10;
      v62 = v13;
      v63 = v15;
      v64 = v11;
      v55 = a2;
      MEMORY[0x1EEE9AC00](result);
      LODWORD(v68) = v14;
      type metadata accessor for NavigableListModifier();
      type metadata accessor for _GraphValue();
      v17 = _GraphValue.subscript.getter();
      v61 = v66;
      MEMORY[0x1EEE9AC00](v17);
      LODWORD(v68) = v14;
      type metadata accessor for Binding();
      type metadata accessor for Optional();
      _GraphValue.subscript.getter();
      type metadata accessor for _GraphValue();
      v18 = _GraphValue.value.getter();
      v19 = v18;
      MEMORY[0x1EEE9AC00](v18);
      LODWORD(v68) = v14;
      type metadata accessor for NavigationStateHost();
      _GraphValue.subscript.getter();
      v58 = v66;
      lazy protocol witness table accessor for type IsExtractingNavigationDestinations and conformance IsExtractingNavigationDestinations();
      PropertyList.subscript.getter();
      v20 = v68;
      lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
      v21 = PropertyList.subscript.getter();
      v69 = v61;
      v70 = v19;
      MEMORY[0x1EEE9AC00](v21);
      v22 = type metadata accessor for NavigableListModifier.ListKey();
      swift_getWitnessTable();
      v23 = MEMORY[0x1E698D388];
      type metadata accessor for Attribute<NavigationState.ListKey?>(0, &lazy cache variable for type metadata for Attribute<NavigationState.ListKey?>, &lazy cache variable for type metadata for NavigationState.ListKey?, &type metadata for NavigationState.ListKey, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v68, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_12, &v50, v22, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
      LODWORD(v22) = v66;
      v59 = lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
      PropertyList.subscript.getter();
      v66 = xmmword_18CD633F0;
      v67 = 0;
      v69 = v58;
      v70 = v22;
      v61 = v19;
      v71 = v19;
      v58 = v20;
      v72 = v20;
      v26 = outlined init with take of NavigationAuthority?(&v66, v73);
      v73[24] = 0;
      MEMORY[0x1EEE9AC00](v26);
      v27 = type metadata accessor for NavigableListModifier.EnsureNavigationAuthority();
      v51 = v27;
      WitnessTable = swift_getWitnessTable();
      type metadata accessor for Attribute<NavigationState.ListKey?>(0, &lazy cache variable for type metadata for Attribute<NavigationAuthority?>, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, v23);
      v28 = v55;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v68, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_12, &v50, v27, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
      (*(*(v27 - 8) + 8))(&v68, v27);
      v31 = v66;
      v57 = AGCreateWeakAttribute();
      v56 = HIDWORD(v57);
      if (one-time initialization token for editMode != -1)
      {
        swift_once();
      }

      *&v66 = static CachedEnvironment.ID.editMode;
      swift_beginAccess();
      type metadata accessor for Binding<EditMode>?();
      v32 = CachedEnvironment.attribute<A>(id:_:)();
      v33 = swift_endAccess();
      LODWORD(v68) = v32;
      MEMORY[0x1EEE9AC00](v33);
      IsEditing = type metadata accessor for NavigableListModifier.IsEditing();
      v51 = IsEditing;
      WitnessTable = swift_getWitnessTable();
      type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for Attribute<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v68, closure #1 in Attribute.init<A>(_:)partial apply, &v50, IsEditing, MEMORY[0x1E69E73E0], v35, MEMORY[0x1E69E7410], v36);
      v53 = 0;
      v37 = v66;
      v38 = AGCreateWeakAttribute();
      v39 = *(v28 + 24);
      v40 = *(v28 + 28);
      v54 = v31;
      v41 = v60;
      if (one-time initialization token for selectionPopsSubsequentColumn != -1)
      {
        swift_once();
      }

      *&v66 = static CachedEnvironment.ID.selectionPopsSubsequentColumn;
      swift_beginAccess();
      v42 = CachedEnvironment.attribute<A>(id:_:)();
      swift_endAccess();
      default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v68);
      *&v66 = v68;
      DWORD2(v66) = v69;
      BYTE12(v66) = v70;
      v43 = type metadata accessor for SelectionManagerBox();
      v44 = v65;
      (*(*(v43 - 8) + 56))(v65, 1, 1, v43);
      v51 = a3;
      WitnessTable = a4;
      v50 = v44;
      v45 = v62;
      v46 = v57;
      v47 = NavigableListModifier.BoundListSelectionDetector.init(listKey:selection:isEditing:navigationAuthority:phase:transaction:selectionPopsSubsequentColumn:isExtractionPass:cycleDetector:lastResetSeed:lastSelection:wasEditing:)(v57, v61, v37, v38, v39, v40, v42, v58, v62, &v66, 0, v50, 0);
      MEMORY[0x1EEE9AC00](v47);
      v51 = v41;
      WitnessTable = swift_getWitnessTable();
      type metadata accessor for NavigationState.ListKey?(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v45, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, &v50, v41, MEMORY[0x1E69E73E0], v48, MEMORY[0x1E69E7410], v49);
      (*(v64 + 8))(v45, v41);
      AGGraphSetFlags();
      v68 = __PAIR64__(v56, v46);
      PropertyList.subscript.setter();
      v68 = AGCreateWeakAttribute();
      return PropertyList.subscript.setter();
    }
  }

  return result;
}

uint64_t NavigableListModifier.BoundListSelectionDetector.init(listKey:selection:isEditing:navigationAuthority:phase:transaction:selectionPopsSubsequentColumn:isExtractionPass:cycleDetector:lastResetSeed:lastSelection:wasEditing:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, int a11, uint64_t a12, char a13)
{
  v14 = *(a10 + 8);
  v15 = *(a10 + 12);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 12) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 28) = a6;
  *(a9 + 32) = a7;
  *(a9 + 36) = a8;
  *(a9 + 40) = *a10;
  *(a9 + 48) = v14;
  *(a9 + 52) = v15;
  *(a9 + 56) = a11;
  v16 = type metadata accessor for NavigableListModifier.BoundListSelectionDetector();
  v17 = *(v16 + 72);
  type metadata accessor for SelectionManagerBox();
  v18 = type metadata accessor for Optional();
  result = (*(*(v18 - 8) + 32))(a9 + v17, a12, v18);
  *(a9 + *(v16 + 76)) = a13;
  return result;
}

void *initializeWithCopy for NavigableListModifier.BoundListSelectionDetector(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v15 = *v16;
  *(v15 + 4) = *(v16 + 4);
  v17 = ((v13 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = *v18;
  *(v17 + 5) = *(v18 + 5);
  *v17 = v19;
  v20 = ((v13 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v14 + 31) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = *(a3 + 16);
  v23 = *(v22 - 8);
  v24 = *(v23 + 80) & 0xF8;
  v25 = ~v24 & 0xFFFFFFFFFFFFFFF8;
  v24 += 11;
  v26 = v20 + v24;
  v27 = (v26 & v25);
  v28 = ((v21 + v24) & v25);
  v29 = *(v23 + 64);
  if (*(v23 + 84))
  {
    v30 = *(v23 + 64);
  }

  else
  {
    v30 = v29 + 1;
  }

  if (v30 > v29)
  {
    v29 = v30;
  }

  if (v29 <= 8)
  {
    v31 = 8;
  }

  else
  {
    v31 = v29;
  }

  v32 = *(v28 + v31);
  if (v32 <= 2)
  {
    if (v32 == 2)
    {
      (*(v23 + 16))(v26 & v25, v28, v22);
      v34 = 2;
    }

    else
    {
      if (v32 != 1)
      {
        *v27 = *v28;
        *(v27 + v31) = 0;

LABEL_20:
        v33 = v31 + 1;
        goto LABEL_21;
      }

      if ((*(v23 + 48))(v28, 1, v22))
      {
        memcpy(v27, v28, v30);
      }

      else
      {
        (*(v23 + 16))(v27, v28, v22);
        (*(v23 + 56))(v27, 0, 1, v22);
      }

      v34 = 1;
    }

    *(v27 + v31) = v34;
    goto LABEL_20;
  }

  v33 = v31 + 1;
  memcpy((v26 & v25), v28, v31 + 1);
LABEL_21:
  *(v27 + v33) = *(v28 + v33);
  return a1;
}

uint64_t specialized static TextFieldLabelDisplayModeModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  lazy protocol witness table accessor for type _GraphInputs.TextFieldLabelDisplayModeKey and conformance _GraphInputs.TextFieldLabelDisplayModeKey();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag()
{
  result = lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListStyleInput and conformance ListStyleInput()
{
  result = lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput;
  if (!lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput;
  if (!lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListStyleInput and conformance ListStyleInput);
  }

  return result;
}

uint64_t type metadata completion function for _ListValue()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SelectionManagerBox();
    swift_getWitnessTable();
    result = type metadata accessor for _ListStyleConfiguration();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for StyleContextWriter<SidebarListStyleContext>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for EnvironmentValues.SearchField(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchField and conformance EnvironmentValues.SearchField);
  }

  return result;
}

void type metadata completion function for SearchField()
{
  type metadata accessor for StateOrBinding<SearchFieldState>(319);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void type metadata completion function for SearchEnvironmentWritingModifier()
{
  type metadata accessor for Binding<SearchFieldState>(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<AttributedString>();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t type metadata completion function for CollectionViewListDataSource()
{
  result = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListConcatenatesFooters and conformance ListConcatenatesFooters()
{
  result = lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters;
  if (!lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters;
  if (!lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters;
  if (!lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters;
  if (!lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters;
  if (!lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListConcatenatesFooters and conformance ListConcatenatesFooters);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchFieldPlacement.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t static SearchPrimitiveModifier._makeView(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49[0] = a3;
  v49[1] = a4;
  v53 = a7;
  v109 = *MEMORY[0x1E69E9840];
  type metadata accessor for SearchFieldState?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SearchPrimitiveModifier.FocusStoreListFilter();
  v52 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = (v49 - v13);
  v14 = a2[3];
  v15 = a2[1];
  v96 = a2[2];
  v97 = v14;
  v16 = a2[3];
  v98 = a2[4];
  v17 = a2[1];
  v94 = *a2;
  v95 = v17;
  v90 = v96;
  v91 = v16;
  v92 = a2[4];
  LODWORD(v54) = *a1;
  v99 = *(a2 + 20);
  v93 = *(a2 + 20);
  v88 = v94;
  v89 = v15;
  LOBYTE(v101[0]) = 1;
  outlined init with copy of _ViewInputs(&v94, &v103);
  lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput();
  PropertyList.subscript.setter();
  PreferenceKeys.add(_:)();
  PreferenceKeys.remove(_:)();
  _GraphInputs.pushStableIndex(_:)(0);
  v105 = v96;
  v106 = v97;
  v107 = v98;
  v108 = v99;
  v103 = v94;
  v104 = v95;
  v18 = _ViewInputs.isEnabled.getter();
  v100[0] = v94;
  v100[1] = v95;
  v100[2] = v96;
  outlined init with copy of _GraphInputs(v100, v101);
  if (one-time initialization token for triggerSubmission != -1)
  {
    swift_once();
  }

  *&v82 = static CachedEnvironment.ID.triggerSubmission;
  swift_beginAccess();
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for TriggerSubmitAction?, &type metadata for TriggerSubmitAction, MEMORY[0x1E69E6720]);
  v19 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v20 = outlined destroy of _GraphInputs(v100);
  *&v103 = __PAIR64__(v19, v18);
  MEMORY[0x1EEE9AC00](v20);
  v49[-4] = type metadata accessor for SearchPrimitiveModifier.ForwardedEnvironment();
  ForwardEnv = type metadata accessor for SearchPrimitiveModifier.MakeForwardEnv();
  v49[-3] = ForwardEnv;
  v49[-2] = swift_getWitnessTable();
  v22 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v103, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, &v49[-6], ForwardEnv, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v24 = v101[0];
  v25 = v54;
  LODWORD(v103) = v54;
  type metadata accessor for SearchPrimitiveModifier();
  type metadata accessor for _GraphValue();
  LODWORD(ForwardEnv) = _GraphValue.value.getter();
  type metadata accessor for SearchPrimitiveModifier.SearchConfigModifier();
  *&v103 = __PAIR64__(v24, ForwardEnv);
  v50 = v24;
  type metadata accessor for SearchPrimitiveModifier.MakeModifier();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v101[2] = v90;
  v101[3] = v91;
  v101[4] = v92;
  v102 = v93;
  v101[0] = v88;
  v101[1] = v89;
  v84 = v90;
  v85 = v91;
  v86 = v92;
  v87 = v93;
  v82 = v88;
  v83 = v89;
  outlined init with copy of _ViewInputs(v101, &v103);
  swift_getWitnessTable();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  v105 = v84;
  v106 = v85;
  v107 = v86;
  v108 = v87;
  v103 = v82;
  v104 = v83;
  outlined destroy of _ViewInputs(&v103);
  LODWORD(v82) = v25;
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for SearchField() - 8) + 64))
  {
    closure #1 in static SearchPrimitiveModifier._makeView(modifier:inputs:body:)(1);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v27 = OffsetAttribute2;
  v66 = v97;
  v67 = DWORD2(v97);
  *&v82 = v97;
  DWORD2(v82) = DWORD2(v97);
  MEMORY[0x1EEE9AC00](OffsetAttribute2);
  v49[-4] = a5;
  v49[-3] = a6;
  LODWORD(v49[-2]) = v28;
  outlined init with copy of PreferencesInputs(&v66, v80);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  outlined init with copy of _GraphInputs(v100, &v82);
  if (one-time initialization token for searchFocusContext != -1)
  {
    swift_once();
  }

  *&v80[0] = static CachedEnvironment.ID.searchFocusContext;
  swift_beginAccess();
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for SearchFocusContext?, &type metadata for SearchFocusContext, MEMORY[0x1E69E6720]);
  v29 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(v100);
  outlined init with copy of _GraphInputs(v100, &v82);
  if (one-time initialization token for focusScopes != -1)
  {
    swift_once();
  }

  *&v80[0] = static CachedEnvironment.ID.focusScopes;
  swift_beginAccess();
  _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for [Namespace.ID], MEMORY[0x1E6981EA0], MEMORY[0x1E69E62F8]);
  v30 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(v100);
  v31 = type metadata accessor for SearchFieldState(0);
  v32 = v51;
  (*(*(v31 - 8) + 56))(v51, 1, 1, v31);
  v34 = v55;
  v33 = v56;
  *v55 = v27;
  v34[1] = v29;
  v34[2] = v30;
  v35 = outlined init with take of SearchFieldState?(v32, v34 + *(v33 + 44), type metadata accessor for SearchFieldState?);
  *&v82 = v66;
  DWORD2(v82) = v67;
  MEMORY[0x1EEE9AC00](v35);
  v49[-4] = a5;
  v49[-3] = a6;
  v49[-2] = v34;
  outlined init with copy of PreferencesInputs(&v66, v80);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  v84 = v96;
  v85 = v97;
  v86 = v98;
  v87 = v99;
  v82 = v94;
  v83 = v95;
  outlined init with copy of _ViewInputs(&v94, v80);
  _ViewInputs.implicitRootType.setter();
  _GraphInputs.pushStableIndex(_:)(1);
  *&v80[0] = v63;
  DWORD2(v80[0]) = v64;

  v36 = PreferencesOutputs.subscript.getter();

  if ((v36 & 0x100000000) != 0)
  {
    v37 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v37 = v36;
  }

  LODWORD(v80[0]) = v54;
  v38 = _GraphValue.value.getter();
  type metadata accessor for SearchPrimitiveModifier.BaseSearchImplementation();
  *&v80[0] = __PAIR64__(v38, v37);
  DWORD2(v80[0]) = v50;
  type metadata accessor for SearchPrimitiveModifier.MakeBaseView();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v78[2] = v84;
  v78[3] = v85;
  v78[4] = v86;
  v79 = v87;
  v78[0] = v82;
  v78[1] = v83;
  v74 = v84;
  v75 = v85;
  v76 = v86;
  v77 = v87;
  v72 = v82;
  v73 = v83;
  outlined init with copy of _ViewInputs(v78, v80);
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v80[2] = v74;
  v80[3] = v75;
  v80[4] = v76;
  v81 = v77;
  v80[0] = v72;
  v80[1] = v73;
  outlined destroy of _ViewInputs(v80);
  v39 = v63;
  *&v72 = v63;
  DWORD2(v72) = v64;

  PairwisePreferenceCombinerVisitor.init(outputs:)();
  v61 = v66;
  v62 = 0;
  v40 = *(v66 + 16);
  if (v40)
  {
    v54 = v39;
    outlined init with copy of PreferencesInputs(&v66, &v72);
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();
    v41 = 1;
    do
    {
      v42 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v42(&v72, 0);
      v62 = v41;
      static PreferenceKey.visitKey<A>(_:)();
      ++v41;
    }

    while (v41 - v40 != 1);
  }

  else
  {
    outlined init with copy of PreferencesInputs(&v66, &v72);
  }

  v43 = v68;
  v44 = v69;

  v59 = v43;
  v60 = v44;
  v57 = v66;
  v58 = v67;
  MEMORY[0x1EEE9AC00](v45);
  v49[-2] = &v94;
  outlined init with copy of PreferencesInputs(&v66, &v72);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v70[2] = v84;
  v70[3] = v85;
  v70[4] = v86;
  v71 = v87;
  v70[0] = v82;
  v70[1] = v83;
  outlined destroy of _ViewInputs(v70);
  v74 = v90;
  v75 = v91;
  v76 = v92;
  v77 = v93;
  v72 = v88;
  v73 = v89;
  outlined destroy of _ViewInputs(&v72);
  v46 = v53;
  *(v53 + 12) = v65;
  v47 = v59;
  LODWORD(v43) = v60;

  *v46 = v47;
  *(v46 + 8) = v43;
  return (*(v52 + 8))(v55, v56);
}

uint64_t type metadata completion function for SearchPrimitiveModifier.SearchConfigModifier()
{
  result = type metadata accessor for SearchField();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for TriggerSubmitAction?()
{
  if (!lazy cache variable for type metadata for TriggerSubmitAction?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TriggerSubmitAction?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SubmitScopeModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SubmitScopeModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SubmitScopeModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OnSubmitModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SubmitScopeModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>>, &lazy cache variable for type metadata for _ViewModifier_Content<SubmitScopeModifier>, lazy protocol witness table accessor for type SubmitScopeModifier and conformance SubmitScopeModifier);
    lazy protocol witness table accessor for type _ViewModifier_Content<SubmitScopeModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<SubmitScopeModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<SubmitScopeModifier>, lazy protocol witness table accessor for type SubmitScopeModifier and conformance SubmitScopeModifier);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TriggerSubmitAction?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TriggerSubmitAction?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SubmitScopeModifier>, _EnvironmentKeyWritingModifier<TriggerSubmitAction?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<OnSubmitModifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
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

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SubmitScopeModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<OnSubmitModifier>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in static SearchPrimitiveModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for SearchPrimitiveModifier();
  v3 = *(v2 + 36);
  v7[2] = v2;
  v8 = type metadata accessor for SearchField();
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, partial apply for closure #1 in static PointerOffset.of(_:), v7, v8, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v9;
}

uint64_t sub_18BEE41CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t initializeWithCopy for SearchPrimitiveModifier.FocusStoreListFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 44);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  v7 = type metadata accessor for SearchFieldState(0);
  v8 = *(v7 - 1);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    type metadata accessor for SearchFieldState?(0);
    memcpy(v5, v6, *(*(v9 - 8) + 64));
  }

  else
  {
    *v5 = *v6;
    v5[1] = v6[1];
    *(v5 + 1) = *(v6 + 1);
    *(v5 + 1) = *(v6 + 1);
    v5[8] = v6[8];
    v10 = v7[9];
    v11 = type metadata accessor for AttributedString();
    (*(*(v11 - 8) + 16))(&v5[v10], &v6[v10], v11);
    v5[v7[10]] = v6[v7[10]];
    v12 = v7[11];
    v13 = &v5[v12];
    v14 = &v6[v12];
    v13[4] = v14[4];
    *v13 = *v14;
    (*(v8 + 56))(v5, 0, 1, v7);
  }

  return a1;
}

uint64_t closure #2 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a3;
  v13 = a2;
  v14 = a5;
  v15 = a4;
  v6 = type metadata accessor for CollectionViewListRoot();
  v7 = *(v6 + 68);
  v11[2] = v6;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, closure #1 in static PointerOffset.of(_:)partial apply, v11, &type metadata for ListPadding, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12;
}

uint64_t sub_18BEE44B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t type metadata completion function for SearchPrimitiveModifier.BaseSearchImplementation()
{
  result = type metadata accessor for SearchField();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #5 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a3;
  v16 = a2;
  v17 = a5;
  v18 = a4;
  v8 = type metadata accessor for CollectionViewListRoot();
  v9 = *(v8 + 52);
  v14[2] = v8;
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, a6, v14, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

unint64_t instantiation function for generic protocol witness table for SearchFieldConfiguration.Scopes(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchFieldConfiguration.Scopes and conformance SearchFieldConfiguration.Scopes();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for SearchScopeToolbarContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _GraphInputs.selectionStorage<A>(forType:)()
{
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey();
  swift_getWitnessTable();
  _GraphInputs.subscript.getter();
  return v1;
}

void type metadata accessor for SourceInput<ListRowHeightTemplateContent>()
{
  if (!lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>)
  {
    lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent();
    v0 = type metadata accessor for SourceInput();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>);
    }
  }
}

uint64_t partial apply for closure #1 in Attribute.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = a3(0);
  return a4(a1, v10, v9, v8, a2);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  type metadata accessor for NavigationState.ListKey?(0, a3, a4, MEMORY[0x1E69E6720]);
  return a5(a1, v11, v10, v9, a2);
}

unint64_t lazy protocol witness table accessor for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle;
  if (!lazy protocol witness table cache variable for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_4(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    type metadata accessor for ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>);
    }
  }
}

uint64_t destroy for SearchPrimitiveModifier.FocusStoreListFilter(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 44);
  v3 = type metadata accessor for SearchFieldState(0);
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (!result)
  {
    v5 = *(v3 + 36);
    v6 = type metadata accessor for AttributedString();
    v7 = *(*(v6 - 8) + 8);

    return v7(v2 + v5, v6);
  }

  return result;
}

uint64_t initializeWithCopy for UpdateCollectionViewListCoordinator(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 100) = *(a2 + 100);
  swift_unknownObjectWeakCopyInit();
  v7 = a3[28];
  v8 = a1 + v7;
  v9 = a2 + v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for CollectionViewListDataSource();
  v11 = *(v10 - 1);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    v39 = v11;
    v40 = a3;
    v13 = *(v9 + 24);
    *(v8 + 24) = v13;
    (**(v13 - 8))(v8, v9);
    v14 = *(v9 + 48);
    *(v8 + 40) = *(v9 + 40);
    *(v8 + 48) = v14;
    v15 = *(v9 + 64);
    *(v8 + 56) = *(v9 + 56);
    *(v8 + 64) = v15;
    v16 = *(v9 + 80);
    *(v8 + 72) = *(v9 + 72);
    *(v8 + 80) = v16;
    v38 = v10[9];
    v17 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v37 = *(*(v17 - 8) + 16);
    v18 = v14;

    v37(v8 + v38, v9 + v38, v17);
    v19 = v10[10];
    v20 = v8 + v19;
    v21 = v9 + v19;
    v22 = *(v9 + v19 + 8);
    if (v22)
    {
      if (v22 == 1)
      {
        v23 = *(v21 + 48);
        *(v20 + 32) = *(v21 + 32);
        *(v20 + 48) = v23;
        *(v20 + 63) = *(v21 + 63);
        v24 = *(v21 + 16);
        *v20 = *v21;
        *(v20 + 16) = v24;
        v25 = v39;
LABEL_11:
        v28 = v10[11];
        v29 = (v8 + v28);
        v30 = (v9 + v28);
        v31 = v30[1];
        *v29 = *v30;
        v29[1] = v31;
        *(v8 + v10[12]) = *(v9 + v10[12]);
        *(v8 + v10[13]) = *(v9 + v10[13]);
        *(v8 + v10[14]) = *(v9 + v10[14]);
        v32 = *(v25 + 56);

        v32(v8, 0, 1, v10);
        a3 = v40;
        goto LABEL_12;
      }

      *v20 = *v21;
      *(v20 + 8) = v22;
      *(v20 + 16) = *(v21 + 16);

      v26 = *(v21 + 64);
      if ((v26 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *v20 = *v21;
      *(v20 + 16) = *(v21 + 16);
      v26 = *(v21 + 64);
      if ((v26 & 1) == 0)
      {
LABEL_9:
        v27 = *(v21 + 48);
        *(v20 + 48) = v27;
        (**(v27 - 8))(v20 + 24, v21 + 24);
        goto LABEL_10;
      }
    }

    *(v20 + 24) = *(v21 + 24);

LABEL_10:
    v25 = v39;
    *(v20 + 64) = v26;
    *(v20 + 65) = *(v21 + 65);
    goto LABEL_11;
  }

  v12 = type metadata accessor for Optional();
  memcpy(v8, v9, *(*(v12 - 8) + 64));
LABEL_12:
  v33 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  v34 = *(a2 + v33);
  *(a1 + v33) = v34;

  v35 = v34;
  return a1;
}

uint64_t sub_18BEE5304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

double static CollectionViewListUtilities.makeOutputs<A, B>(inputs:coordinator:coordinatorKind:scrollGeometry:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  *&v74 = a7;
  *(&v74 + 1) = a8;
  *&v73 = a5;
  *(&v73 + 1) = a6;
  v70 = a4;
  v72 = a2;
  v71 = a9;
  v105 = *MEMORY[0x1E69E9840];
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_1(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63 - v12;
  v14 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + 48);
  *&v101[16] = *(a1 + 32);
  v102 = v17;
  v103 = *(a1 + 64);
  v104 = *(a1 + 80);
  v18 = *(a1 + 16);
  v100 = *a1;
  *v101 = v18;
  v77 = 1;
  v83 = *(a1 + 48);
  v84 = *(a1 + 56);
  *&v85[0] = *(a1 + 48);
  DWORD2(v85[0]) = *(a1 + 56);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    static ScrollGeometry.zero.getter();
    v19 = 0;
    v75 = v85[1];
    v76 = v85[0];
    v66 = v86;
    v67 = v88;
    v68 = v87;
    v69 = v85[2];
    v20 = v89;
    v21 = v90;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v75 = 0u;
    v76 = 0u;
    v19 = v77;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
  }

  v22 = type metadata accessor for BridgedListState.ScrollTarget(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  v23 = static SemanticFeature.isEnabled.getter();
  v24 = 15.0;
  if (v23)
  {
    v24 = 16.0;
  }

  *v16 = v24;
  outlined init with take of BridgedListState.ScrollTarget?(v13, v16 + v14[5]);
  v25 = v16 + v14[6];
  v26 = v75;
  *v25 = v76;
  *(v25 + 1) = v26;
  v27 = v66;
  *(v25 + 2) = v69;
  *(v25 + 3) = v27;
  v28 = v67;
  *(v25 + 4) = v68;
  *(v25 + 5) = v28;
  *(v25 + 12) = v20;
  *(v25 + 13) = v21;
  v25[112] = v19;
  *(v16 + v14[7]) = 0;
  LODWORD(v76) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BridgedListState(v16);
  v85[0] = v100;
  *(&v85[1] + 8) = *&v101[8];
  *(&v85[2] + 1) = *&v101[24];
  *&v69 = *v101;
  *&v85[1] = *v101;
  v29 = _GraphInputs.scrollPhaseState.getter();
  LODWORD(v68) = *MEMORY[0x1E698D3F8];
  v65 = v29;
  if (v29 == v68)
  {
    default argument 1 of ScrollPhaseState.init(phase:velocity:)();
    ScrollPhaseState.init(phase:velocity:)();
    LOBYTE(v95[0]) = v85[0];
    *(v95 + 8) = *(v85 + 8);
    v29 = Attribute.init<A>(body:value:flags:update:)();
  }

  LODWORD(v85[0]) = v76;
  swift_unknownObjectWeakInit();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UpdateBridgedState and conformance UpdateBridgedState();
  v30 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UpdateBridgedState(v85);
  AGGraphGetFlags();
  AGGraphSetFlags();
  swift_unknownObjectWeakInit();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for UIScrollView?();
  lazy protocol witness table accessor for type ListScrollViewProvider and conformance ListScrollViewProvider();
  v31 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ListScrollViewProvider(v85);
  *&v66 = type metadata accessor for Scrollable();
  v32 = Attribute.init<A>(body:value:flags:update:)();
  v33 = v32;
  LODWORD(v95[0]) = v72;
  BYTE4(v95[0]) = a3 & 1;
  *(&v95[0] + 1) = __PAIR64__(v29, v30);
  v64 = v29;
  LODWORD(v75) = v31;
  LODWORD(v95[1]) = v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v73;
  v85[0] = v73;
  v35 = v74;
  v85[1] = v74;
  *(&v63 - 4) = type metadata accessor for ListRepresentable();
  v85[0] = v34;
  v85[1] = v35;
  Representable = type metadata accessor for MakeRepresentable();
  *(&v63 - 3) = Representable;
  *(&v63 - 2) = swift_getWitnessTable();
  v37 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v95, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, (&v63 - 6), Representable, MEMORY[0x1E69E73E0], v37, MEMORY[0x1E69E7410], v38);
  v96 = *&v101[16];
  v97 = v102;
  v98 = v103;
  v99 = v104;
  v95[0] = v100;
  v95[1] = *v101;
  outlined init with copy of _ViewInputs(&v100, v85);
  LODWORD(v67) = v33;
  _ViewInputs.scrollable.setter();
  if (v65 == v68)
  {
    MEMORY[0x18D003C90](v64);
  }

  PreferenceKeys.remove(_:)();
  _GraphValue.init(_:)();
  v91[2] = v96;
  v91[3] = v97;
  v91[4] = v98;
  v92 = v99;
  v91[0] = v95[0];
  v91[1] = v95[1];
  v85[1] = v95[1];
  v85[2] = v96;
  v86 = v97;
  v87 = v98;
  LODWORD(v88) = v99;
  v85[0] = v95[0];
  outlined init with copy of _ViewInputs(v91, v93);
  static View.makeDebuggableView(view:inputs:)();
  v93[2] = v85[2];
  v93[3] = v86;
  v93[4] = v87;
  v94 = v88;
  v93[0] = v85[0];
  v93[1] = v85[1];
  outlined destroy of _ViewInputs(v93);
  v39 = AGCreateWeakAttribute();
  v40 = AGCreateWeakAttribute();
  v41 = AGCreateWeakAttribute();
  *&v85[0] = v81;
  DWORD2(v85[0]) = LODWORD(v82);
  PreferencesOutputs.subscript.getter();
  v42 = AGCreateWeakAttribute();
  v43 = v42;
  v44 = HIDWORD(v42);
  type metadata accessor for [ScrollGeometryState](0, &lazy cache variable for type metadata for MutableBox<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E697DAC0]);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  v85[0] = v73;
  v85[1] = v74;
  *(&v85[1] + 1) = type metadata accessor for CollectionViewListScrollable();
  *&v85[2] = swift_getWitnessTable();
  v46 = swift_allocObject();
  *&v85[0] = v46;
  *(v46 + 16) = v39;
  *(v46 + 24) = v40;
  *(v46 + 32) = v41;
  *(v46 + 40) = v43;
  *(v46 + 44) = v44;
  *(v46 + 48) = v45;
  v47 = v67;
  AGGraphSetValue();
  __swift_destroy_boxed_opaque_existential_1(v85);
  *&v85[0] = v83;
  DWORD2(v85[0]) = v84;
  v48 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v85[0] = v83;
  DWORD2(v85[0]) = v84;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 || (v48)
  {
    LODWORD(v85[0]) = v47;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_1(0, &lazy cache variable for type metadata for [Scrollable], type metadata accessor for Scrollable, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v85[0]) = 0;
    PreferencesOutputs.subscript.setter();
    if (v48)
    {
      AccessibilityProperties.init()();
      LOBYTE(v85[0]) = 0;
      DWORD1(v85[0]) = v49;
      v50 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of AccessibilityScrollableModifier(v85);
      _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5(v50, &v100, v81, SLODWORD(v82));
      PreferencesOutputs.subscript.setter();
    }
  }

  LODWORD(v85[0]) = v76;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollGeometryProvider and conformance ScrollGeometryProvider();
  v51 = Attribute.init<A>(body:value:flags:update:)();
  v86 = v102;
  v87 = v103;
  LODWORD(v88) = v104;
  v85[0] = v100;
  v85[1] = *v101;
  v85[2] = *&v101[16];
  _ViewInputs.position.getter();
  ScrollGeometryTransformProvider.init(position:transform:)();
  *&v85[0] = v78;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider();
  v52 = Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v85[0]) = 2;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v78) = 0;
  v53 = GraphHost.intern<A>(_:for:id:)();

  *&v85[0] = __PAIR64__(v53, v51);
  DWORD2(v85[0]) = v52;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  v54 = MEMORY[0x1E69E62F8];
  type metadata accessor for [ScrollGeometryState](0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider();
  v55 = Attribute.init<A>(body:value:flags:update:)();
  *&v85[0] = v83;
  DWORD2(v85[0]) = v84;
  MEMORY[0x1EEE9AC00](v55);
  *(&v63 - 4) = v56;
  outlined init with copy of PreferencesInputs(&v83, &v78);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  AGGraphSetIndirectAttribute();
  swift_beginAccess();
  v86 = v102;
  v87 = v103;
  v57 = DWORD2(v103);
  LODWORD(v88) = v104;
  v85[0] = v100;
  v85[1] = *v101;
  v85[2] = *&v101[16];
  _ViewInputs.position.getter();
  ResolvedSafeAreaInsets.init(regions:environment:size:position:transform:safeAreaInsets:)();
  *&v85[0] = v78;
  *(v85 + 8) = v79;
  DWORD2(v85[1]) = v80;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ResolvedSafeAreaInsets and conformance ResolvedSafeAreaInsets();
  v58 = Attribute.init<A>(body:value:flags:update:)();
  v86 = v102;
  v87 = v103;
  LODWORD(v88) = v104;
  v85[0] = v100;
  v85[1] = *v101;
  v85[2] = *&v101[16];
  *&v85[0] = __PAIR64__(_ViewInputs.position.getter(), v75);
  *(&v85[0] + 1) = __PAIR64__(v58, v57);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for [ScrollGeometryState](0, &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, v54);
  lazy protocol witness table accessor for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider();
  v59 = Attribute.init<A>(body:value:flags:update:)();
  v78 = v83;
  LODWORD(v79) = v84;
  MEMORY[0x1EEE9AC00](v59);
  *(&v63 - 4) = v60;
  outlined init with copy of PreferencesInputs(&v83, v85);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v86 = v97;
  v87 = v98;
  LODWORD(v88) = v99;
  v85[0] = v95[0];
  v85[1] = v95[1];
  v85[2] = v96;
  outlined destroy of _ViewInputs(v85);
  v61 = v71;
  *v71 = v81;
  result = v82;
  v61[1] = v82;
  return result;
}

uint64_t sub_18BEE623C()
{

  return swift_deallocObject();
}

void type metadata accessor for BridgedListState.ScrollTarget?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_2(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ListRepresentable<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1580](a1, a2, a3, WitnessTable);
}

{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1580](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static CoreViewRepresentable.appendFeature(to:) in conformance ListRepresentable<A, B>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return static PlatformViewRepresentable.appendFeature(to:)(a1, a2, WitnessTable);
}

{
  WitnessTable = swift_getWitnessTable();

  return static PlatformViewRepresentable.appendFeature(to:)(a1, a2, WitnessTable);
}

uint64_t instantiation function for generic protocol witness table for ListRepresentable<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for UpdateCoalescingCollectionView()
{
  _s10Foundation9IndexPathVSgMaTm_2(319, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for [ScrollGeometryState](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider()
{
  result = lazy protocol witness table cache variable for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider;
  if (!lazy protocol witness table cache variable for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider()
{
  result = lazy protocol witness table cache variable for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider;
  if (!lazy protocol witness table cache variable for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider);
  }

  return result;
}

void destroy for UpdateCollectionViewListCoordinator(uint64_t a1, uint64_t a2)
{
  MEMORY[0x18D011290](a1 + 104);
  v4 = a1 + *(a2 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for CollectionViewListDataSource();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    __swift_destroy_boxed_opaque_existential_1(v4);

    v6 = *(v5 + 36);
    v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
    v8 = v4 + *(v5 + 40);
    v9 = *(v8 + 8);
    if (v9)
    {
      if (v9 == 1)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    if (*(v8 + 64))
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v8 + 24);
    }

    goto LABEL_8;
  }

LABEL_9:

  v10 = *(a1 + *(a2 + 120));
}

unint64_t lazy protocol witness table accessor for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection()
{
  result = lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection;
  if (!lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection;
  if (!lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection;
  if (!lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringToAttributedStringProjection and conformance StringToAttributedStringProjection);
  }

  return result;
}

uint64_t outlined init with copy of Binding<AttributedString>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7BindingVy10Foundation16AttributedStringVGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized static SearchSuggestionsPlacement.Role.initial.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = [v0 currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  type metadata accessor for _SemanticFeature<Semantics_v4>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    if (v4 == 5)
    {
      static Semantics.v4_4.getter();
      v5 = isLinkedOnOrAfter(_:)() ^ 1;
    }

    else
    {
      v5 = v2 != 2;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t initializeWithCopy for SearchFieldState(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[9];
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
  v8 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *v10;
  *(v9 + 4) = *(v10 + 4);
  return a1;
}

void type metadata accessor for Binding<String>()
{
  if (!lazy cache variable for type metadata for Binding<String>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<String>);
    }
  }
}

uint64_t outlined assign with take of Binding<TextSelection?>?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t initializeWithCopy for SearchModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  outlined copy of Text.Storage(v6, v7, v8);
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  *(v4 + 32) = *(v5 + 32);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v13 = *(v10 + 80);
  v14 = (v13 + 40 + v4) & ~v13;
  v15 = (v13 + 40 + v5) & ~v13;

  v11(v14, v15, v9);
  v16 = *(v12 + 48);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v20 = v18 + 16;
  v21 = *(v18 + 80);
  v22 = v21 | 7;
  v23 = (v21 | 7) + v16;
  v24 = ((v23 + v14) & ~(v21 | 7));
  v25 = ((v23 + v15) & ~(v21 | 7));
  *v24 = *v25;
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = v26 + v21 + 8;
  v29 = v27 + v21 + 8;

  v47 = v19;
  v48 = v17;
  v19(v28 & ~v21, v29 & ~v21, v17);
  v30 = *(v20 + 48);
  v31 = v30 + ((v21 + 16) & ~v21) + 7;
  v32 = (v24 + v31) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v25 + v31) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v33 + 17);
  if (v34 >= 2)
  {
    v34 = *v33 + 2;
  }

  v35 = ~v22;
  v36 = ~v21;
  if (v34 == 1)
  {
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
    *(v32 + 16) = *(v33 + 16);

    v37 = 1;
  }

  else
  {
    v37 = 0;
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
  }

  *(v32 + 17) = v37;
  v38 = (v22 + 18 + v32) & v35;
  v39 = (v22 + 18 + v33) & v35;
  *v38 = *v39;
  *(v38 + 1) = *(v39 + 1);
  *(v38 + 2) = *(v39 + 2);
  *(v38 + 3) = *(v39 + 3);
  v40 = *(v39 + 4);
  *(v38 + 8) = *(v39 + 8);
  *(v38 + 4) = v40;
  v41 = (v21 + 9 + v38) & v36;
  v42 = (v21 + 9 + v39) & v36;
  v47(v41, v42, v48);
  *(v41 + v30) = *(v42 + v30);
  v43 = (v41 + v30) & 0xFFFFFFFFFFFFFFFCLL;
  v44 = (v42 + v30) & 0xFFFFFFFFFFFFFFFCLL;
  v45 = *(v44 + 4);
  *(v43 + 8) = *(v44 + 8);
  *(v43 + 4) = v45;
  *((v30 + ((v21 + 9) & v36) + 16 + v38) & 0xFFFFFFFFFFFFFFF8) = *((v30 + ((v21 + 9) & v36) + 16 + v39) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithCopy for TextField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a3 + 16);
  v7 = *(*(v6 - 8) + 16);
  v8 = *(v6 - 8) + 16;
  v9 = *(*(v6 - 8) + 80);
  v10 = (v9 + 33 + a1) & ~v9;
  v11 = (v9 + 33 + a2) & ~v9;

  v7(v10, v11, v6);
  v12 = *(v8 + 48);
  v13 = v12 + v10;
  v14 = v12 + v11;
  *v13 = *v14;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  if (*((v14 & 0xFFFFFFFFFFFFFFF8) + 32) < 0xFFFFFFFFuLL)
  {
    v20 = *(v16 + 8);
    *(v15 + 24) = *(v16 + 24);
    *(v15 + 8) = v20;
  }

  else
  {
    v17 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    outlined copy of Text.Storage(v17, v18, v19);
    *(v15 + 8) = v17;
    *(v15 + 16) = v18;
    *(v15 + 24) = v19;
    *(v15 + 32) = *(v16 + 32);
  }

  v21 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 108);
  if (v23 >= 2)
  {
    v23 = *v22 + 2;
  }

  if (v23 == 1)
  {
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
    *(v21 + 16) = *(v22 + 16);
    *(v21 + 24) = *(v22 + 24);
    v24 = *(v22 + 32);

    if (v24)
    {
      v25 = *(v22 + 40);
      *(v21 + 32) = v24;
      *(v21 + 40) = v25;
      v26 = *(v22 + 56);
      *(v21 + 48) = *(v22 + 48);
      *(v21 + 56) = v26;
    }

    else
    {
      v30 = *(v22 + 48);
      *(v21 + 32) = *(v22 + 32);
      *(v21 + 48) = v30;
    }

    v31 = *(v22 + 64);
    if (v31)
    {
      v32 = *(v22 + 72);
      *(v21 + 64) = v31;
      *(v21 + 72) = v32;
      v33 = *(v22 + 88);
      *(v21 + 80) = *(v22 + 80);
      *(v21 + 88) = v33;
    }

    else
    {
      v38 = *(v22 + 80);
      *(v21 + 64) = *(v22 + 64);
      *(v21 + 80) = v38;
    }

    *(v21 + 96) = *(v22 + 96);
    v39 = *(v22 + 100);
    *(v21 + 104) = *(v22 + 104);
    *(v21 + 100) = v39;
    *(v21 + 105) = *(v22 + 105);
    *(v21 + 106) = *(v22 + 106);
    *(v21 + 107) = *(v22 + 107);
    *(v21 + 108) = 1;
  }

  else
  {
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
    v27 = *(v22 + 16);

    if (v27)
    {
      v28 = *(v22 + 24);
      *(v21 + 16) = v27;
      *(v21 + 24) = v28;
      v29 = *(v22 + 40);
      *(v21 + 32) = *(v22 + 32);
      *(v21 + 40) = v29;
    }

    else
    {
      v34 = *(v22 + 32);
      *(v21 + 16) = *(v22 + 16);
      *(v21 + 32) = v34;
    }

    v35 = *(v22 + 48);
    if (v35)
    {
      v36 = *(v22 + 56);
      *(v21 + 48) = v35;
      *(v21 + 56) = v36;
      v37 = *(v22 + 72);
      *(v21 + 64) = *(v22 + 64);
      *(v21 + 72) = v37;
    }

    else
    {
      v40 = *(v22 + 64);
      *(v21 + 48) = *(v22 + 48);
      *(v21 + 64) = v40;
    }

    *(v21 + 80) = *(v22 + 80);
    v41 = *(v22 + 84);
    *(v21 + 88) = *(v22 + 88);
    *(v21 + 84) = v41;
    *(v21 + 89) = *(v22 + 89);
    *(v21 + 90) = *(v22 + 90);
    *(v21 + 91) = *(v22 + 91);
    *(v21 + 96) = *(v22 + 96);
    *(v21 + 108) = 0;
  }

  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v43 = *(v42 - 8);
  v44 = *(v43 + 80) & 0xF8 | 7;
  v45 = ~v44;
  v46 = ((v21 + v44 + 109) & ~v44);
  v47 = ((v22 + v44 + 109) & ~v44);
  if (*(v43 + 64) <= 0x10uLL)
  {
    v48 = 16;
  }

  else
  {
    v48 = *(v43 + 64);
  }

  v49 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v49 < 0xFFFFFFFFuLL)
  {
    v56 = ((v44 + 16) & v45) + v48 + 2;
    v57 = ((v21 + v44 + 109) & ~v44);
LABEL_31:
    memcpy(v57, v47, v56);
    return a1;
  }

  v50 = v42;
  *v46 = *v47;
  v51 = ((v46 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v51 = *v49;
  v52 = v44 + 8;
  v53 = ((v51 + v52) & v45);
  v54 = ((v49 + v52) & v45);
  v55 = *(v54 + v48);

  if (v55 > 1)
  {
    v57 = v53;
    v47 = v54;
    v56 = v48 + 2;
    goto LABEL_31;
  }

  if (v55 == 1)
  {
    (*(v43 + 16))(v53, v54, v50);
    v58 = 1;
  }

  else
  {
    v58 = 0;
    *v53 = *v54;
  }

  *(v53 + v48) = v58;
  *(v53 + v48 + 1) = *(v54 + v48 + 1);
  return a1;
}

uint64_t destroy for SearchModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Text.Storage(*((a1 & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + 16), *(v3 + 24));

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (v3 + *(v4 + 80) + 40) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(v5 + 56);
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + (v10 | 7)) & ~(v10 | 7);

  v12 = *(v9 + 8);
  v12((v10 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10, v8);
  v13 = (((v10 + 16) & ~v10) + *(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 17);
  if (v14 >= 2)
  {
    v14 = *v13 + 2;
  }

  if (v14 == 1)
  {
  }

  v12((v10 + 9 + (((v10 | 7) + v13 + 18) & ~(v10 | 7))) & ~v10, v8);
}

void destroy for TextField(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 33) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (v6 + *(v5 + 56)) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 32) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*(v7 + 8), *(v7 + 16), *(v7 + 24));
  }

  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 108);
  if (v9 >= 2)
  {
    v9 = *v8 + 2;
  }

  if (v9 != 1)
  {

    if (*(v8 + 16))
    {
    }

    if (!*(v8 + 48))
    {
      goto LABEL_15;
    }

LABEL_14:

LABEL_15:

    goto LABEL_16;
  }

  if (*(v8 + 32))
  {
  }

  if (*(v8 + 64))
  {
    goto LABEL_14;
  }

LABEL_16:
  type metadata accessor for TextField<Text>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80) & 0xF8 | 7;
  v13 = ((((v8 + v12 + 109) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    v14 = *(v11 + 64) <= 0x10uLL ? 16 : *(v11 + 64);
    v16 = *(v10 - 8);

    if (*(((v13 + v12 + 8) & ~v12) + v14) == 1)
    {
      v15 = *(v16 + 8);

      v15();
    }
  }
}

uint64_t assignWithTake for SearchFieldState(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[9];
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *v10;
  *(v9 + 4) = *(v10 + 4);
  return a1;
}

uint64_t SearchModifier.primitiveModifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SearchField();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v2, a1, v9);
  SearchModifier.searchField.getter(a1, v7);
  return SearchPrimitiveModifier.init(base:searchField:)(v11, v7, a2);
}

uint64_t SearchModifier.searchField.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SearchModifier.adjustedState.getter(a1, v12);
  v13 = v2 + *(a1 + 48);
  v14 = *v13;
  v15 = *(v13 + 8);
  if (*(v13 + 17))
  {
    v16 = *(v13 + 16);
  }

  else
  {
    v18[8] = v14 & 1;
    v19 = v15;
    _s7SwiftUI5StateVySbGMaTm_2(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    v14 = v20;
    v15 = v21;
    v16 = v22;
  }

  (*(v7 + 16))(v9, v3 + *(a1 + 40), v6);
  return SearchField.init(state:isPresented:control:)(v12, v14, v15, v16 & 1, v9, v6, a2);
}

unint64_t lazy protocol witness table accessor for type SearchZipLocation and conformance SearchZipLocation()
{
  result = lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation;
  if (!lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation;
  if (!lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchZipLocation and conformance SearchZipLocation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchStateProjection and conformance SearchStateProjection()
{
  result = lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection;
  if (!lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection;
  if (!lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection;
  if (!lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchStateProjection and conformance SearchStateProjection);
  }

  return result;
}

uint64_t SearchPrimitiveModifier.MakeBaseView.value.getter@<X0>(int a1@<W0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v16[1] = a2;
  v17 = a3;
  v4 = type metadata accessor for SearchField();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = type metadata accessor for SearchPrimitiveModifier();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *AGGraphGetValue();
  }

  SearchPrimitiveModifier.MakeBaseView.modifier.getter(v11);
  (*(v5 + 16))(v7, &v11[*(v8 + 36)], v4);
  (*(v9 + 8))(v11, v8);
  type metadata accessor for SearchPrimitiveModifier.ForwardedEnvironment();
  Value = AGGraphGetValue();
  v14 = *(Value + 8);
  SearchPrimitiveModifier.BaseSearchImplementation.init(isSearchImplementedByChild:searchField:forwardEnv:)(v12, v7, *Value, v14, *(Value + 16), v17);
  return outlined copy of AppIntentExecutor?(v14);
}