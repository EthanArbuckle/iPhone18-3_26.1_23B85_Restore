unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, _BYTE *a2, const void *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, _BYTE *a2, uint64_t a3, const void *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + (result << 7));
  type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 128 * a3;
  a2 = (v9 + 32 + (v8 << 7));
  if (result != a2 || result >= &a2[128 * v14])
  {
    result = memmove(result, a2, v14 << 7);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  memmove(v10, a4, 0x80uLL);
  a2 = v18;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = outlined init with copy of CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(result, a2);
    __break(1u);
    return result;
  }

  return outlined init with copy of CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(a4, v18);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v21);
        outlined init with take of AnyTrackedValue(v21, v22);
        v10 = v23;
        v11 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (v11[1])(v21, &type metadata for SystemColorDefinitionType, v10, v11);
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(a1);
        if (v15)
        {
          v17 = v15[9];
          v16 = v15[10];
        }

        else
        {
          v16 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
          v17 = &type metadata for CoreUIDefaultSystemColorDefinition;
        }

        *&v21[0] = v17;
        *(&v21[0] + 1) = v16;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemColorDefinitionKey>>();
        v23 = v18;
        v24 = &protocol witness table for TrackedValue<A>;
        v22[0] = v17;
        v22[1] = v16;
        specialized Dictionary.subscript.setter(v22, v6);
      }

      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(a1);
  if (v12)
  {
    v14 = v12[9];
    v13 = v12[10];
  }

  else
  {
    v13 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
    v14 = &type metadata for CoreUIDefaultSystemColorDefinition;
  }

  *&v21[0] = v14;
  *(&v21[0] + 1) = v13;
LABEL_15:
  v19 = *&v21[0];
  os_unfair_lock_unlock((v3 + 16));

  return v19;
}

void type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)()
{
  if (!lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>);
    }
  }
}

uint64_t outlined consume of _ShapeStyle_Pack.Fill(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a12 > 2u)
  {
    if (a12 == 3)
    {
      return outlined consume of Material.ID(result, a2);
    }

    if (a12 == 6)
    {
      return MEMORY[0x1EEE66C30]();
    }
  }

  else if (a12 == 1)
  {
  }

  else if (a12 == 2)
  {
    result = a4;
    a2 = a5;
    return outlined consume of Material.ID(result, a2);
  }

  return result;
}

id outlined copy of _ShapeStyle_Pack.Fill(id result, unsigned __int8 a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a12 > 2u)
  {
    if (a12 == 3)
    {
      return outlined copy of Material.ID(result, a2);
    }

    if (a12 == 6)
    {
      return a4;
    }
  }

  else if (a12 == 1)
  {
  }

  else if (a12 == 2)
  {
    result = a4;
    a2 = a5;
    return outlined copy of Material.ID(result, a2);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA17ContentTransitionV5StateVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA17ContentTransitionV5StateVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021SystemColorDefinitionV033_9E3352CE4697DF56A738786E16992848LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemColorDefinitionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemColorDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SystemColorDefinitionKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021SystemColorDefinitionV033_9E3352CE4697DF56A738786E16992848LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021SystemColorDefinitionV033_9E3352CE4697DF56A738786E16992848LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
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

float protocol witness for static SystemColorDefinition.opacity(at:environment:) in conformance CoreUIDefaultSystemColorDefinition(uint64_t a1)
{
  result = 0.18;
  if (a1 == 2)
  {
    result = 0.25;
  }

  if (a1 == 1)
  {
    result = 0.5;
  }

  if (a1 <= 0)
  {
    return 1.0;
  }

  return result;
}

uint64_t ShapeStyle.copyStyle(name:in:foregroundStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v14 = *v13;
  v15 = v13[1];
  v31[43] = 0;
  *&v28 = 0;
  v27 = v12;
  BYTE8(v28) = 3;
  *&v29 = 0;
  BYTE8(v29) = 5;
  *&v30 = v14;
  *(&v30 + 1) = v15;
  *v31 = v16;
  memset(&v31[8], 0, 32);
  v31[40] = 1;
  *&v31[41] = 768;
  v18 = *(v17 + 32);

  v18(&v27, a4, a5);
  if (BYTE8(v29) == 2)
  {
    v19 = v29;
    v25 = *v31;
    v26[0] = *&v31[16];
    *(v26 + 12) = *&v31[28];
    v21 = v27;
    v22 = v28;
    v24 = v30;
    v23 = v29;
  }

  else
  {
    (*(v8 + 16))(v10, v5, a4);
    v19 = AnyShapeStyle.init<A>(_:)(v10, a4);
    v25 = *v31;
    v26[0] = *&v31[16];
    *(v26 + 12) = *&v31[28];
    v21 = v27;
    v22 = v28;
    v24 = v30;
    v23 = v29;
  }

  outlined destroy of _ShapeStyle_Shape(&v21);
  return v19;
}

uint64_t Color._apply(to:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != 2)
  {
    v12 = *(a1 + 48);
    if (*(a1 + 56))
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt1g5(v12, v14);

      if (LOBYTE(v14[0]) != 2)
      {
        return (*(*a2 + 128))(a2, a1);
      }
    }

    else
    {
      v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(*(a1 + 48));
      if (!v13 || *(v13 + 72) != 2)
      {
        return (*(*a2 + 128))(a2, a1);
      }
    }

    result = Color.applyBackgroundMaterial(shape:)(a1, a2);
    if (result)
    {
      return result;
    }

    return (*(*a2 + 128))(a2, a1);
  }

  v4 = *a1;
  v5 = a2;
  if (*a1 >= 1)
  {
    v6 = *(a1 + 56);
    v14[0] = *(a1 + 48);
    v14[1] = v6;
    v7 = *(*a2 + 168);

    v8 = v7(v4, v14);

    type metadata accessor for ColorBox<Color.OpacityColor>();
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = v8;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  result = outlined consume of _ShapeStyle_Shape.Result(v9, v10);
  *(a1 + 32) = v5;
  *(a1 + 40) = 3;
  return result;
}

uint64_t EnvironmentValues.currentForegroundStyle.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015ForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(v1);

    if (!v2)
    {

      v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022DefaultForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(v1);

      return v3;
    }
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(v1);
    if (!v5 || (v2 = v5[9], , !v2))
    {
      v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022DefaultForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(v1);
      if (v6)
      {
        v2 = v6[9];
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t outlined consume of _ShapeStyle_Shape.Result(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return result;
    }
  }

  if (a2 == 2 || a2 == 3)
  {
  }

  return result;
}

uint64_t destroy for _ShapeStyle_Shape(uint64_t a1)
{
  outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
}

uint64_t specialized ForegroundStyle._apply(to:)(uint64_t a1)
{
  if ((*(a1 + 107) & 2) != 0)
  {
    if (one-time initialization token for sharedPrimary != -1)
    {
      swift_once();
    }

    return (*(*static LegacyContentStyle.sharedPrimary + 80))(a1);
  }

  else
  {
    *(a1 + 107) |= 2u;
    if (*(a1 + 64))
    {
      v2 = *(a1 + 64);
    }

    else
    {
      v4 = EnvironmentValues.currentForegroundStyle.getter();
      if (v4)
      {
        v2 = v4;
      }

      else
      {
        if (one-time initialization token for sharedPrimary != -1)
        {
          swift_once();
        }

        v2 = static HierarchicalShapeStyle.sharedPrimary;
      }
    }

    v5 = *(*v2 + 80);

    v5(a1);

    if ((*(a1 + 107) & 2) != 0)
    {
      *(a1 + 107) &= ~2u;
    }
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015ForegroundStyleI033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<ForegroundStyleKey>>();
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ForegroundStyleKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ForegroundStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ForegroundStyleKey>>);
    }
  }
}

uint64_t specialized static EnvironmentValues.EffectiveFontKey.value(in:)(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04FontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

    if (!v2)
    {

      v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011DefaultFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

      if (!v2)
      {

        v3 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV012FallbackFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

        return v3;
      }
    }

    return v2;
  }

  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (v5)
  {
    v2 = v5[9];

    if (v2)
    {
      return v2;
    }
  }

  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
  if (v6)
  {
    v2 = v6[9];

    if (v2)
    {
      return v2;
    }
  }

  return _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(v1);
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04FontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04FontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA04FontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013FontModifiersV033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<FontModifiersKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontModifiersKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<FontModifiersKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(void *a1)
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
    if (_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(a1))
    {
    }

    else
    {
      *&v17[0] = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v11 = v10[1];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for [AnyFontModifier], type metadata accessor for AnyFontModifier, MEMORY[0x1E69E62F8]);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(a1);
    if (v12)
    {
      v13 = v12[9];
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    *&v17[0] = v13;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<FontModifiersKey>>();
    v19 = v14;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v13;

    specialized Dictionary.subscript.setter(v18, v6);
  }

LABEL_14:
  v15 = *&v17[0];
  os_unfair_lock_unlock((v3 + 16));

  return v15;
}

void type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for DerivedEnvironmentPropertyKey();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019WatchDisplayVariantV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t static EnvironmentValues.FontContextKey.value(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v3, &v20);

    v4 = v20;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016LegibilityWeightI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, &v20);

    v5 = v20;

    v6 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014FontDefinitionI0019_C17A136ED11B3E0D21R11D182F3B80B2LLVG_Tt1g5(v3);
    v8 = v7;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v3);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE019WatchDisplayVariantI0VG_Tt1g5(v3, &v20);

    v10 = v20;

    v11 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV013EffectiveFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);

    v12 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v3);
  }

  else
  {
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(*a1);
    if (v14)
    {
      v4 = *(v14 + 72);
    }

    else
    {
      v4 = 3;
    }

    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v3);
    if (v15)
    {
      v5 = *(v15 + 72);
    }

    else
    {
      v5 = 2;
    }

    v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014FontDefinitionS033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0g5(v3);
    if (v16)
    {
      v17 = (v16 + 9);
      v18 = v16 + 10;
    }

    else
    {
      v17 = &static FontDefinitionKey.defaultValue;
      v18 = &static FontDefinitionKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v8 = *v18;
    v6 = *v17;
    v20 = v3;
    v21 = 0;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(&v20);

    v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(v3);
    if (v19)
    {
      v10 = *(v19 + 72);
    }

    else
    {
      v10 = 1;
    }

    v20 = v3;
    v21 = 0;

    v11 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(&v20);

    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v3);
    if (result)
    {
      v12 = *(result + 72);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }
  }

  *a2 = v4;
  *(a2 + 1) = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 25) = ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014FontDefinitionS033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014FontDefinitionV033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014FontDefinitionV033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014FontDefinitionV033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>>()
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>, lazy protocol witness table accessor for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey);
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v0 = type metadata accessor for DerivedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
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
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v12)
    {
      *&v18[0] = v12[9];
    }

    else
    {
      *&v18[0] = 1.0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
    }

    else
    {
      v14 = 1.0;
    }

    *v18 = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayScaleKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    *v19 = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = *v18;
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for ColorSchemeContrast, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ColorSchemeContrastKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ColorSchemeContrastKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ColorSchemeContrastKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ColorSchemeContrastKey>, &type metadata for ColorSchemeContrastKey, &protocol witness table for ColorSchemeContrastKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ColorSchemeContrastKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ColorSchemeContrastKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayScaleKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayScaleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayScaleKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v21[0] = a1;

    static EnvironmentValues.FontContextKey.value(in:)(v21, a2);

    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>, lazy protocol witness table accessor for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey);
  v8 = v7;
  v9 = *(v5 + 40);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v24;
    v13 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v13 + 8))(&type metadata for Font.Context, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v21[0] = a1;

    static EnvironmentValues.FontContextKey.value(in:)(v21, a2);

    v14 = a2[1];
    v21[0] = *a2;
    v21[1] = v14;
    v21[2] = a2[2];
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>>();
    v20[3] = v15;
    v20[4] = &protocol witness table for DerivedValue<A>;
    v16 = swift_allocObject();
    v20[0] = v16;
    v17 = a2[1];
    v16[1] = *a2;
    v16[2] = v17;
    v16[3] = a2[2];
    outlined init with copy of Font.Context(v21, v19);
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t sub_18D0DC4D8()
{

  return swift_deallocObject();
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019WatchDisplayVariantV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019WatchDisplayVariantV0VG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v30);
        outlined init with take of AnyTrackedValue(v30, v31);
        v12 = v32;
        v13 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        v14 = v13[1];
        v15 = type metadata accessor for Locale();
        v14(v15, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      else
      {
        v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v20)
        {
          v21 = *(*v20 + 248);
          v22 = v20;
          v23 = type metadata accessor for Locale();
          (*(*(v23 - 8) + 16))(a2, &v22[v21], v23);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Locale();
          v26 = __swift_project_value_buffer(v23, static LocaleKey.defaultValue);
          (*(*(v23 - 8) + 16))(a2, v26, v23);
        }

        type metadata accessor for TrackedValue<EnvironmentPropertyKey<LocaleKey>>();
        v32 = v27;
        v33 = &protocol witness table for TrackedValue<A>;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
        type metadata accessor for Locale();
        (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, a2, v23);
        specialized Dictionary.subscript.setter(v31, v8);
      }

      goto LABEL_18;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v16)
  {
    v17 = *(*v16 + 248);
    v18 = v16;
    v19 = type metadata accessor for Locale();
    (*(*(v19 - 8) + 16))(a2, &v18[v17], v19);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Locale();
    v25 = __swift_project_value_buffer(v24, static LocaleKey.defaultValue);
    (*(*(v24 - 8) + 16))(a2, v25, v24);
  }

LABEL_18:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for Any?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_7(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _sypSgMaTm_8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sypSgMaTm_9(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundMaterialKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundMaterialKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundMaterialKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundMaterialKey>>);
    }
  }
}

uint64_t MaterialView.ChildEnvironment.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactContentKey>>()
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactContentKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<ShouldRedactContentKey>);
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<ShouldRedactContentKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v0 = type metadata accessor for DerivedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactContentKey>>);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for DerivedValue(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 + 16) & ~v6));
  }

  return a1;
}

{
  return initializeBufferWithCopyOfBuffer for DerivedValue(a1, a2);
}

BOOL specialized static ShouldRedactContentKey.value(in:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016RedactionReasonsI033_18671928047E57F039DC339288B6FAFBLLVG_Tt1g5(v1, &v8);

    LOBYTE(v3) = v8;
    if (v8)
    {
      return 1;
    }
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(*a1);
    if (v4)
    {
      v3 = v4[9];
      if (v3)
      {
        return 1;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  if ((v3 & 2) != 0)
  {
    if (v2)
    {

      v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v1);

      return (v5 & 1) != 0;
    }

    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v1);
    if (v6 && (v6[9] & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t static CorePlatformProvidersDefinition.providers.getter@<X0>(__int128 *a1@<X8>)
{
  result = type metadata accessor for CorePlatformProvidersDefinition();
  if (result == v1)
  {
    a1[8] = 0u;
    a1[9] = 0u;
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    swift_beginAccess();
    v30[6] = xmmword_1ED536B18;
    v30[7] = unk_1ED536B28;
    v30[8] = xmmword_1ED536B38;
    v30[9] = unk_1ED536B48;
    v30[2] = xmmword_1ED536AD8;
    v30[3] = unk_1ED536AE8;
    v30[4] = xmmword_1ED536AF8;
    v30[5] = unk_1ED536B08;
    v30[0] = static CorePlatformProvidersDefinition.uiKitProviders;
    v30[1] = unk_1ED536AC8;
    if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v30) == 1)
    {
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      (*(v1 + 80))(&v10);
      v26 = v16;
      v27 = v17;
      v28 = v18;
      v29 = v19;
      v22 = v12;
      v23 = v13;
      v24 = v14;
      v25 = v15;
      v20 = v10;
      v21 = v11;
      _ViewInputs.base.modify(&v20, v4);
      xmmword_1ED536B18 = v26;
      unk_1ED536B28 = v27;
      xmmword_1ED536B38 = v28;
      unk_1ED536B48 = v29;
      xmmword_1ED536AD8 = v22;
      unk_1ED536AE8 = v23;
      xmmword_1ED536AF8 = v24;
      unk_1ED536B08 = v25;
      static CorePlatformProvidersDefinition.uiKitProviders = v20;
      unk_1ED536AC8 = v21;
    }

    swift_endAccess();
    v26 = xmmword_1ED536B18;
    v27 = unk_1ED536B28;
    v28 = xmmword_1ED536B38;
    v29 = unk_1ED536B48;
    v22 = xmmword_1ED536AD8;
    v23 = unk_1ED536AE8;
    v24 = xmmword_1ED536AF8;
    v25 = unk_1ED536B08;
    v20 = static CorePlatformProvidersDefinition.uiKitProviders;
    v21 = unk_1ED536AC8;
    result = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v20);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v5 = v27;
      a1[6] = v26;
      a1[7] = v5;
      v6 = v29;
      a1[8] = v28;
      a1[9] = v6;
      v7 = v23;
      a1[2] = v22;
      a1[3] = v7;
      v8 = v25;
      a1[4] = v24;
      a1[5] = v8;
      v9 = v21;
      *a1 = v20;
      a1[1] = v9;
    }
  }

  return result;
}

void type metadata accessor for AttributedString.AdaptiveImageGlyph?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for DerivedEnvironmentPropertyKey();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(uint64_t a1)
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
    v18 = a1;
    v19 = 0;

    v12 = specialized static ShouldRedactContentKey.value(in:)(&v18);

    LOBYTE(v17[0]) = v12;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<ShouldRedactContentKey>);
  v6 = v5;
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    (v11[1])(v17, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    v18 = a1;
    v19 = 0;

    v13 = specialized static ShouldRedactContentKey.value(in:)(&v18);

    LOBYTE(v17[0]) = v13;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<ShouldRedactContentKey>>();
    v20 = v14;
    v21 = &protocol witness table for DerivedValue<A>;
    LOBYTE(v18) = v13;
    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  v15 = LOBYTE(v17[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v15;
}

uint64_t destroy for DerivedValue(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

{
  return destroy for DerivedValue(a1);
}

void type metadata completion function for Text.Style()
{
  type metadata accessor for TypesettingConfiguration();
  if (v0 <= 0x3F)
  {
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(319, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    if (v1 <= 0x3F)
    {
      _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(319, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
      if (v2 <= 0x3F)
      {
        _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(319, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
        if (v3 <= 0x3F)
        {
          swift_initStructMetadata();
        }
      }
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<LocaleKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LocaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LocaleKey>, &type metadata for LocaleKey, &protocol witness table for LocaleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LocaleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LocaleKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<ShouldRedactContentKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<ShouldRedactContentKey> and conformance DerivedEnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<ShouldRedactContentKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<ShouldRedactContentKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<ShouldRedactContentKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA032HorizontalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for UserInterfaceSizeClass?, &type metadata for UserInterfaceSizeClass, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>, &type metadata for HorizontalUserInterfaceSizeClassKey, &protocol witness table for HorizontalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<HorizontalUserInterfaceSizeClassKey>>);
    }
  }
}

uint64_t LeafViewResponder.deinit()
{
  outlined destroy of weak GestureGraphDelegate?(v0 + 16);
  swift_weakDestroy();
  v1 = *(*v0 + 264);
  v2 = type metadata accessor for ContentResponderHelper();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LeafViewResponder.__deallocating_deinit()
{
  LeafViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ShapeStyledResponderData(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t outlined destroy of InterpolatedDisplayList<Image.Resolved>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for LeafViewResponder<ShapeStyledResponderData<Image.Resolved>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, a3, a4, a5, type metadata accessor for ShapeStyledResponderData);
    v6 = type metadata accessor for LeafViewResponder();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void *initializeWithCopy for InterpolatedDisplayList(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v7;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v9;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v11;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v13;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v15;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v17;
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v19;
  v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v22 = *v21;
  v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v24 = *v23;
  v25 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v26 = (v23 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v25 = *v26;
  *(v25 + 4) = *(v26 + 4);
  *(v25 + 5) = *(v26 + 5);
  *(v25 + 6) = *(v26 + 6);
  v27 = *(a3 + 16);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = ((v29 + 7 + v25) & ~v29);
  v31 = ((v29 + 7 + v26) & ~v29);
  v32 = *(v28 + 48);

  if (v32(v31, 1, v27))
  {
    v33 = *(v28 + 84);
    v34 = *(v28 + 64);
    if (v33)
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 + 1;
    }

    memcpy(v30, v31, v35);
  }

  else
  {
    (*(v28 + 16))(v30, v31, v27);
    v37 = *(v28 + 56);
    v36 = v28 + 56;
    v37(v30, 0, 1, v27);
    v33 = *(v36 + 28);
    v34 = *(v36 + 8);
  }

  if (v33)
  {
    v38 = v34;
  }

  else
  {
    v38 = v34 + 1;
  }

  v39 = ((v30 + v38 + 7) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v31 + v38 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v41 = ((v39 + 19) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v40 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v41 = *v42;
  *((v41 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v42 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t destroy for InterpolatedDisplayList(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 11;

  v4 = ((((((((((((((((((((v3 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = *(a2 + 16);
  v10 = *(v5 - 8);
  v6 = *(v10 + 80);
  v7 = v4 + v6 + 7;
  result = (*(v10 + 48))(v7 & ~v6, 1, v5);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(v7 & ~v6, v5);
  }

  return result;
}

uint64_t _ShapeStyle_InterpolatorGroup.init()()
{
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v1 = static RasterizationOptions.Flags.defaultFlags;
  *(v0 + 36) = -1;
  *(v0 + 40) = 768;
  *(v0 + 44) = v1;
  *(v0 + 48) = 3;
  *(v0 + 52) = 0;
  *(v0 + 56) = 0;
  *(v0 + 16) = 0x7FF0000000000000;
  return v0;
}

void type metadata accessor for LeafLayoutComputer<Image.Resolved>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x1FFFFFFFFFFFFLL);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 0x1FFFFFFFFFFFFLL);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 4 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a4 & 0x1FFFFFFFFFFFFLL, a1, v23);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = HIWORD(a3);
  Hasher.init(_seed:)();
  ResolvedShapeStyles.hash(into:)();
  v7 = Hasher._finalize()();
  if (v6)
  {
    v8 = 0x1000000000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFF000000000000 | a3 & 0xFFFFFFFFFFFFLL;

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v9, v7);
}

void ResolvedShapeStyles.hash(into:)()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 20);
  v6 = *(v0 + 21);
  v7 = *(v0 + 22);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  MEMORY[0x193AC11A0](v5);
  if (v6 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v6);
  }

  Hasher._combine(_:)(v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      if (*v9 == a1 && *(v9 + 4) == HIDWORD(a1) && *(v9 + 8) == a2 && *(v9 + 12) == HIDWORD(a2) && *(v9 + 16) == a3 && *(v9 + 20) == BYTE4(a3))
      {
        v15 = *(v9 + 21);
        v16 = *(v9 + 22);
        if (v15 == 3)
        {
          if (BYTE5(a3) == 3)
          {
            goto LABEL_4;
          }
        }

        else if (BYTE5(a3) != 3 && v15 == BYTE5(a3))
        {
LABEL_4:
          if (((HIWORD(a3) & 1 ^ v16) & 1) == 0)
          {
            return result;
          }
        }
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for Attribute<_ShapeStyle_Pack>, &type metadata for _ShapeStyle_Pack, MEMORY[0x1E698D388]);
    lazy protocol witness table accessor for type ResolvedShapeStyles and conformance ResolvedShapeStyles();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>);
    }
  }
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = a2;
    v8 = 0;
    v40 = (v5 + 64);
    v41 = v5;
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
    v38 = v3;
    v39 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    v42 = v6;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v43 = (v11 - 1) & v11;
LABEL_15:
      v19 = v15 | (v8 << 6);
      v20 = *(v5 + 48) + 24 * v19;
      v21 = *(*(v5 + 56) + 4 * v19);
      v23 = *v20;
      v22 = *(v20 + 4);
      v25 = *(v20 + 8);
      v24 = *(v20 + 12);
      v26 = *(v20 + 16);
      v27 = *(v20 + 20);
      v28 = *(v20 + 21);
      v44 = v21;
      v45 = *(v20 + 22);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v26);
      MEMORY[0x193AC11A0](v27);
      if (v28 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v28);
      }

      Hasher._combine(_:)(v45 & 1);
      result = Hasher._finalize()();
      v7 = v42;
      v29 = -1 << *(v42 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v12 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v12 + 8 * v31);
          if (v35 != -1)
          {
            v13 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v30) & ~*(v12 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v42 + 48) + 24 * v13;
      *v14 = v23;
      *(v14 + 4) = v22;
      *(v14 + 8) = v25;
      *(v14 + 12) = v24;
      *(v14 + 16) = v26;
      *(v14 + 20) = v27;
      *(v14 + 21) = v28;
      *(v14 + 22) = v45;
      *(*(v42 + 56) + 4 * v13) = v44;
      ++*(v42 + 16);
      v5 = v41;
      v11 = v43;
    }

    v16 = v8;
    result = v40;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v39)
      {
        break;
      }

      v18 = v40[v8];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v40, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v40 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CUIDesignLibraryCacheKey, CUIDesignLibraryCacheKey.Entry>, lazy protocol witness table accessor for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = a2;
    v8 = 0;
    v43 = (v5 + 64);
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
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v44 = v5;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v45 = (v11 - 1) & v11;
LABEL_15:
      v22 = *(v5 + 56);
      v23 = 24 * (v18 | (v8 << 6));
      v24 = *(v5 + 48) + v23;
      v25 = *(v24 + 16);
      v26 = (v22 + v23);
      v27 = *(v24 + 10);
      v28 = *(v24 + 9);
      v29 = *(v24 + 8);
      v30 = *v24;
      v46 = *(v26 + 20);
      v31 = *(v26 + 4);
      v33 = *v26;
      v32 = v26[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v30);
      MEMORY[0x193AC11A0](v29);
      MEMORY[0x193AC11A0](v28);
      MEMORY[0x193AC11A0](v27);
      v47 = v25;
      MEMORY[0x193AC11A0](v25);
      result = Hasher._finalize()();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = 24 * v14;
      v16 = *(v7 + 48) + v15;
      v5 = v44;
      *v16 = v30;
      *(v16 + 8) = v29;
      *(v16 + 9) = v28;
      *(v16 + 10) = v27;
      *(v16 + 16) = v47;
      v17 = *(v7 + 56) + v15;
      *v17 = v33;
      *(v17 + 8) = v32;
      *(v17 + 16) = v31;
      *(v17 + 20) = v46;
      ++*(v7 + 16);
      v11 = v45;
    }

    v19 = v8;
    result = v43;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v12)
      {
        break;
      }

      v21 = v43[v8];
      ++v19;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v45 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, CanvasSymbols.Child>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v2;
    v8 = 0;
    v42 = (v5 + 64);
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
    v41 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v21 = v17 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v48 = *v22;
      v47 = *(v22 + 4);
      v23 = *(v22 + 8);
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *(v24 + 8);
      v44 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = *(v24 + 32);
      v45 = *v24;
      v46 = *(v24 + 40);
      if ((a2 & 1) == 0)
      {

        v28 = v45;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v48);
      Hasher._combine(_:)(v47);
      if (v23)
      {
        Hasher._combine(_:)(1u);
        v43 = v25;
        v29 = v11;
        v30 = v7;
        v31 = *(*v23 + 120);

        v31(v49);
        v7 = v30;
        v11 = v29;
        v25 = v43;
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v14 = v26;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v12 + 8 * v34);
          if (v38 != -1)
          {
            v13 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v14 = v26;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = *(v7 + 48) + 16 * v13;
      *v15 = v48;
      *(v15 + 4) = v47;
      *(v15 + 8) = v23;
      v16 = *(v7 + 56) + 48 * v13;
      *v16 = v45;
      *(v16 + 8) = v25;
      *(v16 + 16) = v44;
      *(v16 + 24) = v14;
      *(v16 + 32) = v27;
      *(v16 + 40) = v46;
      ++*(v7 + 16);
    }

    v18 = v8;
    result = v5 + 64;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v41)
      {
        break;
      }

      v20 = v42[v8];
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

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v42, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v42 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 22) = BYTE6(a4);
  *(v6 + 20) = WORD2(a4);
  *(v6 + 16) = a4;
  *(a6[7] + 4 * result) = a5;
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
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 12 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance InterpolatedDisplayList<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for InterpolatedDisplayList<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for ContentResponderHelper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = (a1 + *(v3 + 80) + 16) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, v2))
  {
    (*(v3 + 8))(v4, v2);
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedShapeStyles and conformance ResolvedShapeStyles()
{
  result = lazy protocol witness table cache variable for type ResolvedShapeStyles and conformance ResolvedShapeStyles;
  if (!lazy protocol witness table cache variable for type ResolvedShapeStyles and conformance ResolvedShapeStyles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedShapeStyles and conformance ResolvedShapeStyles);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedShapeStyles and conformance ResolvedShapeStyles;
  if (!lazy protocol witness table cache variable for type ResolvedShapeStyles and conformance ResolvedShapeStyles)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedShapeStyles and conformance ResolvedShapeStyles);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorDefinitionKey>, &type metadata for SystemColorDefinitionKey, &protocol witness table for SystemColorDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemColorDefinitionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey> and conformance DerivedEnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey>, lazy protocol witness table accessor for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.FontContextKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontModifiersKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(void), void (*a7)(unint64_t, void *, _OWORD *, uint64_t))
{
  v12 = v7;
  v15 = *v7;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a4();
      v16 = v24;
      goto LABEL_8;
    }

    a5(v21, a3 & 1);
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a6(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (*(v26 + 56) + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1(v27);

    return outlined init with take of Any(a1, v27);
  }

  else
  {
    a7(v16, a2, a1, v26);

    return a2;
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011DefaultFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011DefaultFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _ShapeStyle_Pack.subscript.getter@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *a1;
    v7 = *v3 + 40;
    while (1)
    {
      v8 = *(v7 - 8);
      v9 = *(v7 - 7);
      if (v6 == v8 && v9 == a2)
      {
        v12 = *(v7 - 8);
        v13 = *(v7 + 8);
        v14 = *(v7 + 40);
        v46 = *(v7 + 24);
        v47 = v14;
        v44 = v12;
        v45 = v13;
        v15 = *(v7 + 56);
        v16 = *(v7 + 72);
        v17 = *(v7 + 104);
        v50 = *(v7 + 88);
        v51 = v17;
        v48 = v15;
        v49 = v16;
        v18 = *v7;
        v19 = *(v7 + 16);
        v20 = *(v7 + 48);
        *(a3 + 32) = *(v7 + 32);
        *(a3 + 48) = v20;
        *a3 = v18;
        *(a3 + 16) = v19;
        v21 = *(v7 + 64);
        v22 = *(v7 + 80);
        v23 = *(v7 + 96);
        v24 = *(v7 + 112);
LABEL_18:
        *(a3 + 112) = v24;
        *(a3 + 80) = v22;
        *(a3 + 96) = v23;
        *(a3 + 64) = v21;
        return outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v44, v43, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      }

      v11 = v9 > a2 && v6 == v8;
      if (v6 < v8 || v11)
      {
        break;
      }

      ++v5;
      v7 += 128;
      if (v4 == v5)
      {
        goto LABEL_19;
      }
    }

    if (v5 && *(v7 - 136) == v6)
    {
      v25 = *(v7 - 136);
      v26 = *(v7 - 120);
      v27 = *(v7 - 88);
      v46 = *(v7 - 104);
      v47 = v27;
      v44 = v25;
      v45 = v26;
      v28 = *(v7 - 72);
      v29 = *(v7 - 56);
      v30 = *(v7 - 24);
      v50 = *(v7 - 40);
      v51 = v30;
      v48 = v28;
      v49 = v29;
      v31 = *(v7 - 128);
      v32 = *(v7 - 112);
      v33 = *(v7 - 80);
      *(a3 + 32) = *(v7 - 96);
      *(a3 + 48) = v33;
      *a3 = v31;
      *(a3 + 16) = v32;
      v21 = *(v7 - 64);
      v22 = *(v7 - 48);
      v23 = *(v7 - 32);
      v24 = *(v7 - 16);
      goto LABEL_18;
    }
  }

LABEL_19:
  if (one-time initialization token for clear != -1)
  {
    v42 = a3;
    swift_once();
    a3 = v42;
  }

  v35 = xmmword_1ED51ECB0;
  v36 = xmmword_1ED51ECC0;
  v48 = xmmword_1ED51ECB0;
  v49 = xmmword_1ED51ECC0;
  v37 = xmmword_1ED51ECD0;
  v50 = xmmword_1ED51ECD0;
  v38 = qword_1ED51ECE0;
  *&v51 = qword_1ED51ECE0;
  v39 = *&dword_1ED51EC80;
  v44 = static _ShapeStyle_Pack.Style.clear;
  v45 = *&dword_1ED51EC80;
  v40 = xmmword_1ED51EC90;
  v41 = unk_1ED51ECA0;
  v46 = xmmword_1ED51EC90;
  v47 = unk_1ED51ECA0;
  *a3 = static _ShapeStyle_Pack.Style.clear;
  *(a3 + 16) = v39;
  *(a3 + 32) = v40;
  *(a3 + 48) = v41;
  *(a3 + 64) = v35;
  *(a3 + 80) = v36;
  *(a3 + 96) = v37;
  *(a3 + 112) = v38;
  return outlined init with copy of _ShapeStyle_Pack.Style(&v44, v43);
}

uint64_t outlined copy of GraphicsBlendMode?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of GraphicsBlendMode(result, a2 & 1);
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA17ContentTransitionV5StateVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void _s7SwiftUI18ScrollStateRequest_pSgMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>()
{
  if (!lazy cache variable for type metadata for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for AnyTrackedValue);
    v0 = type metadata accessor for _NativeDictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA030VerticalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for UserInterfaceSizeClass?, &type metadata for UserInterfaceSizeClass, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>, &type metadata for VerticalUserInterfaceSizeClassKey, &protocol witness table for VerticalUserInterfaceSizeClassKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<VerticalUserInterfaceSizeClassKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayGamutKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayGamutKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayGamutKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DisplayGamutKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayGamutKey>, &type metadata for DisplayGamutKey, &protocol witness table for DisplayGamutKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for DisplayGamut, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DisplayGamutKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t ColorBox.opacity(at:environment:)(uint64_t a1, __int128 *a2)
{
  v3 = *v2;
  v5 = *a2;
  return (*(*(v3 + 184) + 80))(a1, &v5, *(v3 + 176));
}

uint64_t _s7SwiftUI13ColorProviderPAAE7opacity2at11environmentSfSi_AA17EnvironmentValuesVtFAA0C0VAAE014TintAdjustmentD0V_Tt1B5Tm(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {

    v6 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(a2);
    v8 = v7;
  }

  else
  {
    v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(a2);
    if (v9)
    {
      v6 = v9[9];
      v8 = v9[10];
    }

    else
    {
      v8 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v6 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v11[0] = a2;
  v11[1] = a3;
  return (v8[2])(a1, v11, v6, v8);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011DefaultFontV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013FontModifiersV033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013FontModifiersV033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontModifiersKey>, &type metadata for FontModifiersKey, &protocol witness table for FontModifiersKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t AnyColorBox.apply(to:)(uint64_t a1)
{
  if (*(a1 + 24) == 2)
  {
    v3 = *a1;
    if (*a1 < 1)
    {
    }

    else
    {
      v4 = *(a1 + 56);
      v11[0] = *(a1 + 48);
      v11[1] = v4;
      v5 = *(*v1 + 168);

      v6 = v5(v3, v11);

      type metadata accessor for ColorBox<Color.OpacityColor>();
      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      *(v7 + 24) = v6;
      v1 = v7;
    }

    result = outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = v1;
    *(a1 + 40) = 3;
  }

  else
  {
    v8 = *(*v1 + 128);

    v8(v9, a1);
  }

  return result;
}

uint64_t specialized static ViewGraph.sizeThatFits(_:layoutComputer:insets:)(uint64_t result, uint64_t *a2, double a3, double a4, double a5, double a6)
{
  v6 = *result;
  v7 = *(result + 8);
  v8 = *(result + 24);
  v9 = *a2;
  if (v7)
  {
    v10 = *(result + 16);
    if (*(result + 24))
    {
      goto LABEL_3;
    }

LABEL_15:
    if (v10 - (a3 + a5) < 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v10 - (a3 + a5);
    }

    if (!v9)
    {
      return result;
    }

    goto LABEL_4;
  }

  if (v6 - (a4 + a6) < 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v6 - (a4 + a6);
  }

  v10 = *(result + 16);
  if ((*(result + 24) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (!v9)
  {
    return result;
  }

LABEL_4:
  v11 = one-time initialization token for lockAssertionsAreEnabled;

  if (v11 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_10;
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
LABEL_10:
    v12 = v6;
    v13 = v7;
    v14 = v10;
    v15 = v8;
    (*(*v9 + 120))(&v12);
  }

  return result;
}

uint64_t ViewGraph.rootViewInsets.getter()
{
  result = AGGraphGetValue();
  v1 = *result;
  v2 = *(*result + 16);
  if (!v2)
  {
    return result;
  }

  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
LABEL_8:
    v12 = v2 - v3;
    v13 = (v1 + 112 * v3 + 40);
    do
    {
      v15 = *v13;
      v14 = v13[1];
      v13 += 7;
      v5 = vaddq_f64(v5, v14);
      v4 = vaddq_f64(v4, v15);
      --v12;
    }

    while (v12);
    goto LABEL_10;
  }

  v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v6 = (v1 + 152);
  v4 = 0uLL;
  v7 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v5 = 0uLL;
  do
  {
    v8 = v6[-7];
    v9 = v6[-6];
    v11 = *v6;
    v10 = v6[1];
    v6 += 14;
    v5 = vaddq_f64(vaddq_f64(v5, v9), v10);
    v4 = vaddq_f64(vaddq_f64(v4, v8), v11);
    v7 -= 2;
  }

  while (v7);
  if (v2 != v3)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v4.f64[1] != v5.f64[1])
  {
    swift_beginAccess();
    Value = AGGraphGetValue();
    v17 = *Value;
    if (*(Value + 8))
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v17, &v19);
    }

    else
    {

      _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v18);
    }
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSizingV033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t outlined destroy of EnvironmentValues.CapitalizationContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation4DateVSgWOhTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for SystemFormatStyle.DateOffset?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation4DateVSgWOhTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t _s10Foundation4DateVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_3(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation4DateVSgWOhTm_3(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of ResolvableStringResolutionContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundInfoKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundInfoKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundInfoKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BackgroundInfoKey>>);
    }
  }
}

uint64_t type metadata completion function for SecondaryLookupTrackedValue()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018MinimumScaleFactorV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018MinimumScaleFactorV0VG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018MinimumScaleFactorV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t getEnumTagSinglePayload for Font.FontCache.Key(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, void (*a2)(unint64_t, uint64_t)@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v17 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v17;
    }

    a2(*(v15 + 56) + 40 * v13, a5);
    a3(v13, v15);
    *v9 = v15;
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Dictionary.removeValue(forKey:)(a1, outlined init with take of AnyTrackedValue, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a2);
}

{
  return specialized Dictionary.removeValue(forKey:)(a1, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a2);
}

void move(_:to:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = *a2;
  v6 = *(*a2 + 16);
  v7 = v6 + v3;
  if (__OFADD__(v6, v3))
  {
LABEL_32:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v7 > v5[3] >> 1)
  {
    if (v6 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 0, v5);
  }

  *a2 = v5;
  v11 = 1 << *(v2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v2 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (!v13)
  {
LABEL_13:
    if (v14 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v13 = 0;
        v27 = 0u;
        v28 = 0u;
        v15 = v18;
        v26 = 0u;
        goto LABEL_22;
      }

      v13 = *(v2 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  while (1)
  {
    v16 = v15;
LABEL_21:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v16 << 6);
    v21 = *(*(v2 + 48) + 8 * v20);
    outlined init with copy of AnyTrackedValue(*(v2 + 56) + 40 * v20, v25);
    *&v26 = v21;
    outlined init with take of AnyTrackedValue(v25, &v26 + 8);
LABEL_22:
    v29[1] = v27;
    v29[2] = v28;
    v29[0] = v26;
    if (!v28)
    {
      break;
    }

    outlined init with take of AnyTrackedValue((v29 + 8), &v26);
    v23 = v5[2];
    v22 = v5[3];
    if (v23 >= v22 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
    }

    v5[2] = v23 + 1;
    outlined init with take of AnyTrackedValue(&v26, &v5[5 * v23 + 4]);
    *a2 = v5;
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (*(v2 + 16))
  {
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v29[0] = *a1;
    type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>();
    _NativeDictionary.removeAll(isUnique:)(v24);
    *a1 = *&v29[0];
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);

  os_unfair_lock_lock((v11 + 16));
  v12 = *(v11 + 24);
  if (a1)
  {
    if (v12 != *(a1 + 64))
    {
      goto LABEL_22;
    }

    if (!a2)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2 == 0;
    }

    if (v14)
    {
      goto LABEL_22;
    }
  }

  if (v12 == *(a2 + 64))
  {
    goto LABEL_22;
  }

  v13 = 0;
LABEL_12:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, a3, a4, a5, type metadata accessor for EnvironmentPropertyKey);
  specialized Dictionary.removeValue(forKey:)(v15, &v22);
  if (v23)
  {
    outlined init with take of AnyTrackedValue(&v22, v24);
    outlined init with copy of AnyTrackedValue(v24, &v22);
    v16 = *(v11 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 48) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      *(v11 + 48) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      *(v11 + 48) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
    v20 = *(v11 + 48);
    *(v20 + 16) = v19 + 1;
    outlined init with take of AnyTrackedValue(&v22, v20 + 40 * v19 + 32);
    *(v11 + 48) = v20;
  }

  else
  {
    outlined destroy of EnvironmentValues.CapitalizationContext(&v22, type metadata accessor for AnyTrackedValue?);
  }

  move(_:to:)((v11 + 40), v11 + 48);
  if (v13)
  {
    *(v11 + 24) = 0;
  }

  else
  {
    *(v11 + 24) = *(a2 + 64);
  }

LABEL_22:
  os_unfair_lock_unlock((v11 + 16));
}

void type metadata accessor for AnyTrackedValue?()
{
  if (!lazy cache variable for type metadata for AnyTrackedValue?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for AnyTrackedValue);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyTrackedValue?);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(a1);
    if (v14)
    {
      v16 = v14[9];
      v15 = v14[10];
      *a2 = v16;
      a2[1] = v15;
      outlined copy of Material?(v16, v15);
    }

    else
    {
      *a2 = xmmword_18DDA6AB0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundMaterialKey>, &type metadata for BackgroundMaterialKey, &protocol witness table for BackgroundMaterialKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v17 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(a1);
    if (v17)
    {
      v18 = v17[9];
      v19 = v17[10];
      *a2 = v18;
      a2[1] = v19;
      outlined copy of Material?(v18, v19);
    }

    else
    {
      v18 = 0;
      *a2 = xmmword_18DDA6AB0;
      v19 = 255;
    }

    type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundMaterialKey>>();
    v24 = v20;
    v25 = &protocol witness table for TrackedValue<A>;
    v23[0] = v18;
    v23[1] = v19;
    outlined copy of Material?(v18, v19);
    specialized Dictionary.subscript.setter(v23, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v21);
        outlined init with take of AnyTrackedValue(v21, v22);
        v10 = v23;
        v11 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        v12 = v11[1];
        v13 = type metadata accessor for CorePlatformProvidersDefinition.Type();
        v12(v21, v13, v10, v11);
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(a1);
        if (v16)
        {
          v17 = v16 + 9;
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v17 = &static EnvironmentValues.CorePlatfromProvidersDefinitionKey.defaultValue;
        }

        *&v21[0] = *v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>();
        v23 = v18;
        v24 = &protocol witness table for TrackedValue<A>;
        v22[0] = *&v21[0];
        specialized Dictionary.subscript.setter(v22, v6);
      }

      goto LABEL_19;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(a1);
  if (v14)
  {
    v15 = v14 + 9;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v15 = &static EnvironmentValues.CorePlatfromProvidersDefinitionKey.defaultValue;
  }

  *&v21[0] = *v15;
LABEL_19:
  v19 = *&v21[0];
  os_unfair_lock_unlock((v3 + 16));

  return v19;
}

uint64_t SecondaryLookupTrackedValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t PropertyList.Tracker.valueWithSecondaryLookup<A>(_:secondaryLookupHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v23 - v12;
  v14 = *(v5 + 16);

  os_unfair_lock_lock((v14 + 16));
  v15 = *(v14 + 24);
  if (!a1)
  {
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v14 + 56) = 1;
    PropertyList.valueWithSecondaryLookup<A>(_:)(v24, a1, a3, a4);
    goto LABEL_9;
  }

  if (v15 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  v23 = swift_checkMetadataState();
  v16 = *(v14 + 32);
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v18 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v16 + 56) + 40 * v17, v25);
    outlined init with take of AnyTrackedValue(v25, v26);
    v19 = v27;
    v20 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (v20[1])(AssociatedTypeWitness, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    PropertyList.valueWithSecondaryLookup<A>(_:)(v24, a1, a3, a4);
    (*(v11 + 16))(v13, a5, AssociatedTypeWitness);
    v27 = type metadata accessor for SecondaryLookupTrackedValue();
    v28 = &protocol witness table for SecondaryLookupTrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    SecondaryLookupTrackedValue.init(_:)(v13, boxed_opaque_existential_1);
    specialized Dictionary.subscript.setter(v26, v23);
  }

LABEL_9:
  os_unfair_lock_unlock((v14 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>, &type metadata for EnvironmentValues.CorePlatfromProvidersDefinitionKey, &protocol witness table for EnvironmentValues.CorePlatfromProvidersDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.CorePlatfromProvidersDefinitionKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014BackgroundInfoI033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt1g5@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundInfoKey>, &type metadata for BackgroundInfoKey, &protocol witness table for BackgroundInfoKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
        outlined init with take of AnyTrackedValue(v22, v23);
        v12 = v24;
        v13 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (v13[1])(&type metadata for BackgroundInfo, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v23);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = (v15 + 9);
          v17 = v15 + 10;
        }

        else
        {
          v16 = &static BackgroundInfoKey.defaultValue;
          v17 = &static BackgroundInfoKey.defaultValue + 1;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }
        }

        v18 = *v16;
        v19 = *v17;
        *a2 = v18;
        a2[1] = v19;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundInfoKey>>();
        v24 = v20;
        v25 = &protocol witness table for TrackedValue<A>;
        v23[0] = v18;
        v23[1] = v19;
        specialized Dictionary.subscript.setter(v23, v8);
      }

      goto LABEL_17;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014BackgroundInfoS033_C7D4771CFE453D905E7BCD5A907D32EBLLVG_Tt0g5(a1);
  if (v14)
  {
    *a2 = *(v14 + 9);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    *a2 = static BackgroundInfoKey.defaultValue;
  }

LABEL_17:
  os_unfair_lock_unlock((v5 + 16));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016SensitiveContentV0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016SensitiveContentV0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSizingV033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSizingV033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016SensitiveContentV0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t outlined destroy of Text.Style(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ResolvedTextHelper.resolve(_:with:sizeFitting:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void **a5, int a6)
{
  LODWORD(v325) = a6;
  v345 = a4;
  v341 = a3;
  v342 = a1;
  v343 = a2;
  v401 = *MEMORY[0x1E69E9840];
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  MEMORY[0x1EEE9AC00](Update);
  v9 = &v293 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Date?, Date?)();
  v302 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v303 = &v293 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (Date??, Date??)();
  v306 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v317 = &v293 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E6720];
  _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for Date??, 255, type metadata accessor for Date?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v304 = &v293 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v315 = &v293 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v316 = &v293 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v319 = &v293 - v22;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v300 = &v293 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v321 = &v293 - v27;
  _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, 255, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v14);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v329 = &v293 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v339 = (&v293 - v31);
  type metadata accessor for (Date?, NSMutableAttributedString?, Text.ResolvedProperties)();
  v334 = v32;
  MEMORY[0x1EEE9AC00](v32);
  *&v337 = &v293 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date?(0);
  v336 = v34;
  v324 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v305 = &v293 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v301 = &v293 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v335 = &v293 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v330 = &v293 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v338 = &v293 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v293 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v323 = &v293 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v328 = &v293 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v327 = &v293 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v326 = &v293 - v54;
  v55 = *a5;
  v344 = v6;
  v56 = *(v6 + 40);
  v57 = *(v56 + 2);

  os_unfair_lock_lock((v57 + 16));
  *(v57 + 24) = 0;
  if (*(*(v57 + 32) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v391.f64[0] = *(v57 + 32);
    *(v57 + 32) = 0x8000000000000000;
    type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>();
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v57 + 32) = v391.f64[0];
  }

  if (*(*(v57 + 40) + 16))
  {
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v391.f64[0] = *(v57 + 40);
    *(v57 + 40) = 0x8000000000000000;
    type metadata accessor for _NativeDictionary<ObjectIdentifier, AnyTrackedValue>();
    _NativeDictionary.removeAll(isUnique:)(v59);
    *(v57 + 40) = v391.f64[0];
  }

  v60 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v57 + 48);
  if (v60)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v61 + 16));
  }

  else
  {
    *(v57 + 48) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15AnyTrackedValue33_D64CE6C88E7413721C59A34C0C940F2CLL_p_Tt1g5(0, *(v61 + 24) >> 1);
  }

  *(v57 + 56) = 0;
  os_unfair_lock_unlock((v57 + 16));

  v62 = v344;
  if (v345)
  {
    v399 = v55;
    v400 = v56;
    v340 = v23;
    v331 = v24;
    v333 = v46;
    v295 = v9;
    if (v55)
    {
      v63 = v55[8];
    }

    else
    {
      v63 = 0;
    }

    v66 = *(v56 + 2);
    swift_retain_n();
    v67 = v345;

    v68 = v341;
    v69 = v342;
    v70 = v343;
    outlined copy of Text.Storage(v342, v343, v341 & 1);
    outlined copy of Text?(v69, v70, v68, v67);

    os_unfair_lock_lock((v66 + 16));
    *(v66 + 24) = v63;
    os_unfair_lock_unlock((v66 + 16));

    v313 = *(v62 + 1);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v72 = v326;
      outlined init with copy of ResolvableStringResolutionContext(WeakValue, v326, type metadata accessor for Date?);
      v73 = v327;
      outlined init with copy of ResolvableStringResolutionContext(v72, v327, type metadata accessor for Date?);
      v74 = v328;
      outlined init with copy of ResolvableStringResolutionContext(v73, v328, type metadata accessor for Date?);
      v75 = v323;
      outlined init with copy of ResolvableStringResolutionContext(v74, v323, type metadata accessor for Date?);
      swift_retain_n();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE029ResolvableStringReferenceDateF033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(&v399, v75);
      v320 = 0;

      outlined destroy of Date?(v75, type metadata accessor for Date?);
      v76 = v399;
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE029ResolvableStringReferenceDateK033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v55, v399);

      outlined destroy of Date?(v74, type metadata accessor for Date?);
      outlined destroy of Date?(v73, type metadata accessor for Date?);
      v62 = v344;
      outlined destroy of Date?(v72, type metadata accessor for Date?);
      v55 = v76;
    }

    else
    {
      v320 = 0;
    }

    v77 = v56;
    v314 = type metadata accessor for ResolvedTextHelper(0);
    v78 = *(v62 + *(v314 + 64));
    if (v78)
    {

      v80 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v79);
      if (!v80 || (value = v55, v78 != v80[9]))
      {
        type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>();
        *(swift_allocObject() + 72) = v78;
        _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
        value = PropertyList.Element.init(keyType:before:after:)(v82, 0, v55).value;
        v399 = value;
      }

      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE015TextSizeVariantK033_22A2F77020526CCA53FF38DE37184183LLVG_Ttg5(v55, value);

      v55 = value;
    }

    v83 = v341 & 1;
    outlined consume of Text?(*(v62 + 6), *(v62 + 7), *(v62 + 8), *(v62 + 9));
    v84 = v343;
    *(v62 + 6) = v342;
    *(v62 + 7) = v84;
    v85 = v345;
    *(v62 + 8) = v83;
    *(v62 + 9) = v85;
    LODWORD(v328) = *(v62 + 12);
    v86 = v339;
    if (v328 != 1)
    {
      goto LABEL_24;
    }

    v77 = v400;
    BYTE11(v396[1]) = 0;
    v393.f64[0] = 0.0;
    v392.f64[0] = 0.0;
    v391 = 0uLL;
    LOBYTE(v392.f64[1]) = 0;
    LOBYTE(v393.f64[1]) = 5;
    *&v394.f64[0] = v55;
    *&v394.f64[1] = v400;
    v395 = 0u;
    memset(v396, 0, 24);
    BYTE8(v396[1]) = 1;
    *(&v396[1] + 9) = 769;

    specialized ForegroundStyle._apply(to:)(&v391);
    if (LOBYTE(v393.f64[1]))
    {
      v387 = v395;
      v388[0] = v396[0];
      *(v388 + 12) = *(v396 + 12);
      v383 = v391;
      v384 = v392;
      v386 = v394;
      v385 = v393;
      outlined destroy of _ShapeStyle_Shape(&v383);
      if (v77)
      {
LABEL_24:

        v87 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016DisableLinkColorI0030_7AFAB46D18FA6D189589CFA78D8B2U1ELLVG_Tt1g5(v55);

        if (v87)
        {
LABEL_25:
          v88 = 16;
          goto LABEL_27;
        }

        v88 = 0;
LABEL_27:
        v89 = *(v62 + 19);
        v339 = v77;
        if (v89 == 1)
        {
          if (v77)
          {

            v90 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020AccessibilityEnabledI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v55);
          }

          else
          {
            v101 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(v55);
            if (v101)
            {
              v90 = *(v101 + 72);
            }

            else
            {
              v90 = 0;
            }
          }

          v88 |= v90 & 1;
        }

        LODWORD(v327) = *(v62 + 18);
        v102 = 8;
        if (v327)
        {
          v102 = 4;
        }

        v103 = v102 | v88;
        if (*(v62 + 13))
        {
          v104 = v103 | 0x20;
        }

        else
        {
          v104 = v103;
        }

        v105 = v62;
        v106 = *(v62 + 8);
        v107 = v104 & 0xFFFFFFFFFFFFFF3FLL | (((v106 >> 5) & 1) << 6) & 0xFFFFFFFFFFFFFF7FLL | ((*(v105 + 14) & 1) << 7);
        v298 = *v105;
        v108 = *AGGraphGetValue();
        v109 = v338;
        v322 = *(v331 + 56);
        v323 = (v331 + 56);
        v322(v338, 1, 1, v340);
        *v86 = v109;
        v86[1] = v108;
        v110 = type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v110 - 8) + 56))(v86, 0, 1, v110);
        v111 = v329;
        outlined init with copy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v86, v329, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
        swift_retain_n();
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(&v399, v111);

        outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v111, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
        if (v339)
        {
          v112 = v399;
          _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v55, v399);

          outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v86, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
        }

        else
        {
          outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v86, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);

          v112 = v399;
        }

        v113 = v106;
        *&v383.f64[0] = v112;
        *&v383.f64[1] = v400;
        *&v371[0] = v107;
        v114 = v344;
        *v373 = *(v344 + 24);
        v320 = v400;

        v115 = Text.resolveAttributedStringAndProperties(in:includeDefaultAttributes:options:idiom:)(&v391, &v383, v328 | v327, v371, v373, v342, v343, v341 & 1, v345);

        v116 = v338;
        v117 = v330;
        outlined init with copy of ResolvableStringResolutionContext(v338, v330, type metadata accessor for Date?);
        outlined destroy of Date?(v116, type metadata accessor for Date?);
        v118 = v331;
        v119 = v340;
        v296 = *(v331 + 48);
        v297 = v331 + 48;
        v120 = v296(v117, 1, v340);
        v121 = v337;
        if (v120 == 1)
        {
          outlined destroy of Date?(v117, type metadata accessor for Date?);
          v122 = 1;
        }

        else
        {
          v123 = *(v118 + 32);
          v124 = v113;
          v125 = v321;
          v123(v321, v117, v119);
          v126 = v125;
          v113 = v124;
          v123(v121, v126, v119);
          v122 = 0;
        }

        v322(v121, v122, 1, v119);
        v127 = (v121 + *(v334 + 64));
        *(v121 + *(v334 + 48)) = v115;
        v129 = v396[1];
        v128 = v397;
        v130 = v396[0];
        v127[6] = v396[1];
        v127[7] = v128;
        v131 = v397;
        v127[8] = v398[0];
        *(v127 + 137) = *(v398 + 9);
        v133 = v393;
        v132 = v394;
        v134 = v392;
        v127[2] = v393;
        v127[3] = v132;
        v135 = v394;
        v137 = v395;
        v136 = v396[0];
        v127[4] = v395;
        v127[5] = v136;
        v138 = v392;
        v139 = v391;
        *v127 = v391;
        v127[1] = v138;
        v388[1] = v129;
        v389 = v131;
        v390[0] = v398[0];
        *(v390 + 9) = *(v398 + 9);
        v385 = v133;
        v386 = v135;
        v387 = v137;
        v388[0] = v130;
        v383 = v139;
        v384 = v134;
        v140 = v333;
        _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v121, v333, type metadata accessor for Date?);
        v141 = v335;
        outlined init with copy of ResolvableStringResolutionContext(v140, v335, type metadata accessor for Date?);
        EnvironmentValues.stringResolutionDate.setter(v141);
        v309 = v383;
        v310 = v384;
        v142 = v399;
        LODWORD(v330) = *(v114 + 14);
        v312 = *(v114 + 15);
        v311 = specialized Text.isCollapsible()(v345);
        LODWORD(v338) = LOWORD(v385.f64[0]) | v113;
        v143 = v386.f64[1];
        v144 = v387;
        v145 = v388[0];
        v146 = v115;
        v147 = *&v388[1];
        v148 = v389.f64[0];
        v328 = *&v387.f64[1];
        v329 = *&v385.f64[1];
        v326 = *&v386.f64[0];
        v327 = *(&v388[1] + 1);
        LODWORD(v308) = BYTE8(v390[1]);
        *&v337 = v386.f64[1];
        v339 = v146;
        v294 = v142;
        v334 = *&v387.f64[0];
        v335 = *(&v388[0] + 1);
        v321 = *&v388[1];
        if (v320)
        {
          v149 = v146;
          v150 = v145;
          outlined copy of ResolvedTextSuffix(*&v143, *&v144.f64[0], *&v144.f64[1], v145, *(&v145 + 1), v147);
          v151 = v148;

          _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v142, v373);
        }

        else
        {
          v371[0] = v142;
          v152 = v146;
          v150 = v145;
          outlined copy of ResolvedTextSuffix(*&v143, *&v144.f64[0], *&v144.f64[1], v145, *(&v145 + 1), v147);

          v151 = v148;

          TextLayoutProperties.init(from:)(v371, v373);
        }

        v309 = vnegq_f64(v309);
        v310 = vnegq_f64(v310);
        v371[0] = *v373;
        *(v371 + 10) = *&v373[10];
        v153 = v374;
        if (v308 != 3)
        {
          v153 = v308;
        }

        if (v325)
        {
          v154 = 2;
        }

        else
        {
          v154 = 0;
        }

        BYTE10(v371[1]) = v153;
        *(&v371[5] + 11) = v379;
        *(&v371[6] + 11) = v380;
        *(&v371[7] + 11) = *v381;
        *(&v371[8] + 1) = *&v381[13];
        *(&v371[1] + 11) = v375;
        *(&v371[2] + 11) = v376;
        *(&v371[3] + 11) = v377;
        *(&v371[4] + 11) = v378;
        v372 = v382 & 0xFD | v154;
        v155 = MEMORY[0x1E69E7CC0];
        v156 = v339;
        v157 = v328;
        v318 = v151;
        if ((BYTE6(v378) & 1) != 0 || (v338 & 0xD8) != 0 || *(*&v151 + 16))
        {
LABEL_67:
          type metadata accessor for ResolvedStyledText.TextLayoutManager();
          v65 = swift_allocObject();
          *(v65 + 416) = v155;
          *(v65 + 424) = 0u;
          *(v65 + 440) = 0u;
          *(v65 + 456) = 0u;
          *(v65 + 472) = 0u;
          *(v65 + 488) = 512;
          if ((BYTE8(v371[0]) & 1) != 0 || *&v371[0] != 1)
          {
            if (v156)
            {
              v163 = NSAttributedString.replacingLineBreakModes(_:)(0);
            }

            else
            {
              v163 = 0;
            }
          }

          else
          {
            v162 = v156;
            v163 = v156;
          }

          v164 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
          v165 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
          [v164 setDelegate_];
          [v164 setUsesFontLeading_];
          v299 = v163;
          v325 = v164;
          ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v325, v163, &v366);
          v166 = v369;
          *(v65 + 528) = v368;
          *(v65 + 544) = v166;
          *(v65 + 560) = v370;
          v167 = v367;
          *(v65 + 496) = v366;
          *(v65 + 512) = v167;
          v308 = v165;
          *(v65 + 576) = v165;
          v168 = v337;
          v170 = v334;
          v169 = v335;
          *(v65 + 352) = v337;
          *(v65 + 360) = v170;
          *(v65 + 368) = v157;
          *(v65 + 376) = v150;
          v171 = v321;
          *(v65 + 384) = v169;
          *(v65 + 392) = v171;
          *(v65 + 400) = v327;
          *(v65 + 408) = v151;
          *(v65 + 200) = 0;
          *(v65 + 208) = 1;
          v172 = v157;
          v173 = v65 + 280;
          v347 = 1;
          *(v65 + 280) = 0u;
          *(v65 + 296) = 0u;
          *(v65 + 312) = 0u;
          *(v65 + 328) = 0u;
          *(v65 + 344) = 1;
          *(v65 + 216) = v163;
          v174 = v310;
          *(v65 + 224) = v309;
          *(v65 + 240) = v174;
          *(v65 + 256) = v330;
          *(v65 + 257) = v312;
          *(v65 + 258) = v311 & 1;
          *(v65 + 260) = v338;
          v175 = v150;
          v176 = v326;
          *(v65 + 264) = v329;
          *(v65 + 272) = v176;
          v177 = v371[1];
          *(v65 + 16) = v371[0];
          *(v65 + 32) = v177;
          v178 = v371[5];
          *(v65 + 80) = v371[4];
          *(v65 + 96) = v178;
          v179 = v371[3];
          *(v65 + 48) = v371[2];
          *(v65 + 64) = v179;
          *(v65 + 160) = v372;
          v180 = v371[8];
          v181 = v371[6];
          *(v65 + 128) = v371[7];
          *(v65 + 144) = v180;
          *(v65 + 112) = v181;
          v307 = v150;
          if (v163)
          {
            v353 = 0uLL;
            v354 = 0uLL;
            v351 = 0uLL;
            v352 = 0uLL;
            v355 = 1;
            v348 = BYTE8(v371[6]);
            v349 = *&v371[7];
            v362 = v371[6];
            v363 = v371[7];
            v364 = v371[8];
            v365 = v372;
            v358 = v371[2];
            v359 = v371[3];
            v360 = v371[4];
            v361 = v371[5];
            v356 = v371[0];
            v357 = v371[1];
            v182 = v170;
            v183 = v169;
            v184 = v171;
            v185 = v172;
            v186 = v65;
            v187 = v175;
            outlined init with copy of TextLayoutProperties(v371, v350);
            v188 = v187;
            v65 = v186;
            outlined copy of ResolvedTextSuffix(v337, v182, v185, v188, v183, v184);

            v189 = v299;
            outlined init with copy of TextLayoutProperties(v371, v350);
            v190 = v308;
            v191 = v308;

            Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v189, &v351, &v356);
            v193 = v192;
            v195 = v194;
            v197 = v196;
            v199 = v198;

            v200 = v355;
            LOBYTE(v360) = v355;
            v201 = v354;
            v358 = v353;
            v359 = v354;
            v203 = v351;
            v202 = v352;
            v356 = v351;
            v357 = v352;
            *(v173 + 32) = v353;
            *(v173 + 48) = v201;
            *(v173 + 64) = v200;
            *v173 = v203;
            *(v173 + 16) = v202;
            v186[21] = v193;
            v186[22] = v195;
            v186[23] = v197;
            v186[24] = v199;
            v204 = v184;
            v205 = v190;
          }

          else
          {
            *(v65 + 344) = 1;
            *(v65 + 168) = 0uLL;
            *(v65 + 184) = 0uLL;
            v204 = v171;
            outlined copy of ResolvedTextSuffix(v168, v170, v172, v150, v169, v171);

            outlined init with copy of TextLayoutProperties(v371, &v356);
            v205 = v308;
            v206 = v308;
          }

          swift_beginAccess();
          v207 = *(v65 + 97);

          v208 = _TextContainer(v207);
          [v208 setLineFragmentPadding_];
          v209 = v325;
          [v325 setTextContainer_];
          v210 = v328;
          v211 = v307;
          v212 = v337;
          if ((v338 & 0x40) == 0)
          {
            if (v204 < 0)
            {
              outlined consume of ResolvedTextSuffix(v337, v334, v328, v307, v335, v204);
              outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
              if ((v338 & 0x80) == 0 && !*(*&v318 + 16))
              {

LABEL_82:
                outlined destroy of TextLayoutProperties(v371);

                v217 = v344;
                v218 = v340;
                v219 = v333;
                v220 = v336;
                if (*(v65 + 216))
                {
                  goto LABEL_83;
                }

                goto LABEL_97;
              }
            }

            else
            {
              v213 = v205;
              v214 = v204;
              v215 = v334;
              outlined copy of Text.Layout.Line.Line(v337);

              v216 = v215;
              v204 = v214;
              v205 = v213;
              v209 = v325;
              outlined consume of ResolvedTextSuffix(v212, v216, v210, v211, v335, v204);
              outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
            }
          }

          _NSTextLayoutManagerRequiresCTLine(v209);

          outlined consume of ResolvedTextSuffix(v212, v334, v210, v211, v335, v204);
          goto LABEL_82;
        }

        v158 = v321;
        if ((v321 & 0x8000000000000000) == 0)
        {
          v159 = v337;
          v160 = v334;
          outlined copy of Text.Layout.Line.Line(v337);

          outlined consume of ResolvedTextSuffix(v159, v160, v157, v150, v335, v158);
          outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
          goto LABEL_67;
        }

        outlined consume of ResolvedTextSuffix(v337, v334, v328, v150, v335, v321);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
        if (BYTE8(v371[7]) != 2)
        {
          goto LABEL_67;
        }

        type metadata accessor for ResolvedStyledText.StringDrawing();
        v65 = swift_allocObject();
        if (v372)
        {
          outlined init with copy of TextLayoutProperties(v371, &v356);
          v161 = 1;
        }

        else
        {
          if (v156)
          {
            outlined init with copy of TextLayoutProperties(v371, &v356);
            if (NSAttributedString.isDynamic.getter())
            {
              v161 = v330 & 1;
              goto LABEL_89;
            }
          }

          else
          {
            outlined init with copy of TextLayoutProperties(v371, &v356);
          }

          v161 = 0;
        }

LABEL_89:
        v223 = *&v371[0];
        v224 = BYTE8(v371[0]);
        v225 = *&v371[1];
        v226 = BYTE8(v371[1]);
        v227 = *(&v371[5] + 8);
        v228 = v156;
        v229 = v156;
        v230 = *&v371[2];
        v231 = *(&v371[4] + 1);
        if (!v156)
        {
          v337 = *(&v371[5] + 8);
          v232 = v161;
          if (one-time initialization token for emptyString != -1)
          {
            swift_once();
          }

          v229 = static NSAttributedString.emptyString;
          v228 = 0;
          v161 = v232;
          v227 = v337;
        }

        v348 = v224;
        v347 = v226;
        v233 = v311 & 1;
        *(v65 + 352) = 0;
        *(v65 + 360) = v229;
        *(v65 + 368) = v223;
        *(v65 + 376) = v224;
        *(v65 + 384) = v225;
        *(v65 + 392) = v226;
        *(v65 + 400) = v230;
        *(v65 + 408) = v227;
        *(v65 + 424) = v161;
        *(v65 + 425) = v231 != 0.0;
        *(v65 + 426) = v233;
        *(v65 + 432) = v155;
        *(v65 + 200) = 0;
        *(v65 + 208) = 1;
        v234 = (v65 + 280);
        v346 = 1;
        *(v65 + 312) = 0u;
        *(v65 + 328) = 0u;
        *(v65 + 280) = 0u;
        *(v65 + 296) = 0u;
        *(v65 + 344) = 1;
        *(v65 + 216) = v228;
        v235 = v310;
        *(v65 + 224) = v309;
        *(v65 + 240) = v235;
        *(v65 + 256) = v330;
        *(v65 + 257) = v312;
        *(v65 + 258) = v233;
        *(v65 + 260) = v338;
        v236 = v326;
        *(v65 + 264) = v329;
        *(v65 + 272) = v236;
        v237 = v371[1];
        *(v65 + 16) = v371[0];
        *(v65 + 32) = v237;
        v238 = v371[2];
        v239 = v371[3];
        v240 = v371[5];
        *(v65 + 80) = v371[4];
        *(v65 + 96) = v240;
        *(v65 + 48) = v238;
        *(v65 + 64) = v239;
        v241 = v371[6];
        v242 = v371[7];
        v243 = v371[8];
        *(v65 + 160) = v372;
        *(v65 + 128) = v242;
        *(v65 + 144) = v243;
        *(v65 + 112) = v241;
        v244 = v228;
        if (v228)
        {
          v368 = 0uLL;
          v369 = 0uLL;
          v366 = 0uLL;
          v367 = 0uLL;
          LOBYTE(v370) = 1;
          LOBYTE(v351) = BYTE8(v371[6]);
          *(&v351 + 1) = *&v371[7];
          v362 = v371[6];
          v363 = v371[7];
          v364 = v371[8];
          v365 = v372;
          v358 = v371[2];
          v359 = v371[3];
          v360 = v371[4];
          v361 = v371[5];
          v356 = v371[0];
          v357 = v371[1];
          v244 = v228;
          outlined init with copy of TextLayoutProperties(v371, v350);

          Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v244, &v366, &v356);
          v246 = v245;
          v248 = v247;
          v250 = v249;
          v252 = v251;

          outlined destroy of TextLayoutProperties(v371);
          v253 = v370;
          LOBYTE(v360) = v370;
          v254 = v369;
          v358 = v368;
          v359 = v369;
          v256 = v366;
          v255 = v367;
          v356 = v366;
          v357 = v367;
          *(v65 + 312) = v368;
          *(v65 + 328) = v254;
          *(v65 + 344) = v253;
          *v234 = v256;
          *(v65 + 296) = v255;
          *(v65 + 168) = v246;
          *(v65 + 176) = v248;
          *(v65 + 184) = v250;
          *(v65 + 192) = v252;
        }

        else
        {

          outlined destroy of TextLayoutProperties(v371);
          *v234 = 0u;
          *(v65 + 296) = 0u;
          *(v65 + 312) = 0u;
          *(v65 + 328) = 0u;
          *(v65 + 344) = 1;
          *(v65 + 168) = 0u;
          *(v65 + 184) = 0u;
        }

        v217 = v344;
        v218 = v340;
        v219 = v333;
        v220 = v336;
        if (*(v65 + 216))
        {
LABEL_83:
          v221 = NSAttributedString.isDynamic.getter();
          if ((v330 & 1) == 0)
          {
            LODWORD(v222) = v221;
            goto LABEL_99;
          }

          goto LABEL_102;
        }

LABEL_97:
        if ((v330 & 1) == 0)
        {
          LODWORD(v222) = 0;
LABEL_99:
          v257 = AGGraphGetWeakValue();
          v258 = v324;
          if (!v257)
          {
            v264 = v319;
            (*(v324 + 56))(v319, 1, 1, v220);
LABEL_108:
            outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v264, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            v270 = v305;
            goto LABEL_109;
          }

          v259 = v319;
          outlined init with copy of ResolvableStringResolutionContext(v257, v319, type metadata accessor for Date?);
          v260 = *(v258 + 56);
          v261 = 1;
          v260(v259, 0, 1, v220);
          outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v259, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
          v262 = AGGraphGetWeakValue();
          LODWORD(v338) = v222;
          v263 = v316;
          if (v262)
          {
            outlined init with copy of ResolvableStringResolutionContext(v262, v316, type metadata accessor for Date?);
            v261 = 0;
          }

          v264 = v317;
          v260(v263, v261, 1, v220);
          v265 = v315;
          v322(v315, 1, 1, v218);
          v260(v265, 0, 1, v220);
          v266 = *(v306 + 48);
          outlined init with copy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v263, v264, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
          outlined init with copy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v265, v264 + v266, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
          v267 = v265;
          v268 = *(v324 + 48);
          if (v268(v264, 1, v220) == 1)
          {
            outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v267, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            v264 = v317;
            outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v263, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            v269 = v268(v264 + v266, 1, v220);
            v219 = v333;
            if (v269 == 1)
            {
              v217 = v344;
              v218 = v340;
LABEL_107:
              LOBYTE(v222) = v338;
              goto LABEL_108;
            }
          }

          else
          {
            v271 = v304;
            outlined init with copy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v264, v304, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            if (v268(v264 + v266, 1, v220) != 1)
            {
              v222 = *(v302 + 48);
              v273 = v271;
              v274 = v303;
              _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v273, v303, type metadata accessor for Date?);
              _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v264 + v266, v274 + v222, type metadata accessor for Date?);
              v275 = v340;
              v276 = v296;
              v277 = v296(v274, 1, v340);
              v219 = v333;
              if (v277 == 1)
              {
                outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v315, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                v274 = v303;
                outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v316, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                v278 = v276(v274 + v222, 1, v275);
                v217 = v344;
                if (v278 == 1)
                {
                  v218 = v275;
                  outlined destroy of Date?(v274, type metadata accessor for Date?);
                  goto LABEL_107;
                }
              }

              else
              {
                v280 = v301;
                outlined init with copy of ResolvableStringResolutionContext(v274, v301, type metadata accessor for Date?);
                if (v276(v274 + v222, 1, v275) != 1)
                {
                  v288 = v274;
                  v289 = v331;
                  v290 = v300;
                  (*(v331 + 32))(v300, v288 + v222, v275);
                  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
                  v291 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v292 = *(v289 + 8);
                  v292(v290, v340);
                  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v315, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v316, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                  v292(v280, v340);
                  v218 = v340;
                  outlined destroy of Date?(v303, type metadata accessor for Date?);
                  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v264, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                  v217 = v344;
                  v270 = v305;
                  LOBYTE(v222) = v338;
                  if (v291)
                  {
LABEL_109:
                    if (v222)
                    {
                      if (v320)
                      {

                        LODWORD(v344) = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v294);
                      }

                      else
                      {
                        v279 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v294);
                        if (v279)
                        {
                          LODWORD(v344) = *(v279 + 72);
                        }

                        else
                        {
                          LODWORD(v344) = 0;
                        }
                      }

                      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
                      v338 = v281;
                      *&v337 = *(v281 + 48);
                      v282 = AGGraphGetValue();
                      v283 = v295;
                      *v295 = *v282;
                      outlined init with copy of ResolvableStringResolutionContext(v219, v270, type metadata accessor for Date?);
                      v284 = v296;
                      if (v296(v270, 1, v218) == 1)
                      {
                        AGGraphGetValue();
                        static Date.now.getter();
                        outlined consume of Text.Storage(v342, v343, v341 & 1);

                        outlined destroy of Text.ResolvedProperties(&v383);

                        outlined destroy of Date?(v219, type metadata accessor for Date?);
                        v285 = v283;
                        if (v284(v270, 1, v218) != 1)
                        {
                          outlined destroy of Date?(v270, type metadata accessor for Date?);
                        }
                      }

                      else
                      {
                        outlined destroy of Date?(v219, type metadata accessor for Date?);
                        outlined destroy of Text.ResolvedProperties(&v383);

                        outlined consume of Text.Storage(v342, v343, v341 & 1);

                        (*(v331 + 32))(&v283[v337], v270, v218);
                        v285 = v283;
                      }

                      v286 = *(v338 + 80);
                      *(v285 + *(v338 + 64)) = v344 & 1;
                      *(v285 + v286) = v65;
                      swift_storeEnumTagMultiPayload();
                      v287 = *(v314 + 60);

                      outlined assign with take of ResolvedTextHelper.NextUpdate(v285, v217 + v287, type metadata accessor for ResolvedTextHelper.NextUpdate);
                      goto LABEL_117;
                    }
                  }

LABEL_115:
                  outlined destroy of Date?(v219, type metadata accessor for Date?);
                  outlined destroy of Text.ResolvedProperties(&v383);

                  outlined consume of Text.Storage(v342, v343, v341 & 1);

                  goto LABEL_116;
                }

                outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v315, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v316, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
                (*(v331 + 8))(v280, v275);
                v217 = v344;
              }

              outlined destroy of Date?(v274, type metadata accessor for (Date?, Date?));
              outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v264, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
              goto LABEL_115;
            }

            outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v315, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v316, &lazy cache variable for type metadata for Date??, type metadata accessor for Date?);
            outlined destroy of Date?(v271, type metadata accessor for Date?);
            v219 = v333;
          }

          outlined destroy of Date?(v264, type metadata accessor for (Date??, Date??));
          v217 = v344;
          goto LABEL_115;
        }

LABEL_102:

        outlined consume of Text.Storage(v342, v343, v341 & 1);

        outlined destroy of Text.ResolvedProperties(&v383);
        outlined destroy of Date?(v219, type metadata accessor for Date?);
LABEL_116:
        outlined destroy of Date?(v217 + *(v314 + 60), type metadata accessor for ResolvedTextHelper.NextUpdate);
        swift_storeEnumTagMultiPayload();
LABEL_117:

        return v65;
      }
    }

    else
    {
      v327 = *&v393.f64[0];
      *v373 = v393.f64[0];

      v91 = v341;
      v92 = v77;
      v94 = v342;
      v93 = v343;
      v95 = _ShapeStyle_Shape.PreparedTextResult.apply(to:)(v342, v343, v341 & 1, v345);
      v326 = v96;
      LODWORD(v322) = v97;
      v323 = v98;
      LOBYTE(v97) = v91 & 1;
      v86 = v339;
      v99 = v94;
      v77 = v92;
      outlined consume of Text.Storage(v99, v93, v97);

      v387 = v395;
      v388[0] = v396[0];
      *(v388 + 12) = *(v396 + 12);
      v383 = v391;
      v384 = v392;
      v386 = v394;
      v385 = v393;
      outlined destroy of _ShapeStyle_Shape(&v383);
      outlined consume of _ShapeStyle_Shape.Result(v327, 0);
      v342 = v95;
      v343 = v326;
      v341 = v322;
      v345 = v323;
      if (v92)
      {
        goto LABEL_24;
      }
    }

    v100 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(v55);
    v77 = 0;
    v88 = 0;
    if (v100 && *(v100 + 72) == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v64 = type metadata accessor for ResolvedTextHelper(0);
  outlined destroy of Date?(v62 + *(v64 + 60), type metadata accessor for ResolvedTextHelper.NextUpdate);
  swift_storeEnumTagMultiPayload();
  return 0;
}

void type metadata accessor for ClosedRange<Date>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined consume of Text.Modifier(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2 >> 5;
  if (v2 <= 6 && ((1 << v2) & 0x43) != 0)
  {
  }

  return result;
}

void *outlined copy of ResolvedTextSuffix(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {
    outlined copy of Text.Layout.Line.Line(result);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>);
    }
  }
}

uint64_t outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_2(0, a2, 255, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - v5;
  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(*a1);
  if (!v7 || (v8 = MEMORY[0x1E69E6720], outlined init with copy of WeakBox<GlassContainerCache>(v7 + *(*v7 + 248), v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]), v9 = AGCompareValues(), result = outlined destroy of WeakBox<GlassContainerCache>(v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v8), !v9))
  {
    v11 = MEMORY[0x1E69E6720];
    outlined init with copy of WeakBox<GlassContainerCache>(a2, v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
    v12 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>();
    v13 = swift_allocObject();
    outlined init with copy of WeakBox<GlassContainerCache>(v6, v13 + *(*v13 + 248), &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v11);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);
    v15 = v14;

    value = PropertyList.Element.init(keyType:before:after:)(v15, 0, v12).value;
    outlined destroy of WeakBox<GlassContainerCache>(v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v11);
    *a1 = value;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSuffixI033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt1g5@<X0>(void *a1@<X0>, void **a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v24);
    outlined init with take of AnyTrackedValue(v24, v25);
    v12 = v26;
    v13 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (v13[1])(&type metadata for ResolvedTextSuffix, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    v19 = a2[5];
    v20 = a2[6];
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextSuffixKey>>();
    v26 = v21;
    v27 = &protocol witness table for TrackedValue<A>;
    v22 = swift_allocObject();
    v25[0] = v22;
    v22[2] = v14;
    v22[3] = v15;
    v22[4] = v16;
    v22[5] = v17;
    v22[6] = v18;
    v22[7] = v19;
    v22[8] = v20;
    outlined copy of ResolvedTextSuffix(v14, v15, v16, v17, v18, v19);
    specialized Dictionary.subscript.setter(v25, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t sub_18D0E4790()
{
  outlined consume of ResolvedTextSuffix(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t specialized Text.resolve<A>(into:in:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v16 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (key: NSAttributedStringKey, value: Any)(a1, v18, type metadata accessor for Text.Style);
  v19 = *(a8 + 16);
  if (v19)
  {
    v27 = v18;
    v28 = a7;
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v20 = (a8 + 16 * v19 + 24);
    do
    {
      --v19;
      v21 = *(v20 - 1);
      v22 = *v20;
      v20 -= 16;
      v33[0] = a2;
      v33[1] = a3;
      outlined copy of Text.Modifier(v21, v22);
      type metadata accessor for Text.Resolved(0);
      v23 = protocol witness for DebuggableGesturePhase.phase.modify in conformance EventListenerPhase<A>.Value();
      Text.Modifier.modify(style:environment:)(v24, v33, v21, v22);
      v23(v32, 0);
      outlined consume of Text.Modifier(v21, v22);
    }

    while (v19);
    specialized Text.Storage.resolve<A>(into:in:with:)(a1, a2, a3, v29, v30, v31, v28 & 1);
    return outlined assign with take of Text.Style(v27, a1);
  }

  else
  {
    specialized Text.Storage.resolve<A>(into:in:with:)(a1, a2, a3, a4, a5, a6, a7 & 1);
    return outlined destroy of Text.ResolvedString(v18, type metadata accessor for Text.Style);
  }
}

{
  v26 = a7;
  v24 = a4;
  v25 = a6;
  v13 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (key: NSAttributedStringKey, value: Any)(a1, v15, type metadata accessor for Text.Style);
  v16 = *(a8 + 16);
  if (v16)
  {
    v17 = (a8 + 16 * v16 + 24);
    v18 = *(a8 + 16);
    do
    {
      --v18;
      v19 = *(v17 - 1);
      v20 = *v17;
      v17 -= 16;
      v28 = a2;
      v29 = a3;
      outlined copy of Text.Modifier(v19, v20);
      Text.Modifier.modify(style:environment:)(a1, &v28, v19, v20);
      outlined consume of Text.Modifier(v19, v20);
    }

    while (v18);
  }

  if (v26)
  {
    v28 = a2;
    v29 = a3;
    v27 = v24;
    v21 = *(*a5 + 80);
    v22 = type metadata accessor for Text.ResolvedString(0);
    v21(a1, &v28, &v27, v22, &protocol witness table for Text.ResolvedString);
    if (v16)
    {
      return outlined assign with take of Text.Style(v15, a1);
    }
  }

  else
  {
    specialized ResolvedTextContainer.append<A>(_:in:with:)(a5, v25, a2, a3);
    if (v16)
    {
      return outlined assign with take of Text.Style(v15, a1);
    }
  }

  return outlined destroy of Text.ResolvedString(v15, type metadata accessor for Text.Style);
}

void *Text.resolveAttributedStringAndProperties(in:includeDefaultAttributes:options:idiom:)(_OWORD *a1, uint64_t a2, int a3, void **a4, uint64_t *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  LODWORD(v97) = a8;
  v100 = a7;
  v105 = a6;
  LODWORD(v96) = a3;
  v95 = a1;
  v99 = a9;
  v12 = type metadata accessor for TypesettingConfiguration();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v30 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Text.Resolved(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  isEscapingClosureAtFileLocation = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v104 = *(a2 + 8);
  v106 = *a4;
  v19 = *a5;
  v20 = a5[1];
  Text.Style.init()(isEscapingClosureAtFileLocation);
  v98 = v15[7];
  *(isEscapingClosureAtFileLocation + v98) = 0;
  v21 = v15[8];
  v22 = (isEscapingClosureAtFileLocation + v15[9]);
  *v22 = 0;
  v22[1] = 0;
  v23 = isEscapingClosureAtFileLocation + v15[10];
  *(v23 + 32) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 40) = v24;
  *(v23 + 48) = v24;
  *(v23 + 56) = 0u;
  v102 = v23 + 56;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0;
  v101 = xmmword_18DD85510;
  *(v23 + 96) = xmmword_18DD85510;
  *(v23 + 112) = v24;

  *(v23 + 112) = v24;
  *(v23 + 120) = 0;
  v25 = v18;
  v26 = MEMORY[0x1E69E7CD0];
  *(v23 + 136) = 0;
  *(v23 + 144) = 0;
  *(v23 + 128) = v26;
  *(v23 + 152) = 3;
  *(isEscapingClosureAtFileLocation + v21) = v96;
  *v22 = v19;
  v22[1] = v20;
  v27 = v104;
  v28 = v30;
  v29 = _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA024TypesettingConfigurationG0V_Tt0B5(v18, v104, v30);
  LOBYTE(v30) = v97;
  if (v97 & 1) == 0 || ((*(*v105 + 112))(v29))
  {
    goto LABEL_5;
  }

  if (one-time initialization token for automatic != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v31 = type metadata accessor for TypesettingLanguage(0);
    v32 = __swift_project_value_buffer(v31, static TypesettingLanguage.automatic);
    outlined assign with copy of TypesettingLanguage(v32, v28, type metadata accessor for TypesettingLanguage);
LABEL_5:
    v33 = type metadata accessor for Text.Style(0);
    outlined assign with copy of TypesettingLanguage(v28, isEscapingClosureAtFileLocation + *(v33 + 84), type metadata accessor for TypesettingConfiguration);
    v34 = v106;
    v103 = isEscapingClosureAtFileLocation;
    if ((~v106 & 0x60) == 0)
    {
      if (v27)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSuffixI033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt1g5(v25, &v113);

        v35 = v113;
        v36 = v116;
        if ((*(&v115 + 1) & 0x8000000000000000) != 0)
        {
LABEL_14:
          isEscapingClosureAtFileLocation = v103;
          v27 = v104;
          v34 = v106;
          goto LABEL_15;
        }
      }

      else
      {
        type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
        BloomFilter.init(hashValue:)(v37);
        v38 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(v25, v108[0]);
        if (!v38)
        {
          goto LABEL_14;
        }

        v39 = v38[9];
        v40 = v38[14];
        v36 = v38[15];
        outlined copy of ResolvedTextSuffix(v39, v38[10], v38[11], v38[12], v38[13], v40);
        v35 = v39;
        if (v40 < 0)
        {
          goto LABEL_14;
        }
      }

      outlined consume of Text.Layout.Line.Line(v35);
      if (*(v36 + 16))
      {
        *(v23 + 40) = v36;
        *(v23 + 32) = 1;
      }

      else
      {
      }

      goto LABEL_14;
    }

LABEL_15:
    specialized Text.resolve<A>(into:in:with:)(isEscapingClosureAtFileLocation, v25, v27, v34, v105, v100, v30 & 1, v99);
    v41 = *(isEscapingClosureAtFileLocation + v98);
    v42 = v27;
    v106 = v41;
    if (v41)
    {
      v43 = v41;
      v44 = v34;
      v45 = [v43 length];

      *&v113 = v25;
      *(&v113 + 1) = v42;
      Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v45, v43, &v113);
      outlined consume of ResolvedTextSuffix(*(v23 + 56), *(v23 + 64), *(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96));
      v46 = v102;
      *(v102 + 32) = 0;
      *v46 = 0u;
      v46[1] = 0u;
      *(v23 + 96) = v101;
      if ((v44 & 0x40) == 0)
      {
        v47 = v106;
        goto LABEL_42;
      }
    }

    else
    {
      outlined consume of ResolvedTextSuffix(*(v23 + 56), *(v23 + 64), *(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96));
      v48 = v102;
      *(v102 + 32) = 0;
      *v48 = 0u;
      v48[1] = 0u;
      *(v23 + 96) = v101;
      if ((v34 & 0x40) == 0)
      {
        v47 = v106;
        goto LABEL_48;
      }
    }

    v105 = v28;
    if (v42)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSuffixI033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt1g5(v25, &v113);

      v49 = *(&v113 + 1);
      v104 = v113;
      v50 = *(&v114 + 1);
      v51 = v114;
      v53 = *(&v115 + 1);
      v52 = v115;
      v54 = v116;
      v47 = v106;
      v55 = *(&v115 + 1) >> 62;
      if (!(*(&v115 + 1) >> 62))
      {
        goto LABEL_27;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v56);
      v57 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(v25, v108[0]);
      v47 = v106;
      if (!v57)
      {
        goto LABEL_40;
      }

      v49 = v57[10];
      v51 = v57[11];
      v50 = v57[12];
      v52 = v57[13];
      v58 = v57[14];
      v54 = v57[15];
      *&v113 = v57[9];
      *(&v113 + 1) = v49;
      *&v114 = v51;
      *(&v114 + 1) = v50;
      *&v115 = v52;
      *(&v115 + 1) = v58;
      *&v116 = v54;
      v53 = v58;
      v104 = v113;
      outlined copy of ResolvedTextSuffix(v113, v49, v51, v50, v52, v58);
      v55 = v53 >> 62;
      if (!(v53 >> 62))
      {
LABEL_27:
        outlined consume of ResolvedTextSuffix(*(v23 + 56), *(v23 + 64), *(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96));
        *(v23 + 56) = v104;
        *(v23 + 64) = v49;
        *(v23 + 72) = v51;
        *(v23 + 80) = v50;
        *(v23 + 88) = v52;
        *(v23 + 96) = v53;
        *(v23 + 104) = v54;
        goto LABEL_40;
      }
    }

    v102 = v53;
    if (v55 == 1)
    {
      v99 = v54;
      if (v47)
      {
        v96 = [v47 length];
      }

      else
      {
        v96 = 0;
      }

      v98 = v51;
      LOBYTE(v122) = v51 & 1;
      v59 = v104;
      v108[0] = v104;
      v108[1] = v49;
      v109 = v51 & 1;
      v110 = v50;
      v111 = v52;
      v60 = v102;
      v112 = v102;
      outlined copy of Text.Layout.Line.Line(v104);
      v61 = v49;
      Text.Layout.Line.typographicBounds.getter(v125);
      *&v107[4] = v125[0];
      *&v107[20] = v125[1];
      *&v107[36] = v125[2];
      LODWORD(v100) = v122;
      type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for ConcreteCustomTextAttachment<LineAttachment>, &type metadata for LineAttachment, &protocol witness table for LineAttachment, type metadata accessor for ConcreteCustomTextAttachment);
      v62 = swift_allocObject();
      v63 = *&v107[16];
      *(v62 + 60) = *v107;
      *(v62 + 16) = v59;
      *(v62 + 24) = v49;
      *(v62 + 32) = v100;
      *(v62 + 40) = v50;
      *(v62 + 48) = v52;
      v100 = v52;
      *&v101 = v50;
      *(v62 + 56) = v60;
      *(v62 + 76) = v63;
      *(v62 + 92) = *&v107[32];
      *(v62 + 108) = *&v107[48];
      v64 = v96;
      v97 = v61;
      if (v96 < 1)
      {
        v67._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        if (!v47)
        {

          v65 = v98;
          goto LABEL_35;
        }

        v65 = v98;
      }

      else
      {
        v65 = v98;
        if (!v47)
        {
LABEL_35:
          v70 = *(v23 + 112);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v23 + 112) = v70;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
            *(v23 + 112) = v70;
          }

          v72 = v99;
          v74 = *(v70 + 2);
          v73 = *(v70 + 3);
          if (v74 >= v73 >> 1)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v70);
          }

          *(v70 + 2) = v74 + 1;
          *&v70[8 * v74 + 32] = v64;
          *(v23 + 112) = v70;
          v75 = v102 | 0x4000000000000000;
          outlined consume of ResolvedTextSuffix(*(v23 + 56), *(v23 + 64), *(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96));
          v76 = v97;
          *(v23 + 56) = v104;
          *(v23 + 64) = v76;
          v77 = v100;
          v78 = v101;
          *(v23 + 72) = v65 & 1;
          *(v23 + 80) = v78;
          *(v23 + 88) = v77;
          *(v23 + 96) = v75;
          *(v23 + 104) = v72;
          isEscapingClosureAtFileLocation = v103;
          v47 = v106;
          goto LABEL_40;
        }

        v66 = [v47 attributesAtIndex:v96 - 1 effectiveRange:0];
        type metadata accessor for NSAttributedStringKey(0);
        _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
        v67._rawValue = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v68 = v47;
      isa = AnyCustomTextAttachment.nsAttributedString(with:)(v67).super.isa;

      [v68 appendAttributedString_];

      goto LABEL_35;
    }

LABEL_40:
    v28 = v105;
    if (!v47)
    {
      goto LABEL_48;
    }

    v43 = v47;
LABEL_42:
    v79 = v43;
    if ([v79 length] < 1)
    {
      break;
    }

    v105 = v28;
    v124 = 0;
    v122 = 0u;
    v123 = 0u;
    if (one-time initialization token for resolvableTextSegment != -1)
    {
      swift_once();
    }

    v28 = static NSAttributedStringKey.resolvableTextSegment;
    v30 = [v79 length];
    v27 = swift_allocObject();
    v27[2] = v79;
    v27[3] = &v122;
    v25 = swift_allocObject();
    v25[2] = closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:)partial apply;
    v25[3] = v27;
    *&v115 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    *(&v115 + 1) = v25;
    *&v113 = MEMORY[0x1E69E9820];
    *(&v113 + 1) = 1107296256;
    *&v114 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    *(&v114 + 1) = &block_descriptor_31;
    v80 = _Block_copy(&v113);
    v81 = v79;

    [v81 enumerateAttribute:v28 inRange:0 options:v30 usingBlock:{0, v80}];
    _Block_release(v80);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(&v122, &v113, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
      NSMutableAttributedString.setUpdateSchedule(_:)(&v113);

      outlined destroy of TimelineSchedule?(&v113, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
      outlined destroy of TimelineSchedule?(&v122, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);

      v28 = v105;
      v47 = v106;
      isEscapingClosureAtFileLocation = v103;
      goto LABEL_49;
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

LABEL_48:
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  outlined destroy of TimelineSchedule?(&v122, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
LABEL_49:
  v82 = *(v23 + 112);
  v83 = *(v23 + 80);
  v119 = *(v23 + 96);
  v120 = v82;
  v84 = *(v23 + 112);
  v121[0] = *(v23 + 128);
  *(v121 + 9) = *(v23 + 137);
  v85 = *(v23 + 48);
  v87 = *(v23 + 16);
  v115 = *(v23 + 32);
  v86 = v115;
  v116 = v85;
  v88 = *(v23 + 48);
  v89 = *(v23 + 80);
  v117 = *(v23 + 64);
  v90 = v117;
  v118 = v89;
  v91 = *(v23 + 16);
  v113 = *v23;
  v92 = v113;
  v114 = v91;
  v93 = v95;
  v95[6] = v119;
  v93[7] = v84;
  v93[8] = *(v23 + 128);
  *(v93 + 137) = *(v23 + 137);
  v93[2] = v86;
  v93[3] = v88;
  v93[4] = v90;
  v93[5] = v83;
  *v93 = v92;
  v93[1] = v87;
  outlined init with copy of Text.ResolvedProperties(&v113, v108);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v28, type metadata accessor for TypesettingConfiguration);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(isEscapingClosureAtFileLocation, type metadata accessor for Text.Resolved);
  return v47;
}

uint64_t TextChildQuery.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 5);
  v28 = *(v1 + 1);
  v29 = v3;
  type metadata accessor for ResolvedStyledText();
  v4 = *AGGraphGetValue();
  *v19 = v2;
  *&v19[4] = v28;
  *&v19[20] = v29;

  v5 = TextChildQuery.unresolvedText.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v25 = v2;
  v26 = v28;
  v27 = v29;
  v12 = TextChildQuery.renderer.getter();
  v22 = v2;
  v23 = v28;
  v24 = v29;
  if (TextChildQuery.renderer.getter())
  {

    v22 = v2;
    v23 = v28;
    v24 = v29;
    TextChildQuery.environment.getter(v18);
    v13 = v18[0];
    if (v18[1])
    {

      v14 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028TextRendererAddsDrawingGroupI033_7F70C8A76EE0356881289646072938C0LLVG_Tt1g5(v13);
    }

    else
    {
      v14 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028TextRendererAddsDrawingGroupF033_7F70C8A76EE0356881289646072938C0LLVG_Tt2g5(v18[0]);
    }
  }

  else
  {
    v14 = 0;
  }

  *v19 = v4;
  *&v19[8] = v5;
  *&v19[16] = v7;
  v19[24] = v9 & 1;
  *&v19[32] = v11;
  v20 = v12;
  v21 = v14 & 1;
  v15 = type metadata accessor for AccessibilityStyledTextContentView();
  AccessibilityStyledTextContentView.body.getter(v15, a1);

  outlined consume of Text.Storage(v5, v7, v9 & 1);
}

uint64_t ResolvedTextFilter.updateValue()()
{
  v1 = v0;
  v31 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  v6 = *Value;
  v5 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = *(Value + 24);

  outlined copy of Text.Storage(v6, v5, v7);
  v9 = AGGraphGetValue();
  v11 = v10;
  v13 = *v9;
  v12 = *(v9 + 8);
  type metadata accessor for ResolvedStyledText();
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_15;
  }

  v28 = v11;
  v14 = (v1 + *(type metadata accessor for ResolvedTextFilter(0) + 24));
  if ((v4 & 1) == 0)
  {

    goto LABEL_4;
  }

  if (!v14[9])
  {
    goto LABEL_15;
  }

  v15 = v14[6];
  if ((v14[8] & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      v26 = v14[8];
      v27 = v14[9];
      v21 = v15 == v6 && v14[7] == v5;
      v25 = v14[7];
      if (v21)
      {

        outlined copy of Text?(v6, v5, v26, v27);
        goto LABEL_32;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined copy of Text?(v15, v25, v26, v27);
      if (v23)
      {
        goto LABEL_32;
      }

LABEL_30:
      outlined consume of Text?(v15, v25, v26, v27);
      goto LABEL_16;
    }

LABEL_15:

    goto LABEL_16;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = *(*v15 + 96);
  v26 = v14[8];
  v27 = v14[9];
  v25 = v14[7];

  outlined copy of Text?(v15, v25, v26, v27);
  if ((v22(v6) & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_32:
  v24 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v27, v8);
  outlined consume of Text?(v15, v25, v26, v27);
  if (v24)
  {
LABEL_4:
    if ((v28 & 1) == 0 || (PropertyList.Tracker.hasDifferentUsedValues(_:)(v13) & 1) == 0)
    {
      type metadata accessor for ResolvedTextHelper(0);
      ResolvedTextHelper.NextUpdate.time()();
      if ((v30 & 1) != 0 || *AGGraphGetValue() < *&v29)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_16:
  v29 = v13;
  v30 = v12;
  type metadata accessor for ResolvedTextFilter(0);

  outlined copy of Text.Storage(v6, v5, v7);
  v16 = ResolvedTextHelper.resolve(_:with:sizeFitting:)(v6, v5, v7, v8, &v29, 0);
  outlined consume of Text.Storage(v6, v5, v7);

  if (!v16)
  {
    __break(1u);
    return result;
  }

  v29 = v16;
  AGGraphSetOutputValue();

LABEL_18:
  type metadata accessor for ResolvedTextFilter(0);
  type metadata accessor for ResolvedTextHelper(0);
  ResolvedTextHelper.NextUpdate.time()();
  if ((v30 & 1) != 0 || (v18 = v29, *AGGraphGetValue() >= *&v18))
  {
    outlined consume of Text.Storage(v6, v5, v7);
  }

  else
  {
    specialized static GraphHost.currentHost.getter();
    outlined consume of Text.Storage(v6, v5, v7);

    type metadata accessor for ViewGraph();
    v19 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v20 = *(v19 + 376);
    if (*&v18 < v20)
    {
      v20 = *&v18;
    }

    *(v19 + 376) = v20;
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t outlined init with copy of ResolvableAttributeConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI32ResolvableAttributeConfigurationOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t destroy for TypesettingLanguage(uint64_t a1)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = type metadata accessor for Locale.Language();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

BOOL specialized static TypesettingLanguage.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TypesettingLanguage.Storage(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (TypesettingLanguage.Storage, TypesettingLanguage.Storage)();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v13[*(v14 + 56)];
  outlined init with copy of TypesettingLanguage.Storage(a1, v13, type metadata accessor for TypesettingLanguage.Storage);
  outlined init with copy of TypesettingLanguage.Storage(a2, v15, type metadata accessor for TypesettingLanguage.Storage);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = v18(v13, 2, v16);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = v18(v15, 2, v17);
      v21 = type metadata accessor for TypesettingLanguage.Storage;
      if (v20 == 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v24 = v18(v15, 2, v17);
      v21 = type metadata accessor for TypesettingLanguage.Storage;
      if (v24 == 2)
      {
LABEL_8:
        v25 = 1;
        goto LABEL_10;
      }
    }

LABEL_9:
    v25 = 0;
    v21 = type metadata accessor for (TypesettingLanguage.Storage, TypesettingLanguage.Storage);
    goto LABEL_10;
  }

  v33 = v5;
  outlined init with copy of TypesettingLanguage.Storage(v13, v10, type metadata accessor for TypesettingLanguage.Storage);
  v22 = *(v17 + 48);
  v23 = v10[v22];
  if (v18(v15, 2, v17))
  {
    (*(v33 + 8))(v10, v4);
    goto LABEL_9;
  }

  v27 = v23;
  v28 = *(v15 + v22);
  v29 = v33;
  (*(v33 + 32))(v7, v15, v4);
  v30 = static Locale.Language.== infix(_:_:)();
  v31 = *(v29 + 8);
  v31(v7, v4);
  v31(v10, v4);
  v21 = type metadata accessor for TypesettingLanguage.Storage;
  if (v30)
  {
    v25 = v27 == v28;
    v21 = type metadata accessor for TypesettingLanguage.Storage;
  }

  else
  {
    v25 = 0;
  }

LABEL_10:
  outlined destroy of TypesettingLanguage(v13, v21);
  return v25;
}

void *initializeWithCopy for TypesettingLanguage.Storage(void *a1, const void *a2, uint64_t a3)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720]);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for Locale.Language();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

uint64_t Text.Style.TextStyleFont.resolve(in:includeDefaultAttributes:)(uint64_t a1, char a2)
{
  v3 = *v2;
  if (*v2 >= 2)
  {
  }

  else if (a2)
  {
    v5 = *a1;
    v4 = *(a1 + 8);
    if (!v3)
    {
      if (!v4)
      {
        v9[0] = *a1;
        v9[1] = 0;

        v3 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(v9);

        goto LABEL_16;
      }

      v6 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV013EffectiveFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
LABEL_11:
      v3 = v6;
LABEL_16:

      return v3;
    }

    if (v4)
    {

      v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011DefaultFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);

      if (!v3)
      {

        v6 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV012FallbackFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
        goto LABEL_11;
      }
    }

    else
    {
      v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
      if (!v7)
      {
        return _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(v5);
      }

      v3 = v7[9];

      if (!v3)
      {
        return _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(v5);
      }
    }
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

uint64_t outlined destroy of TypesettingLanguage(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010TextSuffixF033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt2g5@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(a1, v13);
  if (result)
  {
    v6 = result[9];
    v7 = result[10];
    v8 = result[11];
    v9 = result[12];
    v10 = result[13];
    v11 = result[14];
    v12 = result[15];
    result = outlined copy of ResolvedTextSuffix(v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0x8000000000000000;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v10;
  a2[5] = v11;
  a2[6] = v12;
  return result;
}

id Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v286 = a6;
  v283 = a4;
  v272 = a1;
  v273 = a2;
  v279.i64[0] = 0;
  v10 = type metadata accessor for ParagraphStyleResolutionContext();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v270 = (&v270 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v275 = &v270 - v13;
  *&v277 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v276.f64[0] = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277);
  v274 = &v270 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  v271 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v270 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TypesettingConfiguration();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v270 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v270 - v22;
  v24 = *a3;
  v25 = *(a3 + 8);
  v280 = *a5;
  v314 = MEMORY[0x1E69E7CC8];
  v285 = v24;
  ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5 = _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA07DerivedC3KeyRzluigAA019ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5(v24, v25);
  v282 = type metadata accessor for Text.Style(0);
  v26 = *(*(v7 + v282[27]) + 16);
  v284 = v25;
  if (v26)
  {
    if (v25)
    {

      v27 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v285);
    }

    else
    {
      v28 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v285);
      if (v28)
      {
        v27 = *(v28 + 72);
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }
    }

    MEMORY[0x1EEE9AC00](v28);
    *(&v270 - 2) = v7;
    v31 = v279.i64[0];
    v29 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:), &v270 - 4, v27);
    v279.i64[0] = v31;
  }

  else if (v25)
  {

    v29 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v285);
  }

  else
  {
    v30 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(v285);
    if (v30)
    {
      v29 = v30[9];
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }
  }

  *&v304 = v29;

  specialized Array.append<A>(contentsOf:)(v32);
  v281 = v304;
  v313 = v304;
  *(v286 + 120) = 0;
  v33 = v7 + v282[21];
  outlined init with copy of ResolvableAttributeConfiguration(v33, v23, type metadata accessor for TypesettingConfiguration);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for TypesettingLanguage(0);
  v35 = __swift_project_value_buffer(v34, static TypesettingLanguage.automatic);
  v36 = specialized static TypesettingLanguage.Storage.== infix(_:_:)(v23, v35);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v23, type metadata accessor for TypesettingLanguage);
  if (v36)
  {
    v37 = MEMORY[0x1E69E7CC8];
    goto LABEL_39;
  }

  outlined init with copy of ResolvableAttributeConfiguration(v33, v20, type metadata accessor for TypesettingConfiguration);
  v38 = v284;
  if (v284)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v285, v17);

    v39 = v271;
  }

  else
  {
    v40 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v285);
    if (v40)
    {
      v39 = v271;
      (*(v271 + 16))(v17, &v40[*(*v40 + 248)], v15);
    }

    else
    {
      v41 = v271;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v15, static LocaleKey.defaultValue);
      (*(v41 + 16))(v17, v42, v15);
      v39 = v41;
    }
  }

  TypesettingLanguage.resolve(with:locale:)(v272, v17, &v304);
  (*(v39 + 8))(v17, v15);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v20, type metadata accessor for TypesettingLanguage);
  v43 = BYTE1(v305);
  if (BYTE1(v305) == 2)
  {
    v37 = MEMORY[0x1E69E7CC8];
    v47 = v285;
    if (!*(MEMORY[0x1E69E7CC8] + 16))
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v44 = v304;
  LODWORD(v273) = v305;
  if (BYTE1(v305) == 1)
  {
    if (one-time initialization token for languageModifiers != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(static AnyFontModifier.languageModifiers + 2) && (specialized __RawDictionaryStorage.find<A>(_:)(v44, *(&v44 + 1)), (v45 & 1) != 0))
    {
      swift_endAccess();

      v37 = MEMORY[0x1E69E7CC8];
      v46 = v273;
    }

    else
    {
      swift_endAccess();
      type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<LanguageFontModifier>, lazy protocol witness table accessor for type LanguageFontModifier and conformance LanguageFontModifier);
      v53 = swift_allocObject();
      *(v53 + 16) = v44;
      swift_beginAccess();
      v54 = v273;
      outlined copy of TypesettingLanguage.Resolved(v44, *(&v44 + 1), v273, 1u);
      outlined copy of TypesettingLanguage.Resolved(v44, *(&v44 + 1), v54, 1u);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v296 = static AnyFontModifier.languageModifiers;
      static AnyFontModifier.languageModifiers = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v44, *(&v44 + 1), isUniquelyReferenced_nonNull_native);
      v46 = v54;
      outlined consume of TypesettingLanguage.Resolved(v44, *(&v44 + 1), v54, 1u);
      static AnyFontModifier.languageModifiers = v296;
      swift_endAccess();
      v37 = MEMORY[0x1E69E7CC8];
    }
  }

  else
  {
    v48 = *MEMORY[0x1E696A518];
    *(&v305 + 1) = MEMORY[0x1E69E6158];
    outlined init with take of Any(&v304, &v296);

    v49 = v314;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *&v290 = v49;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v296, v48, v50);
    v37 = v290;
    v314 = v290;
    v51 = MEMORY[0x193ABEC20](v44, *(&v44 + 1));
    CompositionLanguageForLanguage = CTParagraphStyleGetCompositionLanguageForLanguage();

    *(v286 + 120) = CompositionLanguageForLanguage;
    v46 = v273;
    if ((v273 & 1) == 0)
    {
      outlined consume of TypesettingLanguage.Resolved(v44, *(&v44 + 1), v273, 0);
      goto LABEL_39;
    }

    specialized static AnyFontModifier.languageModifier(_:)(v44, *(&v44 + 1));
  }

  outlined consume of TypesettingLanguage.Resolved(v44, *(&v44 + 1), v46, v43);

  MEMORY[0x193ABF170](v56);
  if (*((v313 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v313 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v281 = v313;
LABEL_39:
  v38 = v284;
  v47 = v285;
  if (!*(v37 + 16))
  {
    goto LABEL_43;
  }

LABEL_40:
  v57 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E696A518]);
  if (v58)
  {
    outlined init with copy of Any(*(v37 + 56) + 32 * v57, &v304);
    if (swift_dynamicCast())
    {
      specialized Set._Variant.insert(_:)(&v304, v296, *(&v296 + 1));
    }
  }

LABEL_43:
  v59 = v33 + *(v18 + 20);
  v60 = *v59;
  if (*(v59 + 8) == 1)
  {
    if (!v60)
    {
      goto LABEL_52;
    }

    type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>, lazy protocol witness table accessor for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier);
    if (v60 == 1)
    {
      *(swift_allocObject() + 16) = 0;
    }

    else
    {
      *(swift_allocObject() + 16) = 0x3FD51EB851EB851FLL;
    }
  }

  else
  {
    type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>, lazy protocol witness table accessor for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier);
    *(swift_allocObject() + 16) = v60;
  }

  MEMORY[0x193ABF170](v61);
  if (*((v313 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v313 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v281 = v313;
LABEL_52:
  if (one-time initialization token for kitFont != -1)
  {
    swift_once();
  }

  *&v296 = *v7;
  v62 = v296;
  *&v304 = v47;
  *(&v304 + 1) = v38;
  v63 = static NSAttributedStringKey.kitFont;
  outlined copy of Text.Style.TextStyleFont(v62);
  v64 = Text.Style.TextStyleFont.resolve(in:includeDefaultAttributes:)(&v304, v283 & 1);
  outlined consume of EffectAnimator<A>.State<A>(v296);
  if (v64)
  {
    if (v38)
    {

      _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v47, &v304);
    }

    else
    {
      v296 = v47;

      static EnvironmentValues.FontContextKey.value(in:)(&v296, &v304);
    }

    v288[1] = v305;
    v288[2] = v306;
    v288[0] = v304;
    v65 = v281;

    outlined init with copy of Font.Context(v288, &v296);

    v290 = v304;
    v291 = v305;
    v66 = MEMORY[0x1E69E7CC0];
    *&v292 = v306;
    *(&v292 + 1) = MEMORY[0x1E69E7CC0];
    v318[1] = v304;
    v318[2] = v305;
    v318[3] = v292;
    *&v318[0] = v64;
    *(&v318[0] + 1) = v65;
    outlined init with copy of Font.Context(&v290, &v296);
    v67 = one-time initialization token for shared;

    if (v67 != -1)
    {
      swift_once();
    }

    specialized ObjectCache.subscript.getter(v318);
    v69 = v68;

    outlined destroy of Font.Context(v288);
    outlined destroy of Font.FontCache.Key(v318);
    v296 = v304;
    v297 = v305;
    v298.i64[0] = v306;
    v298.i64[1] = v66;
    outlined destroy of Font.Context(&v296);
    type metadata accessor for CTFontRef(0);
    v312 = v70;
    *&v311 = v69;
    outlined init with take of Any(&v311, v287);
    v71 = v314;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v315 = v71;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v287, v63, v72);

    v314 = v315;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(&v304);

    outlined destroy of TimelineSchedule?(&v304, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for HitTestableEvent?);
  }

  v73 = (v280 & 4) == 0;
  *&v296 = *(v7 + 16);
  *&v304 = v47;
  *(&v304 + 1) = v38;
  *&v290 = v280;
  outlined copy of Text.Style.TextStyleColor(v296);
  v74 = Text.Style.TextStyleColor.resolve(in:with:properties:includeDefaultAttributes:)(&v304, &v290, v286, v283 & v73);
  v76 = v75;
  v78 = v77;
  outlined consume of Gradient.ProviderTag(v296);
  if ((v78 & 0x100000000) == 0)
  {
    v79 = v74;
    v80 = *&v76;
    if (ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5)
    {
      v81 = *(&v76 + 1) * 0.16;
    }

    else
    {
      v81 = *(&v76 + 1);
    }

    if (one-time initialization token for kitForegroundColor != -1)
    {
      LODWORD(v273) = v76;
      v266 = v81;
      swift_once();
      v81 = v266;
      v80 = *&v273;
    }

    v82 = static NSAttributedStringKey.kitForegroundColor;
    if (one-time initialization token for cache != -1)
    {
      *&v273 = v80;
      v267 = v81;
      swift_once();
      v81 = v267;
      v80 = *&v273;
    }

    specialized ObjectCache.subscript.getter(*&v79, *(&v79 + 1), v80, v81);
    v84 = v83;
    *(&v305 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
    *&v304 = v84;
    outlined init with take of Any(&v304, &v296);
    v85 = v314;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    *&v290 = v85;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v296, v82, v86);
    v314 = v290;
    v87 = *(v286 + 32);
    if ((v87 & 1) == 0 && *&v79 == -1.0 && *(&v79 + 1) == -1.0)
    {
      *(v286 + 32) = v87 | 1;
    }
  }

  v88 = *(v7 + 24);
  if (v88)
  {
    *&v304 = v47;
    *(&v304 + 1) = v38;
    (*(*v88 + 120))(&v315, &v304);
    if (one-time initialization token for kitBackgroundColor != -1)
    {
      swift_once();
    }

    v89 = static NSAttributedStringKey.kitBackgroundColor;
    v90 = v315;
    v91 = v316;
    v92 = v317;
    if (one-time initialization token for cache != -1)
    {
      v264 = v316;
      v265 = v317;
      swift_once();
      v92 = v265;
      v91 = v264;
    }

    specialized ObjectCache.subscript.getter(*&v90, *(&v90 + 1), v91, v92);
    v94 = v93;
    *(&v305 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
    *&v304 = v94;
    outlined init with take of Any(&v304, &v296);
    v95 = v314;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    *&v290 = v95;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v296, v89, v96);
    v314 = v290;
    v97 = *(v286 + 32);
    if ((v97 & 1) == 0 && *&v90 == -1.0 && *(&v90 + 1) == -1.0)
    {
      *(v286 + 32) = v97 | 1;
    }
  }

  if ((*(v7 + 40) & 1) == 0)
  {
    v98 = *(v7 + 32);
    if (v98 != 0.0)
    {
      goto LABEL_93;
    }

    goto LABEL_88;
  }

  if (!v38)
  {
    v100 = v279.i64[0];
    v98 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v47);
    v279.i64[0] = v100;
    if (v98 != 0.0)
    {
      goto LABEL_93;
    }

LABEL_88:
    if ((*(v7 + 56) & 1) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_89;
  }

  v98 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021DefaultBaselineOffsetI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v47);

  if (v98 == 0.0)
  {
    goto LABEL_88;
  }

LABEL_93:
  if (one-time initialization token for kitBaselineOffset != -1)
  {
    swift_once();
  }

  v101 = static NSAttributedStringKey.kitBaselineOffset;
  *(&v305 + 1) = MEMORY[0x1E69E7DE0];
  *&v304 = v98;
  outlined init with take of Any(&v304, &v296);
  v102 = v314;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  *&v290 = v102;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v296, v101, v103);
  v314 = v290;
  if ((*(v7 + 56) & 1) == 0)
  {
LABEL_96:
    v99 = *(v7 + 48);
    if (v99 == 0.0)
    {
      goto LABEL_97;
    }

    goto LABEL_102;
  }

LABEL_89:
  if (v38)
  {

    v99 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultKerningI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v47);

    if (v99 == 0.0)
    {
      goto LABEL_97;
    }
  }

  else
  {
    v105 = v279.i64[0];
    v99 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultKerningF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v47);
    v279.i64[0] = v105;
    if (v99 == 0.0)
    {
LABEL_97:
      if (*(v7 + 72))
      {
        goto LABEL_98;
      }

LABEL_105:
      v104 = *(v7 + 64);
      if (v104 == 0.0)
      {
        goto LABEL_111;
      }

      goto LABEL_108;
    }
  }

LABEL_102:
  if (one-time initialization token for kitKern != -1)
  {
    swift_once();
  }

  v106 = static NSAttributedStringKey.kitKern;
  *(&v305 + 1) = MEMORY[0x1E69E7DE0];
  *&v304 = v99;
  outlined init with take of Any(&v304, &v296);
  v107 = v314;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  *&v290 = v107;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v296, v106, v108);
  v314 = v290;
  if ((*(v7 + 72) & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_98:
  if (v38)
  {

    v104 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DefaultTrackingI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v47);

    if (v104 == 0.0)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v104 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015DefaultTrackingF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v47);
    if (v104 == 0.0)
    {
      goto LABEL_111;
    }
  }

LABEL_108:
  if (one-time initialization token for kitTracking != -1)
  {
    swift_once();
  }

  v109 = static NSAttributedStringKey.kitTracking;
  *(&v305 + 1) = MEMORY[0x1E69E7DE0];
  *&v304 = v104;
  outlined init with take of Any(&v304, &v296);
  v110 = v314;
  v111 = swift_isUniquelyReferenced_nonNull_native();
  *&v290 = v110;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v296, v109, v111);
  v314 = v290;
LABEL_111:
  v279.i64[0] = v63;
  v112 = *(v7 + 88);
  if (v112 == 2)
  {
    goto LABEL_132;
  }

  v113 = *(v7 + 80);
  v114 = v113;
  v115 = *(v7 + 88);
  if (v112 == 1)
  {
    if (v284)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018StrikethroughStyleI0VG_Tt1g5(v285, &v304);

      v115 = *(&v304 + 1);
      v114 = v304;
      if (*(&v304 + 1) == 1)
      {
        goto LABEL_132;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v116);
      v117 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018StrikethroughStyleV0VG_Tt0B5(v285, v296);
      if (!v117)
      {
        goto LABEL_132;
      }

      v114 = v117[9];
      v115 = v117[10];
      outlined copy of Text.LineStyle?(v114, v115);
      if (v115 == 1)
      {
        goto LABEL_132;
      }
    }
  }

  if (v115)
  {
    *&v304 = v285;
    *(&v304 + 1) = v284;
    v118 = *(*v115 + 120);
    outlined copy of Text.Style.LineStyle(v113, v112);

    v118(v287, &v304);
    v119 = *(&v287[0] + 1);
    v120 = *&v287[0];
  }

  else
  {
    outlined copy of Text.Style.LineStyle(v113, v112);
    v120 = 0;
    v119 = 0;
  }

  if (one-time initialization token for kitStrikethroughStyle != -1)
  {
    swift_once();
  }

  v121 = static NSAttributedStringKey.kitStrikethroughStyle;
  v122 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(&v305 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  *&v304 = v122;
  outlined init with take of Any(&v304, &v296);
  v123 = v314;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  *&v290 = v123;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v296, v121, v124);
  v125 = v290;
  v314 = v290;
  if (v115)
  {
    v127 = *(&v119 + 1);
    v126 = *&v119;
    if (one-time initialization token for kitStrikethroughColor != -1)
    {
      LODWORD(v273) = v119;
      swift_once();
      v127 = *(&v119 + 1);
      v126 = *&v273;
    }

    v128 = static NSAttributedStringKey.kitStrikethroughColor;
    if (one-time initialization token for cache != -1)
    {
      *&v273 = v126;
      v268 = v127;
      swift_once();
      v127 = v268;
      v126 = *&v273;
    }

    specialized ObjectCache.subscript.getter(*&v120, *(&v120 + 1), v126, v127);
    v130 = v129;
    *(&v305 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
    *&v304 = v130;
    outlined init with take of Any(&v304, &v296);
    v131 = swift_isUniquelyReferenced_nonNull_native();
    *&v290 = v125;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v296, v128, v131);
    v314 = v290;
    v132 = *(v286 + 32);
    if ((v132 & 1) == 0 && *&v120 == -1.0 && *(&v120 + 1) == -1.0)
    {
      *(v286 + 32) = v132 | 1;
    }
  }

LABEL_132:
  v133 = *(v7 + 104);
  if (v133 == 2)
  {
    goto LABEL_153;
  }

  v134 = *(v7 + 96);
  v135 = v134;
  v136 = *(v7 + 104);
  if (v133 == 1)
  {
    if (v284)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014UnderlineStyleI0VG_Tt1g5(v285, &v304);

      v136 = *(&v304 + 1);
      v135 = v304;
      if (*(&v304 + 1) == 1)
      {
        goto LABEL_153;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v137);
      v138 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014UnderlineStyleV0VG_Tt0B5(v285, v296);
      if (!v138)
      {
        goto LABEL_153;
      }

      v135 = v138[9];
      v136 = v138[10];
      outlined copy of Text.LineStyle?(v135, v136);
      if (v136 == 1)
      {
        goto LABEL_153;
      }
    }
  }

  if (v136)
  {
    *&v304 = v285;
    *(&v304 + 1) = v284;
    v139 = *(*v136 + 120);
    outlined copy of Text.Style.LineStyle(v134, v133);

    v139(&v311, &v304);
    v140 = *(&v311 + 1);
    v141 = v311;
  }

  else
  {
    outlined copy of Text.Style.LineStyle(v134, v133);
    v141 = 0;
    v140 = 0;
  }

  if (one-time initialization token for kitUnderlineStyle != -1)
  {
    swift_once();
  }

  v142 = static NSAttributedStringKey.kitUnderlineStyle;
  v143 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(&v305 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
  *&v304 = v143;
  outlined init with take of Any(&v304, &v296);
  v144 = v314;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *&v290 = v144;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v296, v142, v145);
  v146 = v290;
  v314 = v290;
  if (v136)
  {
    v148 = *(&v140 + 1);
    v147 = *&v140;
    if (one-time initialization token for kitUnderlineColor != -1)
    {
      LODWORD(v273) = v140;
      swift_once();
      v148 = *(&v140 + 1);
      v147 = *&v273;
    }

    v149 = static NSAttributedStringKey.kitUnderlineColor;
    if (one-time initialization token for cache != -1)
    {
      *&v273 = v147;
      v269 = v148;
      swift_once();
      v148 = v269;
      v147 = *&v273;
    }

    specialized ObjectCache.subscript.getter(*&v141, *(&v141 + 1), v147, v148);
    v151 = v150;
    *(&v305 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
    *&v304 = v151;
    outlined init with take of Any(&v304, &v296);
    v152 = swift_isUniquelyReferenced_nonNull_native();
    *&v290 = v146;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v296, v149, v152);
    v314 = v290;
    v153 = *(v286 + 32);
    if ((v153 & 1) == 0 && *&v141 == -1.0 && *(&v141 + 1) == -1.0)
    {
      *(v286 + 32) = v153 | 1;
    }
  }

LABEL_153:
  v154 = *(v7 + 192);
  v308 = *(v7 + 176);
  v309 = v154;
  v310 = *(v7 + 208);
  v155 = *(v7 + 128);
  v304 = *(v7 + 112);
  v305 = v155;
  v156 = *(v7 + 160);
  v306 = *(v7 + 144);
  v307 = v156;
  v157 = v284;
  v158 = v285;
  if (v308 != 1)
  {
    v159 = *MEMORY[0x1E69655D0];
    v160 = *(v7 + 128);
    v290 = *(v7 + 112);
    v291 = v160;
    v161 = *(v7 + 160);
    v163 = *(v7 + 112);
    v162 = *(v7 + 128);
    v292 = *(v7 + 144);
    v293 = v161;
    v294 = v308;
    v295[0] = *(v7 + 184);
    *(v295 + 9) = *(v7 + 193);
    v289[0] = v285;
    v289[1] = v284;
    v296 = v163;
    v297 = v162;
    v165 = *(v7 + 144);
    v164 = *(v7 + 160);
    v166 = *(v7 + 176);
    v167 = *(v7 + 192);
    v302 = *(v7 + 208);
    v300 = v166;
    v301 = v167;
    v298 = v165;
    v299 = v164;
    outlined init with copy of Text.Encapsulation(&v296, v288);
    v168 = Text.Encapsulation.resolve(in:)(v289);
    *(&v291 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextEncapsulation);
    *&v290 = v168;
    outlined init with take of Any(&v290, v288);
    v169 = v314;
    v170 = swift_isUniquelyReferenced_nonNull_native();
    v289[0] = v169;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v288, v159, v170);
    outlined destroy of TimelineSchedule?(&v304, &lazy cache variable for type metadata for Text.Encapsulation?, &type metadata for Text.Encapsulation, type metadata accessor for HitTestableEvent?);
    v314 = v289[0];
  }

  v171 = _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA07DerivedC3KeyRzluigAA019ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5(v158, v157);
  v172 = v275;
  if ((v171 & 1) == 0)
  {
    v173 = *(v7 + 320);
    if (v157)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA09TextScaleI0VG_Tt1g5(v158, &v290);

      v174 = v290;
      if (v173 != 2)
      {
LABEL_165:
        if ((v173 & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_166;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v175);
      v176 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA09TextScaleV0VG_Tt0B5(v158, v296);
      if (v176)
      {
        v174 = *(v176 + 72);
        if (v173 != 2)
        {
          goto LABEL_165;
        }
      }

      else
      {
        v174 = 2;
        if (v173 != 2)
        {
          goto LABEL_165;
        }
      }
    }

    if (v174 == 2 || (v174 & 1) == 0)
    {
      goto LABEL_167;
    }

LABEL_166:
    v177 = *MEMORY[0x1E69DB720];
    v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v297 + 1) = MEMORY[0x1E69E6158];
    *&v296 = v178;
    *(&v296 + 1) = v179;
    outlined init with take of Any(&v296, &v290);
    v180 = v314;
    v181 = swift_isUniquelyReferenced_nonNull_native();
    *&v288[0] = v180;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v290, v177, v181);
    v314 = *&v288[0];
  }

LABEL_167:
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v7 + v282[23], v172, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  v182 = v276.f64[0];
  v183 = v277;
  if ((*(*&v276.f64[0] + 48))(v172, 1, v277) == 1)
  {
    outlined destroy of TimelineSchedule?(v172, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  }

  else
  {
    v184 = *(*&v182 + 32);
    v273 = v7;
    v185 = v157;
    v186 = v274;
    v184(v274, v172, v183);
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CTAdaptiveImageGlyph);
    v187 = v158;
    v188 = static CTAdaptiveImageGlyph._adaptiveImageGlyph(convertingFrom:)();
    v189 = *MEMORY[0x1E69DB5F0];
    v190 = [objc_allocWithZone(MEMORY[0x1E69DB780]) initWithCTAdaptiveImageGlyph_];
    *(&v297 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAdaptiveImageGlyph);
    *&v296 = v190;
    outlined init with take of Any(&v296, &v290);
    v191 = v314;
    v192 = swift_isUniquelyReferenced_nonNull_native();
    *&v288[0] = v191;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v290, v189, v192);

    v158 = v187;
    v193 = v186;
    v157 = v185;
    v7 = v273;
    (*(*&v182 + 8))(v193, v183);
    v314 = *&v288[0];
  }

  v194 = v279.i64[0];
  v195 = *(v7 + 304);
  if (v195)
  {
    v196 = *(v195 + 16);
    v197 = *(v195 + 24);
    *&v290 = v158;
    *(&v290 + 1) = v157;
    v198 = *(*v196 + 120);

    *&v199 = v197 * -2.8;
    v277 = v199;
    v279 = *(v195 + 32);
    v276 = vextq_s8(v279, v279, 8uLL);
    v198(&v296, &v290);

    v200 = vdupq_lane_s64(v277, 0);
    v201 = vaddq_f64(v200, v276);
    v202 = vsubq_f64(v200, v276);
    v203 = v286;
    v204 = vbslq_s8(vcgtq_f64(*(v286 + 16), v202), v202, *(v286 + 16));
    *v286 = vbslq_s8(vcgtq_f64(*v286, v201), v201, *v286);
    *(v203 + 16) = v204;
    *(&v297 + 1) = v197 + v197;
    v298 = v279;
    LODWORD(v299) = 1056964608;
    BYTE4(v299) = 0;
    Dictionary<>.setShadow(shadowStyle:)(&v296);
  }

  else if ((v280 & 8) != 0)
  {
    v205 = *(v7 + 312);
    if (v205)
    {
      v206 = *(v286 + 48);
      v207 = *(v206 + 2);

      v208 = CoreMakeNSShadowWithCustomStyleIndex(0, v207);
      if (v208)
      {
        v209 = v208;
        if (one-time initialization token for kitShadow != -1)
        {
          swift_once();
        }

        v210 = static NSAttributedStringKey.kitShadow;
        *(&v297 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
        *&v296 = v209;
        outlined init with take of Any(&v296, &v290);
        v211 = v209;
        v212 = v314;
        v213 = swift_isUniquelyReferenced_nonNull_native();
        *&v288[0] = v212;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v290, v210, v213);

        v314 = *&v288[0];
      }

      v214 = *(v205 + 16);
      v215 = *(v205 + 24) | (*(v205 + 28) << 32);
      v216 = *(v205 + 29);
      v217 = *(v205 + 30);
      outlined copy of ContentTransition.Storage(v214, v215, v216);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v206 + 2) + 1, 1, v206);
      }

      v219 = *(v206 + 2);
      v218 = *(v206 + 3);
      if (v219 >= v218 >> 1)
      {
        v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v218 > 1), v219 + 1, 1, v206);
      }

      *(v206 + 2) = v219 + 1;
      v220 = &v206[16 * v219];
      *(v220 + 4) = v214;
      *(v220 + 10) = v215;
      v220[44] = BYTE4(v215);
      v220[45] = v216;
      v220[46] = v217;
      v158 = v285;
      *(v286 + 48) = v206;
      v157 = v284;
      v194 = v279.i64[0];
    }
  }

  v221 = ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5;
  if ((v283 | ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5))
  {
    if (one-time initialization token for kitParagraphStyle != -1)
    {
      swift_once();
    }

    v222 = static NSAttributedStringKey.kitParagraphStyle;
    v223 = *(v286 + 136);
    if (v223)
    {
      v224 = *(v286 + 136);
    }

    else
    {
      v225 = v282[26];
      v226 = v282[24];
      v227 = *(v7 + v282[25]);
      *&v296 = v158;
      *(&v296 + 1) = v284;

      v228 = v270;
      ParagraphStyleResolutionContext.init(_:)(&v296, v270);
      LOBYTE(v296) = 0;
      LOBYTE(v290) = 1;
      v229 = v7 + v226;
      v157 = v284;
      v230 = makeParagraphStyle(context:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)(v228, v229, &v296, v227, &v290, v7 + v225);
      _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v228, type metadata accessor for ParagraphStyleResolutionContext);
      [v230 setCompositionLanguage_];
      if (_s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA07DerivedC3KeyRzluigAA019ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5(v158, v157))
      {
        [v230 setFullyJustified_];
        if ([v230 baseWritingDirection] == -1)
        {
          if (v157)
          {

            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v158, &v296);

            v231 = v296;
          }

          else
          {
            v232 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v158);
            if (v232)
            {
              v231 = *(v232 + 72);
            }

            else
            {
              v231 = 0;
            }
          }

          [v230 setBaseWritingDirection_];
        }

        [v230 setLineBreakMode_];
      }

      *(v286 + 136) = v230;
      v224 = v230;
      v221 = ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5;
    }

    *(&v297 + 1) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSParagraphStyle);
    *&v296 = v224;
    outlined init with take of Any(&v296, &v290);
    v233 = v223;
    v234 = v314;
    v235 = swift_isUniquelyReferenced_nonNull_native();
    *&v288[0] = v234;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v290, v222, v235);
    v314 = *&v288[0];
  }

  if (!(((v280 & 1) == 0) | v221 & 1))
  {
    *&v296 = v158;
    *(&v296 + 1) = v157;
    if (v283)
    {
      v236 = 2;
    }

    else
    {
      v236 = 0;
    }

    LODWORD(v290) = v236;
    Text.Style.resolveAccessibilitySpeechAttributes(into:environment:options:)(&v314, &v296, &v290);
    *&v296 = v158;
    *(&v296 + 1) = v157;
    Text.Style.resolveAccessibilityTextAttributes(into:environment:)(&v314, &v296);
  }

  v237 = *(v7 + v282[22]);
  if (v237 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_210;
    }
  }

  else if (!*((v237 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_210;
  }

  if (one-time initialization token for customAttributes != -1)
  {
    swift_once();
  }

  v238 = static NSAttributedStringKey.customAttributes;
  *(&v297 + 1) = &type metadata for Text.CustomAttributes;
  *&v296 = v237;
  outlined init with take of Any(&v296, &v290);

  v239 = v314;
  v240 = swift_isUniquelyReferenced_nonNull_native();
  *&v288[0] = v239;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v290, v238, v240);
  v314 = *&v288[0];
LABEL_210:
  if (*(v7 + 321) != 1 && (v241 = v314, *(v314 + 2)) && (v242 = specialized __RawDictionaryStorage.find<A>(_:)(v194), (v243 & 1) != 0))
  {
    outlined init with copy of Any(v241[7] + 32 * v242, &v290);
    outlined init with take of Any(&v290, &v296);
    outlined init with copy of Any(&v296, &v290);
    type metadata accessor for CTFontRef(0);
    v245 = v244;
    swift_dynamicCast();
    if (one-time initialization token for kitBaselineOffset != -1)
    {
      swift_once();
    }

    v246 = static NSAttributedStringKey.kitBaselineOffset;
    if (v241[2] && (v247 = specialized __RawDictionaryStorage.find<A>(_:)(static NSAttributedStringKey.kitBaselineOffset), (v248 & 1) != 0) && (outlined init with copy of Any(v241[7] + 32 * v247, &v290), (swift_dynamicCast() & 1) != 0))
    {
      v249 = *v288;
    }

    else
    {

      v249 = 0.0;
    }

    v251 = CTFontCopyFontDescriptor(v289[0]);
    CTFontGetWeight();
    v253 = CTFontDescriptorRef.scaled(by:toMultipleOf:maintainedVisualWeight:)(0x3FD0000000000000, 0, v252, 0, 0.65);

    v254 = CTFontCreateWithFontDescriptor(v253, 0.0, 0);
    v255 = v289[0];
    CapHeight = CTFontGetCapHeight(v289[0]);

    v257 = CTFontGetCapHeight(v254);
    v289[0] = v254;
    v258 = v249 + CapHeight - v257;
    *(&v291 + 1) = v245;
    *&v290 = v254;
    outlined init with take of Any(&v290, v288);
    v259 = v254;
    v260 = v314;
    v261 = swift_isUniquelyReferenced_nonNull_native();
    v303 = v260;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v288, v194, v261);
    v262 = v303;
    *(&v291 + 1) = MEMORY[0x1E69E7DE0];
    *&v290 = v258;
    outlined init with take of Any(&v290, v288);
    v263 = swift_isUniquelyReferenced_nonNull_native();
    v303 = v262;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v288, v246, v263);
    __swift_destroy_boxed_opaque_existential_1(&v296);
    v314 = v303;
  }

  else
  {
  }

  return v314;
}

uint64_t _s7SwiftUI17EnvironmentValuesVy5ValueQzxmcAA07DerivedC3KeyRzluigAA019ShouldRedactContentG033_18671928047E57F039DC339288B6FAFBLLV_Tt0B5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(a1);
  }

  else
  {
    v5[0] = a1;
    v5[1] = 0;

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(v5);
  }

  return ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010TextSuffixV033_3A0E49913D84545BECD562BC22E4DF1CLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for (TypesettingLanguage.Storage, TypesettingLanguage.Storage)()
{
  if (!lazy cache variable for type metadata for (TypesettingLanguage.Storage, TypesettingLanguage.Storage))
  {
    type metadata accessor for TypesettingLanguage.Storage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TypesettingLanguage.Storage, TypesettingLanguage.Storage));
    }
  }
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
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [AnyFontModifier], type metadata accessor for AnyFontModifier, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [AnyFontModifier] and conformance [A], &lazy cache variable for type metadata for [AnyFontModifier], type metadata accessor for AnyFontModifier);
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
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [ViewResponder] and conformance [A], &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder);
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
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [LazyLayoutCacheItem], type metadata accessor for LazyLayoutCacheItem, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [LazyLayoutCacheItem] and conformance [A], &lazy cache variable for type metadata for [LazyLayoutCacheItem], type metadata accessor for LazyLayoutCacheItem);
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
        type metadata accessor for LazyLayoutCacheItem();
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
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [ResolvedStyledText], type metadata accessor for ResolvedStyledText, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [ResolvedStyledText] and conformance [A], &lazy cache variable for type metadata for [ResolvedStyledText], type metadata accessor for ResolvedStyledText);
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
        type metadata accessor for ResolvedStyledText();
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
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [AbstractHomogeneousCollection], type metadata accessor for AbstractHomogeneousCollection, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [AbstractHomogeneousCollection] and conformance [A], &lazy cache variable for type metadata for [AbstractHomogeneousCollection], type metadata accessor for AbstractHomogeneousCollection);
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
        type metadata accessor for AbstractHomogeneousCollection();
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
          type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for [TextAttributeModifierBase], type metadata accessor for TextAttributeModifierBase, MEMORY[0x1E69E62F8]);
          lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](&lazy protocol witness table cache variable for type [TextAttributeModifierBase] and conformance [A], &lazy cache variable for type metadata for [TextAttributeModifierBase], type metadata accessor for TextAttributeModifierBase);
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
        type metadata accessor for TextAttributeModifierBase();
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

unint64_t outlined copy of Text.Style.TextStyleFont(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t outlined copy of Text.Modifier(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2 >> 5;
  if (v2 <= 6 && ((1 << v2) & 0x43) != 0)
  {
  }

  return result;
}

uint64_t outlined copy of Text?(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

void type metadata accessor for (Date?, Date?)()
{
  if (!lazy cache variable for type metadata for (Date?, Date?))
  {
    type metadata accessor for Date?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Date?, Date?));
    }
  }
}

void type metadata accessor for (Date?, NSMutableAttributedString?, Text.ResolvedProperties)()
{
  if (!lazy cache variable for type metadata for (Date?, NSMutableAttributedString?, Text.ResolvedProperties))
  {
    type metadata accessor for Date?(255);
    type metadata accessor for NSMutableAttributedString?();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Date?, NSMutableAttributedString?, Text.ResolvedProperties));
    }
  }
}

uint64_t _ShapeStyle_Shape.PreparedTextResult.apply(to:)(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v9 = *v4;
  if (*v4)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
    }

    v11 = *(a4 + 2);
    v10 = *(a4 + 3);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a4);
    }

    v13 = 0;
    inited = v9;
  }

  else
  {
    type metadata accessor for TextForegroundKeyColorModifier();
    inited = swift_initStaticObject();
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
    }

    v11 = *(a4 + 2);
    v15 = *(a4 + 3);
    v12 = v11 + 1;
    if (v11 >= v15 >> 1)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v11 + 1, 1, a4);
    }

    v13 = -64;
  }

  *(a4 + 2) = v12;
  v16 = &a4[16 * v11];
  *(v16 + 4) = inited;
  v16[40] = v13;

  return a1;
}

void type metadata accessor for (Date??, Date??)()
{
  if (!lazy cache variable for type metadata for (Date??, Date??))
  {
    _s10Foundation4DateVSgMaTm_2(255, &lazy cache variable for type metadata for Date??, 255, type metadata accessor for Date?, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Date??, Date??));
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016DisableLinkColorV033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016DisableLinkColorV033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE016DisableLinkColorS033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE016DisableLinkColorV033_7AFAB46D18FA6D189589CFA78D8B2B2ELLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>, &type metadata for EnvironmentValues.DisableLinkColorKey, &protocol witness table for EnvironmentValues.DisableLinkColorKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DisableLinkColorKey>>);
    }
  }
}

uint64_t outlined init with copy of EnvironmentValues.StringResolutionDate.ResolvableDate?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_2(0, a3, 255, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of TypesettingLanguage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

_BYTE *assignWithCopy for TypesettingConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (!v10)
  {
    if (!v11)
    {
      v19 = type metadata accessor for Locale.Language();
      (*(*(v19 - 8) + 24))(a1, a2, v19);
      a1[*(v7 + 48)] = a2[*(v7 + 48)];
      goto LABEL_7;
    }

    outlined destroy of TypesettingConfiguration(a1, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(a1, a2, *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  v12 = type metadata accessor for Locale.Language();
  (*(*(v12 - 8) + 16))(a1, a2, v12);
  a1[*(v7 + 48)] = a2[*(v7 + 48)];
  (*(v8 + 56))(a1, 0, 2, v7);
LABEL_7:
  v14 = *(a3 + 20);
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = *v16;
  v15[8] = v16[8];
  *v15 = v17;
  return a1;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextSuffixKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextSuffixKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSuffixKey>, &type metadata for TextSuffixKey, &protocol witness table for TextSuffixKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextSuffixKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextSuffixKey>>);
    }
  }
}

uint64_t Text.Modifier.modify(style:environment:)(uint64_t result, uint64_t *a2, uint64_t a3, unsigned __int8 a4)
{
  v6 = result;
  v8 = *a2;
  v7 = a2[1];
  v9 = a4 >> 5;
  if (v9 > 3)
  {
    if ((a4 >> 5) <= 5u)
    {
      if (v9 == 4)
      {
        *(result + 64) = *&a3;
        *(result + 72) = 0;
      }

      else
      {
        if (one-time initialization token for semantic != -1)
        {
          swift_once();
        }

        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        result = swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          result = dyld_program_sdk_at_least();
        }

        *(v6 + 32) = *&a3;
        *(v6 + 40) = 0;
      }

      return result;
    }

    if (v9 == 6)
    {
      v26 = *a2;
      v27 = v7;
      return (*(*a3 + 88))(result, &v26);
    }

    if (a3 | a4 ^ 0xE0)
    {
      type metadata accessor for AnyDynamicFontModifier<Font.WidthModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.DesignModifier>, lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier);
      *(swift_allocObject() + 16) = 2;
    }

    else
    {
      _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V010MonospacedE0V_Ttt0g5Tm(&type metadata for Font.ItalicModifier, &lazy cache variable for type metadata for AnyStaticFontModifier<Font.ItalicModifier>, &protocol witness table for Font.ItalicModifier);
    }

    MEMORY[0x193ABF170]();
    if (*((*(v6 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v6 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

LABEL_48:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if ((a4 >> 5) > 1u)
  {
    if (v9 == 2)
    {
      if (a4)
      {
        v12 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((result + 8), &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier);
        v13 = *(v6 + 8);
        if (v13 >> 62)
        {
          v23 = v12;
          v14 = __CocoaSet.count.getter();
          v12 = v23;
          if (v14 >= v23)
          {
LABEL_13:
            specialized Array.replaceSubrange<A>(_:with:)(v12, v14);
            type metadata accessor for Text.Style(0);
            specialized Set._Variant.insert(_:)(&v26, &type metadata for Font.WeightModifier);
            if (one-time initialization token for v7 != -1)
            {
              swift_once();
            }

            v15 = static Semantics.v7;
            if (one-time initialization token for forced != -1)
            {
              swift_once();
            }

            result = swift_beginAccess();
            if (byte_1ED53C51C == 1)
            {
              result = dyld_program_sdk_at_least();
              if (result)
              {
                return result;
              }
            }

            else if (static Semantics.forced >= v15)
            {
              return result;
            }

            result = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v6 + 8));
            v21 = *(v6 + 8);
            if (v21 >> 62)
            {
              v24 = result;
              v22 = __CocoaSet.count.getter();
              result = v24;
              if (v22 >= v24)
              {
                goto LABEL_68;
              }
            }

            else
            {
              v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v22 >= result)
              {
LABEL_68:
                specialized Array.replaceSubrange<A>(_:with:)(result, v22);
                return specialized Set._Variant.insert(_:)(&v25, &type metadata for Font.BoldModifier);
              }
            }

            __break(1u);
            return result;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14 >= v12)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      else
      {
        type metadata accessor for AnyDynamicFontModifier<Font.WidthModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier);
        *(swift_allocObject() + 16) = *&a3;
        MEMORY[0x193ABF170]();
        if (*((*(v6 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v6 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      goto LABEL_48;
    }

    if (one-time initialization token for semantic != -1)
    {
      swift_once();
    }

    v17 = static Semantics_v4.semantic;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      result = dyld_program_sdk_at_least();
      if ((result & 1) == 0)
      {
LABEL_37:
        v18 = *(v6 + 48);
        if (*(v6 + 56))
        {
          v18 = 0.0;
        }

        *(v6 + 48) = v18 + *&a3;
        *(v6 + 56) = 0;
        return result;
      }
    }

    else if (static Semantics.forced < v17)
    {
      goto LABEL_37;
    }

    *(v6 + 48) = *&a3;
    *(v6 + 56) = 0;
    return result;
  }

  if (a4 >> 5)
  {
    if (*&a3 != 0.0)
    {
      v16 = *result;

      result = outlined consume of EffectAnimator<A>.State<A>(v16);
      *v6 = *&a3;
      return result;
    }

    if (one-time initialization token for semantic != -1)
    {
      swift_once();
    }

    v20 = static Semantics_v4.semantic;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
LABEL_64:
        result = outlined consume of EffectAnimator<A>.State<A>(*v6);
        *v6 = 0;
        return result;
      }
    }

    else if (static Semantics.forced < v20)
    {
      goto LABEL_64;
    }

    result = outlined consume of EffectAnimator<A>.State<A>(*v6);
    *v6 = 1;
    return result;
  }

  if (*&a3 != 0.0)
  {
    v25 = *(result + 16);
    v26 = v8;
    v27 = v7;
    outlined copy of Text.Modifier(a3, a4);
    outlined copy of Text.Modifier(a3, a4);
    outlined copy of Text.Style.TextStyleColor(v25);
    v10 = Text.Style.TextStyleColor.baseStyle(in:)(&v26);
    outlined consume of Gradient.ProviderTag(v25);
    v11 = specialized ShapeStyle.copyStyle(name:in:foregroundStyle:)(0, v8, v7, v10, a3);
    outlined consume of Text.Modifier(a3, a4);

    outlined consume of Text.Modifier(a3, a4);
    result = outlined consume of Gradient.ProviderTag(*(v6 + 16));
    *(v6 + 16) = v11;
    return result;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v19 = static Semantics_v4.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_57:
      result = outlined consume of Gradient.ProviderTag(*(v6 + 16));
      *(v6 + 16) = 0x8000000000000000;
      return result;
    }
  }

  else if (static Semantics.forced < v19)
  {
    goto LABEL_57;
  }

  result = outlined consume of Gradient.ProviderTag(*(v6 + 16));
  *(v6 + 16) = 0x8000000000000008;
  return result;
}