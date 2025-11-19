_OWORD *initializeWithTake for ZStack(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

uint64_t ShadowStyle.ignoresFill(_:knockout:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  if (v5 < 0)
  {
    if (a1)
    {
      if (a2)
      {
        v14 = *v3 | 0x18;
LABEL_14:
        outlined copy of ShadowStyle.Storage(*v3, *(v3 + 8));
        v18 = v9;
        v11 = v8;
        v12 = v7;
        v13 = v5;
        goto LABEL_15;
      }

      v16 = v6 | 8;
    }

    else
    {
      v16 = v6 & 0xF7;
    }

    v14 = v16 & 0xEF;
    goto LABEL_14;
  }

  if ((a1 & 1) == 0)
  {
    v15 = v6 & 0xF7;
LABEL_11:
    v18 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v15 & 0xEF;
    goto LABEL_15;
  }

  if ((a2 & 1) == 0)
  {
    v15 = v6 | 8;
    goto LABEL_11;
  }

  v18 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v6 | 0x18;
LABEL_15:
  outlined copy of ShadowStyle.Storage(v6, v5);
  result = outlined consume of ShadowStyle.Storage(v6, v5);
  *a3 = v14;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
  *(a3 + 24) = v11;
  *(a3 + 32) = v18;
  *(a3 + 40) = v10;
  return result;
}

uint64_t static ShadowStyle.drop(color:radius:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a2;
  *(a3 + 8) = a1 | 0x8000000000000000;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = 1056964608;
}

uint64_t outlined consume of ShadowStyle.Storage(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t outlined copy of ShadowStyle.Storage(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

uint64_t ShapeStyle.shadow(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v4, a2, v9);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  (*(v8 + 32))(a4, v11, a2);
  v18 = a4 + *(type metadata accessor for _ShadowShapeStyle() + 36);
  *v18 = v12;
  *(v18 + 8) = v13;
  *(v18 + 16) = v14;
  *(v18 + 24) = v15;
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;
  return outlined copy of ShadowStyle.Storage(v12, v13);
}

uint64_t initializeWithCopy for _ShadowShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  outlined copy of ShadowStyle.Storage(*v8, v10);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  *(v7 + 40) = *(v8 + 40);
  return a1;
}

uint64_t destroy for _ShadowShapeStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = v4[1];

  return outlined consume of ShadowStyle.Storage(v5, v6);
}

void _ShadowShapeStyle._apply(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7 <= 2)
  {
    if (!*(a1 + 24))
    {
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      return;
    }

    if (v7 == 1)
    {
      (*(*(a2 + 24) + 32))(a1, *(a2 + 16));
      v9 = v2 + *(a2 + 36);
      v11 = *v9;
      v10 = *(v9 + 8);
      v54 = *(v9 + 40);
      v51 = v6;
      v52 = v11;
      if (v10 < 0)
      {
        v23 = *(v9 + 24);
        v11 = *(v9 + 32);
        v53 = *(v9 + 16);
        v13 = v23;
        v12 = *&v11;
        v64 = *(a1 + 48);
        v24 = *(*(v10 & 0x7FFFFFFFFFFFFFFFLL) + 120);
        outlined copy of ShadowStyle.Storage(v52, v10);
        v24(&v69, &v64);
        v6 = v51;
        LOBYTE(v11) = v52;
        outlined consume of ShadowStyle.Storage(v52, v10);
        v17 = HIDWORD(v69);
        v14 = v69;
        v18 = v70;
        v16 = v71;
        v15 = v72;
      }

      else
      {
        v12 = 1.5;
        v13 = 0;
        v53 = 1.0;
        v14 = 0;
        v15 = 2143289344;
        v16 = 1051260355;
        v17 = 0;
        v18 = 0;
      }

      if (*(a1 + 40) == 1)
      {
        v25 = *(a1 + 32);

        outlined consume of _ShapeStyle_Shape.Result(v26, 1u);
        *(a1 + 32) = 0;
        *(a1 + 40) = 5;
      }

      else
      {
        v25 = MEMORY[0x1E69E7CC0];
      }

      *&v64 = v25;
      LOBYTE(v55[0]) = v4;
      v27 = _ShapeStyle_Pack.indices(of:)(v55);
      v29 = v28;

      if (v27 == v29)
      {
LABEL_19:
        outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
        *(a1 + 32) = v25;
        *(a1 + 40) = 1;
        return;
      }

      if (v29 < v27)
      {
        goto LABEL_48;
      }

      if (v27 >= v29)
      {
LABEL_49:
        __break(1u);
      }

      else if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_24:
        v30 = v27 << 7;
        v50 = v5;
        v49 = v29;
        while (1)
        {
          if (v27 < 0)
          {
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          if (v27 >= v25[2])
          {
            goto LABEL_47;
          }

          v35 = *(v25 + v30 + 33);
          if (v5 <= v35 && v6 > v35)
          {
            break;
          }

LABEL_26:
          ++v27;
          v30 += 128;
          if (v29 == v27)
          {
            goto LABEL_19;
          }
        }

        v68 = 0;
        if (one-time initialization token for semantic != -1)
        {
          swift_once();
        }

        v37 = static Semantics_v6.semantic;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if (dyld_program_sdk_at_least())
          {
LABEL_39:
            v38 = 0;
            v39 = -1;
            v40 = 1.0;
LABEL_42:
            *&v64 = __PAIR64__(v17, v14);
            *(&v64 + 1) = __PAIR64__(v16, v18);
            LODWORD(v65) = v15;
            *(&v65 + 1) = v53;
            *&v66 = v13;
            *(&v66 + 1) = v12;
            *v67 = v54;
            *&v67[4] = v11;
            *&v67[8] = v40;
            *&v67[16] = v38;
            v67[24] = v39;
            v41 = v25 + v30;
            v42 = *(v25 + v30 + 152);
            outlined init with copy of _ShapeStyle_Pack.Effect(&v64, v55);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v25 + v30 + 152) = v42;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
              *(v41 + 19) = v42;
            }

            v11 = *(v42 + 2);
            v44 = *(v42 + 3);
            if (v11 >= v44 >> 1)
            {
              v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v11 + 1, 1, v42);
              *(v41 + 19) = v42;
            }

            *(v42 + 2) = v11 + 1;
            v31 = &v42[80 * v11];
            *(v31 + 2) = v64;
            v32 = v65;
            v33 = v66;
            v34 = *v67;
            *(v31 + 89) = *&v67[9];
            *(v31 + 4) = v33;
            *(v31 + 5) = v34;
            *(v31 + 3) = v32;
            v55[0] = v14;
            v55[1] = v17;
            v55[2] = v18;
            v55[3] = v16;
            v55[4] = v15;
            v56 = v53;
            v57 = v13;
            v58 = v12;
            v59 = v54;
            LOBYTE(v11) = v52;
            v60 = v52;
            v61 = v40;
            v62 = v38;
            v63 = v39;
            outlined destroy of _ShapeStyle_Pack.Effect(v55);
            v5 = v50;
            v6 = v51;
            v29 = v49;
            goto LABEL_26;
          }
        }

        else if (static Semantics.forced >= v37)
        {
          goto LABEL_39;
        }

        v40 = *(v25 + v30 + 128);
        v38 = *(v25 + v30 + 136);
        v39 = *(v25 + v30 + 144);
        outlined copy of GraphicsBlendMode?(v38, v39);
        outlined consume of GraphicsBlendMode?(0, 255);
        goto LABEL_42;
      }

      v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  if (v7 == 3)
  {
    MEMORY[0x1EEE9AC00](a1);
    v21 = *(v20 + 24);
    v46 = *(v20 + 16);
    v47 = v21;
    v48 = v2;
    type metadata accessor for _ShadowShapeStyle<AnyShapeStyle>();
    ShapeStyle.mapCopiedStyle<A>(in:body:)(a1, partial apply for closure #2 in _ShadowShapeStyle._apply(to:), &v45, v46, v22);
    return;
  }

  if (v7 == 4 || !(v6 | v5 | v4))
  {
LABEL_9:
    v19 = *(*(a2 + 24) + 32);

    v19();
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(v4, v11);
  if (!result)
  {
    goto LABEL_9;
  }

  v8 = *(result + 72);
  if (v3 == 5)
  {
    if (v8 == 5)
    {
      return result;
    }

LABEL_9:
    v10 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ControlSizeKey>>();
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v10);
  }

  if (v8 == 5 || v8 != v3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.controlSize : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011ControlSizeK033_B084178BA9D46D059A1FB75185D1E85CLLVG_Ttg5(v3, *a2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ControlSizeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ControlSizeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ControlSizeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ControlSizeKey>>);
    }
  }
}

uint64_t key path getter for EnvironmentValues.tint : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.tint : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA04TintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA04TintK033_EB037BD7690CB8A700384AACA7B075E4LLVG_Ttg5(v4, *a2);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA04TintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]), result = AGCompareValues(), !result))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TintKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TintKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TintKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TintKey>>);
    }
  }
}

uint64_t HierarchicalShapeStyleModifier._apply(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for OffsetShapeStyle();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  v11 = *(a1 + 56);
  v15[0] = *(a1 + 48);
  v15[1] = v11;

  v12 = ShapeStyle.primaryStyle(in:)(v15, v5, v6);

  if (v12)
  {
    v13 = *(v2 + *(a2 + 36));

    specialized OffsetShapeStyle._apply(to:)(a1, v12, v13);
  }

  else
  {
    ShapeStyle.offset(by:)(*(v2 + *(a2 + 36)), v5, v10);
    OffsetShapeStyle._apply(to:)(a1, v7);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t ShapeStyle.primaryStyle(in:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v16[27] = 0;
  *&v12 = 0;
  v11 = 1uLL;
  BYTE8(v12) = 5;
  *&v13 = 0;
  BYTE8(v13) = 5;
  *&v14 = v6;
  *(&v14 + 1) = v5;
  v15 = 0u;
  memset(v16, 0, 24);
  v16[24] = 1;
  *&v16[25] = 768;
  v7 = *(a3 + 32);

  v7(&v11, a2, a3);
  v8 = v13;
  v9 = BYTE8(v13);
  v17[4] = v15;
  v18[0] = *v16;
  *(v18 + 12) = *&v16[12];
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  outlined copy of _ShapeStyle_Shape.Result(v13, BYTE8(v13));
  outlined destroy of _ShapeStyle_Shape(v17);
  if (v9 != 2)
  {
    outlined consume of _ShapeStyle_Shape.Result(v8, v9);
    return 0;
  }

  return v8;
}

uint64_t specialized OffsetShapeStyle._apply(to:)(uint64_t result, uint64_t a2, Swift::Int a3)
{
  v3 = result;
  v4 = *result;
  v5 = (result + 8);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = *(result + 24);
  if (v8 <= 2)
  {
    if (!*(result + 24))
    {
      if (__OFADD__(a3, v4))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      *result = a3 + v4;
      *v5 = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return (*(*a2 + 80))(result);
    }

    if (v8 == 1)
    {
      v9 = v6 + a3;
      if (!__OFADD__(v6, a3))
      {
        v10 = v7 + a3;
        if (!__OFADD__(v7, a3))
        {
          if (v10 >= v9)
          {
            v27 = *result;
            if (*(result + 40) == 1)
            {
              v12 = *(result + 32);
              v13 = a3;

              outlined consume of _ShapeStyle_Shape.Result(v14, 1u);
              a3 = v13;
              *(v3 + 32) = 0;
              *(v3 + 40) = 5;
            }

            else
            {
              v12 = MEMORY[0x1E69E7CC0];
            }

            v24 = a3;
            _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v27, a3);
            outlined consume of _ShapeStyle_Shape.Result(*(v3 + 32), *(v3 + 40));
            *(v3 + 32) = v12;
            *(v3 + 40) = 1;
            *v3 = v4;
            *(v3 + 8) = v9;
            *(v3 + 16) = v10;
            *(v3 + 24) = 1;
            result = (*(*a2 + 80))(v3);
            v27 = v4;
            if (!__OFSUB__(0, v24))
            {
              if (*(v3 + 40) == 1)
              {
                v25 = *(v3 + 32);

                outlined consume of _ShapeStyle_Shape.Result(v26, 1u);
                *(v3 + 32) = 0;
                *(v3 + 40) = 5;
              }

              else
              {
                v25 = MEMORY[0x1E69E7CC0];
              }

              _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v27, -v24);
              result = outlined consume of _ShapeStyle_Shape.Result(*(v3 + 32), *(v3 + 40));
              *(v3 + 32) = v25;
              v23 = 1;
              goto LABEL_30;
            }

LABEL_38:
            __break(1u);
            return result;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    if (__OFADD__(a3, v4))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *result = a3 + v4;
    *v5 = 0;
    *(result + 16) = 0;
    v15 = 2;
LABEL_19:
    *(result + 24) = v15;
    return (*(*a2 + 80))(result);
  }

  if (v8 != 3)
  {
    if (v8 != 4)
    {
      if (v7 | v6 | v4)
      {
        v20 = *(result + 32);
        v21 = *(result + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v20, v21);
        *(v3 + 32) = a2;
        v23 = 2;
      }

      else
      {
        result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
        *(v3 + 32) = 0;
        v23 = 4;
      }

LABEL_30:
      *(v3 + 40) = v23;
      return result;
    }

    if (__OFADD__(a3, v4))
    {
      goto LABEL_34;
    }

    *result = a3 + v4;
    *v5 = 0;
    *(result + 16) = 0;
    v15 = 4;
    goto LABEL_19;
  }

  v16 = a3;
  result = (*(*a2 + 80))(result);
  if (*(v3 + 40) == 2)
  {
    v17 = *(v3 + 32);
    type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>, &lazy cache variable for type metadata for OffsetShapeStyle<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;

    result = outlined consume of _ShapeStyle_Shape.Result(v19, 2u);
    *(v3 + 32) = v18;
    *(v3 + 40) = 2;
  }

  return result;
}

uint64_t protocol witness for ResolvedPaint.draw(path:style:in:bounds:) in conformance ColorView(double *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(v3 + 16);
  v17 = *v3;
  LODWORD(v18) = v9;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v17);
  v15[8] = v25;
  v15[9] = v26;
  v16 = v27;
  v15[4] = v21;
  v15[5] = v22;
  v15[6] = v23;
  v15[7] = v24;
  v15[0] = v17;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  v13 = v7;
  v14 = v8;
  return GraphicsContext.draw(_:with:style:)(a1, v15, v12, a3);
}

uint64_t DisplayList.ViewUpdater.Platform.updateDrawingViewAsync(_:oldOptions:newOptions:content:sizeChanged:newSize:newState:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, char a5, __int128 *a6, CGFloat width, CGFloat height)
{
  v13 = *a2;
  v14 = *(a2 + 2);
  v15 = a2[2];
  v16 = *(a2 + 12);
  v17 = *(a3 + 4);
  v18 = *(a3 + 8);
  v19 = *(a3 + 12);
  v20 = *a4;
  v21 = *(a4 + 8);
  v22 = *(a4 + 16);
  v23 = *(a4 + 24);
  v24 = *(a4 + 32);
  v25 = *(a4 + 40);
  LODWORD(v83) = *a3;
  WORD2(v83) = v17;
  DWORD2(v83) = v18;
  BYTE12(v83) = v19;
  LODWORD(v72[0]) = v13;
  WORD2(v72[0]) = v14;
  DWORD2(v72[0]) = v15;
  BYTE12(v72[0]) = v16;
  if (!specialized static RasterizationOptions.== infix(_:_:)(&v83, v72))
  {
    return 0;
  }

  v57 = *a1;
  result = [*a1 delegate];
  if (!result)
  {
    return result;
  }

  swift_getObjectType();
  v27 = swift_conformsToProtocol2();
  if (!v27 || ((v55 = v27, v56 = a5, x = 0.0, (*(a1 + 17) & 8) != 0) && (v29 = a6[9], v30 = a6[7], v79 = a6[8], v80 = v29, v31 = a6[9], v81 = a6[10], v32 = a6[5], v33 = a6[3], v75 = a6[4], v76 = v32, v34 = a6[5], v35 = a6[7], v77 = a6[6], v78 = v35, v36 = a6[1], v72[0] = *a6, v72[1] = v36, v37 = a6[3], v39 = *a6, v38 = a6[1], v73 = a6[2], v74 = v37, v67 = v79, v68 = v31, v69 = a6[10], v63 = v75, v64 = v34, v65 = v77, v66 = v30, v59 = v39, v60 = v38, v82 = *(a6 + 22), v70 = *(a6 + 22), v61 = v73, v62 = v33, DisplayList.ViewUpdater.Model.State.clipRect()(&v71), v91 = v67, v92 = v68, v93 = v69, v94 = v70, v87 = v63, v88 = v64, v89 = v65, v90 = v66, v83 = v59, v84 = v60, v85 = v61, v86 = v62, outlined init with copy of DisplayList.ViewUpdater.Model.State(v72, v58), outlined destroy of DisplayList.ViewUpdater.Model.State(&v83), v71.value.style != SwiftUI_RoundedCornerStyle_unknownDefault) ? (width = v71.value.rect.size.width, height = v71.value.rect.size.height, x = v71.value.rect.origin.x, y = v71.value.rect.origin.y) : (y = 0.0), ObjectType = swift_getObjectType(), *&v83 = v20, *(&v83 + 1) = v21, *&v84 = v22, *(&v84 + 1) = v23, *&v85 = v24, BYTE8(v85) = v25, v42 = v21, v43 = *(v55 + 48), outlined copy of PlatformDrawableContent.Storage(v20, v42, v22, v23, v24, v25), v44 = v43(&v83, v56 & 1, v57, ObjectType, v55, x, y, width, height), v46 = v45, outlined consume of PlatformDrawableContent.Storage(v83, *(&v83 + 1), v84, *(&v84 + 1), v85, BYTE8(v85)), !v44))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v47 = *(a1 + 8);
  v48 = swift_allocObject();
  *(v48 + 16) = v44;
  *(v48 + 24) = v46;
  v49 = *(v47 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v47 + 56) = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
    *(v47 + 56) = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    *(v47 + 56) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v49);
  }

  swift_unknownObjectRelease();
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v44);
  v53 = *(v47 + 56);
  *(v53 + 16) = v52 + 1;
  v54 = v53 + 16 * v52;
  *(v54 + 32) = thunk for @callee_guaranteed () -> ()partial apply;
  *(v54 + 40) = v48;
  return 1;
}

__int128 *CanvasSymbols.SymbolSize.value.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    result = AGGraphGetValue();
    v4 = *result;
    v5 = *result;
LABEL_10:
    *a2 = v4;
    a2[1] = v5;
    return result;
  }

  v6 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v8 = *Value;
  v13 = *Value;
  v14 = Value[1];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
    v8 = v13;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  v8 = v13;
  if (IsOwner)
  {
LABEL_9:
    v15 = v8;
    v16 = 0;
    v17 = v14;
    v18 = 0;
    v11 = (*(*v6 + 120))(&v15);
    v12 = v10;

    *&v5 = v13;
    *(&v5 + 1) = v14;
    *&v4 = v11;
    *(&v4 + 1) = v12;
    goto LABEL_10;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined consume of GraphicsBlendMode?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of GraphicsBlendMode(result, a2 & 1);
  }

  return result;
}

uint64_t TintShapeStyle._apply(to:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 56))
  {

    v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(v2);

    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(*(a1 + 48));
  if (!v4 || (v3 = v4[9], , !v3))
  {
LABEL_6:
    type metadata accessor for ColorBox<Color.AccentColorProvider>();
    v3 = swift_allocObject();
  }

LABEL_7:
  (*(*v3 + 80))(a1);
}

void type metadata accessor for ColorBox<Color.AccentColorProvider>()
{
  if (!lazy cache variable for type metadata for ColorBox<Color.AccentColorProvider>)
  {
    lazy protocol witness table accessor for type Color.AccentColorProvider and conformance Color.AccentColorProvider();
    v0 = type metadata accessor for ColorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ColorBox<Color.AccentColorProvider>);
    }
  }
}

uint64_t specialized GraphicsContext.drawLayer(flags:content:)(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v18[14] = a3;
  v9 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  inited = swift_initStackObject();
  *(inited + 32) = xmmword_18DD85500;
  *(inited + 48) = 1065353216;
  *(inited + 56) = 0x7FF8000000000000;
  v11 = *(a2 + 16);
  v12 = *(v11 + 64);
  if (v12 == RBDrawingStateGetDefaultColorSpace())
  {
    *(inited + 16) = v11;
  }

  else
  {
    v17 = RBDrawingStateGetDisplayList();
    v13 = *(a2 + 32);
    v14 = v13;
    v15 = *(a2 + 40);
    if (v13 == 1)
    {
      v14 = *(v11 + 48);
      v15 = *(v11 + 56);
    }

    v18[0] = v14;
    v18[1] = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v13);
    *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v17, v18);
  }

  *(inited + 24) = v9;
  *(inited + 64) = 0;
  if ((a1 & 0x20) != 0)
  {
    *(inited + 48) = *(a2 + 48);
    *(inited + 52) = *(a2 + 52);
  }

  v18[0] = inited;

  if (a4 != 0.0 || a5 != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
  }

  RBDrawingStateDrawDisplayList2();

  RBDrawingStateDrawLayer();
}

void specialized _ColorMatrix.init(colorMultiply:premultiplied:)(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  v12 = -a3;
  if (a3 > 0.0)
  {
    v12 = a3;
  }

  if (v12 <= 0.0031308)
  {
    v13 = v12 * 12.92;
  }

  else
  {
    v13 = 1.0;
    if (v12 != 1.0)
    {
      v13 = (powf(v12, 0.41667) * 1.055) + -0.055;
    }
  }

  v14 = -a4;
  if (a4 > 0.0)
  {
    v14 = a4;
  }

  if (v14 <= 0.0031308)
  {
    v15 = v14 * 12.92;
  }

  else
  {
    v15 = 1.0;
    if (v14 != 1.0)
    {
      v15 = (powf(v14, 0.41667) * 1.055) + -0.055;
    }
  }

  v16 = -a5;
  if (a5 > 0.0)
  {
    v16 = a5;
  }

  if (v16 <= 0.0031308)
  {
    v17 = v16 * 12.92;
  }

  else
  {
    v17 = 1.0;
    if (v16 != 1.0)
    {
      v17 = (powf(v16, 0.41667) * 1.055) + -0.055;
    }
  }

  v18 = -v15;
  if (a4 > 0.0)
  {
    v18 = v15;
  }

  v19 = -v13;
  if (a3 > 0.0)
  {
    v19 = v13;
  }

  if (a5 <= 0.0)
  {
    v17 = -v17;
  }

  if (a1)
  {
    v18 = v18 * a6;
    v19 = v19 * a6;
  }

  *a2 = v19;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = 0;
  *(a2 + 24) = v18;
  *(a2 + 36) = 0;
  *(a2 + 28) = 0;
  *(a2 + 44) = 0;
  v20 = v17 * a6;
  if ((a1 & 1) == 0)
  {
    v20 = v17;
  }

  *(a2 + 48) = v20;
  *(a2 + 60) = 0;
  *(a2 + 52) = 0;
  *(a2 + 68) = 0;
  *(a2 + 72) = a6;
  *(a2 + 76) = 0;
}

uint64_t *specialized RendererEffectDisplayList.value.getter@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D3F8];
  v5 = MEMORY[0x1E69E7CC0];
  if (v2[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v41 = *(Value + 12) << 32;
    v6 = *(Value + 8) | 0x40000000;

    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a1 = v5;
    *(a1 + 8) = 0;
    *(a1 + 12) = 0;
    return result;
  }

  v41 = 0;
  v6 = 0x40000000;
  v7 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v4)
  {
    __break(1u);
  }

  v39 = v6;
  v9 = AGCreateWeakAttribute();
  v10 = v9;
  v36 = HIDWORD(v9);
  v11 = AGCreateWeakAttribute();
  v37 = v8;
  v12 = v11;
  v35 = HIDWORD(v11);
  v13 = AGCreateWeakAttribute();
  v14 = v13;
  v34 = HIDWORD(v13);
  v15 = AGCreateWeakAttribute();
  v16 = v15;
  v40 = a1;
  v17 = HIDWORD(v15);
  v18 = AGCreateWeakAttribute();
  v19 = v18;
  v38 = v7;
  v20 = HIDWORD(v18);
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v23 = HIDWORD(v21);
  _threadGeometryProxyData();
  *&v50 = __PAIR64__(v36, v10);
  *(&v50 + 1) = __PAIR64__(v35, v12);
  *&v51 = __PAIR64__(v34, v14);
  *(&v51 + 1) = __PAIR64__(v17, v16);
  *&v52 = __PAIR64__(v20, v19);
  *(&v52 + 1) = __PAIR64__(v23, v22);
  LODWORD(v53[0]) = v37;
  _setThreadGeometryProxyData();
  AGGraphGetValue();
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = v24[1];
  v27 = AGGraphGetValue();
  v28 = v25 - *v27;
  v29 = v26 - v27[1];
  v30 = AGGraphGetValue();
  v31 = *v2;
  *&v45 = v28;
  *(&v45 + 1) = v29;
  v46 = *v30;
  *&v47[8] = a2;
  *&v47[24] = v38;
  *&v47[32] = v39 | v41;
  *&v47[40] = v31;
  *v47 = v37;
  LOBYTE(v50) = *(v2 + 36);
  DisplayList.Item.canonicalize(options:)(&v50);
  v48[2] = *v47;
  v49[0] = *&v47[16];
  *(v49 + 12) = *&v47[28];
  v48[0] = v45;
  v48[1] = v46;
  v43[2] = *v47;
  v44[0] = *&v47[16];
  *(v44 + 12) = *&v47[28];
  v43[0] = v45;
  v43[1] = v46;
  outlined init with copy of DisplayList.Item(v48, &v50);
  DisplayList.init(_:)(v43, v40);
  v52 = *v47;
  v53[0] = *&v47[16];
  *(v53 + 12) = *&v47[28];
  v50 = v45;
  v51 = v46;
  return outlined destroy of DisplayList.Item(&v50);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI18LocalizedStringKeyV14FormatArgumentV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v13, v10, type metadata accessor for LocalizedStringKey.FormatArgument);
        outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v14, v6, type metadata accessor for LocalizedStringKey.FormatArgument);
        v16 = static LocalizedStringKey.FormatArgument.Storage.== infix(_:_:)(v10, v6);
        outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v6, type metadata accessor for LocalizedStringKey.FormatArgument);
        outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v10, type metadata accessor for LocalizedStringKey.FormatArgument);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t LocalizedTextStorage.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(result + 32);
    v6 = *(result + 40);
    if (*(v0 + 16) == *(result + 16) && *(v0 + 24) == *(result + 24))
    {
      if (v3 != v5)
      {
        return 0;
      }
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = 0;
      if (v8 & 1) == 0 || ((v3 ^ v5))
      {
        return result;
      }
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI18LocalizedStringKeyV14FormatArgumentV_Tt1g5(v4, v6))
    {
      v9 = *(v0 + 56);
      v10 = v2[7];
      if (v9)
      {
        if (!v10)
        {
          goto LABEL_23;
        }

        v11 = *(v0 + 48) == v2[6] && v9 == v10;
        if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_20:
        v12 = *(v0 + 64);
        v13 = v2[8];
        if (!v12)
        {
          v17 = v13;

          if (!v13)
          {
            return 1;
          }

          return 0;
        }

        if (v13)
        {
          type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSBundle);
          v14 = v13;
          v15 = v12;
          v16 = static NSObject.== infix(_:_:)();

          return v16 & 1;
        }

        goto LABEL_23;
      }

      if (!v10)
      {
        goto LABEL_20;
      }
    }

LABEL_23:

    return 0;
  }

  return result;
}

uint64_t specialized _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(int a1, uint64_t a2)
{
  type metadata accessor for BoxVTable<Text.Measurements.Box>(0, &lazy cache variable for type metadata for BoxVTable<IdentityLinkBox>);
  v6 = v5;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(32);
  *result = v6;
  *(result + 8) = 32;
  *(result + 16) = a1;
  v8 = *v2;
  if (!*v2)
  {
    goto LABEL_15;
  }

  if (result - v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result - v8 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v2 + 3);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 3) = v11;
  if (a2 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(result + 12) = *(result + 12) & 0x80000000 | a2;
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t View.symbolVariant(_:)(__int16 *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.symbolVariant(_:), v5, a2);
}

SwiftUI::Time __swiftcall DisplayList.nextUpdate(after:)(SwiftUI::Time after)
{
  v4 = *v1;
  v5 = v3[4];
  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) != 0 && (v6 = *v3, (v7 = *(*v3 + 16)) != 0))
    {
      v8 = v2;
      v9 = 0;
      v10 = (v6 + 32);
      v11 = v7 - 1;
      v12 = INFINITY;
      while (1)
      {
        DisplayList.Item.nextUpdate(after:)(v10[2]);
        after.seconds = v14;
        if (v14 < v12)
        {
          v12 = v14;
        }

        if (v12 == v4 || v11 == v9)
        {
          break;
        }

        ++v9;
        v2 = *(v6 + 16);
        v10 += 10;
        if (v9 >= v2)
        {
          __break(1u);
          goto LABEL_13;
        }
      }

      v4 = v12;
      v2 = v8;
    }

    else
    {
LABEL_13:
      v4 = INFINITY;
    }
  }

  *v2 = v4;
  return after;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011LineSpacingF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, double a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<LineSpacingKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<LineSpacingKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LineSpacingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LineSpacingKey>>);
    }
  }
}

uint64_t FilteredTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v28 = a4;
  v7 = *(a3 + 16);
  v25 = a3;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ApplyTransitionModifier();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v26 = type metadata accessor for _PushPopTransactionModifier();
  v14 = *(v26 - 8);
  v15 = MEMORY[0x1EEE9AC00](v26);
  v17 = &v25 - v16;
  (*(v8 + 16))(v10, v5, v7, v15);
  ApplyTransitionModifier.init(transition:phase:)(v10, a2, v7, v13);
  v18 = (v5 + *(v25 + 36));
  v20 = *v18;
  v19 = v18[1];
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  *(v21 + 32) = a2;
  ViewModifier.transaction(_:)(partial apply for closure #1 in FilteredTransition.body(content:phase:), v21, v11, v17);

  (*(v27 + 8))(v13, v11);
  v22 = type metadata accessor for PlaceholderContentView();
  v23 = v26;
  View.modifier<A>(_:)(v17, v22, v26);
  return (*(v14 + 8))(v17, v23);
}

uint64_t sub_18D2C5D24()
{

  return swift_deallocObject();
}

uint64_t ApplyTransitionModifier.init(transition:phase:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ApplyTransitionModifier();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t EnvironmentValues.multilineTextAlignment.setter(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013TextAlignmentF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013TextAlignmentK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v4, *v2);
  }
}

uint64_t specialized AsyncTransaction.append<A>(_:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
  }

  if (v3 > v2[2])
  {
    __break(1u);
    return result;
  }

  v5 = &v2[5 * v3];
  v6 = v5[3];
  __swift_mutable_project_boxed_opaque_existential_1((v5 - 1), v5[2]);
  result = (*(v6 + 16))();
  *(v1 + 16) = v2;
  if ((result & 1) == 0)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    }

    v8 = v2[2];
    v7 = v2[3];
    if (v8 >= v7 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v2);
    }

    v10 = &type metadata for EmptyGraphMutation;
    v11 = &protocol witness table for EmptyGraphMutation;
    v2[2] = v8 + 1;
    result = outlined init with take of AnyTrackedValue(&v9, &v2[5 * v8 + 4]);
    *(v1 + 16) = v2;
  }

  return result;
}

uint64_t Transition.transaction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, v10);
  (*(v9 + 32))(a4, v12, a3);
  v13 = (a4 + *(type metadata accessor for FilteredTransition() + 36));
  *v13 = a1;
  v13[1] = a2;
}

uint64_t static ApplyTransitionModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v9;
  v17[4] = *(a2 + 64);
  v18 = *(a2 + 80);
  v10 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v10;
  v16 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ApplyTransitionModifier.Child();
  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(&v16, AssociatedTypeWitness, v12, WitnessTable, &v15);
  return static Transition.makeView(view:inputs:body:)(&v15, v17, a3, a4, a5);
}

Swift::Void __swiftcall GraphHost.incrementPhase()()
{
  swift_beginAccess();
  AGGraphGetValue();
  v1 = AGGraphSetValue();
  if ((*(*v0 + 192))(v1))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

uint64_t assignWithTake for VStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 40))((*(v5 + 80) + 17 + a1) & ~*(v5 + 80), (*(v5 + 80) + 17 + a2) & ~*(v5 + 80));
  return a1;
}

uint64_t static BoxVTable.reset(elt:)()
{
  v1 = *(v0 + 136);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v0 + 144) + 32))(v1);
}

void type metadata accessor for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage)()
{
  if (!lazy cache variable for type metadata for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage))
  {
    type metadata accessor for LocalizedStringKey.FormatArgument.Storage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage));
    }
  }
}

uint64_t specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:)(uint64_t result)
{
  *(result + 24) = 0;
  return result;
}

{
  ++*(result + 8);
  return result;
}

{
  *(result + 24) = 1;
  return result;
}

uint64_t protocol witness for static RemovableAttribute.willRemove(attribute:) in conformance LazyDisplayListWrapper(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  result = AGGraphGetAttributeInfo();
  *(v9 + 8) = a4;
  v10 = *v9;
  if (*v9)
  {
    swift_beginAccess();
    v11 = *(v10 + 16);
    result = swift_unownedRetainStrong();
    if (v11)
    {
      v12 = *(v11 + 156);
      swift_beginAccess();
      updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(*(v11 + 32));
      swift_endAccess();
      v15[0] = 10;
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v14 + 24) = updated & 1;
      static Update.enqueueAction(reason:_:)(v15, a6, v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in LazyLayoutViewCache.signalPrefetch()(uint64_t a1, char a2)
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    v5 = AGGraphGetAttributeGraph();
    result = AGGraphGetContext();
    if (result)
    {
      v6 = result;

      v7 = _threadTransactionID();
      specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v7, a1, 1, 0);
      if (a2)
      {
      }

      else
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v6 + 208);
          ObjectType = swift_getObjectType();
          (*(v8 + 24))(ObjectType, v8, 0.0);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall _LazyLayoutViewCache.reset()()
{
  v1 = v0;
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 440);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v2 + 40))(v3, v2, v6);
  v9 = *(*v1 + 464);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v9, v8, AssociatedTypeWitness);
  swift_endAccess();
  LazyLayoutViewCache.reset()();
}

Swift::Void __swiftcall LazyLayoutViewCache.reset()()
{
  swift_beginAccess();
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 184) = 1;
  *(v0 + 216) = 0;

  *(v0 + 224) = 0x100000001;
  *(v0 + 341) = 0;
  *(v0 + 343) = 1;
  *(v0 + 312) = 0;
  v1 = *(v0 + 352);
  *(v0 + 344) = 0;
  *(v0 + 352) = 1;
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 156);
    swift_beginAccess();
    updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(*(v0 + 32));
    swift_endAccess();
    v14[0] = 10;
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = updated & 1;
    static Update.enqueueAction(reason:_:)(v14, partial apply for closure #1 in LazyLayoutViewCache.signalPrefetch(), v4);
  }

  swift_beginAccess();
  v5 = *(v0 + 176);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_11:
    v12 = *(*(v5 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
    *(v12 + 184) = 0;
    *(v12 + 216) = 0;
    v8 &= v8 - 1;
    *(v12 + 192) = 0;
    *(v12 + 200) = 0;
    *(v12 + 205) = 0;
    *(v12 + 224) = 1;
    *(v12 + 228) = 0;
    *(v12 + 232) = 0u;
    *(v12 + 248) = 0u;
    *(v12 + 264) = 0u;
    *(v12 + 280) = 0u;
    *(v12 + 296) = 1;
    *(v12 + 384) = 0;
    *(v12 + 387) = 0;

    LazyLayoutViewCache.resetMaxDisplayListSubviews(item:)(v13);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t LazyLayoutViewCache.resetMaxDisplayListSubviews(item:)(uint64_t a1)
{
  v2 = *(a1 + 152);
  v32 = *(a1 + 144);
  v33 = v2;

  _ViewList_ID.Canonical.init(id:)(&v32, v36);
  v3 = v36[0];
  v4 = v36[1];
  swift_beginAccess();
  v5 = *(v1 + 368);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6 + 8);

    swift_endAccess();

    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = v8 + 32;
      do
      {
        _s2os6LoggerVSgWOcTm_1(v11, v38, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, v9, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v15 = *(Strong + 352);
          *(Strong + 344) = 0;
          *(Strong + 352) = 1;
          if ((v15 & 1) == 0)
          {
            v16 = *(Strong + 156);
            v17 = Strong;
            swift_beginAccess();
            v18 = *(v17 + 32);
            BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
            updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v18, v37);
            if (updated)
            {
              v20 = *(updated + 72);
            }

            else
            {
              if (one-time initialization token for v7 != -1)
              {
                swift_once();
              }

              v21 = static Semantics.v7;
              if (one-time initialization token for forced != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              if (byte_1ED53C51C)
              {
                v20 = dyld_program_sdk_at_least();
              }

              else
              {
                v20 = static Semantics.forced >= v21;
              }
            }

            swift_endAccess();
            v22 = swift_allocObject();
            *(v22 + 16) = v16;
            *(v22 + 24) = v20;
            specialized static Update.begin()();
            LOBYTE(v37) = 10;

            Update.Action.init(reason:thunk:)(&v37, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v22, &v32);
            v23 = v32;
            v24 = v33;
            v25 = v34;
            v26 = v35;
            v27 = one-time initialization token for actions;

            if (v27 != -1)
            {
              swift_once();
            }

            v28 = static Update.actions;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
            }

            v30 = *(v28 + 2);
            v29 = *(v28 + 3);
            if (v30 >= v29 >> 1)
            {
              v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
            }

            *(v28 + 2) = v30 + 1;
            v12 = &v28[32 * v30];
            v12[32] = v23;
            *(v12 + 5) = v24;
            *(v12 + 6) = v25;
            *(v12 + 14) = v26;
            static Update.actions = v28;

            static Update.end()();
          }
        }

        _s2os6LoggerVSgWOhTm_1(v38, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, v13, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
        v11 += 8;
        --v10;
      }

      while (v10);
    }
  }

  else
  {

    return swift_endAccess();
  }
}

uint64_t BoldTextModifier.modify(style:environment:)(uint64_t a1)
{
  if (*(v1 + 16) != 1)
  {
    result = specialized MutableCollection._halfStablePartition(isSuffixElement:)((a1 + 8));
    v4 = *(a1 + 8);
    if (v4 >> 62)
    {
      v6 = result;
      v5 = __CocoaSet.count.getter();
      result = v6;
      if (v5 >= v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= result)
      {
LABEL_7:
        specialized Array.replaceSubrange<A>(_:with:)(result, v5);
        type metadata accessor for Text.Style(0);
        return specialized Set._Variant.insert(_:)(&v7, &type metadata for Font.BoldModifier);
      }
    }

    __break(1u);
    return result;
  }

  _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V010MonospacedE0V_Ttt0g5Tm(&type metadata for Font.BoldModifier, &lazy cache variable for type metadata for AnyStaticFontModifier<Font.BoldModifier>, &protocol witness table for Font.BoldModifier);
  MEMORY[0x193ABF170]();
  if (*((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V010MonospacedE0V_Ttt0g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (one-time initialization token for staticModifiers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static AnyFontModifier.staticModifiers;
  if (*(static AnyFontModifier.staticModifiers + 2) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_2(0, a2, a1, a3, type metadata accessor for AnyStaticFontModifier);
    v9 = swift_allocObject();
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = static AnyFontModifier.staticModifiers;
    static AnyFontModifier.staticModifiers = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
    static AnyFontModifier.staticModifiers = v12;
    swift_endAccess();
  }

  return v9;
}

unint64_t _TextRendererViewModifier.MakeTextRenderer.init(renderer:environment:)(unsigned int a1, uint64_t a2)
{
  type metadata accessor for PropertyList.Tracker();
  v4 = swift_allocObject();
  _sypSgMaTm_9(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC8];
  *(v5 + 24) = 0;
  *(v5 + 32) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(v5 + 56) = 0;
  *(v4 + 16) = v5;
  return a1 | (a2 << 32);
}

CGImageRef_optional __swiftcall GraphicsImage.render(at:prefersMask:)(CGSize at, Swift::Bool prefersMask)
{
  result.value = 0;
  v5 = v2[5];
  v54 = v2[4];
  v55[0] = v5;
  *(v55 + 12) = *(v2 + 92);
  v6 = v2[1];
  v50 = *v2;
  v51 = v6;
  v7 = v2[3];
  v52 = v2[2];
  v53 = v7;
  if (at.width > 0.0 && at.height > 0.0)
  {
    result.value = 0;
    v8.value = v50;
    if (BYTE8(v50) > 2u)
    {
      if (BYTE8(v50) - 4 >= 2 && BYTE8(v50) == 3)
      {
        v30 = prefersMask;
        v32 = *(v50 + 16);
        v31 = *(v50 + 24);
        v33 = v2[5];
        v48 = v2[4];
        v49[0] = v33;
        *(v49 + 12) = *(v2 + 92);
        v34 = v2[1];
        v44 = *v2;
        v45 = v34;
        v35 = v2[3];
        v46 = v2[2];
        v47 = v35;
        *&v36 = COERCE_DOUBLE(GraphicsImage.renderedSize(at:)(at.width, at.height));
        if (v38)
        {
          v39 = *&v51;
          v40 = 0.0;
          if (*&v51 == 0.0)
          {
            v41 = 0.0;
          }

          else
          {
            v40 = 1.0 / *&v51 * *(&v51 + 1);
            v41 = 1.0 / *&v51 * *&v52;
          }
        }

        else
        {
          v40 = *&v36;
          v41 = v37;
          v39 = *&v51;
        }

        v42 = *(*v32 + 104);
        outlined init with copy of GraphicsImage(&v50, &v44);

        outlined copy of Image.Location?(v31);

        v43.value = v42(v30, v40, v41, v39);

        outlined consume of Image.Location?(v31);

        outlined destroy of GraphicsImage(&v50);
        return v43;
      }
    }

    else if (BYTE8(v50))
    {
      if (BYTE8(v50) != 1)
      {
        v9 = *(v50 + 16);
        v10 = *(v50 + 32);
        v11 = *(v50 + 48);
        v12 = v2[5];
        v48 = v2[4];
        v49[0] = v12;
        *(v49 + 12) = *(v2 + 92);
        v13 = v2[1];
        v44 = *v2;
        v45 = v13;
        v14 = v2[3];
        v46 = v2[2];
        v47 = v14;
        v15 = GraphicsImage.renderedSize(at:)(at.width, at.height);
        v17 = v16;
        v19 = v18;
        v20 = v51;
        outlined init with copy of GraphicsImage(&v50, &v44);
        v21 = v9;
        outlined copy of Image.Location(v10);
        v22 = v11;
        v23 = [v21 glyph];
        if (v23)
        {
          v24 = v23;
          v25 = v19 & 1;
          if (v25)
          {
            v20 = 0;
            v17 = 0;
            v15 = 0;
          }

          [v21 variableValue];
          LOBYTE(v44) = (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
          if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v28 = 0;
          }

          else
          {
            *&v27 = v26;
            v28 = v27;
          }

          v29 = CUINamedVectorGlyph.image(at:value:)(v15, v17, v20, v25, v28 | (((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) << 32));

          outlined consume of Image.Location(v10);
          outlined destroy of GraphicsImage(&v50);
          return v29;
        }

        else
        {

          outlined consume of Image.Location(v10);
          outlined destroy of GraphicsImage(&v50);
          return 0;
        }
      }
    }

    else
    {
      outlined init with copy of GraphicsImage(&v50, &v44);
      return v8;
    }
  }

  return result;
}

uint64_t GraphicsImage.renderedSize(at:)(double a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 104);
  if (v4 == 2 || (result = 0, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v2 + 72)), vceqzq_f64(*(v2 + 88)))))) & 1) == 0) && (v4 & 1) != 0)
  {
    if (*(v2 + 40) <= 3u)
    {
      v6 = a2;
    }

    else
    {
      v6 = a1;
    }

    if (*(v2 + 40) > 3u)
    {
      a1 = a2;
    }

    v7 = 0.0;
    v8 = 0.0;
    if (v3 != 0.0)
    {
      v9 = 1.0 / v3;
      v7 = *(v2 + 24) * v9;
      v8 = v9 * *(v2 + 32);
    }

    if (a1 == v7 && v6 == v8)
    {
      return 0;
    }

    else
    {
      return *&a1;
    }
  }

  return result;
}

CGImageRef CachedVectorImageContents.image(size:imageScale:prefersMask:)(char a1, double a2, double a3, double a4)
{
  v6 = v4;
  v11 = a1 ^ 1;
  v12 = (*(*v4 + 88))();
  v14 = v13;
  v15 = v13 != a3 || v12 != a2;
  if (!v15)
  {
    swift_beginAccess();
    v4 = v4[2];
    if (v4[2])
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v11 & 1);
      if (v17)
      {
        Image = *(v4[7] + 8 * v16);
        swift_endAccess();
        v19 = Image;
        return Image;
      }
    }

    swift_endAccess();
  }

  v20 = ceil(a2 * a4);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = ceil(a3 * a4);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
LABEL_23:
    v22 = _CGBitmapContextCreate(v4, v5, static CGImageRef.sRGB, 0x2001u);
    if (v22)
    {
      goto LABEL_17;
    }

    return 0;
  }

  v4 = v20;
  v5 = v21;
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for sRGB == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v22 = _CGBitmapContextCreate(v20, v21, 0, 7u);
  if (!v22)
  {
    return 0;
  }

LABEL_17:
  v23 = v5 / a3;
  v24 = v22;
  CGContextScaleCTM(v24, v4 / a2, v23);
  CGContextScaleCTM(v24, a2 / v12, a3 / v14);
  (*(*v6 + 120))(v24);
  Image = CGBitmapContextCreateImage(v24);

  if (Image)
  {
    v25 = v15;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    swift_beginAccess();
    v26 = Image;
    specialized Dictionary.subscript.setter(Image, v11 & 1);
    swift_endAccess();
  }

  return Image;
}

uint64_t specialized Dictionary.Values.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(*(a3 + 56) + 96 * result, a4, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for NamedImage.VectorInfo?);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for NamedImage.WeakOrStrongImageContents(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 9);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v4 = *(a2 + 8);
    if (v4 >= 3)
    {
      v4 = *a2 + 3;
    }

    if (v4 == 2)
    {
      swift_weakCopyInit();
      v5 = 2;
    }

    else if (v4 == 1)
    {
      swift_unknownObjectWeakCopyInit();
      v5 = 1;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      v5 = 0;
    }

    *(a1 + 8) = v5;
    v8 = 1;
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    outlined copy of GraphicsImage.Contents(*a2, v7);
    v8 = 0;
    *a1 = v6;
    *(a1 + 8) = v7;
  }

  *(a1 + 9) = v8;
  return a1;
}

uint64_t initializeWithCopy for NamedImage._BitmapInfo(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v11 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 16) = *(v12 + 16);
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v14;
  v15 = *(v14 + 16);
  *(v13 + 32) = *(v14 + 32);
  *v13 = v16;
  *(v13 + 16) = v15;
  return a1;
}

void destroy for NamedImage.WeakOrStrongImageContents(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2 >= 3)
    {
      v2 = *a1 + 3;
    }

    if (v2 != 2)
    {
      JUMPOUT(0x193AC4950);
    }

    swift_weakDestroy();
  }

  else
  {
    outlined consume of GraphicsImage.Contents(*a1, *(a1 + 8));
  }
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.AssetCatalogConfigurationKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE025AssetCatalogConfigurationE033_F748B30B59970FC73194935C526E3031LLV_Tt1B5(v5, v7) & 1;
}

uint64_t DefaultLayoutViewResponder.deinit()
{
  outlined destroy of weak ViewGraphDelegate?(v0 + 16);
  swift_weakDestroy();

  v1 = *(v0 + 136);
  v4[2] = *(v0 + 120);
  v4[3] = v1;
  v4[4] = *(v0 + 152);
  v5 = *(v0 + 168);
  v2 = *(v0 + 104);
  v4[0] = *(v0 + 88);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v0 + 200));
  return v0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8GradientV4StopV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 40);
  v4 = (a2 + 40);
  while (v2)
  {
    v6 = *(v3 - 1);
    v7 = *v3;
    v8 = *v4;
    if (v6 != *(v4 - 1))
    {
      v9 = *(*v6 + 88);

      if ((v9(v10) & 1) == 0)
      {

        return 0;
      }
    }

    result = v7 == v8;
    v5 = v7 != v8 || v2-- == 1;
    v3 += 2;
    v4 += 2;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void one-time initialization function for sRGB()
{
  v0 = *MEMORY[0x1E695F1C0];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    static CGImageRef.sRGB = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t destroy for ObservedObjectPropertyBox()
{

  return swift_unknownObjectRelease();
}

uint64_t SubscriptionLifetime.deinit()
{
  SubscriptionLifetime.cancel()();
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for SubscriptionLifetime.StateType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

Swift::Void __swiftcall SubscriptionLifetime.cancel()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = type metadata accessor for SubscriptionLifetime.StateType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9 + 40;
  v11 = *(v2 + 104);
  swift_beginAccess();
  (*(v5 + 16))(v10, v1 + v11, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v14 - 48, "to subscriber subscription subscriptionID ");
    v15[0] = v3;
    v15[1] = type metadata accessor for AnyCancellable();
    v15[2] = type metadata accessor for Subscription();
    v16 = MEMORY[0x1E69E6530];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    outlined init with take of AnyTrackedValue(&v10[*(TupleTypeMetadata + 64)], v15);
    (*(*(v3 - 8) + 8))(v10, v3);
    AnyCancellable.cancel()();
    __swift_project_boxed_opaque_existential_1(v15, v16);
    dispatch thunk of Cancellable.cancel()();

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v5 + 40))(v1 + v11, v7, v4);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    (*(v5 + 8))(v10, v4);
  }
}

uint64_t SubscriptionLifetime.__deallocating_deinit()
{
  SubscriptionLifetime.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall AttributeInvalidatingSubscriber.cancel()()
{
  swift_beginAccess();
  v1 = type metadata accessor for AttributeInvalidatingSubscriber.StateType();
  v2 = *(v1 - 8);
  (*(v2 + 16))(&v3, v0 + 32, v1);
  if (v4 > 1)
  {
    outlined init with take of AnyTrackedValue(&v3, &v5);
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(&v5);
  }

  else
  {
    (*(v2 + 8))(&v3, v1);
  }

  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  swift_beginAccess();
  (*(v2 + 40))(v0 + 32, &v5, v1);
  swift_endAccess();
}

uint64_t AttributeInvalidatingSubscriber.__deallocating_deinit()
{
  AttributeInvalidatingSubscriber.deinit();

  return swift_deallocClassInstance();
}

uint64_t AttributeInvalidatingSubscriber.deinit()
{
  swift_weakDestroy();
  v1 = type metadata accessor for AttributeInvalidatingSubscriber.StateType();
  (*(*(v1 - 8) + 8))(v0 + 32, v1);
  return v0;
}

uint64_t HitTestBindingResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t DisplayList.ViewUpdater.__deallocating_deinit()
{
  outlined destroy of weak GestureGraphDelegate?(v0 + 24);
  v1 = *(v0 + 88);
  v2 = *(v0 + 120);
  v5[4] = *(v0 + 104);
  v5[5] = v2;
  v6 = *(v0 + 136);
  v3 = *(v0 + 56);
  v5[0] = *(v0 + 40);
  v5[1] = v3;
  v5[2] = *(v0 + 72);
  v5[3] = v1;
  outlined destroy of DisplayList.ViewUpdater.ViewCache(v5);

  return swift_deallocClassInstance();
}

uint64_t destroy for DisplayList.ViewUpdater.ViewCache(uint64_t a1)
{
}

uint64_t ListenerPair.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ForEachState.Item.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

id *ForEachState.Item.deinit()
{
  v1 = *v0;

  (*(*(v1[15] - 8) + 8))(v0 + *(*v0 + 20));
  outlined destroy of _ViewListOutputs.Views(v0 + *(*v0 + 22));
  swift_weakDestroy();
  v2 = *(*v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  return v0;
}

double DisplayList.Index.leave(index:)(uint64_t a1, double result)
{
  v3 = *(v2 + 16);
  if ((v3 & 0xC) != 0)
  {
    result = *v2;
    if ((*(v2 + 16) & 4) != 0)
    {
      *v2 = *(v2 + 8);
    }

    if ((v3 & 8) != 0)
    {
      *(v2 + 8) = result;
    }
  }

  if (v3)
  {
    result = *a1;
    *v2 = *a1;
    v4 = *(a1 + 16);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    if ((v3 & 2) == 0)
    {
LABEL_8:
      *(v2 + 16) = v4;
      return result;
    }
  }

  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 16) = v4;
  return result;
}

uint64_t closure #1 in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:)(void *a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = 0;
  ObjectType = swift_getObjectType();
  (*(a4 + 16))(&v13, ObjectType, a4);
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
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1346;
    LOBYTE(v15[0]) = 1;
    *&v15[1] = a2;
    type metadata accessor for (Bool, Double)();
    AGGraphAddTraceEvent();
  }

  v10 = (*(a4 + 8))(ObjectType, a4);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(a4 + 24))(v15, a5 & 1, closure #1 in renderOnMainThread #1 () in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:)partial apply, v11);
  result = swift_unknownObjectRelease();
  *a1 = v15[0];
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SpringState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + 7;
  v10 = ((((((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v14 = ~v7;
    v15 = *(v5 + 16);
    v15(a1, a2, v4);
    v17 = (a2 + v8) & v14;
    v15(((v3 + v8) & v14), v17, v4);
    v18 = (v8 + v17) & v14;
    v15(((v8 + ((v3 + v8) & v14)) & v14), v18, v4);
    v19 = ((v9 + ((v8 + ((v3 + v8) & v14)) & v14)) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v9 + v18) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    *((v23 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance _AnyAnimatableData(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*a1 == *a2)
  {
    return (*(v4 + 96))(a1 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v4 == result)
  {
    outlined destroy of _AnyAnimatableData(a1);

    return outlined init with copy of _AnyAnimatableData(a2, a1);
  }

  return result;
}

Swift::Void __swiftcall AnimatableAttributeHelper.reset()()
{
  v2 = v1;
  v3 = v0;
  v4 = v0[12];
  if (*(v1 + v4))
  {
    AnimatorState.removeListeners()();
    v4 = v3[12];
  }

  *(v1 + v4) = 0;
  v5 = v3[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(v2 + v5, v7);
  (*(*(AssociatedTypeWitness - 8) + 56))(v2 + v5, 1, 1, AssociatedTypeWitness);
  *(v2 + v3[13]) = *AGGraphGetValue() >> 1;
}

uint64_t closure #1 in static _TextRendererViewModifier._makeViewInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = a4(0);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

CGContext *GlyphContext.currentContext()()
{
  result = *(v0 + 16);
  if (!result)
  {
    v2 = v0;
    if (*v0 == *(v0 + 8))
    {
      if ((*(v0 + 48) & 6) != 0)
      {
        *v0 = RBDrawingStateInit();
      }
    }

    else
    {
      RBDrawingStateAssign();
    }

    v3 = *(v0 + 48);
    if ((v3 & 2) != 0)
    {
      if (one-time initialization token for suffixNamespace != -1)
      {
        swift_once();
      }

      RBDrawingStateSetIdentifier2();
      if (one-time initialization token for opacity != -1)
      {
        swift_once();
      }

      v4 = ContentTransition.rbTransition.getter();
      RBDrawingStateSetTransition();
    }

    if ((v3 & 4) != 0)
    {
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      v5 = ContentTransition.rbTransition.getter();
      RBDrawingStateSetTransition();
    }

    result = RBDrawingStateBeginCGContext();
    *(v2 + 16) = result;
    v6 = *(v2 + 28);
    c = result;
    if (v6)
    {
      if (!result)
      {
        __break(1u);
        goto LABEL_29;
      }

      CGContextSetBlendMode(result, v6);
      result = c;
    }

    v7 = *(v2 + 32);
    if ((~*&v7 & 0x7FF0000000000000) != 0 || (*&v7 & 0xFFFFFFFFFFFFFLL) == 0)
    {
LABEL_23:
      if (result)
      {
        _CGContextSetShapeDistance(v7);
        result = c;
        goto LABEL_25;
      }

LABEL_29:
      __break(1u);
      return result;
    }

    if (!result)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

LABEL_25:

  return result;
}

uint64_t *LazyTransaction.updateValue()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 4);
  result = AGGraphGetValue();
  v6 = *result;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    if ((*(v0 + 24) & 1) != 0 || *(v0 + 20) != v3)
    {
LABEL_5:
      v7 = swift_retain_n();
      v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v7);
      if (v8 && !v8[9])
      {
      }

      else
      {
        type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>();
        *(swift_allocObject() + 72) = 0;
        type metadata accessor for TransactionPropertyKey<FromScrollViewKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
        v10 = PropertyList.Element.init(keyType:before:after:)(v9, 0, v6).value;

        v6 = v10;
      }

      v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v12);
      if (!v13 || *(v13 + 72) != 1)
      {
        type metadata accessor for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>();
        *(swift_allocObject() + 72) = 1;
        type metadata accessor for TransactionPropertyKey<FromScrollViewKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
        PropertyList.Element.init(keyType:before:after:)(v14, 0, v6);
      }

      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (*(v0 + 16) == 2)
  {
LABEL_9:

LABEL_17:
    AGGraphSetOutputValue();

    *(v1 + 20) = v3;
    *(v1 + 16) = v4;
    return result;
  }

  v11 = *(v0 + 8);
  if (v11)
  {

    Transaction.addAnimationListener(_:)(v11);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v40 = a2 + 32;
  v41 = result + 32;
  v39 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_81;
    }

    v4 = v41 + 32 * v3;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v42 = v3;
    v9 = v40 + 32 * v3;
    v10 = *v9;
    v11 = *(v9 + 24);
    v47 = *(v9 + 8);
    v48 = *v9;
    v46 = *(v9 + 16);
    if (v7)
    {
      if ((*(v9 + 16) & 1) == 0)
      {
        return 0;
      }

      v12 = *(*v5 + 96);
      v13 = *(v9 + 8);
      outlined copy of Text.Storage(v10, v13, 1);
      outlined copy of Text.Storage(v5, v6, 1);

      outlined copy of Text.Storage(v10, v13, 1);

      outlined copy of Text.Storage(v5, v6, 1);
      v14 = v12(v10);
      outlined consume of Text.Storage(v10, v13, 1);
      outlined consume of Text.Storage(v5, v6, 1);
      if ((v14 & 1) == 0)
      {
LABEL_77:
        outlined consume of Text.Storage(v48, v47, v7);

        v33 = v5;
        goto LABEL_78;
      }
    }

    else
    {
      if (*(v9 + 16))
      {
        return 0;
      }

      if (v5 == v10 && v6 == *(v9 + 8))
      {

        outlined copy of Text.Storage(v5, v6, 0);

        outlined copy of Text.Storage(v5, v6, 0);
      }

      else
      {
        v16 = *(v9 + 8);
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined copy of Text.Storage(v10, v16, 0);

        outlined copy of Text.Storage(v5, v6, 0);
        if ((v17 & 1) == 0)
        {
          goto LABEL_77;
        }
      }
    }

    v45 = v5;
    v18 = *(v8 + 16);
    if (v18 != *(v11 + 16))
    {
      outlined consume of Text.Storage(v48, v47, v46);

      v33 = v45;
LABEL_78:
      v34 = v6;
      v35 = v7;
LABEL_72:
      outlined consume of Text.Storage(v33, v34, v35);

      return 0;
    }

    v43 = v6;
    v44 = v7;
    result = v48;
    if (v18)
    {
      if (v8 != v11)
      {
        break;
      }
    }

LABEL_5:
    v3 = v42 + 1;
    outlined consume of Text.Storage(result, v47, v46);

    outlined consume of Text.Storage(v45, v43, v44);

    result = 1;
    v2 = v39;
    if (v42 + 1 == v39)
    {
      return result;
    }
  }

  v19 = 0;
  v20 = 0;
  while (v20 < *(v8 + 16))
  {
    if (v20 >= *(v11 + 16))
    {
      goto LABEL_80;
    }

    v23 = *(v8 + v19 + 32);
    v24 = *(v8 + v19 + 40);
    v25 = *(v11 + v19 + 32);
    v26 = *(v11 + v19 + 40);
    v27 = v24 >> 5;
    if (v24 >> 5 > 3)
    {
      if (v24 >> 5 <= 5)
      {
        if (v27 == 4)
        {
          v21 = (v26 & 0xE0) == 128;
        }

        else
        {
          v21 = (v26 & 0xE0) == 160;
        }

LABEL_24:
        if (!v21 || *&v23 != *&v25)
        {
LABEL_71:
          outlined consume of Text.Storage(result, v47, v46);

          v33 = v45;
          v34 = v43;
          v35 = v44;
          goto LABEL_72;
        }

        goto LABEL_29;
      }

      if (v27 == 6)
      {
        if ((v26 & 0xE0) != 0xC0)
        {
          goto LABEL_71;
        }

        v37 = *(*v23 + 96);
        v30 = *(v11 + v19 + 40);
        outlined copy of Text.Modifier(v25, v26);
        outlined copy of Text.Modifier(v23, v24);
        v31 = v37(v25);
        outlined consume of Text.Modifier(v25, v30);
        outlined consume of Text.Modifier(v23, v24);
        result = v48;
        if ((v31 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v23 | v24 ^ 0xE0)
        {
          if (v26 < 0xE0 || v25 != 1)
          {
            goto LABEL_71;
          }
        }

        else if (v26 < 0xE0 || *&v25 != 0.0)
        {
          goto LABEL_71;
        }

        if (v26 != 224)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      if (v24 >> 5 > 1)
      {
        if (v27 == 2)
        {
          if ((v26 & 0xE0) != 0x40)
          {
            goto LABEL_71;
          }

          if (v24)
          {
            if ((v26 & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          else if ((v26 & 1) != 0 || *&v23 != *&v25)
          {
            goto LABEL_71;
          }

          goto LABEL_29;
        }

        v21 = (v26 & 0xE0) == 96;
        goto LABEL_24;
      }

      if (v27)
      {
        if ((v26 & 0xE0) != 0x20)
        {
          goto LABEL_71;
        }

        if (*&v23 != 0.0)
        {
          if (*&v25 == 0.0)
          {
            goto LABEL_71;
          }

          v38 = *(*v23 + 112);
          v28 = *(v11 + v19 + 40);
          outlined copy of Text.Modifier(v25, v26);
          outlined copy of Text.Modifier(v23, v24);
          v29 = v38(v25);
LABEL_56:
          v32 = v29;
          outlined consume of Text.Modifier(v23, v24);
          outlined consume of Text.Modifier(v25, v28);
          result = v48;
          if ((v32 & 1) == 0)
          {
            goto LABEL_71;
          }

          goto LABEL_29;
        }
      }

      else
      {
        if (v26 >= 0x20)
        {
          goto LABEL_71;
        }

        if (*&v23 != 0.0)
        {
          if (*&v25 == 0.0)
          {
            goto LABEL_71;
          }

          if (v23 == v25)
          {
            goto LABEL_29;
          }

          v36 = *(*v23 + 88);
          v28 = *(v11 + v19 + 40);
          outlined copy of Text.Modifier(v25, v26);
          outlined copy of Text.Modifier(v23, v24);
          v29 = v36(v25);
          goto LABEL_56;
        }
      }

      if (*&v25 != 0.0)
      {
        goto LABEL_71;
      }

      outlined consume of Text.Modifier(0, v26);
      result = v48;
    }

LABEL_29:
    ++v20;
    v19 += 16;
    if (v18 == v20)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t LazyTransition.updateValue()(uint64_t a1)
{
  v2 = v1;
  v55 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v47 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = type metadata accessor for UncheckedSendable();
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v7;
  v8 = type metadata accessor for UncheckedSendable();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - v10;
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v41 - v20;
  v22 = *(v2 + 8);
  if (!v22)
  {
    __break(1u);
  }

  v44 = v9;
  v45 = v8;
  v23 = *(v22 + 52);
  v24 = *MEMORY[0x1E698D3F8];
  v46 = AssociatedTypeWitness;
  v42 = v17;
  v43 = v18;
  v41 = v19;
  if (v23 == v24)
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    Value = AGGraphGetValue();
    outlined init with copy of AnyTrackedValue(Value, v52);
    v27 = v6;
    v28 = v2;
    v29 = v53;
    v30 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v31 = *(v30 + 56);
    v32 = v30;
    v2 = v28;
    v6 = v27;
    v31(&v51, v29, v32);
    v25 = v51;
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v33 = v47;
  if (one-time initialization token for opacity != -1)
  {
    swift_once();
  }

  _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v25);

  AnyTransition.base<A>(as:)(v4, v13);
  if ((*(v14 + 48))(v13, 1, v4) == 1)
  {
    (*(v41 + 8))(v13, v42);
  }

  else
  {
    (*(v14 + 32))(v21, v13, v4);
    (*(v14 + 40))(v2 + *(a1 + 40), v21, v4);
  }

  if (*(AGGraphGetValue() + 5) == 1)
  {
    v34 = *(AGGraphGetValue() + 4);
  }

  else
  {
    v34 = 1;
  }

  v35 = v43;
  (*(v14 + 16))(v43, v2 + *(a1 + 40), v4);
  v36 = v48;
  UncheckedSendable.init(_:)(v35, v4, v48);
  v37 = v50;
  v38 = closure #1 in LazyTransition.updateValue()(v34, v4, v33, v50);
  MEMORY[0x1EEE9AC00](v38);
  *(&v41 - 2) = a1;
  *(&v41 - 1) = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v37, partial apply for closure #1 in StatefulRule.value.setter, (&v41 - 4), v46, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v39);

  (*(v6 + 8))(v37, v49);
  return (*(v44 + 8))(v36, v45);
}

uint64_t closure #1 in LazyTransition.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  v12 = PlaceholderContentView.init()(a2, v9);
  (*(a3 + 24))(v12, a1, a2, a3);
  return UncheckedSendable.init(_:)(v11, AssociatedTypeWitness, a4);
}

unint64_t LazyPreference.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v39 - v11;
  v12 = *(a4 + 16);
  v51 = a5;
  v12(a3, a4, v10);
  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v47 = a1;
  Value = AGGraphGetValue();
  v14 = *Value;
  v15 = *(*Value + 16);

  if (v15)
  {
    v17 = 0;
    v52 = a4 + 32;
    v42 = (v9 + 16);
    v43 = a4 + 24;
    v40 = (v9 + 32);
    v41 = (v9 + 8);
    v49 = v14 + 32;
    v44 = v15 - 1;
    v48 = 1;
    do
    {
      v18 = (v49 + 80 * v17);
      v19 = v17;
      while (1)
      {
        if (v19 >= *(v14 + 16))
        {
          __break(1u);
LABEL_16:
          AGGraphCancelUpdate();

          goto LABEL_17;
        }

        v20 = *v18;

        if (AGGraphHasDeadlinePassed())
        {
          goto LABEL_16;
        }

        v53 = *(v20 + 32);
        v54 = *(v20 + 40);

        v21 = _ViewOutputs.subscript.getter(a3, a3, a4);

        if ((v21 & 0x100000000) == 0)
        {
          v22 = (*(a4 + 32))(a3, a4);
          if (v22)
          {
            break;
          }

          v22 = AGGraphGetValue();
          if ((*(v22 + 6) & 1) == 0)
          {
            break;
          }
        }

        ++v19;
        v18 += 10;
        if (v15 == v19)
        {
          goto LABEL_17;
        }
      }

      if (v48)
      {
        v23 = AssociatedTypeWitness;
        v24 = AGGraphGetValue();
        v25 = v45;
        (*v42)(v45, v24, v23);

        v26 = v51;
        (*v41)(v51, v23);
        result = (*v40)(v26, v25, v23);
      }

      else
      {
        v27 = MEMORY[0x1EEE9AC00](v22);
        *(&v39 - 4) = a3;
        *(&v39 - 3) = a4;
        *(&v39 - 4) = v21;
        (*(a4 + 24))(v51, partial apply for closure #1 in LazyPreference.value.getter, v27);
      }

      v48 = 0;
      v17 = v19 + 1;
    }

    while (v44 != v19);
  }

LABEL_17:
  v28 = v50;
  if (!v50)
  {
    __break(1u);
    return result;
  }

  result = LazyLayoutViewCache.supportsViewHierarchyPrefetching.getter();
  if (result)
  {
    result = LazyPreference.prefetchItems.getter(v47, v28, a3);
    if (result)
    {
      v29 = result;
      v30 = result & 0xFFFFFFFFFFFFFF8;
      if (result >> 62)
      {
        v31 = __CocoaSet.count.getter();
        if (v31)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v31 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
LABEL_22:
          v32 = 0;
          v52 = v29 & 0xC000000000000001;
          v50 = a4 + 24;
          do
          {
            if (v52)
            {
              v33 = MEMORY[0x193AC03C0](v32, v29);
              v34 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v32 >= *(v30 + 16))
              {
                goto LABEL_33;
              }

              v33 = *(v29 + 8 * v32 + 32);

              v34 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:

                AGGraphCancelUpdate();
              }
            }

            if (AGGraphHasDeadlinePassed())
            {
              goto LABEL_34;
            }

            v35 = v30;
            v53 = *(v33 + 32);
            v54 = *(v33 + 40);

            v36 = _ViewOutputs.subscript.getter(a3, a3, a4);

            if ((v36 & 0x100000000) == 0)
            {
              v38 = MEMORY[0x1EEE9AC00](v37);
              *(&v39 - 4) = a3;
              *(&v39 - 3) = a4;
              *(&v39 - 4) = v36;
              (*(a4 + 24))(v51, partial apply for closure #2 in LazyPreference.value.getter, v38);
            }

            v30 = v35;
            ++v32;
          }

          while (v34 != v31);
        }
      }
    }
  }

  return result;
}

uint64_t LazyLayoutViewCache.supportsViewHierarchyPrefetching.getter()
{
  if (((*(*v0 + 360))() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v1 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v1)
    {
      goto LABEL_8;
    }

LABEL_10:
    swift_beginAccess();
    v2 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v0[4]) ^ 1;
    return v2 & 1;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_10;
  }

LABEL_8:
  v2 = 0;
  return v2 & 1;
}

uint64_t *LazyPreferencePrefetchSubviews.value.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if (a2)
  {
    v4 = *result;

    if ((LazyLayoutViewCache.supportsViewHierarchyPrefetching.getter() & 1) == 0)
    {
      return v4;
    }

    AGGraphRegisterDependency();
    if (*(a2 + 352))
    {
      return v4;
    }

    v8 = specialized Collection.prefix(_:)(*(a2 + 344), v4);
    if (v7)
    {
      v10 = v7;
      v11 = v6;
      v12 = v5;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
        swift_unknownObjectRelease();
        v13 = MEMORY[0x1E69E7CC0];
      }

      v14 = *(v13 + 16);

      if (__OFSUB__(v10 >> 1, v11))
      {
        __break(1u);
      }

      else if (v14 == (v10 >> 1) - v11)
      {
        v4 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v4)
        {
          return v4;
        }

        v4 = MEMORY[0x1E69E7CC0];
LABEL_12:
        swift_unknownObjectRelease();
        return v4;
      }

      swift_unknownObjectRelease();
      v7 = v10;
      v6 = v11;
      v5 = v12;
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v8, v5, v6, v7);
    v4 = v9;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t View.underline(_:pattern:color:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return View.underline(_:pattern:color:)(a1, a2, a3, a4, a5);
}

{
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  if (a1)
  {
    v11 = v9 | 1;
  }

  else
  {
    v11 = 0;
    a3 = 1;
  }

  v13 = v11;
  v14 = a3;
  View.environment<A>(_:_:)(KeyPath, &v13, a4, a5);

  return outlined consume of Text.LineStyle?(v13, v14);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014UnderlineStyleF0VG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014UnderlineStyleV0VG_Tt0B5(v6, v16);
  if (!v9 || (v10 = v9[9], v11 = v9[10], outlined copy of Text.LineStyle?(v10, v11), v12 = _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018StrikethroughStyleD0V_Tt1B5(a2, a3, v10, v11), result = outlined consume of Text.LineStyle?(v10, v11), (v12 & 1) == 0))
  {
    v14 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<UnderlineStyleKey>>();
    v15 = swift_allocObject();
    *(v15 + 72) = a2;
    *(v15 + 80) = a3;

    outlined copy of Text.LineStyle?(a2, a3);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v14);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<UnderlineStyleKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<UnderlineStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<UnderlineStyleKey>>);
    }
  }
}

uint64_t LazyDisplayListWrapper.updateValue()()
{
  if (!*v0)
  {
    __break(1u);
  }

  v1 = *(*v0 + 212) & 0xFE;
  swift_beginAccess();
  if (swift_unownedRetainStrong())
  {

    AGGraphRegisterDependency();
  }

  v2 = v0[8] | (v1 == 2);
  result = AGGraphGetOutputValue();
  if (!result || ((v2 ^ v0[9]) & 1) != 0)
  {
    v4 = v2 & 1;
    result = AGGraphSetOutputValue();
  }

  else
  {
    v4 = v2 & 1;
  }

  v0[9] = v4;
  return result;
}

Swift::Void __swiftcall _DynamicPropertyBuffer.reset()()
{
  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *v0;
    if (*v0)
    {
      v3 = 0;
      v4 = v1 - 1;
      do
      {
        v7 = (v2 + v3);
        if (v4)
        {
          v3 += *(v7 + 2);
        }

        else
        {
          v3 = 0;
        }

        v5 = v4 | v3;
        v6 = *v7;
        v8 = v7;
        (*(v6 + 112))(&v8);
        --v4;
      }

      while (v5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t specialized static LocalizedStringKey.FormatArgument.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v75 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for LocalizedStringResource();
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v65 - v5;
  v6 = type metadata accessor for AttributedString();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - v10;
  v12 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  type metadata accessor for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage)();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &v26[*(v27 + 56)];
  outlined init with copy of LocalizedStringKey.FormatArgument(v71, v26, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  outlined init with copy of LocalizedStringKey.FormatArgument(v72, v28, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of LocalizedStringKey.FormatArgument(v26, v23, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
      v30 = *(v23 + 5);
      if (swift_getEnumCaseMultiPayload())
      {

        __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_18:
        v35 = 0;
        v37 = type metadata accessor for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage);
        goto LABEL_19;
      }

      v57 = v26;
      v58 = *(v28 + 40);
      outlined init with take of AnyTrackedValue(v23, v74);
      outlined init with take of AnyTrackedValue(v28, v73);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg);
      if (AGCompareValues())
      {
        if (v30)
        {
          if (v58)
          {
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSFormatter);
            v59 = v30;
            v35 = static NSObject.== infix(_:_:)();

            __swift_destroy_boxed_opaque_existential_1(v73);
            __swift_destroy_boxed_opaque_existential_1(v74);

LABEL_28:
            v26 = v57;
            v37 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage;
            goto LABEL_19;
          }

          __swift_destroy_boxed_opaque_existential_1(v73);
          __swift_destroy_boxed_opaque_existential_1(v74);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v73);
          __swift_destroy_boxed_opaque_existential_1(v74);
          if (!v58)
          {
            v35 = 1;
            goto LABEL_28;
          }
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v73);
        __swift_destroy_boxed_opaque_existential_1(v74);
      }

      v35 = 0;
      goto LABEL_28;
    }

    v72 = v26;
    outlined init with copy of LocalizedStringKey.FormatArgument(v26, v20, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    v38 = *v20;
    v39 = *(v20 + 1);
    v40 = v20[16];
    v42 = *(v20 + 3);
    v41 = *(v20 + 4);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined consume of Text.Storage(v38, v39, v40);

      v35 = 0;
      v55 = type metadata accessor for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage);
LABEL_37:
      v56 = v55;
      v26 = v72;
      goto LABEL_38;
    }

    v44 = *v28;
    v43 = *(v28 + 8);
    v45 = *(v28 + 16);
    v46 = *(v28 + 24);
    if (v40)
    {
      if (*(v28 + 16))
      {
        v71 = *(v28 + 32);
        v70 = *(*v38 + 96);
        outlined copy of Text.Storage(v38, v39, 1);
        outlined copy of Text.Storage(v44, v43, 1);
        v47 = v70(v44);
        outlined consume of Text.Storage(v44, v43, 1);
        outlined consume of Text.Storage(v38, v39, 1);
        if ((v47 & 1) == 0)
        {
LABEL_34:
          outlined consume of Text.Storage(v44, v43, v45);

          v60 = v38;
          v61 = v39;
          v62 = v40;
          goto LABEL_35;
        }

LABEL_33:
        v63 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v42, v46);
        outlined consume of Text.Storage(v44, v43, v45);

        outlined consume of Text.Storage(v38, v39, v40);

        v35 = v63 & (v41 == v71);
LABEL_36:
        v55 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage;
        goto LABEL_37;
      }

      outlined consume of Text.Storage(*v28, *(v28 + 8), 0);

      v60 = v38;
      v61 = v39;
      v62 = 1;
    }

    else
    {
      if ((*(v28 + 16) & 1) == 0)
      {
        v71 = *(v28 + 32);
        if ((v38 != v44 || v39 != v43) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      outlined consume of Text.Storage(*v28, *(v28 + 8), 1);

      v60 = v38;
      v61 = v39;
      v62 = 0;
    }

LABEL_35:
    outlined consume of Text.Storage(v60, v61, v62);

    v35 = 0;
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of LocalizedStringKey.FormatArgument(v26, v17, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v67 + 8))(v17, v68);
      goto LABEL_18;
    }

    v31 = v67;
    v32 = *(v67 + 32);
    v33 = v17;
    v34 = v68;
    v32(v11, v33, v68);
    v32(v8, v28, v34);
    v35 = static AttributedString.== infix(_:_:)();
    v36 = *(v31 + 8);
    v36(v8, v34);
    v36(v11, v34);
    v37 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage;
  }

  else
  {
    outlined init with copy of LocalizedStringKey.FormatArgument(v26, v14, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v69 + 8))(v14, v70);
      goto LABEL_18;
    }

    v48 = v69;
    v49 = *(v69 + 32);
    v50 = v65;
    v51 = v14;
    v52 = v70;
    v49(v65, v51, v70);
    v53 = v66;
    v49(v66, v28, v52);
    v35 = MEMORY[0x193ABCB30](v50, v53);
    v54 = *(v48 + 8);
    v54(v53, v52);
    v54(v50, v52);
    v37 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage;
  }

LABEL_19:
  v56 = v37;
LABEL_38:
  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v26, v56);
  return v35 & 1;
}

uint64_t AttachmentTextStorage.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = *(v0 + 16);
    v3 = *(result + 16);
    if (v2 == v3)
    {
      return 1;
    }

    else
    {
      v4 = *(*v2 + 96);

      v5 = v4(v3);

      return v5 & 1;
    }
  }

  return result;
}

_DWORD *specialized AnimatableAttributeHelper.reset()()
{
  if (*(v0 + 32))
  {
    specialized AnimatorState.removeListeners()();
  }

  *(v0 + 32) = 0;

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = AGGraphGetValue();
  *(v0 + 40) = *result >> 1;
  return result;
}

{
  if (*(v0 + 40))
  {
    specialized AnimatorState.removeListeners()();
  }

  *(v0 + 40) = 0;

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  result = AGGraphGetValue();
  *(v0 + 48) = *result >> 1;
  return result;
}

{
  if (*(v0 + 24))
  {
    specialized AnimatorState.removeListeners()();
  }

  *(v0 + 24) = 0;

  *(v0 + 16) = 0;
  result = AGGraphGetValue();
  *(v0 + 32) = *result >> 1;
  return result;
}

uint64_t LazyStatePropertyBox.reset()()
{
  if (*(v0 + 8))
  {
    StoredLocationBase.invalidate()();
  }

  *(v0 + 8) = 0;
  return result;
}

Swift::Void __swiftcall PlatformViewChild.resetPlatformView()()
{
  v2 = v0;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = type metadata accessor for UncheckedSendable();
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v35 - v6;
  v46 = v4;
  v47 = v3;
  v7 = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for UncheckedSendable();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v35 - v9;
  v10 = type metadata accessor for Optional();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v35 - v16;
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v22);
  v36 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v35 - v26;
  (*(v18 + 16))(v20, v1 + *(v2 + 76), v17, v25);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v20, v17);
  }

  else
  {
    (*(v21 + 32))(v27, v20, AssociatedTypeWitness);
    PlatformViewChild.representedViewProvider.getter(v2, v12);
    v28 = v49;
    if ((*(v49 + 48))(v12, 1, v7) == 1)
    {
      (*(v21 + 8))(v27, AssociatedTypeWitness);
      v30 = v38;
      v29 = v39;
    }

    else
    {
      v31 = v40;
      (*(v28 + 32))(v40, v12, v7);
      v32 = v37;
      (*(v28 + 16))(v37, v31, v7);
      v12 = v41;
      UncheckedSendable.init(_:)(v32, v7, v41);
      v33 = v36;
      (*(v21 + 16))(v36, v27, AssociatedTypeWitness);
      v34 = v44;
      UncheckedSendable.init(_:)(v33, AssociatedTypeWitness, v44);
      closure #1 in PlatformViewChild.resetPlatformView()(v12, v34, v1, v46, v47);
      (*(v28 + 8))(v31, v7);
      (*(v21 + 8))(v27, AssociatedTypeWitness);
      (*(v45 + 8))(v34, v48);
      v30 = v42;
      v29 = v43;
    }

    (*(v30 + 8))(v12, v29);
  }
}

Swift::Void __swiftcall ValueCycleDetector.reset()()
{
  *(v1 + 4) = -1;
  v2 = *(v0 + 44);
  v3 = *(v0 + 16);
  v4 = type metadata accessor for Stack3();
  (*(*(v4 - 8) + 8))(v1 + v2, v4);
  Stack3.init()(v3, v1 + v2);
  *(v1 + 8) = 0;
}

uint64_t specialized static _ShapeStyle_Pack.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v65 = *a2;
  if (v3 != *(*a2 + 16))
  {
    v6 = 0;
    return v6 & 1;
  }

  if (!v3)
  {
    v6 = 1;
LABEL_83:

    return v6 & 1;
  }

  v5 = 0;
  v6 = 1;
  while (1)
  {
    if (v5 >= v3)
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v7 = (v2 + 32 + (v5 << 7));
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[3];
    *&v97[32] = v7[2];
    *&v97[48] = v10;
    *&v97[16] = v9;
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[7];
    *&v97[96] = v7[6];
    v98 = v13;
    *&v97[64] = v11;
    *&v97[80] = v12;
    *v97 = v8;
    v14 = *(v65 + 16);
    if (v5 == v14)
    {
      goto LABEL_83;
    }

    if (v5 >= v14)
    {
      goto LABEL_86;
    }

    v15 = (v65 + 32 + (v5 << 7));
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    *&v94[48] = v15[3];
    *&v94[32] = v18;
    *&v94[16] = v17;
    *v94 = v16;
    v19 = v15[4];
    v20 = v15[5];
    v21 = v15[6];
    v95 = v15[7];
    *&v94[96] = v21;
    *&v94[80] = v20;
    *&v94[64] = v19;
    v96[4] = *&v97[64];
    v96[5] = *&v97[80];
    v96[6] = *&v97[96];
    v96[7] = v98;
    v96[0] = *v97;
    v96[1] = *&v97[16];
    v96[2] = *&v97[32];
    v96[3] = *&v97[48];
    v96[10] = *&v94[32];
    v96[11] = *&v94[48];
    v96[8] = *v94;
    v96[9] = *&v94[16];
    v96[14] = v21;
    v96[15] = v95;
    v96[12] = v19;
    v96[13] = v20;
    if (v6)
    {
      break;
    }

    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v97, v85, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v94, v85, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    result = outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    v6 = 0;
LABEL_5:
    ++v5;
    v3 = *(v2 + 16);
    if (v5 == v3)
    {
      goto LABEL_83;
    }
  }

  v22 = v94[0];
  v23 = v94[1];
  *&v93[38] = *&v97[40];
  *&v93[54] = *&v97[56];
  *&v93[70] = *&v97[72];
  *&v93[86] = *&v97[88];
  *&v93[6] = *&v97[8];
  *&v93[22] = *&v97[24];
  v24 = *&v97[104];
  v64 = v98;
  v92[0] = *(&v98 + 1);
  *(v92 + 7) = *(&v98 + 1);
  *&v91[38] = *&v94[40];
  *&v91[54] = *&v94[56];
  *&v91[70] = *&v94[72];
  *&v91[86] = *&v94[88];
  *&v91[6] = *&v94[8];
  *&v91[22] = *&v94[24];
  v60 = *&v97[104];
  v61 = *&v94[104];
  v63 = v95;
  v90[0] = *(&v95 + 1);
  *(v90 + 7) = *(&v95 + 1);
  v58 = v97[1];
  v59 = v97[0];
  if (v97[0] != v94[0] || v97[1] != v94[1])
  {
    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, v85, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    v6 = 0;
LABEL_23:
    v28 = v61;
LABEL_24:
    v81[0] = v22;
    v81[1] = v23;
    *&v81[66] = *&v91[64];
    *&v81[82] = *&v91[80];
    *&v81[96] = *&v91[94];
    *&v81[2] = *v91;
    *&v81[18] = *&v91[16];
    *&v81[34] = *&v91[32];
    *&v81[50] = *&v91[48];
    v82 = v28;
    v83 = v63;
    *&v84[7] = *(v90 + 7);
    *v84 = v90[0];
    outlined destroy of (ShapeType, ShapeType)(v81, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Key, _ShapeStyle_Pack.Style));
    v85[0] = v59;
    v85[1] = v58;
    *&v85[66] = *&v93[64];
    *v86 = *&v93[80];
    *&v86[14] = *&v93[94];
    *&v85[2] = *v93;
    *&v85[18] = *&v93[16];
    *&v85[34] = *&v93[32];
    *&v85[50] = *&v93[48];
    v87 = v60;
    v88 = v64;
    *(v89 + 7) = *(v92 + 7);
    v89[0] = v92[0];
    result = outlined destroy of (ShapeType, ShapeType)(v85, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Key, _ShapeStyle_Pack.Style));
    goto LABEL_5;
  }

  v57 = v94[1];
  v75[2] = *&v97[40];
  v75[3] = *&v97[56];
  v76[0] = *&v97[72];
  *(v76 + 14) = *&v97[86];
  v75[0] = *&v97[8];
  v75[1] = *&v97[24];
  v77[2] = *&v94[40];
  v77[3] = *&v94[56];
  v78[0] = *&v94[72];
  *(v78 + 14) = *&v94[86];
  v77[0] = *&v94[8];
  v77[1] = *&v94[24];
  v73 = *&v97[40];
  *v74 = *&v97[56];
  *&v74[16] = *&v97[72];
  *&v74[30] = *&v97[86];
  v71 = *&v97[8];
  v72 = *&v97[24];
  v68 = *&v94[40];
  v69 = *&v94[56];
  v70[0] = *&v94[72];
  *(v70 + 14) = *&v94[86];
  v66 = *&v94[8];
  v67 = *&v94[24];
  outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, v85, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
  outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, v85, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
  outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v97, v85, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
  outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v94, v85, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
  outlined init with copy of _ShapeStyle_Pack.Fill(v75, v85);
  outlined init with copy of _ShapeStyle_Pack.Fill(v77, v85);
  v25 = specialized static _ShapeStyle_Pack.Fill.== infix(_:_:)(&v71, &v66);
  v79[2] = v68;
  v79[3] = v69;
  v80[0] = v70[0];
  *(v80 + 14) = *(v70 + 14);
  v79[0] = v66;
  v79[1] = v67;
  outlined destroy of _ShapeStyle_Pack.Fill(v79);
  *&v81[32] = v73;
  *&v81[48] = *v74;
  *&v81[64] = *&v74[16];
  *&v81[78] = *&v74[30];
  *v81 = v71;
  *&v81[16] = v72;
  outlined destroy of _ShapeStyle_Pack.Fill(v81);
  if ((v25 & 1) == 0 || *&v97[96] != *&v94[96])
  {
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v94, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v97, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    v6 = 0;
LABEL_22:
    v23 = v57;
    goto LABEL_23;
  }

  if (v64 == 255)
  {
    v26 = v63;
    if (v63 == 255)
    {
      outlined copy of GraphicsBlendMode?(v24, 255);
      outlined copy of GraphicsBlendMode?(v61, 255);
      result = outlined consume of GraphicsBlendMode?(v24, 255);
      goto LABEL_33;
    }

LABEL_26:
    outlined copy of GraphicsBlendMode?(v24, v64);
    outlined copy of GraphicsBlendMode?(v61, v26);
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v94, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v97, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    v29 = v24;
    v28 = v61;
    outlined consume of GraphicsBlendMode?(v29, v64);
    outlined consume of GraphicsBlendMode?(v61, v26);
LABEL_80:
    v6 = 0;
    v23 = v57;
    goto LABEL_24;
  }

  v26 = v63;
  if (v63 == 255)
  {
    goto LABEL_26;
  }

  if ((v64 & 1) == 0)
  {
    if ((v63 & 1) == 0)
    {
      outlined copy of GraphicsBlendMode?(v24, v64);
      outlined copy of GraphicsBlendMode?(v61, v63);
      outlined consume of GraphicsBlendMode(v24, 0);
      outlined consume of GraphicsBlendMode(v61, 0);
      result = outlined consume of GraphicsBlendMode?(v24, v64);
      if (v24 == v61)
      {
        goto LABEL_33;
      }

LABEL_30:
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v94, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v97, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
LABEL_79:
      v28 = v61;
      goto LABEL_80;
    }

    outlined copy of GraphicsBlendMode?(v24, v64);
    v27 = v61;
    outlined copy of GraphicsBlendMode?(v61, v63);
    outlined consume of GraphicsBlendMode(v24, 0);
LABEL_29:
    outlined consume of GraphicsBlendMode(v27, (v64 & 1) == 0);
    outlined consume of GraphicsBlendMode?(v24, v64);
    goto LABEL_30;
  }

  outlined copy of GraphicsBlendMode?(v24, v64);
  v27 = v61;
  outlined copy of GraphicsBlendMode?(v61, v63);
  outlined copy of GraphicsBlendMode?(v24, v64);
  outlined consume of GraphicsBlendMode(v24, 1);
  if ((v63 & 1) == 0)
  {
    goto LABEL_29;
  }

  outlined consume of GraphicsBlendMode(v61, 1);
  result = outlined consume of GraphicsBlendMode?(v24, v64);
  if (v24 != v61)
  {
    goto LABEL_30;
  }

LABEL_33:
  v30 = *(&v95 + 1);
  v31 = *(*(&v98 + 1) + 16);
  if (v31 != *(*(&v95 + 1) + 16))
  {
LABEL_78:
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v94, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v97, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    goto LABEL_79;
  }

  if (!v31 || *(&v98 + 1) == *(&v95 + 1))
  {
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v94, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v97, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    v47 = type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    v48 = v96;
LABEL_71:
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v48, v47);
    v6 = 1;
    goto LABEL_22;
  }

  if (*(*(&v98 + 1) + 16))
  {
    v32 = 0;
    v33 = (*(&v98 + 1) + 32);
    v34 = (*(&v95 + 1) + 32);
    v53 = v31 - 1;
    v49 = *(&v98 + 1);
    v50 = *(&v95 + 1);
    do
    {
      v35 = v33[1];
      v36 = v33[2];
      v37 = v33[3];
      *&v74[9] = *(v33 + 57);
      v73 = v36;
      *v74 = v37;
      v72 = v35;
      v71 = *v33;
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_88;
      }

      *v85 = *v34;
      v38 = v34[1];
      v39 = v34[2];
      v40 = v34[3];
      *&v85[57] = *(v34 + 57);
      *&v85[32] = v39;
      *&v85[48] = v40;
      *&v85[16] = v38;
      if (v74[5])
      {
        v28 = v61;
        if ((v85[53] & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v85[53])
        {
          goto LABEL_78;
        }

        v28 = v61;
        if (*&v71 != *v85 || *(&v71 + 1) != *&v85[4] || *(&v71 + 2) != *&v85[8] || *(&v71 + 3) != *&v85[12] || *&v72 != *&v85[16] || *(&v72 + 1) != *&v85[24] || *&v73 != *&v85[32] || *(&v73 + 1) != *&v85[40] || *v74 != *&v85[48] || v74[4] != v85[52])
        {
          goto LABEL_73;
        }
      }

      if (*&v74[8] != *&v85[56])
      {
        goto LABEL_73;
      }

      v41 = *&v74[16];
      v42 = v85[72];
      v54 = v34;
      v55 = v33;
      v56 = v32;
      if (v74[24] == 255)
      {
        if (v85[72] != 255)
        {
LABEL_72:
          v52 = *&v85[64];
          v62 = v74[24];
          outlined init with copy of _ShapeStyle_Pack.Effect(&v71, &v66);
          outlined init with copy of _ShapeStyle_Pack.Effect(v85, &v66);
          outlined consume of GraphicsBlendMode?(v41, v62);
          outlined consume of GraphicsBlendMode?(v52, v42);
LABEL_73:
          outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v94, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
          outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v97, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
          outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
          goto LABEL_80;
        }

        outlined init with copy of _ShapeStyle_Pack.Effect(&v71, &v66);
        outlined init with copy of _ShapeStyle_Pack.Effect(v85, &v66);
        result = outlined consume of GraphicsBlendMode?(v41, 255);
      }

      else
      {
        if (v85[72] == 255)
        {
          goto LABEL_72;
        }

        v51 = *&v85[64];
        v43 = v74[24];
        if (v74[24])
        {
          if ((v85[72] & 1) == 0)
          {
            outlined init with copy of _ShapeStyle_Pack.Effect(&v71, &v66);
            outlined init with copy of _ShapeStyle_Pack.Effect(v85, &v66);
            outlined init with copy of _ShapeStyle_Pack.Effect(&v71, &v66);
            outlined init with copy of _ShapeStyle_Pack.Effect(v85, &v66);
            outlined copy of GraphicsBlendMode?(v41, v43);
LABEL_77:
            outlined consume of GraphicsBlendMode(v41, v43 & 1);
            outlined consume of GraphicsBlendMode(v51, (v43 & 1) == 0);
            outlined consume of GraphicsBlendMode?(v41, v43);
            outlined destroy of _ShapeStyle_Pack.Effect(v85);
            outlined destroy of _ShapeStyle_Pack.Effect(&v71);
            goto LABEL_78;
          }

          outlined init with copy of _ShapeStyle_Pack.Effect(&v71, &v66);
          outlined init with copy of _ShapeStyle_Pack.Effect(v85, &v66);
          outlined init with copy of _ShapeStyle_Pack.Effect(&v71, &v66);
          outlined init with copy of _ShapeStyle_Pack.Effect(v85, &v66);
          outlined copy of GraphicsBlendMode?(v41, v43);
          outlined consume of GraphicsBlendMode(v41, 1);
          outlined consume of GraphicsBlendMode(v51, 1);
          v44 = v41;
          v45 = v41 == v51;
        }

        else
        {
          if (v85[72])
          {
            outlined init with copy of _ShapeStyle_Pack.Effect(&v71, &v66);
            outlined init with copy of _ShapeStyle_Pack.Effect(v85, &v66);
            outlined init with copy of _ShapeStyle_Pack.Effect(&v71, &v66);
            outlined init with copy of _ShapeStyle_Pack.Effect(v85, &v66);
            goto LABEL_77;
          }

          outlined init with copy of _ShapeStyle_Pack.Effect(&v71, &v66);
          outlined init with copy of _ShapeStyle_Pack.Effect(v85, &v66);
          outlined init with copy of _ShapeStyle_Pack.Effect(&v71, &v66);
          outlined init with copy of _ShapeStyle_Pack.Effect(v85, &v66);
          outlined consume of GraphicsBlendMode(v41, 0);
          outlined consume of GraphicsBlendMode(v51, 0);
          v44 = v41;
          v45 = v41 == v51;
        }

        v46 = v45;
        outlined consume of GraphicsBlendMode?(v44, v43);
        outlined destroy of _ShapeStyle_Pack.Effect(v85);
        result = outlined destroy of _ShapeStyle_Pack.Effect(&v71);
        if ((v46 & 1) == 0)
        {
          goto LABEL_78;
        }
      }

      if (v53 == v56)
      {
        outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
        outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v94, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        v48 = v97;
        v47 = type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style);
        goto LABEL_71;
      }

      v30 = v50;
      v34 = v54 + 5;
      v33 = v55 + 5;
      v32 = v56 + 1;
    }

    while (v56 + 1 < *(v49 + 16));
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

void type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style))()
{
  if (!lazy cache variable for type metadata for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)))
  {
    type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    }
  }
}

uint64_t specialized static _ShapeStyle_Pack.Fill.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v51 = *(a1 + 32);
  v52 = v3;
  v11 = *(a1 + 48);
  *v53 = *(a1 + 64);
  v4 = *(a1 + 16);
  v49 = *a1;
  v50 = v4;
  v5 = *(a2 + 16);
  v6 = v5;
  v54 = *a2;
  v55 = v5;
  *&v58[14] = *(a2 + 78);
  v7 = *(a2 + 48);
  *v58 = *(a2 + 64);
  v8 = *(a2 + 48);
  v56 = *(a2 + 32);
  v57 = v8;
  v59[0] = v49;
  v59[1] = v2;
  v9 = *(a1 + 64);
  *(&v60[1] + 6) = *(a1 + 78);
  v59[3] = v11;
  *v60 = v9;
  v59[2] = v51;
  *&v60[5] = v6;
  *&v53[14] = *(a1 + 78);
  *&v60[3] = v54;
  v10 = *(a2 + 64);
  *(v61 + 14) = *(a2 + 78);
  v61[0] = v10;
  *&v60[9] = v7;
  *&v60[7] = v56;
  v11.i64[0] = v49.i64[0];
  v12 = v49.i32[3];
  if (v53[21] <= 2u)
  {
    if (!v53[21])
    {
      if (!v58[21])
      {
        outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill));
        if (v54.f32[0] == v49.f32[0] && v54.f32[1] == v49.f32[1] && v49.f32[2] == v54.f32[2] && v54.f32[3] == v49.f32[3] && *&v50 == *&v55)
        {
          v15 = 1;
          return v15 & 1;
        }

LABEL_36:
        v15 = 0;
        return v15 & 1;
      }

      goto LABEL_34;
    }

    if (v53[21] == 1)
    {
      if (v58[21] == 1)
      {
        v16 = v54.i64[0];
        v17 = *(*v49.i64[0] + 144);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
        v15 = v17(v16);
        outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill));
        return v15 & 1;
      }

      goto LABEL_34;
    }

    if (v58[21] != 2)
    {
      outlined copy of Material.ID(*(&v50 + 1), v51);
      goto LABEL_34;
    }

    v11.i64[1] = v49.i64[1];
    if ((vminv_u16(vmovn_s32(vceqq_f32(v11, v54))) & 1) == 0 || *&v50 != *&v55)
    {
      outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
      v26 = &v49;
LABEL_35:
      outlined init with copy of _ShapeStyle_Pack.Fill(v26, &v35);
      outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill));
      goto LABEL_36;
    }

    v40.i64[0] = *(&v50 + 1);
    v40.i8[8] = v51;
    v40.i32[3] = DWORD1(v51);
    LOWORD(v41) = WORD4(v51);
    v33.i64[0] = *(&v55 + 1);
    v33.i8[8] = v56;
    v33.i32[3] = DWORD1(v56);
    LOWORD(v34) = WORD4(v56);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
    v28 = static ContentStyle.MaterialStyle.== infix(_:_:)(&v40, &v33);
LABEL_29:
    v15 = v28;
    outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill));
    outlined destroy of _ShapeStyle_Pack.Fill(&v54);
    outlined destroy of _ShapeStyle_Pack.Fill(&v49);
    return v15 & 1;
  }

  if (v53[21] <= 4u)
  {
    if (v53[21] == 3)
    {
      if (v58[21] == 3)
      {
        v13 = v54.i32[3];
        v40.i64[0] = v49.i64[0];
        v40.i8[8] = v49.i8[8];
        v33.i64[0] = v54.i64[0];
        v33.i8[8] = v54.i8[8];
        outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
        v14 = static Material.ID.== infix(_:_:)(&v40, &v33);
        outlined consume of Material.ID(v33.i64[0], v33.u8[8]);
        outlined consume of Material.ID(v40.i64[0], v40.u8[8]);
        outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill));
        outlined destroy of _ShapeStyle_Pack.Fill(&v54);
        outlined destroy of _ShapeStyle_Pack.Fill(&v49);
        v15 = v14 & (v12 == v13);
        return v15 & 1;
      }

      outlined copy of Material.ID(v49.i64[0], v49.u8[8]);
    }

    else if (v58[21] == 4)
    {
      outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill));
      v35 = v49;
      *&v36 = v50;
      v40 = v54;
      *&v41 = v55;
      v15 = specialized static Color.ResolvedDuotone.== infix(_:_:)(&v35, &v40);
      return v15 & 1;
    }

    goto LABEL_34;
  }

  if (v53[21] != 5)
  {
    if (v58[21] != 6)
    {
      v29 = *(a1 + 48);
      v37 = *(a1 + 32);
      v38 = v29;
      v39[0] = *(a1 + 64);
      *(v39 + 14) = *(a1 + 78);
      v30 = *(a1 + 16);
      v35 = *a1;
      v36 = v30;
      outlined init with copy of ResolvedMulticolorStyle(&v35, &v40);
      goto LABEL_34;
    }

    v40 = v49;
    v41 = v50;
    v27 = *(a2 + 16);
    v33 = *a2;
    v34 = v27;
    outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
    v28 = specialized static ResolvedMulticolorStyle.== infix(_:_:)(&v40, &v33);
    goto LABEL_29;
  }

  if (v58[21] != 5)
  {
LABEL_34:
    v26 = &v54;
    goto LABEL_35;
  }

  v18 = *&v53[16];
  v32 = v53[20];
  v19 = v58[20];
  v20 = *&v58[16];
  outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill));
  v40 = v49;
  v41 = v50;
  v42 = v51;
  v43 = *(a1 + 33);
  v44 = *(a1 + 35);
  v45 = DWORD1(v51);
  v46 = WORD4(v51);
  *&v48[14] = *(a1 + 72);
  *v48 = *(a1 + 58);
  v47 = *(a1 + 42);
  v23 = *(a2 + 48);
  v37 = *(a2 + 32);
  v38 = v23;
  v39[0] = *(a2 + 64);
  v24 = *(a2 + 16);
  v35 = *a2;
  v36 = v24;
  v25 = specialized static _ColorMatrix.== infix(_:_:)(&v40, &v35) & (v18 == v20);
  if (v32 == v19)
  {
    v15 = v25;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t static _AlignmentWritingModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  v18 = *(a2 + 40);
  v19[0] = *(a2 + 56);
  v7 = *(a2 + 8);
  v8 = *(a2 + 9);
  *(v19 + 12) = *(a2 + 68);
  v16 = v7;
  v17 = v8;
  a3(&v11);
  if ((v8 & 2) != 0)
  {
    *&v14 = __PAIR64__(v13, v5);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type AlignmentModifiedLayoutComputer and conformance AlignmentModifiedLayoutComputer();
    result = Attribute.init<A>(body:value:flags:update:)();
    v10 = v12 | 0x80;
  }

  else
  {
    v10 = v12;
    result = v13;
  }

  *a4 = v11;
  *(a4 + 8) = v10;
  *(a4 + 12) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AlignmentModifiedLayoutComputer and conformance AlignmentModifiedLayoutComputer()
{
  result = lazy protocol witness table cache variable for type AlignmentModifiedLayoutComputer and conformance AlignmentModifiedLayoutComputer;
  if (!lazy protocol witness table cache variable for type AlignmentModifiedLayoutComputer and conformance AlignmentModifiedLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlignmentModifiedLayoutComputer and conformance AlignmentModifiedLayoutComputer);
  }

  return result;
}

uint64_t AlignmentModifiedLayoutComputer.updateValue()()
{
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v4 = Value[2];
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    v5 = one-time initialization token for defaultValue;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = &static LayoutComputer.defaultValue;
  }

  else
  {

    v6 = AGGraphGetValue();
  }

  v8 = *v6;
  v7 = *(v6 + 1);
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v8;
  v12[4] = v7;
  MEMORY[0x1EEE9AC00](v6);
  v11[2] = v12;
  MEMORY[0x1EEE9AC00](v9);

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v11, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
}

uint64_t specialized closure #2 in StatefulRule<>.update<A>(to:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA017AlignmentModifiedcD033_1A9A538762FDCD24410B0F017CAED17ALLV0E0V_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<AlignmentModifiedLayoutComputer.Engine>, &type metadata for AlignmentModifiedLayoutComputer.Engine, &protocol witness table for AlignmentModifiedLayoutComputer.Engine, type metadata accessor for TracingLayoutEngineBox);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 56) = v7;
    *(v4 + 60) = v6;
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LayoutEngineBox<AlignmentModifiedLayoutComputer.Engine>, &type metadata for AlignmentModifiedLayoutComputer.Engine, &protocol witness table for AlignmentModifiedLayoutComputer.Engine, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  result = *a1;
  v9 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v9;
  *(v4 + 48) = *(a1 + 32);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void *initializeWithCopy for AlignmentModifiedLayoutComputer.Engine(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

uint64_t AlignmentModifiedLayoutComputer.Engine.layoutPriority()()
{
  v1 = *(v0 + 24);
  v2 = one-time initialization token for lockAssertionsAreEnabled;

  if (v2 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
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
LABEL_7:
    (*(*v1 + 88))();
  }

  return result;
}

uint64_t destroy for AlignmentModifiedLayoutComputer.Engine()
{
}

uint64_t AlignmentModifiedLayoutComputer.Engine.sizeThatFits(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(v1 + 24);
  v7 = one-time initialization token for lockAssertionsAreEnabled;

  if (v7 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
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
LABEL_7:
    v9 = v2;
    v10 = v3;
    v11 = v4;
    v12 = v5;
    (*(*v6 + 120))(&v9);
  }

  return result;
}

uint64_t AlignmentModifiedLayoutComputer.Engine.explicitAlignment(_:at:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  if (*v2 == a1)
  {
    v7 = v2[1];
    v8 = v2[4];
    v15 = v2[3];
    v16 = v8;
    v17 = v4;
    v18 = v3;
    v19 = v6;
    v20 = v5;

    v9 = v7(&v15);

    return *&v9;
  }

  else
  {
    v12 = v2[3];
    v13 = one-time initialization token for lockAssertionsAreEnabled;

    if (v13 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_9;
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
LABEL_9:
      v15 = v4;
      v16 = v3;
      v17 = v6;
      v18 = v5;
      v14 = (*(*v12 + 144))(a1, &v15);

      return v14;
    }
  }

  return result;
}

uint64_t Transition.animation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  Transition.transaction(_:)(partial apply for closure #1 in Transition.animation(_:), v6, a2, a3);
}

uint64_t Font.italic()(uint64_t a1, void (*a2)(void))
{
  a2(0);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;

  return v3;
}

void type metadata accessor for FontBox<Font.StaticModifierProvider<Font.BoldModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.BoldModifier>>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.BoldModifier>, &type metadata for Font.BoldModifier, &protocol witness table for Font.BoldModifier, type metadata accessor for Font.StaticModifierProvider);
    lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.BoldModifier> and conformance Font.StaticModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.BoldModifier>>);
    }
  }
}

void type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.BoldModifier> and conformance Font.StaticModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.BoldModifier> and conformance Font.StaticModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.BoldModifier> and conformance Font.StaticModifierProvider<A>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.BoldModifier>, &type metadata for Font.BoldModifier, &protocol witness table for Font.BoldModifier, type metadata accessor for Font.StaticModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.BoldModifier> and conformance Font.StaticModifierProvider<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Font.StaticModifierProvider<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t VerticalAlignment.init(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  v4 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, a1, a2);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  return 2 * v4 + 3;
}

uint64_t Text.bold()(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  type metadata accessor for BoldTextModifier();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
  }

  v10 = *(a4 + 2);
  v9 = *(a4 + 3);
  if (v10 >= v9 >> 1)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, a4);
  }

  *(a4 + 2) = v10 + 1;
  v11 = &a4[16 * v10];
  *(v11 + 4) = v8;
  v11[40] = -64;
  return a1;
}

uint64_t View.imageScale(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);
}

uint64_t View.alignmentGuide(_:computeValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  return View.modifier<A>(_:)(v5, a4, &type metadata for _AlignmentWritingModifier);
}

double CGRect.outset(by:)(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v11 = a5;
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  if (!CGRectIsNull(v22))
  {
    v16 = -a3;
    v23.origin.x = v11;
    v23.origin.y = a6;
    v23.size.width = a7;
    v23.size.height = a8;
    v24 = CGRectStandardize(v23);
    if (a2 == a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = a2;
    }

    v11 = v24.origin.x - v17;
    v18 = v24.origin.y - a1;
    v19 = v24.size.width - (-a4 - a2);
    v20 = v24.size.height - (v16 - a1);
    v25.origin.x = v24.origin.x - v17;
    v25.origin.y = v24.origin.y - a1;
    v25.size.width = v19;
    v25.size.height = v20;
    if (CGRectGetWidth(v25) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }

    v26.origin.x = v11;
    v26.origin.y = v18;
    v26.size.width = v19;
    v26.size.height = v20;
    if (CGRectGetHeight(v26) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  return v11;
}

uint64_t _TextRendererViewModifier.MakeTextRenderer.updateValue()(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-1] - v9;
  v12 = *(v11 + 48);
  v13 = *(v1 + 8);
  v24 = *(a1 + 24);
  Value = AGGraphGetValue();
  v16 = v15;
  (*(*(v3 - 8) + 16))(v10, Value, v3);
  v10[v12] = v16 & 1;
  v18 = *AGGraphGetValue();
  if (v16)
  {
  }

  else
  {
    if ((v17 & 1) == 0)
    {
      return (*(v5 + 8))(v10, TupleTypeMetadata2);
    }

    v19 = swift_retain_n();
    v20 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v19);

    if ((v20 & 1) == 0)
    {

      return (*(v5 + 8))(v10, TupleTypeMetadata2);
    }
  }

  PropertyList.Tracker.reset()();
  (*(v5 + 16))(v7, v10, TupleTypeMetadata2);
  if (v18)
  {
    v22 = *(v18 + 64);
  }

  else
  {
    v22 = 0;
  }

  type metadata accessor for TextRendererBox();
  v23 = *(v13 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v23 + 16));
  *(v23 + 24) = v22;
  os_unfair_lock_unlock((v23 + 16));

  v25[0] = v18;
  v25[1] = v13;
  v25[0] = TextRendererBox.__allocating_init(_:in:)(v7, v25);
  type metadata accessor for TextRendererBoxBase();
  AGGraphSetOutputValue();

  (*(v5 + 8))(v10, TupleTypeMetadata2);
}

char *TextRendererBox.__allocating_init(_:in:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v6 = *a2;
  v5 = a2[1];
  (*(*(*(*v4 + 128) - 8) + 32))(&v4[*(*v4 + 144)], a1);
  *(v4 + 2) = v6;
  *(v4 + 3) = v5;
  return v4;
}

uint64_t TextChildQuery.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028TextRendererAddsDrawingGroupV0031_7F70C8A76EE0356881289646072938J0LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028TextRendererAddsDrawingGroupV0031_7F70C8A76EE0356881289646072938J0LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>, &type metadata for EnvironmentValues.TextRendererAddsDrawingGroupKey, &protocol witness table for EnvironmentValues.TextRendererAddsDrawingGroupKey, type metadata accessor for EnvironmentPropertyKey);
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

SwiftUI::Spacing __swiftcall ResolvedStyledText.TextLayoutManager.spacing()()
{
  if (*(v1 + 216))
  {
    v2 = v0;
    v3 = swift_beginAccess();
    v4 = (v1 + 424);
    v5 = *(v1 + 488);
    if ((v5 & 0xFF00) == 0x200)
    {
      v6 = MEMORY[0x193AC38C0](v3);
      swift_beginAccess();
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)((*(v1 + 97) & 1) == 0, 0, &v42, 1.0, INFINITY, INFINITY);
      outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v42);
      objc_autoreleasePoolPop(v6);
      v7 = *&v43[24];
      v8 = *&v43[40];
      v9 = *&v43[56];
      *(v1 + 456) = *&v43[40];
      *(v1 + 472) = v9;
      v5 = *&v43[72];
      *(v1 + 488) = *&v43[72];
      v10 = *&v43[8];
      *v4 = *&v43[8];
      *(v1 + 440) = v7;
      v48 = v10;
      v49 = v7;
      v50 = v8;
      v51 = v9;
    }

    else
    {
      v12 = *(v1 + 440);
      v48 = *v4;
      v49 = v12;
      v13 = *(v1 + 472);
      v50 = *(v1 + 456);
      v51 = v13;
    }

    v52[0] = v48;
    v52[1] = v49;
    v52[2] = v50;
    v52[3] = v51;
    v53 = v5;
    swift_endAccess();
    ResolvedStyledText.maxFontMetrics.getter(v32);
    swift_beginAccess();
    v14 = *(v1 + 128);
    v15 = *(v1 + 96);
    v38 = *(v1 + 112);
    v39 = v14;
    v16 = *(v1 + 128);
    v40 = *(v1 + 144);
    v17 = *(v1 + 64);
    v18 = *(v1 + 32);
    v34 = *(v1 + 48);
    v35 = v17;
    v19 = *(v1 + 64);
    v20 = *(v1 + 96);
    v36 = *(v1 + 80);
    v37 = v20;
    v21 = *(v1 + 32);
    v33[0] = *(v1 + 16);
    v33[1] = v21;
    v28 = v38;
    v29 = v16;
    v30 = *(v1 + 144);
    v24 = v34;
    v25 = v19;
    v26 = v36;
    v27 = v15;
    v41 = *(v1 + 160);
    v31 = *(v1 + 160);
    v22 = v33[0];
    v23 = v18;
    outlined init with copy of TextLayoutProperties(v33, &v42);
    static Spacing.textSpacing(maxFontMetrics:idealMetrics:layoutProperties:)(v32, v52, &v22, v2);
    v44 = v28;
    v45 = v29;
    v46 = v30;
    v47 = v31;
    *&v43[16] = v24;
    *&v43[32] = v25;
    *&v43[48] = v26;
    *&v43[64] = v27;
    v42 = v22;
    *v43 = v23;
    return outlined destroy of TextLayoutProperties(&v42);
  }

  else
  {

    return Spacing.init()();
  }
}

void ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(int a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v7 = v6;
  v124 = *MEMORY[0x1E69E9840];
  v14 = *(v6 + 216);
  swift_beginAccess();
  v15 = ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v14, a4);
  swift_endAccess();
  if (a1)
  {
    v16 = a5;
  }

  else
  {
    v16 = a6;
  }

  if ((a1 & 1) == 0)
  {
    a6 = a5;
  }

  swift_beginAccess();
  v17 = v16 - (*(v6 + 176) + *(v6 + 192));
  if (v17 < 0.0)
  {
    v17 = 0.0;
  }

  v18 = a6 - (*(v6 + 168) + *(v6 + 184));
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  if (a1)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (a1)
  {
    v20 = v17;
  }

  else
  {
    v20 = v18;
  }

  swift_beginAccess();
  v21 = *(v6 + 152);
  aBlock = *(v6 + 136);
  v22.i64[1] = *(&aBlock + 1);
  *&v113 = v21;
  LOBYTE(v116) = *(v6 + 43);
  *v22.i64 = v20;
  TextShape.resolve(in:layoutDirection:)(&v116, &v119, v22, *&v19);
  v23 = v119;
  v25 = *(&v120 + 1);
  v24 = v120;
  v26 = *&v121;
  v27 = v20 + *(v6 + 104);
  LOBYTE(v119) = 1;
  LOBYTE(aBlock) = 1;
  v28 = *(v6 + 392) < 0;
  *&v119 = 0;
  BYTE8(v119) = v28;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 1;
  aBlock = v23;
  v107 = v24;
  v113 = __PAIR128__(*&v25, v24);
  v114 = *&v26;
  v29 = ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(&v119, v27, v19, a4, a1 & 0xFFFFFF01, &aBlock);
  v31 = v30;
  v33 = v32;
  v34 = v29;
  v35 = computeLayoutInfo #1 () in ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v15);
  v116 = 0.0;
  v117 = 0;
  v118 = 0;
  if (v36)
  {
    if ((*(v7 + 392) & 0x8000000000000000) != 0)
    {
      v55 = 0.0;
      v71 = 1;
    }

    else
    {
      v108 = *(v7 + 392);
      v96 = v34;
      v97 = v25;
      v98 = v26;
      v99 = a2;
      v100 = a1;
      v101 = v15;
      v102 = v35;
      v105 = v36;
      v103 = v37;
      v104 = v38;
      v40 = *(v7 + 352);
      v39 = *(v7 + 360);
      v41 = *(v7 + 376);
      v42 = *(v7 + 384);
      v43 = *(v7 + 368);
      descent = MEMORY[0x1E69E7CC0];
      LOBYTE(leading) = 0;
      swift_beginAccess();
      v106 = v43 & 1;
      outlined copy of Text.Layout.Line.Line(v40);
      v44 = ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v14, a4);
      swift_endAccess();
      v45 = *(v7 + 260);
      v46 = (v45 >> 3) & 0x10;
      v47 = *(v7 + 256) & ((v45 & 2) >> 1);
      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      *(v48 + 24) = 0;
      *(v48 + 32) = 0;
      *(v48 + 40) = &descent;
      *(v48 + 48) = v46;
      *(v48 + 56) = &leading;
      v49 = swift_allocObject();
      *(v49 + 16) = closure #1 in ResolvedStyledText.TextLayoutManager.collectTextLayout(origin:scale:)partial apply;
      *(v49 + 24) = v48;
      v114 = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
      v115 = v49;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v113 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
      *(&v113 + 1) = &block_descriptor_35;
      v50 = _Block_copy(&aBlock);

      v51 = [v44 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v50];
      swift_unknownObjectRelease();

      _Block_release(v50);
      LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

      if (v46)
      {
        __break(1u);
      }

      v93 = v33;
      v94 = v27;
      v95 = v19;
      v52 = descent;
      v53 = LOBYTE(leading);
      v54 = *(*&descent + 16);

      v116 = v52;
      v117 = v53;
      v118 = v54;
      *&aBlock = v40;
      *(&aBlock + 1) = v39;
      LOBYTE(v113) = v106;
      *(&v113 + 1) = v41;
      v114 = v42;
      LODWORD(v115) = v108 | 2;
      outlined copy of Text.Layout.Line.Line(v40);
      Text.Layout.truncateLast(_:width:)();
      outlined consume of Text.Layout.Line.Line(aBlock);
      v55 = v116;
      if (v116 == 0.0)
      {
        __break(1u);
        goto LABEL_67;
      }

      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      v60 = *(*&v116 + 16);
      v91 = v20;
      v92 = a4;
      if (v60)
      {

        v61 = (*&v55 + 64);
        do
        {
          v69 = *(v61 - 4);
          v70 = *(v61 - 1);
          v109 = *v61;
          if (*(v61 - 2))
          {
            outlined copy of Text.Layout.Line.Line(v69);
            outlined copy of Text.Layout.Line.Line(v69);

            [v69 typographicBounds];
            TypographicBounds = v62;
            v65 = v64;
            [v69 glyphOrigin];
            v67 = v66;

            v68 = v65 - v67;
          }

          else
          {
            outlined copy of Text.Layout.Line.Line(v69);
            outlined copy of Text.Layout.Line.Line(v69);

            descent = 0.0;
            *&aBlock = 0;
            leading = 0.0;
            TypographicBounds = CTLineGetTypographicBounds(v69, &aBlock, &descent, &leading);

            v68 = descent;
            v67 = *&aBlock;
          }

          v131.origin.x = v70 + 0.0;
          v131.origin.y = v109 + 0.0 - v67;
          v131.size.height = v68 + v67;
          v125.origin.x = x;
          v125.origin.y = y;
          v125.size.width = width;
          v125.size.height = height;
          v131.size.width = TypographicBounds;
          v126 = CGRectUnion(v125, v131);
          x = v126.origin.x;
          y = v126.origin.y;
          width = v126.size.width;
          height = v126.size.height;
          outlined consume of Text.Layout.Line.Line(v69);
          v61 += 6;
          --v60;
        }

        while (v60);
      }

      else
      {
      }

      v127.origin.x = x;
      v127.origin.y = y;
      v127.size.width = width;
      v127.size.height = height;
      IsNull = CGRectIsNull(v127);
      if (IsNull)
      {
        v73 = 0.0;
      }

      else
      {
        v73 = height;
      }

      if (IsNull)
      {
        v74 = 0.0;
      }

      else
      {
        v74 = width;
      }

      if (IsNull)
      {
        v75 = 0.0;
      }

      else
      {
        v75 = y;
      }

      if (IsNull)
      {
        v76 = 0.0;
      }

      else
      {
        v76 = x;
      }

      v128.origin.x = v76;
      v128.origin.y = v75;
      v128.size.width = v74;
      v128.size.height = v73;
      MinX = CGRectGetMinX(v128);
      if (MinX < 0.0)
      {
        v78 = 0.0;
      }

      else
      {
        v78 = MinX;
      }

      v129.origin.x = v76;
      v129.origin.y = v75;
      v129.size.width = v74;
      v129.size.height = v73;
      MaxX = CGRectGetMaxX(v129);
      v20 = v91;
      if (MaxX >= v91)
      {
        MaxX = v91;
      }

      v130.size.width = MaxX - v78;
      v130.origin.x = v78;
      v130.origin.y = v75;
      v130.size.height = v73;
      v31 = CGRectGetWidth(v130);
      outlined consume of Text.Layout.Line.Line(v40);
      v71 = 1;
      v15 = v101;
      v35 = v102;
      v37 = v103;
      v38 = v104;
      v36 = v105;
      a4 = v92;
      v33 = v93;
      a2 = v99;
      LOWORD(a1) = v100;
      v27 = v94;
      v19 = v95;
      v25 = v97;
      v26 = v98;
      v34 = v96;
    }
  }

  else
  {
    v55 = 0.0;
    v71 = 0;
  }

  v80 = BYTE1(a1);
  v81 = v31 - *(v7 + 104);
  if ((a2 & (v81 < v20)) != 0)
  {
    v81 = v20;
  }

  if (v107 == 4)
  {
    goto LABEL_57;
  }

  if (v107 != 1)
  {
    if (v107 == 3)
    {
      v81 = v81 + v25;
      goto LABEL_53;
    }

LABEL_67:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_53:
  if ((a1 & 0x100) == 0)
  {
    v81 = v27;
  }

  if (v33 <= v26)
  {
    v33 = v26;
  }

LABEL_57:
  if (v34)
  {
    v82 = v81;
  }

  else
  {
    v82 = v33;
  }

  if (v34)
  {
    v81 = v33;
  }

  v83 = *(v7 + 112);
  v84 = ceil(v82);
  v85 = ceil(v81);
  v86 = v83 * ceil(v82 / v83);
  v87 = v83 * ceil(v81 / v83);
  if (v83 == 1.0)
  {
    v87 = v85;
    v86 = v84;
  }

  v88 = a1 & 1;
  LOBYTE(aBlock) = 0;
  v89 = v117;
  v90 = v118;
  *a3 = v20;
  *(a3 + 8) = v19;
  *(a3 + 16) = v88;
  *(a3 + 17) = v80;
  *(a3 + 24) = v86;
  *(a3 + 32) = v87;
  *(a3 + 40) = a4;
  *(a3 + 48) = v37;
  *(a3 + 56) = v38;
  *(a3 + 64) = 0;
  *(a3 + 72) = v20;
  *(a3 + 80) = v35;
  *(a3 + 88) = 0;
  *(a3 + 89) = v36 & 1;
  *(a3 + 90) = v71;

  *(a3 + 96) = v55;
  *(a3 + 104) = v89;
  *(a3 + 112) = v90;
  NSAttributedString.Metrics.update(layoutMargins:pixelLength:)(*(v7 + 168), *(v7 + 176), *(v7 + 184), *(v7 + 192), *(v7 + 112));
}

id ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(id a1, double a2)
{
  if (a2 == 1.0)
  {
    if (*(v2 + 32) == 1)
    {
      [*v2 setAttributedString_];
      v5 = *(v2 + 8);
      v6 = [v5 documentRange];
      [v5 invalidateLayoutForRange_];

      v7 = 0;
      *(v2 + 32) = 0;
LABEL_20:
      v23 = *(v2 + 8);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7);
      return v23;
    }

LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  v8 = *(v2 + 24);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    if (!a1)
    {
      goto LABEL_19;
    }

    [a1 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v8 = v25;
    if (!v25)
    {
      goto LABEL_19;
    }
  }

  if (*(v2 + 24) && *(v2 + 16) == a2)
  {
    v10 = 0;
    v7 = 0;
    if (*(v2 + 32))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (one-time initialization token for kitFont != -1)
  {
    swift_once();
  }

  v11 = static NSAttributedStringKey.kitFont;
  v12 = [v8 length];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = v8;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:);
  *(v14 + 24) = v13;
  aBlock[4] = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_14;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = v8;

  [v17 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{0, v15}];
  _Block_release(v15);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    v19 = *(v2 + 24);
    v20 = v17;

    *(v2 + 16) = a2;
    *(v2 + 24) = v8;
    v10 = partial apply for closure #1 in ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:);
LABEL_14:
    [*v2 setAttributedString_];
    v21 = *(v2 + 8);
    v22 = [v21 documentRange];
    [v21 invalidateLayoutForRange_];

    v7 = v10;
LABEL_15:

    *(v2 + 32) = 1;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18D2CFA94()
{

  return swift_deallocObject();
}

id ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(_BYTE *a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  width = *a6;
  v53 = *(a6 + 8);
  v13 = *(a6 + 16);
  v15 = *(a6 + 24);
  v14 = *(a6 + 32);
  v16 = *(v6 + 216);
  swift_beginAccess();
  v17 = ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v16, a4);
  swift_endAccess();
  result = [v17 textContainer];
  if (!result)
  {
LABEL_72:
    __break(1u);
    return result;
  }

  v19 = result;
  if (a2 == INFINITY)
  {
    v20 = 1.79769313e308;
  }

  else
  {
    v20 = a2;
  }

  if (a2 > 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = COERCE_DOUBLE(1);
  }

  if (a3 == INFINITY)
  {
    v22 = 1.79769313e308;
  }

  else
  {
    v22 = a3;
  }

  swift_beginAccess();
  v23 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v23 = 0;
  }

  if (a3 > 0.0)
  {
    v24 = v22;
  }

  else
  {
    v24 = COERCE_DOUBLE(1);
  }

  v25 = v21;
  if (a3 == 0.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = v23;
  }

  if (a3 == 0.0)
  {
    v27 = 1.79769313e308;
  }

  else
  {
    v27 = v24;
  }

  [v19 size];
  LODWORD(v30) = v29 != v27 || v28 != v21;
  if (v30 == 1)
  {
    [v19 setSize_];
  }

  v31 = v14;
  if ([v19 maximumNumberOfLines] != v26)
  {
    [v19 setMaximumNumberOfLines_];
    LODWORD(v30) = 1;
  }

  v32 = v54;
  if (*(v7 + 536) != width || *(v7 + 544) != v54)
  {
    goto LABEL_35;
  }

  v33 = *(v7 + 552);
  if (v33 != 4)
  {
    if (v13 == 4)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

  if (v13 != 4)
  {
    goto LABEL_35;
  }

  while (1)
  {
    if (a1[8] == 1)
    {
      v44 = (*(v7 + 41) + 3);
    }

    else
    {
      v44 = *a1;
    }

    if ([v19 lineBreakMode] != v44)
    {
      [v19 setLineBreakMode_];
      LODWORD(v30) = 1;
    }

    a1 = [v17 documentRange];
    if (v30)
    {
      [v17 invalidateLayoutForRange_];
    }

    [v17 ensureLayoutForRange_];
    [v17 usageBoundsForTextContainer];
    x = v58.origin.x;
    y = v58.origin.y;
    width = v58.size.width;
    height = v58.size.height;
    if (CGRectGetHeight(v58) == v27)
    {
      break;
    }

    v30 = 0;
    v13 = 0;
    if (v25 >= 0.0)
    {
      goto LABEL_59;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    if (v33 != v13 || *(v7 + 560) != v15 || *(v7 + 568) != v31)
    {
LABEL_35:
      *(v7 + 536) = width;
      *(v7 + 544) = v32;
      *(v7 + 552) = v13;
      *(v7 + 560) = v15;
      *(v7 + 568) = v31;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v34 = static CoreGlue2.shared;
      if (v13 == 4)
      {
        v35 = static CoreGlue2.shared;
        v36 = v19;
        v37 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v38 = width - v15;
        v39 = 0.0;
        if (v13 == 3)
        {
          v40 = v38;
        }

        else
        {
          v40 = 0.0;
        }

        type metadata accessor for _ContiguousArrayStorage<Path>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Path>, &type metadata for Path, MEMORY[0x1E69E6F90]);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_18DDA6EB0;
        v41 = v34;
        v42 = v19;
        v57.origin.y = 0.0;
        v57.origin.x = v40;
        v57.size.width = v15;
        v57.size.height = v31;
        if (CGRectIsNull(v57))
        {
          v43 = 6;
          v15 = 0.0;
          v31 = 0.0;
        }

        else
        {
          v43 = 0;
          v39 = v40;
        }

        *(v37 + 32) = v39;
        *(v37 + 40) = 0;
        *(v37 + 48) = v15;
        *(v37 + 56) = v31;
        *(v37 + 64) = v43;
      }

      (*((*MEMORY[0x1E69E7D40] & *v34) + 0xA0))(v19, v37);

      LODWORD(v30) = 1;
    }
  }

  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MaxY = CGRectGetMaxY(v59);
  v13 = swift_allocObject();
  *(v13 + 16) = &MaxY;
  v48 = swift_allocObject();
  *(v48 + 16) = partial apply for closure #1 in ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:);
  *(v48 + 24) = v13;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_24_0;
  v49 = _Block_copy(aBlock);

  v50 = [v17 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v49];
  swift_unknownObjectRelease();
  _Block_release(v49);
  LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

  if (v49)
  {
    __break(1u);
    goto LABEL_72;
  }

  v31 = MaxY;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  if (CGRectGetMaxY(v60) < v31)
  {
    v31 = MaxY;
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    height = v31 - CGRectGetMinY(v61);
  }

  v30 = partial apply for closure #1 in ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:);
  if (v25 < 0.0)
  {
    goto LABEL_66;
  }

LABEL_59:
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  CGRectGetMinX(v62);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  CGRectGetMaxX(v63);
  if ((*(v7 + 40) & 1) == 0)
  {
    v51 = *(v7 + 32);
    if (v51 >= 1)
    {
      if (v16)
      {
        if ([v16 length] >= 1)
        {
          NSAttributedString.limitedFontHeight(by:)(v51);
        }
      }
    }
  }

  v52 = *(v7 + 97);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v30);
  return ((v52 & 1) == 0);
}

int8x16_t TextShape.resolve(in:layoutDirection:)@<Q0>(_BYTE *a1@<X0>, void *a2@<X8>, int8x16_t result@<Q0>, uint64_t a4@<D1>)
{
  v5 = *v4;
  if (v5 == 2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[3] = 0;
    a2[4] = 0;
    a2[2] = 4;
    return result;
  }

  v6 = *(v4 + 8);
  if ((v5 & 1) == 0)
  {
    if (*a1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  if (*a1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v7 = 3;
LABEL_8:
  result.i64[1] = a4;
  result = vbslq_s8(vceqq_f64(result, vdupq_n_s64(0x7FF0000000000000uLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), result);
  *a2 = result;
  a2[2] = v7;
  *(a2 + 3) = v6;
  return result;
}

char *computeLayoutInfo #1 () in ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(void *a1)
{
  v25 = 0;
  v26 = 1;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  v21 = 0;
  v20 = 0;
  v2 = swift_allocObject();
  v2[2] = &v20;
  v2[3] = &v25;
  v2[4] = &v23;
  v2[5] = &v22;
  v2[6] = &v21;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in computeLayoutInfo #1 () in ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:);
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_45;
  v4 = _Block_copy(aBlock);

  v5 = [a1 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v4];
  swift_unknownObjectRelease();
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (!v21)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v7 = v21;
    result = [v7 characterRange];
    if (v20 == 1)
    {
      goto LABEL_6;
    }

    v9 = &result[v8];
    if (!__OFADD__(result, v8))
    {
      v10 = [v7 attributedString];
      v11 = [v10 length];

      if (v9 >= v11)
      {
        v14 = [v7 textLineFragmentRange];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 endLocation];

          v17 = [a1 documentRange];
          v18 = [v17 endLocation];

          [v16 compare_];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_7;
        }
      }

LABEL_6:

LABEL_7:
      v12 = v21;
LABEL_9:
      v13 = v22;

      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

BOOL closure #1 in computeLayoutInfo #1 () in ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void **a6)
{
  v11 = a1;
  v12 = [a1 state];
  if (v12 == 3)
  {
    if (*a2)
    {
      v13 = 1;
    }

    else
    {
      v14 = [v11 truncatedRanges];
      if (v14)
      {
        v15 = v14;
        type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextRange);
        v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v16 >> 62)
        {
          goto LABEL_23;
        }

        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_7;
      }

      v13 = 0;
    }

    while (1)
    {
      *a2 = v13;
      [v11 layoutFragmentFrame];
      v19 = v18;
      v20 = [v11 textLineFragments];
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextLineFragment);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
        a2 = __CocoaSet.count.getter();
        if (!a2)
        {
          goto LABEL_20;
        }
      }

      else
      {
        a2 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a2)
        {
          goto LABEL_20;
        }
      }

      if (a2 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_23:
      v17 = __CocoaSet.count.getter();
LABEL_7:

      v13 = v17 != 0;
    }

    v21 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x193AC03C0](v21, v11);
      }

      else
      {
        v23 = *(v11 + 8 * v21 + 32);
      }

      v24 = v23;
      [v23 typographicBounds];
      v26 = v19 + v25;
      [v24 glyphOrigin];
      v28 = v26 + v27;
      if (*(a3 + 8) == 1)
      {
        *a3 = v28;
        *(a3 + 8) = 0;
      }

      ++v21;
      *a4 = v28;
      *(a4 + 8) = 0;
      ++*a5;
      v22 = *a6;
      *a6 = v24;
    }

    while (a2 != v21);
LABEL_20:

    v12 = 3;
  }

  return v12 == 3;
}

void ResolvedStyledText.TextLayoutManager.layoutValue(in:with:applyingMarginOffsets:)(char a1@<W0>, void *a2@<X8>, double a3@<D4>, uint64_t a4@<D5>)
{
  v5 = v4;
  v10 = MEMORY[0x193AC38C0]();
  ResolvedStyledText.TextLayoutManager.prepareLayoutManager(in:with:applyingMarginOffsets:)(a1, &v60, a3, *&a4);
  v75 = v66;
  v76 = v67;
  v77 = v68;
  v71 = v62;
  v72 = v63;
  v73 = v64;
  v74 = v65;
  v69 = v60;
  v70 = v61;
  if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(&v69) == 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
LABEL_16:
    objc_autoreleasePoolPop(v10);
    return;
  }

  v11 = v69;
  v12 = *&v69 + 0.0;
  swift_beginAccess();
  v13 = *(v5 + 152);
  aBlock = *(v5 + 136);
  v14.i64[1] = *(&aBlock + 1);
  *&v46 = v13;
  LOBYTE(v59) = *(v5 + 43);
  *v14.i64 = a3;
  TextShape.resolve(in:layoutDirection:)(&v59, &v49, v14, a4);
  v15 = v76;
  if (v76)
  {
    v16 = BYTE8(v76);
    v17 = v77;
    if (*&v11 != 0.0 || *(&v11 + 1) != 0.0)
    {
      v18 = *(v76 + 16);
      if (v18)
      {
        v42 = v77;
        v43 = BYTE8(v76);
        v44 = v10;
        v55 = v66;
        v56 = v67;
        v57 = v68;
        v51 = v62;
        v52 = v63;
        v53 = v64;
        v54 = v65;
        v49 = v60;
        v50 = v61;
        outlined init with copy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)(&v49, &aBlock);
        *&aBlock = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
        v19 = (v15 + 72);
        v15 = aBlock;
        do
        {
          v20 = *(v19 - 5);
          v21 = *(v19 - 4);
          v22 = *(v19 - 24);
          v23 = *(v19 - 2);
          v24 = *(v19 - 1);
          v25 = *v19;
          outlined copy of Text.Layout.Line.Line(v20);
          *&aBlock = v15;
          v27 = *(v15 + 16);
          v26 = *(v15 + 24);
          if (v27 >= v26 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
            v15 = aBlock;
          }

          v19 += 12;
          *(v15 + 16) = v27 + 1;
          v28 = v15 + 48 * v27;
          *(v28 + 32) = v20;
          *(v28 + 40) = v21;
          *(v28 + 48) = v22;
          *(v28 + 56) = v12 + v23;
          *(v28 + 64) = *(&v11 + 1) + v24;
          *(v28 + 72) = v25;
          --v18;
        }

        while (v18);
        outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v60);
        outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v60);
        v10 = v44;
        v17 = v42;
        v16 = v43;
      }

      else
      {
        outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v60);
        v15 = MEMORY[0x1E69E7CC0];
      }
    }

    goto LABEL_15;
  }

  v29 = v49;
  v30 = v50;
  v31 = v51;
  LOBYTE(v59) = 1;
  *&v49 = 0;
  BYTE8(v49) = 1;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  LOBYTE(v53) = 1;
  v32 = *(&v72 + 1);
  aBlock = v29;
  v46 = v30;
  v47 = v31;
  ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(&v49, *&v70, *(&v70 + 1), *(&v72 + 1), v71 | (BYTE1(v71) << 8), &aBlock);
  v59 = MEMORY[0x1E69E7CC0];
  v58 = 0;
  v33 = *(v5 + 216);
  swift_beginAccess();
  v34 = ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v33, v32);
  swift_endAccess();
  v35 = *(v5 + 260);
  v36 = (v35 >> 3) & 0x10;
  v37 = *(v5 + 256) & ((v35 & 2) >> 1);
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v12;
  *(v38 + 32) = *(&v11 + 1);
  *(v38 + 40) = &v59;
  *(v38 + 48) = v36;
  *(v38 + 56) = &v58;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for closure #1 in ResolvedStyledText.TextLayoutManager.collectTextLayout(origin:scale:);
  *(v39 + 24) = v38;
  v47 = partial apply for thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  v48 = v39;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v46 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
  *(&v46 + 1) = &block_descriptor_22;
  v40 = _Block_copy(&aBlock);

  v41 = [v34 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v40];
  swift_unknownObjectRelease();

  _Block_release(v40);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if ((v34 & 1) == 0)
  {
    v15 = v59;
    v16 = v58;
    v17 = *(v59 + 16);

    outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v60);
LABEL_15:
    *a2 = v15;
    a2[1] = v16 & 1;
    a2[2] = v17;
    goto LABEL_16;
  }

  __break(1u);
}

void NSAttributedString.Metrics.update(layoutMargins:pixelLength:)(double a1, double a2, double a3, double a4, double a5)
{
  v6 = a1 + a3 + v5[1];
  *v5 = a2 + a4 + *v5;
  v5[1] = v6;
  v7 = v5[3] + a1;
  v8 = a5 == 1.0;
  v9 = round(v7 / a5) * a5;
  v10 = v5[4] + a1;
  v11 = v9 - v7;
  v12 = ceil((v10 + v9 - v7) / a5) * a5;
  v13 = round(v7);
  v14 = v13 - v7;
  v15 = ceil(v10 + v14);
  if (v8)
  {
    v9 = v13;
  }

  if (v8)
  {
    v11 = v14;
  }

  if (!v8)
  {
    v15 = v12;
  }

  v5[3] = v9;
  v5[4] = v15;
  v5[5] = v11;
}

uint64_t TextProxy.sizeThatFits(_:)(uint64_t result, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) != 0 || (result & 0x7FFFFFFFFFFFFFFFLL) != 0 || (a4 & 1) != 0 || (a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v4;
    v13 = v5;
    v14 = v6;
    v7 = *v4;
    v8 = result;
    v9 = a2 & 1;
    v10 = a3;
    v11 = a4 & 1;
    return (*(*v7 + 232))(&v8);
  }

  return result;
}

double ResolvedStyledText.TextLayoutManager.sizeThatFits(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (*(v1 + 97))
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  if (*(v1 + 97))
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (*(v1 + 97))
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

  if (*(v1 + 97))
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  v10 = v6;
  v11 = v8;
  if (v9)
  {
    v11 = INFINITY;
  }

  if (v7)
  {
    v10 = INFINITY;
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(v12 | *(v1 + 97) ^ 1, &v14, v10, v11);
  return v14;
}

double specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)@<D0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = MEMORY[0x193AC38C0]();
  swift_beginAccess();
  if (a1)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  if (a1)
  {
    v11 = a4;
  }

  else
  {
    v11 = a3;
  }

  v12 = *(v4 + 416);
  v13 = *(v12 + 2);
  if (!v13)
  {
LABEL_25:
    swift_beginAccess();
    v22 = *(v4 + 48);
    if (v22 >= 1.0)
    {
      goto LABEL_52;
    }

    v23 = v22 > COERCE_DOUBLE(1) ? *(v4 + 48) : COERCE_DOUBLE(1);
    ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(a1 & 1, 0, &v73, 1.0, a3, INFINITY);
    outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v73);
    if (BYTE9(v78))
    {
      goto LABEL_40;
    }

    v24 = *(&v74 + 1);
    if (v74)
    {
      v25 = *(&v74 + 1);
    }

    else
    {
      v25 = *&v75;
    }

    if (v74)
    {
      v24 = *&v75;
    }

    if (v25 > a3 || v24 > a4)
    {
LABEL_40:
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(a1 & 1, 0, &v57, v23, a3, INFINITY);
      outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v57);
      if ((BYTE9(v62) & 1) == 0)
      {
        v27 = *(&v58 + 1);
        if (v58)
        {
          v28 = *(&v58 + 1);
        }

        else
        {
          v28 = *&v59;
        }

        if (v58)
        {
          v27 = *&v59;
        }

        if (v28 <= a3 && v27 <= a4)
        {
          v40 = 1.0;
          v41 = v23;
          do
          {
            ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(a1 & 1, 0, &v65, v40 + (v40 - v41) * -0.5, a3, INFINITY);
            *&v54[48] = v69;
            *&v54[64] = v70;
            v55 = v71;
            v56 = v72;
            v53 = v65;
            *v54 = v66;
            *&v54[16] = v67;
            *&v54[32] = v68;
            outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v53);
            if (v54[73])
            {
              v40 = v40 + (v40 - v41) * -0.5;
            }

            else
            {
              v42 = *&v54[8];
              if (v54[0])
              {
                v43 = *&v54[8];
              }

              else
              {
                v43 = *&v54[16];
              }

              if (v54[0])
              {
                v42 = *&v54[16];
              }

              v44 = v42 > a4;
              if (v42 > a4)
              {
                v45 = v23;
              }

              else
              {
                v45 = v40 + (v40 - v41) * -0.5;
              }

              if (v44)
              {
                v46 = v41;
              }

              else
              {
                v46 = v40 + (v40 - v41) * -0.5;
              }

              if (v44)
              {
                v47 = v40 + (v40 - v41) * -0.5;
              }

              else
              {
                v47 = v40;
              }

              if (v43 > a3)
              {
                v40 = v40 + (v40 - v41) * -0.5;
              }

              else
              {
                v23 = v45;
                v41 = v46;
                v40 = v47;
              }
            }
          }

          while (v40 - v41 >= 0.01);
          ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(a1 & 0xFFFFFF01, 0, &v65, v23, a3, a4);
          goto LABEL_54;
        }
      }

      v30 = a1 & 0xFFFFFF01;
      v31 = v23;
      v32 = a3;
      v33 = a4;
    }

    else
    {
LABEL_52:
      v31 = 1.0;
      v30 = a1 & 0xFFFFFF01;
      v32 = a3;
      v33 = a4;
    }

    ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v30, 0, &v65, v31, v32, v33);
LABEL_54:
    v61 = v69;
    v62 = v70;
    v63 = v71;
    v64 = v72;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v60 = v68;
    if (ResolvedStyledText.TextLayoutManager.minorAxisIsFlexible.getter())
    {
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(a1 & 0xFFFFFF01, 1u, &v73, *(&v59 + 1), a3, a4);
      outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v57);
    }

    else
    {
      v77 = v61;
      v78 = v62;
      v79 = v63;
      v80 = v64;
      v73 = v57;
      v74 = v58;
      v75 = v59;
      v76 = v60;
    }

    *&v54[48] = v77;
    *&v54[64] = v78;
    v55 = v79;
    v56 = v80;
    v53 = v73;
    *v54 = v74;
    *&v54[16] = v75;
    *&v54[32] = v76;
    outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 416) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      *(v4 + 416) = v12;
    }

    v36 = *(v12 + 2);
    v35 = *(v12 + 3);
    if (v36 >= v35 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v12);
    }

    v52 = *&v54[72];
    v50 = *&v54[40];
    v51 = *&v54[56];
    v48 = *&v54[8];
    v49 = *&v54[24];
    *(v12 + 2) = v36 + 1;
    v37 = &v12[88 * v36];
    *(v37 + 4) = v10;
    *(v37 + 5) = v11;
    *(v37 + 4) = v49;
    *(v37 + 5) = v50;
    *(v37 + 56) = v52;
    *(v37 + 6) = v51;
    *(v37 + 3) = v48;
    *(v4 + 416) = v12;
    v17 = *&v54[8];
    v18 = *&v54[16];
    v82 = *&v54[40];
    v83 = *&v54[56];
    v84 = *&v54[72];
    v81 = *&v54[24];
    goto LABEL_62;
  }

  v14 = v12 + 64;
  while (1)
  {
    v15 = *(v14 - 4);
    v16 = *(v14 - 3);
    v17 = *(v14 - 2);
    v18 = *(v14 - 1);
    if (v17 >= v15)
    {
      v19 = *(v14 - 4);
    }

    else
    {
      v19 = *(v14 - 2);
    }

    if (v18 >= v16)
    {
      v20 = *(v14 - 3);
    }

    else
    {
      v20 = *(v14 - 1);
    }

    if (v16 <= v18)
    {
      v16 = *(v14 - 1);
    }

    if (v19 <= v10)
    {
      if (v15 <= v17)
      {
        v15 = *(v14 - 2);
      }

      if (v10 <= v15 && v20 <= v11 && v11 <= v16)
      {
        break;
      }
    }

    v14 += 88;
    if (!--v13)
    {
      goto LABEL_25;
    }
  }

  v21 = *(v14 + 1);
  v81 = *v14;
  v82 = v21;
  v83 = *(v14 + 2);
  v84 = *(v14 + 24);
LABEL_62:
  swift_endAccess();
  objc_autoreleasePoolPop(v9);
  *a2 = v17;
  *(a2 + 8) = v18;
  v38 = v82;
  *(a2 + 16) = v81;
  *(a2 + 32) = v38;
  result = *&v83;
  *(a2 + 48) = v83;
  *(a2 + 64) = v84;
  return result;
}

uint64_t ResolvedStyledText.TextLayoutManager.minorAxisIsFlexible.getter()
{
  v1 = *(v0 + 216);
  if (v1 && [*(v0 + 216) length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v2 = static NSAttributedStringKey.updateSchedule;
    [v1 length];
    if ([v1 attribute:v2 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(v4);
      return *(v0 + 256) & 1;
    }

    memset(v4, 0, sizeof(v4));
    outlined destroy of Any?(v4);
  }

  return 0;
}

uint64_t ResolvedStyledText.TextLayoutManager.explicitAlignment(_:at:)(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  if (*(v3 + 97))
  {
LABEL_2:
    *&result = 0.0;
    return result;
  }

  if (one-time initialization token for lastTextBaseline != -1)
  {
    swift_once();
  }

  if (static VerticalAlignment.lastTextBaseline == a1)
  {
    if (*(v3 + 97))
    {
      v8 = a2;
    }

    else
    {
      v8 = a3;
    }

    if (*(v3 + 97))
    {
      v9 = a3;
    }

    else
    {
      v9 = a2;
    }

    specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(*(v3 + 97) ^ 1, v16, v9, v8);
    return v18;
  }

  else
  {
    if (one-time initialization token for firstTextBaseline != -1)
    {
      swift_once();
    }

    if (static VerticalAlignment.firstTextBaseline == a1)
    {
      if (*(v3 + 97))
      {
        v10 = a2;
      }

      else
      {
        v10 = a3;
      }

      if (*(v3 + 97))
      {
        v11 = a3;
      }

      else
      {
        v11 = a2;
      }

      specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(*(v3 + 97) ^ 1, v16, v11, v10);
      *&result = v17;
    }

    else
    {
      if (one-time initialization token for _firstTextLineCenter != -1)
      {
        swift_once();
      }

      if (static VerticalAlignment._firstTextLineCenter == a1)
      {
        if (*(v3 + 97))
        {
          v12 = a2;
        }

        else
        {
          v12 = a3;
        }

        if (*(v3 + 97))
        {
          v13 = a3;
        }

        else
        {
          v13 = a2;
        }

        specialized ResolvedStyledText.TextLayoutManager.metrics(in:layoutMargins:)(*(v3 + 97) ^ 1, v16, v13, v12);
        v14 = v17;
        ResolvedStyledText.maxFontMetrics.getter(v15);
        *&result = v14 + v15[0] * -0.5;
      }

      else
      {
        if (one-time initialization token for leadingText != -1)
        {
          swift_once();
        }

        if (static HorizontalAlignment.leadingText != a1)
        {
          goto LABEL_2;
        }

        swift_beginAccess();
        return *(v3 + 176);
      }
    }
  }

  return result;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, char a3)
{
  v9 = *(a2 + 24);
  if (v9 <= 2)
  {
    v61 = v8;
    v62 = v7;
    v63 = v6;
    v64 = v5;
    v65 = v3;
    v66 = v4;
    v11 = *a2;
    if (v9)
    {
      if (v9 == 1)
      {
        v12 = *(a2 + 8);
        if (v12 == *(a2 + 16))
        {
          return result;
        }

        v14 = result;
        v16 = *(a2 + 48);
        v15 = *(a2 + 56);
        if (v15)
        {

          v17 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v16);
          v19 = v18;
        }

        else
        {
          v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*(a2 + 48));
          if (v35)
          {
            v17 = v35[9];
            v19 = v35[10];
          }

          else
          {
            v19 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
            v17 = &type metadata for CoreUIDefaultSystemColorDefinition;
          }
        }

        LOBYTE(v45) = a3;
        v47 = v16;
        v48 = v15;
        (v19[1])(&v57, &v45, &v47, v17, v19);
        v36 = v58;
        v37 = v59;
        v38 = v60;
        v39 = *(a2 + 56);
        v47 = *(a2 + 48);
        v48 = v39;
        v40 = *(*v14 + 168);

        v41 = v40(v12, &v47);

        v47 = v57;
        LODWORD(v48) = v36;
        *(&v48 + 1) = v37 * v41;
        v49 = v38;
        v50 = 0;
        v51 = 1065353216;
        v52 = 0;
        v53 = -1;
        *v54 = *v56;
        *&v54[3] = *&v56[3];
        v42 = MEMORY[0x1E69E7CC0];
        v55 = MEMORY[0x1E69E7CC0];
        v46 = v11;
        if (*(a2 + 40) == 1)
        {
          v42 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v43, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        v45 = v42;
        _ShapeStyle_Pack.subscript.setter(&v47, &v46, v12);
        v44 = v45;
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v44;
        v34 = 1;
      }

      else
      {
        v27 = result;
        if (v11 >= 1)
        {
          v28 = *(a2 + 56);
          v47 = *(a2 + 48);
          v48 = v28;
          v29 = *(*result + 168);
          v30 = result;

          v31 = v29(v11, &v47);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v27 = swift_allocObject();
          *(v27 + 16) = v30;
          *(v27 + 24) = v31;
        }

        v32 = *(a2 + 32);
        v33 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v32, v33);
        *(a2 + 32) = v27;
        v34 = 3;
      }

      *(a2 + 40) = v34;
    }

    else
    {
      v20 = result;
      if (v11 >= 1)
      {
        v21 = *(a2 + 56);
        v47 = *(a2 + 48);
        v48 = v21;
        v22 = *(*result + 168);
        v23 = result;

        v24 = v22(v11, &v47);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v20 = swift_allocObject();
        *(v20 + 16) = v23;
        *(v20 + 24) = v24;
      }

      v25 = *(a2 + 32);
      v26 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v25, v26);
      *(a2 + 32) = v20;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

{
  v9 = *(a2 + 24);
  if (v9 <= 2)
  {
    v51 = v8;
    v52 = v7;
    v53 = v6;
    v54 = v5;
    v55 = v3;
    v56 = v4;
    v11 = result;
    v12 = *a2;
    if (v9)
    {
      if (v9 == 1)
      {
        v13 = *(a2 + 8);
        if (v13 == *(a2 + 16))
        {
          return result;
        }

        v14 = *(a2 + 56);

        specialized ColorProvider.resolveHDR(in:)(v16, v14, a3, &v47);

        v17 = v48;
        v18 = v49;
        v19 = v50;
        v20 = *(a2 + 56);
        v39 = *(a2 + 48);
        v40 = v20;
        v21 = *(*v11 + 168);

        v22 = v21(v13, &v39);

        v39 = v47;
        LODWORD(v40) = v17;
        *(&v40 + 1) = v18 * v22;
        v41 = v19;
        v42 = 0;
        v43 = 1065353216;
        v44 = 0;
        v45 = -1;
        v23 = MEMORY[0x1E69E7CC0];
        v46 = MEMORY[0x1E69E7CC0];
        v38 = v12;
        if (*(a2 + 40) == 1)
        {
          v23 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v24, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v39, &v38, v13);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v23;
        v25 = 1;
      }

      else
      {
        v32 = result;
        if (v12 > 0)
        {
          v33 = *(a2 + 56);
          v39 = *(a2 + 48);
          v40 = v33;
          v34 = *(*v11 + 168);

          v35 = v34(v12, &v39);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v32 = swift_allocObject();
          *(v32 + 16) = v11;
          *(v32 + 24) = v35;
        }

        v36 = *(a2 + 32);
        v37 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v36, v37);
        *(a2 + 32) = v32;
        v25 = 3;
      }

      *(a2 + 40) = v25;
    }

    else
    {
      v26 = result;
      if (v12 > 0)
      {
        v27 = *(a2 + 56);
        v39 = *(a2 + 48);
        v40 = v27;
        v28 = *(*v11 + 168);

        v29 = v28(v12, &v39);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v26 = swift_allocObject();
        *(v26 + 16) = v11;
        *(v26 + 24) = v29;
      }

      v30 = *(a2 + 32);
      v31 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v30, v31);
      *(a2 + 32) = v26;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

void closure #1 in NSAttributedString.replacingLineBreakModes(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, void **a6, void *a7)
{
  outlined init with copy of Any?(a1, v19);
  if (v20)
  {
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSParagraphStyle);
    if (swift_dynamicCast())
    {
      if ([v18 lineBreakMode] == a5)
      {
LABEL_11:

        return;
      }

      [v18 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
      swift_dynamicCast();
      [v18 setLineBreakMode_];
      v12 = *a6;
      if (*a6)
      {
        goto LABEL_8;
      }

      [a7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString);
      v13 = swift_dynamicCast();
      v14 = v18;
      if (!v13)
      {
        v14 = 0;
      }

      v15 = *a6;
      *a6 = v14;

      v12 = *a6;
      if (*a6)
      {
LABEL_8:
        v16 = one-time initialization token for kitParagraphStyle;
        v17 = v12;
        if (v16 != -1)
        {
          swift_once();
        }

        [v17 addAttribute:static NSAttributedStringKey.kitParagraphStyle value:v18 range:{a2, a3}];

        goto LABEL_11;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v19);
  }
}

uint64_t static _TextRendererViewModifier._makeViewInputs(modifier:inputs:)(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v27 = a3;
  v28 = a4;
  LODWORD(v35[0]) = v7;
  type metadata accessor for _TextRendererViewModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _TextRendererViewModifier._makeViewInputs(modifier:inputs:), a3, &v23);
  v8 = *(a2 + 1);
  v32 = *a2;
  v33 = v8;
  v10 = *a2;
  v9 = *(a2 + 1);
  v34 = *(a2 + 2);
  v11 = v33;
  v29 = v10;
  v30 = v9;
  v31 = *(a2 + 2);
  v12 = *(a4 + 8);
  v13 = *(v12 + 48);
  outlined init with copy of _GraphInputs(&v32, v35);

  v13(&v23, &v29, a3, v12);
  v35[0] = v29;
  v35[1] = v30;
  v35[2] = v31;
  outlined destroy of _GraphInputs(v35);
  v14 = v23;
  swift_beginAccess();
  v22[0] = _TextRendererViewModifier.MakeTextRenderer.init(renderer:environment:)(v14, *(v11 + 16));
  v22[1] = v15;
  TextRenderer = type metadata accessor for _TextRendererViewModifier.MakeTextRenderer();
  v25 = TextRenderer;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<TextRendererBoxBase>(0, &lazy cache variable for type metadata for Attribute<TextRendererBoxBase>, v17, type metadata accessor for TextRendererBoxBase, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10, v24, TextRenderer, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);

  v20 = AGCreateWeakAttribute();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17TextRendererInputV_Tt2g5(a2, v20);
}

uint64_t ResolvedTextContainer.append<A>(_:in:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a2;
  v12 = *(a2 + 8);
  v14 = *a3;
  v20[0] = *a2;
  v20[1] = v12;
  v19 = v14;
  if (v12)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v13, &v18);

    v15 = v18;
  }

  else
  {
    v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v13);
    if (v16)
    {
      v15 = v16[9];
    }

    else
    {
      v15 = 0;
    }
  }

  return (*(a6 + 64))(a1, v20, &v19, v15 == 0, a5, a7, a4, a6);
}

void _NSTextLayoutManagerRequiresCTLine(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 setRequiresCTLineRef:1];
  }
}

void ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DB808]) init];
  if (a2)
  {
    v7 = a2;
    v8 = a1;
    v9 = MEMORY[0x193AC38C0]();
    [v6 setAttributedString_];
    [v8 replaceTextContentManager_];

    objc_autoreleasePoolPop(v9);
  }

  *a3 = v6;
  *(a3 + 8) = a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 56) = 4;
}

uint64_t assignWithCopy for ScaledMetric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<ButtonSizing>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<ButtonSizing>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v11 = a2 & 0xFFFFFFFFFFFFFFF8;
  v12 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v6) = *(v11 + 24);
  outlined copy of Environment<ButtonSizing>.Content(v12, v6);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 16) = v12;
  *(v10 + 24) = v6;
  outlined consume of Environment<ButtonSizing>.Content(v13, v14);
  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 24;
  v17 = *(v15 + 80);
  v18 = (v17 + 25 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v17;
  v19 = (v17 + 25 + v11) & ~v17;
  (*(v15 + 24))(v18, v19);
  *(*(v16 + 40) + v18) = *(*(v16 + 40) + v19);
  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17TextRendererInputV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for TextRendererInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17TextRendererInputV_Tt0B5(v4, v7) || (result = off_1ED520520(), (result & 1) == 0))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<TextRendererInput>, &type metadata for TextRendererInput, &protocol witness table for TextRendererInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for TextRendererInput, 0, v6);
  }

  return result;
}

void *EnvironmentValues.imageScale.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010ImageScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 1;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t NSAttributedString.replacingLineBreakModes(_:)(uint64_t a1)
{
  v13 = 0;
  if (one-time initialization token for kitParagraphStyle != -1)
  {
    swift_once();
  }

  v3 = static NSAttributedStringKey.kitParagraphStyle;
  v4 = [v1 length];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = &v13;
  v5[4] = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in NSAttributedString.replacingLineBreakModes(_:);
  *(v6 + 24) = v5;
  aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_13_1;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  [v8 enumerateAttribute:v3 inRange:0 options:v4 usingBlock:{0x100000, v7}];
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v10 = v13;
    if (v13)
    {

      return v10;
    }

    else
    {
      v11 = v8;

      return v11;
    }
  }

  return result;
}

uint64_t sub_18D2D2948()
{

  return swift_deallocObject();
}

id _TextContainer(int a1)
{
  v1 = off_1E723FCC8;
  if (!a1)
  {
    v1 = 0x1E69DB800;
  }

  v2 = objc_alloc_init(*v1);

  return v2;
}

void type metadata accessor for Attribute<TextRendererBoxBase>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void Text.Layout.Line.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *v2;
  v11 = v10;
  if (v6 == 1 && (v12 = _NSTextLineFragmentGetCTLine(v10), v11, (v11 = v12) == 0))
  {
    __break(1u);
  }

  else
  {

    *a2 = v11;
    *(a2 + 8) = a1;
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = v9;
    *(a2 + 40) = v5;
  }
}

void ResolvedStyledText.TextLayoutManager.drawingMargins.getter()
{
  ResolvedStyledText.maxFontMetrics.getter(v1);
  swift_beginAccess();
  ResolvedStyledText.lineHeightScalingAdjustment(lineHeightMultiple:maximumLineHeight:minimumLineHeight:)(v0[8], v0[9], v0[10]);
}

void (*protocol witness for Collection.subscript.read in conformance Text.Layout.Line(uint64_t *a1, uint64_t *a2))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  *a1 = v4;
  Text.Layout.Line.subscript.getter(*a2, v4);
  return protocol witness for Collection.subscript.read in conformance Text.Layout.Line;
}

void ResolvedStyledText.TextLayoutManager.draw(in:with:applyingMarginOffsets:containsResolvable:context:renderer:)(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v20 = MEMORY[0x193AC38C0]();
  if (a10)
  {
    *&v151 = v10;
    v21 = *(*a10 + 104);

    v22 = v21(&v151, a6, a7);
    v24 = v23;
    a6 = v25;
    a7 = v26;
  }

  else
  {
    v22 = 0.0;
    v24 = 0.0;
  }

  swift_beginAccess();
  v27 = *(v10 + 152);
  v142 = *(v10 + 136);
  v28.i64[1] = *(&v142 + 1);
  *&v143 = v27;
  LOBYTE(aBlock) = *(v10 + 43);
  *v28.i64 = a6;
  TextShape.resolve(in:layoutDirection:)(&aBlock, &v151, v28, *&a7);
  v122 = v151;
  v29 = v152;
  v30 = v153;
  ResolvedStyledText.TextLayoutManager.prepareLayoutManager(in:with:applyingMarginOffsets:)(a1 & 1, &v142, a6, a7);
  v157 = v148;
  v158 = v149;
  v159 = v150;
  v153 = v144;
  v154 = v145;
  v155 = v146;
  v156 = v147;
  v151 = v142;
  v152 = v143;
  if (_sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(&v151) == 1)
  {
LABEL_54:
    objc_autoreleasePoolPop(v20);
    return;
  }

  v125 = a10;
  v31 = v151;
  v32 = objc_opt_self();
  v33 = [v32 current];
  if (v33 && (v34 = v33, v35 = [v33 CGContext], v34, v35) && (v36 = MEMORY[0x193AC3360](v35, 0, 0), v35, v36))
  {
    v117 = v30;
    v37 = RBDrawingStateGetDisplayList();
    if (v37)
    {
      v38 = v37;
      v39 = [v37 CGStyleHandler];
      if (v39)
      {
        v40 = v39;
        v41 = v38;
        v42 = swift_allocObject();
        *(v42 + 16) = v40;
        v120 = v42;
        v121 = _sSo14RBDrawingStateaSiIeyByy_ABSiIegyy_TRTA_0;
      }

      else
      {
        v41 = v38;
        v120 = 0;
        v121 = 0;
      }

      v66 = *(v11 + 272);
      if (*(v66 + 16))
      {
        v67 = *(v11 + 43);
        v68 = *(v11 + 44);
        v69 = swift_allocObject();
        *(v69 + 16) = v66;
        *(v69 + 24) = v68;
        *(v69 + 25) = v67;
        *&v133 = partial apply for closure #1 in ResolvedStyledText.cgStyleHandler.getter;
        *(&v133 + 1) = v69;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v132 = thunk for @escaping @callee_guaranteed (@unowned RBDrawingState, @unowned Int) -> ();
        *(&v132 + 1) = &block_descriptor_75_0;
        v70 = _Block_copy(&aBlock);
        v71 = v41;
        v43 = v41;
      }

      else
      {
        v43 = v41;
        v72 = v41;
        v70 = 0;
      }

      v30 = v117;
      [v43 setCGStyleHandler_];
      _Block_release(v70);
    }

    else
    {
      v120 = 0;
      v121 = 0;
      v43 = 0;
    }
  }

  else
  {
    v120 = 0;
    v121 = 0;
    v43 = 0;
  }

  v44 = [v32 current];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 CGContext];

    if (v46)
    {
      CGContextSaveGState(v46);
      if (*(v11 + 97) == 1)
      {
        v160.origin.x = a2;
        v160.origin.y = a3;
        v160.size.width = a4;
        v160.size.height = a5;
        Width = CGRectGetWidth(v160);
        CGContextTranslateCTM(v46, Width, 0.0);
        CGContextRotateCTM(v46, 1.57079633);
      }

      v48 = a10;
      if (!a10)
      {
        v24 = 0.0;
        if (*(*(v11 + 408) + 16))
        {
          v22 = 0.0;
        }

        else
        {
          v50 = *(v11 + 352);
          v49 = *(v11 + 360);
          v51 = *(v11 + 368);
          v52 = *(v11 + 376);
          v53 = *(v11 + 384);
          v54 = *(v11 + 392);
          if (v54 < 0)
          {
            outlined consume of ResolvedTextSuffix(*(v11 + 352), v49, v51, *(v11 + 376), v53, v54);
            outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
            v22 = 0.0;
            if ((*(v11 + 260) & 0x80) == 0)
            {
              v73 = v43;
              LOBYTE(v140) = 1;
              *&aBlock = 0;
              BYTE8(aBlock) = 1;
              v132 = 0u;
              v133 = 0u;
              v134 = 0u;
              LOBYTE(v135) = 1;
              v74 = *(&v154 + 1);
              v127 = v122;
              v128 = v29;
              v129 = v30;
              ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(&aBlock, *&v152, *(&v152 + 1), *(&v154 + 1), v153 | (BYTE1(v153) << 8), &v127);
              outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v142);
              v75 = *(v11 + 216);
              swift_beginAccess();
              v76 = ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v75, v74);
              swift_endAccess();
              v77 = swift_allocObject();
              *(v77 + 16) = v31;
              *(v77 + 32) = v46;
              v78 = swift_allocObject();
              v79 = partial apply for closure #3 in ResolvedStyledText.TextLayoutManager.drawImplementation(in:with:applyingMarginOffsets:containsResolvable:context:renderer:);
              *(v78 + 16) = partial apply for closure #3 in ResolvedStyledText.TextLayoutManager.drawImplementation(in:with:applyingMarginOffsets:containsResolvable:context:renderer:);
              *(v78 + 24) = v77;
              v129 = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
              v130 = v78;
              *&v127 = MEMORY[0x1E69E9820];
              *(&v127 + 1) = 1107296256;
              *&v128 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
              *(&v128 + 1) = &block_descriptor_69;
              v80 = _Block_copy(&v127);
              v81 = v46;

              v82 = [v76 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v80];

              swift_unknownObjectRelease();
              _Block_release(v80);
              LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

              if ((v80 & 1) == 0)
              {
                v43 = v73;
                v84 = v120;
                v83 = v121;
LABEL_47:
                CGContextRestoreGState(v46);

                if (v43)
                {
                  if (v83)
                  {
                    v129 = v83;
                    v130 = v84;
                    *&v127 = MEMORY[0x1E69E9820];
                    *(&v127 + 1) = 1107296256;
                    *&v128 = thunk for @escaping @callee_guaranteed (@unowned RBDrawingState, @unowned Int) -> ();
                    *(&v128 + 1) = &block_descriptor_59_0;
                    v113 = _Block_copy(&v127);
                  }

                  else
                  {
                    v113 = 0;
                  }

                  [v43 setCGStyleHandler_];

                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v83);
                  _Block_release(v113);
                }

                else
                {
                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v83);
                }

                outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v79);
                goto LABEL_54;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }
          }

          else
          {
            v55 = *(v11 + 352);
            v56 = *(v11 + 360);
            v114 = v11;
            v115 = v20;
            v57 = v46;
            v58 = *(v11 + 368);
            v59 = v43;
            v60 = *(v11 + 384);
            v61 = *(v11 + 392);
            outlined copy of ResolvedTextSuffix(v55, v49, v51, v52, v53, v54);
            v62 = v56;
            v63 = v58;
            v46 = v57;
            v48 = 0;
            v64 = v60;
            v43 = v59;
            v65 = v61;
            v11 = v114;
            v20 = v115;
            outlined consume of ResolvedTextSuffix(v50, v62, v63, v52, v64, v65);
            outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000);
            v22 = 0.0;
          }
        }
      }

      v85 = *&v31 + v22;
      v86 = *(&v31 + 1) + v24;
      v87 = v158;
      if (v158)
      {
        v88 = BYTE8(v158);
        v89 = v159;
        if (v85 != 0.0 || v86 != 0.0)
        {
          v124 = v43;
          v90 = *(v158 + 16);
          if (!v90)
          {
            outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v142);
            v87 = MEMORY[0x1E69E7CC0];
            v43 = v124;
            if (v48)
            {
              goto LABEL_43;
            }

            goto LABEL_45;
          }

          v119 = BYTE8(v158);
          v123 = v159;
          v116 = v20;
          v118 = v46;
          v137 = v148;
          v138 = v149;
          v139 = v150;
          v133 = v144;
          v134 = v145;
          v135 = v146;
          v136 = v147;
          aBlock = v142;
          v132 = v143;
          outlined init with copy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)(&aBlock, &v127);
          *&v127 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
          v91 = (v87 + 72);
          v87 = v127;
          do
          {
            v93 = *(v91 - 5);
            v92 = *(v91 - 4);
            v94 = *(v91 - 24);
            v95 = *(v91 - 2);
            v96 = *(v91 - 1);
            v97 = *v91;
            outlined copy of Text.Layout.Line.Line(v93);
            *&v127 = v87;
            v99 = *(v87 + 16);
            v98 = *(v87 + 24);
            if (v99 >= v98 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
              v87 = v127;
            }

            v91 += 12;
            *(v87 + 16) = v99 + 1;
            v100 = v87 + 48 * v99;
            *(v100 + 32) = v93;
            *(v100 + 40) = v92;
            *(v100 + 48) = v94;
            *(v100 + 56) = v85 + v95;
            *(v100 + 64) = v86 + v96;
            *(v100 + 72) = v97;
            --v90;
          }

          while (v90);
          outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v142);
          outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v142);
          v20 = v116;
          v43 = v124;
          v48 = v125;
          v46 = v118;
          v89 = v123;
          v88 = v119;
        }

        if (v48)
        {
          goto LABEL_43;
        }

LABEL_45:
        EnvironmentValues.init()(&v127);
        v112 = v127;
        goto LABEL_46;
      }

      v101 = v43;
      LOBYTE(v140) = 1;
      *&aBlock = 0;
      BYTE8(aBlock) = 1;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      LOBYTE(v135) = 1;
      v102 = *(&v154 + 1);
      v127 = v122;
      v128 = v29;
      v129 = v30;
      ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(&aBlock, *&v152, *(&v152 + 1), *(&v154 + 1), v153 | (BYTE1(v153) << 8), &v127);
      *&v140 = MEMORY[0x1E69E7CC0];
      v141 = 0;
      v103 = *(v11 + 216);
      swift_beginAccess();
      v104 = ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v103, v102);
      swift_endAccess();
      v105 = *(v11 + 260);
      LODWORD(v103) = (v105 >> 3) & 0x10;
      v106 = *(v11 + 256) & ((v105 & 2) >> 1);
      v107 = swift_allocObject();
      *(v107 + 16) = v106;
      *(v107 + 24) = v85;
      *(v107 + 32) = v86;
      *(v107 + 40) = &v140;
      *(v107 + 48) = v103;
      *(v107 + 56) = &v141;
      v108 = swift_allocObject();
      *(v108 + 16) = closure #1 in ResolvedStyledText.TextLayoutManager.collectTextLayout(origin:scale:)partial apply;
      *(v108 + 24) = v107;
      v129 = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
      v130 = v108;
      *&v127 = MEMORY[0x1E69E9820];
      *(&v127 + 1) = 1107296256;
      *&v128 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
      *(&v128 + 1) = &block_descriptor_56;
      v109 = _Block_copy(&v127);

      v110 = [v104 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v109];
      swift_unknownObjectRelease();

      _Block_release(v109);
      LOBYTE(v109) = swift_isEscapingClosureAtFileLocation();

      if ((v109 & 1) == 0)
      {
        v87 = v140;
        v111 = v141;
        v89 = *(v140 + 16);

        outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(&v142);
        v88 = v111;
        v43 = v101;
        v48 = v125;
        if (v125)
        {
LABEL_43:
          v127 = *(v48 + 16);
          v126 = v127;

          v112 = v126;
LABEL_46:
          v140 = v112;

          specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(v46, &v140, 0, 1, v48, v87, v88 & 1, v89);

          swift_bridgeObjectRelease_n();

          v79 = 0;
          v84 = v120;
          v83 = v121;
          goto LABEL_47;
        }

        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_56;
    }
  }

LABEL_57:
  __break(1u);
}

uint64_t sub_18D2D396C()
{

  return swift_deallocObject();
}

uint64_t sub_18D2D39A4()
{

  return swift_deallocObject();
}

uint64_t sub_18D2D39DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

__n128 ResolvedStyledText.TextLayoutManager.prepareLayoutManager(in:with:applyingMarginOffsets:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D4>, double a4@<D5>)
{
  if (*(v4 + 216))
  {
    swift_beginAccess();
    ResolvedStyledText.TextLayoutManager.Cache.find(measuredSize:)(v80, a3, a4);
    v9 = a4;
    v10 = a3;
    if (v81 << 8 != 512)
    {
      v11 = *v80;
      v12 = *&v80[1];
      swift_beginAccess();
      if (*(v4 + 97))
      {
        if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v9 = a4;
        }

        else
        {
          v9 = v12;
        }

        v10 = a3;
      }

      else
      {
        if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v10 = a3;
        }

        else
        {
          v10 = v11;
        }

        v9 = a4;
      }
    }

    swift_beginAccess();
    v13 = *(v4 + 97);
    if (*(v4 + 97))
    {
      v14 = v10;
    }

    else
    {
      v14 = v9;
    }

    if (*(v4 + 97))
    {
      v15 = v9;
    }

    else
    {
      v15 = v10;
    }

    v16 = *(v4 + 48);
    if (v16 >= 1.0)
    {
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 0, &v61, 1.0, v15, v14);
      goto LABEL_37;
    }

    v52 = v9;
    if (v16 > COERCE_DOUBLE(1))
    {
      v17 = *(v4 + 48);
    }

    else
    {
      v17 = COERCE_DOUBLE(1);
    }

    ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 0, &v69, 1.0, v15, INFINITY);
    v78 = *v73;
    *v79 = *&v73[16];
    *&v79[16] = *&v73[32];
    *&v79[32] = *&v73[48];
    v74 = v69;
    v75 = v70;
    v76 = v71;
    v77 = v72;
    outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v74);
    if (v79[9])
    {
      goto LABEL_24;
    }

    v22 = v76.n128_f64[0];
    if (v75.n128_u8[0])
    {
      v23 = v75.n128_f64[1];
    }

    else
    {
      v23 = v76.n128_f64[0];
    }

    if (!v75.n128_u8[0])
    {
      v22 = v75.n128_f64[1];
    }

    if (v23 > v15 || v22 > v14)
    {
LABEL_24:
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 0, &v69, v17, v15, INFINITY);
      outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v69);
      if ((v73[25] & 1) == 0)
      {
        v37 = v71.n128_f64[0];
        if (v70.n128_u8[0])
        {
          v38 = v70.n128_f64[1];
        }

        else
        {
          v38 = v71.n128_f64[0];
        }

        if (!v70.n128_u8[0])
        {
          v37 = v70.n128_f64[1];
        }

        if (v38 <= v15 && v37 <= v14)
        {
          v51 = a4;
          v39 = 1.0;
          v40 = v17;
          do
          {
            ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 0, &v61, v39 + (v39 - v40) * -0.5, v15, INFINITY);
            v57 = v65;
            v58 = v66;
            v59 = v67;
            v60 = v68;
            v53 = v61;
            v54 = v62;
            v55 = v63;
            v56 = v64;
            outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v53);
            if (BYTE9(v58))
            {
              v39 = v39 + (v39 - v40) * -0.5;
            }

            else
            {
              v41 = v54.n128_f64[1];
              if (v54.n128_u8[0])
              {
                v42 = v54.n128_f64[1];
              }

              else
              {
                v42 = v55.n128_f64[0];
              }

              if (v54.n128_u8[0])
              {
                v41 = v55.n128_f64[0];
              }

              v43 = v41 > v14;
              if (v41 > v14)
              {
                v44 = v17;
              }

              else
              {
                v44 = v39 + (v39 - v40) * -0.5;
              }

              if (v43)
              {
                v45 = v40;
              }

              else
              {
                v45 = v39 + (v39 - v40) * -0.5;
              }

              if (v43)
              {
                v46 = v39 + (v39 - v40) * -0.5;
              }

              else
              {
                v46 = v39;
              }

              if (v42 > v15)
              {
                v39 = v39 + (v39 - v40) * -0.5;
              }

              else
              {
                v17 = v44;
                v40 = v45;
                v39 = v46;
              }
            }
          }

          while (v39 - v40 >= 0.01);
          ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 0, &v61, v17, v15, v14);
          a4 = v51;
          goto LABEL_36;
        }
      }

      v18 = v13 ^ 1;
      v19 = v17;
      v20 = v15;
      v21 = v14;
    }

    else
    {
      v19 = 1.0;
      v18 = v13 ^ 1;
      v20 = v15;
      v21 = v14;
    }

    ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v18, 0, &v61, v19, v20, v21);
LABEL_36:
    v9 = v52;
LABEL_37:
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v60 = v68;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    if (ResolvedStyledText.TextLayoutManager.minorAxisIsFlexible.getter())
    {
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v13 ^ 1, 1u, &v69, v55.n128_f64[1], v15, v14);
      outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v53);
    }

    else
    {
      *v73 = v57;
      *&v73[16] = v58;
      *&v73[32] = v59;
      *&v73[48] = v60;
      v69 = v53;
      v70 = v54;
      v71 = v55;
      v72 = v56;
    }

    v25 = *v73;
    v26 = 0.0;
    v27 = *v73 + 0.0;
    if (a1)
    {
      v28 = *(v4 + 97);
      ResolvedStyledText.TextLayoutManager.drawingMargins.getter();
      v30 = v29;
      v32 = v31;
      ResolvedStyledText.TextLayoutManager.drawingMargins.getter();
      if (v28)
      {
        v26 = v30 + 0.0;
        v27 = v27 + v34;
      }

      else
      {
        v26 = v32 + 0.0;
        v27 = v27 + v33;
      }
    }

    v35 = *(v4 + 42);
    if (*(v4 + 97))
    {
      if (!*(v4 + 42))
      {
        v36 = 0.0;
        goto LABEL_83;
      }

      v36 = v9 - a4;
      if (v35 != 1)
      {
        goto LABEL_83;
      }

LABEL_51:
      v36 = v36 * 0.5;
LABEL_83:
      v75 = v69;
      v76 = v70;
      v77 = v71;
      v78 = v72;
      *&v79[8] = *&v73[8];
      *&v79[24] = *&v73[24];
      *&v79[40] = *&v73[40];
      v74.n128_f64[0] = v26 - v36;
      v74.n128_f64[1] = v27;
      *v79 = v25;
      _ViewInputs.base.modify(&v74, v24);
      goto LABEL_84;
    }

    if (*(v4 + 42))
    {
      if (v35 == 1)
      {
        v36 = v10 - a3;
        goto LABEL_51;
      }

      v36 = 0.0;
      if (*(v4 + 43))
      {
        goto LABEL_83;
      }
    }

    else
    {
      v36 = 0.0;
      if ((*(v4 + 43) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    v36 = v10 - a3;
    goto LABEL_83;
  }

  _sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOi0_(&v74);
LABEL_84:
  v47 = *&v79[32];
  *(a2 + 96) = *&v79[16];
  *(a2 + 112) = v47;
  *(a2 + 128) = *&v79[48];
  v48 = v77;
  *(a2 + 32) = v76;
  *(a2 + 48) = v48;
  v49 = *v79;
  *(a2 + 64) = v78;
  *(a2 + 80) = v49;
  result = v75;
  *a2 = v74;
  *(a2 + 16) = result;
  return result;
}

void ResolvedStyledText.TextLayoutManager.Cache.find(measuredSize:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = *(*v3 + 16);
  v5 = 0uLL;
  if (v4)
  {
    v6 = *v3 + 64;
    while (1)
    {
      v7 = *(v6 - 16);
      if (*&v7 == a2 && *(v6 - 8) == a3)
      {
        break;
      }

      v6 += 88;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    v5 = *(v6 - 32);
    v10 = *v6;
    v11 = *(v6 + 16);
    v12 = *(v6 + 32);
    v9 = *(v6 + 48);
  }

  else
  {
LABEL_8:
    v9 = 512;
    v7 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v7;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  *(a1 + 80) = v9;
}

void protocol witness for Collection.subscript.read in conformance Text.Layout(void ***a1)
{
  v1 = *a1;
  outlined consume of Text.Layout.Line.Line(**a1);

  free(v1);
}

void GraphicsContext.draw(_:foregroundColor:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  if ((a5 & 0x40) == 0)
  {
    v14 = *(a6 + 48);
    v15 = *(a6 + 52);
    v16 = *(a6 + 56);
    v27 = *(a6 + 24);
    v28 = v27;
    v29 = 0;
    v30 = __PAIR64__(v15, v14);
    v31 = v16;
    v32 = GraphicsContext.userToDeviceScale.getter();
    v33 = Text.Layout.Run.drawingOptions.getter() | a5;
    v24[0] = v8;
    v24[1] = v9;
    v24[2] = v10;
    v24[3] = v11;
    v25 = v12;
    v26 = v13;
    GlyphContext.drawRun(_:range:foregroundColor:)(v24, 0, 0, a2, a3, a4 & 1);
    v19 = v27;
    v20 = v28;
    v21 = v29;
    if (v29)
    {
      RBDrawingStateEndCGContext();
    }

    if (v19 != v20)
    {
      RBDrawingStateDestroy();
    }
  }

  if ((a5 & 0x20) == 0)
  {
    v27 = v8;
    v28 = v9;
    v29 = v10;
    v30 = v11;
    LODWORD(v31) = v12;
    v32 = v13;

    v22 = v8;
    GraphicsContext.userToDeviceScale.getter();
    Text.Layout.Decorations.init(run:scale:)(&v27, v24);
    v27 = v24[0];
    GraphicsContext.draw(_:)(&v27, a6);
  }
}

BOOL closure #1 in ResolvedStyledText.TextLayoutManager.collectTextLayout(origin:scale:)(BOOL *a1, char a2, char **a3, int a4, BOOL *a5, double a6, double a7)
{
  v13 = a1;
  v14 = [a1 state];
  if (v14 == 3)
  {
    if (a2)
    {
      type metadata accessor for TextLayoutFragmentRenderer();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      v16 = v13;
    }

    else
    {
      v15 = 0;
    }

    [v13 layoutFragmentFrame];
    v18 = v17;
    v20 = v19;
    v21 = [v13 textLineFragments];
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextLineFragment);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = v13;
    if (v22 >> 62)
    {
      v23 = __CocoaSet.count.getter();
      if (!v23)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_19;
      }
    }

    if (v23 < 1)
    {
      __break(1u);
      goto LABEL_30;
    }

    v24 = 0;
    v25 = v18 + a6;
    v26 = v20 + a7;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x193AC03C0](v24, v22);
      }

      else
      {
        v27 = *(v22 + 8 * v24 + 32);
      }

      v28 = v27;

      v29 = v28;
      [v29 typographicBounds];
      v31 = v30;
      v33 = v32;
      [v29 glyphOrigin];
      v35 = v34;
      v37 = v36;
      v38 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
        *a3 = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        *a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v38);
      }

      ++v24;

      v42 = *a3;
      *(v42 + 2) = v41 + 1;
      v43 = &v42[48 * v41];
      *(v43 + 4) = v29;
      *(v43 + 5) = v15;
      v43[48] = 1;
      *(v43 + 7) = v25 + v31 + v35;
      *(v43 + 8) = v26 + v33 + v37;
      *(v43 + 18) = a4;
    }

    while (v23 != v24);
LABEL_19:

    v13 = a5;
    if (*a5)
    {

      v44 = 1;
      v14 = 3;
LABEL_27:
      *v13 = v44;
      return v14 == 3;
    }

    v45 = [v50 truncatedRanges];
    v7 = 3;
    if (!v45)
    {

      v44 = 0;
      goto LABEL_26;
    }

    v46 = v45;
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextRange);
    v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v47 >> 62))
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_24:

      v44 = v48 != 0;
LABEL_26:
      v14 = v7;
      goto LABEL_27;
    }

LABEL_30:
    v48 = __CocoaSet.count.getter();
    goto LABEL_24;
  }

  return v14 == 3;
}

uint64_t outlined destroy of (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?(uint64_t a1)
{
  type metadata accessor for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?()
{
  if (!lazy cache variable for type metadata for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?)
  {
    type metadata accessor for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (CGPoint, ResolvedStyledText.TextLayoutManager.Metrics)?);
    }
  }
}

uint64_t Text.Layout.Run.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (one-time initialization token for customAttributes != -1)
  {
    swift_once();
  }

  v4 = static NSAttributedStringKey.customAttributes;
  v5 = CTLineGetRunAtIndex();
  v6 = _CTRunGetAttributeValueForKey(v5, v4);

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      *&v13 = v11;
      Text.CustomAttributes.subscript.getter(a1, a2);
    }
  }

  else
  {
    outlined destroy of Any?(&v13);
  }

  if (one-time initialization token for customAttachment != -1)
  {
    swift_once();
  }

  v8 = static NSAttributedStringKey.customAttachment;
  v9 = CTLineGetRunAtIndex();
  v10 = _CTRunGetAttributeValueForKey(v9, v8);

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    type metadata accessor for AnyCustomTextAttachment();
    if (swift_dynamicCast())
    {
      (*(*v11 + 104))(&v13);
      Text.CustomAttributes.subscript.getter(a1, a2);
    }
  }

  else
  {
    outlined destroy of Any?(&v13);
  }

  return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
}