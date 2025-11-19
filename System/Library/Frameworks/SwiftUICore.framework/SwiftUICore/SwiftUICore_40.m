uint64_t specialized HierarchicalShapeStyle.apply<A>(_:to:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = HIDWORD(a2);
  v7 = *(a3 + 24);
  if (a4)
  {
    v8 = a4;
    if (v7 == 3)
    {
      type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<OffsetShapeStyle<ForegroundMaterialStyle>>, &lazy cache variable for type metadata for OffsetShapeStyle<ForegroundMaterialStyle>, &type metadata for ForegroundMaterialStyle, &protocol witness table for ForegroundMaterialStyle);
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      *(v10 + 24) = a2;
      *(v10 + 28) = v6;
      *(v10 + 32) = v8;
      outlined copy of Material.ID(a1, a2);
      outlined copy of Material.ID(a1, a2);
      outlined consume of Material.ID(a1, a2);
      result = outlined consume of _ShapeStyle_Shape.Result(*(a3 + 32), *(a3 + 40));
      *(a3 + 32) = v10;
LABEL_6:
      *(a3 + 40) = 2;
      return result;
    }

    outlined copy of Material.ID(a1, a2);
    specialized OffsetShapeStyle._apply(to:)(a3, a1, a2 & 0xFFFFFFFF000000FFLL, v8);

    return outlined consume of Material.ID(a1, a2);
  }

  else
  {
    if (v7 == 3)
    {
      type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<ForegroundMaterialStyle>, &type metadata for ForegroundMaterialStyle, &protocol witness table for ForegroundMaterialStyle, type metadata accessor for ShapeStyleBox);
      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;
      *(v13 + 28) = v6;
      v14 = *(a3 + 32);
      v15 = *(a3 + 40);
      outlined copy of Material.ID(a1, a2);
      result = outlined consume of _ShapeStyle_Shape.Result(v14, v15);
      *(a3 + 32) = v13;
      goto LABEL_6;
    }

    return ForegroundMaterialStyle._apply(to:)(a3);
  }
}

uint64_t ForegroundMaterialStyle._apply(to:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (v4 == 1)
  {
    outlined copy of Material.ID(*v1, 1u);
LABEL_6:
    (*(*v3 + 88))(a1);
  }

  v5 = *(v1 + 12);
  v42 = *(a1 + 48);
  result = EnvironmentValues.systemMaterialDefinition.getter();
  if (result)
  {
    v23 = v3;
    v24 = v4;
    v25 = v5;
    (*(v7 + 8))(&v27, &v23, result, v7);
    if (*(&v28 + 1))
    {
      outlined init with take of AnyTrackedValue(&v27, &v42);
      v8 = *(&v43 + 1);
      v9 = v44;
      v10 = __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      v3 = project #1 <A>(provider:) in EnvironmentValues.materialProvider(for:)(v10, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(&v42);
      goto LABEL_6;
    }

    result = outlined destroy of MaterialProvider?(&v27);
  }

  if (*(a1 + 24) <= 2u)
  {
    if (!*(a1 + 24))
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      return result;
    }

    if (*(a1 + 24) != 1)
    {
      return SystemColorsStyle._apply(to:)(a1);
    }

    v11 = *(a1 + 8);
    if (v11 != *(a1 + 16))
    {
      v12 = *a1;
      if (v11 <= 4)
      {
        v13 = *(a1 + 8);
        if (v13 > 4u)
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        LOBYTE(v13) = 4;
      }

      v14 = *(a1 + 48);
      v15 = *(a1 + 80);
      v38 = *(a1 + 64);
      v39[0] = v15;
      *(v39 + 12) = *(a1 + 92);
      v16 = *(a1 + 16);
      v35[0] = *a1;
      v35[1] = v16;
      v17 = *(a1 + 48);
      v19 = *a1;
      v18 = *(a1 + 16);
      v36 = *(a1 + 32);
      v37 = v17;
      v20 = *(a1 + 80);
      v46 = v38;
      *v47 = v20;
      *&v47[12] = *(a1 + 92);
      v42 = v19;
      v43 = v18;
      v44 = v36;
      v45 = v14;
      v26 = v13;
      v23 = v3;
      v24 = v4;
      v25 = v5;
      outlined copy of Material.ID(v3, v4);
      outlined init with copy of _ShapeStyle_Shape(v35, &v27);
      _ShapeStyle_Shape.resolveStyle(id:material:)(&v26, &v23, &v27);
      outlined consume of Material.ID(v23, v24);
      v40[4] = v46;
      v41[0] = *v47;
      *(v41 + 12) = *&v47[12];
      v40[0] = v42;
      v40[1] = v43;
      v40[2] = v44;
      v40[3] = v45;
      outlined destroy of _ShapeStyle_Shape(v40);
      v46 = v31;
      *v47 = v32;
      *&v47[16] = v33;
      v48 = v34;
      v42 = v27;
      v43 = v28;
      v44 = v29;
      v45 = v30;
      v26 = v12;
      if (*(a1 + 40) == 1)
      {
        v21 = *(a1 + 32);
        outlined init with copy of _ShapeStyle_Pack.Style(&v42, &v23);
        outlined copy of _ShapeStyle_Shape.Result(v21, 1u);
        outlined consume of _ShapeStyle_Shape.Result(v21, 1u);
        *(a1 + 32) = 0;
        *(a1 + 40) = 5;
      }

      else
      {
        outlined init with copy of _ShapeStyle_Pack.Style(&v42, &v23);
        v21 = MEMORY[0x1E69E7CC0];
      }

      v23 = v21;
      _ShapeStyle_Pack.subscript.setter(&v27, &v26, v11);
      outlined destroy of _ShapeStyle_Pack.Style(&v42);
      v22 = v23;
      result = outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = v22;
      *(a1 + 40) = 1;
    }
  }

  return result;
}

uint64_t EnvironmentValues.systemMaterialDefinition.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA024SystemMaterialDefinitionI033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt1g5(v1);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA024SystemMaterialDefinitionS033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(*v0);
    if (v3)
    {
      return v3[9];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA024SystemMaterialDefinitionI033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA024SystemMaterialDefinitionS033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(a1);
    if (v12)
    {
      v19[0] = *(v12 + 9);
    }

    else
    {
      v19[0] = 0u;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v10 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for SystemMaterialDefinitionKey.Wrapper?, &type metadata for SystemMaterialDefinitionKey.Wrapper, MEMORY[0x1E69E6720]);
    v11(v19);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA024SystemMaterialDefinitionS033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
      v15 = v13[10];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *&v19[0] = v14;
    *(&v19[0] + 1) = v15;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>();
    v21 = v16;
    v22 = &protocol witness table for TrackedValue<A>;
    v20[0] = v14;
    v20[1] = v15;
    specialized Dictionary.subscript.setter(v20, v6);
  }

LABEL_14:
  v17 = *&v19[0];
  os_unfair_lock_unlock((v3 + 16));

  return v17;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA024SystemMaterialDefinitionS033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024SystemMaterialDefinitionV033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024SystemMaterialDefinitionV033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA024SystemMaterialDefinitionV033_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemMaterialDefinitionKey>>);
    }
  }
}

unint64_t TextForegroundKeyColorModifier.modify(style:environment:)(uint64_t a1, __int128 *a2)
{
  v6 = *(a1 + 16);
  v5 = *a2;
  outlined copy of Text.Style.TextStyleColor(v6);
  v3 = Text.Style.TextStyleColor.baseStyle(in:)(&v5);
  outlined consume of Gradient.ProviderTag(v6);
  result = outlined consume of Gradient.ProviderTag(*(a1 + 16));
  *(a1 + 16) = v3 | 0x4000000000000000;
  return result;
}

double _ShapeStyle_Shape.resolveStyle(id:material:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 12);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v11 = *(v3 + 105);
  v12 = *(v3 + 106);
  v34 = v9;
  v35 = v10;
  *&v32[0] = v6;
  BYTE8(v32[0]) = v7;
  HIDWORD(v32[0]) = v8;

  v13 = EnvironmentValues.materialProvider(for:)(v32);
  if (v13)
  {
    v19 = v5;
    v26 = 1;
    v25 = 1;
    *&v27 = v9;
    *(&v27 + 1) = v10;
    LOBYTE(v28) = 3;
    BYTE1(v28) = v12;
    v29 = 0;
    *&v30 = 0;
    BYTE8(v30) = 1;
    memset(v31, 0, 24);
    v31[24] = 1;
    v22 = v30;
    v23[0] = 0uLL;
    *(v23 + 9) = *&v31[9];
    v20 = v27;
    v21 = v28;
    v14 = v11;
    v15 = *(*v13 + 80);
    outlined copy of Material.ID(v6, v7);
    outlined init with copy of Material.Context(&v27, &v34);
    v15(&v24, &v20);
    v11 = v14;

    v32[2] = v22;
    v33[0] = v23[0];
    *(v33 + 9) = *(v23 + 9);
    v32[0] = v20;
    v32[1] = v21;
    outlined destroy of Material.Context(v32);
    v34 = v9;
    v35 = v10;
    v36 = 3;
    v5 = v19;
    v37 = v12;
    v38 = 0;
    v39 = 0;
    v40 = 1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    v44 = 1;
    outlined destroy of Material.Context(&v34);
    v16 = v24;
    outlined consume of Material.ID(v6, v7);
    v7 = 2;
    outlined copy of Material.ID(v16, 2u);
    outlined consume of Material.ID(v16, 2u);
    v6 = v16;
  }

  else
  {
    v34 = v9;
    v35 = v10;
    v8 |= specialized Material.ResolvedMaterial.Flags.init(environment:)(&v34);
    outlined copy of Material.ID(v6, v7);
  }

  *(a3 + 88) = 1065353216;
  v17 = 1.0;
  *(a3 + 96) = 0;
  *(a3 + 104) = -1;
  if ((v8 & 1) == 0)
  {
    v17 = 0.0;
  }

  *(a3 + 112) = MEMORY[0x1E69E7CC0];
  *a3 = v17;
  *(a3 + 4) = v17;
  *(a3 + 8) = v17;
  result = 2.24711695e307;
  *(a3 + 12) = 0x7FC000003F800000;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  *(a3 + 36) = v8;
  *(a3 + 40) = v5;
  *(a3 + 41) = v11;
  *(a3 + 85) = 2;
  return result;
}

uint64_t specialized Material.ResolvedMaterial.Flags.init(environment:)(void *a1)
{
  v2 = a1[1];
  v10 = *a1;
  v1 = v10;
  v11 = v2;
  EnvironmentValues.colorScheme.getter(&v9);
  v3 = v9;
  v10 = v1;
  v11 = v2;
  v4 = EnvironmentValues._accessibilityReduceTransparency.getter();
  if (v2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v1, &v10);

    v5 = v10;
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v1);
    if (v6)
    {
      v5 = *(v6 + 72);
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v3 | 2;
  if ((v4 & 1) == 0)
  {
    v7 = v3;
  }

  if (v5)
  {
    return v7 | 4;
  }

  else
  {
    return v7;
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA031AccessibilityReduceTransparencyI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilityReduceTransparencyS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 2;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>, &type metadata for AccessibilityReduceTransparencyKey, &protocol witness table for AccessibilityReduceTransparencyKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilityReduceTransparencyS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 2;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>, &type metadata for AccessibilityReduceTransparencyKey, &protocol witness table for AccessibilityReduceTransparencyKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityReduceTransparencyKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceTransparencyKey>>);
    }
  }
}

uint64_t _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 16);
  v8 = *(a2 + 80);
  v195 = *(a2 + 64);
  v196 = v8;
  v197 = *(a2 + 96);
  v198 = *(a2 + 112);
  v9 = *(a2 + 16);
  v191 = *a2;
  v192 = v9;
  v10 = *(a2 + 48);
  v193 = *(a2 + 32);
  v194 = v10;
  v11 = *a3;
  v12 = *(v3 + 128);
  v13 = *(v3 + 136);
  Value = AGGraphGetValue();
  v15 = *Value;
  v142 = v11;
  if (*(Value + 8))
  {

    swift_retain_n();
    v16 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v15);
  }

  else
  {

    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v17);
    if (v18)
    {
      v16 = v18[9];
    }

    else
    {
      v16 = 1.0;
    }
  }

  v19 = ResolvedStyledText.layers(for:renderer:deviceScale:)(v5, v12, v13, v16);
  v21 = v20;
  v23 = v22;
  v24 = (*(*v6 + 184))();
  v26 = v25;
  swift_beginAccess();
  v27 = *(v6 + 168);
  v28 = -(v26 - *(v6 + 176));
  swift_beginAccess();
  v148 = v6;
  if ((*(v6 + 43) & 1) == 0)
  {
    v28 = v28 - *(v6 + 104);
  }

  v143 = v19;
  v29 = MEMORY[0x1E69C7148];
  v30 = v7 | 0x200;
  v150 = v24 - v27;
  if (!v5)
  {
    v30 = v7;
  }

  v149 = v30;
  if (v23)
  {
    v31 = *(v3 + 108);
    v32 = *(v3 + 192);
    [swift_unknownObjectRetain() boundingRect];
    x = v199.origin.x;
    y = v199.origin.y;
    width = v199.size.width;
    height = v199.size.height;
    IsNull = CGRectIsNull(v199);
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    v41 = 0.0;
    if (!IsNull)
    {
      v38 = x;
      v39 = y;
      v40 = width;
      v41 = height;
    }

    v200 = CGRectIntegral(*&v38);
    v42 = v200.origin.x;
    v43 = v200.origin.y;
    v44 = v200.size.width;
    v45 = v200.size.height;
    v46 = swift_allocObject();
    *(v46 + 16) = v23;
    *(v46 + 24) = v42;
    *(v46 + 32) = v43;
    v47 = one-time initialization token for defaultFlags;
    swift_unknownObjectRetain();
    if (v47 != -1)
    {
      swift_once();
    }

    v48 = static RasterizationOptions.Flags.defaultFlags | v149;
    *(v46 + 40) = -1;
    *(v46 + 44) = 768;
    *(v46 + 48) = v48;
    *(v46 + 52) = 3;
    v175.f64[0] = v28 + v42;
    v175.f64[1] = v43 - v150;
    *&v176 = v44;
    *(&v176 + 1) = v45;
    *&v177 = v32;
    *(&v177 + 1) = v46 | 0xC000000000000000;
    *&v179 = 0;
    v178 = v31;
    DWORD2(v179) = 0;
    v158 = 0uLL;
    LOBYTE(v159) = 3;
    v190 = 0;
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v183 = 0u;
    _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(&v158, &v183, v4);
    v50 = *(v4 + 200);
    v49 = *(v4 + 208);
    v51 = *(v4 + 216);
    v52 = *(v4 + 224);
    outlined init with copy of DisplayList.Item(&v175, &v183);
    outlined consume of DisplayList.Item.Value(v50, v49, v51, v52);
    *(v4 + 200) = v46 | 0xC000000000000000;
    *(v4 + 208) = v31;
    *(v4 + 216) = 0;
    *(v4 + 224) = 0;
    v53 = v176;
    *(v4 + 160) = vaddq_f64(v175, *(v4 + 160));
    *(v4 + 176) = v53;
    _ShapeStyle_RenderedLayers.endLayer(shape:)(v4);
    outlined destroy of DisplayList.Item(&v175);
    swift_unknownObjectRelease();
  }

  v145 = v29[1];
  v146 = *v29;
  v54 = v29[3];
  v144 = v29[2];
  v55 = [objc_allocWithZone(MEMORY[0x1E69C70C0]) init];
  v56 = *(v21 + 16);
  v147 = v55;
  if (v56)
  {
    v57 = *MEMORY[0x1E69C7138];

    v58 = (v21 + 16 * v56 + 24);
    while (1)
    {
      v59 = *(v58 - 1);
      if ((v59 & 0x8000000000000000) != 0)
      {
        break;
      }

      v60 = *(v148 + 264);
      if (v59 >= *(v60 + 16))
      {
        goto LABEL_38;
      }

      v61 = v28;
      v62 = *v58;
      v63 = v60 + 120 * v59;
      v64 = *(v63 + 32);
      v65 = *(v63 + 48);
      v66 = *(v63 + 80);
      v185 = *(v63 + 64);
      v186 = v66;
      v183 = v64;
      v184 = v65;
      v67 = *(v63 + 96);
      v68 = *(v63 + 112);
      v69 = *(v63 + 128);
      v190 = *(v63 + 144);
      v188 = v68;
      v189 = v69;
      v187 = v67;
      swift_unknownObjectRetain();
      outlined init with copy of _ShapeStyle_Pack.Style(&v183, &v175);
      [v55 removeAll];
      LODWORD(v70) = -1.0;
      LODWORD(v71) = -1.0;
      LODWORD(v72) = vcvts_n_f32_u64(v59, 0xAuLL);
      LODWORD(v73) = v57;
      LODWORD(v75) = v145;
      LODWORD(v74) = v146;
      LODWORD(v76) = v144;
      LODWORD(v77) = v54;
      [v55 addColorReplacementFrom:2 to:v70 colorSpace:{v71, v72, v73, v74, v75, v76, v77}];
      v154 = *(v4 + 108);
      v78 = *(v4 + 192);
      v79 = [v55 copyApplyingToDisplayList_];
      [v79 boundingRect];
      v80 = v201.origin.x;
      v81 = v201.origin.y;
      v82 = v201.size.width;
      v83 = v201.size.height;
      v84 = CGRectIsNull(v201);
      if (v84)
      {
        v85 = 0.0;
      }

      else
      {
        v85 = v80;
      }

      if (v84)
      {
        v86 = 0.0;
      }

      else
      {
        v86 = v81;
      }

      if (v84)
      {
        v87 = 0.0;
      }

      else
      {
        v87 = v82;
      }

      if (v84)
      {
        v88 = 0.0;
      }

      else
      {
        v88 = v83;
      }

      v202 = CGRectIntegral(*&v85);
      v89 = v202.origin.x;
      v90 = v202.origin.y;
      v91 = v202.size.width;
      v92 = v202.size.height;
      v93 = swift_allocObject();
      *(v93 + 16) = v79;
      *(v93 + 24) = v89;
      *(v93 + 32) = v90;
      v94 = one-time initialization token for defaultFlags;
      swift_unknownObjectRetain();
      if (v94 != -1)
      {
        swift_once();
      }

      v95 = static RasterizationOptions.Flags.defaultFlags;
      swift_unknownObjectRelease();
      *(v93 + 40) = -1;
      *(v93 + 44) = 768;
      *(v93 + 48) = v149 | v95 | 0x40;
      *(v93 + 52) = 3;
      v96 = v61 + v89;
      v28 = v61;
      *&v167 = v96;
      *(&v167 + 1) = v90 - v150;
      *&v168 = v91;
      *(&v168 + 1) = v92;
      *&v169 = v78;
      *(&v169 + 1) = v93 | 0xC000000000000000;
      v170 = v154;
      v171 = 0;
      v172 = 0;
      v165[0] = v59;
      v165[1] = 0;
      v166 = 1;
      v163[0] = v188;
      v163[1] = v189;
      v164 = v190;
      v158 = v183;
      v159 = v184;
      v160 = v185;
      v161 = v186;
      v162 = v187;
      outlined init with copy of _ShapeStyle_Pack.Style(&v183, v156);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v165, &v158, v4);
      v179 = v162;
      v180 = v163[0];
      v181 = v163[1];
      v175 = v158;
      v176 = v159;
      v182 = v164;
      v177 = v160;
      v178 = v161;
      outlined destroy of _ShapeStyle_Pack.Style?(&v175, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v97 = v172;
      v98 = v171 & 0xFFFFFFFFC000FFFFLL;
      v99 = *(v4 + 64);
      v100 = *(v4 + 80);
      v101 = *(v4 + 32);
      v173[3] = *(v4 + 48);
      v173[4] = v99;
      v174[0] = v100;
      *(v174 + 12) = *(v4 + 92);
      v102 = *(v4 + 16);
      v173[0] = *v4;
      v173[1] = v102;
      v173[2] = v101;
      v153 = v169;
      v155 = v167;
      v151 = v170;
      v152 = v168;
      outlined init with copy of DisplayList.Item(&v167, &v158);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(v173);
      *v4 = v155;
      *(v4 + 16) = v152;
      *(v4 + 32) = v153;
      *(v4 + 48) = v151;
      *(v4 + 64) = v98;
      *(v4 + 72) = v97 | 0x100000000;
      *(v4 + 104) = 0x80000000;
      v163[0] = v188;
      v163[1] = v189;
      v164 = v190;
      v158 = v183;
      v159 = v184;
      v160 = v185;
      v161 = v186;
      v162 = v187;
      _ShapeStyle_RenderedShape.render(style:)(&v158);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(v4);
      outlined destroy of DisplayList.Item(&v167);
      swift_unknownObjectRelease();
      outlined destroy of _ShapeStyle_Pack.Style(&v183);
      if (v56 == 1)
      {
        goto LABEL_39;
      }

      --v56;
      v58 -= 2;
      v55 = v147;
      if (v56 > *(v21 + 16))
      {
        __break(1u);
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:

    v55 = v147;
  }

  if (v143)
  {
    v103 = one-time initialization token for foregroundKeyColorAnyAlpha;
    swift_unknownObjectRetain();
    if (v103 != -1)
    {
      swift_once();
    }

    v104 = static RBColor.foregroundKeyColorAnyAlpha;
    v105 = dword_1ED566B70;
    v106 = dword_1ED566B74;
    [v55 removeAll];
    LODWORD(v108) = HIDWORD(v104);
    LODWORD(v107) = v104;
    LODWORD(v109) = v105;
    LODWORD(v110) = v106;
    LODWORD(v112) = v145;
    LODWORD(v111) = v146;
    LODWORD(v113) = v144;
    LODWORD(v114) = v54;
    [v55 addColorReplacementFrom:2 to:v107 colorSpace:{v108, v109, v110, v111, v112, v113, v114}];
    v115 = *(v4 + 108);
    v116 = *(v4 + 192);
    v117 = [v55 copyApplyingToDisplayList_];
    [v117 boundingRect];
    v118 = v203.origin.x;
    v119 = v203.origin.y;
    v120 = v203.size.width;
    v121 = v203.size.height;
    v122 = CGRectIsNull(v203);
    v123 = 0.0;
    if (v122)
    {
      v124 = 0.0;
    }

    else
    {
      v124 = v118;
    }

    if (v122)
    {
      v125 = 0.0;
    }

    else
    {
      v125 = v119;
    }

    if (v122)
    {
      v126 = 0.0;
    }

    else
    {
      v126 = v120;
    }

    if (!v122)
    {
      v123 = v121;
    }

    v204 = CGRectIntegral(*(&v123 - 3));
    v127 = v204.origin.x;
    v128 = v204.origin.y;
    v129 = v204.size.width;
    v130 = v204.size.height;
    v131 = swift_allocObject();
    *(v131 + 16) = v117;
    *(v131 + 24) = v127;
    *(v131 + 32) = v128;
    v132 = one-time initialization token for defaultFlags;
    swift_unknownObjectRetain();
    if (v132 != -1)
    {
      swift_once();
    }

    v133 = static RasterizationOptions.Flags.defaultFlags;
    swift_unknownObjectRelease();
    *(v131 + 40) = -1;
    *(v131 + 44) = 768;
    *(v131 + 48) = v149 | v133 | 0x40;
    *(v131 + 52) = 3;
    v134 = v131 | 0xC000000000000000;
    v135 = v28 + v127;
    v136 = v128 - v150;
    *v156 = v135;
    *&v156[1] = v136;
    *&v156[2] = v129;
    *&v156[3] = v130;
    v156[4] = v116;
    v156[5] = v134;
    v156[7] = 0;
    v156[8] = 0;
    v156[6] = v115;
    v157 = 0;
    v158 = v142;
    LOBYTE(v159) = 0;
    v179 = v195;
    v180 = v196;
    v181 = v197;
    v182 = v198;
    v175 = v191;
    v176 = v192;
    v177 = v193;
    v178 = v194;
    outlined init with copy of _ShapeStyle_Pack.Style(&v191, &v183);
    _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(&v158, &v175, v4);
    v187 = v179;
    v188 = v180;
    v189 = v181;
    v190 = v182;
    v183 = v175;
    v184 = v176;
    v185 = v177;
    v186 = v178;
    outlined destroy of _ShapeStyle_Pack.Style?(&v183, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
    v137 = *(v4 + 64);
    v138 = *(v4 + 80);
    v139 = *(v4 + 32);
    v161 = *(v4 + 48);
    v162 = v137;
    v163[0] = v138;
    *(v163 + 12) = *(v4 + 92);
    v140 = *(v4 + 16);
    v158 = *v4;
    v159 = v140;
    v160 = v139;
    outlined init with copy of DisplayList.Item(v156, &v175);
    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v158);
    *v4 = v135;
    *(v4 + 8) = v136;
    *(v4 + 16) = v129;
    *(v4 + 24) = v130;
    *(v4 + 32) = v116;
    *(v4 + 40) = v134;
    *(v4 + 48) = v115;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0x100000000;
    *(v4 + 104) = 0x80000000;
    v179 = v195;
    v180 = v196;
    v181 = v197;
    v182 = v198;
    v175 = v191;
    v176 = v192;
    v177 = v193;
    v178 = v194;
    _ShapeStyle_RenderedShape.render(style:)(&v175);
    _ShapeStyle_RenderedLayers.endLayer(shape:)(v4);
    outlined destroy of DisplayList.Item(v156);

    swift_unknownObjectRelease_n();
  }

  else
  {
LABEL_57:
  }

  return swift_unknownObjectRelease();
}

id ResolvedStyledText.layers(for:renderer:deviceScale:)(uint64_t a1, double a2, double a3, double a4)
{
  v5 = ResolvedStyledText.makeRBDisplayList(for:renderer:deviceScale:)(a1, a2, a3, a4);
  if (!ResolvedStyledText.needsStyledRendering.getter())
  {
    return 0;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69C70B8]) init];
  if (one-time initialization token for foregroundKeyColorAnyAlpha != -1)
  {
    swift_once();
  }

  LODWORD(v8) = HIDWORD(static RBColor.foregroundKeyColorAnyAlpha);
  LODWORD(v7) = static RBColor.foregroundKeyColorAnyAlpha;
  LODWORD(v9) = dword_1ED566B70;
  LODWORD(v10) = dword_1ED566B74;
  [v6 addConditionWithFillColor:2 colorSpace:{v7, v8, v9, v10}];
  v11 = &selRef_newInterpolatorWithFrom_to_options_;
  v12 = [v6 copyFilteredDisplayList_];
  v13 = &selRef_newInterpolatorWithFrom_to_options_;
  v32 = v12;
  if ([v12 isEmpty])
  {
    v33 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v33 = v12;
  }

  v15 = *(*(v4 + 264) + 16);
  if (v15)
  {
    v16 = 0;
    v17 = *MEMORY[0x1E69C7138];
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      [v6 removeAll];
      *&v19 = vcvts_n_f32_u64(v16, 0xAuLL);
      LODWORD(v20) = -1.0;
      LODWORD(v21) = -1.0;
      LODWORD(v22) = v17;
      [v6 addConditionWithFillColor:2 colorSpace:{v20, v21, v19, v22}];
      v23 = [v6 v11[184]];
      if ([v23 v13[185]])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        }

        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v18);
        }

        v18[2] = v25 + 1;
        v26 = &v18[2 * v25];
        v26[4] = v16;
        v26[5] = v23;
        v11 = &selRef_newInterpolatorWithFrom_to_options_;
        v13 = &selRef_newInterpolatorWithFrom_to_options_;
      }

      ++v16;
    }

    while (v15 != v16);
  }

  [v6 removeAll];
  if (one-time initialization token for keyColorAnyAlpha != -1)
  {
    swift_once();
  }

  LODWORD(v28) = HIDWORD(static RBColor.keyColorAnyAlpha);
  LODWORD(v27) = static RBColor.keyColorAnyAlpha;
  LODWORD(v29) = dword_1ED566B58;
  LODWORD(v30) = unk_1ED566B5C;
  [v6 addConditionWithFillColor:2 colorSpace:{v27, v28, v29, v30}];
  [v6 setInvertsResult_];
  v31 = [objc_msgSend(v6 v11[184]];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v31)
  {
    swift_unknownObjectRelease();
  }

  return v33;
}

char *CoreMaterialCache.subscript.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(v1 + 8);
  v9 = v4 | (v5 << 32);
  if (*(v8 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v4 | (v5 << 32), v6 | (v7 << 8)), (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);
  }

  else
  {
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v12 = specialized CoreMaterialCache.loadEffects(style:)(&v15);
    outlined copy of Material.ID(v3, v4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 8);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v3, v9, v6 | (v7 << 8), isUniquelyReferenced_nonNull_native);
    outlined consume of Material.ID(v3, v4);
    *(v2 + 8) = v15;
  }

  return v12;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, unint64_t a2, __int16 a3)
{
  v6 = HIDWORD(a2);
  v7 = HIBYTE(a3);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v10);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(a3);
  MEMORY[0x193AC11A0](v7);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 0xFFFFFFFF000000FFLL, a3, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = a2;
    v21 = HIDWORD(a2);
    v19 = HIBYTE(a3);
    v20 = a3;
    v9 = ~v5;
    do
    {
      v10 = *(v23 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 12);
      v14 = *(v10 + 16);
      v15 = *(v10 + 17);
      v26 = v11;
      v27 = v12;
      v24 = a1;
      v25 = v7;
      outlined copy of Material.ID(v11, v12);
      outlined copy of Material.ID(v11, v12);
      outlined copy of Material.ID(a1, v7);
      v16 = specialized static Material.ID.== infix(_:_:)(&v26, &v24);
      outlined consume of Material.ID(v24, v25);
      outlined consume of Material.ID(v26, v27);
      if ((v16 & 1) != 0 && v13 == v21)
      {
        outlined consume of Material.ID(v11, v12);
        if (v14 == v20 && v19 == v15)
        {
          return v6;
        }
      }

      else
      {
        outlined consume of Material.ID(v11, v12);
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t specialized Array<A>.popColorMultiply(drawable:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    goto LABEL_10;
  }

  memmove(__dst, (v2 + (v3 << 7) - 96), 0x7CuLL);
  if (_s7SwiftUI14GraphicsFilterOWOg(__dst) != 7)
  {
    goto LABEL_10;
  }

  v6 = *_s7SwiftUI14GraphicsFilterOWOj6_(__dst);
  v7 = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8 || !v7)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v9 = v8;
  swift_getObjectType();
  v10 = (*(v9 + 32))();
  result = swift_unknownObjectRelease();
  if ((v10 & 1) == 0)
  {
LABEL_10:
    result = 0;
    v13 = 1;
LABEL_11:
    LOBYTE(__dst[0]) = v13;
    return result;
  }

  if (*(v2 + 16))
  {
    specialized Array._customRemoveLast()(&v18);
    v32[4] = v22;
    v32[5] = v23;
    v33[0] = v24[0];
    *(v33 + 12) = *(v24 + 12);
    v32[0] = v18;
    v32[1] = v19;
    v32[2] = v20;
    v32[3] = v21;
    if (_s7SwiftUI14GraphicsFilterOSgWOg(v32) == 1)
    {
      v14[4] = v22;
      v14[5] = v23;
      v15[0] = v24[0];
      *(v15 + 12) = *(v24 + 12);
      v14[0] = v18;
      v14[1] = v19;
      v14[2] = v20;
      v14[3] = v21;
      outlined destroy of HitTestableEvent?(v14, &lazy cache variable for type metadata for GraphicsFilter?);
      specialized Array.remove(at:)(*(*a1 + 16) - 1, &v25);
      v16[4] = v29;
      v16[5] = v30;
      v17[0] = v31[0];
      *(v17 + 12) = *(v31 + 12);
      v16[0] = v25;
      v16[1] = v26;
      v16[2] = v27;
      v16[3] = v28;
      v12 = v16;
    }

    else
    {
      v29 = v22;
      v30 = v23;
      v31[0] = v24[0];
      *(v31 + 12) = *(v24 + 12);
      v25 = v18;
      v26 = v19;
      v27 = v20;
      v28 = v21;
      v12 = &v25;
    }

    outlined destroy of GraphicsFilter(v12);
    v13 = 0;
    result = v6;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t static Material.regular.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for regular != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.regular;
  v3 = dword_1ED520074;
  *a1 = static Material.regular;
  v4 = byte_1ED520070;
  *(a1 + 8) = byte_1ED520070;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

void one-time initialization function for regular()
{
  dword_1ED520074 = 0;
  static Material.regular = 2;
  byte_1ED520070 = 3;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemMaterialDefinitionKey>, &type metadata for SystemMaterialDefinitionKey, &protocol witness table for SystemMaterialDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemMaterialDefinitionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.FeatureSettingModifier(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v2 = *a1;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v5 = Int._bridgeToObjectiveC()().super.super.isa;
    CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v2, isa, v5);

    *a1 = CopyWithFeature;
  }
}

void one-time initialization function for interpolate()
{
  static ContentTransition.interpolate = 0x8000000003;
  byte_1ED5280EC = 3;
  dword_1ED5280E8 = 0x2000000;
  *&byte_1ED5280ED = 0;
}

float one-time initialization function for foregroundKeyColorAnyAlpha()
{
  result = *MEMORY[0x1E69C7138];
  __asm { FMOV            V1.2S, #-1.0 }

  static RBColor.foregroundKeyColorAnyAlpha = _D1;
  dword_1ED566B70 = -1082130432;
  dword_1ED566B74 = LODWORD(result);
  return result;
}

float one-time initialization function for keyColorAnyAlpha()
{
  result = *MEMORY[0x1E69C7138];
  __asm { FMOV            V1.2S, #-1.0 }

  static RBColor.keyColorAnyAlpha = _D1;
  dword_1ED566B58 = LODWORD(result);
  unk_1ED566B5C = LODWORD(result);
  return result;
}

void one-time initialization function for shared()
{
  static CoreMaterialCache.shared = 0;
  qword_1ED526080 = MEMORY[0x1E69E7CC8];
  unk_1ED526088 = MEMORY[0x1E69E7CC8];
}

{
  static ViewDecoders.shared = 0;
  off_1EAB0F5C8 = MEMORY[0x1E69E7CC8];
  byte_1EAB0F5D0 = 0;
}

char *specialized CoreMaterialCache.loadEffects(style:)(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  *v71 = *a1;
  v71[8] = v1;
  *&v71[12] = v2;
  *&v71[16] = v3;
  v4 = ContentStyle.MaterialStyle.coreMaterialDescription.getter();
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0x737265746C6966, 0xE700000000000000), (v6 & 1) == 0) || (outlined init with copy of Any(*(v4 + 56) + 32 * v5, v71), type metadata accessor for [[String : Any]](0, &lazy cache variable for type metadata for [[String : Any]], type metadata accessor for [String : Any], MEMORY[0x1E69E62F8]), (swift_dynamicCast() & 1) == 0))
  {
    v9 = 0;
    v62 = 0;
    v8 = 0;
    goto LABEL_23;
  }

  v7 = v70[0];
  v8 = *(v70[0] + 16);
  if (!v8)
  {

    v9 = 0;
    v62 = 0;
LABEL_23:
    v23 = 0;
    v10 = 0;
    v11 = 0;
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    v63 = 1;
    if (!*(v4 + 16))
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v9 = 0;
  v61 = 0;
  v62 = 0;
  v55 = 0;
  v56 = 0;
  v10 = 0;
  v11 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v63 = 1;
  v12 = 32;
  do
  {
    v13 = *(v7 + v12);
    if (!*(v13 + 16))
    {
      goto LABEL_7;
    }

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
    if ((v15 & 1) == 0 || (outlined init with copy of Any(*(v13 + 56) + 32 * v14, v71), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_7;
    }

    v57 = v9;
    v16 = v11;
    v17 = v10;
    if (__PAIR128__(0x800000018DD7A490, 0xD000000000000012) == v75[0])
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (!*(v13 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x800000018DD7A4B0), (v20 & 1) == 0))
    {
LABEL_20:

      v10 = v17;
LABEL_21:
      v11 = v16;
      v9 = v57;
      goto LABEL_7;
    }

    outlined init with copy of Any(*(v13 + 56) + 32 * v19, v75);

    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSValue);
    v10 = v17;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    v21 = v67[0];
    memset(&v71[4], 0, 20);
    *v71 = 1065353216;
    *&v71[24] = 1065353216;
    memset(&v71[28], 0, 20);
    LODWORD(v72[0]) = 1065353216;
    *(v72 + 12) = 0;
    *(v72 + 4) = 0;
    DWORD1(v72[1]) = 0;
    *(&v72[1] + 1) = 1065353216;
    v22 = v71;
    [v67[0] getValue_];

    if ((v63 & 1) == 0)
    {
      v70[0] = v57;
      v70[1] = v62;
      v70[2] = v56;
      v70[3] = v55;
      v70[4] = v17;
      v70[5] = v16;
      v70[6] = v61;
      v70[7] = v60;
      v70[8] = v59;
      v70[9] = v58;
      v69[2] = *&v71[32];
      v69[3] = v72[0];
      v69[4] = v72[1];
      v69[0] = *v71;
      v69[1] = *&v71[16];
      v22 = v64;
      specialized static _ColorMatrix.* infix(_:_:)(v69, v70, v64, *&v71[16]);
    }

    v63 = 0;
    v55 = v22[3];
    v56 = v22[2];
    v10 = v22[4];
    v11 = v22[5];
    v60 = v22[7];
    v61 = v22[6];
    v58 = v22[9];
    v59 = v22[8];
    v9 = *v22;
    v62 = v22[1];
LABEL_7:
    v12 += 8;
    --v8;
  }

  while (v8);

  v23 = v55;
  v8 = v56;
  if (!*(v4 + 16))
  {
LABEL_35:

    v26 = 0;
    v28 = 0;
    LODWORD(v30) = 0;
    goto LABEL_36;
  }

LABEL_24:
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F6C6F43746E6974, 0xE900000000000072);
  if ((v25 & 1) == 0)
  {
    goto LABEL_35;
  }

  outlined init with copy of Any(*(v4 + 56) + 32 * v24, v71);

  outlined init with take of Any(v71, v75);
  outlined init with copy of Any(v75, v71);
  v26 = specialized static CoreMaterialCache.parseColor(_:)(v71);
  v28 = v27;
  v30 = v29;
  outlined destroy of Any?(v71);
  __swift_destroy_boxed_opaque_existential_1(v75);
  if ((v30 & 0x100000000) != 0)
  {
LABEL_36:
    v36 = 1;
    if ((v63 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }

    *v67 = _Q0;
    v68 = 2143289344;
    v65[0] = v26;
    v65[1] = v28;
    v66 = v30;
    v36 = specialized static Color.ResolvedHDR.== infix(_:_:)(v65, v67);
    if (v36)
    {
      v26 = 0;
      v28 = 0;
      LODWORD(v30) = 0;
    }

    if ((v63 & 1) == 0)
    {
LABEL_29:
      v37 = swift_allocObject();
      *v71 = v9;
      *&v71[8] = v62;
      *&v71[16] = v8;
      *&v71[24] = v23;
      *&v71[32] = v10;
      *&v71[40] = v11;
      *&v72[0] = v61;
      *(&v72[0] + 1) = v60;
      *&v72[1] = v59;
      *(&v72[1] + 1) = v58;
      LODWORD(v73) = 2139095040;
      BYTE4(v73) = 0;
      _s7SwiftUI14GraphicsFilterOWOi14_(v71);
      v38 = v73;
      v37[5] = v72[1];
      v37[6] = v38;
      v37[7] = v74[0];
      *(v37 + 124) = *(v74 + 12);
      v39 = *&v71[16];
      v37[1] = *v71;
      v37[2] = v39;
      v40 = v72[0];
      v37[3] = *&v71[32];
      v37[4] = v40;
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41);
      }

      *(v41 + 2) = v43 + 1;
      v44 = &v41[16 * v43];
      *(v44 + 4) = v37;
LABEL_32:
      *(v44 + 10) = 0;
      v45 = 10;
LABEL_33:
      v44[44] = v45;
      return v41;
    }
  }

  if (v36)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*&v26 != 1.0 || *(&v26 + 1) != 1.0 || *&v28 != 1.0)
  {
    v47 = swift_allocObject();
    *v71 = v26;
    *&v71[8] = v28;
    *&v71[16] = v30;
    _s7SwiftUI14GraphicsFilterOWOi6_(v71);
    v48 = v73;
    v47[5] = v72[1];
    v47[6] = v48;
    v47[7] = v74[0];
    *(v47 + 124) = *(v74 + 12);
    v49 = *&v71[16];
    v47[1] = *v71;
    v47[2] = v49;
    v50 = v72[0];
    v47[3] = *&v71[32];
    v47[4] = v50;
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v52 = *(v41 + 2);
    v51 = *(v41 + 3);
    if (v52 >= v51 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v41);
    }

    *(v41 + 2) = v52 + 1;
    v44 = &v41[16 * v52];
    *(v44 + 4) = v47;
    goto LABEL_32;
  }

  v41 = MEMORY[0x1E69E7CC0];
  if (*(&v28 + 1) != 1.0)
  {
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v54 = *(v41 + 2);
    v53 = *(v41 + 3);
    if (v54 >= v53 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v41);
    }

    *(v41 + 2) = v54 + 1;
    v44 = &v41[16 * v54];
    *(v44 + 4) = HIDWORD(v28);
    *(v44 + 10) = 0;
    v45 = 4;
    goto LABEL_33;
  }

  return v41;
}

uint64_t sub_18D24F2E0()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

unint64_t ContentStyle.MaterialStyle.coreMaterialDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = Material.ResolvedMaterial.coreMaterialRecipe.getter();
  if (v2 == 1)
  {
    v4 = *MEMORY[0x1E6997F30];
  }

  else
  {
    v4 = *MEMORY[0x1E6997F20];
    if (v2 == 2)
    {
      v5 = MEMORY[0x1E6997F58];
      goto LABEL_13;
    }
  }

  v5 = MEMORY[0x1E6997F40];
  v6 = MEMORY[0x1E6997F48];
  if (!v2)
  {
    v6 = MEMORY[0x1E6997F60];
  }

  v7 = MEMORY[0x1E6997F50];
  if (v1 != 1)
  {
    v7 = MEMORY[0x1E6997F60];
  }

  if (v1)
  {
    v5 = v7;
  }

  if (v1 > 2)
  {
    v5 = v6;
  }

LABEL_13:
  v8 = *v5;
  Material.ResolvedMaterial.coreMaterialOptions.getter();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = MTVisualStylingCreateDictionaryRepresentation();

  if (v10)
  {
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v13);
  }
}

id Material.ResolvedMaterial.coreMaterialRecipe.getter()
{
  v1 = *v0;
  v2 = *(v0 + 12);
  if (!*(v0 + 8))
  {

    JUMPOUT(0x193ABEC20);
  }

  if (*(v0 + 8) != 3)
  {
    goto LABEL_29;
  }

  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        if (v2)
        {
          v3 = MEMORY[0x1E6997EE8];
        }

        else
        {
          v3 = MEMORY[0x1E6997EF0];
        }
      }

      else if (v2)
      {
        v3 = MEMORY[0x1E6997EC8];
      }

      else
      {
        v3 = MEMORY[0x1E6997ED0];
      }
    }

    else if (v2)
    {
      v3 = MEMORY[0x1E6997EF8];
    }

    else
    {
      v3 = MEMORY[0x1E6997F00];
    }

    goto LABEL_26;
  }

  if (v1 <= 4)
  {
    if (v2)
    {
      v3 = MEMORY[0x1E6997ED8];
    }

    else
    {
      v3 = MEMORY[0x1E6997EE0];
    }

    goto LABEL_26;
  }

  if (v1 != 5)
  {
LABEL_29:
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  if (v2)
  {
    v3 = MEMORY[0x1E6997EB8];
  }

  else
  {
    v3 = MEMORY[0x1E6997EC0];
  }

LABEL_26:
  v4 = *v3;

  return v4;
}

unint64_t Material.ResolvedMaterial.coreMaterialOptions.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  type metadata accessor for [[String : Any]](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>, type metadata accessor for (String, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDAB4C0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  v6 = MEMORY[0x1E69E6370];
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  *(inited + 120) = v6;
  *(inited + 96) = (v3 & 2) != 0;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (String, Any)();
  swift_arrayDestroy();
  v20 = v8;
  if (!v2)
  {
    v9 = *(v1 + 48);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v10;
    v13 = v11;
    if (v9)
    {
      v19 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSBundle);
      *&v18 = v9;
      outlined init with take of Any(&v18, v17);
      v14 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v12, v13, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v10, v11, &v18);

      outlined destroy of Any?(&v18);
      return v20;
    }
  }

  return v8;
}

void type metadata accessor for [[String : Any]](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for _DictionaryStorage<String, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, Any>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>);
    }
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0xFFFFFFFF000000FFLL, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0xFFFFFFFF000000FFLL, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3 & 0xFFFFFFFF000000FFLL, a4, a1, v23);

    return outlined copy of Material.ID(a2, a3);
  }
}

unint64_t lazy protocol witness table accessor for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle()
{
  result = lazy protocol witness table cache variable for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle;
  if (!lazy protocol witness table cache variable for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle;
  if (!lazy protocol witness table cache variable for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle);
  }

  return result;
}

uint64_t _ValueActionModifier2.sendAction(old:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v17;
  (*(v17 + 16))(v6, a1, v4, v14);
  v18 = *(v7 + 48);
  if (v18(v6, 1, a2) == 1)
  {
    v22 = v4;
    v19 = v24;
    (*(v7 + 16))(v10);
    if (v18(v6, 1, a2) != 1)
    {
      (*(v23 + 8))(v6, v22);
    }
  }

  else
  {
    v19 = v24;
    (*(v7 + 32))(v10, v6, a2);
  }

  (*(v12 + 16))(v16, v10, v11);
  (*(v7 + 8))(v10, a2);
  (*(v19 + *(a2 + 36)))(v16, v19);
  return (*(v12 + 8))(v16, v11);
}

uint64_t outlined init with copy of InterpolatedDisplayList<Image.Resolved>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for InterpolatedDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for InterpolatedDisplayList);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of InterpolatedDisplayList<Image.Resolved>(uint64_t a1)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for InterpolatedDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for InterpolatedDisplayList);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DelayedGesture(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t key path setter for EnvironmentValues.backgroundMaterial : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  swift_retain_n();
  outlined copy of Material?(v3, v4);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a2, v3, v4);

  outlined consume of Material?(v3, v4);
  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v5, *a2);
  }
}

void type metadata accessor for (String, Any)()
{
  if (!lazy cache variable for type metadata for (String, Any))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, Any));
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (ViewIdentity, GlassContainer.ItemData)(v4, &v13, &lazy cache variable for type metadata for (String, Any));
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t specialized static CoreMaterialCache.parseColor(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v31);
  if (v32)
  {
    type metadata accessor for [String : Any]();
    if (swift_dynamicCast())
    {
      if (!*(*&v30 + 16))
      {
        goto LABEL_17;
      }

      v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x6168706C61, 0xE500000000000000);
      if ((v2 & 1) == 0)
      {
        goto LABEL_17;
      }

      outlined init with copy of Any(*(*&v30 + 56) + 32 * v1, v31);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_17;
      }

      if (*(*&v30 + 16))
      {
        v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x6574696877, 0xE500000000000000);
        if (v4)
        {
          outlined init with copy of Any(*(*&v30 + 56) + 32 * v3, v31);
          if (swift_dynamicCast())
          {

            v5 = v30;
            if (v5 <= 0.0)
            {
              v6 = -v5;
            }

            else
            {
              v6 = v30;
            }

            if (v6 <= 0.04045)
            {
              v7 = v6 * 0.077399;
            }

            else
            {
              v7 = 1.0;
              if (v6 != 1.0)
              {
                v7 = powf((v6 * 0.94787) + 0.052133, 2.4);
              }
            }

            if (v5 <= 0.0)
            {
              v7 = -v7;
            }

            v10 = v7;
            v11 = v7;
            goto LABEL_19;
          }
        }
      }

      if (*(*&v30 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(6579570, 0xE300000000000000), (v13 & 1) != 0) && (outlined init with copy of Any(*(*&v30 + 56) + 32 * v12, v31), (swift_dynamicCast() & 1) != 0) && *(*&v30 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65657267, 0xE500000000000000), (v15 & 1) != 0) && (outlined init with copy of Any(*(*&v30 + 56) + 32 * v14, v31), (swift_dynamicCast() & 1) != 0) && *(*&v30 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(1702194274, 0xE400000000000000), (v17 & 1) != 0))
      {
        outlined init with copy of Any(*(*&v30 + 56) + 32 * v16, v31);

        if (swift_dynamicCast())
        {
          v18 = v30;
          v19 = v30;
          v20 = v30;
          if (v19 <= 0.0)
          {
            v21 = -v19;
          }

          else
          {
            v21 = v30;
          }

          if (v21 <= 0.04045)
          {
            v22 = v21 * 0.077399;
          }

          else
          {
            v22 = 1.0;
            if (v21 != 1.0)
            {
              v27 = v30;
              v22 = powf((v21 * 0.94787) + 0.052133, 2.4);
              v18 = v30;
              v19 = v27;
            }
          }

          v23 = v18;
          if (v19 <= 0.0)
          {
            v11 = -v22;
          }

          else
          {
            v11 = v22;
          }

          if (v20 <= 0.0)
          {
            v24 = -v20;
          }

          else
          {
            v24 = v30;
          }

          if (v24 <= 0.04045)
          {
            v25 = v24 * 0.077399;
          }

          else
          {
            v25 = 1.0;
            if (v24 != 1.0)
            {
              v28 = v11;
              v25 = powf((v24 * 0.94787) + 0.052133, 2.4);
              v11 = v28;
            }
          }

          if (v20 <= 0.0)
          {
            v10 = -v25;
          }

          else
          {
            v10 = v25;
          }

          if (v23 <= 0.0)
          {
            v26 = -v23;
          }

          else
          {
            v26 = v23;
          }

          if (v26 > 0.04045 && v26 != 1.0)
          {
            v29 = v11;
            powf((v26 * 0.94787) + 0.052133, 2.4);
            v11 = v29;
          }

          goto LABEL_19;
        }
      }

      else
      {
LABEL_17:
      }

      v10 = 1.0;
      v11 = 1.0;
LABEL_19:
      v9 = 0;
      result = LODWORD(v11) | (LODWORD(v10) << 32);
      goto LABEL_20;
    }
  }

  else
  {
    outlined destroy of Any?(v31);
  }

  result = 0;
  v9 = 1;
LABEL_20:
  v31[0] = v9;
  return result;
}

void type metadata accessor for _DictionaryStorage<ContentStyle.MaterialStyle, [DisplayList.Effect]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ContentStyle.MaterialStyle, [DisplayList.Effect]>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [DisplayList.Effect], &type metadata for DisplayList.Effect, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ContentStyle.MaterialStyle, [DisplayList.Effect]>);
    }
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 12) = HIDWORD(a3);
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 20 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(v6 + 17) = HIBYTE(a4) & 1;
  v7 = a6[7] + 56 * result;
  v8 = *(a5 + 16);
  *v7 = *a5;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a5 + 32);
  *(v7 + 48) = *(a5 + 48);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t outlined consume of BackdropGroupID?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t partial apply for closure #2 in ValueActionDispatcher.updateValue()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(type metadata accessor for Optional() - 8);
  return (*(v2 + 32))(v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80)), v1, v2);
}

uint64_t static ConstantLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a3;
  v9[3] = a2;
  v10 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in compareValues<A>(_:_:options:), v9, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
  return v11;
}

uint64_t Color.OpacityColor.description.getter(uint64_t result, double a2)
{
  v2 = a2 * 100.0 + 0.5;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    v3 = result;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = MEMORY[0x193ABEDD0](8229, 0xE200000000000000);
    v5 = (*(*v3 + 160))(v4);
    MEMORY[0x193ABEDD0](v5);

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Gradient.Stop(double *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  return (*a1 == *a2 || ((*(**a1 + 88))() & 1) != 0) && v2 == v3;
}

uint64_t ImageProviderBox.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

uint64_t specialized static Image.NamedImageProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v26 = *(a2 + 40);
  v13 = *(a2 + 56);
  v27 = *(a2 + 48);
  v28 = *(a1 + 64);
  v29 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a1 + 72);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v9)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v34 = v4;
  v30 = v11;
  outlined copy of Image.Location(v4);
  outlined copy of Image.Location(v11);
  v15 = specialized static Image.Location.== infix(_:_:)(&v34, &v30);
  outlined consume of Image.Location(v30);
  outlined consume of Image.Location(v34);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  if (v5 == 2)
  {
    outlined copy of Image.Location?(2);
    if (v12 == 2)
    {
      outlined copy of Image.Location?(2);
      outlined consume of Image.Location?(2);
      goto LABEL_20;
    }

    outlined copy of Image.Location?(v12);
LABEL_18:
    outlined consume of Image.Location?(v5);
    outlined consume of Image.Location?(v12);
    return 0;
  }

  v34 = v5;
  if (v12 == 2)
  {
    outlined copy of Image.Location?(v5);
    outlined copy of Image.Location?(2);
    outlined copy of Image.Location?(v5);
    outlined consume of Image.Location(v5);
    goto LABEL_18;
  }

  v30 = v12;
  outlined copy of Image.Location?(v5);
  outlined copy of Image.Location?(v12);
  outlined copy of Image.Location?(v5);
  v16 = specialized static Image.Location.== infix(_:_:)(&v34, &v30);
  outlined consume of Image.Location(v30);
  outlined consume of Image.Location(v34);
  outlined consume of Image.Location?(v5);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v17 = v8;
  if (v8 >> 1 != 0xFFFFFFFF)
  {
    v18 = v6;
    v34 = v6;
    v35 = v7;
    v19 = v7;
    v36 = v17;
    v37 = v28;
    if (v13 >> 1 == 0xFFFFFFFF)
    {
      outlined copy of AccessibilityImageLabel?(v6, v7, v17);
      v21 = v26;
      v20 = v27;
      outlined copy of AccessibilityImageLabel?(v26, v27, v13);
      outlined copy of AccessibilityImageLabel?(v18, v19, v17);
      outlined consume of AccessibilityImageLabel(v18, v19, v17);
      goto LABEL_25;
    }

    v30 = v26;
    v31 = v27;
    v32 = v13;
    v33 = v29;
    outlined copy of AccessibilityImageLabel?(v6, v7, v17);
    outlined copy of AccessibilityImageLabel?(v26, v27, v13);
    outlined copy of AccessibilityImageLabel?(v6, v7, v17);
    v23 = static AccessibilityImageLabel.== infix(_:_:)(&v34, &v30);
    outlined consume of AccessibilityImageLabel(v30, v31, v32);
    outlined consume of AccessibilityImageLabel(v34, v35, v36);
    outlined consume of AccessibilityImageLabel?(v6, v7, v17);
    if (v23)
    {
      return v25 ^ v24 ^ 1u;
    }

    return 0;
  }

  v18 = v6;
  v19 = v7;
  outlined copy of AccessibilityImageLabel?(v6, v7, v17);
  v21 = v26;
  v20 = v27;
  outlined copy of AccessibilityImageLabel?(v26, v27, v13);
  if (v13 >> 1 != 0xFFFFFFFF)
  {
LABEL_25:
    outlined consume of AccessibilityImageLabel?(v18, v19, v17);
    outlined consume of AccessibilityImageLabel?(v21, v20, v13);
    return 0;
  }

  outlined consume of AccessibilityImageLabel?(v18, v19, v17);
  return v25 ^ v24 ^ 1u;
}

uint64_t PreferenceValues.valueIfPresent<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v13[6] = PreferenceValues.index<A>(of:)(a1);
  v14 = v9 & 1;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v8;
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for PreferenceValues.Value();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in PreferenceValues.valueIfPresent<A>(for:), v13, MEMORY[0x1E69E73E0], v10, v11, a4);
}

uint64_t ViewGraphHostEnvironmentWrapper.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EventID()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  return MEMORY[0x193AC11A0](v1);
}

uint64_t partial apply for closure #1 in View.onChange<A>(of:initial:_:)()
{
  return (*(v0 + 48))();
}

{
  v1 = *(*(v0 + 24) - 8);
  return (*(v0 + 48))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)), v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));
}

uint64_t PreferenceBridge.removeHostValues(for:isInvalidating:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Attribute = AGWeakAttributeGetAttribute();
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      MEMORY[0x1EEE9AC00](Attribute);
      MEMORY[0x1EEE9AC00](v2);
      AGGraphMutateAttribute();
    }
  }

  return result;
}

unint64_t closure #1 in PreferenceBridge.removeHostValues(for:isInvalidating:)(unint64_t result, BOOL *a2, int a3)
{
  v3 = *(result + 8);
  v4 = *(v3 + 16);
  v5 = v4 != 0;
  if (v4)
  {
    result = 0;
    v6 = (v3 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 4;
      if (v7 == a3)
      {
        break;
      }

      v5 = v4 != ++result;
      if (v4 == result)
      {
        goto LABEL_7;
      }
    }

    v8 = a2;
    result = specialized Array.remove(at:)(result);
    a2 = v8;
  }

LABEL_7:
  *a2 = v5;
  return result;
}

uint64_t PreferenceBridge.removeChild(_:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (*(v7 + 8 * v6) != a1)
    {
      if (v5 == ++v6)
      {
        return result;
      }
    }

    swift_beginAccess();
    specialized Array.remove(at:)(v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

void LazyStatePropertyBox.destroy()()
{
  if (*(v0 + 8))
  {
    StoredLocationBase.invalidate()();
  }
}

Swift::Void __swiftcall StoredLocationBase.invalidate()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for StoredLocationBase.Data();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 20) & ~*(*(v2 - 8) + 80));

  os_unfair_lock_lock(v1 + 4);
  v4 = *(v2 + 32);

  *&v3[v4] = MEMORY[0x1E69E7CC8];
  $defer #1 <A>() in AtomicBox.wrappedValue.getter(&v1[4], v1, v2);
}

uint64_t StoredLocation.deinit()
{
  v0 = AnyLocation.deinit();

  swift_weakDestroy();
  return v0;
}

uint64_t StoredLocation.__deallocating_deinit()
{
  StoredLocation.deinit();

  return swift_deallocClassInstance();
}

uint64_t static EnumVTable.deinitialize(elt:)(void *a1)
{
  v1 = *a1 + 16;
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {

    v4 = v2 + 48;
    do
    {
      v4 += 24;
      _DynamicPropertyBuffer.destroy()();
      --v3;
    }

    while (v3);
  }

  return outlined destroy of PlatformAccessibilitySettingsDefinition.Storage(v1);
}

id static ShaderLibrary.default.getter@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

id one-time initialization function for compactRounded()
{
  result = *MEMORY[0x1E69658A8];
  if (*MEMORY[0x1E69658A8])
  {
    static Font.PrivateDesign.compactRounded = *MEMORY[0x1E69658A8];
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Font.system(_:design:weight:)(unsigned __int8 *a1, void **a2, uint64_t a3, char a4)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 >= 0xB)
  {
    v13 = v5;
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    v8 = **(&unk_1E72448C8 + v4);
    type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PrivateTextStyleProvider>, lazy protocol witness table accessor for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider, &type metadata for Font.PrivateTextStyleProvider, type metadata accessor for FontBox);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v5;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4 & 1;
    v10 = v5;
    v11 = v8;
    return v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider()
{
  result = lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider;
  if (!lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider;
  if (!lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider;
  if (!lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Font.PrivateTextStyleProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider();
  *(a1 + 8) = result;
  return result;
}

void *specialized _NativeDictionary.copy()(unint64_t *a1)
{
  v2 = v1;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, a1);
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
        result = outlined init with take of Any(v20, (*(v5 + 56) + 32 * v18));
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

void ViewGraphHost.displayLinkTimer(timestamp:targetTimestamp:isAsyncThread:)(double *a1, double *a2, char a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v8 = *(v3 + 24);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_27;
  }

  v9 = *(v3 + 40);
  ViewGraphHost.clearUpdateTimer()();
  ObjectType = swift_getObjectType();
  v31 = v6;
  v11 = (*(v9 + 32))(&v31, ObjectType, v9);
  v12 = swift_getObjectType();
  if ((a3 & 1) == 0)
  {
    v31 = v7;
    v32 = 0;
    v16 = &v31;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)(v11, 1, *&v13);
    v17 = *(v3 + 136);
    if (v17 && *&v17[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate] != INFINITY)
    {
      v18 = *(v4 + 88);
      swift_beginAccess();
      if (!*(v18 + 16))
      {
LABEL_33:
        __break(1u);
        return;
      }

      v19 = v17;
      if (AGGraphGetCounter() == *(v18 + 368))
      {
        if (one-time initialization token for v3 != -1)
        {
          swift_once();
        }

        v20 = static Semantics.v3;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          v21 = dyld_program_sdk_at_least();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if ((v21 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v28 = static Semantics.forced;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v28 < v20)
          {
LABEL_31:

            return;
          }
        }

        v19[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread] = 1;
        goto LABEL_31;
      }
    }

    swift_unknownObjectRelease();
LABEL_27:
    swift_unknownObjectRelease();
    return;
  }

  v29 = v7;
  v30 = 0;
  v14 = &v29;
  ViewGraphRootValueUpdater.renderAsync(interval:targetTimestamp:)(v11, *&v13);
  if (v32)
  {
    v15 = *(v3 + 136);
    if (v15)
    {
      *(v15 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
    }

    (*(*(v8 + 8) + 24))(v12, 0.0);
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  if ((~*&v31 & 0x7FF0000000000000) != 0)
  {
    v22 = v31;
    swift_beginAccess();
    (*(*(v8 + 8) + 24))(v12, fmax(v22 - *(v3 + 104), 0.000001));
  }

  v23 = *(v3 + 88);
  swift_beginAccess();
  v24 = *(v23 + 16);
  if (!v24)
  {
    __break(1u);
    goto LABEL_33;
  }

  v25 = v24;
  Counter = AGGraphGetCounter();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (Counter != *(v23 + 368))
  {
    v27 = *(v4 + 136);
    if (v27)
    {
      *(v27 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
    }
  }
}

void ViewGraphDisplayLink.displayLinkTimer(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    [a1 invalidate];
    return;
  }

  v5 = Strong;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v7 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentThread;
  v8 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread;
  v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread);
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentThread) == v9)
  {
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link))
    {
      [a1 timestamp];
      v11 = v10;
      [a1 targetTimestamp];
      v13 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate;
      v14 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate);
      if (v14 + -0.00416666667 < v11)
      {
        v15 = v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentUpdate;
        *v15 = v11;
        *(v15 + 8) = 0;
        *(v1 + v13) = 0x7FF0000000000000;
        v60 = v12;
        *&v61 = v11;
        ViewGraphHost.displayLinkTimer(timestamp:targetTimestamp:isAsyncThread:)(&v61, &v60, *(v1 + v7));
        *v15 = 0;
        *(v15 + 8) = 1;
        v14 = *(v1 + v13);
      }

      v9 = *(v1 + v8);
      if (v14 == INFINITY)
      {
        if ((v9 & 1) == 0)
        {
          if ((*(v1 + v7) & 1) == 0)
          {
            goto LABEL_40;
          }

          v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
          if (!v16)
          {
            goto LABEL_40;
          }

          v53 = (v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
          goto LABEL_29;
        }

        *(v1 + v8) = 0;
        *(v1 + v13) = v11;
        v9 = *(v1 + v8);
      }
    }

    if (v9 == *(v1 + v7))
    {
      goto LABEL_40;
    }
  }

  v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
  if (!v16)
  {
    goto LABEL_40;
  }

  v53 = (v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
  if (!v9)
  {
LABEL_29:
    v18 = v16;
LABEL_30:
    v34 = *(v1 + v8);
    if (v34 != *(v1 + v7))
    {
      if ((v34 & 1) == 0)
      {
        goto LABEL_36;
      }

      v59 = v8;
      v57 = v6;
      if (static ViewGraphDisplayLink.asyncRunloop)
      {
        v35 = v18;
        v58 = v7;
        v36 = static ViewGraphDisplayLink.asyncRunloop;
        v37 = 1;
        goto LABEL_37;
      }

      goto LABEL_47;
    }

LABEL_39:

LABEL_40:
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link))
    {
      if (*(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate) == INFINITY && *(v1 + v8) == *(v1 + v7))
      {
        [a1 setPaused_];
      }
    }

    else
    {
      [a1 invalidate];
    }

    _MovableLockUnlock(v6);

    return;
  }

  static ViewGraphDisplayLink.asyncPending = 1;
  v17 = static ViewGraphDisplayLink.asyncRunloop;
  v18 = v16;
  if (v17)
  {
    goto LABEL_30;
  }

  v52 = v18;
  v54 = ObjectType;
  v55 = "easons";
  v19 = &unk_1ED527000;
  v57 = v6;
  v58 = v7;
  v59 = v8;
  while (static ViewGraphDisplayLink.asyncThread)
  {
LABEL_16:
    _MovableLockWait(v6);
    v19[1040] = 1;
    if (static ViewGraphDisplayLink.asyncRunloop)
    {
      v18 = v52;
      goto LABEL_30;
    }
  }

  v61 = 0u;
  v62 = 0u;
  v60 = ObjectType;
  type metadata accessor for ViewGraphDisplayLink.Type();
  v20 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v21 = *(&v62 + 1);
  if (*(&v62 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
    v56 = &v51;
    v23 = v19;
    v24 = a1;
    v25 = v5;
    v26 = *(v21 - 8);
    v27 = MEMORY[0x1EEE9AC00](v22);
    v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29, v27);
    v30 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v26 + 8))(v29, v21);
    v5 = v25;
    a1 = v24;
    v19 = v23;
    v6 = v57;
    __swift_destroy_boxed_opaque_existential_1(&v61);
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E696AF00]) initWithTarget:v20 selector:sel_asyncThreadWithArg_ object:v30];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  [v31 setQualityOfService_];
  v32 = MEMORY[0x193ABEC20](0xD00000000000001FLL, v55 | 0x8000000000000000);
  [v31 setName_];

  if (_NSThreadStart(v31))
  {
    v33 = static ViewGraphDisplayLink.asyncThread;
    static ViewGraphDisplayLink.asyncThread = v31;

    v7 = v58;
    v8 = v59;
    ObjectType = v54;
    goto LABEL_16;
  }

  v7 = v58;
  v8 = v59;
  *(v1 + v59) = 0;
  v18 = v52;
  if ((*(v1 + v7) & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v58 = v7;
  v59 = v8;
  v35 = v18;
  v57 = v6;
  v36 = [objc_opt_self() mainRunLoop];
  v37 = 0;
LABEL_37:
  v38 = objc_opt_self();
  v39 = v36;
  v40 = [v38 currentRunLoop];
  v41 = *MEMORY[0x1E695DA28];
  [v35 removeFromRunLoop:v40 forMode:*MEMORY[0x1E695DA28]];

  v42 = [v35 display];
  v43 = [objc_opt_self() displayLinkWithDisplay:v42 target:v1 selector:sel_displayLinkTimer_];

  if (v43)
  {
    [v43 addToRunLoop:v39 forMode:v41];

    v44 = *v53;
    *v53 = v43;
    v45 = v43;

    v46 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_interval);
    v47 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_reasons;
    v48 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_reasons);
    *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_interval) = 0;
    *(v1 + v47) = MEMORY[0x1E69E7CD0];
    ViewGraphDisplayLink.setFrameInterval(_:reasons:)(v48, v46, v49, v50);

    v6 = v57;
    v7 = v58;
    *(v1 + v58) = v37;
    v8 = v59;
    goto LABEL_40;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t ViewGraphDisplayLink.setFrameInterval(_:reasons:)(uint64_t a1, double a2, double a3, double a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_interval);
  if (v6 == a2)
  {
    goto LABEL_11;
  }

  *(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_interval) = a2;
  if (a2 == 0.0)
  {
    goto LABEL_3;
  }

  v7 = a2;
  v8 = roundf(1.0 / v7);
  if (v8 <= 40.0)
  {
    v9 = LODWORD(v8);
    v10 = 60.0;
  }

  else
  {
    if (v8 < 80.0)
    {
LABEL_3:
      LODWORD(a2) = *MEMORY[0x1E69792B8];
      LODWORD(v6) = *(MEMORY[0x1E69792B8] + 4);
      LODWORD(a4) = *(MEMORY[0x1E69792B8] + 8);
      goto LABEL_9;
    }

    v9 = LODWORD(v8);
    v10 = v8;
    v8 = 80.0;
  }

  *&a2 = CAFrameRateRange.init(minimum:maximum:preferred:)(v8, v10, v9);
LABEL_9:
  v11 = *(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
  if (v11)
  {
    [v11 setPreferredFrameRateRange_];
  }

LABEL_11:
  v12 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_reasons;
  result = _sSh2eeoiySbShyxG_ABtFZs6UInt32V_Tt1g5(*(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_reasons), a1);
  if ((result & 1) == 0)
  {
    *(v4 + v12) = a1;

    MEMORY[0x1EEE9AC00](v14);
    return AGTupleWithBuffer();
  }

  return result;
}

uint64_t ViewGraphDisplayLink.setNextUpdate(delay:interval:reasons:)(uint64_t a1, double a2, double a3)
{
  v5 = 0.0;
  v6 = 0.001;
  if (a2 >= 0.001)
  {
    if (*(v3 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentUpdate + 8))
    {
      v7 = a1;
      v8 = a2;
      v9 = CACurrentMediaTime();
      a1 = v7;
      v10 = v9;
      a2 = v8;
    }

    else
    {
      v10 = *(v3 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentUpdate);
    }

    v5 = v10 + a2;
  }

  if (v5 < *(v3 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate))
  {
    *(v3 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate) = v5;
    if (*(v3 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link))
    {
      v11 = a1;
      [*(v3 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link) setPaused_];
      a1 = v11;
    }
  }

  return ViewGraphDisplayLink.setFrameInterval(_:reasons:)(a1, a3, v5, v6);
}

Swift::Void __swiftcall ViewGraphHost.clearUpdateTimer()()
{
  if ([objc_opt_self() isMainThread])
  {
    v1 = *(v0 + 160);
    if (v1)
    {
      [v1 invalidate];
      v2 = *(v0 + 160);
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 160) = 0;

    *(v0 + 144) = 0;
    *(v0 + 152) = 1;
  }
}

uint64_t _sSh2eeoiySbShyxG_ABtFZs6UInt32V_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    result = MEMORY[0x193AC1150](*(a2 + 40), v13, 4);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 4 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ViewGraph.NextUpdate.interval(_:reason:)(Swift::Double _, Swift::UInt32_optional reason)
{
  if (_ == 0.0)
  {
    *(v2 + 16) = 1;
LABEL_6:
    if (*(v2 + 8) > 0.0166666667)
    {
      *(v2 + 8) = 0x7FF0000000000000;
    }

    goto LABEL_8;
  }

  if (*(v2 + 8) <= _)
  {
    _ = *(v2 + 8);
  }

  *(v2 + 8) = _;
  if (*(v2 + 16) == 1)
  {
    goto LABEL_6;
  }

LABEL_8:
  if ((*&reason.value & 0x100000000) == 0)
  {
    specialized Set._Variant.insert(_:)(&v3, *&reason.value);
  }
}

void *Path.move(to:)(unsigned __int8 a1, double a2, double a3)
{
  v4 = a1;
  v5 = v3;
  v24 = *MEMORY[0x1E69E9840];
  v8 = *v3;
  v9 = (v3 + 8);
  v10 = *(v3 + 8);
  v11 = *(v3 + 32);
  if (v11 == 5)
  {
    v12 = *v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v12 = swift_allocObject();
      *(v12 + 24) = 0u;
      result = (v12 + 24);
      *(v12 + 40) = 0u;
      *(v12 + 56) = 0u;
      *(v12 + 72) = 0u;
      *(v12 + 88) = 0u;
      *(v12 + 104) = 0u;
      v14 = *(v8 + 16);
      *(v12 + 16) = v14;
      if (v14)
      {
        if (v14 == 1)
        {

          *(v12 + 24) = RBPathRetain();
          *(v12 + 32) = v15;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v19 = *(v8 + 24);
        if (!v19)
        {
          __break(1u);
          return result;
        }

        *result = v19;
        v20 = v19;
      }
    }

    v8 = 0;
    v10 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v11) = 6;
  }

  else
  {
    v16 = *(v3 + 16);
    v17 = *(v3 + 24);
    type metadata accessor for Path.PathBox();
    v12 = swift_allocObject();
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 16) = 2;
    RBPathStorageInit();
    v18 = *(v12 + 16);

    if (v18 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v22[2] = v8;
    v22[3] = v10;
    v22[4] = v16;
    v22[5] = v17;
    v23 = v11;
    Path.append(to:)(v12 + 24);
    v4 = a1;
  }

  outlined consume of Path.Storage(v8, v10, v16, v17, v11);
  *v5 = v12;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  *(v5 + 32) = 5;
  if (*(v12 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  *v22 = a2;
  *&v22[1] = a3;
  MEMORY[0x193AC35E0](v12 + 24, v4, v22, 0);
}

Swift::Void __swiftcall Path.move(to:)(CGPoint to)
{

  Path.move(to:)(0, to.x, to.y);
}

uint64_t sync_main_callback(uint64_t a1)
{
  _MovableLockLock(a1);
  *(a1 + 152) = 0;

  return _MovableLockUnlock(a1);
}

uint64_t specialized AnimationBox.animate<A>(value:time:context:)(uint64_t a1, double a2, double a3)
{
  v6 = *v3;
  v7 = *(*v3 + 160);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - v10;
  v14 = v9;
  (*(v8 + 16))(&v13 - v10, v3 + *(v6 + 176), v7);
  (*(*(v6 + 168) + 16))(&v15, &v14, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, v7, a3);
  (*(v8 + 8))(v11, v7);
  return v15;
}

uint64_t specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(char a1, uint64_t a2, double a3)
{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 96) & 1) == 0 && (a1)
  {
    *(v4 + 96) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 88);
    if (v12 >> 62)
    {
      goto LABEL_61;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 120) + 16))
      {
        return result;
      }

      v56 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 120) + 16);
      if (!v10)
      {
LABEL_52:
        swift_beginAccess();
        v51 = v58;
        v52 = v59;
        specialized Collection.subscript.getter(v58);
        v53 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 120), v51);
        v54 = *(*(v4 + 120) + 16);
        if (v54 < v53)
        {
          goto LABEL_60;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v53, v54);
        outlined destroy of Slice<IndexSet>(v51, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v57 + 8))(v52, v56);
      }

      v18 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v19 = *(v4 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 120) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          *(v4 + 120) = v19;
        }

        if (v18 >= v19[2])
        {
          break;
        }

        v21 = &v19[6 * v18];
        v22 = v21[5];

        v23 = AGCreateWeakAttribute();
        v64[0] = v22;
        v64[1] = v23;
        v65 = 0;
        v24 = v21[7];
        if (v24)
        {
          v25 = v21[8];
          type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimationFinishingDefinitionKey);
          v27 = v26;
          type metadata accessor for AnimationFinishingDefinitionKey<Double>?();
          v63 = v28;
          *&v62 = v24;
          *(&v62 + 1) = v25;
          outlined init with take of Any(&v62, v61);
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v60 = v22;
          v64[0] = 0x8000000000000000;
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
          v32 = v22[2];
          v33 = (v30 & 1) == 0;
          v34 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_56;
          }

          v35 = v30;
          if (v22[3] >= v34)
          {
            if (v29)
            {
              v38 = v60;
              if ((v30 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v38 = v60;
              if ((v35 & 1) == 0)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v29);
            v36 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
            if ((v35 & 1) != (v37 & 1))
            {
              goto LABEL_66;
            }

            v31 = v36;
            v38 = v60;
            if ((v35 & 1) == 0)
            {
LABEL_36:
              v38[(v31 >> 6) + 8] |= 1 << v31;
              *(v38[6] + 8 * v31) = v27;
              outlined init with take of Any(v61, (v38[7] + 32 * v31));
              v40 = v38[2];
              v41 = __OFADD__(v40, 1);
              v42 = v40 + 1;
              if (v41)
              {
                goto LABEL_58;
              }

              v38[2] = v42;
              goto LABEL_38;
            }
          }

          v39 = (v38[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1(v39);
          outlined init with take of Any(v61, v39);
LABEL_38:

          v64[0] = v38;
        }

        v43 = v21[4];
        *&v61[0] = v21[6];
        (*(*v43 + 120))(&v62, v61, v64, MEMORY[0x1E69E63B0], &protocol witness table for Double, a3);
        v44 = BYTE8(v62);
        v45 = HIBYTE(v65);

        v46 = *(v4 + 120);
        swift_endAccess();
        if ((v44 & 1) == 0 && (v45 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v18 >= *(v46 + 16))
        {
          goto LABEL_57;
        }

        v47 = *(v46 + 48 * v18 + 72);
        if (v47 >> 62)
        {
          v48 = __CocoaSet.count.getter();
          if (v48)
          {
LABEL_44:
            if (v48 < 1)
            {
              goto LABEL_59;
            }

            for (i = 0; i != v48; ++i)
            {
              if ((v47 & 0xC000000000000001) != 0)
              {
                v50 = MEMORY[0x193AC03C0](i, v47);
              }

              else
              {
                v50 = *(v47 + 8 * i + 32);
              }

              (*(*v50 + 96))();
            }
          }
        }

        else
        {
          v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v48)
          {
            goto LABEL_44;
          }
        }

        IndexSet.insert(_:)(v18);
LABEL_22:
        if (++v18 == v10)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 88);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 88) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_66:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v61 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 144) & 1) == 0 && (a1)
  {
    *(v4 + 144) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 136);
    if (v12 >> 62)
    {
      goto LABEL_60;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 168) + 16))
      {
        return result;
      }

      v60 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 168) + 16);
      if (!v10)
      {
LABEL_51:
        swift_beginAccess();
        v55 = v62;
        v56 = v63;
        specialized Collection.subscript.getter(v62);
        v57 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 168), v55);
        v58 = *(*(v4 + 168) + 16);
        if (v58 < v57)
        {
          goto LABEL_59;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v57, v58);
        outlined destroy of Slice<IndexSet>(v55, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v61 + 8))(v56, v60);
      }

      v18 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v19 = *(v4 + 168);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 168) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          *(v4 + 168) = v19;
        }

        if (v18 >= v19[2])
        {
          break;
        }

        v21 = &v19[9 * v18];
        v22 = v21[5];

        v23 = AGCreateWeakAttribute();
        v69[0] = v22;
        v69[1] = v23;
        v70 = 0;
        v24 = v21[10];
        if (v24)
        {
          v25 = v21[11];
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>();
          v27 = v26;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
          v67 = v28;
          *&v66 = v24;
          *(&v66 + 1) = v25;
          outlined init with take of Any(&v66, v65);
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v22;
          v69[0] = 0x8000000000000000;
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
          v32 = v22[2];
          v33 = (v30 & 1) == 0;
          v34 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_55;
          }

          v35 = v30;
          if (v22[3] >= v34)
          {
            if ((v29 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v29);
            v36 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
            if ((v35 & 1) != (v37 & 1))
            {
              goto LABEL_65;
            }

            v31 = v36;
          }

          v38 = v64;
          if (v35)
          {
            v39 = (v64[7] + 32 * v31);
            __swift_destroy_boxed_opaque_existential_1(v39);
            outlined init with take of Any(v65, v39);
          }

          else
          {
            v64[(v31 >> 6) + 8] |= 1 << v31;
            *(v38[6] + 8 * v31) = v27;
            outlined init with take of Any(v65, (v38[7] + 32 * v31));
            v40 = v38[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_57;
            }

            v38[2] = v42;
          }

          v69[0] = v38;
        }

        v43 = v21[4];
        v44 = *(v21 + 4);
        v65[0] = *(v21 + 3);
        v65[1] = v44;
        v45 = *(*v43 + 120);
        type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
        v47 = v46;
        v48 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
        v45(&v66, v65, v69, v47, v48, a3);
        LOBYTE(v45) = v68;
        v49 = HIBYTE(v70);

        v50 = *(v4 + 168);
        swift_endAccess();
        if (v45 & 1) != 0 || (v49)
        {
          if (v18 >= *(v50 + 16))
          {
            goto LABEL_56;
          }

          v51 = *(v50 + 72 * v18 + 96);
          if (v51 >> 62)
          {
            v52 = __CocoaSet.count.getter();
            if (v52)
            {
LABEL_43:
              if (v52 < 1)
              {
                goto LABEL_58;
              }

              for (i = 0; i != v52; ++i)
              {
                if ((v51 & 0xC000000000000001) != 0)
                {
                  v54 = MEMORY[0x193AC03C0](i, v51);
                }

                else
                {
                  v54 = *(v51 + 8 * i + 32);
                }

                (*(*v54 + 96))();
              }
            }
          }

          else
          {
            v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v52)
            {
              goto LABEL_43;
            }
          }

          IndexSet.insert(_:)(v18);
        }

        if (++v18 == v10)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 136);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 136) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v59 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 112) & 1) == 0 && (a1)
  {
    *(v4 + 112) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 104);
    if (v12 >> 62)
    {
      goto LABEL_60;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 136) + 16))
      {
        return result;
      }

      v58 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 136) + 16);
      if (!v10)
      {
LABEL_51:
        swift_beginAccess();
        v54 = v60;
        v55 = v61;
        specialized Collection.subscript.getter(v60);
        v56 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 136), v54);
        v57 = *(*(v4 + 136) + 16);
        if (v57 < v56)
        {
          goto LABEL_59;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v56, v57);
        outlined destroy of Slice<IndexSet>(v54, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v59 + 8))(v55, v58);
      }

      v18 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v19 = *(v4 + 136);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 136) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          *(v4 + 136) = v19;
        }

        if (v18 >= v19[2])
        {
          break;
        }

        v21 = &v19[7 * v18];
        v22 = v21[5];

        v23 = AGCreateWeakAttribute();
        v67[0] = v22;
        v67[1] = v23;
        v68 = 0;
        v24 = v21[8];
        if (v24)
        {
          v25 = v21[9];
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>();
          v27 = v26;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>, MEMORY[0x1E69E6720]);
          v66 = v28;
          *&v64 = v24;
          *(&v64 + 1) = v25;
          outlined init with take of Any(&v64, v63);
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v62 = v22;
          v67[0] = 0x8000000000000000;
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
          v32 = v22[2];
          v33 = (v30 & 1) == 0;
          v34 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_55;
          }

          v35 = v30;
          if (v22[3] >= v34)
          {
            if ((v29 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v29);
            v36 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
            if ((v35 & 1) != (v37 & 1))
            {
              goto LABEL_65;
            }

            v31 = v36;
          }

          v38 = v62;
          if (v35)
          {
            v39 = (v62[7] + 32 * v31);
            __swift_destroy_boxed_opaque_existential_1(v39);
            outlined init with take of Any(v63, v39);
          }

          else
          {
            v62[(v31 >> 6) + 8] |= 1 << v31;
            *(v38[6] + 8 * v31) = v27;
            outlined init with take of Any(v63, (v38[7] + 32 * v31));
            v40 = v38[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_57;
            }

            v38[2] = v42;
          }

          v67[0] = v38;
        }

        v43 = v21[4];
        v63[0] = *(v21 + 3);
        v44 = *(*v43 + 120);
        type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
        v46 = v45;
        v47 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
        v44(&v64, v63, v67, v46, v47, a3);
        LOBYTE(v44) = v65;
        v48 = HIBYTE(v68);

        v49 = *(v4 + 136);
        swift_endAccess();
        if (v44 & 1) != 0 || (v48)
        {
          if (v18 >= *(v49 + 16))
          {
            goto LABEL_56;
          }

          v50 = *(v49 + 56 * v18 + 80);
          if (v50 >> 62)
          {
            v51 = __CocoaSet.count.getter();
            if (v51)
            {
LABEL_43:
              if (v51 < 1)
              {
                goto LABEL_58;
              }

              for (i = 0; i != v51; ++i)
              {
                if ((v50 & 0xC000000000000001) != 0)
                {
                  v53 = MEMORY[0x193AC03C0](i, v50);
                }

                else
                {
                  v53 = *(v50 + 8 * i + 32);
                }

                (*(*v53 + 96))();
              }
            }
          }

          else
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v51)
            {
              goto LABEL_43;
            }
          }

          IndexSet.insert(_:)(v18);
        }

        if (++v18 == v10)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 104);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 104) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 120);
    if (v12 >> 62)
    {
      goto LABEL_60;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return result;
      }

      v59 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 152) + 16);
      if (!v10)
      {
LABEL_51:
        swift_beginAccess();
        v55 = v61;
        v56 = v62;
        specialized Collection.subscript.getter(v61);
        v57 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 152), v55);
        v58 = *(*(v4 + 152) + 16);
        if (v58 < v57)
        {
          goto LABEL_59;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v57, v58);
        outlined destroy of Slice<IndexSet>(v55, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v60 + 8))(v56, v59);
      }

      v18 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v19 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          *(v4 + 152) = v19;
        }

        if (v18 >= v19[2])
        {
          break;
        }

        v21 = &v19[8 * v18];
        v22 = v21[5];

        v23 = AGCreateWeakAttribute();
        v68[0] = v22;
        v68[1] = v23;
        v69 = 0;
        v24 = v21[9];
        if (v24)
        {
          v25 = v21[10];
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>();
          v27 = v26;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>, MEMORY[0x1E69E6720]);
          v67 = v28;
          *&v66 = v24;
          *(&v66 + 1) = v25;
          outlined init with take of Any(&v66, &v64);
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v63 = v22;
          v68[0] = 0x8000000000000000;
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
          v32 = v22[2];
          v33 = (v30 & 1) == 0;
          v34 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_55;
          }

          v35 = v30;
          if (v22[3] >= v34)
          {
            if ((v29 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v29);
            v36 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
            if ((v35 & 1) != (v37 & 1))
            {
              goto LABEL_65;
            }

            v31 = v36;
          }

          v38 = v63;
          if (v35)
          {
            v39 = (v63[7] + 32 * v31);
            __swift_destroy_boxed_opaque_existential_1(v39);
            outlined init with take of Any(&v64, v39);
          }

          else
          {
            v63[(v31 >> 6) + 8] |= 1 << v31;
            *(v38[6] + 8 * v31) = v27;
            outlined init with take of Any(&v64, (v38[7] + 32 * v31));
            v40 = v38[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_57;
            }

            v38[2] = v42;
          }

          v68[0] = v38;
        }

        v43 = v21[4];
        v44 = v21[8];
        v64 = *(v21 + 3);
        v65 = v44;
        v45 = *(*v43 + 120);
        type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>();
        v47 = v46;
        v48 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);
        v45(&v66, &v64, v68, v47, v48, a3);
        LOBYTE(v45) = v67;
        v49 = HIBYTE(v69);

        v50 = *(v4 + 152);
        swift_endAccess();
        if (v45 & 1) != 0 || (v49)
        {
          if (v18 >= *(v50 + 16))
          {
            goto LABEL_56;
          }

          v51 = *(v50 + (v18 << 6) + 88);
          if (v51 >> 62)
          {
            v52 = __CocoaSet.count.getter();
            if (v52)
            {
LABEL_43:
              if (v52 < 1)
              {
                goto LABEL_58;
              }

              for (i = 0; i != v52; ++i)
              {
                if ((v51 & 0xC000000000000001) != 0)
                {
                  v54 = MEMORY[0x193AC03C0](i, v51);
                }

                else
                {
                  v54 = *(v51 + 8 * i + 32);
                }

                (*(*v54 + 96))();
              }
            }
          }

          else
          {
            v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v52)
            {
              goto LABEL_43;
            }
          }

          IndexSet.insert(_:)(v18);
        }

        if (++v18 == v10)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 120);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 120);
    if (v12 >> 62)
    {
      goto LABEL_60;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return result;
      }

      v59 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 152) + 16);
      if (!v10)
      {
LABEL_51:
        swift_beginAccess();
        v55 = v61;
        v56 = v62;
        specialized Collection.subscript.getter(v61);
        v57 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 152), v55);
        v58 = *(*(v4 + 152) + 16);
        if (v58 < v57)
        {
          goto LABEL_59;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v57, v58);
        outlined destroy of Slice<IndexSet>(v55, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v60 + 8))(v56, v59);
      }

      v18 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v19 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          *(v4 + 152) = v19;
        }

        if (v18 >= v19[2])
        {
          break;
        }

        v21 = &v19[8 * v18];
        v22 = v21[5];

        v23 = AGCreateWeakAttribute();
        v68[0] = v22;
        v68[1] = v23;
        v69 = 0;
        v24 = v21[9];
        if (v24)
        {
          v25 = v21[10];
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>();
          v27 = v26;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
          v67 = v28;
          *&v66 = v24;
          *(&v66 + 1) = v25;
          outlined init with take of Any(&v66, &v64);
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v63 = v22;
          v68[0] = 0x8000000000000000;
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
          v32 = v22[2];
          v33 = (v30 & 1) == 0;
          v34 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_55;
          }

          v35 = v30;
          if (v22[3] >= v34)
          {
            if ((v29 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v29);
            v36 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
            if ((v35 & 1) != (v37 & 1))
            {
              goto LABEL_65;
            }

            v31 = v36;
          }

          v38 = v63;
          if (v35)
          {
            v39 = (v63[7] + 32 * v31);
            __swift_destroy_boxed_opaque_existential_1(v39);
            outlined init with take of Any(&v64, v39);
          }

          else
          {
            v63[(v31 >> 6) + 8] |= 1 << v31;
            *(v38[6] + 8 * v31) = v27;
            outlined init with take of Any(&v64, (v38[7] + 32 * v31));
            v40 = v38[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_57;
            }

            v38[2] = v42;
          }

          v68[0] = v38;
        }

        v43 = v21[4];
        v44 = v21[8];
        v64 = *(v21 + 3);
        v65 = v44;
        v45 = *(*v43 + 120);
        type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
        v47 = v46;
        v48 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
        v45(&v66, &v64, v68, v47, v48, a3);
        LOBYTE(v45) = v67;
        v49 = HIBYTE(v69);

        v50 = *(v4 + 152);
        swift_endAccess();
        if (v45 & 1) != 0 || (v49)
        {
          if (v18 >= *(v50 + 16))
          {
            goto LABEL_56;
          }

          v51 = *(v50 + (v18 << 6) + 88);
          if (v51 >> 62)
          {
            v52 = __CocoaSet.count.getter();
            if (v52)
            {
LABEL_43:
              if (v52 < 1)
              {
                goto LABEL_58;
              }

              for (i = 0; i != v52; ++i)
              {
                if ((v51 & 0xC000000000000001) != 0)
                {
                  v54 = MEMORY[0x193AC03C0](i, v51);
                }

                else
                {
                  v54 = *(v51 + 8 * i + 32);
                }

                (*(*v54 + 96))();
              }
            }
          }

          else
          {
            v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v52)
            {
              goto LABEL_43;
            }
          }

          IndexSet.insert(_:)(v18);
        }

        if (++v18 == v10)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 120);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v59 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 96) & 1) == 0 && (a1)
  {
    *(v4 + 96) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 88);
    if (v12 >> 62)
    {
      goto LABEL_61;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 120) + 16))
      {
        return result;
      }

      v58 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 120) + 16);
      if (!v10)
      {
LABEL_52:
        swift_beginAccess();
        v53 = v60;
        v54 = v61;
        specialized Collection.subscript.getter(v60);
        v55 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 120), v53);
        v56 = *(*(v4 + 120) + 16);
        if (v56 < v55)
        {
          goto LABEL_60;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v55, v56);
        outlined destroy of Slice<IndexSet>(v53, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v59 + 8))(v54, v58);
      }

      v18 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v19 = *(v4 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 120) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          *(v4 + 120) = v19;
        }

        if (v18 >= v19[2])
        {
          break;
        }

        v21 = &v19[6 * v18];
        v22 = v21[5];

        v23 = AGCreateWeakAttribute();
        v66[0] = v22;
        v66[1] = v23;
        v67 = 0;
        v24 = v21[7];
        if (v24)
        {
          v25 = v21[8];
          type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimationFinishingDefinitionKey);
          v27 = v26;
          type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>?();
          v65 = v28;
          *&v64 = v24;
          *(&v64 + 1) = v25;
          outlined init with take of Any(&v64, v63);
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v62 = v22;
          v66[0] = 0x8000000000000000;
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
          v32 = v22[2];
          v33 = (v30 & 1) == 0;
          v34 = v32 + v33;
          if (__OFADD__(v32, v33))
          {
            goto LABEL_56;
          }

          v35 = v30;
          if (v22[3] >= v34)
          {
            if (v29)
            {
              v38 = v62;
              if ((v30 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v38 = v62;
              if ((v35 & 1) == 0)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v29);
            v36 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
            if ((v35 & 1) != (v37 & 1))
            {
              goto LABEL_66;
            }

            v31 = v36;
            v38 = v62;
            if ((v35 & 1) == 0)
            {
LABEL_36:
              v38[(v31 >> 6) + 8] |= 1 << v31;
              *(v38[6] + 8 * v31) = v27;
              outlined init with take of Any(v63, (v38[7] + 32 * v31));
              v40 = v38[2];
              v41 = __OFADD__(v40, 1);
              v42 = v40 + 1;
              if (v41)
              {
                goto LABEL_58;
              }

              v38[2] = v42;
              goto LABEL_38;
            }
          }

          v39 = (v38[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1(v39);
          outlined init with take of Any(v63, v39);
LABEL_38:

          v66[0] = v38;
        }

        v43 = v21[4];
        *&v63[0] = v21[6];
        v44 = *(*v43 + 120);
        v45 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v44(&v64, v63, v66, MEMORY[0x1E69E7DE0], v45, a3);
        v46 = BYTE8(v64);
        v47 = HIBYTE(v67);

        v48 = *(v4 + 120);
        swift_endAccess();
        if ((v46 & 1) == 0 && (v47 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v18 >= *(v48 + 16))
        {
          goto LABEL_57;
        }

        v49 = *(v48 + 48 * v18 + 72);
        if (v49 >> 62)
        {
          v50 = __CocoaSet.count.getter();
          if (v50)
          {
LABEL_44:
            if (v50 < 1)
            {
              goto LABEL_59;
            }

            for (i = 0; i != v50; ++i)
            {
              if ((v49 & 0xC000000000000001) != 0)
              {
                v52 = MEMORY[0x193AC03C0](i, v49);
              }

              else
              {
                v52 = *(v49 + 8 * i + 32);
              }

              (*(*v52 + 96))();
            }
          }
        }

        else
        {
          v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v50)
          {
            goto LABEL_44;
          }
        }

        IndexSet.insert(_:)(v18);
LABEL_22:
        if (++v18 == v10)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 88);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 88) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_66:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 144) & 1) == 0 && (a1)
  {
    *(v4 + 144) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 136);
    if (v14 >> 62)
    {
      goto LABEL_65;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 168) + 16))
      {
        return result;
      }

      v64 = v11;
      v65 = v10;
      v67 = v13;
      IndexSet.init()();
      v11 = *(*(v4 + 168) + 16);
      if (!v11)
      {
LABEL_56:
        swift_beginAccess();
        a2 = v66;
        v60 = v67;
        specialized Collection.subscript.getter(v66);
        v61 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 168, a2);
        v62 = *(*(v4 + 168) + 16);
        if (v62 < v61)
        {
          goto LABEL_64;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v61, v62);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v64 + 8))(v60, v65);
      }

      type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
      v21 = v20;
      v22 = 0;
      v23 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v23 = a2;
      }

      v68 = v23;
      v24 = MEMORY[0x1E69E63B0];
      while (1)
      {
        swift_beginAccess();
        v25 = *(v4 + 168);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 168) = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
          *(v4 + 168) = v25;
        }

        if (v22 >= v25[2])
        {
          break;
        }

        v10 = &v25[9 * v22];
        v27 = v10[5];

        v28 = AGCreateWeakAttribute();
        v76[0] = v27;
        v76[1] = v28;
        v77 = 0;
        a2 = v10[10];
        if (a2)
        {
          v29 = v10[11];
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>();
          v31 = v30;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
          v74 = v32;
          *&v73 = a2;
          *(&v73 + 1) = v29;
          outlined init with take of Any(&v73, &v70);
          v13 = swift_isUniquelyReferenced_nonNull_native();
          v69[0] = v27;
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
          v35 = *(v27 + 16);
          v36 = (v33 & 1) == 0;
          v37 = v35 + v36;
          if (__OFADD__(v35, v36))
          {
            goto LABEL_60;
          }

          a2 = v33;
          if (*(v27 + 24) >= v37)
          {
            if ((v13 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, v13);
            v38 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
            if ((a2 & 1) != (v39 & 1))
            {
              goto LABEL_70;
            }

            v34 = v38;
          }

          v13 = v69[0];
          if (a2)
          {
            v40 = (*(v69[0] + 56) + 32 * v34);
            __swift_destroy_boxed_opaque_existential_1(v40);
            outlined init with take of Any(&v70, v40);
          }

          else
          {
            *(v69[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
            *(*(v13 + 48) + 8 * v34) = v31;
            outlined init with take of Any(&v70, (*(v13 + 56) + 32 * v34));
            v41 = *(v13 + 16);
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_62;
            }

            *(v13 + 16) = v43;
          }

          v76[0] = v13;
          v24 = MEMORY[0x1E69E63B0];
        }

        v44 = v10[4];
        v45 = v10[6];
        v46 = v10[7];
        v47 = v10[8];
        v48 = v10[9];
        *&v70 = v45;
        *(&v70 + 1) = v46;
        v71 = v47;
        v72 = v48;
        if (v21 == v24)
        {
          v69[0] = v45;
          (*(*v44 + 120))(&v73, v69, v76, v24, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v21 == v49)
          {
            v52 = v49;
            v69[0] = v45;
            v69[1] = v46;
            v69[2] = v47;
            v69[3] = v48;
            v53 = *(*v44 + 120);
            v13 = *v44 + 120;
            v54 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
            v53(&v73, v69, v76, v52, v54, a3);
          }

          else
          {
            v50 = *(*v44 + 120);
            v51 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
            v50(&v73, &v70, v76, v21, v51, a3);
          }
        }

        v55 = v75;
        a2 = HIBYTE(v77);

        v56 = *(v4 + 168);
        swift_endAccess();
        if (v55 & 1) != 0 || (a2)
        {
          if (v22 >= *(v56 + 16))
          {
            goto LABEL_61;
          }

          v57 = *(v56 + 72 * v22 + 96);
          if (v57 >> 62)
          {
            a2 = __CocoaSet.count.getter();
            if (a2)
            {
LABEL_48:
              if (a2 < 1)
              {
                goto LABEL_63;
              }

              v13 = v57 & 0xC000000000000001;

              v58 = 0;
              do
              {
                if (v13)
                {
                  v59 = MEMORY[0x193AC03C0](v58, v57);
                }

                else
                {
                  v59 = *(v57 + 8 * v58 + 32);
                }

                ++v58;
                (*(*v59 + 96))();
              }

              while (a2 != v58);

              v24 = MEMORY[0x1E69E63B0];
            }
          }

          else
          {
            a2 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a2)
            {
              goto LABEL_48;
            }
          }

          IndexSet.insert(_:)(v22);
        }

        if (++v22 == v11)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 136);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 136) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](i, v15);
      }

      else
      {
        v18 = *(v15 + 8 * i + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_70:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return result;
      }

      v62 = v10;
      v60 = v12;
      v61 = v11;
      v63 = v14;
      IndexSet.init()();
      v64 = *(*(v4 + 152) + 16);
      if (!v64)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v62;
        v57 = v63;
        specialized Collection.subscript.getter(v62);
        v58 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2);
        v59 = *(*(v4 + 152) + 16);
        if (v59 < v58)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v58, v59);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v60 + 8))(v57, v61);
      }

      type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
      v22 = v21;
      v23 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v24 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          *(v4 + 152) = v24;
        }

        if (v23 >= v24[2])
        {
          break;
        }

        v11 = &v24[8 * v23];
        v26 = v11[5];

        v27 = AGCreateWeakAttribute();
        v71[0] = v26;
        v71[1] = v27;
        v72 = 0;
        a2 = v11[9];
        if (!a2)
        {
          goto LABEL_39;
        }

        v28 = v11[10];
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
        v30 = v29;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
        v69 = v31;
        *&v68 = a2;
        *(&v68 + 1) = v28;
        outlined init with take of Any(&v68, &v65);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        v70[0] = v26;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        v33 = *(v26 + 16);
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_61;
        }

        a2 = v32;
        if (*(v26 + 24) >= v35)
        {
          if (v14)
          {
            v14 = v70[0];
            if ((v32 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v70[0];
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v14);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if ((a2 & 1) != (v37 & 1))
          {
            goto LABEL_71;
          }

          v12 = v36;
          v14 = v70[0];
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v30;
            outlined init with take of Any(&v65, (*(v14 + 56) + 32 * v12));
            v39 = *(v14 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v41;
            goto LABEL_38;
          }
        }

        v38 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v38);
        outlined init with take of Any(&v65, v38);
LABEL_38:
        v71[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v42 = v11[4];
        v43 = v11[6];
        v44 = v11[7];
        v45 = v11[8];
        v70[0] = v43;
        v70[1] = v44;
        v70[2] = v45;
        if (v22 == v12)
        {
          *&v65 = v43;
          (*(*v42 + 120))(&v68, &v65, v71, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v22 == v46)
          {
            v49 = v46;
            *&v65 = v43;
            *(&v65 + 1) = v44;
            v66 = v45;
            v67 = v71[0];
            v50 = *(*v42 + 120);
            v14 = *v42 + 120;
            v51 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
            v50(&v68, &v65, v71, v49, v51, a3);
          }

          else
          {
            v47 = *(*v42 + 120);
            v48 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
            v47(&v68, v70, v71, v22, v48, a3);
          }
        }

        v52 = v69;
        a2 = HIBYTE(v72);

        v53 = *(v4 + 152);
        swift_endAccess();
        if ((v52 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v23 >= *(v53 + 16))
        {
          goto LABEL_62;
        }

        v54 = *(v53 + (v23 << 6) + 88);
        if (v54 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v54 & 0xC000000000000001;

            v55 = 0;
            do
            {
              if (v14)
              {
                v56 = MEMORY[0x193AC03C0](v55, v54);
              }

              else
              {
                v56 = *(v54 + 8 * v55 + 32);
              }

              ++v55;
              (*(*v56 + 96))();
            }

            while (a2 != v55);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v23);
LABEL_22:
        if (++v23 == v64)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v63 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v63;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return result;
      }

      v62 = v10;
      v60 = v12;
      v61 = v11;
      v63 = v14;
      IndexSet.init()();
      v64 = *(*(v4 + 152) + 16);
      if (!v64)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v62;
        v57 = v63;
        specialized Collection.subscript.getter(v62);
        v58 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2);
        v59 = *(*(v4 + 152) + 16);
        if (v59 < v58)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v58, v59);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v60 + 8))(v57, v61);
      }

      type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>();
      v22 = v21;
      v23 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v24 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          *(v4 + 152) = v24;
        }

        if (v23 >= v24[2])
        {
          break;
        }

        v11 = &v24[8 * v23];
        v26 = v11[5];

        v27 = AGCreateWeakAttribute();
        v71[0] = v26;
        v71[1] = v27;
        v72 = 0;
        a2 = v11[9];
        if (!a2)
        {
          goto LABEL_39;
        }

        v28 = v11[10];
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>();
        v30 = v29;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>, MEMORY[0x1E69E6720]);
        v69 = v31;
        *&v68 = a2;
        *(&v68 + 1) = v28;
        outlined init with take of Any(&v68, &v65);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        v70[0] = v26;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        v33 = *(v26 + 16);
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_61;
        }

        a2 = v32;
        if (*(v26 + 24) >= v35)
        {
          if (v14)
          {
            v14 = v70[0];
            if ((v32 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v70[0];
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v14);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if ((a2 & 1) != (v37 & 1))
          {
            goto LABEL_71;
          }

          v12 = v36;
          v14 = v70[0];
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v30;
            outlined init with take of Any(&v65, (*(v14 + 56) + 32 * v12));
            v39 = *(v14 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v41;
            goto LABEL_38;
          }
        }

        v38 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v38);
        outlined init with take of Any(&v65, v38);
LABEL_38:
        v71[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v42 = v11[4];
        v43 = v11[6];
        v44 = v11[7];
        v45 = v11[8];
        v70[0] = v43;
        v70[1] = v44;
        v70[2] = v45;
        if (v22 == v12)
        {
          *&v65 = v43;
          (*(*v42 + 120))(&v68, &v65, v71, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v22 == v46)
          {
            v49 = v46;
            *&v65 = v43;
            *(&v65 + 1) = v44;
            v66 = v45;
            v67 = v71[0];
            v50 = *(*v42 + 120);
            v14 = *v42 + 120;
            v51 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
            v50(&v68, &v65, v71, v49, v51, a3);
          }

          else
          {
            v47 = *(*v42 + 120);
            v48 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
            v47(&v68, v70, v71, v22, v48, a3);
          }
        }

        v52 = v69;
        a2 = HIBYTE(v72);

        v53 = *(v4 + 152);
        swift_endAccess();
        if ((v52 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v23 >= *(v53 + 16))
        {
          goto LABEL_62;
        }

        v54 = *(v53 + (v23 << 6) + 88);
        if (v54 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v54 & 0xC000000000000001;

            v55 = 0;
            do
            {
              if (v14)
              {
                v56 = MEMORY[0x193AC03C0](v55, v54);
              }

              else
              {
                v56 = *(v54 + 8 * v55 + 32);
              }

              ++v55;
              (*(*v56 + 96))();
            }

            while (a2 != v55);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v23);
LABEL_22:
        if (++v23 == v64)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v63 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v63;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 112) & 1) == 0 && (a1)
  {
    *(v4 + 112) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 104);
    if (v14 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 136) + 16))
      {
        return result;
      }

      v59 = v11;
      v60 = v10;
      v62 = v13;
      IndexSet.init()();
      v64 = *(*(v4 + 136) + 16);
      if (!v64)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v61;
        v55 = v62;
        specialized Collection.subscript.getter(v61);
        v56 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 136, a2);
        v57 = *(*(v4 + 136) + 16);
        if (v57 < v56)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v56, v57);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v59 + 8))(v55, v60);
      }

      type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
      v21 = v20;
      v22 = 0;
      v23 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v23 = a2;
      }

      v63 = v23;
      v11 = MEMORY[0x1E69E63B0];
      while (1)
      {
        swift_beginAccess();
        v24 = *(v4 + 136);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 136) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          *(v4 + 136) = v24;
        }

        if (v22 >= v24[2])
        {
          break;
        }

        v10 = &v24[7 * v22];
        v26 = *(v10 + 40);

        v27 = AGCreateWeakAttribute();
        *&v70 = v26;
        *(&v70 + 1) = v27;
        v71 = 0;
        a2 = *(v10 + 64);
        if (!a2)
        {
          goto LABEL_39;
        }

        v28 = *(v10 + 72);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
        v30 = v29;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
        v68 = v31;
        *&v66 = a2;
        *(&v66 + 1) = v28;
        outlined init with take of Any(&v66, v65);
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *&v69 = v26;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        v34 = *(v26 + 16);
        v35 = (v32 & 1) == 0;
        v36 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_61;
        }

        a2 = v32;
        if (*(v26 + 24) >= v36)
        {
          if (v13)
          {
            v13 = v69;
            if ((v32 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v13 = v69;
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v13);
          v37 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if ((a2 & 1) != (v38 & 1))
          {
            goto LABEL_71;
          }

          v33 = v37;
          v13 = v69;
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v13 + 8 * (v33 >> 6) + 64) |= 1 << v33;
            *(*(v13 + 48) + 8 * v33) = v30;
            outlined init with take of Any(v65, (*(v13 + 56) + 32 * v33));
            v40 = *(v13 + 16);
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_63;
            }

            *(v13 + 16) = v42;
            goto LABEL_38;
          }
        }

        v39 = (*(v13 + 56) + 32 * v33);
        __swift_destroy_boxed_opaque_existential_1(v39);
        outlined init with take of Any(v65, v39);
LABEL_38:
        *&v70 = v13;
LABEL_39:
        v43 = *(v10 + 32);
        v69 = *(v10 + 48);
        if (v21 == v11)
        {
          *&v65[0] = v69;
          (*(*v43 + 120))(&v66, v65, &v70, v11, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v21 == v44)
          {
            v47 = v44;
            v65[0] = v69;
            v65[1] = v70;
            v48 = *(*v43 + 120);
            v13 = *v43 + 120;
            v49 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
            v48(&v66, v65, &v70, v47, v49, a3);
          }

          else
          {
            v45 = *(*v43 + 120);
            v46 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
            v45(&v66, &v69, &v70, v21, v46, a3);
          }
        }

        v50 = v67;
        a2 = HIBYTE(v71);

        v51 = *(v4 + 136);
        swift_endAccess();
        if ((v50 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v22 >= *(v51 + 16))
        {
          goto LABEL_62;
        }

        v52 = *(v51 + 56 * v22 + 80);
        if (v52 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v13 = v52 & 0xC000000000000001;

            v53 = 0;
            do
            {
              if (v13)
              {
                v54 = MEMORY[0x193AC03C0](v53, v52);
              }

              else
              {
                v54 = *(v52 + 8 * v53 + 32);
              }

              ++v53;
              (*(*v54 + 96))();
            }

            while (a2 != v53);
          }
        }

        else
        {
          a2 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v22);
LABEL_22:
        if (++v22 == v64)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 104);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 104) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](i, v15);
      }

      else
      {
        v18 = *(v15 + 8 * i + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return result;
      }

      v61 = v10;
      v59 = v12;
      v60 = v11;
      v62 = v14;
      IndexSet.init()();
      v63 = *(*(v4 + 152) + 16);
      if (!v63)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v61;
        v56 = v62;
        specialized Collection.subscript.getter(v61);
        v57 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2);
        v58 = *(*(v4 + 152) + 16);
        if (v58 < v57)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v57, v58);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v59 + 8))(v56, v60);
      }

      type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
      v22 = v21;
      v23 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v24 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          *(v4 + 152) = v24;
        }

        if (v23 >= v24[2])
        {
          break;
        }

        v26 = &v24[8 * v23];
        v11 = (v26 + 4);
        v27 = v26[5];

        v28 = AGCreateWeakAttribute();
        v70[0] = v27;
        v70[1] = v28;
        v71 = 0;
        a2 = v26[9];
        if (!a2)
        {
          goto LABEL_39;
        }

        v29 = *(v11 + 48);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
        v31 = v30;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>, MEMORY[0x1E69E6720]);
        v67 = v32;
        *&v65 = a2;
        *(&v65 + 1) = v29;
        outlined init with take of Any(&v65, v64);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *&v68 = v27;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
        v34 = *(v27 + 16);
        v35 = (v33 & 1) == 0;
        v36 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_61;
        }

        a2 = v33;
        if (*(v27 + 24) >= v36)
        {
          if (v14)
          {
            v14 = v68;
            if ((v33 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v68;
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v14);
          v37 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
          if ((a2 & 1) != (v38 & 1))
          {
            goto LABEL_71;
          }

          v12 = v37;
          v14 = v68;
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v31;
            outlined init with take of Any(v64, (*(v14 + 56) + 32 * v12));
            v40 = *(v14 + 16);
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v42;
            goto LABEL_38;
          }
        }

        v39 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v39);
        outlined init with take of Any(v64, v39);
LABEL_38:
        v70[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v43 = *v11;
        v44 = *(v11 + 32);
        v68 = *(v11 + 16);
        LODWORD(v69) = v44;
        if (v22 == v12)
        {
          *&v64[0] = v68;
          (*(*v43 + 120))(&v65, v64, v70, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v22 == v45)
          {
            v48 = v45;
            v64[0] = v68;
            v64[1] = v69;
            v49 = *(*v43 + 120);
            v14 = *v43 + 120;
            v50 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
            v49(&v65, v64, v70, v48, v50, a3);
          }

          else
          {
            v46 = *(*v43 + 120);
            v47 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
            v46(&v65, &v68, v70, v22, v47, a3);
          }
        }

        v51 = BYTE4(v66);
        a2 = HIBYTE(v71);

        v52 = *(v4 + 152);
        swift_endAccess();
        if ((v51 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v23 >= *(v52 + 16))
        {
          goto LABEL_62;
        }

        v53 = *(v52 + (v23 << 6) + 88);
        if (v53 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v53 & 0xC000000000000001;

            v54 = 0;
            do
            {
              if (v14)
              {
                v55 = MEMORY[0x193AC03C0](v54, v53);
              }

              else
              {
                v55 = *(v53 + 8 * v54 + 32);
              }

              ++v54;
              (*(*v55 + 96))();
            }

            while (a2 != v54);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v23);
LABEL_22:
        if (++v23 == v63)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v62 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v62;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 160) & 1) == 0 && (a1)
  {
    *(v4 + 160) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 152);
    if (v14 >> 62)
    {
      goto LABEL_65;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 184) + 16))
      {
        return result;
      }

      v62 = v11;
      v63 = v10;
      v65 = v13;
      IndexSet.init()();
      v68 = *(*(v4 + 184) + 16);
      if (!v68)
      {
LABEL_56:
        swift_beginAccess();
        a2 = v64;
        v59 = v65;
        specialized Collection.subscript.getter(v64);
        v60 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 184, a2);
        v61 = *(*(v4 + 184) + 16);
        if (v61 < v60)
        {
          goto LABEL_64;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v60, v61);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v62 + 8))(v59, v63);
      }

      type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>();
      v21 = v20;
      v22 = 0;
      v23 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v23 = a2;
      }

      v67 = v23;
      v11 = MEMORY[0x1E69E63B0];
      while (1)
      {
        swift_beginAccess();
        v24 = *(v4 + 184);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 184) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          *(v4 + 184) = v24;
        }

        if (v22 >= v24[2])
        {
          break;
        }

        v10 = &v24[10 * v22];
        v26 = *(v10 + 40);

        v27 = AGCreateWeakAttribute();
        v76[0] = v26;
        v76[1] = v27;
        v77 = 0;
        a2 = *(v10 + 88);
        if (a2)
        {
          v28 = *(v10 + 96);
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>();
          v30 = v29;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>, MEMORY[0x1E69E6720]);
          v74 = v31;
          *&v73 = a2;
          *(&v73 + 1) = v28;
          outlined init with take of Any(&v73, &v70);
          v13 = swift_isUniquelyReferenced_nonNull_native();
          v69[0] = v26;
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          v34 = *(v26 + 16);
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_60;
          }

          a2 = v32;
          if (*(v26 + 24) >= v36)
          {
            if ((v13 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v13);
            v37 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
            if ((a2 & 1) != (v38 & 1))
            {
              goto LABEL_70;
            }

            v33 = v37;
          }

          v13 = v69[0];
          if (a2)
          {
            v39 = (*(v69[0] + 56) + 32 * v33);
            __swift_destroy_boxed_opaque_existential_1(v39);
            outlined init with take of Any(&v70, v39);
          }

          else
          {
            *(v69[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
            *(*(v13 + 48) + 8 * v33) = v30;
            outlined init with take of Any(&v70, (*(v13 + 56) + 32 * v33));
            v40 = *(v13 + 16);
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_62;
            }

            *(v13 + 16) = v42;
          }

          v76[0] = v13;
        }

        v43 = *(v10 + 32);
        v44 = *(v10 + 48);
        v45 = *(v10 + 56);
        v46 = *(v10 + 64);
        v47 = *(v10 + 72);
        *&v70 = v44;
        *(&v70 + 1) = v45;
        v71 = v46;
        v72 = v47;
        if (v21 == v11)
        {
          v69[0] = v44;
          (*(*v43 + 120))(&v73, v69, v76, v11, &protocol witness table for Double, a3);
        }

        else
        {
          v66 = v47;
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v21 == v48)
          {
            v51 = v48;
            v69[0] = v44;
            v69[1] = v45;
            v69[2] = v46;
            v69[3] = v66;
            v52 = *(*v43 + 120);
            v13 = *v43 + 120;
            v53 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
            v52(&v73, v69, v76, v51, v53, a3);
          }

          else
          {
            v49 = *(*v43 + 120);
            v50 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);
            v49(&v73, &v70, v76, v21, v50, a3);
          }
        }

        v54 = v75;
        a2 = HIBYTE(v77);

        v55 = *(v4 + 184);
        swift_endAccess();
        if (v54 & 1) != 0 || (a2)
        {
          if (v22 >= *(v55 + 16))
          {
            goto LABEL_61;
          }

          v56 = *(v55 + 80 * v22 + 104);
          if (v56 >> 62)
          {
            a2 = __CocoaSet.count.getter();
            if (a2)
            {
LABEL_48:
              if (a2 < 1)
              {
                goto LABEL_63;
              }

              v13 = v56 & 0xC000000000000001;

              v57 = 0;
              do
              {
                if (v13)
                {
                  v58 = MEMORY[0x193AC03C0](v57, v56);
                }

                else
                {
                  v58 = *(v56 + 8 * v57 + 32);
                }

                ++v57;
                (*(*v58 + 96))();
              }

              while (a2 != v57);
            }
          }

          else
          {
            a2 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a2)
            {
              goto LABEL_48;
            }
          }

          IndexSet.insert(_:)(v22);
        }

        if (++v22 == v68)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 152);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 152) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](i, v15);
      }

      else
      {
        v18 = *(v15 + 8 * i + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_70:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return result;
      }

      v60 = v10;
      v58 = v12;
      v59 = v11;
      v61 = v14;
      IndexSet.init()();
      v62 = *(*(v4 + 152) + 16);
      if (!v62)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v60;
        v55 = v61;
        specialized Collection.subscript.getter(v60);
        v56 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2);
        v57 = *(*(v4 + 152) + 16);
        if (v57 < v56)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v56, v57);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v58 + 8))(v55, v59);
      }

      type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
      v22 = v21;
      v23 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v24 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          *(v4 + 152) = v24;
        }

        if (v23 >= v24[2])
        {
          break;
        }

        v11 = &v24[8 * v23];
        v26 = *(v11 + 40);

        v27 = AGCreateWeakAttribute();
        v68[0] = v26;
        v68[1] = v27;
        v69 = 0;
        a2 = *(v11 + 72);
        if (!a2)
        {
          goto LABEL_39;
        }

        v28 = *(v11 + 80);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>();
        v30 = v29;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>, MEMORY[0x1E69E6720]);
        v65 = v31;
        *&v64 = a2;
        *(&v64 + 1) = v28;
        outlined init with take of Any(&v64, v63);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *&v66 = v26;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        v33 = *(v26 + 16);
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_61;
        }

        a2 = v32;
        if (*(v26 + 24) >= v35)
        {
          if (v14)
          {
            v14 = v66;
            if ((v32 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v66;
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v14);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if ((a2 & 1) != (v37 & 1))
          {
            goto LABEL_71;
          }

          v12 = v36;
          v14 = v66;
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v30;
            outlined init with take of Any(v63, (*(v14 + 56) + 32 * v12));
            v39 = *(v14 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v41;
            goto LABEL_38;
          }
        }

        v38 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v38);
        outlined init with take of Any(v63, v38);
LABEL_38:
        v68[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v42 = *(v11 + 32);
        v43 = *(v11 + 64);
        v66 = *(v11 + 48);
        *&v67 = v43;
        if (v22 == v12)
        {
          *&v63[0] = v66;
          (*(*v42 + 120))(&v64, v63, v68, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v22 == v44)
          {
            v47 = v44;
            v63[0] = v66;
            v63[1] = v67;
            v48 = *(*v42 + 120);
            v14 = *v42 + 120;
            v49 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
            v48(&v64, v63, v68, v47, v49, a3);
          }

          else
          {
            v45 = *(*v42 + 120);
            v46 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
            v45(&v64, &v66, v68, v22, v46, a3);
          }
        }

        v50 = v65;
        a2 = HIBYTE(v69);

        v51 = *(v4 + 152);
        swift_endAccess();
        if ((v50 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v23 >= *(v51 + 16))
        {
          goto LABEL_62;
        }

        v52 = *(v51 + (v23 << 6) + 88);
        if (v52 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v52 & 0xC000000000000001;

            v53 = 0;
            do
            {
              if (v14)
              {
                v54 = MEMORY[0x193AC03C0](v53, v52);
              }

              else
              {
                v54 = *(v52 + 8 * v53 + 32);
              }

              ++v53;
              (*(*v54 + 96))();
            }

            while (a2 != v53);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v23);
LABEL_22:
        if (++v23 == v62)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v61 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v61;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return result;
      }

      v62 = v10;
      v60 = v12;
      v61 = v11;
      v63 = v14;
      IndexSet.init()();
      v64 = *(*(v4 + 152) + 16);
      if (!v64)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v62;
        v57 = v63;
        specialized Collection.subscript.getter(v62);
        v58 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2);
        v59 = *(*(v4 + 152) + 16);
        if (v59 < v58)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v58, v59);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v60 + 8))(v57, v61);
      }

      type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>();
      v22 = v21;
      v23 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v24 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          *(v4 + 152) = v24;
        }

        if (v23 >= v24[2])
        {
          break;
        }

        v11 = &v24[8 * v23];
        v26 = v11[5];

        v27 = AGCreateWeakAttribute();
        v71[0] = v26;
        v71[1] = v27;
        v72 = 0;
        a2 = v11[9];
        if (!a2)
        {
          goto LABEL_39;
        }

        v28 = v11[10];
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>();
        v30 = v29;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
        v69 = v31;
        *&v68 = a2;
        *(&v68 + 1) = v28;
        outlined init with take of Any(&v68, &v65);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        v70[0] = v26;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        v33 = *(v26 + 16);
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_61;
        }

        a2 = v32;
        if (*(v26 + 24) >= v35)
        {
          if (v14)
          {
            v14 = v70[0];
            if ((v32 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v70[0];
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v14);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if ((a2 & 1) != (v37 & 1))
          {
            goto LABEL_71;
          }

          v12 = v36;
          v14 = v70[0];
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v30;
            outlined init with take of Any(&v65, (*(v14 + 56) + 32 * v12));
            v39 = *(v14 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v41;
            goto LABEL_38;
          }
        }

        v38 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v38);
        outlined init with take of Any(&v65, v38);
LABEL_38:
        v71[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v42 = v11[4];
        v43 = v11[6];
        v44 = v11[7];
        v45 = v11[8];
        v70[0] = v43;
        v70[1] = v44;
        v70[2] = v45;
        if (v22 == v12)
        {
          *&v65 = v43;
          (*(*v42 + 120))(&v68, &v65, v71, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v22 == v46)
          {
            v49 = v46;
            *&v65 = v43;
            *(&v65 + 1) = v44;
            v66 = v45;
            v67 = v71[0];
            v50 = *(*v42 + 120);
            v14 = *v42 + 120;
            v51 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
            v50(&v68, &v65, v71, v49, v51, a3);
          }

          else
          {
            v47 = *(*v42 + 120);
            v48 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);
            v47(&v68, v70, v71, v22, v48, a3);
          }
        }

        v52 = v69;
        a2 = HIBYTE(v72);

        v53 = *(v4 + 152);
        swift_endAccess();
        if ((v52 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v23 >= *(v53 + 16))
        {
          goto LABEL_62;
        }

        v54 = *(v53 + (v23 << 6) + 88);
        if (v54 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v54 & 0xC000000000000001;

            v55 = 0;
            do
            {
              if (v14)
              {
                v56 = MEMORY[0x193AC03C0](v55, v54);
              }

              else
              {
                v56 = *(v54 + 8 * v55 + 32);
              }

              ++v55;
              (*(*v56 + 96))();
            }

            while (a2 != v55);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v23);
LABEL_22:
        if (++v23 == v64)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v63 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v63;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return result;
      }

      v60 = v10;
      v58 = v12;
      v59 = v11;
      v61 = v14;
      IndexSet.init()();
      v62 = *(*(v4 + 152) + 16);
      if (!v62)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v60;
        v55 = v61;
        specialized Collection.subscript.getter(v60);
        v56 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2);
        v57 = *(*(v4 + 152) + 16);
        if (v57 < v56)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v56, v57);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v58 + 8))(v55, v59);
      }

      type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
      v22 = v21;
      v23 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v24 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          *(v4 + 152) = v24;
        }

        if (v23 >= v24[2])
        {
          break;
        }

        v11 = &v24[8 * v23];
        v26 = *(v11 + 40);

        v27 = AGCreateWeakAttribute();
        v68[0] = v26;
        v68[1] = v27;
        v69 = 0;
        a2 = *(v11 + 72);
        if (!a2)
        {
          goto LABEL_39;
        }

        v28 = *(v11 + 80);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
        v30 = v29;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
        v65 = v31;
        *&v64 = a2;
        *(&v64 + 1) = v28;
        outlined init with take of Any(&v64, v63);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *&v66 = v26;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        v33 = *(v26 + 16);
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_61;
        }

        a2 = v32;
        if (*(v26 + 24) >= v35)
        {
          if (v14)
          {
            v14 = v66;
            if ((v32 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v66;
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v14);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if ((a2 & 1) != (v37 & 1))
          {
            goto LABEL_71;
          }

          v12 = v36;
          v14 = v66;
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v30;
            outlined init with take of Any(v63, (*(v14 + 56) + 32 * v12));
            v39 = *(v14 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v41;
            goto LABEL_38;
          }
        }

        v38 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v38);
        outlined init with take of Any(v63, v38);
LABEL_38:
        v68[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v42 = *(v11 + 32);
        v43 = *(v11 + 64);
        v66 = *(v11 + 48);
        *&v67 = v43;
        if (v22 == v12)
        {
          *&v63[0] = v66;
          (*(*v42 + 120))(&v64, v63, v68, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v22 == v44)
          {
            v47 = v44;
            v63[0] = v66;
            v63[1] = v67;
            v48 = *(*v42 + 120);
            v14 = *v42 + 120;
            v49 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
            v48(&v64, v63, v68, v47, v49, a3);
          }

          else
          {
            v45 = *(*v42 + 120);
            v46 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
            v45(&v64, &v66, v68, v22, v46, a3);
          }
        }

        v50 = v65;
        a2 = HIBYTE(v69);

        v51 = *(v4 + 152);
        swift_endAccess();
        if ((v50 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v23 >= *(v51 + 16))
        {
          goto LABEL_62;
        }

        v52 = *(v51 + (v23 << 6) + 88);
        if (v52 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v52 & 0xC000000000000001;

            v53 = 0;
            do
            {
              if (v14)
              {
                v54 = MEMORY[0x193AC03C0](v53, v52);
              }

              else
              {
                v54 = *(v52 + 8 * v53 + 32);
              }

              ++v53;
              (*(*v54 + 96))();
            }

            while (a2 != v53);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v23);
LABEL_22:
        if (++v23 == v62)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v61 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v61;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized AnimatorState.update(_:at:environment:)(double *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 77) <= 1u)
  {
    if (!*(v3 + 77))
    {
      *(v3 + 40) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 77) = v10;
      goto LABEL_11;
    }

    *(v3 + 77) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 56) = v8 - *(v3 + 40) + a3;
    *(v3 + 40) = a3;
LABEL_20:
    swift_beginAccess();
    v26 = *(v3 + 64) + *a1;
    swift_beginAccess();
    result = 0;
    *a1 = v26 - *(v3 + 32);
    return result;
  }

  if (*(v3 + 77) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 40))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 40) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 40);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 96);

  v31[0] = v14;
  v31[1] = AGCreateWeakAttribute();
  v32 = 0;
  v33 = v15;
  v16 = *(v4 + 104);
  if (v16)
  {
    v17 = *(v4 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<Double>?();
    v27[3] = v20;
    v27[0] = v16;
    v27[1] = v17;
    specialized Dictionary.subscript.setter(v27, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v30 = *(v4 + 32);
  v22 = *(*v21 + 120);

  v22(&v28, &v30, v31, MEMORY[0x1E69E63B0], &protocol witness table for Double, v13);

  if (v29)
  {

    return 1;
  }

  else
  {
    v24 = v28;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v33, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v31[0];

    *a1 = v24 + *a1 - *(v4 + 32);
    swift_beginAccess();
    *(v4 + 56) = a3;
    *(v4 + 64) = v24;
    v25 = *(v4 + 48);
    if (v25 > 0.0)
    {
      *(v4 + 56) = v25 * (round(a3 / v25) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 77) <= 1u)
  {
    if (!*(v3 + 77))
    {
      *(v3 + 40) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 77) = v10;
      goto LABEL_11;
    }

    *(v3 + 77) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 56) = v8 - *(v3 + 40) + a3;
    *(v3 + 40) = a3;
LABEL_20:
    swift_beginAccess();
    v27 = *(v3 + 64) + *a1;
    swift_beginAccess();
    result = 0;
    *a1 = v27 - *(v3 + 32);
    return result;
  }

  if (*(v3 + 77) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 40))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 40) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 40);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 96);

  v32[0] = v14;
  v32[1] = AGCreateWeakAttribute();
  v33 = 0;
  v34 = v15;
  v16 = *(v4 + 104);
  if (v16)
  {
    v17 = *(v4 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>?();
    v28[3] = v20;
    v28[0] = v16;
    v28[1] = v17;
    specialized Dictionary.subscript.setter(v28, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v31 = *(v4 + 32);
  v22 = *(*v21 + 120);
  v23 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();

  v22(&v29, &v31, v32, MEMORY[0x1E69E7DE0], v23, v13);

  if (v30)
  {

    return 1;
  }

  else
  {
    v25 = v29;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v34, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v32[0];

    *a1 = v25 + *a1 - *(v4 + 32);
    swift_beginAccess();
    *(v4 + 56) = a3;
    *(v4 + 64) = v25;
    v26 = *(v4 + 48);
    if (v26 > 0.0)
    {
      *(v4 + 56) = v26 * (round(a3 / v26) + 1.0);
    }

    return 0;
  }
}

uint64_t specialized AnimatorState.nextUpdate()()
{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 56);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 48);
  v5 = *(v0 + 72);
  v6 = *(v0 + 76);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 88);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 80);
  v5 = *(v0 + 136);
  v6 = *(v0 + 140);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{

  return specialized AnimatorState.nextUpdate()();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 80);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 72);
  v5 = *(v0 + 120);
  v6 = *(v0 + 124);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 64);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 56);
  v5 = *(v0 + 84);
  v6 = *(v0 + 88);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 112);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 104);
  v5 = *(v0 + 184);
  v6 = *(v0 + 188);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 88);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 80);
  v5 = *(v0 + 132);
  v6 = *(v0 + 136);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 104);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 96);
  v5 = *(v0 + 168);
  v6 = *(v0 + 172);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 136);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 128);
  v5 = *(v0 + 228);
  v6 = *(v0 + 232);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 88);
  v5 = *(v0 + 148);
  v6 = *(v0 + 152);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 104);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 96);
  v5 = *(v0 + 164);
  v6 = *(v0 + 168);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 304);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 296);
  v5 = *(v0 + 568);
  v6 = *(v0 + 572);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 64);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 56);
  v5 = *(v0 + 88);
  v6 = *(v0 + 92);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 72);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 64);
  v5 = *(v0 + 100);
  v6 = *(v0 + 104);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 144);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 136);
  v5 = *(v0 + 248);
  v6 = *(v0 + 252);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 152);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 144);
  v5 = *(v0 + 264);
  v6 = *(v0 + 268);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 176);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 168);
  v5 = *(v0 + 312);
  v6 = *(v0 + 316);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)();
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 72);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 64);
  v5 = *(v0 + 104);
  v6 = *(v0 + 108);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}