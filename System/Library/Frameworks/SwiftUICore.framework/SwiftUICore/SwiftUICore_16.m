void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA09TextScaleV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA09TextScaleV0VG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WritingModeKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WritingModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WritingModeKey>>);
    }
  }
}

uint64_t outlined copy of Text.LineStyle?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<UnderlineStyleKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<UnderlineStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<UnderlineStyleKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextAlignmentKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextAlignmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextAlignmentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextAlignmentKey>>);
    }
  }
}

uint64_t sub_18D0CE800(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Text.Modifier(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

unint64_t outlined consume of EffectAnimator<A>.State<A>(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

void Font.TextStyleProvider.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  switch(*v0)
  {
    case 0xB:
    case 0xC:
    case 0xD:
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      JUMPOUT(0x18D0CE95CLL);
    default:
      MEMORY[0x193AC11A0]();
      if (v1 != 4)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v1);
        if (!v3)
        {
          goto LABEL_4;
        }

LABEL_9:
        Hasher._combine(_:)(0);
        return;
      }

      Hasher._combine(_:)(0);
      if (v3)
      {
        goto LABEL_9;
      }

LABEL_4:
      Hasher._combine(_:)(1u);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      MEMORY[0x193AC11E0](v4);
      return;
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultKerningV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultKerningV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultKerningKey>, &type metadata for DefaultKerningKey, &protocol witness table for DefaultKerningKey, type metadata accessor for EnvironmentPropertyKey);
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

unint64_t Text.Style.TextStyleColor.resolve(in:with:properties:includeDefaultAttributes:)(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  v8 = *v4;
  v9 = *v4 >> 62;
  if (!v9)
  {
    goto LABEL_5;
  }

  if (v9 == 1)
  {
    if ((v7 & 0x20) == 0)
    {
      v8 &= 0x3FFFFFFFFFFFFFFFuLL;
      goto LABEL_5;
    }

    return 0xBF800000BF800000;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  if ((v7 & 2) != 0)
  {
    return 0xBF800000BF800000;
  }

  if (v8 != 0x8000000000000000)
  {
    *&v19[0] = *a1;
    *(&v19[0] + 1) = v6;
    v12 = EnvironmentValues.defaultForegroundColor.getter();
    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_22:
    v8 = v12;
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v29[27] = 0;
    v24 = 0uLL;
    *&v25 = 1;
    BYTE8(v25) = 1;
    *&v26 = 0;
    BYTE8(v26) = 5;
    *&v27 = v5;
    *(&v27 + 1) = v6;
    v28 = 0u;
    memset(v29, 0, 24);
    v29[24] = 1;
    *&v29[25] = 769;
    v14 = *(*v8 + 80);

    v14(&v24);
    if (BYTE8(v26) == 1)
    {
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v23 = v15;
    LOBYTE(v19[0]) = 0;
    _ShapeStyle_Pack.subscript.getter(v19, 0, v17);

    Text.ResolvedProperties.addCustomStyle(_:)(v17, &v30);
    v13 = v30;

    v19[5] = v17[5];
    v19[6] = v17[6];
    v19[0] = v17[0];
    v19[1] = v17[1];
    v19[2] = v17[2];
    v20 = v18;
    v19[3] = v17[3];
    v19[4] = v17[4];
    outlined destroy of _ShapeStyle_Pack.Style(v19);
    v21[4] = v28;
    v22[0] = *v29;
    *(v22 + 12) = *&v29[12];
    v21[0] = v24;
    v21[1] = v25;
    v21[2] = v26;
    v21[3] = v27;
    outlined destroy of _ShapeStyle_Shape(v21);
    return v13;
  }

  *&v19[0] = *a1;
  *(&v19[0] + 1) = v6;
  v12 = EnvironmentValues.foregroundColor.getter();
  if (v12)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (one-time initialization token for primary != -1)
  {
    swift_once();
  }

  v8 = static Color.primary;
LABEL_5:

  if ((v7 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  v10 = specialized ShapeStyle.fallbackColor(in:level:)(v5, v6, 0, v8);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    if (one-time initialization token for foreground != -1)
    {
      swift_once();
    }

    v11 = static Color.foreground;
  }

  *&v17[0] = v5;
  *(&v17[0] + 1) = v6;
  (*(*v11 + 120))(v19, v17);
  v13 = *&v19[0];

  return v13;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultKerningKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultKerningKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultKerningKey>, &type metadata for DefaultKerningKey, &protocol witness table for DefaultKerningKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultKerningKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultKerningKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DefaultTrackingV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015DefaultTrackingV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
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

void specialized ObjectCache.subscript.getter(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v29 = *a1;
  v30 = v3;
  v4 = a1[3];
  v31 = a1[2];
  v32 = v4;
  v5 = Font.FontCache.Key.hashValue.getter();
  v6 = 4 * (v5 & 7);
  v28 = 0;
  v27 = 0x80000000;
  v7 = *(v1 + 32);

  os_unfair_lock_lock(v7 + 4);
  v33[0] = v29;
  v33[1] = v30;
  v33[2] = v31;
  v33[3] = v32;
  v8 = specialized closure #1 in ObjectCache.subscript.getter(&v7[6], v6, v5, v33, &v27, &v28);
  os_unfair_lock_unlock(v7 + 4);

  if (!v8)
  {
    (*(v2 + 16))(&v25, &v29);
    v9 = *(v2 + 32);

    os_unfair_lock_lock((v9 + 16));
    v26[0] = v29;
    v26[1] = v30;
    v26[2] = v31;
    v26[3] = v32;
    v10 = __OFADD__(v6, v28);
    v11 = v6 + v28;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v12 = v25;
      LODWORD(v2) = *(v9 + 32) + 1;
      *(v9 + 32) = v2;
      v13 = *(v9 + 24);
      outlined init with copy of Font.FontCache.Key(v26, v23);
      v8 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 24) = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    *(v9 + 24) = specialized _ArrayBuffer._consumeAndCreateNew()(v22);

    v13 = *(v9 + 24);
    if ((v11 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v11 < v13[2])
      {
        v15 = &v13[11 * v11];
        v16 = *(v15 + 3);
        v23[0] = *(v15 + 2);
        v23[1] = v16;
        v17 = *(v15 + 4);
        v18 = *(v15 + 5);
        v19 = *(v15 + 6);
        v24 = *(v15 + 28);
        v23[3] = v18;
        v23[4] = v19;
        v23[2] = v17;
        v20 = v30;
        *(v15 + 2) = v29;
        *(v15 + 3) = v20;
        v21 = v32;
        *(v15 + 4) = v31;
        *(v15 + 5) = v21;
        v15[12] = v5;
        v15[13] = v8;
        *(v15 + 28) = v2;
        outlined destroy of ResolvableTextSegmentAttribute.Value?(v23, type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item);
        os_unfair_lock_unlock((v9 + 16));

        return;
      }

LABEL_11:
      __break(1u);

      os_unfair_lock_unlock((v9 + 16));
      __break(1u);
      return;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }
}

Swift::Int Font.FontCache.Key.hashValue.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  Hasher.init(_seed:)();
  (*(*v2 + 120))(v9);
  if (!(v3 >> 62))
  {
    result = MEMORY[0x193AC11A0](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    Font.Context.hash(into:)(v9);
    return Hasher._finalize()();
  }

  v8 = __CocoaSet.count.getter();
  MEMORY[0x193AC11A0](v8);
  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      (*(*v7 + 104))(v9);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *initializeWithCopy for ObjectCache.Item(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v9 + 80);
  v13 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + *(v9 + 64);
  v14 = v10 | v8;
  if (!(v10 | v8))
  {
    if (!*(a2 + v13))
    {
      goto LABEL_26;
    }

    v15 = (*(a2 + v13) - 1) << (8 * v13);
    if (v13 > 3)
    {
      v15 = 0;
    }

    if (v13)
    {
      v16 = v13 <= 3 ? ((v12 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v12) + *(v9 + 64) : 4;
      if (v16 > 2)
      {
        v17 = v16 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v17 = v16 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v17 = 0;
    }

    if ((v17 | v15) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (v8 >= v10)
  {
    if (!(*(v7 + 48))(a2))
    {
      goto LABEL_26;
    }

LABEL_16:
    if (v14)
    {
      v18 = v13;
    }

    else
    {
      v18 = v13 + 1;
    }

    memcpy(a1, a2, v18);
    goto LABEL_28;
  }

  if ((*(v9 + 48))((((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, v10, v5))
  {
    goto LABEL_16;
  }

LABEL_26:
  (*(v7 + 16))(a1, a2, v6);
  v19 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  (*(v9 + 16))((v19 + v12 + 8) & ~v12, (v20 + v12 + 8) & ~v12, v5);
  if (!v14)
  {
    *(a1 + v13) = 0;
  }

LABEL_28:
  if (v14)
  {
    v21 = v13;
  }

  else
  {
    v21 = v13 + 1;
  }

  *((a1 + v21 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((a2 + v21 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t specialized closure #1 in ObjectCache.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    v7 = *a1;
    v11 = *a1 + 32;
    v12 = 1;
    v13 = a2;
    do
    {
      v14 = v12;
      if (v13 >= v7[2])
      {
        goto LABEL_53;
      }

      v15 = v11 + 88 * v13;
      v16 = *(v15 + 16);
      v73 = *v15;
      v74 = v16;
      v17 = *(v15 + 32);
      v18 = *(v15 + 48);
      v19 = *(v15 + 64);
      v78 = *(v15 + 80);
      v76 = v18;
      v77 = v19;
      v75 = v17;
      if (v73)
      {
        v80 = v13;
        v57 = v12;
        v55 = v10;
        v71 = v76;
        v72 = v77;
        v69 = v74;
        v70 = v75;
        v68 = v73;
        if (v77 == a3)
        {
          v45 = 11 * v13;
          v6 = *a4;
          v20 = *(*v68 + 112);
          outlined init with copy of ResolvableTextSegmentAttribute.Value(&v73, &v64, type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item);
          if (v20(v6))
          {
            v21 = *(&v68 + 1);
            v6 = *(&v68 + 1) >> 62;
            v50 = *(&v68 + 1);
            if (*(&v68 + 1) >> 62)
            {
              v41 = __CocoaSet.count.getter();
              v21 = v50;
              v54 = v41;
            }

            else
            {
              v54 = *((*(&v68 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v22 = *(a4 + 8);
            v23 = v22 >> 62;
            v53 = v22;
            if (v22 >> 62)
            {
              v24 = __CocoaSet.count.getter();
              v21 = v50;
            }

            else
            {
              v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v54 == v24)
            {
              v25 = v53;
              if (v54)
              {
                v26 = v21 & 0xFFFFFFFFFFFFFF8;
                v27 = (v21 & 0xFFFFFFFFFFFFFF8) + 32;
                v44 = v21 & 0xFFFFFFFFFFFFFF8;
                if (v21 < 0)
                {
                  v26 = v21;
                }

                if (v6)
                {
                  v27 = v26;
                }

                v28 = v53 & 0xFFFFFFFFFFFFFF8;
                v29 = (v53 & 0xFFFFFFFFFFFFFF8) + 32;
                if (v53 < 0)
                {
                  v28 = v53;
                }

                if (v23)
                {
                  v29 = v28;
                }

                if (v27 != v29)
                {
                  if ((v54 & 0x8000000000000000) == 0)
                  {
                    v46 = v53 & 0xC000000000000001;
                    v47 = v21 & 0xC000000000000001;
                    v6 = 4;
                    while (1)
                    {
                      v30 = v11;
                      v31 = v9;
                      v32 = a5;
                      v33 = v7;
                      v7 = (v6 - 4);
                      if (__OFADD__(v6 - 4, 1))
                      {
                        goto LABEL_55;
                      }

                      v56 = v6 - 3;
                      if (v47)
                      {
                        v34 = MEMORY[0x193AC03C0](v6 - 4);
                        if (!v46)
                        {
                          goto LABEL_30;
                        }
                      }

                      else
                      {
                        if (v7 >= *(v44 + 16))
                        {
                          goto LABEL_56;
                        }

                        v34 = *(v21 + 8 * v6);

                        if (!v46)
                        {
LABEL_30:
                          if (v7 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_57;
                          }

                          v35 = *(v25 + 8 * v6);

                          goto LABEL_32;
                        }
                      }

                      v35 = MEMORY[0x193AC03C0](v6 - 4, v25);
LABEL_32:
                      v36 = (*(*v34 + 96))(v35);

                      v7 = v33;
                      a5 = v32;
                      v9 = v31;
                      v11 = v30;
                      v21 = v50;
                      if ((v36 & 1) == 0)
                      {
                        goto LABEL_39;
                      }

                      ++v6;
                      v25 = v53;
                      if (v56 == v54)
                      {
                        goto LABEL_34;
                      }
                    }
                  }

                  goto LABEL_58;
                }
              }

LABEL_34:
              v37 = *(a4 + 32);
              v79[0] = *(a4 + 16);
              v79[1] = v37;
              v39 = *(a4 + 16);
              v38 = *(a4 + 32);
              v79[2] = *(a4 + 48);
              v64 = v69;
              v65 = v70;
              v66 = v71;
              v59 = v39;
              v60 = v38;
              v61 = *(a4 + 48);
              outlined init with copy of Font.Context(&v69, v58);
              outlined init with copy of Font.Context(v79, v58);
              LODWORD(v6) = specialized static Font.Context.== infix(_:_:)(&v64, &v59);
              v62[0] = v59;
              v62[1] = v60;
              v62[2] = v61;
              outlined destroy of Font.Context(v62);
              v63[0] = v64;
              v63[1] = v65;
              v63[2] = v66;
              outlined destroy of Font.Context(v63);
              if (v6)
              {
                LODWORD(v6) = *(a1 + 8) + 1;
                *(a1 + 8) = v6;
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  goto LABEL_59;
                }

                goto LABEL_50;
              }
            }
          }
        }

        else
        {
          outlined init with copy of ResolvableTextSegmentAttribute.Value(&v73, &v64, type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item);
        }

LABEL_39:
        if (v80 >= v7[2])
        {
          goto LABEL_54;
        }

        LODWORD(v6) = *(a1 + 8);
        v40 = *(v15 + 80);
        outlined destroy of ResolvableTextSegmentAttribute.Value?(&v73, type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item);
        if (*a5 < v6 - v40)
        {
          *a6 = v55;
          *a5 = v6 - v40;
        }

        v14 = v57;
      }

      else if (*a5 != 0x7FFFFFFF)
      {
        *a6 = v10;
        *a5 = 0x7FFFFFFF;
      }

      if (v14 == 4)
      {
        return 0;
      }

      v12 = v14 + 1;
      v13 = v14 + v9;
      v10 = v14;
    }

    while ((v9 & 0x8000000000000000) == 0);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
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
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  v7 = result;
LABEL_50:
  if (v80 >= v7[2])
  {
    __break(1u);
  }

  else
  {
    LODWORD(v7[v45 + 14]) = v6;
    *a1 = v7;
    v43 = *(&v72 + 1);
    v64 = v68;
    v65 = v69;
    v66 = v70;
    v67 = v71;
    outlined destroy of Font.FontCache.Key(&v64);
    return v43;
  }

  return result;
}

uint64_t Font.Context.hash(into:)(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = v1[1];
  v13 = *(v1 + 8);
  v4 = v1[24];
  v5 = v1[25];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  MEMORY[0x193AC11A0](*v1);
  if (v3 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v3 & 1);
  }

  v14 = v13;
  MEMORY[0x193AC11A0](&v14);
  MEMORY[0x193AC11A0](v4);
  Hasher._combine(_:)(v5);
  (*(*v7 + 120))(a1);
  if (v6 >> 62)
  {
    v12 = __CocoaSet.count.getter();
    MEMORY[0x193AC11A0](v12);
    result = __CocoaSet.count.getter();
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x193AC11A0](*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return result;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x193AC03C0](i, v6);
    }

    else
    {
      v11 = *(v6 + 8 * i + 32);
    }

    (*(*v11 + 104))(a1);
  }

  return result;
}

uint64_t initializeWithCopy for Font.FontCache.Key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  return a1;
}

void type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item()
{
  if (!lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Item)
  {
    type metadata accessor for CTFontRef(255);
    lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key();
    v0 = type metadata accessor for ObjectCache.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Item);
    }
  }
}

uint64_t destroy for Font.FontCache.Key()
{
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DefaultTrackingI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
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
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015DefaultTrackingF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015DefaultTrackingF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultTrackingKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    v15[0] = *&v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *v14;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultTrackingKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultTrackingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultTrackingKey>>);
    }
  }
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        outlined init with take of Any(v23, v37);
      }

      else
      {
        outlined init with copy of Any(v23, v37);
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  a3(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v31 = *(*(v6 + 56) + 16 * v20);
      result = MEMORY[0x193AC1170](*(v8 + 40), v21);
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v31;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v6 + 32);
      if (v29 >= 64)
      {
        bzero((v6 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v6 + 16) = 0;
    }

    v4 = v30;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  a3(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x193AC1170](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  a3(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = a2;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 4 * v20);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_31;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v3;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_31:
  *v4 = v8;
  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021DefaultBaselineOffsetI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
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
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    v15[0] = *&v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *v14;
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v7);
  v8 = a5(a1);
  if (v8)
  {
    return *(v8 + 72);
  }

  else
  {
    return 0.0;
  }
}

uint64_t Text.ResolvedProperties.addCustomStyle(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v88 = *a1;
  v89 = v4;
  v5 = a1[5];
  *v92 = a1[4];
  *&v92[16] = v5;
  v93 = a1[6];
  v94 = *(a1 + 14);
  v6 = a1[3];
  v90 = a1[2];
  v91 = v6;
  if (BYTE5(v5))
  {
    goto LABEL_19;
  }

  _D9 = v88;
  v8 = *(&v88 + 2);
  v9 = v89;
  if (BYTE8(v93) == 255)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v10 = static GraphicsBlendMode.normal;
    v11 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  }

  else
  {
    v10 = v93;
    v11 = BYTE8(v93);
  }

  outlined copy of GraphicsBlendMode?(v93, SBYTE8(v93));
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v12 = static GraphicsBlendMode.normal;
  v13 = byte_1ED52F818;
  if ((v11 & 1) == 0)
  {
    if ((byte_1ED52F818 & 1) == 0)
    {
      outlined consume of GraphicsBlendMode(v10, 0);
      result = outlined consume of GraphicsBlendMode(v12, 0);
      if (v10 != v12)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_18:
    outlined copy of GraphicsBlendMode(v12, v13);
    outlined consume of GraphicsBlendMode(v10, v11 & 1);
    outlined consume of GraphicsBlendMode(v12, v13);
    outlined consume of GraphicsBlendMode(v10, v11 & 1);
    goto LABEL_19;
  }

  if (!byte_1ED52F818)
  {
    swift_unknownObjectRetain();
    goto LABEL_18;
  }

  swift_unknownObjectRetain();
  outlined consume of GraphicsBlendMode(v10, 1);
  result = outlined consume of GraphicsBlendMode(v12, 1);
  if (v10 != v12)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (!*(v94 + 16))
  {
    v15 = *(&v88 + 3) * *&v92[24];
    goto LABEL_91;
  }

LABEL_19:
  v16 = *(v2 + 5);
  v17 = *(v16 + 16);
  if (v17)
  {
    v65 = v2;
    v18 = 0;
    v2 = v84;
    v19 = &v71;
    v20 = v16 + 32;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_95;
      }

      v21 = (v20 + 120 * v18);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[3];
      v80[2] = v21[2];
      v80[3] = v24;
      v80[0] = v22;
      v80[1] = v23;
      v25 = v21[4];
      v26 = v21[5];
      v27 = v21[6];
      v83 = *(v21 + 14);
      v81 = v26;
      v82 = v27;
      v80[4] = v25;
      v78 = v21[2];
      *v79 = v21[3];
      *&v79[16] = v21[4];
      *&v79[30] = *(v21 + 78);
      v76 = *v21;
      v77 = v21[1];
      v73 = v90;
      v74 = v91;
      v75[0] = *v92;
      *(v75 + 14) = *&v92[14];
      v71 = v88;
      v72 = v89;
      outlined init with copy of _ShapeStyle_Pack.Style(v80, &v67);
      outlined init with copy of _ShapeStyle_Pack.Fill(v80, &v67);
      outlined init with copy of _ShapeStyle_Pack.Fill(&v88, &v67);
      v28 = static _ShapeStyle_Pack.Fill.== infix(_:_:)(&v76, &v71);
      v84[2] = v73;
      v84[3] = v74;
      v85[0] = v75[0];
      *(v85 + 14) = *(v75 + 14);
      v84[0] = v71;
      v84[1] = v72;
      outlined destroy of _ShapeStyle_Pack.Fill(v84);
      v86[2] = v78;
      v86[3] = *v79;
      v87[0] = *&v79[16];
      *(v87 + 14) = *&v79[30];
      v86[0] = v76;
      v86[1] = v77;
      outlined destroy of _ShapeStyle_Pack.Fill(v86);
      if ((v28 & 1) != 0 && *(&v81 + 2) == *&v92[24])
      {
        v29 = v82;
        v30 = BYTE8(v82);
        v31 = v93;
        v32 = BYTE8(v93);
        if (BYTE8(v82) == 255)
        {
          if (BYTE8(v93) != 255)
          {
LABEL_33:
            outlined copy of GraphicsBlendMode?(v82, SBYTE8(v82));
            outlined copy of GraphicsBlendMode?(v31, v32);
            outlined consume of GraphicsBlendMode?(v29, v30);
            v33 = v31;
            v34 = v32;
LABEL_75:
            outlined consume of GraphicsBlendMode?(v33, v34);
LABEL_76:
            outlined destroy of _ShapeStyle_Pack.Style(v80);
LABEL_77:
            v20 = v16 + 32;
            goto LABEL_22;
          }

          outlined copy of GraphicsBlendMode?(v82, 255);
          outlined copy of GraphicsBlendMode?(v31, 255);
          outlined consume of GraphicsBlendMode?(v29, 255);
        }

        else
        {
          if (BYTE8(v93) == 255)
          {
            goto LABEL_33;
          }

          if (BYTE8(v82))
          {
            if ((BYTE8(v93) & 1) == 0)
            {
              outlined copy of GraphicsBlendMode(v82, 1);
LABEL_74:
              outlined copy of GraphicsBlendMode?(v29, v30);
              outlined copy of GraphicsBlendMode?(v31, v32);
              outlined consume of GraphicsBlendMode(v29, v30 & 1);
              outlined consume of GraphicsBlendMode(v31, v32 & 1);
              v33 = v29;
              v34 = v30;
              goto LABEL_75;
            }

            outlined copy of GraphicsBlendMode?(v82, SBYTE8(v82));
            outlined copy of GraphicsBlendMode?(v31, v32);
            outlined copy of GraphicsBlendMode?(v29, v30);
            outlined consume of GraphicsBlendMode(v29, 1);
            outlined consume of GraphicsBlendMode(v31, 1);
            outlined consume of GraphicsBlendMode?(v29, v30);
            if (v29 != v31)
            {
              goto LABEL_76;
            }
          }

          else
          {
            if (BYTE8(v93))
            {
              goto LABEL_74;
            }

            outlined copy of GraphicsBlendMode?(v82, SBYTE8(v82));
            outlined copy of GraphicsBlendMode?(v31, v32);
            outlined consume of GraphicsBlendMode(v29, 0);
            outlined consume of GraphicsBlendMode(v31, 0);
            outlined consume of GraphicsBlendMode?(v29, v30);
            if (v29 != v31)
            {
              goto LABEL_76;
            }
          }
        }

        v35 = *(v83 + 16);
        v20 = v16 + 32;
        if (v35 == *(v94 + 16))
        {
          if (v35 && v83 != v94)
          {
            v66 = a2;
            v36 = (v83 + 32);
            v37 = (v94 + 32);
            v38 = v35 - 1;
            while (1)
            {
              v76 = *v36;
              v39 = v36[1];
              v40 = v36[2];
              v41 = v36[3];
              *&v79[9] = *(v36 + 57);
              v78 = v40;
              *v79 = v41;
              v77 = v39;
              v43 = v37[2];
              v42 = v37[3];
              v44 = v37[1];
              *&v70[9] = *(v37 + 57);
              v69 = v43;
              *v70 = v42;
              v68 = v44;
              v67 = *v37;
              if (v79[5])
              {
                if ((v70[5] & 1) == 0)
                {
                  goto LABEL_72;
                }
              }

              else if ((v70[5] & 1) != 0 || *&v76 != *&v67 || *(&v76 + 1) != *(&v67 + 1) || *(&v76 + 2) != *(&v67 + 2) || *(&v76 + 3) != *(&v67 + 3) || *&v77 != *&v68 || *(&v77 + 1) != *(&v68 + 1) || *&v78 != *&v69 || *(&v78 + 1) != *(&v69 + 1) || *v79 != *v70 || v79[4] != v70[4])
              {
LABEL_72:
                outlined destroy of _ShapeStyle_Pack.Style(v80);
                a2 = v66;
                v2 = v84;
                goto LABEL_22;
              }

              if (*&v79[8] != *&v70[8])
              {
                goto LABEL_72;
              }

              v45 = *&v79[16];
              v46 = v79[24];
              v47 = *&v70[16];
              v48 = v70[24];
              if (v79[24] == 255)
              {
                if (v70[24] != 255)
                {
LABEL_78:
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                  outlined consume of GraphicsBlendMode?(v45, v46);
                  outlined consume of GraphicsBlendMode?(v47, v48);
                  goto LABEL_81;
                }

                v49 = v38;
                outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                outlined consume of GraphicsBlendMode?(v45, 255);
              }

              else
              {
                if (v70[24] == 255)
                {
                  goto LABEL_78;
                }

                if (v79[24])
                {
                  if ((v70[24] & 1) == 0)
                  {
                    swift_unknownObjectRetain();
LABEL_80:
                    outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                    outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                    outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                    outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                    outlined consume of GraphicsBlendMode(v45, v46 & 1);
                    outlined consume of GraphicsBlendMode(v47, (v46 & 1) == 0);
                    outlined consume of GraphicsBlendMode?(v45, v46);
                    outlined destroy of _ShapeStyle_Pack.Effect(&v67);
                    outlined destroy of _ShapeStyle_Pack.Effect(&v76);
LABEL_81:
                    outlined destroy of _ShapeStyle_Pack.Style(v80);
                    a2 = v66;
                    v2 = v84;
                    goto LABEL_77;
                  }

                  v49 = v38;
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                  outlined copy of GraphicsBlendMode?(v45, v46);
                  outlined consume of GraphicsBlendMode(v45, 1);
                  outlined consume of GraphicsBlendMode(v47, 1);
                  _ZF = v45 == v47;
                }

                else
                {
                  if (v70[24])
                  {
                    goto LABEL_80;
                  }

                  v49 = v38;
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v76, &v71);
                  outlined init with copy of _ShapeStyle_Pack.Effect(&v67, &v71);
                  outlined consume of GraphicsBlendMode(v45, 0);
                  outlined consume of GraphicsBlendMode(v47, 0);
                  _ZF = v45 == v47;
                }

                v51 = _ZF;
                outlined consume of GraphicsBlendMode?(v45, v46);
                outlined destroy of _ShapeStyle_Pack.Effect(&v67);
                outlined destroy of _ShapeStyle_Pack.Effect(&v76);
                if ((v51 & 1) == 0)
                {
                  goto LABEL_81;
                }
              }

              if (!v49)
              {
                result = outlined destroy of _ShapeStyle_Pack.Style(v80);
                a2 = v66;
                v8 = vcvts_n_f32_u64(v18, 0xAuLL);
                goto LABEL_90;
              }

              v38 = v49 - 1;
              v37 += 5;
              v36 += 5;
              v20 = v16 + 32;
            }
          }

          result = outlined destroy of _ShapeStyle_Pack.Style(v80);
          v8 = vcvts_n_f32_u64(v18, 0xAuLL);
          goto LABEL_90;
        }
      }

      outlined destroy of _ShapeStyle_Pack.Style(v80);
LABEL_22:
      if (++v18 == v17)
      {
        v19 = *(v16 + 16);
        v2 = v65;
        goto LABEL_84;
      }
    }
  }

  v19 = 0;
LABEL_84:
  outlined init with copy of _ShapeStyle_Pack.Style(&v88, v80);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_95:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 + 1, 1, v16);
    v16 = result;
  }

  v53 = *(v16 + 16);
  v52 = *(v16 + 24);
  if (v53 >= v52 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v16);
    v16 = result;
  }

  *(v16 + 16) = v53 + 1;
  v54 = v16 + 120 * v53;
  v55 = v88;
  v56 = v89;
  v57 = v91;
  *(v54 + 64) = v90;
  *(v54 + 80) = v57;
  *(v54 + 32) = v55;
  *(v54 + 48) = v56;
  v58 = *v92;
  v59 = *&v92[16];
  v60 = v93;
  *(v54 + 144) = v94;
  *(v54 + 112) = v59;
  *(v54 + 128) = v60;
  *(v54 + 96) = v58;
  *(v2 + 5) = v16;
  v61 = *(v2 + 16);
  if ((v61 & 1) == 0)
  {
    *(v2 + 16) = v61 | 1;
  }

  v8 = vcvts_n_f32_u64(v19, 0xAuLL);
LABEL_90:
  __asm { FMOV            V9.2S, #-1.0 }

  v15 = 1.0;
  v9 = 2143289344;
LABEL_91:
  *a2 = _D9;
  *(a2 + 8) = v8;
  *(a2 + 12) = v15;
  *(a2 + 16) = v9;
  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultKerningI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
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
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultKerningF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultKerningKey>, &type metadata for DefaultKerningKey, &protocol witness table for DefaultKerningKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultKerningF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultKerningKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    v15[0] = *&v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *v14;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021DefaultBaselineOffsetV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021DefaultBaselineOffsetV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, Any>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, Any>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultBaselineOffsetKey>>);
    }
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015BodyHeadOutdentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015BodyHeadOutdentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015BodyHeadOutdentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t getEnumTagSinglePayload for AccessibilityTextLayoutProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with copy of TimelineSchedule?(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  type metadata accessor for ScrollStateRequest?(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014TruncationModeV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014TruncationModeV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TruncationModeKey>, &type metadata for TruncationModeKey, &protocol witness table for TruncationModeKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018LineHeightMultipleV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

uint64_t TextLayoutProperties.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3, &v67);

    v66 = v67;

    v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV09LineLimitI033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt1g5(v3);
    v7 = v6;

    if (v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    if (v7)
    {
      v8 = v5;
    }

    v65 = v8;
    v71 = v7 & 1;

    v9 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV014LowerLineLimitI033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt1g5(v3);
    v11 = v10;
  }

  else
  {
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
    if (v12)
    {
      v13 = *(v12 + 72);
    }

    else
    {
      v13 = 3;
    }

    v66 = v13;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV09LineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(v3);
    if (v14)
    {
      v15 = v14[9];
      v16 = *(v14 + 80);
      if (v15 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14[9];
      }

      if (!*(v14 + 80))
      {
        v15 = v17;
      }

      v65 = v15;
    }

    else
    {
      v65 = 0;
      v16 = 1;
    }

    v71 = v16;
    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV014LowerLineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(v3);
    if (!v18)
    {
      v64 = 0;
      v11 = 1;
      goto LABEL_24;
    }

    v9 = v18[9];
    v11 = *(v18 + 80);
  }

  v19 = v9 & ~(v9 >> 63);
  if (v11)
  {
    v19 = v9;
  }

  v64 = v19;
LABEL_24:
  v70 = v11 & 1;
  v67 = v3;
  v68 = v4;
  EnvironmentValues.pixelLength.getter();
  v21 = v20;
  if (v4)
  {

    v22 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018MinimumScaleFactorI0VG_Tt1g5(v3);

    v23 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011LineSpacingI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);

    v24 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018LineHeightMultipleI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);

    v25 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MaximumLineHeightI0VG_Tt1g5(v3);

    v26 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MinimumLineHeightI0VG_Tt1g5(v3);

    v27 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017HyphenationFactorI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);

    v63 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);

    v28 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BodyHeadOutdentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3);

    v67 = v3;
    v68 = v4;
    v62 = EnvironmentValues.multilineTextAlignment.getter();

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v3, &v67);

    v61 = v67;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v67);

    v29 = v67;
    v30 = v68 | (BYTE4(v68) << 32);
    v31 = BYTE5(v68);
    v60 = HIBYTE(v68);
  }

  else
  {
    v32 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(v3);
    if (v32)
    {
      v22 = v32[9];
    }

    else
    {
      v22 = 1.0;
    }

    v33 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    v24 = 0.0;
    v23 = 0.0;
    if (v33)
    {
      v23 = v33[9];
    }

    v34 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    if (v34)
    {
      v24 = v34[9];
    }

    v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(v3);
    v26 = 0.0;
    v25 = 0.0;
    if (v35)
    {
      v25 = v35[9];
    }

    v36 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(v3);
    if (v36)
    {
      v26 = v36[9];
    }

    v37 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    if (v37)
    {
      v27 = v37[9];
    }

    else
    {
      v27 = 0.0;
    }

    v38 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    if (v38)
    {
      v63 = *(v38 + 72);
    }

    else
    {
      v63 = 0;
    }

    v39 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    if (v39)
    {
      v28 = v39[9];
    }

    else
    {
      v28 = 0.0;
    }

    v67 = v3;
    v68 = 0;
    v62 = EnvironmentValues.multilineTextAlignment.getter();
    v40 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v3);
    if (v40)
    {
      v61 = *(v40 + 72);
    }

    else
    {
      v61 = 0;
    }

    v41 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v3);
    if (v41)
    {
      v29 = v41[9];
      v30 = *(v41 + 20) | (*(v41 + 84) << 32);
      v31 = *(v41 + 85);
      v60 = *(v41 + 87);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v29 = static ContentTransition.State.defaultValue;
      v30 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v31 = BYTE13(static ContentTransition.State.defaultValue);
      v60 = HIBYTE(static ContentTransition.State.defaultValue);
    }

    outlined copy of ContentTransition.Storage(v29, v30, v31);
  }

  outlined consume of ContentTransition.Storage(v29, v30, v31);

  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v3, &v67);

    v42 = v67;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSizingI033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt1g5(v3, &v67);

    v43 = v67;
    v44 = v68;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt1g5(v3, &v67);

    v46 = v67;
    v45 = v68;
    v47 = v69;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5(v3, &v67);

    v49 = v67;
  }

  else
  {
    v50 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(v3);
    if (v50)
    {
      v42 = *(v50 + 72);
    }

    else
    {
      v42 = 0;
    }

    v51 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(v3);
    if (v51)
    {
      v52 = (v51 + 9);
      v53 = v51 + 10;
    }

    else
    {
      v52 = &static TextSizingKey.defaultValue;
      v53 = &qword_1ED537550;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v43 = *v52;
    v44 = *v53;

    v54 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(v3);
    if (v54)
    {
      v46 = v54[9];
      v45 = v54[10];
      v47 = v54[11];
    }

    else
    {
      v45 = 0;
      v47 = 0;
      v46 = 2;
    }

    v55 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(v3);
    if (v55)
    {
      v49 = *(v55 + 36);
    }

    else
    {
      v49 = 2;
    }
  }

  v56 = v71;
  v57 = (v49 >> 8) & 1;
  v58 = v70;
  if (v49 == 2)
  {
    LOBYTE(v57) = 0;
  }

  *a2 = v65;
  v59 = v66;
  if (v66 == 3)
  {
    v59 = 1;
  }

  *(a2 + 8) = v56;
  *(a2 + 16) = v64;
  *(a2 + 24) = v58;
  *(a2 + 25) = v59;
  *(a2 + 26) = v62;
  *(a2 + 27) = v61;
  *(a2 + 28) = v60;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v25;
  *(a2 + 64) = v26;
  *(a2 + 72) = v27;
  *(a2 + 80) = v63 & 1;
  *(a2 + 81) = v42;
  *(a2 + 88) = v28;
  *(a2 + 96) = v21;
  *(a2 + 104) = v43;
  *(a2 + 112) = v44;
  *(a2 + 120) = v46;
  *(a2 + 128) = v45;
  *(a2 + 136) = v47;
  *(a2 + 144) = v57;
  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
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
    v27[0] = a1;

    TextLayoutProperties.init(from:)(v27, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>, lazy protocol witness table accessor for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key);
  v8 = v7;
  v9 = *(v5 + 40);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v29);
    outlined init with take of AnyTrackedValue(v29, v30);
    v12 = v31;
    v13 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v13 + 8))(&type metadata for TextLayoutProperties, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v27[0] = a1;

    TextLayoutProperties.init(from:)(v27, a2);
    v14 = *(a2 + 112);
    v27[6] = *(a2 + 96);
    v27[7] = v14;
    v27[8] = *(a2 + 128);
    v28 = *(a2 + 144);
    v15 = *(a2 + 48);
    v27[2] = *(a2 + 32);
    v27[3] = v15;
    v16 = *(a2 + 80);
    v27[4] = *(a2 + 64);
    v27[5] = v16;
    v17 = *(a2 + 16);
    v27[0] = *a2;
    v27[1] = v17;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>>();
    v26[3] = v18;
    v26[4] = &protocol witness table for DerivedValue<A>;
    v19 = swift_allocObject();
    v26[0] = v19;
    v20 = *(a2 + 112);
    *(v19 + 112) = *(a2 + 96);
    *(v19 + 128) = v20;
    *(v19 + 144) = *(a2 + 128);
    *(v19 + 160) = *(a2 + 144);
    v21 = *(a2 + 48);
    *(v19 + 48) = *(a2 + 32);
    *(v19 + 64) = v21;
    v22 = *(a2 + 80);
    *(v19 + 80) = *(a2 + 64);
    *(v19 + 96) = v22;
    v23 = *(a2 + 16);
    *(v19 + 16) = *a2;
    *(v19 + 32) = v23;
    outlined init with copy of TextLayoutProperties(v27, &v25);
    specialized Dictionary.subscript.setter(v26, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t sub_18D0D2094()
{

  return swift_deallocObject();
}

uint64_t outlined destroy of _DisplayList_AnyEffectAnimator?(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  type metadata accessor for ScrollStateRequest?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of TimelineSchedule?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI16TimelineSchedule_pSgWOhTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011LineSpacingV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV014LowerLineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV014LowerLineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV014LowerLineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV014LowerLineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV09LineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV09LineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV09LineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV09LineLimitV033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TruncationModeKey>, &type metadata for TruncationModeKey, &protocol witness table for TruncationModeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014TruncationModeV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for ColorBox<CGColorRef>()
{
  if (!lazy cache variable for type metadata for ColorBox<CGColorRef>)
  {
    type metadata accessor for CGColorRef(255);
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
    v0 = type metadata accessor for ColorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ColorBox<CGColorRef>);
    }
  }
}

uint64_t Color.init(cgColor:)(uint64_t a1)
{
  type metadata accessor for ColorBox<CGColorRef>();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGColorRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CGColorRef(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef);
  *(a1 + 8) = result;
  return result;
}

unint64_t protocol witness for ColorProvider.resolveHDR(in:) in conformance CGColorRef@<X0>(uint64_t a1@<X8>)
{
  result = specialized Color.Resolved.init(failableCGColor:)(*v1);
  if (v5)
  {
    v6 = 0;
    LODWORD(v7) = 0;
    v8 = 0;
    LODWORD(v9) = 0;
    v10 = NAN;
  }

  else
  {
    v6 = result;
    v8 = v4;
    v7 = HIDWORD(result);
    v9 = HIDWORD(v4);
    result = CGColorGetContentHeadroom();
    if (v10 == 0.0)
    {
      v10 = NAN;
    }
  }

  *a1 = v6;
  *(a1 + 4) = v7;
  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v10;
  return result;
}

unint64_t specialized Color.Resolved.init(failableCGColor:)(void *a1)
{
  v1 = a1;
  v2 = CGColorGetColorSpace(v1);
  v3 = one-time initialization token for srgb;
  v4 = v2;
  v5 = v4;
  if (v3 == -1)
  {
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    swift_once();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  v6 = static Color.Resolved.srgb;

  if (v5 == v6)
  {
LABEL_20:
    v14 = 0;
    goto LABEL_23;
  }

LABEL_4:
  v7 = one-time initialization token for srgbExtended;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  CopyByMatchingToColorSpace = static Color.Resolved.srgbExtended;
  if (v5)
  {

    if (v8 == CopyByMatchingToColorSpace)
    {
      goto LABEL_20;
    }
  }

  v10 = one-time initialization token for displayP3;
  v11 = v8;
  if (v10 == -1)
  {
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    swift_once();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v12 = static Color.Resolved.displayP3;

  if (v11 == v12)
  {
    v14 = 2;
    goto LABEL_23;
  }

LABEL_11:
  v13 = one-time initialization token for srgbLinear;
  v14 = v11;
  if (v13 != -1)
  {
    goto LABEL_96;
  }

  if (v5)
  {
    goto LABEL_13;
  }

LABEL_14:
  v16 = one-time initialization token for srgbExtendedLinear;
  v17 = v14;
  if (v16 == -1)
  {
    if (!v5)
    {
      goto LABEL_17;
    }

LABEL_16:
    v18 = static Color.Resolved.srgbExtendedLinear;

    if (v17 != v18)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v14 = 1;
LABEL_23:
      CopyByMatchingToColorSpace = v1;
      v19 = CGColorRef.components.getter();
      if (!v19)
      {
        goto LABEL_19;
      }

LABEL_24:
      v20 = *(v19 + 16);
      if (!v20)
      {
        break;
      }

      if (v20 == 1)
      {
        goto LABEL_94;
      }

      if (v20 >= 3)
      {
        v21 = *(v19 + 32);
        v22 = *(v19 + 40);
        v23 = *(v19 + 48);

        v24 = v23;
        CGColorGetAlpha(v1);
        if (v14)
        {
          if (v14 == 1)
          {
          }

          else
          {
            if (v21 <= 0.0)
            {
              v27 = -v21;
            }

            else
            {
              v27 = v21;
            }

            if (v27 <= 0.04045)
            {
              v28 = v27 * 0.077399;
            }

            else
            {
              v28 = 1.0;
              if (v27 != 1.0)
              {
                v28 = powf((v27 * 0.94787) + 0.052133, 2.4);
              }
            }

            if (v21 <= 0.0)
            {
              v33 = -v28;
            }

            else
            {
              v33 = v28;
            }

            if (v22 <= 0.0)
            {
              v34 = -v22;
            }

            else
            {
              v34 = v22;
            }

            if (v34 <= 0.04045)
            {
              v35 = v34 * 0.077399;
            }

            else
            {
              v35 = 1.0;
              if (v34 != 1.0)
              {
                v35 = powf((v34 * 0.94787) + 0.052133, 2.4);
              }
            }

            if (v22 <= 0.0)
            {
              v36 = -v35;
            }

            else
            {
              v36 = v35;
            }

            if (v24 <= 0.0)
            {
              v37 = -v24;
            }

            else
            {
              v37 = v23;
            }

            if (v37 <= 0.04045)
            {
            }

            else
            {

              if (v37 != 1.0)
              {
                powf((v37 * 0.94787) + 0.052133, 2.4);
              }
            }

            v21 = (v33 * 1.2249) + (v36 * -0.2247);
            v22 = (v36 * 1.0419) + (v33 * -0.042);
          }
        }

        else
        {
          if (v21 <= 0.0)
          {
            v25 = -v21;
          }

          else
          {
            v25 = v21;
          }

          if (v25 <= 0.04045)
          {
            v26 = v25 * 0.077399;
          }

          else
          {
            v26 = 1.0;
            if (v25 != 1.0)
            {
              v26 = powf((v25 * 0.94787) + 0.052133, 2.4);
            }
          }

          if (v21 <= 0.0)
          {
            v21 = -v26;
          }

          else
          {
            v21 = v26;
          }

          if (v22 <= 0.0)
          {
            v30 = -v22;
          }

          else
          {
            v30 = v22;
          }

          if (v30 <= 0.04045)
          {
            v31 = v30 * 0.077399;
          }

          else
          {
            v31 = 1.0;
            if (v30 != 1.0)
            {
              v31 = powf((v30 * 0.94787) + 0.052133, 2.4);
            }
          }

          if (v22 <= 0.0)
          {
            v22 = -v31;
          }

          else
          {
            v22 = v31;
          }

          if (v24 <= 0.0)
          {
            v32 = -v24;
          }

          else
          {
            v32 = v23;
          }

          if (v32 <= 0.04045)
          {
          }

          else
          {

            if (v32 != 1.0)
            {
              powf((v32 * 0.94787) + 0.052133, 2.4);
            }
          }
        }

        return LODWORD(v21) | (LODWORD(v22) << 32);
      }

LABEL_95:
      __break(1u);
LABEL_96:
      swift_once();
      if (!v5)
      {
        goto LABEL_14;
      }

LABEL_13:
      v15 = static Color.Resolved.srgbLinear;

      if (v14 != v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  swift_once();
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_17:
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(CopyByMatchingToColorSpace, kCGRenderingIntentDefault, v1, 0);

  if (CopyByMatchingToColorSpace)
  {
    v14 = 0;
    v19 = CGColorRef.components.getter();
    if (v19)
    {
      goto LABEL_24;
    }

LABEL_19:
  }

  else
  {
  }

  return 0;
}

double ColorBox.resolveHDR(in:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *a1;
  (*(*(v4 + 184) + 40))(&v7, &v6, *(v4 + 176));
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

double one-time initialization function for white(uint64_t a1)
{
  __asm { FMOV            V0.4S, #1.0 }

  *&result = one-time initialization function for white(_Q0, a1, &static Color.white).n128_u64[0];
  return result;
}

uint64_t Image.init(_:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for LocalizedTextStorage();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 40) = MEMORY[0x1E69E7CC0];
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = a3;
  v8 = a3;

  return specialized Image.init(_:bundle:label:)(a1, a2, a3, v6, 0, 1, v7);
}

uint64_t specialized Image.init(_:bundle:label:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v11 = a3;
  if (!a3)
  {
    v11 = [objc_opt_self() mainBundle];
  }

  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 36) = 1;
  *(result + 40) = v11;
  *(result + 48) = 2;
  *(result + 56) = a4;
  *(result + 64) = a5;
  *(result + 72) = a6 & 1;
  *(result + 80) = a7;
  *(result + 88) = 0;
  return result;
}

void outlined consume of Image.Location?(id a1)
{
  if (a1 != 2)
  {
    outlined consume of Image.Location(a1);
  }
}

void type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ImageProviderBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined consume of AccessibilityImageLabel?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of AccessibilityImageLabel(a1, a2, a3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider()
{
  result = lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider;
  if (!lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider;
  if (!lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.NamedImageProvider and conformance Image.NamedImageProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Image.NamedImageProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019ImageRepresentationV0010_9FE4F19E3L21D6B2A0FD05C040386BBC3LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019ImageRepresentationV0010_9FE4F19E3L21D6B2A0FD05C040386BBC3LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.ImageRepresentationKey)
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

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE024NamedImageRepresentationV0010_9FE4F19E3L21D6B2A0FD05C040386BBC3LLV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE024NamedImageRepresentationV0010_9FE4F19E3L21D6B2A0FD05C040386BBC3LLV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.NamedImageRepresentationKey)
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

uint64_t outlined init with copy of NamedImage.VectorKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined consume of EnvironmentValues?(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t AtomicBuffer.__deallocating_deinit()
{
  AtomicBuffer.deinit();

  return swift_deallocClassInstance();
}

void AtomicBuffer.deinit()
{
  UnsafeMutablePointer.deinitialize(count:)();

  JUMPOUT(0x193AC0470);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ClipEffect<A>@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return static RendererEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable, a6);
}

uint64_t static ViewInputsModifier._makeViewList(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = (*(a6 + 16))(a5, a6);
  if ((v11 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

  v12 = v11;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_6:
      v13 = *(a6 + 8);
      a3();
      LODWORD(v18) = v10;
      return _ViewListOutputs.multiModifier<A>(_:inputs:)(&v18, a2, a5, v13);
    }
  }

  else if (static Semantics.forced < v12)
  {
    goto LABEL_6;
  }

  v15 = a2[1];
  v26[0] = *a2;
  v26[1] = v15;
  v27 = a2[2];
  v25 = *MEMORY[0x1E698D3F8];
  v21 = v26[0];
  v22 = v15;
  v23 = v27;
  *v24 = MEMORY[0x1E69E7CC0];
  *&v24[24] = v25;
  *&v24[28] = v25;
  *&v24[8] = vdupq_n_s32(v25);
  LODWORD(v32[0]) = v10;
  v16 = *(a6 + 24);
  outlined init with copy of _GraphInputs(v26, &v18);
  v16(v32, &v21, a5, a6);
  outlined init with copy of _ViewListInputs(a2, &v18);
  v28 = v21;
  v29 = v22;
  v30 = v23;
  v31[0] = v18;
  v31[1] = v19;
  v31[2] = v20;
  outlined init with copy of _GraphInputs(&v28, v32);
  v17 = outlined destroy of _GraphInputs(v31);
  v18 = v28;
  v19 = v29;
  v20 = v30;
  (a3)(v17, &v18);
  v32[2] = v23;
  v32[3] = *v24;
  v32[4] = *&v24[16];
  v33 = v25;
  v32[0] = v21;
  v32[1] = v22;
  outlined destroy of _ViewInputs(v32);
  return outlined destroy of _ViewListInputs(&v18);
}

uint64_t static RendererEffect.makeRendererEffect(effect:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  v13 = *a1;
  v14 = a2[3];
  v30 = a2[2];
  v31 = v14;
  v32 = a2[4];
  v33 = *(a2 + 20);
  v15 = a2[1];
  v28 = *a2;
  v29 = v15;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v14) & 1) == 0)
  {
    return a3();
  }

  v20 = v13;
  v16 = a2[1];
  v22 = *a2;
  v23 = v16;
  v24 = a2[2];
  v17 = *(a6 + 8);
  v18 = *(v17 + 48);
  outlined init with copy of _GraphInputs(&v28, v21);
  v18(&v20, &v22, a5, v17);
  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  outlined destroy of _GraphInputs(v21);
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return static _RendererEffect._makeRendererEffect(effect:inputs:body:)(&v20, &v22, a3, a4, a5, *(a6 + 16), a7);
}

uint64_t type metadata completion function for _ClipEffect()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static Animatable._makeAnimatable(value:inputs:)(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnimatableAttribute();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20[-v7];
  v9 = *(a2 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  if (*(v12 + 64))
  {
    v13 = (v9 & 1) == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v15 = *(a2 + 24);
    v14 = *(a2 + 28);
    v16 = *(a2 + 16);
    v17 = *(a2 + 8);
    v18 = *a1;
    swift_beginAccess();
    AnimatableAttribute.init(source:phase:time:transaction:environment:)(v18, v15, v17, v14, *(v16 + 16), v8);
    WitnessTable = swift_getWitnessTable();
    _GraphValue.init<A>(_:)(v8, a3, v6, WitnessTable, &v21);
    *a1 = v21;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t static _DefaultForegroundStyleModifier._makeViewInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(a2 + 16);
  swift_beginAccess();
  v13 = *(v12 + 16);
  v18[0] = v11;
  v18[1] = v13;
  v20 = a5(0, a3, a4);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, a7, v19, v20, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  return _GraphInputs.environment.setter(v17);
}

uint64_t instantiation function for generic protocol witness table for _ClipEffect<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static _OverlayModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v17[4] = *(a2 + 64);
  v18 = *(a2 + 80);
  v12 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v12;
  v16[1] = v10;
  type metadata accessor for _OverlayModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _OverlayModifier._makeView(modifier:inputs:body:), a4, v16);
  v13 = v16[0];
  v15[1] = v10;
  _GraphValue.subscript.getter(partial apply for closure #2 in static _OverlayModifier._makeView(modifier:inputs:body:), &type metadata for Alignment, v15);
  return makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(v13, v15[0], v17, a3, 0, a4, a5, a6);
}

uint64_t closure #1 in static _OverlayModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for _OverlayModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #2 in static _OverlayModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for _OverlayModifier();
  v3 = *(v2 + 36);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v7, &type metadata for Alignment, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v87 = a5;
  v93 = a4;
  v97 = a3;
  v92 = a8;
  v129 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v86 = &v80 - v12;
  v98 = a6;
  v103 = a7;
  v90 = type metadata accessor for ShapeStyledDisplayList();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v80 - v13;
  LODWORD(a6) = *a1;
  v14 = *(a2 + 8);
  *&v108 = *a2;
  *(&v108 + 1) = v14;
  v15 = *(a2 + 16);
  v112 = *(a2 + 24);
  v16 = *(a2 + 36);
  v113 = *(a2 + 32);
  v18 = *(a2 + 40);
  v17 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 60);
  v21 = *(a2 + 68);
  v101 = *(a2 + 64);
  v22 = *(a2 + 76);
  v104 = *(a2 + 72);
  v106 = *(a2 + 80);
  v110 = MEMORY[0x1E69E7CC0];
  v23 = *MEMORY[0x1E698D3F8];
  LODWORD(v111) = 0;
  HIDWORD(v111) = v23;
  v107 = v19;
  v24 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v17);
  v100 = v16;
  v102 = a6;
  v91 = v23;
  v99 = v18;
  v96 = v21;
  v105 = v17;
  v95 = v22;
  if (v24)
  {
    v25 = ++lastIdentity;
    if ((v16 & 0x100) != 0)
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v108, &v115);
      result = AGWeakAttributeGetAttribute();
      if (result == v23)
      {
        __break(1u);
        return result;
      }

      v114 = v25;
      v73 = Attribute<A>.subscript.modify();
      _DisplayList_StableIdentityScope.pushIdentity(_:)(&v114);
      v73(&v115, 0);
      v16 = v100;
    }

    v94 = 0;
    v109[0] = v25;
    v26 = v104;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v115 = v108;
    v116 = v15;
    v117 = v112;
    v118 = v113;
    v119 = v16;
    v120 = v99;
    v121 = v17;
    v27 = v107;
    v122 = v107;
    v123 = v20;
    v28 = v101;
    v29 = v96;
    v124 = v101;
    v125 = v96;
    v22 = v95;
    v126 = v26;
    v127 = v95;
    v30 = v15;
    v31 = v106;
    v128 = v106;
    swift_beginAccess();
    v81 = CachedEnvironment.animatedSize(for:)(&v115);
    v115 = v108;
    v116 = v30;
    v117 = v112;
    v118 = v113;
    v119 = v16;
    v120 = v99;
    v121 = v17;
    v122 = v27;
    v123 = v20;
    v32 = v20;
    v124 = v28;
    v125 = v29;
    v33 = v29;
    v126 = v104;
    v127 = v22;
    v128 = v31;
    v34 = CachedEnvironment.animatedPosition(for:)(&v115);
    swift_endAccess();
    v83 = v30;
    v35 = *(v30 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v36 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v108, v115);
    if (v36)
    {
      v37 = *(v36 + 72);
    }

    else
    {
      v37 = 0;
    }

    v39 = v97;
    v40 = v93;
    v41 = v90;
    v42 = v86;
    LOBYTE(v114) = v37;
    (*(v84 + 16))(v86, v87, AssociatedTypeWitness);
    LOWORD(v115) = 0;
    v77 = v98;
    v75 = v42;
    v43 = v88;
    v44 = ShapeStyledDisplayList.init(group:identity:view:styles:size:animatedSize:position:containerPosition:transform:environment:safeAreaInsets:options:data:contentSeed:)(v40, v109, v102, v39, OffsetAttribute2, v81, v34, v33, v88, __SPAIR64__(v35, v32), v22, &v114, v75, &v115);
    MEMORY[0x1EEE9AC00](v44);
    v78 = v41;
    WitnessTable = swift_getWitnessTable();
    _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<DisplayList>, &type metadata for DisplayList, MEMORY[0x1E698D388]);
    v46 = v45;

    v47 = v46;
    v48 = v94;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v43, closure #1 in Attribute.init<A>(_:)partial apply, &v76, v41, MEMORY[0x1E69E73E0], v47, MEMORY[0x1E69E7410], v49);
    v94 = v48;
    (*(v89 + 8))(v43, v41);
    v50 = v115;
    LOBYTE(v115) = 0;
    PreferencesOutputs.subscript.setter(v50, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v38 = v32;
    v15 = v83;
  }

  else
  {
    v94 = 0;
    v38 = v20;
    v33 = v21;
  }

  v51 = v108;
  v115 = v108;
  v116 = v15;
  v117 = v112;
  v52 = v100;
  v118 = v113;
  v119 = v100;
  v53 = v99;
  v120 = v99;
  v121 = v105;
  v122 = v107;
  v123 = v38;
  v54 = v101;
  v124 = v101;
  v125 = v33;
  v55 = v104;
  v126 = v104;
  v127 = v22;
  v128 = v106;
  swift_beginAccess();
  LODWORD(v93) = CachedEnvironment.animatedSize(for:)(&v115);
  v115 = __PAIR128__(*(&v108 + 1), v51);
  v116 = v15;
  v117 = v112;
  v118 = v113;
  v119 = v52;
  v120 = v53;
  v121 = v105;
  v122 = v107;
  v123 = v38;
  v56 = v105;
  v124 = v54;
  v125 = v33;
  v126 = v55;
  v127 = v22;
  v128 = v106;
  CachedEnvironment.animatedPosition(for:)(&v115);
  swift_endAccess();
  v57 = v97;
  v97 = v38;
  v58 = v98;
  v59 = ShapeStyledResponderFilter.init(view:styles:size:position:transform:)(v102, v57);
  v61 = v60;
  v63 = v62;
  v65 = v64;
  *&v115 = v56;
  v66 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
  v67 = *(v56 + 16);
  if (v66 != v67)
  {
    if (v66 >= v67)
    {
      __break(1u);
    }

    if (*(v56 + 16 * v66 + 32) == &type metadata for ViewRespondersKey)
    {
      *&v115 = v59;
      *(&v115 + 1) = v61;
      LODWORD(v116) = v63;
      v117 = v65;
      MEMORY[0x1EEE9AC00](v66);
      v68 = type metadata accessor for ShapeStyledResponderFilter();
      v78 = v68;
      WitnessTable = swift_getWitnessTable();
      _sSay7SwiftUI13ViewResponderCGMaTm_1(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v115, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, &v76, v68, MEMORY[0x1E69E73E0], v69, MEMORY[0x1E69E7410], v70);
      LOBYTE(v115) = 0;
      v66 = PreferencesOutputs.subscript.setter(v114, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    }
  }

  v115 = v108;
  v116 = v15;
  v117 = v112;
  v118 = v113;
  v119 = v100;
  v120 = v53;
  v121 = v56;
  v122 = v107;
  v123 = v97;
  v124 = v101;
  v125 = v96;
  v126 = v104;
  v127 = v95;
  v128 = v106;
  MEMORY[0x1EEE9AC00](v66);
  v76 = v58;
  v77 = v103;
  LODWORD(v78) = v102;
  _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)(&v115, partial apply for implicit closure #1 in static RendererLeafView.makeLeafView(view:inputs:), &v74, v91);

  v72 = v92;
  *v92 = v110;
  v72[1] = v111;
  return result;
}

uint64_t ShapeStyledDisplayList.init(group:identity:view:styles:size:animatedSize:position:containerPosition:transform:environment:safeAreaInsets:options:data:contentSeed:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, int a11, char *a12, uint64_t a13, __int16 *a14)
{
  v15 = *a2;
  v16 = *a12;
  v17 = *a14;
  *a9 = a1;
  *(a9 + 8) = v15;
  *(a9 + 12) = a3;
  *(a9 + 16) = a4;
  *(a9 + 20) = a5;
  *(a9 + 24) = a6;
  *(a9 + 28) = a7;
  *(a9 + 32) = a8;
  *(a9 + 36) = a10;
  *(a9 + 44) = a11;
  *(a9 + 48) = v16;
  v18 = type metadata accessor for ShapeStyledDisplayList();
  v19 = *(v18 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v19, a13, AssociatedTypeWitness);
  *(a9 + *(v18 + 84)) = v17;
  return result;
}

unint64_t ShapeStyledResponderFilter.init(view:styles:size:position:transform:)(unsigned int a1, uint64_t a2)
{
  type metadata accessor for ShapeStyledResponderData();
  type metadata accessor for LeafViewResponder();
  LeafViewResponder.__allocating_init()();
  return a1 | (a2 << 32);
}

char *LeafViewResponder.init()()
{
  ContentResponderHelper.init()(*(*v0 + 248), &v0[*(*v0 + 264)]);
  *(v0 + 3) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v2 = *(v1 + 208);

  swift_beginAccess();
  *(v0 + 3) = v2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t LeafViewResponder.__allocating_init()()
{
  v0 = swift_allocObject();
  LeafViewResponder.init()();
  return v0;
}

_DWORD *storeEnumTagSinglePayload for ShapeStyledResponderData(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

double static _ShapeView._makeView(view:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = a2[3];
  v77 = a2[2];
  v78 = v13;
  v79 = a2[4];
  v80 = *(a2 + 20);
  v14 = a2[1];
  v75 = *a2;
  v76 = v14;
  v15 = v13;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v13) & 1) == 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v15) & 1) == 0)
  {
    *a7 = MEMORY[0x1E69E7CC0];
    v18 = *MEMORY[0x1E698D3F8];
    *(a7 + 8) = 0;
    *(a7 + 12) = v18;
    return result;
  }

  v53 = v12;
  v52 = a7;
  if (a4 == &type metadata for ForegroundStyle)
  {
    (*(a5 + 32))(&v62, a3, a5);
    v70 = v77;
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v68 = v75;
    v69 = v76;
    swift_beginAccess();
    v74 = 1;
    v17 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v68, &v62, 0x100000000);
    swift_endAccess();
  }

  else
  {
    if (*(a4[-1].Description + 8))
    {
      closure #1 in static _ShapeView._makeView(view:inputs:)(1, a3, a4, a5, a6);
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    swift_beginAccess();
    v20 = *(v76 + 16);
    (*(a5 + 32))(&v54, a3, a5);
    v70 = v77;
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v68 = v75;
    v69 = v76;
    _ViewInputs.materialSubstrate.getter(&v56);
    v62 = __PAIR64__(DWORD2(v75), DWORD2(v76));
    LODWORD(v63) = HIDWORD(v76);
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    ShapeStyleResolver.init(style:mode:environment:role:substrate:animationsDisabled:helper:)(OffsetAttribute2, *MEMORY[0x1E698D3F8], v20, &v54, &v56, BYTE4(v77) & 1, &v62, &v57);
    MEMORY[0x1EEE9AC00](v21);
    v22 = type metadata accessor for ShapeStyleResolver();
    v47 = v22;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<_ShapeStyle_Pack>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v57, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_3, &v45, v22, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
    v70 = v59;
    v71 = v60;
    *&v72 = v61;
    v68 = v57;
    v69 = v58;
    (*(*(v22 - 8) + 8))(&v68, v22);
    v17 = v62;
    AGGraphSetFlags();
  }

  v25 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v27 = AssociatedTypeWitness - 8;
  if (*(v28 + 64))
  {
    v49 = v17;
    MEMORY[0x1EEE9AC00](v27);
    v45 = a3;
    v46 = a4;
    v47 = a5;
    WitnessTable = a6;
    LODWORD(v62) = v53;
    *&v68 = a3;
    *(&v68 + 1) = a4;
    *&v69 = a5;
    *(&v69 + 1) = a6;
    v50 = type metadata accessor for _ShapeView();
    type metadata accessor for _GraphValue();
    _GraphValue.subscript.getter(partial apply for closure #2 in static _ShapeView._makeView(view:inputs:), a3, &v54);
    v68 = v75;
    v69 = v76;
    v70 = v77;
    outlined init with copy of _GraphInputs(&v75, &v57);
    v29 = static Animatable.makeAnimatable(value:inputs:)(&v54, &v68, a3, v25);
    v57 = v68;
    v58 = v69;
    v59 = v70;
    outlined destroy of _GraphInputs(&v57);
    v51 = a6;
    closure #3 in static _ShapeView._makeView(view:inputs:)(1, a3, a4, a5, a6);
    *&v68 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v29);
    v30 = type metadata accessor for AnimatedShape();
    v31 = type metadata accessor for AnimatedShape.Init();
    v32 = swift_getWitnessTable();
    _GraphValue.init<A>(_:)(&v68, v30, v31, v32, &v62);
    v33 = v62;
    v70 = v77;
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v68 = v75;
    v69 = v76;
    static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(&v62, &v68, v49, 0, v34, v30, &protocol witness table for AnimatedShape<A>, &v54);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v35 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    v36 = swift_beginAccess();
    v37 = v51;
    if (byte_1ED53C51C == 1)
    {
      v36 = dyld_program_sdk_at_least();
      v38 = v52;
      if ((v36 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v38 = v52;
      if (static Semantics.forced < v35)
      {
LABEL_26:
        v70 = v77;
        v71 = v78;
        v72 = v79;
        v73 = v80;
        v68 = v75;
        v69 = v76;
        MEMORY[0x1EEE9AC00](v36);
        v44[2] = a3;
        v44[3] = a4;
        v45 = a5;
        v46 = v37;
        LODWORD(v47) = v53;
        _ViewOutputs.makeContentPathPreferenceWriter<A>(inputs:contentResponder:kinds:)(&v68, partial apply for implicit closure #2 in static _ShapeView._makeView(view:inputs:), v44, *MEMORY[0x1E698D3F8]);
        *v38 = v54;
        result = v55;
        v38[1] = v55;
        return result;
      }
    }

    v56 = v33;
    v70 = v77;
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v68 = v75;
    v69 = v76;
    v36 = static LeafViewLayout.makeLeafLayout(_:view:inputs:)(&v54, &v56, &v68);
    goto LABEL_26;
  }

  *&v68 = a3;
  *(&v68 + 1) = a4;
  *&v69 = a5;
  *(&v69 + 1) = a6;
  v39 = type metadata accessor for _ShapeView();
  v40 = v53;
  LODWORD(v57) = v53;
  v70 = v77;
  v71 = v78;
  v72 = v79;
  v73 = v80;
  v68 = v75;
  v69 = v76;
  static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(&v57, &v68, v17, 0, v41, v39, &protocol witness table for _ShapeView<A, B>, &v62);
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v42 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (static Semantics.forced >= v42)
  {
LABEL_28:
    LODWORD(v54) = v40;
    v70 = v77;
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v68 = v75;
    v69 = v76;
    static LeafViewLayout.makeLeafLayout(_:view:inputs:)(&v62, &v54, &v68);
  }

LABEL_29:
  v43 = v52;
  *v52 = v62;
  result = v63;
  *(v43 + 1) = v63;
  return result;
}

uint64_t static _RendererEffect._makeRendererEffect(effect:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  v7 = a6;
  v67 = a4;
  v68 = a3;
  v10 = 0;
  v97 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 48);
  v12 = *(a2 + 16);
  v93 = *(a2 + 32);
  v94 = v11;
  v13 = *(a2 + 48);
  v95 = *(a2 + 64);
  v14 = *(a2 + 16);
  v91 = *a2;
  v92 = v14;
  v87 = v93;
  v88 = v13;
  v89 = *(a2 + 64);
  v62 = *a1;
  v96 = *(a2 + 80);
  v90 = *(a2 + 80);
  v85 = v91;
  v86 = v12;
  v15 = a6 + 56;
  v16 = *(a6 + 56);
  outlined init with copy of _ViewInputs(&v91, &v79);
  v63 = v16;
  v64 = v15;
  if ((v16(a5, v7) & 1) != 0 && (v17 = WORD2(v93), (BYTE4(v93) & 0x20) != 0))
  {
    v28 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v94);
    if ((v17 & 0x2000) != 0 || (v28 & 1) == 0)
    {
      v61 = 0;
    }

    else
    {
      v29 = AGMakeUniqueID();
      _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

      v61 = v29;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(&v85, v29);
    }
  }

  else
  {
    v61 = 0;
  }

  v60 = v94;
  v59 = DWORD2(v94);
  v18 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v94);
  if (v18)
  {
    if ((*(v7 + 32))(a5, v7))
    {
      v65 = a5;
      v66 = 0;
      v58 = v7;
      v19 = a7;
      v81 = v93;
      v82 = v94;
      v83 = v95;
      v84 = v96;
      v79 = v91;
      v80 = v92;
      swift_beginAccess();
      v20 = CachedEnvironment.animatedPosition(for:)(&v79);
      swift_endAccess();
      *&v79 = __PAIR64__(HIDWORD(v94), v20);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
      v21 = Attribute.init<A>(body:value:flags:update:)();
      v22 = v87;
      HIDWORD(v88) = v21;
      LODWORD(v87) = v87 | 4;
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      v23 = *(swift_dynamicCastClassUnconditional() + 248);

      LODWORD(v89) = v23;
      DWORD1(v89) = v23;
      v24 = v95;
      v25 = DWORD2(v95);
      if (one-time initialization token for pixelLength != -1)
      {
        swift_once();
      }

      v26 = static CachedEnvironment.ID.pixelLength;
      swift_beginAccess();
      v27 = specialized CachedEnvironment.attribute<A>(id:_:)(v26);
      swift_endAccess();
      *&v79 = __PAIR64__(v25, v24);
      DWORD2(v79) = v27;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
      DWORD2(v89) = Attribute.init<A>(body:value:flags:update:)();
      LODWORD(v87) = v22 | 0x1C;
      a7 = v19;
      v7 = v58;
      a5 = v65;
      v10 = v66;
    }

    else
    {
      v81 = v93;
      v82 = v94;
      v83 = v95;
      v84 = v96;
      v79 = v91;
      v80 = v92;
      swift_beginAccess();
      v30 = CachedEnvironment.animatedPosition(for:)(&v79);
      swift_endAccess();
      DWORD1(v89) = v30;
    }
  }

  v77[2] = v87;
  v77[3] = v88;
  v77[4] = v89;
  v78 = v90;
  v77[0] = v85;
  v77[1] = v86;
  v73 = v87;
  v74 = v88;
  v75 = v89;
  v76 = v90;
  v71 = v85;
  v72 = v86;
  v31 = outlined init with copy of _ViewInputs(v77, &v79);
  v68(v69, v31, &v71);
  v81 = v73;
  v82 = v74;
  v83 = v75;
  v84 = v76;
  v79 = v71;
  v80 = v72;
  outlined destroy of _ViewInputs(&v79);
  if ((v18 & 1) == 0)
  {
    goto LABEL_30;
  }

  v65 = a5;
  v66 = v10;
  v68 = a7;
  v32 = ++lastIdentity;
  v33 = v91;
  v34 = v92;
  LODWORD(v67) = DWORD1(v93);
  LODWORD(v58) = lastIdentity;
  if ((WORD2(v93) & 0x100) == 0)
  {
    v35 = *MEMORY[0x1E698D3F8];
LABEL_16:
    v36 = v7;
    v73 = v93;
    v74 = v94;
    v75 = v95;
    v76 = v96;
    v71 = v91;
    v72 = v92;
    swift_beginAccess();
    v37 = CachedEnvironment.animatedPosition(for:)(&v71);
    v73 = v93;
    v74 = v94;
    v75 = v95;
    v76 = v96;
    v71 = v91;
    v72 = v92;
    v38 = CachedEnvironment.animatedSize(for:)(&v71);
    swift_endAccess();
    v39 = *(v34 + 16);
    v40 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v69[0]);
    if ((v40 & 0x100000000) == 0)
    {
      v35 = v40;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v33, v71);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v43 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v33, v71);
    if (v43)
    {
      v44 = *(v43 + 72);
    }

    else
    {
      v44 = 0;
    }

    *&v71 = __PAIR64__(v62, v58);
    *(&v71 + 1) = __PAIR64__(v38, v37);
    *&v72 = __PAIR64__(DWORD1(v95), HIDWORD(v94));
    *(&v72 + 1) = __PAIR64__(HIDWORD(v95), v39);
    LODWORD(v73) = v35;
    BYTE4(v73) = v42;
    *(&v73 + 1) = __PAIR64__(v44, v61);
    MEMORY[0x1EEE9AC00](v43);
    v45 = v65;
    v56 = type metadata accessor for RendererEffectDisplayList();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<DisplayList>();
    v46 = v36;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v71, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_2, &v55, v56, MEMORY[0x1E69E73E0], v47, MEMORY[0x1E69E7410], v48);
    v49 = v70[0];
    v50 = v63(v45, v46);
    v51 = v67;
    if (v67 & 0x20) != 0 && (v50)
    {
      v52 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v60);
      if (v51 & 0x2000) == 0 && (v52)
      {
        AGGraphGetFlags();
        AGGraphSetFlags();
      }
    }

    LOBYTE(v71) = 0;
    PreferencesOutputs.subscript.setter(v49, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a7 = v68;
LABEL_30:
    v73 = v87;
    v74 = v88;
    v75 = v89;
    v76 = v90;
    v71 = v85;
    v72 = v86;
    result = outlined destroy of _ViewInputs(&v71);
    *a7 = v69[0];
    *(a7 + 1) = v69[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v91, &v71);
  result = AGWeakAttributeGetAttribute();
  v35 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v70[0] = v32;
    v54 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v70);
    v54(&v71, 0);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void type metadata accessor for Attribute<DisplayList>()
{
  if (!lazy cache variable for type metadata for Attribute<DisplayList>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<DisplayList>);
    }
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LeafLayoutComputer<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for LeafLayoutComputer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ShapeStyleResolver<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for ShapeStyleResolver<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for ShapeStyleResolver()
{
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ShapeStyledDisplayList<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for ShapeStyledResponderData()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for LeafViewResponder()
{
  result = type metadata accessor for ContentResponderHelper();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ShapeStyledResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t type metadata completion function for ShapeStyledDisplayList()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ShapeStyledDisplayList<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for ShapeStyleResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void *initializeWithCopy for ShapeStyledDisplayList(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = (v20 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v21 = *v22;
  *(v21 + 4) = *(v22 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 16);
  v26 = v24 + 16;
  v27 = *(v24 + 80);
  v28 = (v27 + 5 + v21) & ~v27;
  v29 = (v27 + 5 + v22) & ~v27;

  v25(v28, v29, AssociatedTypeWitness);
  *((*(v26 + 48) + 1 + v28) & 0xFFFFFFFFFFFFFFFELL) = *((*(v26 + 48) + 1 + v29) & 0xFFFFFFFFFFFFFFFELL);
  return a1;
}

uint64_t destroy for ShapeStyledDisplayList(uint64_t a1)
{
  v1 = a1 + 11;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 8);
  v5 = ((((((((((((((((((((v1 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + *(v3 + 80) + 5) & ~*(v3 + 80);

  return v4(v5, AssociatedTypeWitness);
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015ForegroundStyleV033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015ForegroundStyleV033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA015ForegroundStyleV033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t CachedEnvironment.resolvedShapeStyles(for:role:mode:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v28 = *(a1 + 28);
  v27 = *(a1 + 36);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *a2;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v10))
  {
    v26 = *v4;
    v24 = *MEMORY[0x1E698D3F8];
    v25 = a3;
    if ((a3 & 0x100000000) != 0)
    {
      a3 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      a3 = a3;
    }

    v30 = v7;
    v31 = v8;
    v32 = *(a1 + 12);
    v33 = *(a1 + 20);
    v34 = v9;
    v35 = v28;
    v36 = v27;
    v37 = v11;
    v38 = v10;
    v39 = v12;
    v40 = *(a1 + 60);
    v41 = *(a1 + 76);
    _ViewInputs.materialSubstrate.getter(&v29);
    v14 = v29;
    v15 = *(v4 + 9);
    if (!*(v15 + 16))
    {
      goto LABEL_13;
    }

    v16 = 0x1000000000000;
    if ((v27 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v26 | (v8 << 32), v28 | (v9 << 32), v16 | a3 | (v13 << 32) | (v29 << 40));
    if (v18)
    {
      return *(*(v15 + 56) + 4 * v17);
    }

LABEL_13:
    v30 = __PAIR64__(v8, v26);
    v31 = v28;
    v32 = __PAIR64__(a3, v9);
    LOBYTE(v33) = v13;
    BYTE1(v33) = v14;
    BYTE2(v33) = v27 & 1;
    v19 = ResolvedShapeStyles.makeStyles()();
    if ((v25 & 0x100000000) != 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v4 + 9);
      v23 = 0x1000000000000;
      if ((v27 & 1) == 0)
      {
        v23 = 0;
      }

      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, v26 | (v8 << 32), v28 | (v9 << 32), v24 | (v13 << 32) | (v14 << 40) | v23, isUniquelyReferenced_nonNull_native);
      *(v4 + 9) = v30;
    }

    return v19;
  }

  else
  {
    specialized static GraphHost.currentHost.getter();
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v20 = specialized GraphHost.intern<A>(_:for:id:)(static _ShapeStyle_Pack.defaultValue, &type metadata for _ShapeStyle_Pack, 0);

    return v20;
  }
}

uint64_t ResolvedShapeStyles.makeStyles()()
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 10);
  v5 = *(v0 + 22);
  v6 = *MEMORY[0x1E698D3F8];
  type metadata accessor for PropertyList.Tracker();
  v7 = swift_allocObject();
  _sypSgMaTm_8(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = MEMORY[0x1E69E7CC8];
  *(v8 + 24) = 0;
  *(v8 + 32) = v9;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = 0;
  *(v7 + 16) = v8;
  v13[0] = v6;
  v13[1] = v3;
  v13[2] = v1;
  v14 = v4;
  v15 = v5;
  v16 = v2;
  v17 = *(v0 + 1);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v7;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for ShapeStyleResolver<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, type metadata accessor for ShapeStyleResolver);
  lazy protocol witness table accessor for type ShapeStyleResolver<AnyShapeStyle> and conformance ShapeStyleResolver<A>();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ShapeStyleResolver<AnyShapeStyle>(v13);
  AGGraphSetFlags();
  return v11;
}

unint64_t lazy protocol witness table accessor for type ShapeStyleResolver<AnyShapeStyle> and conformance ShapeStyleResolver<A>()
{
  result = lazy protocol witness table cache variable for type ShapeStyleResolver<AnyShapeStyle> and conformance ShapeStyleResolver<A>;
  if (!lazy protocol witness table cache variable for type ShapeStyleResolver<AnyShapeStyle> and conformance ShapeStyleResolver<A>)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(255, &lazy cache variable for type metadata for ShapeStyleResolver<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, type metadata accessor for ShapeStyleResolver);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeStyleResolver<AnyShapeStyle> and conformance ShapeStyleResolver<A>);
  }

  return result;
}

uint64_t outlined destroy of ShapeStyleResolver<AnyShapeStyle>(uint64_t a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for ShapeStyleResolver<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle, type metadata accessor for ShapeStyleResolver);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for InterpolatedDisplayList()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015ForegroundStyleS033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ForegroundStyleKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ForegroundStyleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ForegroundStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ForegroundStyleKey>, &type metadata for ForegroundStyleKey, &protocol witness table for ForegroundStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ForegroundStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ForegroundStyleKey>>);
    }
  }
}

uint64_t _ZStackLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t result, char a2, uint64_t a3, char a4, int *a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v8 = *(a5 + 1);
  if (*(v8 + 16))
  {
    v10 = result;
    v11 = *a5;
    v12 = *(a5 + 16);
    v13 = *(a5 + 17);
    v28 = *a5;
    v29 = v8;
    v30 = v12;
    v31 = v13;
    v32 = 0;
    v33 = closure #1 in _ZStackLayout.spacing(subviews:cache:);
    v34 = 0;
    swift_bridgeObjectRetain_n();
    result = specialized LazyMapSequence.Iterator.next()();
    v14 = 0.0;
    if (v15)
    {
LABEL_18:

      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      v23 = swift_allocObject();
      *(v23 + 16) = v10;
      *(v23 + 24) = a2 & 1;
      *(v23 + 32) = a3;
      *(v23 + 40) = a4 & 1;
      LOBYTE(v36) = v12;
      v28 = v11;
      v29 = v8;
      v30 = v12;
      v31 = v13;
      v32 = partial apply for closure #2 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:);
      v33 = v22;
      v34 = partial apply for closure #3 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:);
      v35 = v23;

      specialized Sequence.reduce<A>(_:_:)(&v28, a7, a8, -INFINITY, -INFINITY, -INFINITY, -INFINITY);
      return outlined destroy of LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>(&v28, type metadata accessor for LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>);
    }

    v16 = *&result;
    v17 = v32;
    v18 = *(v8 + 16);
    if (v32 == v18)
    {
      v14 = *&result;
      goto LABEL_18;
    }

    v19 = v8 + 32 + 12 * v32;
    v14 = *&result;
    while (1)
    {
      if (v12)
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        v20 = v19;
        if (v17 >= v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v17 >= v18)
        {
          goto LABEL_22;
        }

        v20 = (v8 + 32 + 8 * v17);
      }

      if (v17 >= v18)
      {
        break;
      }

      v17 = (v17 + 1);
      v36 = v11;
      v37 = *v20;
      result = LayoutProxy.layoutPriority.getter();
      if (v16 < v21)
      {
        v14 = v21;
        v16 = v21;
      }

      v18 = *(v8 + 16);
      v19 += 12;
      if (v17 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.reduce<A>(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  *&v35 = a4;
  *(&v35 + 1) = a5;
  v36 = a6;
  v37 = a7;
  v9 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v9;
  v23 = *(a1 + 40);
  v40 = *(a1 + 32);
  v39 = v40;
  v28 = *(&v9 + 1);
  v27 = v38[0];
  v10 = *(&v38[0] + 1);
  v29 = v9;
  v11 = BYTE1(v9);
  outlined init with copy of LazyFilterSequence<LayoutSubviews>(v38, &v33);

  v13 = *(v10 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v11 & 1;
    v16 = v10 + 32;
LABEL_3:
    v26 = v8;
    v17 = (v16 + 8 * v14);
    v18 = 12 * v14 + 40;
    while (1)
    {
      if (v29)
      {
        if (v14 >= v13)
        {
          goto LABEL_19;
        }

        v19 = (v16 + 12 * v14);
        v20 = *(v10 + v18);
      }

      else
      {
        if (v14 >= v13)
        {
          goto LABEL_20;
        }

        v19 = v17;
        v20 = v14;
      }

      if (v14 >= v13)
      {
        break;
      }

      v21 = v14 + 1;
      LODWORD(v33) = v27;
      *(&v33 + 4) = *v19;
      HIDWORD(v33) = v20;
      LOBYTE(v34) = v15;
      result = v28(&v33);
      if (result)
      {
        v30 = v33;
        LOBYTE(v31) = v34;
        v23(&v33, &v30);
        closure #4 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:)(&v35, &v33, a2, a3, &v30);
        v8 = v26;
        if (v26)
        {
        }

        v35 = v30;
        v36 = v31;
        v37 = v32;
        v13 = *(v10 + 16);
        if (v13 - 1 == v14++)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

      v13 = *(v10 + 16);
      ++v17;
      v18 += 12;
      ++v14;
      if (v21 == v13)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_16:
  }

  return result;
}

uint64_t partial apply for closure #3 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(a1 + 2);
  v13 = *a1;
  v14 = v7;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return LayoutProxy.dimensions(in:)(&v9, a2);
}

uint64_t closure #4 in _ZStackLayout.sizeThatFits(proposal:subviews:cache:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, double *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v20 = a1[3];
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  ViewDimensions.subscript.getter(a3);
  v13 = v12;
  result = ViewDimensions.subscript.getter(a4);
  if (v11 == INFINITY)
  {
    v16 = INFINITY;
    if (v10 == INFINITY)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = v11 - v13;
  if (v10 != INFINITY)
  {
LABEL_3:
    v10 = v10 - v15;
  }

LABEL_4:
  if (v8 > v13)
  {
    v17 = v8;
  }

  else
  {
    v17 = v13;
  }

  if (v7 > v15)
  {
    v15 = v7;
  }

  *a5 = v17;
  a5[1] = v15;
  if (v9 > v16)
  {
    v18 = v9;
  }

  else
  {
    v18 = v16;
  }

  v19 = v20;
  if (v20 <= v10)
  {
    v19 = v10;
  }

  a5[2] = v18;
  a5[3] = v19;
  return result;
}

uint64_t type metadata accessor for ImageResolutionContext()
{
  result = type metadata singleton initialization cache for ImageResolutionContext;
  if (!type metadata singleton initialization cache for ImageResolutionContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined consume of AccessibilityImageLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }
}

uint64_t outlined copy of AccessibilityImageLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010ImageScaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010ImageScaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA010ImageScaleV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.FontContextKey and conformance EnvironmentValues.FontContextKey);
  }

  return result;
}

uint64_t Image.NamedImageProvider.vectorInfo(in:from:at:)@<X0>(void *a1@<X0>, void *a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a2;
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v144 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v145 = &v132 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v146 = &v132 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v132 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v132 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v132 - v19;
  v21 = type metadata accessor for NamedImage.VectorKey(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v138 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v132 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v141 = &v132 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v132 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v136 = &v132 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v132 - v33;
  v35 = *a3;
  v36 = *v4;
  v151 = *(v4 + 8);
  v152 = v36;
  v37 = *(v4 + 32);
  v163 = *(v4 + 16);
  v164 = v37;
  v165[0] = *(v4 + 48);
  *(v165 + 9) = *(v4 + 57);
  v39 = *a1;
  v38 = a1[1];
  v150 = a1;
  if (v38)
  {

    v40 = &v161;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(v39, &v161);

    v41 = &v161 + 1;
  }

  else
  {
    v42 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(v39);
    if (v42)
    {
      v40 = (v42 + 9);
      v41 = v42 + 73;
    }

    else
    {
      v40 = &static SymbolVariantsKey.defaultValue;
      v41 = &static SymbolVariantsKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }
  }

  v43 = *v40;
  if ((v43 & 4) != 0)
  {
    v44 = ((v43 & 1) == 0) | v43 & 0xFFFFFFFB;
  }

  else
  {
    v44 = *v40;
  }

  if ((v43 & 4) != 0)
  {
    v45 = 3;
  }

  else
  {
    v45 = *v41;
  }

  v147 = v45;
  v148 = a4;
  v139 = v25;
  v142 = v44;
  if ((v44 & 2) == 0)
  {
LABEL_27:
    LOBYTE(v161) = v44;
    BYTE1(v161) = v45;
    v65._object = v151;
    v65._countAndFlagsBits = v152;
    v66 = SymbolVariants.shapeVariantName(name:)(v65);
    v67 = v44;
    if (v66.value._object)
    {
      v161 = v35;
      v68 = specialized Image.Location.aliasedName(_:)(v66.value._countAndFlagsBits, v66.value._object);
      v70 = v69;

      v157 = v35;
      LOBYTE(v154) = v44;
      BYTE1(v154) = v45;
      v71 = Image.Location.fillVariant(_:name:)(&v154, v68, v70);
      if (v72)
      {
        v73 = v71;
        v74 = v72;

        v68 = v73;
        v70 = v74;
      }

      v154 = v35;
      v75 = v150;
      v58 = *v150;
      v76 = v150[1];
      v157 = *v150;
      v158 = v76;
      v77 = type metadata accessor for ImageResolutionContext();
      outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v75 + *(v77 + 24), v146, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
      outlined copy of Image.Location(v35);
      if (v76)
      {

        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v156);

        v78 = v156;
      }

      else
      {

        v80 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v79);
        if (v80)
        {
          v78 = *(v80 + 72);
        }

        else
        {
          v78 = 6;
        }
      }

      LOBYTE(v156) = v78;
      v93 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

      v94 = v141;
      NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v68, v70, &v154, &v157, v146, v93, v141);
      if (one-time initialization token for sharedCache != -1)
      {
        swift_once();
      }

      NamedImage.Cache.subscript.getter(v94, v149, &v161);
      outlined destroy of NamedImage.BitmapKey(v94, type metadata accessor for NamedImage.VectorKey);

      if (v161)
      {
LABEL_54:
        outlined init with take of NamedImage.VectorInfo(&v161, v159);
        outlined init with take of NamedImage.VectorInfo(v159, &v161);
        a4 = v148;
        if (!v161)
        {
          return outlined init with take of NamedImage.VectorInfo?(&v161, a4, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720], type metadata accessor for NamedImage.VectorInfo?);
        }

LABEL_65:
        if (v76)
        {
          goto LABEL_66;
        }

LABEL_84:
        if (_s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA024ShouldRedactSymbolImagesF0V_Tt1g5(v58))
        {
          goto LABEL_67;
        }

        return outlined init with take of NamedImage.VectorInfo?(&v161, a4, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720], type metadata accessor for NamedImage.VectorInfo?);
      }

      _sypSgWOhTm_9(&v161, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
      v25 = v139;
      v67 = v142;
      LOBYTE(v45) = v147;
    }

    v95 = v25;
    v161 = v35;
    LOBYTE(v157) = v67;
    BYTE1(v157) = v45;
    v159[0]._countAndFlagsBits = v35;
    v96 = specialized Image.Location.aliasedName(_:)(v152, v151);
    v98 = v97;

    v99 = Image.Location.fillVariant(_:name:)(&v157, v96, v98);
    v101 = v100;

    if (v101)
    {
      v154 = v35;
      v102 = v150;
      v58 = *v150;
      v76 = v150[1];
      v157 = *v150;
      v158 = v76;
      v103 = type metadata accessor for ImageResolutionContext();
      outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v102 + *(v103 + 24), v145, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
      outlined copy of Image.Location(v35);
      if (v76)
      {

        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v156);

        v104 = v156;
      }

      else
      {

        v106 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v105);
        if (v106)
        {
          v104 = *(v106 + 72);
        }

        else
        {
          v104 = 6;
        }
      }

      LOBYTE(v156) = v104;
      v107 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

      NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v99, v101, &v154, &v157, v145, v107, v95);
      if (one-time initialization token for sharedCache != -1)
      {
        swift_once();
      }

      NamedImage.Cache.subscript.getter(v95, v149, &v161);
      outlined destroy of NamedImage.BitmapKey(v95, type metadata accessor for NamedImage.VectorKey);

      if (v161)
      {
        goto LABEL_54;
      }

      _sypSgWOhTm_9(&v161, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
    }

    v161 = v35;
    v108 = specialized Image.Location.aliasedName(_:)(v152, v151);
    v110 = v109;
    v159[0]._countAndFlagsBits = v35;
    v111 = v150;
    v58 = *v150;
    v76 = v150[1];
    v161 = *v150;
    v162 = v76;
    v112 = type metadata accessor for ImageResolutionContext();
    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v111 + *(v112 + 24), v144, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
    outlined copy of Image.Location(v35);
    if (v76)
    {

      swift_retain_n();

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v157);

      v113 = v157;
      v114 = v138;
      a4 = v148;
    }

    else
    {

      v116 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v115);
      v114 = v138;
      a4 = v148;
      if (v116)
      {
        v113 = *(v116 + 72);
      }

      else
      {
        v113 = 6;
      }
    }

    LOBYTE(v157) = v113;
    v117 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

    NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v108, v110, &v159[0]._countAndFlagsBits, &v161, v144, v117, v114);
    if (one-time initialization token for sharedCache != -1)
    {
      swift_once();
    }

    NamedImage.Cache.subscript.getter(v114, v149, &v161);
    outlined destroy of NamedImage.BitmapKey(v114, type metadata accessor for NamedImage.VectorKey);

    if (!v161)
    {
      return outlined init with take of NamedImage.VectorInfo?(&v161, a4, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720], type metadata accessor for NamedImage.VectorInfo?);
    }

    goto LABEL_65;
  }

  v161 = 0x6873616C732ELL;
  v162 = 0xE600000000000000;
  v159[0]._countAndFlagsBits = v152;
  v159[0]._object = v151;

  v159[0]._countAndFlagsBits = String.init<A>(_:)();
  v159[0]._object = v46;
  v47 = v147;
  String.append<A>(contentsOf:)();
  countAndFlagsBits = v159[0]._countAndFlagsBits;
  LOBYTE(v161) = v44;
  BYTE1(v161) = v47;
  object = v159[0]._object;
  v49 = SymbolVariants.shapeVariantName(name:)(v159[0]);
  v134 = countAndFlagsBits;
  if (!v49.value._object)
  {
LABEL_35:
    v161 = v35;
    LOBYTE(v154) = v44;
    BYTE1(v154) = v47;
    v157 = v35;
    v81 = specialized Image.Location.aliasedName(_:)(countAndFlagsBits, object);
    v83 = v82;

    v84 = Image.Location.fillVariant(_:name:)(&v154, v81, v83);
    v86 = v85;

    if (v86)
    {
      v133 = v84;
      v87 = v150;
      v58 = *v150;
      v59 = v150[1];
      v154 = *v150;
      v155 = v59;
      v156 = v35;
      v88 = type metadata accessor for ImageResolutionContext();
      v89 = v137;
      outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v87 + *(v88 + 24), v137, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
      outlined copy of Image.Location(v35);
      if (v59)
      {

        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v153);

        v90 = v153;
      }

      else
      {

        v92 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v91);
        if (v92)
        {
          v90 = *(v92 + 72);
        }

        else
        {
          v90 = 6;
        }
      }

      v153 = v90;
      v120 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

      v121 = v136;
      NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v133, v86, &v156, &v154, v89, v120, v136);
      if (one-time initialization token for sharedCache != -1)
      {
        swift_once();
      }

      NamedImage.Cache.subscript.getter(v121, v149, &v157);
      outlined destroy of NamedImage.BitmapKey(v121, type metadata accessor for NamedImage.VectorKey);

      if (v157)
      {
        outlined init with take of NamedImage.VectorInfo(&v157, &v161);
        outlined init with take of NamedImage.VectorInfo(&v161, v159);
        goto LABEL_82;
      }

      _sypSgWOhTm_9(&v157, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
      countAndFlagsBits = v134;
    }

    v161 = v35;
    v122 = specialized Image.Location.aliasedName(_:)(countAndFlagsBits, object);
    v124 = v123;
    v157 = v35;
    v125 = v150;
    v58 = *v150;
    v59 = v150[1];
    v161 = *v150;
    v162 = v59;
    v126 = type metadata accessor for ImageResolutionContext();
    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v125 + *(v126 + 24), v140, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
    outlined copy of Image.Location(v35);
    if (v59)
    {

      swift_retain_n();

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v154);

      v127 = v154;
    }

    else
    {

      v129 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v128);
      if (v129)
      {
        v127 = *(v129 + 72);
      }

      else
      {
        v127 = 6;
      }
    }

    LOBYTE(v154) = v127;
    v130 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

    v131 = v135;
    NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v122, v124, &v157, &v161, v140, v130, v135);
    if (one-time initialization token for sharedCache != -1)
    {
      swift_once();
    }

    NamedImage.Cache.subscript.getter(v131, v149, v159);
    outlined destroy of NamedImage.BitmapKey(v131, type metadata accessor for NamedImage.VectorKey);

LABEL_82:

    if (!v159[0]._countAndFlagsBits)
    {
      goto LABEL_26;
    }

    goto LABEL_83;
  }

  v161 = v35;
  v50 = specialized Image.Location.aliasedName(_:)(v49.value._countAndFlagsBits, v49.value._object);
  v52 = v51;

  v154 = v35;
  LOBYTE(v156) = v44;
  BYTE1(v156) = v47;
  v53 = Image.Location.fillVariant(_:name:)(&v156, v50, v52);
  if (v54)
  {
    v55 = v53;
    v56 = v54;

    v50 = v55;
    v52 = v56;
  }

  v57 = v150;
  v58 = *v150;
  v59 = v150[1];
  v154 = *v150;
  v155 = v59;
  v156 = v35;
  v60 = type metadata accessor for ImageResolutionContext();
  outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v57 + *(v60 + 24), v20, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
  outlined copy of Image.Location(v35);
  if (v59)
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v58, &v153);

    v61 = v153;
  }

  else
  {

    v63 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v62);
    if (v63)
    {
      v61 = *(v63 + 72);
    }

    else
    {
      v61 = 6;
    }
  }

  v153 = v61;
  v64 = ViewGraphHost.Idiom.cuiDeviceClass.getter();

  NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(v50, v52, &v156, &v154, v20, v64, v34);
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  NamedImage.Cache.subscript.getter(v34, v149, &v157);
  outlined destroy of NamedImage.BitmapKey(v34, type metadata accessor for NamedImage.VectorKey);

  countAndFlagsBits = v134;
  if (!v157)
  {
    _sypSgWOhTm_9(&v157, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
    a4 = v148;
    v47 = v147;
    LOBYTE(v44) = v142;
    goto LABEL_35;
  }

  outlined init with take of NamedImage.VectorInfo(&v157, &v161);
  outlined init with take of NamedImage.VectorInfo(&v161, v159);

  a4 = v148;
  if (!v159[0]._countAndFlagsBits)
  {
LABEL_26:
    _sypSgWOhTm_9(v159, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
    v25 = v139;
    LOBYTE(v45) = v147;
    LOBYTE(v44) = v142;
    goto LABEL_27;
  }

LABEL_83:
  outlined init with take of NamedImage.VectorInfo(v159, &v161);
  if (!v59)
  {
    goto LABEL_84;
  }

LABEL_66:

  ShouldRedactSymbolImagesJ0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA024ShouldRedactSymbolImagesJ0VG_Tt1g5(v58);

  if (ShouldRedactSymbolImagesJ0VG_Tt1g5)
  {
LABEL_67:
    v159[0]._countAndFlagsBits = v152;
    v159[0]._object = v151;
    v159[1] = v163;
    v159[2] = v164;
    v160[0] = v165[0];
    *(v160 + 9) = *(v165 + 9);
    Image.NamedImageProvider.placeholderVectorInfo(in:)(v150, a4);
    return _sypSgWOhTm_9(&v161, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720]);
  }

  return outlined init with take of NamedImage.VectorInfo?(&v161, a4, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo, MEMORY[0x1E69E6720], type metadata accessor for NamedImage.VectorInfo?);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014SymbolVariantsI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
        outlined init with take of AnyTrackedValue(v22, v23);
        v12 = v24;
        v13 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (v13[1])(&type metadata for SymbolVariants, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v23);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = (v15 + 9);
          v17 = v15 + 73;
        }

        else
        {
          v16 = &static SymbolVariantsKey.defaultValue;
          v17 = &static SymbolVariantsKey.defaultValue + 1;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }
        }

        v18 = *v16;
        v19 = *v17;
        *a2 = v18;
        a2[1] = v19;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolVariantsKey>>();
        v24 = v20;
        v25 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v23[0]) = v18;
        BYTE1(v23[0]) = v19;
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
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(a1);
  if (v14)
  {
    *a2 = *(v14 + 36);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    *a2 = static SymbolVariantsKey.defaultValue;
  }

LABEL_17:
  os_unfair_lock_unlock((v5 + 16));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014SymbolVariantsS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014SymbolVariantsV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolVariantsKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolVariantsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolVariantsKey>, &type metadata for SymbolVariantsKey, &protocol witness table for SymbolVariantsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolVariantsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SymbolVariantsKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 6;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for InterfaceIdiom, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 6;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>, &type metadata for EnvironmentValues.__Key__interfaceIdiom, &protocol witness table for EnvironmentValues.__Key__interfaceIdiom, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key__interfaceIdiom>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016LegibilityWeightI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
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
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for LegibilityWeight?, &type metadata for LegibilityWeight, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<LegibilityWeightKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<LegibilityWeightKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LegibilityWeightKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LegibilityWeightKey>, &type metadata for LegibilityWeightKey, &protocol witness table for LegibilityWeightKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LegibilityWeightKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<LegibilityWeightKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010ImageScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
        outlined init with take of AnyTrackedValue(v20, v21);
        v12 = v22;
        v13 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        (v13[1])(&type metadata for Image.Scale, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v21);
      }

      else
      {
        v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v16)
        {
          v17 = *(v16 + 72);
        }

        else
        {
          v17 = 1;
        }

        *a2 = v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<ImageScaleKey>>();
        v22 = v18;
        v23 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v21[0]) = v17;
        specialized Dictionary.subscript.setter(v21, v8);
      }

      goto LABEL_14;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  v14 = 1;
  *(v5 + 56) = 1;
  v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v15)
  {
    v14 = *(v15 + 72);
  }

  *a2 = v14;
LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ImageScaleKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ImageScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ImageScaleKey>>);
    }
  }
}

void type metadata accessor for NamedImage.VectorInfo?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, void (*a2)(_BYTE *), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(v8);
  v5 = Hasher._finalize()();

  return a3(a1, v5);
}

uint64_t lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1, void (*a2)(uint64_t))
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

void outlined consume of Image.Location(id a1)
{
  if (a1 >= 2)
  {
  }
}

id outlined copy of Image.Location(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t outlined init with take of NamedImage.VectorInfo?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void destroy for Image.Resolved(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 255)
  {
    outlined consume of GraphicsImage.Contents(*a1, v2);
  }

  v3 = *(a1 + 128);
  if (v3 >> 1 != 0xFFFFFFFF)
  {
    outlined consume of AccessibilityImageLabel(*(a1 + 112), *(a1 + 120), v3);
  }

  swift_unknownObjectRelease();

  v4 = *(a1 + 176);
}

void outlined consume of GraphicsImage.Contents(void *a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    if (a2 != 3 && a2 != 4 && a2 != 5)
    {
      return;
    }

LABEL_8:

    return;
  }

  if (a2 < 2u)
  {

    return;
  }

  if (a2 == 2)
  {
    goto LABEL_8;
  }
}

uint64_t initializeWithCopy for Image.Resolved(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    *a1 = v5;
    *(a1 + 8) = v4;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  v6 = a2[16];
  *(a1 + 107) = *(a2 + 107);
  if (v6 >> 1 == 0xFFFFFFFF)
  {
    v7 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v7;
  }

  else
  {
    v8 = a2[14];
    v9 = a2[15];
    v10 = a2[17];
    outlined copy of AccessibilityImageLabel(v8, v9, v6);
    *(a1 + 112) = v8;
    *(a1 + 120) = v9;
    *(a1 + 128) = v6;
    *(a1 + 136) = v10;
  }

  v11 = a2[19];
  *(a1 + 144) = a2[18];
  *(a1 + 152) = v11;
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 164) = *(a2 + 41);
  *(a1 + 168) = *(a2 + 168);
  v12 = a2[22];
  *(a1 + 176) = v12;
  *(a1 + 184) = *(a2 + 92);
  *(a1 + 186) = *(a2 + 186);
  swift_unknownObjectRetain();

  v13 = v12;
  return a1;
}

uint64_t outlined consume of ContentTransition.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t outlined copy of ContentTransition.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t specialized Font.TextStyle.ctTextStyle.getter()
{
  v1 = *v0;
  if (v1 < 0xB)
  {
    return **(&unk_1E72448C8 + v1);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t _ShapeStyle_Pack.subscript.setter(uint64_t a1, unsigned __int8 *a2, unsigned __int8 a3)
{
  v5 = *(a1 + 48);
  v30[2] = *(a1 + 32);
  v30[3] = v5;
  v31 = *(a1 + 112);
  v6 = *(a1 + 96);
  v30[5] = *(a1 + 80);
  v30[6] = v6;
  v30[4] = *(a1 + 64);
  v7 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v7;
  v8 = *a2;
  v9 = *v3;
  v10 = *(*v3 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = LOBYTE(v9[v11 + 4]);
      v14 = BYTE1(v9[v11 + 4]);
      if (v8 == v13 && v14 == a3)
      {
        break;
      }

      v16 = v14 > a3 && v8 == v13;
      if (v8 < v13 || v16)
      {
        *&v28[70] = *(a1 + 64);
        *&v28[86] = *(a1 + 80);
        *&v28[102] = *(a1 + 96);
        *&v28[6] = *a1;
        *&v28[22] = *(a1 + 16);
        *&v28[38] = *(a1 + 32);
        *&v28[118] = *(a1 + 112);
        *&v28[54] = *(a1 + 48);
        if (v10 >= v12)
        {
          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_21;
      }

      ++v12;
      v11 += 16;
      if (v10 == v12)
      {
        goto LABEL_13;
      }
    }

    v4 = a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v9;
    if (result)
    {
      goto LABEL_15;
    }

LABEL_21:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    v9 = result;
    *v3 = result;
LABEL_15:
    if (v12 >= v9[2])
    {
      __break(1u);
    }

    else
    {
      v18 = &v9[v11];
      v19 = *&v9[v11 + 5];
      v20 = *&v9[v11 + 7];
      v21 = *&v9[v11 + 11];
      v29[2] = *&v9[v11 + 9];
      v29[3] = v21;
      v29[1] = v20;
      v29[0] = v19;
      v22 = *&v9[v11 + 13];
      v23 = *&v9[v11 + 15];
      v24 = *&v9[v11 + 17];
      *&v29[7] = v9[v11 + 19];
      v29[5] = v23;
      v29[6] = v24;
      v29[4] = v22;
      v25 = *(v4 + 80);
      *(v18 + 13) = *(v4 + 64);
      *(v18 + 15) = v25;
      *(v18 + 17) = *(v4 + 96);
      v18[19] = *(v4 + 112);
      v26 = *(v4 + 16);
      *(v18 + 5) = *v4;
      *(v18 + 7) = v26;
      v27 = *(v4 + 48);
      *(v18 + 9) = *(v4 + 32);
      *(v18 + 11) = v27;
      result = outlined destroy of _ShapeStyle_Pack.Style(v29);
      *v3 = v9;
    }
  }

  else
  {
LABEL_13:
    *&v28[70] = *(a1 + 64);
    *&v28[86] = *(a1 + 80);
    *&v28[102] = *(a1 + 96);
    *&v28[6] = *a1;
    *&v28[22] = *(a1 + 16);
    *&v28[38] = *(a1 + 32);
    *&v28[118] = *(a1 + 112);
    v12 = *(*v3 + 16);
    *&v28[54] = *(a1 + 48);
LABEL_18:
    *(&v29[4] + 2) = *&v28[64];
    *(&v29[5] + 2) = *&v28[80];
    *(&v29[6] + 2) = *&v28[96];
    v29[7] = *&v28[110];
    *(v29 + 2) = *v28;
    *(&v29[1] + 2) = *&v28[16];
    *(&v29[2] + 2) = *&v28[32];
    *(&v29[3] + 2) = *&v28[48];
    LOBYTE(v29[0]) = v8;
    BYTE1(v29[0]) = a3;
    specialized Array.replaceSubrange<A>(_:with:)(v12, v12, v29);
    return outlined destroy of _ShapeStyle_Pack.Style(v30);
  }

  return result;
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Style(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v10 = *(a2 + 56);
  v16 = *(a2 + 64);
  v17 = *(a2 + 72);
  v19 = *(a2 + 84);
  v20 = *(a2 + 80);
  v18 = *(a2 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*a2, v5, v6, v7, v8, v9, v11, v10, v16, v17, v20 | (v19 << 32), v18);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v11;
  *(a1 + 56) = v10;
  *(a1 + 64) = v16;
  *(a1 + 72) = v17;
  *(a1 + 84) = v19;
  *(a1 + 80) = v20;
  *(a1 + 85) = v18;
  *(a1 + 88) = *(a2 + 88);
  v12 = *(a2 + 104);
  if (v12 == 255)
  {
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
  }

  else
  {
    v13 = *(a2 + 96);
    v14 = v12 & 1;
    outlined copy of GraphicsBlendMode(v13, v12 & 1);
    *(a1 + 96) = v13;
    *(a1 + 104) = v14;
  }

  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t destroy for _ShapeStyle_Pack.Style(uint64_t a1)
{
  outlined consume of _ShapeStyle_Pack.Fill(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80) | (*(a1 + 84) << 32), *(a1 + 85));
  v2 = *(a1 + 104);
  if (v2 != 255)
  {
    outlined consume of GraphicsBlendMode(*(a1 + 96), v2 & 1);
  }
}

uint64_t outlined init with copy of CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CollectionOfOne<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, RBDisplayListContents)>, type metadata accessor for (Int, RBDisplayListContents), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Int, RBDisplayListContents)();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakBox<LazyLayoutViewCache>>, type metadata accessor for WeakBox<LazyLayoutViewCache>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      type metadata accessor for WeakBox<LazyLayoutViewCache>(0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      type metadata accessor for WeakBox<LazyLayoutViewCache>(0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for WeakBox<LazyLayoutViewCache>(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<Path?>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for Path?, &type metadata for Path, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(StrongHash, DisplayList)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (StrongHash, DisplayList));
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ObjectCache<Font.FontCache.Key, CTFontRef>.Item>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(0, &lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Item, type metadata accessor for CTFontRef, lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork>, type metadata accessor for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Entry>, type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<CGFloat, CGFloat>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<Double>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Range<Int>(0, &lazy cache variable for type metadata for AnimatorState<Double>.Fork, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<Double>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Range<Int>(0, &lazy cache variable for type metadata for CombinedAnimationState<Double>.Entry, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<_AnyAnimatableData>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<_AnyAnimatableData>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>.Entry, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork>, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<KeyedAnimatableArray<Int, _AnyAnimatableData>.Element>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>(0, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element, type metadata accessor for KeyedAnimatableArray.Element);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(views: _ViewList_ID_Views, endOffset: Int)>, type metadata accessor for (views: _ViewList_ID_Views, endOffset: Int), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (views: _ViewList_ID_Views, endOffset: Int)();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ObjectCache<Color.ResolvedHDR, CGColorRef>.Item>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(0, &lazy cache variable for type metadata for ObjectCache<Color.ResolvedHDR, CGColorRef>.Item, type metadata accessor for CGColorRef, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(ContentShapeKinds, ConvertiblePath)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (ContentShapeKinds, ConvertiblePath));
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<Color.ResolvedHDR._Animatable>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<Color.ResolvedHDR._Animatable>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>.Entry, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<CGFloat>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<CGFloat>.Fork, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<CGFloat>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>.Entry, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<ShaderVectorData>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<ShaderVectorData>.Fork, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<ShaderVectorData>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>.Entry, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<[_LazyLayout_Subview]>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(0, &lazy cache variable for type metadata for [_LazyLayout_Subview], &type metadata for _LazyLayout_Subview, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ViewRendererHost>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewRendererHost);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(ContentShapeKinds, AnyShape)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (ContentShapeKinds, AnyShape));
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry>, type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>>, type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(range: _NSRange, attributes: [NSAttributedStringKey : Any])>, type metadata accessor for (range: _NSRange, attributes: [NSAttributedStringKey : Any]), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (range: _NSRange, attributes: [NSAttributedStringKey : Any])();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(ScrapeableContent, Int)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (ScrapeableContent, Int));
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(String, String)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (String, String));
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(name: String, value: String)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (name: String, value: String));
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(SizingPreferences, Transaction?)>, type metadata accessor for (SizingPreferences, Transaction?), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[19 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 152 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (SizingPreferences, Transaction?)();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<ResolvedGradientVector>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>.Entry, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<ResolvedGradientVector>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>.Entry, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Entry, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<ConcentricRectangle.AnimatableData>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 264);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[33 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 264 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>.Entry, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<ConcentricRectangle.AnimatableData>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[37 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 296 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork>, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork>, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[17 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 136 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[17 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 136 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>.Entry, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[21 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 168 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<CombinedAnimationState<Edge.Corner.Style.AnimatableData>.Entry>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for CombinedAnimationState<Edge.Corner.Style.AnimatableData>.Entry, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for CombinedAnimationState.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AnimatorState<Edge.Corner.Style.AnimatableData>.Fork>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimatorState.Fork);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry>, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Entry();
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork>, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork();
    swift_arrayInitWithCopy();
  }

  return v10;
}