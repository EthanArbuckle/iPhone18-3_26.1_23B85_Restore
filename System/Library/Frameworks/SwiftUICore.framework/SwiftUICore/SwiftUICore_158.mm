uint64_t type metadata completion function for BezierTimingFunction()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for BezierTimingFunction(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & v8));
  }

  else
  {
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v16 = (a2 + v9) & v8;
    v14(((v3 + v9) & v8), v16, v4);
    v17 = (v9 + v16) & v8;
    v14(((v9 + ((v3 + v9) & v8)) & v8), v17, v4);
    v14(((v9 + ((v9 + ((v3 + v9) & v8)) & v8)) & v8), ((v9 + v17) & v8), v4);
  }

  return v3;
}

uint64_t destroy for BezierTimingFunction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v10 = *(v4 + 8);
  v10(a1, v3);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = (v6 + a1) & ~v5;
  v10(v7, v3);
  v8 = (v6 + v7) & ~v5;
  v10(v8, v3);

  return (v10)((v6 + v8) & ~v5, v3);
}

uint64_t initializeWithCopy for BezierTimingFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, (v9 + v11) & ~v8, v5);
  return a1;
}

uint64_t assignWithCopy for BezierTimingFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, (v9 + v11) & ~v8, v5);
  return a1;
}

uint64_t initializeWithTake for BezierTimingFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, (v9 + v11) & ~v8, v5);
  return a1;
}

uint64_t assignWithTake for BezierTimingFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, (v9 + v11) & ~v8, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for BezierTimingFunction(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
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
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
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

  return v5 + (v9 | v13) + 1;
}

char *storeEnumTagSinglePayload for BezierTimingFunction(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8)) & ~v8) + *(v5 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
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
          v12 = v17;
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
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v6 + 56);

  return v20();
}

unint64_t _s7SwiftUI16RendererLeafViewPAAE04makedE04view6inputsAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVtFZAA08BackdropE0V_Tt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v36 = MEMORY[0x1E69E7CC0];
  v6 = *MEMORY[0x1E698D3F8];
  LODWORD(v37) = 0;
  HIDWORD(v37) = *MEMORY[0x1E698D3F8];
  v7 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v7))
  {
    v35 = a3;
    v8 = ++lastIdentity;
    v9 = *a2;
    if (*(a2 + 37))
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v39);
      result = AGWeakAttributeGetAttribute();
      if (result == v6)
      {
        __break(1u);
        return result;
      }

      v38[0] = v8;
      v34 = Attribute<A>.subscript.modify();
      _DisplayList_StableIdentityScope.pushIdentity(_:)(v38);
      v34(&v39, 0);
    }

    v10 = *(a2 + 48);
    v41 = *(a2 + 32);
    v42 = v10;
    v43 = *(a2 + 64);
    v44 = *(a2 + 80);
    v11 = *(a2 + 16);
    v39 = *a2;
    v40 = v11;
    swift_beginAccess();
    v12 = CachedEnvironment.animatedPosition(for:)(&v39);
    v13 = *(a2 + 48);
    v41 = *(a2 + 32);
    v42 = v13;
    v43 = *(a2 + 64);
    v44 = *(a2 + 80);
    v14 = *(a2 + 16);
    v39 = *a2;
    v40 = v14;
    CachedEnvironment.animatedSize(for:)(&v39);
    swift_endAccess();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v9, v39);
    if (v16)
    {
      v17 = *(v16 + 72);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a2 + 68);
    *&v39 = __PAIR64__(a1, v8);
    *(&v39 + 1) = __PAIR64__(OffsetAttribute2, v12);
    LODWORD(v40) = v18;
    BYTE4(v40) = v17;
    WORD3(v40) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<ColorView>(0, &lazy cache variable for type metadata for LeafDisplayList<BackdropView>, &type metadata for BackdropView, &protocol witness table for BackdropView, type metadata accessor for LeafDisplayList);
    lazy protocol witness table accessor for type LeafDisplayList<BackdropView> and conformance LeafDisplayList<A>();
    v19 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v39) = 0;
    PreferencesOutputs.subscript.setter(v19, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a3 = v35;
  }

  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v7))
  {
    v20 = *(a2 + 48);
    v21 = *(a2 + 64);
    v22 = *(a2 + 16);
    v41 = *(a2 + 32);
    v42 = v20;
    v43 = v21;
    v44 = *(a2 + 80);
    v39 = *a2;
    v40 = v22;
    swift_beginAccess();
    v23 = CachedEnvironment.animatedSize(for:)(&v39);
    v24 = *(a2 + 48);
    v41 = *(a2 + 32);
    v42 = v24;
    v43 = *(a2 + 64);
    v44 = *(a2 + 80);
    v25 = *(a2 + 16);
    v39 = *a2;
    v40 = v25;
    v26 = CachedEnvironment.animatedPosition(for:)(&v39);
    swift_endAccess();
    v27 = *(a2 + 60);
    *&v39 = __PAIR64__(v23, a1);
    *(&v39 + 1) = __PAIR64__(v27, v26);
    *&v40 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for [ViewResponder](0);
    type metadata accessor for ContentResponderPathDataRule<ColorView>(0, &lazy cache variable for type metadata for LeafResponderFilter<BackdropView>, &type metadata for BackdropView, &protocol witness table for BackdropView, type metadata accessor for LeafResponderFilter);
    lazy protocol witness table accessor for type LeafResponderFilter<BackdropView> and conformance LeafResponderFilter<A>();
    v28 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v39) = 0;
    PreferencesOutputs.subscript.setter(v28, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v7);
  if (result)
  {
    v30 = AGGraphCreateOffsetAttribute2();
    *&v39 = *(a2 + 60);
    *(&v39 + 1) = __PAIR64__(a1, v30);
    LODWORD(v40) = v6;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<ColorView>(0, &lazy cache variable for type metadata for ContentResponderPathDataRule<BackdropView>, &type metadata for BackdropView, &protocol witness table for BackdropView, type metadata accessor for ContentResponderPathDataRule);
    lazy protocol witness table accessor for type ContentResponderPathDataRule<BackdropView> and conformance ContentResponderPathDataRule<A>();
    v31 = Attribute.init<A>(body:value:flags:update:)();
    *&v39 = v7;
    result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    v32 = *(v7 + 16);
    if (result != v32)
    {
      if (result >= v32)
      {
        __break(1u);
      }

      if (*(v7 + 16 * result + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v39) = v31;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        _s7SwiftUI20ContentShapePathDataVSgMaTm_0(0, &lazy cache variable for type metadata for ContentShapePathData?, MEMORY[0x1E69E6720]);
        _s7SwiftUI20ContentShapePathDataVSgMaTm_0(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v33 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v39) = 0;
        result = PreferencesOutputs.subscript.setter(v33, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }
    }
  }

  *a3 = v36;
  a3[1] = v37;
  return result;
}

uint64_t View._backdropEffect<A>(_:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _BackdropEffect();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  a1(v13);
  (*(v8 + 32))(v15, v10, a4);
  View.modifier<A>(_:)(v15, a3, v11);
  return (*(v12 + 8))(v15, v11);
}

uint64_t static _BackdropEffect._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a3@<X8>)
{
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;

  return specialized static _ViewOutputs.makeMaskView(inputs:contentBody:maskBody:outputsFromMask:mayUseForegroundColor:alignment:)(v8, partial apply for makeBg #1 <A>(inputs:) in static _BackdropEffect._makeView(modifier:inputs:body:), 1, 1, 0x100000000, a2, a3);
}

uint64_t makeBg #1 <A>(inputs:) in static _BackdropEffect._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a1[3];
  v37 = a1[2];
  v38 = v8;
  v39 = a1[4];
  v40 = *(a1 + 20);
  v9 = a1[1];
  v35 = *a1;
  v36 = v9;
  v17 = a3;
  v18 = a4;
  v16[1] = a2;
  type metadata accessor for _BackdropEffect();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in makeBg #1 <A>(inputs:) in static _BackdropEffect._makeView(modifier:inputs:body:), a3, v16);
  v10 = v16[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v25 = v35;
  v26 = v36;
  v12 = v37;
  LODWORD(v27) = 0;
  v15 = v10;
  v31[0] = v35;
  v31[1] = v36;
  v32 = v40;
  v31[3] = v38;
  v31[4] = v39;
  v31[2] = v27;
  v21 = v27;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v19 = v35;
  v20 = v36;
  v13 = *(a4 + 24);
  outlined init with copy of _ViewInputs(&v35, v33);
  outlined init with copy of _ViewInputs(v31, v33);
  v13(&v15, &v19, a3, a4);
  v33[2] = v21;
  v33[3] = v22;
  v33[4] = v23;
  v34 = v24;
  v33[0] = v19;
  v33[1] = v20;
  outlined destroy of _ViewInputs(v33);
  LODWORD(v27) = v12;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v25);
    AGSubgraphEndTreeElement();
  }

  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  return outlined destroy of _ViewInputs(&v19);
}

uint64_t closure #1 in makeBg #1 <A>(inputs:) in static _BackdropEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for _BackdropEffect();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t static _BackdropEffectPlaceholder._makeView(view:inputs:)@<X0>(__int128 *a1@<X1>, void *a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  v22[2] = a1[2];
  v22[3] = v4;
  v22[4] = a1[4];
  v23 = *(a1 + 20);
  v5 = a1[1];
  v22[0] = *a1;
  v22[1] = v5;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = a1[3];
  v16 = a1[2];
  v17 = v8;
  v18 = a1[4];
  v19 = *(a1 + 20);
  v9 = a1[1];
  v14 = *a1;
  v15 = v9;
  v10 = v16;
  LODWORD(v16) = 0;
  v21 = v19;
  v20[3] = v8;
  v20[4] = v18;
  v20[0] = v14;
  v20[1] = v9;
  v20[2] = v16;
  outlined init with copy of _ViewInputs(v22, v12);
  outlined init with copy of _ViewInputs(v20, v12);
  _s7SwiftUI16RendererLeafViewPAAE04makedE04view6inputsAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVtFZAA08BackdropE0V_Tt2B5(OffsetAttribute2, v20, a2);
  outlined destroy of _ViewInputs(v20);
  LODWORD(v16) = v10;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a2, &v14);
    AGSubgraphEndTreeElement();
  }

  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  return outlined destroy of _ViewInputs(v12);
}

unint64_t lazy protocol witness table accessor for type ContentResponderPathDataRule<ColorView> and conformance ContentResponderPathDataRule<A>()
{
  result = lazy protocol witness table cache variable for type ContentResponderPathDataRule<ColorView> and conformance ContentResponderPathDataRule<A>;
  if (!lazy protocol witness table cache variable for type ContentResponderPathDataRule<ColorView> and conformance ContentResponderPathDataRule<A>)
  {
    type metadata accessor for ContentResponderPathDataRule<ColorView>(255, &lazy cache variable for type metadata for ContentResponderPathDataRule<ColorView>, &type metadata for ColorView, &protocol witness table for ColorView, type metadata accessor for ContentResponderPathDataRule);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentResponderPathDataRule<ColorView> and conformance ContentResponderPathDataRule<A>);
  }

  return result;
}

void _s7SwiftUI20ContentShapePathDataVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ContentShapePathData);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ContentResponderPathDataRule<BackdropView> and conformance ContentResponderPathDataRule<A>()
{
  result = lazy protocol witness table cache variable for type ContentResponderPathDataRule<BackdropView> and conformance ContentResponderPathDataRule<A>;
  if (!lazy protocol witness table cache variable for type ContentResponderPathDataRule<BackdropView> and conformance ContentResponderPathDataRule<A>)
  {
    type metadata accessor for ContentResponderPathDataRule<ColorView>(255, &lazy cache variable for type metadata for ContentResponderPathDataRule<BackdropView>, &type metadata for BackdropView, &protocol witness table for BackdropView, type metadata accessor for ContentResponderPathDataRule);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentResponderPathDataRule<BackdropView> and conformance ContentResponderPathDataRule<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LeafResponderFilter<BackdropView> and conformance LeafResponderFilter<A>()
{
  result = lazy protocol witness table cache variable for type LeafResponderFilter<BackdropView> and conformance LeafResponderFilter<A>;
  if (!lazy protocol witness table cache variable for type LeafResponderFilter<BackdropView> and conformance LeafResponderFilter<A>)
  {
    type metadata accessor for ContentResponderPathDataRule<ColorView>(255, &lazy cache variable for type metadata for LeafResponderFilter<BackdropView>, &type metadata for BackdropView, &protocol witness table for BackdropView, type metadata accessor for LeafResponderFilter);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeafResponderFilter<BackdropView> and conformance LeafResponderFilter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LeafDisplayList<BackdropView> and conformance LeafDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type LeafDisplayList<BackdropView> and conformance LeafDisplayList<A>;
  if (!lazy protocol witness table cache variable for type LeafDisplayList<BackdropView> and conformance LeafDisplayList<A>)
  {
    type metadata accessor for ContentResponderPathDataRule<ColorView>(255, &lazy cache variable for type metadata for LeafDisplayList<BackdropView>, &type metadata for BackdropView, &protocol witness table for BackdropView, type metadata accessor for LeafDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeafDisplayList<BackdropView> and conformance LeafDisplayList<A>);
  }

  return result;
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance CGPoint(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZSo7CGPointV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance LinearGradient._Paint(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14LinearGradientV6_PaintV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance LinearGradient.AbsolutePaint(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14LinearGradientV13AbsolutePaintV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance RadialGradient._Paint(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14RadialGradientV6_PaintV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance EllipticalGradient._Paint(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA18EllipticalGradientV6_PaintV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance AngularGradient._Paint(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15AngularGradientV6_PaintV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ColorMonochromeEffect._Resolved(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22_ColorMonochromeEffectV9_ResolvedV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance ViewSize(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA8ViewSizeV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance ViewGeometry(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12ViewGeometryV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _RotationEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15_RotationEffectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance ResolvedGradient(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16ResolvedGradientV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Color.Resolved(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA5ColorV8ResolvedV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Color.ResolvedDuotone(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA5ColorV15ResolvedDuotoneV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ShapeSet.Wrapper(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9_ShapeSetV7WrapperV_Tt1B5(a1, v4);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ContrastEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15_ContrastEffectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance CGSize(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZSo6CGSizeV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _BlurEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA11_BlurEffectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _GrayscaleEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_GrayscaleEffectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _Rotation3DEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_Rotation3DEffectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance OpacityRendererEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA21OpacityRendererEffectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ShadowEffect._Resolved(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13_ShadowEffectV9_ResolvedV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _BrightnessEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_BrightnessEffectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _AlphaThresholdEffect._Resolved(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA21_AlphaThresholdEffectV9_ResolvedV_Tt1B5(a1, v4);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance CoreInteractionRepresentableEffect<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance UnitRect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA8UnitRectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance VariableBlurStyle(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17VariableBlurStyleV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ShapeStyle_Pack(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_ShapeStyle_PackV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ShapeStyle_Pack.Style(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_ShapeStyle_PackV0K0V_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ShapeStyle_Pack.Fill(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_ShapeStyle_PackV4FillO_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ShapeStyle_Pack.Effect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_ShapeStyle_PackV6EffectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ShapeStyle_Pack.Effect.Kind(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16_ShapeStyle_PackV6EffectV4KindO_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance BlurStyle(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9BlurStyleV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Shader.ResolvedShader(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA6ShaderV08ResolvedJ0V_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Color.ResolvedHDR(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA5ColorVAAE11ResolvedHDRV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance AnyLayout(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9AnyLayoutV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance ResolvedShadowStyle(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA19ResolvedShadowStyleV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance StrokeStyle(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA11StrokeStyleV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance UnitPoint(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9UnitPointV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance SummarySymbol(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance KickModifier(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance UnevenRoundedRectangle(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22UnevenRoundedRectangleV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Rectangle._Inset(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9RectangleV6_InsetV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance UnevenRoundedRectangle._Inset(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22UnevenRoundedRectangleV6_InsetV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Capsule._Inset(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA7CapsuleV6_InsetV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Ellipse._Inset(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA7EllipseV6_InsetV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Circle._Inset(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA6CircleV6_InsetV_Tt1B5(a1, v4);
}

uint64_t AnimationSettlingContext.Data.init(delta:velocity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for AnimationSettlingContext.Data() + 36);

  return v9(v7, a2, a3);
}

uint64_t AnimationContext.shouldFinishEarly(data:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for AnimationSettlingContext.Data();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v26 = v5;
  v27 = v4;
  v9 = type metadata accessor for AnimationSettlingContext();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = *v3;
  v13 = v3[1];
  v14 = *(v3 + 16);
  v15 = *(v3 + 17);
  v34 = *v3;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v16 = AnimationContext.finishingDefinition.getter();
  if (v16)
  {
    v18 = v16;
    v19 = v17;
    v23(v16, v17);
    v30 = v12;
    v31 = v13;
    v32 = v14;
    v33 = v15;
    AnimationContext.environment.getter(&v29);
    v28 = v29;
    AnimationSettlingContext.init(data:environment:)(v8, &v28, v11);
    v20 = (*(v19 + 24))(v11, v18, v19);
    (*(v24 + 8))(v11, v25);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t AnimationContext.finishingDefinition.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v3 = *(a3 + 24);
  v9 = *(a3 + 16);
  v10 = v3;
  *&v12 = v9;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for Optional();
  v4 = type metadata accessor for AnimationFinishingDefinitionKey();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Alignment, &v8, MEMORY[0x1E69E73E0], v4, v5, &v12);
  v11 = v12;
  v6 = type metadata accessor for AnimationState();
  swift_getWitnessTable();
  return specialized AnimationState.subscript.setter(&v11, v4, v6, v4);
}

unsigned int *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance ConcentricRectangle(unsigned int *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA19ConcentricRectangleV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance RoundedRectangularShapeCorners(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA30RoundedRectangularShapeCornersV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance ScalePulseEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA16ScalePulseEffect33_5B41BB980C958F118A8AF82B3D90BAC0LLV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance ContainerRelativeShape._Inset(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA22ContainerRelativeShapeV6_InsetV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance PartialContainerRelativeShape(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA29PartialContainerRelativeShapeV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance CornerMaskingConfiguration.CornerStyle(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA26CornerMaskingConfigurationV0J5StyleV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance CornerMaskingConfiguration(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA26CornerMaskingConfigurationV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance MaterialEffect.Fill(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14MaterialEffectV4Fill33_E3B0FF576136F59061E5D7766373CC25LLV_Tt1B5(a1, v4);
}

uint64_t Attribute<A>.animated(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v8[2] = a1[2];
  _GraphValue.init(_:)(a2, &v9);
  (*(a4 + 48))(&v9, v8, a3, a4);
  return v9;
}

uint64_t key path setter for Animatable<>.animatableData : <A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, v5);
  return Animatable<>.animatableData.setter(v7, v4);
}

uint64_t Animatable<>.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

void (*Animatable<>.animatableData.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a2 - 8);
  v10 = v9;
  v7[2] = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  (*(v10 + 16))();
  return Animatable<>.animatableData.modify;
}

void Animatable<>.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, *v2);
    (*(v5 + 8))(v7, v8);
    (*(v5 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v8);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;
    v11 = v2[2];
    (*(v11 + 8))(v9, *v2);
    (*(v11 + 32))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Double(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZSd_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance CGFloat(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZ12CoreGraphics7CGFloatV_Tt1B5(a1, v4);
}

uint64_t key path setter for Animatable.subscript<A>(_animatableValue:) : <A><A1>AAA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = *(v5 + 16);
  v12(&v14 - v10, v9);
  (v12)(v7, v11, v4);
  swift_setAtWritableKeyPath();
  return (*(v5 + 8))(v11, v4);
}

{
  v18[1] = a2;
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  v15 = *(v8 + 16);
  v15(v18 - v13, a1, AssociatedTypeWitness, v12);
  (v15)(v10, v14, AssociatedTypeWitness);
  v16 = swift_modifyAtWritableKeyPath();
  (*(v6 + 32))(v10, v5, v6);
  v16(v19, 0);
  return (*(v8 + 8))(v14, AssociatedTypeWitness);
}

{
  v4 = *(a3 + a4 - 24);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = *(v5 + 16);
  v12(&v14 - v10, v9);
  (v12)(v7, v11, v4);
  swift_setAtReferenceWritableKeyPath();
  return (*(v5 + 8))(v11, v4);
}

{
  v18[1] = a2;
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  v15 = *(v8 + 16);
  v15(v18 - v13, a1, AssociatedTypeWitness, v12);
  (v15)(v10, v14, AssociatedTypeWitness);
  v16 = swift_modifyAtReferenceWritableKeyPath();
  (*(v6 + 32))(v10, v5, v6);
  v16(v19, 0);
  return (*(v8 + 8))(v14, AssociatedTypeWitness);
}

uint64_t Animatable.subscript.getter(void *a1, uint64_t a2, uint64_t a3)
{
  return Animatable.subscript.getter(a1, a2, a3, MEMORY[0x1E69E6CE8]);
}

{
  return Animatable.subscript.getter(a1, a2, a3, MEMORY[0x1E69E6F98]);
}

uint64_t Animatable.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_readAtKeyPath();
  (*(*(*(v3 + *MEMORY[0x1E69E6F98] + 8) - 8) + 16))(a2);
  return v4(&v6, 0);
}

uint64_t key path getter for Animatable.subscript<A>(_animatableValue:) : <A><A1>AAA1@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 24);
  v5 = swift_readAtKeyPath();
  (*(*(v4 - 8) + 16))(a3);
  return v5(&v7, 0);
}

uint64_t Animatable.subscript.getter(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(*a1 + *a4 + 8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - v7;
  swift_getAtKeyPath();
  (*(a3 + 24))(v5, a3);
  return (*(v6 + 8))(v8, v5);
}

uint64_t key path getter for Animatable.subscript<A>(_animatableValue:) : <A><A1>AAA1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 24);
  v4 = *(a2 + a3 - 8);
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  swift_getAtKeyPath();
  (*(v4 + 24))(v3, v4);
  return (*(v5 + 8))(v7, v3);
}

uint64_t AnimationContext.finishingDefinition.getter()
{
  v0 = type metadata accessor for AnimationFinishingDefinitionKey();
  v1 = type metadata accessor for AnimationState();
  WitnessTable = swift_getWitnessTable();
  AnimationState.subscript.getter(v0, v1, v0, WitnessTable);
  return v4;
}

uint64_t AnimationSettlingContext.init(data:environment:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = type metadata accessor for AnimationSettlingContext.Data();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for AnimationSettlingContext();
  v9 = (a3 + *(result + 36));
  *v9 = v5;
  v9[1] = v6;
  return result;
}

uint64_t key path getter for AnimationContext.finishingDefinition : <A>AnimationContext<A>@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AnimationContext();
  result = AnimationContext.finishingDefinition.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t (*AnimationContext.finishingDefinition.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1)
{
  a1[2] = a2;
  a1[3] = v2;
  *a1 = AnimationContext.finishingDefinition.getter();
  a1[1] = v4;
  return AnimationContext.finishingDefinition.modify;
}

uint64_t AnimationSettlingContext.velocity.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for AnimationSettlingContext.Data();
  v6 = *(*(v4 - 8) + 16);
  v7 = v2 + *(v5 + 36);

  return v6(a2, v7, v4);
}

uint64_t protocol witness for static AnimationStateKey.defaultValue.getter in conformance AnimationFinishingDefinitionKey<A>@<X0>(uint64_t *a1@<X8>)
{
  result = protocol witness for PlatformDrawable.makeAsyncUpdate(content:required:layer:bounds:) in conformance CGDrawingLayer();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance MeshGradient._Paint(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12MeshGradientV6_PaintV_Tt1B5(a1, v4);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance AppearanceAnimationView<A, B>.AnimationEffect(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance LazyLayoutAdaptor_V1<A>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _SaturationEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_SaturationEffectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Angle(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA5AngleV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance GlassAppearanceScaleEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance GlassContainerCache.UnwrappedMaterial(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA19GlassContainerCacheC17UnwrappedMaterialV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance GlassEffectShapeModifier(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _ColorMultiplyEffect._Resolved(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA20_ColorMultiplyEffectV9_ResolvedV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance ColorView(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ColorViewV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance CGRect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZSo6CGRectV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance RectangleCornerRadii(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA20RectangleCornerRadiiV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance Edge.Corner.Style(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA4EdgeOAAE6CornerO5StyleV_Tt1B5(a1, v4);
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance _HueRotationEffect(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA18_HueRotationEffectV_Tt1B5(a1, v4);
}

uint64_t type metadata completion function for AnimationSettlingContext()
{
  result = type metadata accessor for AnimationSettlingContext.Data();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimationSettlingContext(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = ((v6 + v7) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v12 = *a2;
    *a1 = *a2;
    v3 = (v12 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v13 = ~v7;
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v14(((v3 + v8) & v13), ((a2 + v8) & v13), v4);
    v16 = ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v16[1] = v17[1];
  }

  return v3;
}

uint64_t destroy for AnimationSettlingContext(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(a1, v3);
  v5((*(v4 + 64) + a1 + *(v4 + 80)) & ~*(v4 + 80), v3);
}

uint64_t initializeWithCopy for AnimationSettlingContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v10 = ((v8 + v9) & ~v9) + v8 + 7;
  v11 = ((v10 + a1) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v11[1] = v12[1];

  return a1;
}

uint64_t assignWithCopy for AnimationSettlingContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v10 = ((v8 + v9) & ~v9) + v8 + 7;
  v11 = ((v10 + a1) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  v11[1] = v12[1];

  return a1;
}

uint64_t initializeWithTake for AnimationSettlingContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v10 = ((v8 + v9) & ~v9) + v8 + 7;
  *((v10 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AnimationSettlingContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v10 = ((v8 + v9) & ~v9) + v8 + 7;
  v11 = ((v10 + a1) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  v11[1] = v12[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for AnimationSettlingContext(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 - 1;
    if (v19 < 0)
    {
      v19 = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for AnimationSettlingContext(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = ((*(*(*(a4 + 16) - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v9) = 0;
      }

      else if (v13)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v6 < 0x7FFFFFFE)
        {
          v22 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v22 = a2 - 0x7FFFFFFF;
            v22[1] = 0;
          }

          else
          {
            *v22 = a2;
          }
        }

        else if (v6 >= a2)
        {
          v23 = *(v5 + 56);

          v23();
        }

        else
        {
          if (v8 <= 3)
          {
            v18 = ~(-1 << (8 * v8));
          }

          else
          {
            v18 = -1;
          }

          if (v8)
          {
            v19 = v18 & (~v6 + a2);
            if (v8 <= 3)
            {
              v20 = v8;
            }

            else
            {
              v20 = 4;
            }

            v21 = a1;
            bzero(a1, v8);
            if (v20 > 2)
            {
              if (v20 == 3)
              {
                *v21 = v19;
                *(v21 + 2) = BYTE2(v19);
              }

              else
              {
                *v21 = v19;
              }
            }

            else if (v20 == 1)
            {
              *v21 = v19;
            }

            else
            {
              *v21 = v19;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, v9);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v9) = v15;
    }

    else
    {
      *(a1 + v9) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v9) = v15;
  }
}

void MeshGradient._Paint.animatableData.getter(float32x4_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  v6 = *(*v1 + 16);
  v80 = *(v1 + 24);
  if ((*(v1 + 8) & 1) == 0)
  {
    if (v6 + 0x4000000000000000 >= 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 2 * v6, 0, MEMORY[0x1E69E7CC0]);
      v46 = v3[2];
      if (v46)
      {
        v47 = v3 + 4;
        do
        {
          *&v45 = *v47;
          v49 = *(v7 + 2);
          v48 = *(v7 + 3);
          v50 = v48 >> 1;
          v51 = v49 + 1;
          if (v48 >> 1 <= v49)
          {
            v113 = v45;
            v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v7);
            v45 = v113;
            v7 = v53;
            v48 = *(v53 + 3);
            v50 = v48 >> 1;
          }

          *(v7 + 2) = v51;
          *&v7[4 * v49 + 32] = v45;
          v52 = v49 + 2;
          if (v50 < v52)
          {
            v114 = v45;
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v52, 1, v7);
            v45 = v114;
            v7 = v54;
          }

          *(v7 + 2) = v52;
          *&v7[4 * v51 + 32] = DWORD1(v45);
          ++v47;
          --v46;
        }

        while (v46);
      }

      goto LABEL_35;
    }

LABEL_52:
    __break(1u);
    return;
  }

  if ((v6 * 10) >> 64 != (10 * v6) >> 63)
  {
    __break(1u);
    goto LABEL_52;
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 10 * v6, 0, MEMORY[0x1E69E7CC0]);
  v13 = v3[2];
  if (v13)
  {
    v14 = v3 + 8;
    do
    {
      *&v12 = *(v14 - 4);
      *&v11 = *(v14 - 3);
      *&v10 = *(v14 - 2);
      *&v9 = *(v14 - 1);
      *&v8 = *v14;
      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      v17 = v15 >> 1;
      v18 = v16 + 1;
      if (v15 >> 1 <= v16)
      {
        v93 = v9;
        v103 = v8;
        v81 = v11;
        v85 = v10;
        v77 = v12;
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v7);
        v12 = v77;
        v11 = v81;
        v10 = v85;
        v9 = v93;
        v8 = v103;
        v7 = v35;
        v15 = *(v35 + 3);
        v17 = v15 >> 1;
      }

      *(v7 + 2) = v18;
      *&v7[4 * v16 + 32] = v12;
      v19 = v16 + 2;
      if (v17 < (v16 + 2))
      {
        v94 = v9;
        v104 = v8;
        v82 = v11;
        v86 = v10;
        v78 = v12;
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 2, 1, v7);
        v12 = v78;
        v11 = v82;
        v10 = v86;
        v9 = v94;
        v8 = v104;
        v7 = v36;
      }

      *(v7 + 2) = v19;
      *&v7[4 * v18 + 32] = DWORD1(v12);
      v20 = *(v7 + 3);
      v21 = v16 + 3;
      if ((v16 + 3) > (v20 >> 1))
      {
        v95 = v9;
        v105 = v8;
        v83 = v11;
        v87 = v10;
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v16 + 3, 1, v7);
        v11 = v83;
        v10 = v87;
        v9 = v95;
        v8 = v105;
        v7 = v37;
      }

      *(v7 + 2) = v21;
      *&v7[4 * v19 + 32] = v11;
      v22 = *(v7 + 3);
      v23 = v16 + 4;
      if ((v16 + 4) > (v22 >> 1))
      {
        v96 = v9;
        v106 = v8;
        v84 = v11;
        v88 = v10;
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v16 + 4, 1, v7);
        v11 = v84;
        v10 = v88;
        v9 = v96;
        v8 = v106;
        v7 = v38;
      }

      *(v7 + 2) = v23;
      *&v7[4 * v21 + 32] = DWORD1(v11);
      v24 = *(v7 + 3);
      v25 = v16 + 5;
      if ((v16 + 5) > (v24 >> 1))
      {
        v97 = v9;
        v107 = v8;
        v89 = v10;
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v16 + 5, 1, v7);
        v10 = v89;
        v9 = v97;
        v8 = v107;
        v7 = v39;
      }

      *(v7 + 2) = v25;
      *&v7[4 * v23 + 32] = v10;
      v26 = *(v7 + 3);
      v27 = v16 + 6;
      if ((v16 + 6) > (v26 >> 1))
      {
        v98 = v9;
        v108 = v8;
        v90 = v10;
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v16 + 6, 1, v7);
        v10 = v90;
        v9 = v98;
        v8 = v108;
        v7 = v40;
      }

      *(v7 + 2) = v27;
      *&v7[4 * v25 + 32] = DWORD1(v10);
      v28 = *(v7 + 3);
      v29 = v16 + 7;
      if ((v16 + 7) > (v28 >> 1))
      {
        v99 = v9;
        v109 = v8;
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v16 + 7, 1, v7);
        v9 = v99;
        v8 = v109;
        v7 = v41;
      }

      *(v7 + 2) = v29;
      *&v7[4 * v27 + 32] = v9;
      v30 = *(v7 + 3);
      v31 = v16 + 8;
      if ((v16 + 8) > (v30 >> 1))
      {
        v100 = v9;
        v110 = v8;
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v16 + 8, 1, v7);
        v9 = v100;
        v8 = v110;
        v7 = v42;
      }

      *(v7 + 2) = v31;
      *&v7[4 * v29 + 32] = DWORD1(v9);
      v32 = *(v7 + 3);
      v33 = v16 + 9;
      if ((v16 + 9) > (v32 >> 1))
      {
        v111 = v8;
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v16 + 9, 1, v7);
        v8 = v111;
        v7 = v43;
      }

      *(v7 + 2) = v33;
      *&v7[4 * v31 + 32] = v8;
      v34 = *(v7 + 3);
      if ((v16 + 10) > (v34 >> 1))
      {
        v112 = v8;
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v16 + 10, 1, v7);
        v8 = v112;
        v7 = v44;
      }

      *(v7 + 2) = v16 + 10;
      *&v7[4 * v33 + 32] = DWORD1(v8);
      v14 += 5;
      --v13;
    }

    while (v13);
  }

LABEL_35:
  v55 = *(v4 + 16);
  v56 = MEMORY[0x1E69E7CC0];
  if (v55)
  {
    v76 = v5;
    v79 = a1;
    v118 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
    v56 = v118;
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v60 = (v4 + 44);
    v61.i64[0] = 0x4300000043000000;
    v61.i64[1] = 0x4300000043000000;
    do
    {
      v58.i64[0] = *(v60 - 3);
      LODWORD(v57) = *v60;
      v59.i64[0] = *(v60 - 1);
      if ((static Color.Resolved.legacyInterpolation & 1) == 0)
      {
        v115 = v57;
        v62 = vaddv_f32(vmul_f32(*v58.i8, 0x3F094D173ED30EB1)) + (*(v60 - 1) * 0.051446);
        v63 = vmul_f32(*v58.i8, 0x3E903D743E58FD3BLL);
        v64 = vrev64_s32(vmul_f32(*v58.i8, 0x3F2E42533DB4D7ECLL));
        v65 = vmul_lane_f32(0x3F2146493DDBF2F0, *v59.i8, 1);
        v66 = powf(fabsf(v62), 0.33333);
        v67 = copysignf(v66, v62);
        v68 = vadd_f32(vadd_f32(v63, v64), v65);
        v69 = vabs_f32(v68);
        v91 = v69.f32[0];
        v101 = powf(v69.f32[1], 0.33333);
        *v70.i32 = powf(v91, 0.33333);
        v61.i64[0] = 0x4300000043000000;
        v61.i64[1] = 0x4300000043000000;
        *&v70.i32[1] = v101;
        v57 = v115;
        *v58.i32 = *&v115 * v67;
        *v59.i8 = vmul_n_f32(vbsl_s8(0x8000000080000000, v70, v68), *&v115);
      }

      v118 = v56;
      v72 = *(v56 + 16);
      v71 = *(v56 + 24);
      if (v72 >= v71 >> 1)
      {
        v102 = v58;
        v116 = v57;
        v92 = v59;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
        v59 = v92;
        v58 = v102;
        v57 = v116;
        v61.i64[0] = 0x4300000043000000;
        v61.i64[1] = 0x4300000043000000;
        v56 = v118;
      }

      v73 = vextq_s8(vextq_s8(v58, v58, 4uLL), v59, 0xCuLL);
      v73.i32[3] = v57;
      *(v56 + 16) = v72 + 1;
      *(v56 + 16 * v72 + 32) = vmulq_f32(v73, v61);
      v60 += 4;
      --v55;
    }

    while (v55);
    a1 = v79;
    v5 = v76;
  }

  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v74 = v80;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v117, v80.f32[0], v80.u32[1], v80.f32[2], v80.f32[3]);
    v74 = v117;
  }

  v75.i64[0] = 0x4300000043000000;
  v75.i64[1] = 0x4300000043000000;
  a1->i64[0] = v7;
  a1->i64[1] = v56;
  a1[1] = vmulq_f32(v74, v75);
  a1[2].i32[0] = v5;
}

uint64_t *MeshGradient.resolvePaint(in:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *v2 * v5;
  if ((*v2 * v5) >> 64 != v6 >> 63)
  {
    __break(1u);
    goto LABEL_36;
  }

  v8 = *result;
  v7 = result[1];
  v9 = v2[2];
  v27 = *(v2 + 24);
  v28 = *(v2 + 56);
  v25 = *(v2 + 57);
  v10 = v2[4];
  v11 = v2[6];
  v12 = *(v2 + 40);
  *&v35 = *result;
  *(&v35 + 1) = v7;
  result = (*(*v11 + 120))(&v33, &v35);
  v13 = v34;
  v26 = v33;
  if ((v12 & 1) == 0)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {

      if (v6)
      {
        v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v14 + 16) = v6;
        bzero((v14 + 32), 16 * v6);
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v23 = v9;
      v24 = v4;
      if (*(v10 + 16) < v6)
      {
        v6 = *(v10 + 16);
      }

      v22 = v14;
      if (v6)
      {
        v15 = (v14 + 32);
        v16 = (v10 + 32);
        do
        {
          v17 = *v16;
          v30 = v8;
          v31 = v7;
          v18 = *(*v17 + 120);

          v18(&v35, &v30);

          *v15 = v35;
          v19 = v36;
          if (v13 > v36)
          {
            v19 = v13;
          }

          ++v15;
          ++v16;
          v13 = v19;
          --v6;
        }

        while (v6);
      }

      else
      {
        v19 = v13;
      }

      v13 = v19;
      v4 = v24;
      v10 = v22;
      v9 = v23;
      goto LABEL_18;
    }

LABEL_36:
    __break(1u);
    return result;
  }

LABEL_18:
  if (v13 <= 1.0)
  {
    v20 = 0;
  }

  else
  {
    v30 = v8;
    v31 = v7;
    v29 = 3;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v29, &v32);
    v20 = v32;
  }

  if (v25)
  {
    if (v25 == 1)
    {
      if (v28)
      {
        v21 = 17;
      }

      else
      {
        v21 = 1;
      }
    }

    else if (v28)
    {
      v21 = 19;
    }

    else
    {
      v21 = 3;
    }
  }

  else if (v28)
  {
    v21 = 16;
  }

  else
  {
    v21 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v27;
  *(a2 + 16) = v10;
  *(a2 + 24) = v26;
  *(a2 + 40) = v13;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  *(a2 + 64) = v20;
  *(a2 + 68) = v21;
}

uint64_t MeshGradient.withResolvedColors(in:_:)(uint64_t *isStackAllocationSafe, uint64_t (*a2)(uint64_t, uint64_t, unint64_t), uint64_t a3)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v8 = v3[4];
  if (v3[5])
  {
    v9 = *(v8 + 16);
    LOBYTE(v33) = 1;
    return a2(v8 + 32, v9, 0x100000000uLL);
  }

  v11 = v3[1];
  v12 = *v3 * v11;
  if ((*v3 * v11) >> 64 != v12 >> 63)
  {
    __break(1u);
LABEL_22:
    v25 = v12;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v26 = swift_slowAlloc();
      closure #1 in MeshGradient.withResolvedColors(in:_:)(v26, v25, v25, v8, v4, v5, &v35, a2);

      JUMPOUT(0x193AC4820);
    }

    goto LABEL_7;
  }

  v4 = *isStackAllocationSafe;
  v5 = isStackAllocationSafe[1];
  v35 = 0;
  v36 = 1;
  if (v12 < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v12 >> 59)
  {
    goto LABEL_27;
  }

  if (16 * v12 > 1024)
  {
    goto LABEL_22;
  }

LABEL_7:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v15 = &v27 - v14;
  if (*(v8 + 16) >= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v8 + 16);
  }

  if (v16)
  {
    v29 = &v27;
    v30 = v13;
    v31 = a3;
    v32 = a2;
    v17 = (v8 + 32);
    v18 = 1;
    v19 = 0.0;
    v28 = &v27 - v14;
    v20 = (&v27 - v14);
    do
    {
      v22 = *v17;
      v37[0] = v4;
      v37[1] = v5;
      v23 = *(*v22 + 120);

      v23(&v33, v37);

      *v20 = v33;
      if (v18)
      {
        v21 = v34;
        v19 = v34;
        v18 = 0;
      }

      else
      {
        v18 = 0;
        if (v19 <= v34)
        {
          v19 = v34;
        }

        v21 = v19;
      }

      ++v20;
      ++v17;
      --v16;
    }

    while (v16);
    v24 = LODWORD(v21);
    a2 = v32;
    v13 = v30;
    v15 = v28;
  }

  else
  {
    v24 = 0;
    v18 = 1;
  }

  LOBYTE(v37[0]) = v18;
  return a2(v15, v13, v24 | (v18 << 32));
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MeshGradient.BezierPoint(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static MeshGradient.BezierPoint.== infix(_:_:)(v5, v7) & 1;
}

uint64_t MeshGradient.locations.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t MeshGradient.locations.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t MeshGradient.colors.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t MeshGradient.colors.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t MeshGradient.background.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t MeshGradient.init(width:height:locations:colors:background:smoothsColors:colorSpace:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *a7;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = v8;
  *(a8 + 24) = v9;
  *(a8 + 32) = v10;
  *(a8 + 40) = v11;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 57) = v12;
  return result;
}

uint64_t MeshGradient._Paint.locations.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t MeshGradient._Paint.locations.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t MeshGradient._Paint.colors.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

float MeshGradient._Paint.background.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

__n128 MeshGradient._Paint.background.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = a1[1].n128_u32[0];
  return result;
}

__n128 MeshGradient._Paint.init(locations:colors:background:width:height:allowedDynamicRange:flags:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *a6;
  *a8 = *a1;
  *(a8 + 8) = v8;
  *(a8 + 16) = a2;
  result = *a3;
  *(a8 + 24) = *a3;
  *(a8 + 40) = a3[1].n128_u32[0];
  *(a8 + 48) = a4;
  *(a8 + 56) = a5;
  *(a8 + 64) = v9;
  *(a8 + 68) = a7;
  return result;
}

uint64_t specialized closure #1 in MeshGradient.withResolvedColors(in:_:)(_OWORD *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v16 = *(a8 + 16);
  if (v16 >= a7)
  {
    v17 = a7;
  }

  else
  {
    v17 = *(a8 + 16);
  }

  if (a7 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v14 = a12;
  v34 = a1;
  v35 = a14;
  if (v17)
  {
    v21 = (a8 + 32);
    v22 = a1;
    do
    {
      v23 = *v21;
      v36[0] = a9;
      v36[1] = a10;
      v24 = *(*v23 + 120);

      v24(&v37, v36);

      HIDWORD(a2) = DWORD1(v37);
      *v22 = v37;
      *&a2 = v38;
      v25 = 0;
      if ((*(a11 + 4) & 1) == 0)
      {
        v25 = 0;
        if (*a11 > v38)
        {
          LODWORD(a2) = *a11;
        }
      }

      *a11 = LODWORD(a2);
      *(a11 + 4) = 0;
      ++v22;
      ++v21;
      --v17;
    }

    while (v17);
  }

  else
  {
    v25 = *(a11 + 4);
  }

  if (*(v14 + 16) > *a11)
  {
    v26 = *(v14 + 16);
  }

  else
  {
    v26 = *a11;
  }

  if (v25)
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = v26;
  }

  v27 = v34;
  v28 = a14;
  while (1)
  {
    *(v14 + 16) = v15;
    if (*(v28 + 57))
    {
      if (*(v28 + 57) == 1)
      {
        LODWORD(v16) = (v28[7] & 1) != 0 ? 17 : 1;
      }

      else
      {
        LODWORD(v16) = (v28[7] & 1) != 0 ? 19 : 3;
      }
    }

    else
    {
      LODWORD(v16) = (v28[7] & 1) != 0 ? 16 : 0;
    }

    LODWORD(a2) = *v14;
    LODWORD(a3) = *(v14 + 4);
    LODWORD(a4) = *(v14 + 8);
    LODWORD(a5) = *(v14 + 12);
    if ((v28[3] & 1) == 0)
    {
      break;
    }

    if ((*v28 * v28[1]) >> 64 == (*v28 * v28[1]) >> 63)
    {
      v29 = 2;
      goto LABEL_36;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    v27 = v34;
    v28 = v35;
    if (v16)
    {
      v15 = NAN;
    }
  }

  if ((*v28 * v28[1]) >> 64 != (*v28 * v28[1]) >> 63)
  {
    goto LABEL_39;
  }

  v29 = 1;
LABEL_36:
  v30 = *(a13 + 40);
  LODWORD(v33) = v16;
  [v30 setMeshGradientType:v29 positions:v28[2] + 32 colors:v27 count:a2 width:a3 background:a4 colorSpace:a5 flags:v33];
  *&v31 = v15;
  [v30 setHeadroom_];
  *(a13 + 272) = 0;

  return outlined destroy of MeshGradient(v28);
}

uint64_t closure #1 in MeshGradient.withResolvedColors(in:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t (*a8)(uint64_t, uint64_t, unint64_t))
{
  if (*(a4 + 16) >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = *(a4 + 16);
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (v8)
    {
      v13 = (a4 + 32);
      v14 = result;
      do
      {
        v15 = *v13;
        v22[0] = a5;
        v22[1] = a6;
        v16 = *(*v15 + 120);

        v16(&v23, v22);

        *v14 = v23;
        v17 = v24;
        v18 = 0;
        if ((a7[1] & 1) == 0)
        {
          v18 = 0;
          if (*a7 > v24)
          {
            v17 = *a7;
          }
        }

        *a7 = v17;
        *(a7 + 4) = 0;
        ++v14;
        ++v13;
        --v8;
      }

      while (v8);
    }

    else
    {
      v18 = *(a7 + 4);
    }

    v19 = *a7;
    LOBYTE(v22[0]) = v18;
    return a8(v10, a2, v19 | (v18 << 32));
  }

  return result;
}

uint64_t MeshGradient._Paint.draw(path:style:in:bounds:)(double *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v7 = *a4;
  v8 = a4[1];
  v28 = a2[1];
  v29 = *a2;
  v9 = *(a2 + 4);
  v10 = *(a2 + 40);
  v11 = *(v4 + 48);
  v55[2] = *(v4 + 32);
  v55[3] = v11;
  v56 = *(v4 + 64);
  v12 = *(v4 + 16);
  v55[0] = *v4;
  v55[1] = v12;
  if ((a4[2] & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = *a1;
  v13 = *(a1 + 32);
  if (v13 <= 2)
  {
    v8 = *(a1 + 1);
    if (v13 >= 2)
    {
      v7 = *(v7 + 16);
      v8 = *(*a1 + 32);
    }

    goto LABEL_16;
  }

  if (v13 == 5)
  {
    v14 = *a1;
    if (*(v7 + 16))
    {
      if (*(v7 + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v15 = MEMORY[0x193AC3640](v14 + 24);
      }

      width = v17;
      x = v15;
      y = v16;
      height = v18;
      goto LABEL_15;
    }

    v19 = *(v7 + 24);
    if (v19)
    {
      v20 = v19;

      PathBoundingBox = CGPathGetPathBoundingBox(v20);
      width = PathBoundingBox.size.width;
      x = PathBoundingBox.origin.x;
      y = PathBoundingBox.origin.y;
      height = PathBoundingBox.size.height;

LABEL_15:
      outlined destroy of Path(a1);
      *&v8 = width;
      *&v7 = x;
      *(&v7 + 1) = y;
      *(&v8 + 1) = height;
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (v13 == 6)
  {
    v7 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 16);
LABEL_16:
    v21 = *(v4 + 48);
    v46 = *(v4 + 32);
    v47 = v21;
    *v48 = *(v4 + 64);
    v22 = *(v4 + 16);
    v44 = *v4;
    v45 = v22;
    *&v48[8] = v7;
    *&v48[24] = v8;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi5_(&v44);
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v37 = *v48;
    v38 = *&v48[16];
    v39 = *&v48[32];
    v40 = v49;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v30[0] = v29;
    v30[1] = v28;
    v31 = v9;
    v32 = v10;
    outlined init with copy of MeshGradient._Paint(v55, v53);
    GraphicsContext.draw(_:with:style:)(a1, &v33, v30, a3);
    v53[8] = v41;
    v53[9] = v42;
    v54 = v43;
    v53[4] = v37;
    v53[5] = v38;
    v53[6] = v39;
    v53[7] = v40;
    v53[0] = v33;
    v53[1] = v34;
    v53[2] = v35;
    v53[3] = v36;
    return outlined destroy of GraphicsContext.ResolvedShading(v53);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL MeshGradient._Paint.isClear.getter()
{
  v1 = *(v0 + 16);
  result = *(v0 + 36) == 0.0;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 1 - v3;
    v5 = (v1 + 44);
    do
    {
      if (result)
      {
        result = *v5 == 0.0;
        if (!v4)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (!v4)
        {
          return result;
        }
      }

      ++v4;
      v5 += 4;
    }

    while (v4 != 1);
    __break(1u);
  }

  return result;
}

BOOL MeshGradient._Paint.isOpaque.getter()
{
  v1 = *(v0 + 16);
  result = *(v0 + 36) == 1.0;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 1 - v3;
    v5 = (v1 + 44);
    do
    {
      if (result)
      {
        result = *v5 == 1.0;
        if (!v4)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (!v4)
        {
          return result;
        }
      }

      ++v4;
      v5 += 4;
    }

    while (v4 != 1);
    __break(1u);
  }

  return result;
}

void key path setter for MeshGradient._Paint.animatableData : MeshGradient._Paint(float32x4_t *a1)
{
  v1 = a1->i64[1];
  v2 = a1[2].i32[0];
  v3[0].i64[0] = a1->i64[0];
  v3[0].i64[1] = v1;
  v3[1] = a1[1];
  v4 = v2;

  MeshGradient._Paint.animatableData.setter(v3);
}

void MeshGradient._Paint.animatableData.setter(float32x4_t *a1)
{
  v2 = a1->i64[0];
  v3 = a1->i64[1];
  v34 = a1[1];
  v4 = a1[2].f32[0];
  v5 = *(v1 + 16);
  if (*(v5 + 2) >= *(v3 + 16))
  {
    v6 = *(v3 + 16);
  }

  else
  {
    v6 = *(v5 + 2);
  }

  if (v6)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_71;
    }

    while (v6 <= *(v3 + 16))
    {
      v33 = v4;
      v7 = 0;
      v8 = 0;
      while (v8 < *(v5 + 2))
      {
        v11 = *(v3 + v7 + 40);
        v12 = *(v3 + v7 + 44);
        v13 = *(v3 + v7 + 32);
        if (one-time initialization token for legacyInterpolation != -1)
        {
          swift_once();
        }

        v35 = vmul_f32(v13, 0x3C0000003C000000);
        v4 = v11 * 0.0078125;
        v14 = v12 * 0.0078125;
        swift_beginAccess();
        if (static Color.Resolved.legacyInterpolation)
        {
          v9 = v35;
        }

        else
        {
          if (v14 == 0.0)
          {
            v15 = v35;
          }

          else
          {
            v15 = vmul_n_f32(v35, 1.0 / v14);
            v4 = v4 * (1.0 / v14);
          }

          v16 = v4 * (v4 * v4);
          v17 = vmul_f32(v15, vmul_f32(v15, v15));
          v18 = vsub_f32(vmul_f32(v17, 0x40270644408274ABLL), vrev64_s32(vmul_f32(v17, 0x4053B18C3FA25C2DLL)));
          v19 = vmul_n_f32(0x3EAEC16A3E6C8362, v16);
          v9.i32[0] = vadd_f32(v18, v19).u32[0];
          v9.i32[1] = vsub_f32(v18, v19).i32[1];
          v20 = vmul_f32(v17, 0x3F34133EBB897F53);
          v4 = (v16 * 1.7076) + vsub_f32(v20, vdup_lane_s32(v20, 1)).f32[0];
        }

        ++v8;
        *&v5[v7 + 32] = v9;
        v10 = &v5[v7];
        *(v10 + 10) = v4;
        *(v10 + 11) = v14;
        v7 += 16;
        if (v6 == v8)
        {

          *(v1 + 16) = v5;
          v4 = v33;
          goto LABEL_19;
        }
      }

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
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

    __break(1u);
    goto LABEL_73;
  }

LABEL_19:
  v5 = *v1;
  v21 = *(v2 + 16);
  v22 = *(*v1 + 16);
  if (*(v1 + 8))
  {
    if ((v22 * 10) >> 64 != (10 * v22) >> 63)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v21 == 10 * v22 && v22)
    {

      v6 = 0;
      v24 = 0;
      v25 = v2 + 36;
      v26 = 8;
      while (v26 - 8 < v21)
      {
        LODWORD(v23) = *(v25 + v6 - 4);
        v36 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        }

        v23 = v36;
        if (v24 >= *(v5 + 2))
        {
          goto LABEL_61;
        }

        *&v5[v6 + 32] = v36;
        v21 = *(v2 + 16);
        if (v26 - 7 >= v21)
        {
          goto LABEL_62;
        }

        DWORD1(v23) = *(v25 + v6);
        *&v5[v6 + 32] = v23;
        if (v26 - 6 >= v21)
        {
          goto LABEL_63;
        }

        LODWORD(v27) = *(v25 + v6 + 4);
        *&v5[v6 + 40] = v27;
        if (v26 - 5 >= v21)
        {
          goto LABEL_64;
        }

        HIDWORD(v27) = *(v25 + v6 + 8);
        *&v5[v6 + 40] = v27;
        if (v26 - 4 >= v21)
        {
          goto LABEL_65;
        }

        LODWORD(v28) = *(v25 + v6 + 12);
        *&v5[v6 + 48] = v28;
        if (v26 - 3 >= v21)
        {
          goto LABEL_66;
        }

        HIDWORD(v28) = *(v25 + v6 + 16);
        *&v5[v6 + 48] = v28;
        if (v26 - 2 >= v21)
        {
          goto LABEL_67;
        }

        LODWORD(v29) = *(v25 + v6 + 20);
        *&v5[v6 + 56] = v29;
        if (v26 - 1 >= v21)
        {
          goto LABEL_68;
        }

        HIDWORD(v29) = *(v25 + v6 + 24);
        *&v5[v6 + 56] = v29;
        if (v26 >= v21)
        {
          goto LABEL_69;
        }

        LODWORD(v23) = *(v25 + v6 + 28);
        *&v5[v6 + 64] = v23;
        if (v26 + 1 >= v21)
        {
          goto LABEL_70;
        }

        ++v24;
        DWORD1(v23) = *(v25 + v6 + 32);
        *&v5[v6 + 64] = v23;
        v26 += 10;
        v6 += 40;
        if (v22 == v24)
        {

          goto LABEL_52;
        }
      }

      goto LABEL_60;
    }

LABEL_52:

    *v1 = v5;
    *(v1 + 8) = 1;
LABEL_55:
    v38 = v34;
    v39 = v4;
    Color.ResolvedHDR.animatableData.setter(&v38);
    return;
  }

  if (v22 + 0x4000000000000000 >= 0)
  {
    if (v21 == 2 * v22)
    {
      if (v22)
      {

        v6 = 0;
        v31 = 9;
        v32 = 32;
        while (v31 - 9 < v21)
        {
          LODWORD(v30) = *(v2 + v32);
          v37 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          }

          v30 = v37;
          if (v6 >= *(v5 + 2))
          {
            goto LABEL_58;
          }

          *&v5[v32] = v37;
          v21 = *(v2 + 16);
          if (v31 - 8 >= v21)
          {
            goto LABEL_59;
          }

          DWORD1(v30) = *(v2 + 4 * v31);
          ++v6;
          *&v5[v32] = v30;
          v31 += 2;
          v32 += 8;
          if (v22 == v6)
          {

            goto LABEL_54;
          }
        }

        goto LABEL_57;
      }

LABEL_54:

      *v1 = v5;
      *(v1 + 8) = 0;
    }

    else
    {
    }

    goto LABEL_55;
  }

LABEL_74:
  __break(1u);
}

void (*MeshGradient._Paint.animatableData.modify(float32x4_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[2].i64[1] = v1;
  MeshGradient._Paint.animatableData.getter(v3);
  return MeshGradient._Paint.animatableData.modify;
}

void MeshGradient._Paint.animatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 4);
  v4 = *(*a1 + 5);
  v7 = *(*a1 + 6);
  v6 = *(*a1 + 7);
  v8 = *(*a1 + 8);
  v9.i64[0] = **a1;
  v9.i64[1] = v3;
  v10 = v5;
  v11 = v4;
  v12 = v7;
  v13 = v6;
  v14 = v8;
  if (a2)
  {

    MeshGradient._Paint.animatableData.setter(&v9);
  }

  else
  {
    MeshGradient._Paint.animatableData.setter(&v9);
  }

  free(v2);
}

uint64_t protocol witness for ResolvedPaint.draw(path:style:in:bounds:) in conformance MeshGradient._Paint(double *a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v8 = *a4;
  v9 = a4[1];
  v10 = a4[2];
  v11 = a4[3];
  v19 = a2[1];
  v20 = *a2;
  v12 = *(a2 + 4);
  v13 = *(a2 + 40);
  v14 = *(v5 + 48);
  v48[2] = *(v5 + 32);
  v48[3] = v14;
  v49 = *(v5 + 64);
  v15 = *(v5 + 16);
  v48[0] = *v5;
  v48[1] = v15;
  if (a4[4])
  {
    Path.boundingRect.getter();
  }

  v16 = *(v5 + 48);
  v37 = *(v5 + 32);
  v38 = v16;
  *&v39 = *(v5 + 64);
  v17 = *(v5 + 16);
  v35 = *v5;
  v36 = v17;
  *(&v39 + 1) = v8;
  *&v40 = v9;
  *(&v40 + 1) = v10;
  *&v41 = v11;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi5_(&v35);
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v28 = v39;
  v29 = v40;
  v30 = v41;
  v31 = v42;
  v24 = v35;
  v25 = v36;
  v26 = v37;
  v27 = v38;
  v21[0] = v20;
  v21[1] = v19;
  v22 = v12;
  v23 = v13;
  outlined init with copy of MeshGradient._Paint(v48, v46);
  GraphicsContext.draw(_:with:style:)(a1, &v24, v21, a3);
  v46[8] = v32;
  v46[9] = v33;
  v47 = v34;
  v46[4] = v28;
  v46[5] = v29;
  v46[6] = v30;
  v46[7] = v31;
  v46[0] = v24;
  v46[1] = v25;
  v46[2] = v26;
  v46[3] = v27;
  return outlined destroy of GraphicsContext.ResolvedShading(v46);
}

void MeshGradient._Paint.encodePaint(to:)(__int128 *a1)
{
  v3 = v1[2];
  v19 = v1[3];
  v20 = *(v1 + 8);
  v4 = *v1;
  v17 = v1[1];
  v18 = v3;
  v16 = v4;
  v5 = *(a1 + 2);
  v11 = *a1;
  v12 = v5;
  v13 = *(a1 + 24);
  ProtobufEncoder.archiveOptions.getter(v10);
  if (v10[1] >= 2)
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(9);
  }

  else
  {
    v14 = *(v1 + 24);
    v15 = *(v1 + 10);
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v6 = *(a1 + 1);
    v7 = *(a1 + 3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    *&v7[8 * v9 + 32] = v6;
    *(a1 + 3) = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      *(a1 + 1) = v6 + 1;
      Color.ResolvedHDR.encode(to:)(a1);
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

void (*protocol witness for Animatable.animatableData.modify in conformance MeshGradient._Paint(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = MeshGradient._Paint.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

void MeshGradient._Paint.encode(to:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v6 = *(v1 + 48);
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 68);
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (v2)
  {
    return;
  }

  v54 = v5;
  v55 = v8;
  v53 = v7;
  v9 = *(v4 + 16);
  if (!v9)
  {
LABEL_74:
    v21 = v54;
    v18 = v55;
    v9 = v6;
    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    v10 = *(a1 + 8);
    v19 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_75;
  }

  v10 = (v4 + 44);
  while (1)
  {
    v13 = *(v10 - 3);
    v12 = *(v10 - 2);
    v15 = *(v10 - 1);
    v14 = *v10;
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    if (v16 >= v17)
    {
      v41 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_94;
      }

      if (v17 < v41)
      {
        v42 = ProtobufEncoder.growBufferSlow(to:)(v41);
      }

      else
      {
        *(a1 + 8) = v41;
        v42 = (*a1 + v16);
      }

      *v42 = 18;
      v18 = *(a1 + 8);
    }

    else
    {
      *(*a1 + v16) = 18;
      v18 = v16 + 1;
      *(a1 + 8) = v16 + 1;
    }

    v19 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    *&v19[8 * v21 + 32] = v18;
    *(a1 + 24) = v19;
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    *(a1 + 8) = v22;
    if (v13 == 0.0)
    {
      if (v12 == 0.0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v23 = *(a1 + 16);
      if (v22 >= v23)
      {
        v43 = v18 + 2;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_96;
        }

        if (v23 < v43)
        {
          v19 = a1;
          v44 = ProtobufEncoder.growBufferSlow(to:)(v43);
        }

        else
        {
          *(a1 + 8) = v43;
          v44 = (*a1 + v22);
        }

        *v44 = 13;
        v24 = *(a1 + 8);
        v25 = v24 + 4;
        if (__OFADD__(v24, 4))
        {
          goto LABEL_88;
        }
      }

      else
      {
        *(*a1 + v22) = 13;
        v24 = v18 + 2;
        *(a1 + 8) = v18 + 2;
        v25 = v18 + 6;
        if (__OFADD__(v18 + 2, 4))
        {
          goto LABEL_88;
        }
      }

      if (*(a1 + 16) < v25)
      {
        v19 = a1;
        v26 = ProtobufEncoder.growBufferSlow(to:)(v25);
      }

      else
      {
        *(a1 + 8) = v25;
        v26 = (*a1 + v24);
      }

      *v26 = v13;
      if (v12 == 0.0)
      {
LABEL_16:
        if (v15 == 0.0)
        {
          goto LABEL_17;
        }

        goto LABEL_29;
      }
    }

    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    if (v27 >= v28)
    {
      v45 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_95;
      }

      if (v28 < v45)
      {
        v19 = a1;
        v46 = ProtobufEncoder.growBufferSlow(to:)(v45);
      }

      else
      {
        *(a1 + 8) = v45;
        v46 = (*a1 + v27);
      }

      *v46 = 21;
      v29 = *(a1 + 8);
      v30 = v29 + 4;
      if (__OFADD__(v29, 4))
      {
        goto LABEL_89;
      }
    }

    else
    {
      *(*a1 + v27) = 21;
      v29 = v27 + 1;
      *(a1 + 8) = v29;
      v30 = v29 + 4;
      if (__OFADD__(v29, 4))
      {
        goto LABEL_89;
      }
    }

    if (*(a1 + 16) < v30)
    {
      v19 = a1;
      v31 = ProtobufEncoder.growBufferSlow(to:)(v30);
    }

    else
    {
      *(a1 + 8) = v30;
      v31 = (*a1 + v29);
    }

    *v31 = v12;
    if (v15 == 0.0)
    {
LABEL_17:
      if (v14 == 1.0)
      {
        goto LABEL_6;
      }

LABEL_34:
      v37 = *(a1 + 8);
      v38 = *(a1 + 16);
      if (v37 >= v38)
      {
        v49 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_98;
        }

        if (v38 < v49)
        {
          v19 = a1;
          v50 = ProtobufEncoder.growBufferSlow(to:)(v49);
        }

        else
        {
          *(a1 + 8) = v49;
          v50 = (*a1 + v37);
        }

        *v50 = 37;
        v39 = *(a1 + 8);
        v40 = v39 + 4;
        if (__OFADD__(v39, 4))
        {
          goto LABEL_91;
        }
      }

      else
      {
        *(*a1 + v37) = 37;
        v39 = v37 + 1;
        *(a1 + 8) = v39;
        v40 = v39 + 4;
        if (__OFADD__(v39, 4))
        {
          goto LABEL_91;
        }
      }

      if (*(a1 + 16) >= v40)
      {
        *(a1 + 8) = v40;
        v11 = (*a1 + v39);
      }

      else
      {
        v11 = ProtobufEncoder.growBufferSlow(to:)(v40);
      }

      *v11 = v14;
      goto LABEL_6;
    }

LABEL_29:
    v32 = *(a1 + 8);
    v33 = *(a1 + 16);
    if (v32 >= v33)
    {
      v47 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_97;
      }

      if (v33 < v47)
      {
        v19 = a1;
        v48 = ProtobufEncoder.growBufferSlow(to:)(v47);
      }

      else
      {
        *(a1 + 8) = v47;
        v48 = (*a1 + v32);
      }

      *v48 = 29;
      v34 = *(a1 + 8);
      v35 = v34 + 4;
      if (__OFADD__(v34, 4))
      {
        goto LABEL_90;
      }
    }

    else
    {
      *(*a1 + v32) = 29;
      v34 = v32 + 1;
      *(a1 + 8) = v34;
      v35 = v34 + 4;
      if (__OFADD__(v34, 4))
      {
        goto LABEL_90;
      }
    }

    if (*(a1 + 16) < v35)
    {
      v19 = a1;
      v36 = ProtobufEncoder.growBufferSlow(to:)(v35);
    }

    else
    {
      *(a1 + 8) = v35;
      v36 = (*a1 + v34);
    }

    *v36 = v15;
    if (v14 != 1.0)
    {
      goto LABEL_34;
    }

LABEL_6:
    ProtobufEncoder.endLengthDelimited()();
    v10 += 4;
    if (!--v9)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
LABEL_75:
  v52 = *(v19 + 2);
  v51 = *(v19 + 3);
  if (v52 >= v51 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v19);
  }

  *(v19 + 2) = v52 + 1;
  *&v19[8 * v52 + 32] = v10;
  *(a1 + 24) = v19;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v10 + 1;
    Color.ResolvedHDR.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
    if (v9 > 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x20uLL);
      ProtobufEncoder.encodeVarint(_:)(v9);
    }

    if (v21 >= 1)
    {
      ProtobufEncoder.encodeVarint(_:)(0x28uLL);
      ProtobufEncoder.encodeVarint(_:)(v21);
    }

    if (v18)
    {
      ProtobufEncoder.encodeVarint(_:)(0x30uLL);
      ProtobufEncoder.encodeVarint(_:)(v18);
    }

    if (v53)
    {
      ProtobufEncoder.encodeVarint(_:)(0x38uLL);
      ProtobufEncoder.encodeVarint(_:)(v53);
    }
  }
}

uint64_t MeshGradient._Paint.init(from:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v3 = result;
  LOBYTE(v77) = 0;
  v95 = 0;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v16 = 0;
    v7 = 0;
    v8 = 0;
    v17 = 0;
    LODWORD(v9) = 0;
    v10 = 0.0;
    v18 = MEMORY[0x1E69E7CC0];
    v11 = NAN;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
LABEL_4:
    v3[3] = 0;
    *a2 = v18;
    a2[8] = v16;
    *(a2 + 9) = *v96;
    *(a2 + 3) = *&v96[3];
    *(a2 + 2) = v12;
    *(a2 + 6) = v10;
    *(a2 + 7) = v13;
    *(a2 + 8) = v14;
    *(a2 + 9) = v15;
    *(a2 + 10) = v11;
    *(a2 + 6) = v7;
    *(a2 + 7) = v8;
    a2[64] = v17;
    v19 = v92;
    a2[67] = v93;
    *(a2 + 65) = v19;
    *(a2 + 17) = v9;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v73 = 0;
  LODWORD(v9) = 0;
  v10 = 0.0;
  v11 = NAN;
  v74 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v20 = v3[4];
      if (v5 < v20)
      {
        goto LABEL_13;
      }

      if (v20 < v5)
      {
        goto LABEL_121;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_123;
    }

    if (result <= 7)
    {
      goto LABEL_121;
    }

LABEL_13:
    v21 = result >> 3;
    if (result >> 3 > 3)
    {
      break;
    }

    switch(v21)
    {
      case 1uLL:
        v76 = v12;
        if ((result & 7) != 2)
        {
          goto LABEL_122;
        }

        v75 = v9;
        v9 = v8;
        v34 = v3[5];
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        }

        v7 = *(v34 + 2);
        v35 = *(v34 + 3);
        if (v7 >= v35 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v7 + 1, 1, v34);
        }

        *(v34 + 2) = v7 + 1;
        *&v34[8 * v7 + 32] = v6;
        v3[5] = v34;
        v36 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_125;
        }

        if (v36 < 0)
        {
          goto LABEL_138;
        }

        v7 = v8;
        v37 = v3[1] + v36;
        if (v6 >= v37)
        {
          v3[2] = v37;
          MeshGradient.Locations.init(from:)(v3, &v77);
          v8 = v9;
          v38 = v3[5];
          LODWORD(v9) = v75;
          if (!*(v38 + 2))
          {
            goto LABEL_142;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v39 = *(v38 + 2);
            if (!v39)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
            v39 = *(v38 + 2);
            if (!v39)
            {
              goto LABEL_145;
            }
          }

          v40 = v39 - 1;
          v6 = *&v38[8 * v40 + 32];
          *(v38 + 2) = v40;
          v3[5] = v38;
          v3[2] = v6;
          v41 = v77;
          v42 = v78;

          v95 = v42;
          v74 = v41;
          v12 = v76;
          goto LABEL_6;
        }

LABEL_126:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_127;
      case 2uLL:
        v76 = v12;
        if ((result & 7) != 2)
        {
          goto LABEL_122;
        }

        v75 = v9;
        v9 = v8;
        v49 = v3[5];
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
        }

        v7 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v7 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v7 + 1, 1, v49);
        }

        *(v49 + 2) = v7 + 1;
        *&v49[8 * v7 + 32] = v6;
        v3[5] = v49;
        v51 = ProtobufDecoder.decodeVarint()();
        if (!v2)
        {
          if ((v51 & 0x8000000000000000) == 0)
          {
            v7 = v8;
            v52 = v3[1] + v51;
            if (v6 < v52)
            {
              goto LABEL_126;
            }

            v72 = v15;
            v15 = v14;
            v3[2] = v52;
            specialized Color.Resolved.init(from:)(v3);
            v8 = v9;
            v57 = v3[5];
            LODWORD(v9) = v75;
            if (!*(v57 + 2))
            {
              goto LABEL_141;
            }

            v58 = v53;
            v59 = v54;
            v60 = v55;
            v61 = v56;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v62 = *(v57 + 2);
              if (!v62)
              {
                goto LABEL_144;
              }
            }

            else
            {
              v57 = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
              v62 = *(v57 + 2);
              if (!v62)
              {
                goto LABEL_144;
              }
            }

            v63 = v62 - 1;
            v6 = *&v57[8 * v63 + 32];
            *(v57 + 2) = v63;
            v3[5] = v57;
            v3[2] = v6;
            v64 = v76;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 16) + 1, 1, v76);
              v64 = result;
            }

            v66 = *(v64 + 16);
            v65 = *(v64 + 24);
            v67 = v64;
            if (v66 >= v65 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v64);
              v67 = result;
            }

            *(v67 + 16) = v66 + 1;
            v12 = v67;
            v68 = (v67 + 16 * v66);
            v68[8] = v58;
            v68[9] = v59;
            v68[10] = v60;
            v68[11] = v61;
            v14 = v15;
            v15 = v72;
            goto LABEL_6;
          }

          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          __break(1u);
LABEL_151:
          __break(1u);
          do
          {
            __break(1u);
            a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            v14 = v15;
            v15 = v72;
            v69 = *(a2 + 2);
            if (v69)
            {
              goto LABEL_135;
            }

            __break(1u);
            a2 = v3[5];
            LODWORD(v9) = v75;
            if (!*(a2 + 2))
            {
              goto LABEL_151;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v69 = *(a2 + 2);
              if (v69)
              {
                goto LABEL_135;
              }
            }

            else
            {
              a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
              v69 = *(a2 + 2);
              if (v69)
              {
                goto LABEL_135;
              }
            }

            __break(1u);
            a2 = v3[5];
            LODWORD(v9) = v75;
          }

          while (!*(a2 + 2));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v69 = *(a2 + 2);
            if (v69)
            {
LABEL_135:
              v70 = v69 - 1;
              v71 = *&a2[8 * v70 + 32];
              *(a2 + 2) = v70;
              v3[5] = a2;
              v3[2] = v71;
              goto LABEL_136;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            a2 = result;
            v69 = *(result + 16);
            if (v69)
            {
              goto LABEL_135;
            }
          }

          __break(1u);
          return result;
        }

LABEL_125:
        v7 = v8;
LABEL_127:
        v8 = v9;
        LODWORD(v9) = v75;
        goto LABEL_136;
      case 3uLL:
        v76 = v12;
        if ((result & 7) != 2)
        {
          goto LABEL_122;
        }

        v75 = v9;
        v9 = v8;
        v24 = v3[5];
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v7 = *(v24 + 2);
        v25 = *(v24 + 3);
        if (v7 >= v25 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v7 + 1, 1, v24);
        }

        *(v24 + 2) = v7 + 1;
        *&v24[8 * v7 + 32] = v6;
        v3[5] = v24;
        v26 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_125;
        }

        if (v26 < 0)
        {
          goto LABEL_139;
        }

        v7 = v8;
        v27 = v3[1] + v26;
        if (v6 < v27)
        {
          goto LABEL_126;
        }

        v3[2] = v27;
        specialized Color.ResolvedHDR.init(from:)(v3, v94);
        v8 = v9;
        v28 = v3[5];
        LODWORD(v9) = v75;
        if (!*(v28 + 16))
        {
          goto LABEL_140;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v29 = *(v28 + 16);
          if (!v29)
          {
            goto LABEL_143;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
          v28 = result;
          v29 = *(result + 16);
          if (!v29)
          {
            goto LABEL_143;
          }
        }

        v30 = v29 - 1;
        v6 = *(v28 + 8 * v30 + 32);
        *(v28 + 16) = v30;
        v3[5] = v28;
        v3[2] = v6;
        v10 = v94[0];
        v13 = v94[1];
        v14 = v94[2];
        v15 = v94[3];
        v11 = v94[4];
        v12 = v76;
        goto LABEL_6;
    }

LABEL_66:
    v43 = result & 7;
    if (v43 > 1)
    {
      if (v43 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_123;
        }

        if (result < 0)
        {
          goto LABEL_150;
        }

        v44 = v3[1] + result;
        if (v6 < v44)
        {
          goto LABEL_121;
        }
      }

      else
      {
        if (v43 != 5)
        {
          goto LABEL_121;
        }

        v44 = v3[1] + 4;
        if (v6 < v44)
        {
          goto LABEL_121;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_123;
        }

        goto LABEL_6;
      }

      if (v43 != 1)
      {
        goto LABEL_121;
      }

      v44 = v3[1] + 8;
      if (v6 < v44)
      {
        goto LABEL_121;
      }
    }

    v3[1] = v44;
LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      v16 = v95;
      v17 = v73;
      v18 = v74;
      goto LABEL_4;
    }
  }

  if (result >> 3 > 5)
  {
    if (v21 == 6)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_121;
        }

        v47 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
LABEL_123:
          v76 = v12;
          goto LABEL_136;
        }

        if (v47 < 0)
        {
          goto LABEL_146;
        }

        v48 = v3[1] + v47;
        if (v6 < v48)
        {
          goto LABEL_121;
        }

        v3[3] = 48;
        v3[4] = v48;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_123;
      }

      LODWORD(v9) = result;
      goto LABEL_6;
    }

    if (v21 == 7)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_121;
        }

        v31 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_123;
        }

        if (v31 < 0)
        {
          goto LABEL_149;
        }

        v32 = v3[1] + v31;
        if (v6 < v32)
        {
          goto LABEL_121;
        }

        v3[3] = 56;
        v3[4] = v32;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_123;
      }

      v33 = result == 1;
      if (result == 2)
      {
        v33 = 2;
      }

      v73 = v33;
      goto LABEL_6;
    }

    goto LABEL_66;
  }

  if (v21 != 4)
  {
    if (v21 == 5)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_121;
        }

        v22 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_123;
        }

        if (v22 < 0)
        {
          goto LABEL_148;
        }

        v23 = v3[1] + v22;
        if (v6 < v23)
        {
          goto LABEL_121;
        }

        v3[3] = 40;
        v3[4] = v23;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_123;
      }

      if (result >= 0)
      {
        v8 = result;
      }

      goto LABEL_6;
    }

    goto LABEL_66;
  }

  if ((result & 7) == 0)
  {
LABEL_77:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_123;
    }

    if (result >= 0)
    {
      v7 = result;
    }

    goto LABEL_6;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_121;
  }

  v45 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_123;
  }

  if (v45 < 0)
  {
    goto LABEL_147;
  }

  v46 = v3[1] + v45;
  if (v6 >= v46)
  {
    v3[3] = 32;
    v3[4] = v46;
    goto LABEL_77;
  }

LABEL_121:
  v76 = v12;
LABEL_122:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_136:
  v77 = v74;
  v78 = v95;
  *v79 = *v96;
  *&v79[3] = *&v96[3];
  v80 = v76;
  v81 = v10;
  v82 = v13;
  v83 = v14;
  v84 = v15;
  v85 = v11;
  v86 = v7;
  v87 = v8;
  v88 = v73;
  v90 = v93;
  v89 = v92;
  v91 = v9;
  return outlined destroy of MeshGradient._Paint(&v77);
}

int64_t MeshGradient.Locations.encode(to:)(int64_t result)
{
  v2 = v1;
  v3 = result;
  v43[5] = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(*v2 + 16);
  if ((v2[8] & 1) == 0)
  {
    if (v5)
    {
      v6 = (v4 + 32);
      v7 = 10;
      goto LABEL_23;
    }

    return result;
  }

  if (!v5)
  {
    return result;
  }

  v6 = (v4 + 64);
  v7 = 18;
  while (1)
  {
    v8 = *(v6 - 4);
    v9 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    v13 = v3[1];
    v14 = v3[2];
    if (v13 >= v14)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_64;
      }

      if (v14 < v20)
      {
        v21 = ProtobufEncoder.growBufferSlow(to:)(v20);
      }

      else
      {
        v3[1] = v20;
        v21 = (*v3 + v13);
      }

      *v21 = 18;
      v15 = v3[1];
    }

    else
    {
      *(*v3 + v13) = 18;
      v15 = v13 + 1;
      v3[1] = v13 + 1;
    }

    v16 = v3[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
      v16 = isUniquelyReferenced_nonNull_native;
    }

    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v19 >= v18 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
      v16 = isUniquelyReferenced_nonNull_native;
    }

    *(v16 + 16) = v19 + 1;
    *(v16 + 8 * v19 + 32) = v15;
    v3[3] = v16;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v3[1] = v15 + 1;
    v43[0] = v8;
    v43[1] = v9;
    v43[2] = v10;
    v43[3] = v11;
    v43[4] = v12;
    closure #1 in closure #2 in MeshGradient.Locations.encode(to:)(v43, v3);
    result = ProtobufEncoder.endLengthDelimited()();
    v6 += 5;
    if (!--v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_21:
  *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v8;
  while (1)
  {
    do
    {
      result = ProtobufEncoder.endLengthDelimited()();
      ++v6;
      if (!--v5)
      {
        return result;
      }

LABEL_23:
      v42 = *v6;
      v22 = v3[1];
      v23 = v3[2];
      if (v22 >= v23)
      {
        v36 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_65;
        }

        if (v23 < v36)
        {
          v37 = ProtobufEncoder.growBufferSlow(to:)(v36);
        }

        else
        {
          v3[1] = v36;
          v37 = (*v3 + v22);
        }

        *v37 = v7;
        v24 = v3[1];
      }

      else
      {
        *(*v3 + v22) = v7;
        v24 = v22 + 1;
        v3[1] = v22 + 1;
      }

      v25 = v3[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      v28 = v42;
      if (v27 >= v26 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
        v28 = v42;
        v25 = v38;
      }

      *(v25 + 2) = v27 + 1;
      *&v25[8 * v27 + 32] = v24;
      v3[3] = v25;
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
      }

      v3[1] = v29;
      if (*&v28 != 0.0)
      {
        v30 = v3[2];
        if (v29 >= v30)
        {
          result = v24 + 2;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_67;
          }

          if (v30 < result)
          {
            v39 = ProtobufEncoder.growBufferSlow(to:)(result);
            v28 = v42;
          }

          else
          {
            v3[1] = result;
            v39 = (*v3 + v29);
          }

          *v39 = 13;
          v31 = v3[1];
          v32 = v31 + 4;
          if (__OFADD__(v31, 4))
          {
            goto LABEL_62;
          }
        }

        else
        {
          *(*v3 + v29) = 13;
          v31 = v24 + 2;
          v3[1] = v24 + 2;
          v32 = v24 + 6;
          if (__OFADD__(v24 + 2, 4))
          {
            goto LABEL_62;
          }
        }

        if (v3[2] < v32)
        {
          v41 = ProtobufEncoder.growBufferSlow(to:)(v32);
          HIDWORD(v28) = HIDWORD(v42);
          *v41 = v42;
        }

        else
        {
          v3[1] = v32;
          *(*v3 + v31) = v28;
        }
      }

      LODWORD(v8) = HIDWORD(v28);
    }

    while (*(&v28 + 1) == 0.0);
    v33 = v3[1];
    v34 = v3[2];
    if (v33 < v34)
    {
      *(*v3 + v33) = 21;
      v35 = v33 + 1;
      v3[1] = v35;
      isUniquelyReferenced_nonNull_native = v35 + 4;
      if (__OFADD__(v35, 4))
      {
        goto LABEL_63;
      }

      goto LABEL_38;
    }

    result = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 < result)
    {
      v40 = ProtobufEncoder.growBufferSlow(to:)(result);
    }

    else
    {
      v3[1] = result;
      v40 = (*v3 + v33);
    }

    *v40 = 21;
    v35 = v3[1];
    isUniquelyReferenced_nonNull_native = v35 + 4;
    if (__OFADD__(v35, 4))
    {
      goto LABEL_63;
    }

LABEL_38:
    if (v3[2] < isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v3[1] = isUniquelyReferenced_nonNull_native;
    *(*v3 + v35) = v8;
  }

  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

float *closure #1 in closure #2 in MeshGradient.Locations.encode(to:)(float *result, void *a2)
{
  v3 = 13;
  while (1)
  {
    v5 = *result;
    if (*result != 0.0)
    {
      break;
    }

LABEL_4:
    v3 += 8;
    ++result;
    if (v3 == 93)
    {
      return result;
    }
  }

  v6 = a2[1];
  v7 = a2[2];
  if (v6 < v7)
  {
    *(*a2 + v6) = v3;
    v8 = v6 + 1;
    a2[1] = v8;
    v9 = v8 + 4;
    if (__OFADD__(v8, 4))
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v11 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_19;
  }

  if (v7 < v11)
  {
    v13 = result;
    v12 = ProtobufEncoder.growBufferSlow(to:)(v6 + 1);
    result = v13;
  }

  else
  {
    a2[1] = v11;
    v12 = (*a2 + v6);
  }

  *v12 = v3 & 0x7D;
  v8 = a2[1];
  v9 = v8 + 4;
  if (!__OFADD__(v8, 4))
  {
LABEL_8:
    if (a2[2] >= v9)
    {
      a2[1] = v9;
      v4 = (*a2 + v8);
    }

    else
    {
      v10 = result;
      v4 = ProtobufEncoder.growBufferSlow(to:)(v9);
      result = v10;
    }

    *v4 = v5;
    goto LABEL_4;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t MeshGradient.Locations.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    while (1)
    {
      if (v5 >= v6)
      {
        a1[3] = 0;
        v41 = *(v7 + 2);

        if (!v41)
        {
          v7 = v8;
        }

        *a2 = v7;
        a2[8] = v41 != 0;
        return result;
      }

      v9 = a1[3];
      if (v9)
      {
        v10 = a1[4];
        if (v5 < v10)
        {
          goto LABEL_9;
        }

        if (v10 < v5)
        {
          goto LABEL_64;
        }

        a1[3] = 0;
      }

      v9 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_67;
      }

      if (v9 <= 7)
      {
        goto LABEL_64;
      }

LABEL_9:
      v11 = v9 & 7;
      if (v9 >> 3 == 2)
      {
        break;
      }

      if (v9 >> 3 == 1)
      {
        if (v11 != 2)
        {
          goto LABEL_64;
        }

        v12 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v14 = *(v12 + 2);
        v13 = *(v12 + 3);
        if (v14 >= v13 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v14 + 1;
        *&v12[8 * v14 + 32] = v6;
        a1[5] = v12;
        v15 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_67;
        }

        if (v15 < 0)
        {
          goto LABEL_73;
        }

        v17 = a1[1] + v15;
        if (v6 < v17)
        {
LABEL_64:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_67:
        }

        a1[2] = v17;
        closure #1 in MeshGradient.Locations.init(from:)(a1, v46, v16);
        v18 = a1[5];
        if (!*(v18 + 2))
        {
          goto LABEL_74;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v19 = *(v18 + 2);
          if (!v19)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          v19 = *(v18 + 2);
          if (!v19)
          {
            goto LABEL_76;
          }
        }

        v20 = v19 - 1;
        v6 = *&v18[8 * v20 + 32];
        *(v18 + 2) = v20;
        a1[5] = v18;
        a1[2] = v6;
        v21 = v46[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        }

        v23 = *(v8 + 2);
        v22 = *(v8 + 3);
        if (v23 >= v22 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v8);
        }

        *(v8 + 2) = v23 + 1;
        *&v8[8 * v23 + 32] = v21;
        v5 = a1[1];
      }

      else if ((v9 & 7) > 1)
      {
        if (v11 == 2)
        {
          v40 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_67;
          }

          if (v40 < 0)
          {
            goto LABEL_78;
          }

          v5 = a1[1] + v40;
          if (v6 < v5)
          {
            goto LABEL_64;
          }

          a1[1] = v5;
        }

        else
        {
          if (v11 != 5)
          {
            goto LABEL_64;
          }

          v5 = a1[1] + 4;
          if (v6 < v5)
          {
            goto LABEL_64;
          }

          a1[1] = v5;
        }
      }

      else if ((v9 & 7) != 0)
      {
        if (v11 != 1)
        {
          goto LABEL_64;
        }

        v5 = a1[1] + 8;
        if (v6 < v5)
        {
          goto LABEL_64;
        }

        a1[1] = v5;
      }

      else
      {
        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_67;
        }

        v5 = a1[1];
      }
    }

    if (v11 != 2)
    {
      goto LABEL_64;
    }

    v24 = a1[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    *&v24[8 * v26 + 32] = v6;
    a1[5] = v24;
    v27 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_67;
    }

    if (v27 < 0)
    {
      break;
    }

    v28 = a1[1] + v27;
    if (v6 < v28)
    {
      goto LABEL_64;
    }

    a1[2] = v28;
    closure #2 in MeshGradient.Locations.init(from:)(a1, v46);
    v29 = a1[5];
    if (!*(v29 + 2))
    {
      goto LABEL_75;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v30 = *(v29 + 2);
      if (!v30)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
      v30 = *(v29 + 2);
      if (!v30)
      {
        goto LABEL_77;
      }
    }

    v31 = v30 - 1;
    v6 = *&v29[8 * v31 + 32];
    *(v29 + 2) = v31;
    a1[5] = v29;
    a1[2] = v6;
    v32 = v46[0];
    v33 = v46[1];
    v34 = v46[2];
    v35 = v46[3];
    v36 = v46[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v38 = *(v7 + 2);
    v37 = *(v7 + 3);
    if (v38 >= v37 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v7);
    }

    *(v7 + 2) = v38 + 1;
    v39 = &v7[40 * v38];
    *(v39 + 4) = v32;
    *(v39 + 5) = v33;
    *(v39 + 6) = v34;
    *(v39 + 7) = v35;
    *(v39 + 8) = v36;
    v5 = a1[1];
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v43 = *(a2 + 2);
    if (v43)
    {
      goto LABEL_71;
    }

    __break(1u);
    a2 = a1[5];
  }

  while (!*(a2 + 2));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v43 = *(a2 + 2);
    if (v43)
    {
LABEL_71:
      v44 = v43 - 1;
      v45 = *&a2[8 * v44 + 32];
      *(a2 + 2) = v44;

      a1[5] = a2;
      a1[2] = v45;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v43 = *(result + 16);
    if (v43)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
  return result;
}

unint64_t closure #1 in MeshGradient.Locations.init(from:)@<X0>(unint64_t result@<X0>, void *a2@<X8>, __n128 a3@<Q0>)
{
  v4 = result;
  v6 = *(result + 8);
  v7 = *(result + 16);
  v13.n128_u64[0] = 0;
  if (v6 >= v7)
  {
LABEL_45:
    v4[3] = 0;
    *a2 = v13.n128_u64[0];
    return result;
  }

  a3.n128_u64[0] = 0;
  v13 = a3;
  while (1)
  {
    result = v4[3];
    if (result)
    {
      v8 = v4[4];
      if (v6 < v8)
      {
        goto LABEL_9;
      }

      if (v8 < v6)
      {
        goto LABEL_46;
      }

      v4[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_46:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_9:
    v9 = result & 7;
    if (result >> 3 == 2)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        v11 = v4[1];
        if (v7 < v11 + result)
        {
          goto LABEL_46;
        }

        v4[3] = 21;
        v4[4] = v11 + result;
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_46;
        }

        v11 = v4[1];
      }

      v6 = (v11 + 1);
      if (v7 < (v11 + 1))
      {
        goto LABEL_46;
      }

      v12 = v13;
      v12.n128_u32[1] = *v11;
      goto LABEL_36;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        v6 = v4[1] + result;
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_46;
        }

        v6 = v4[1] + 4;
      }

      goto LABEL_43;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_46;
      }

      v6 = v4[1] + 8;
LABEL_43:
      if (v7 < v6)
      {
        goto LABEL_46;
      }

LABEL_44:
      v4[1] = v6;
      if (v6 >= v7)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = ProtobufDecoder.decodeVarint()();
      if (v3)
      {
        return result;
      }

      v6 = v4[1];
      if (v6 >= v7)
      {
        goto LABEL_45;
      }
    }
  }

  if (v9 != 2)
  {
    if (v9 != 5)
    {
      goto LABEL_46;
    }

    v10 = v4[1];
    goto LABEL_28;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v3)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = v4[1];
    if (v7 < v10 + result)
    {
      goto LABEL_46;
    }

    v4[3] = 13;
    v4[4] = v10 + result;
LABEL_28:
    v6 = (v10 + 1);
    if (v7 < (v10 + 1))
    {
      goto LABEL_46;
    }

    v12 = v13;
    v12.n128_u32[0] = *v10;
LABEL_36:
    v13 = v12;
    goto LABEL_44;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t closure #2 in MeshGradient.Locations.init(from:)@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v3 = result;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0;
  if (v5 >= v6)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_37:
    v3[3] = 0;
    *a2 = v17;
    a2[1] = v16;
    a2[2] = v15;
    a2[3] = v14;
    a2[4] = v7;
    return result;
  }

  while (1)
  {
    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_35;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_35:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v9 = result & 7;
    if (result - 8 <= 0x4F)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        v5 = v3[1] + result;
        if (v6 < v5)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_35;
        }

        v5 = v3[1] + 4;
        if (v6 < v5)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        v5 = v3[1];
        goto LABEL_4;
      }

      if (v9 != 1)
      {
        goto LABEL_35;
      }

      v5 = v3[1] + 8;
      if (v6 < v5)
      {
        goto LABEL_35;
      }
    }

    v3[1] = v5;
LABEL_4:
    if (v5 >= v6)
    {
      v16 = *(&v18 + 1);
      v17 = v18;
      v14 = *(&v19 + 1);
      v15 = v19;
      v7 = v20;
      goto LABEL_37;
    }
  }

  if (v9 != 2)
  {
    if (v9 != 5)
    {
      goto LABEL_35;
    }

    v10 = v3[1];
LABEL_28:
    v5 = (v10 + 1);
    if (v6 < (v10 + 1))
    {
      goto LABEL_35;
    }

    v13 = *v10;
    v3[1] = v5;
    *(&v18 + (result >> 3) - 1) = v13;
    goto LABEL_4;
  }

  v11 = result;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = v3[1];
    v12 = v10 + result;
    if (v6 < v10 + result)
    {
      goto LABEL_35;
    }

    result = v11;
    v3[3] = v11 & 0x78 | 5;
    v3[4] = v12;
    goto LABEL_28;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t specialized static MeshGradient.BezierPoint.== infix(_:_:)(float32x2_t *a1, float32x2_t *a2)
{
  v2 = vceq_f32(*a1, *a2);
  if (v2.i32[0] & v2.i32[1] & 1) != 0 && (v3 = vceq_f32(a1[1], a2[1]), (v3.i32[0] & v3.i32[1]) && (v4 = vceq_f32(a1[2], a2[2]), (v4.i32[0] & v4.i32[1]) && (v5 = vceq_f32(a1[3], a2[3]), (v5.i32[0] & v5.i32[1]) && (v6 = vceq_f32(a1[4], a2[4]), (v6.i8[0]))
  {
    return v6.i8[4] & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static MeshGradient.Locations.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      v7 = v4[2];
      if (*&v7 == *&v5[2])
      {
        if (*&v7 && v4 != v5)
        {
          v10 = v4 + 4;
          v11 = v5 + 4;
          do
          {
            v12 = *v10[2].f32;
            v14[0] = *v10->f32;
            v14[1] = v12;
            v15 = v10[4];
            v13 = *v11[2].f32;
            v16[0] = *v11->f32;
            v16[1] = v13;
            v17 = v11[4];
            v8 = specialized static MeshGradient.BezierPoint.== infix(_:_:)(v14, v16);
            if ((v8 & 1) == 0)
            {
              break;
            }

            v10 += 5;
            v11 += 5;
            --*&v7;
          }

          while (v7);
        }

        else
        {
          v8 = 1;
        }

        return v8 & 1;
      }
    }

LABEL_8:
    v8 = 0;
    return v8 & 1;
  }

  if (v6)
  {
    goto LABEL_8;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD2VySfG_Tt1g5(v4, v5);
}

BOOL specialized static MeshGradient._Paint.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v22 = *(a1 + 3);
  v23 = *(a1 + 10);
  v6 = a1[6];
  v5 = a1[7];
  v7 = *(a1 + 64);
  v17 = *(a1 + 17);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = a2[2];
  v24 = *(a2 + 3);
  v25 = *(a2 + 10);
  v11 = a2[6];
  v12 = a2[7];
  v13 = *(a2 + 64);
  v14 = *(a2 + 17);
  v20 = v2;
  v21 = v3;
  v18 = v8;
  v19 = v9;

  LOBYTE(v2) = specialized static MeshGradient.Locations.== infix(_:_:)(&v20, &v18);

  if ((v2 & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(v4, v10) & 1) == 0)
  {
    return 0;
  }

  v15 = specialized static Color.ResolvedHDR.== infix(_:_:)(&v22, &v24) && v6 == v11;
  if (v5 != v12)
  {
    v15 = 0;
  }

  if (v7 != v13)
  {
    v15 = 0;
  }

  return v17 == v14 && v15;
}

BOOL specialized static MeshGradient.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v26 = v2;
    v27 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v21 = *(a1 + 57);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(a2 + 56);
    v14 = *(a2 + 57);
    v15 = *(a2 + 24);
    v16 = *(a2 + 16);
    v17 = *(a1 + 24);
    v24 = *(a1 + 16);
    v25 = v17;
    v22 = v16;
    v23 = v15;

    v18 = specialized static MeshGradient.Locations.== infix(_:_:)(&v24, &v22);

    if (v18)
    {
      if (v7)
      {
        if ((v11 & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(v6, v10) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v11)
        {
          return 0;
        }

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v19 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV_Tt1g5(v6, v10);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      if (v8 != v12)
      {
        v20 = (*(*v8 + 88))(v12);
        result = 0;
        if (v20 & 1) == 0 || ((v9 ^ v13))
        {
          return result;
        }

        return v21 == v14;
      }

      if (v9 == v13)
      {
        return v21 == v14;
      }
    }

    return 0;
  }

  return result;
}

uint64_t specialized static MeshGradient.Colors.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if ((*(a1 + 8) & 1) == 0)
  {
    if ((*(a2 + 8) & 1) == 0)
    {

      v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV_Tt1g5(v6, v2);

      return v7 & 1;
    }

    return 0;
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *a2;

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(v3, v4);
}

uint64_t specialized MeshGradient.withResolvedColors(in:_:)(uint64_t *a1, __int128 *a2, float *a3, uint64_t a4, uint64_t *a5)
{
  v7 = a5;
  v8 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 4);
  if ((*(a2 + 40) & 1) == 0)
  {
    v13 = *(a2 + 1);
    v14 = *a2 * v13;
    if ((*a2 * v13) >> 64 == v14 >> 63)
    {
      v5 = *a1;
      v6 = a1[1];
      v69 = 0;
      v70 = 1;
      if (v14 < 0)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v14 >> 59)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      a2 = &v72;
      a1 = v7;
      if (16 * v14 < 1025)
      {
        isStackAllocationSafe = outlined init with copy of MeshGradient(v7, &v72);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    outlined init with copy of MeshGradient(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v57 = swift_slowAlloc();

      outlined init with copy of MeshGradient(v7, &v72);
      specialized closure #1 in MeshGradient.withResolvedColors(in:_:)(v57, v58, v59, v60, v61, v14, v14, v10, v5, v6, &v69, a3, v8, v7);
      MEMORY[0x193AC4820](v57, -1, -1);
      goto LABEL_57;
    }

LABEL_11:
    v67 = &v63;
    v68 = a3;
    v17 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v21 = &v63 - v16;
    if (*(v10 + 16) >= v14)
    {
      v22 = v14;
    }

    else
    {
      v22 = *(v10 + 16);
    }

    if (v22)
    {
      v65 = v8;
      v66 = v7;
      v23 = (v10 + 32);
      v24 = 1;
      v25 = 0.0;
      v64 = &v63 - v16;
      v26 = (&v63 - v16);
      do
      {
        v28 = *v23;
        v71[0] = v5;
        v71[1] = v6;
        v29 = *(*v28 + 120);

        v29(&v72, v71);

        HIDWORD(v17) = DWORD1(v72);
        *v26 = v72;
        if (v24)
        {
          v27 = v73;
          v25 = v73;
          v24 = 0;
        }

        else
        {
          v24 = 0;
          if (v25 <= v73)
          {
            v25 = v73;
          }

          v27 = v25;
        }

        ++v26;
        ++v23;
        --v22;
      }

      while (v22);
      v30 = v68;
      v31 = v68[4];
      v7 = v66;
      v8 = v65;
      v21 = v64;
      if (v31 <= v27)
      {
        v31 = v27;
      }
    }

    else
    {
      v30 = v68;
      v31 = v68[4];
    }

    v32 = v31;
    v30[4] = v31;
    if (*(v7 + 57))
    {
      if (*(v7 + 57) == 1)
      {
        if (v7[7])
        {
          v33 = 17;
        }

        else
        {
          v33 = 1;
        }
      }

      else if (v7[7])
      {
        v33 = 19;
      }

      else
      {
        v33 = 3;
      }
    }

    else if (v7[7])
    {
      v33 = 16;
    }

    else
    {
      v33 = 0;
    }

    if (v7[3])
    {
      if ((*v7 * v7[1]) >> 64 != (*v7 * v7[1]) >> 63)
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }

      v53 = 2;
    }

    else
    {
      if ((*v7 * v7[1]) >> 64 != (*v7 * v7[1]) >> 63)
      {
        goto LABEL_66;
      }

      v53 = 1;
    }

    v54 = *(v8 + 40);
    LODWORD(v62) = v33;
    *&v17 = *v30;
    *&v18 = v30[1];
    *&v19 = v30[2];
    *&v20 = v30[3];
    [v54 setMeshGradientType:v53 positions:v7[2] + 32 colors:v21 count:v17 width:v18 background:v19 colorSpace:v20 flags:v62];
    *&v55 = v32;
    [v54 setHeadroom_];
    *(v8 + 272) = 0;

    goto LABEL_57;
  }

  v11 = *(a3 + 4);
  *(a3 + 4) = v11;
  if (*(a5 + 57))
  {
    if (*(a5 + 57) == 1)
    {
      if (a5[7])
      {
        v12 = 17;
      }

      else
      {
        v12 = 1;
      }
    }

    else if (a5[7])
    {
      v12 = 19;
    }

    else
    {
      v12 = 3;
    }
  }

  else if (a5[7])
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  v35 = *a3;
  v34 = *(a3 + 1);
  v37 = *(a3 + 2);
  v36 = *(a3 + 3);
  v38 = a5[1];
  v39 = a5[2];
  v40 = *a5;
  v41 = *a5 * v38;
  v42 = (*a5 * v38) >> 64 != v41 >> 63;
  if ((a5[3] & 1) == 0)
  {
    if (!v42)
    {
      v43 = *(a4 + 40);

      outlined init with copy of MeshGradient(v7, &v72);
      LODWORD(v62) = v12;
      v48 = v39 + 32;
      v49 = v10 + 32;
      v50 = v43;
      v51 = 1;
      goto LABEL_47;
    }

    goto LABEL_62;
  }

  if (v42)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v43 = *(a4 + 40);

  outlined init with copy of MeshGradient(v7, &v72);
  LODWORD(v62) = v12;
  v48 = v39 + 32;
  v49 = v10 + 32;
  v50 = v43;
  v51 = 2;
LABEL_47:
  LODWORD(v44) = v35;
  LODWORD(v45) = v34;
  LODWORD(v46) = v37;
  LODWORD(v47) = v36;
  [v50 setMeshGradientType:v51 positions:v48 colors:v49 count:v41 width:v40 background:2 colorSpace:v44 flags:{v45, v46, v47, v62}];
  LODWORD(v52) = v11;
  [v43 setHeadroom_];
  *(v8 + 272) = 0;

LABEL_57:

  return outlined destroy of MeshGradient(v7);
}

unint64_t instantiation function for generic protocol witness table for MeshGradient._Paint(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint();
  result = lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint();
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t destroy for MeshGradient()
{
}

uint64_t initializeWithCopy for MeshGradient(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for MeshGradient(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  return a1;
}

uint64_t assignWithTake for MeshGradient(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  return a1;
}

uint64_t getEnumTagSinglePayload for MeshGradient(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshGradient(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MeshGradient._Paint(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);

  return a1;
}

uint64_t assignWithCopy for MeshGradient._Paint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

uint64_t assignWithTake for MeshGradient._Paint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  return a1;
}

uint64_t getEnumTagSinglePayload for MeshGradient._Paint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshGradient._Paint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CorePlatformImage.system.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CorePlatformImage.system.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CorePlatformImage.kitImage.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CorePlatformImage.kitImage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CorePlatformImage.isTemplate.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CorePlatformImage.isTemplate.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CorePlatformImage.__allocating_init(system:kitImage:)(unsigned __int8 a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system] = a1;
  *&v5[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage] = a2;
  v6 = a2;
  v5[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate] = _CorePlatformImageIsTemplate(a1, v6);
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id CorePlatformImage.init(system:kitImage:)(unsigned __int8 a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system] = a1;
  *&v2[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage] = a2;
  v6 = a2;
  v2[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate] = _CorePlatformImageIsTemplate(a1, v6);
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id CorePlatformImage.__allocating_init(system:cgImage:scale:orientation:)(unsigned __int8 a1, void *a2, unsigned __int8 a3, double a4)
{
  KitImage = _CorePlatformImageMakeKitImage(a4, a1, a2, a3);
  v8 = objc_allocWithZone(v4);
  v8[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system] = a1;
  *&v8[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage] = KitImage;
  v9 = KitImage;
  v8[OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_isTemplate] = _CorePlatformImageIsTemplate(a1, v9);
  v12.receiver = v8;
  v12.super_class = v4;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id CorePlatformImage.cgImage.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  CGImage = _CorePlatformImageGetCGImage(v2, *(v0 + v3));

  return CGImage;
}

double CorePlatformImage.size.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  return _CorePlatformImageGetSize(v2, *(v0 + v3));
}

uint64_t CorePlatformImage.imageOrientation.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  return _CorePlatformImageGetImageOrientation(v2, *(v0 + v3));
}

uint64_t CorePlatformImage.scale.getter(uint64_t (*a1)(uint64_t, void))
{
  v3 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  return a1(v4, *(v1 + v5));
}

double CorePlatformImage.alignmentRect.getter()
{
  swift_beginAccess();
  swift_beginAccess();
  return _CorePlatformImageGetAlignmentRect();
}

void key path getter for CorePlatformImage.alignmentRect : CorePlatformImage(uint64_t a1@<X8>)
{
  swift_beginAccess();
  swift_beginAccess();
  *a1 = _CorePlatformImageGetAlignmentRect();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t key path setter for CorePlatformImage.alignmentRect : CorePlatformImage(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  swift_beginAccess();
  v8 = *(v6 + v7);
  v9 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  return _CorePlatformImageSetAlignmentRect(v8, *(v6 + v9), v2, v3, v4, v5);
}

uint64_t CorePlatformImage.alignmentRect.setter(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  return _CorePlatformImageSetAlignmentRect(v10, *(v4 + v11), a1, a2, a3, a4);
}

void (*CorePlatformImage.alignmentRect.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_system;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 96) = OBJC_IVAR____TtC7SwiftUI17CorePlatformImage_kitImage;
  swift_beginAccess();
  *v4 = _CorePlatformImageGetAlignmentRect();
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  return CorePlatformImage.alignmentRect.modify;
}

void CorePlatformImage.alignmentRect.modify(double **a1)
{
  v1 = *a1;
  _CorePlatformImageSetAlignmentRect(*(*(*a1 + 10) + *(*a1 + 11)), *(*(*a1 + 10) + *(*a1 + 12)), **a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

id CorePlatformImage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CorePlatformImage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Unmanaged.map<A>(_:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  return a1(a3);
}

{
  v3 = a1(a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t closure #1 in Unmanaged.map<A>(_:)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v10[5] = a1();
  v10[2] = a2;
  v10[3] = a3;
  type metadata accessor for Optional();
  v7 = type metadata accessor for Unmanaged();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(protocol witness for OptionSet.init(rawValue:) in conformance SafeAreaRegions, v10, MEMORY[0x1E69E73E0], v7, v8, a4);
  return swift_unknownObjectRelease();
}

uint64_t CustomAnimationModifier.shouldMerge<A, B>(base:previous:previousBase:value:time:context:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  specialized Animation.init<A>(_:)(a4, a9);
  v15 = (*(a12 + 32))(a1);

  return v15 & 1;
}

uint64_t CustomAnimationModifiedContent.velocity<A>(value:time:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v10[0] = *a2;
  v10[1] = v6;
  v11 = v7;
  v12 = v8;
  return (*(a3[5] + 24))(v5, a1, v10, a4, a3[2], a5, a3[4], a3[3], a3[5]);
}

uint64_t CustomAnimationModifiedContent.shouldMerge<A>(previous:value:time:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v28 = a5;
  v29 = a6;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v18 = *(a4 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 88))(v30, v20);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomAnimation);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v24(v17, 0, 1, a4);
    (*(v18 + 32))(v22, v17, a4);
    v25 = (*(*(a4 + 40) + 32))(v8, &v22[*(a4 + 52)], v22, a2, a3, v28, *(a4 + 16), v29, a7, *(a4 + 32), *(a4 + 24), *(a4 + 40));
    (*(v18 + 8))(v22, a4);
  }

  else
  {
    v24(v17, 1, 1, a4);
    (*(v15 + 8))(v17, v14);
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t CustomAnimationModifiedContent.function.getter(uint64_t *a1)
{
  static Animation.Function.custom<A>(_:)(v1, a1[2], a1[4], v12);
  v8 = v12[0];
  v9 = v12[1];
  v10 = v13;
  v11 = v14;
  (*(a1[5] + 40))(&v8, a1[3]);
  v3 = v8;
  v4 = v9;
  v5 = v10;
  v6 = v11;

  return outlined consume of Animation.Function(v3, *(&v3 + 1), v4, *(&v4 + 1), v5, v6);
}

uint64_t CustomAnimationModifiedContent.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v12, v14);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EncodableAnimation);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v24, v27);
    v17 = v28;
    v18 = v29;
  }

  else
  {
    v17 = &type metadata for DefaultAnimation;
    v18 = &protocol witness table for DefaultAnimation;
    v28 = &type metadata for DefaultAnimation;
    v29 = &protocol witness table for DefaultAnimation;
  }

  __swift_project_boxed_opaque_existential_1(v27, v17);
  EncodableAnimation.encodeAnimation(to:)(a1, v17, v18);
  if (!v3)
  {
    (*(v8 + 16))(v10, v4 + *(a2 + 52), v7);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ProtobufEncodableMessage);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v22, &v24);
      v19 = v25;
      v20 = v26;
      __swift_project_boxed_opaque_existential_1(&v24, v25);
      (*(v20 + 8))(a1, v19, v20);
      __swift_destroy_boxed_opaque_existential_1(&v24);
    }

    else
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      outlined destroy of ProtobufEncodableMessage?(v22);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t InternalCustomAnimationModifiedContent.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CustomAnimationModifiedContent();
  return (*(*(v4 - 8) + 16))(a2, v2 + *(v5 + 52), v4);
}

uint64_t InternalCustomAnimationModifiedContent.velocity<A>(value:time:context:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 16);
  v15 = *(a2 + 17);
  v16 = *(a3 + 40);
  v20 = *(*(a3 + 32) + 8);
  v21 = v16;
  v17 = type metadata accessor for CustomAnimationModifiedContent();
  v19[0] = v12;
  v19[1] = v13;
  LOBYTE(v20) = v14;
  BYTE1(v20) = v15;
  return (*(v17[5] + 24))(v7, a1, v19, a4, v17[2], a5, v17[4], v17[3], a6, v17[5]);
}

uint64_t InternalCustomAnimationModifiedContent.shouldMerge<A>(previous:value:time:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  v36 = a3;
  v33 = a6;
  v34 = a2;
  v37 = a5;
  v10 = a4[2];
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = *(a4 - 1);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 88))(v38, v20);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomAnimation);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v24(v17, 0, 1, a4);
    (*(v18 + 32))(v22, v17, a4);
    v25 = a4[4];
    v32 = a4[3];
    v26 = *(v25 + 8);
    v27 = a4[5];
    v38[0] = v10;
    v38[1] = v32;
    v38[2] = v26;
    v38[3] = v27;
    v28 = type metadata accessor for CustomAnimationModifiedContent();
    v31 = *(v28 + 52);
    (*(v11 + 16))(v13, v35, v10);
    v29 = (*(v27 + 32))(v13, &v22[*(v28 + 52)], v22, v34, v36, v37, v10, v33, a7, v26, v32, v27);
    (*(v11 + 8))(v13, v10);
    (*(v18 + 8))(v22, a4);
  }

  else
  {
    v24(v17, 1, 1, a4);
    (*(v15 + 8))(v17, v14);
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t InternalCustomAnimationModifiedContent.function.getter(void *a1)
{
  v3 = a1[2];
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  InternalCustomAnimationModifiedContent.modifier.getter(v12, v11);
  (*(v4 + 16))(v6, v1, v3);
  (*(a1[4] + 16))(v18, v3);
  (*(v4 + 8))(v6, v3);
  v14 = v18[0];
  v15 = v18[1];
  v16 = v19;
  v17 = v20;
  (*(a1[5] + 40))(&v14, v8);
  outlined consume of Animation.Function(v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17);
  return (*(v9 + 8))(v11, v8);
}

Swift::Int CustomAnimationModifiedContent.hashValue.getter(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomAnimationModifiedContent<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t outlined destroy of ProtobufEncodableMessage?(uint64_t a1)
{
  type metadata accessor for ProtobufEncodableMessage?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ProtobufEncodableMessage?()
{
  if (!lazy cache variable for type metadata for ProtobufEncodableMessage?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for ProtobufEncodableMessage);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProtobufEncodableMessage?);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for CustomAnimationModifiedContent<A, B>(uint64_t a1)
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

Swift::Void __swiftcall _ViewInputs.configureForLazyContainerContent()()
{
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(*v0);
  static CorePlatformProvidersDefinition.providers.getter(v1);
  if (v2)
  {
    (*(v3 + 16))();
  }
}

uint64_t protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance LazyContainerContentModifier(uint64_t a1, uint64_t *a2)
{
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(*a2);
  result = static CorePlatformProvidersDefinition.providers.getter(v4);
  if (v5)
  {
    return (*(v6 + 16))(a2);
  }

  return result;
}

uint64_t _ViewInputs.isInLazyContainer.getter()
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(*v0);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t _GraphInputs.isInLazyContainer.getter()
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(*v0);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t (*_ViewInputs.isInLazyContainer.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v5);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return _ViewInputs.isInLazyContainer.modify;
}

uint64_t _ViewListInputs.isInLazyContainer.getter()
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(*v0);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t (*_ViewListInputs.isInLazyContainer.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v5);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return _ViewListInputs.isInLazyContainer.modify;
}

uint64_t (*_GraphInputs.isInLazyContainer.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v5);
  if (v6)
  {
    v7 = *(v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return _ViewListInputs.isInLazyContainer.modify;
}

void _ViewInputs.isInLazyContainer.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA17IsInLazyContainerV_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t key path setter for _ViewInputs.isInLazyContainer : _ViewInputs(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t *))
{
  v7 = *a1;

  a5(a2, v7, &v9);
}

uint64_t (*_ViewInputs.disableNavigationDestination.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28DisableNavigationDestinationV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _ViewInputs.disableNavigationDestination.modify;
}

uint64_t (*_ViewListInputs.disableNavigationDestination.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28DisableNavigationDestinationV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _ViewListInputs.disableNavigationDestination.modify;
}

uint64_t (*_GraphInputs.disableNavigationDestination.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28DisableNavigationDestinationV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _ViewListInputs.disableNavigationDestination.modify;
}

void _ViewInputs.disableNavigationDestination.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t Optional<A>.makeChildView(metadata:view:inputs:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = *(a3 + 48);
  v20[2] = *(a3 + 32);
  v20[3] = v11;
  v20[4] = *(a3 + 64);
  v21 = *(a3 + 80);
  v12 = *(a3 + 16);
  v20[0] = *a3;
  v20[1] = v12;
  v14[2] = *(a4 + 16);
  v14[3] = a5;
  v15 = *a1;
  v16 = v9;
  v17 = v10;
  v18 = a2;
  v19 = v20;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in Optional<A>.makeChildView(metadata:view:inputs:), v14, a4, MEMORY[0x1E69E73E0], &type metadata for _ViewOutputs, MEMORY[0x1E69E7410], a8);
}

uint64_t partial apply for closure #1 in Optional<A>.makeChildView(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = *(v2 + 72);
  v15 = *(v2 + 32);
  v16 = v5;
  v17 = v6;
  v9 = *(v8 + 48);
  v13[2] = *(v8 + 32);
  v13[3] = v9;
  v13[4] = *(v8 + 64);
  v14 = *(v8 + 80);
  v10 = *(v8 + 16);
  v13[0] = *v8;
  v13[1] = v10;
  v11 = type metadata accessor for Optional();
  return ConditionalMetadata<>.makeView<A>(ptr:view:inputs:)(a1, v7, v13, v11, a2);
}

uint64_t WeakBox.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Indirect.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v5 + 88);
  swift_beginAccess();
  return (*(*(*(a1 + 16) - 8) + 16))(a2, v5 + v6);
}

uint64_t static Indirect<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v11 = *v10;
  v17[1] = *v12;
  v13 = type metadata accessor for Indirect();
  Indirect.value.getter(v13, v9);
  v17[0] = v11;
  Indirect.value.getter(v13, v6);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v4 + 8);
  v15(v6, a3);
  v15(v9, a3);
  return v14 & 1;
}

void (*Indirect.value.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  if (v6)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v9 - 8) + 64));
  }

  v12 = v11;
  *(v8 + 48) = v11;
  type metadata accessor for MutableBox();
  v13 = isKnownUniquelyReferenced<A>(_:)();
  v14 = *v3;
  if ((v13 & 1) == 0)
  {
    v15 = *(*v14 + 88);
    swift_beginAccess();
    (*(v10 + 16))(v12, v14 + v15, v9);
    v16 = MutableBox.__allocating_init(_:)(v12);

    *v3 = v16;
  }

  swift_beginAccess();
  return Indirect.value.modify;
}

void Indirect.value.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_endAccess();
  free(v2);

  free(v1);
}

uint64_t key path setter for MutableBox.wrappedValue : <A>MutableBox<A>(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return MutableBox.wrappedValue.setter(v3);
}

void (*MutableBox.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  MutableBox.wrappedValue.getter();
  return MutableBox.wrappedValue.modify;
}

void MutableBox.wrappedValue.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    MutableBox.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    MutableBox.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t key path getter for WeakBox.base : <A>WeakBox<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WeakBox();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v5 + 8))(v8, v4);
  *a2 = Strong;
  return result;
}

uint64_t WeakBox.base.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakBox.base.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return WeakBox.base.modify;
}

uint64_t key path getter for HashableWeakBox.base : <A>HashableWeakBox<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HashableWeakBox();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v5 + 8))(v8, v4);
  *a2 = Strong;
  return result;
}

uint64_t HashableWeakBox.base.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*HashableWeakBox.base.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return HashableWeakBox.base.modify;
}

uint64_t WeakBox.base.modify()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t HashableWeakBox.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a2 + 8) = a1;
  return result;
}

Swift::Int HashableWeakBox.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*(v0 + 8));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HashableWeakBox<A>()
{
  Hasher.init(_seed:)();
  HashableWeakBox.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Indirect.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MutableBox();
  result = MutableBox.__allocating_init(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t key path setter for Indirect.value : <A>Indirect<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *, uint64_t))
{
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Indirect();
  v9 = a5(v12, v8);
  (*(*(v7 - 8) + 24))(v10, a1, v7);
  return v9(v12, 0);
}

void (*Indirect.wrappedValue.modify(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = Indirect.value.modify(v4, a2);
  return Indirect.wrappedValue.modify;
}

void Indirect.wrappedValue.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t Indirect.value.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MutableBox();
  v9 = isKnownUniquelyReferenced<A>(_:)();
  v10 = *v2;
  if ((v9 & 1) == 0)
  {
    v11 = *(*v10 + 88);
    swift_beginAccess();
    (*(v6 + 16))(v8, v10 + v11, v5);
    v10 = MutableBox.__allocating_init(_:)(v8);

    *v3 = v10;
  }

  v12 = *(*v10 + 88);
  swift_beginAccess();
  (*(v6 + 24))(v10 + v12, a1, v5);
  swift_endAccess();
  return (*(v6 + 8))(a1, v5);
}

uint64_t getEnumTagSinglePayload for HashableWeakBox(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for HashableWeakBox(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for PlatformImageRepresentable.Type?);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.NamedImageRepresentationKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for PlatformNamedImageRepresentable.Type?);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _ViewInputs.PlatformAccessibilityPreferenceKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for PreferenceKey.Type?);
}

uint64_t PropertyList.Tracker.__allocating_init()()
{
  v0 = swift_allocObject();
  _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_1(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey(a1, a2, a3, a4, &lazy cache variable for type metadata for PrivacyReductionAccessibilityProvider.Type, &lazy cache variable for type metadata for PrivacyReductionAccessibilityProvider);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance MatchedGeometryScope(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1E69E6720];

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance MatchedGeometryScope(a1, a2, a3, a4, &lazy cache variable for type metadata for MatchedGeometryScope?, type metadata accessor for MatchedGeometryScope, v4);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.LayoutAccessibilityProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey(a1, a2, a3, a4, &lazy cache variable for type metadata for LayoutAccessibilityProvider.Type, &lazy cache variable for type metadata for LayoutAccessibilityProvider);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.SpacerRepresentationKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for PlatformSpacerRepresentable.Type?);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.OpacityAccessibilityProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey(a1, a2, a3, a4, &lazy cache variable for type metadata for OpacityAccessibilityProvider.Type, &lazy cache variable for type metadata for OpacityAccessibilityProvider);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.TextAlwaysOnProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for TextAlwaysOnProvider.Type?);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.TextRepresentationKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for PlatformTextRepresentable.Type?);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.CoreInteractionResponderProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for CoreInteractionResponderProvider.Type?);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.TextSelectionRepresentationKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for PlatformTextSelectionRepresentation.Type?);
}

uint64_t PropertyList.init(data:)(uint64_t result)
{
  if (result)
  {
    type metadata accessor for PropertyList.Element();
    return swift_dynamicCastClassUnconditional();
  }

  return result;
}

Swift::UInt PropertyList.override(with:)(Swift::UInt result)
{
  v2 = v1;
  v3 = result;
  v4 = *v1;
  if (v4)
  {
    if (result)
    {
      if (v4[3])
      {
        type metadata accessor for TypedElement<EmptyKey>(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
        swift_allocObject();

        result = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v3, v4).value;
        v3 = result;
      }

      else
      {
        v5 = v4[4];
        v6 = *(*v4 + 216);

        v8 = v6(v7, v5);

        v3 = v8;
      }
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
  }

  *v2 = v3;
  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance ImplicitRootType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey(a1, a2, a3, a4, &lazy cache variable for type metadata for _VariadicView_AnyImplicitRoot.Type, &lazy cache variable for type metadata for _VariadicView_AnyImplicitRoot);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance ReferenceDateInput()
{
  type metadata accessor for PropertyList.Element?(0, &lazy cache variable for type metadata for Date?, 255, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PlatformHiddenRepresentationKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for PlatformHiddenRepresentable.Type?);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.HiddenAccessibilityProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for HiddenAccessibilityProvider.Type?);
}

uint64_t PropertyList.Tracker.initializeValues(from:)(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  *(v3 + 24) = v2;
  os_unfair_lock_unlock((v3 + 16));
}

uint64_t PropertyList.id.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = *(result + 64);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t PropertyList.Tracker.invalidateAllValues(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 != *(a1 + 64))
    {
      goto LABEL_12;
    }

    if (!a2)
    {
      if (v6)
      {
        move(_:to:)((v5 + 32), v5 + 48);
        move(_:to:)((v5 + 40), v5 + 48);
        *(v5 + 24) = 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = a2 == 0;
    }

    if (v7)
    {
      goto LABEL_12;
    }
  }

  if (v6 != *(a2 + 64))
  {
    move(_:to:)((v5 + 32), v5 + 48);
    move(_:to:)((v5 + 40), v5 + 48);
    *(v5 + 24) = *(a2 + 64);
  }

LABEL_12:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t PropertyList.Tracker.formUnion(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);

  os_unfair_lock_lock((v2 + 16));
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v9[0] = *(v2 + 24);
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v10 = v6;
  v7 = *(v1 + 16);

  os_unfair_lock_lock(v7 + 4);
  TrackerData.formUnion(_:)(v9);

  os_unfair_lock_unlock(v7 + 4);

  os_unfair_lock_unlock((v2 + 16));
}

uint64_t PropertyList.Tracker.derivedValue<A>(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v23 - v11;
  v13 = *(v4 + 16);

  os_unfair_lock_lock((v13 + 16));
  v14 = *(v13 + 24);
  if (!a1)
  {
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v13 + 56) = 1;
    (*(a3 + 24))(a1, a2, a3);
    goto LABEL_9;
  }

  if (v14 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(v13 + 40);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v17 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v15 + 56) + 40 * v16, v23);
    outlined init with take of AnyTrackedValue(v23, v24);
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (v19[1])(AssociatedTypeWitness, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    (*(a3 + 24))(a1, a2, a3);
    (*(v10 + 16))(v12, a4, AssociatedTypeWitness);
    v25 = type metadata accessor for DerivedValue();
    v26 = &protocol witness table for DerivedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    v21 = swift_getAssociatedTypeWitness();
    (*(*(v21 - 8) + 32))(boxed_opaque_existential_1, v12, v21);
    specialized Dictionary.subscript.setter(v24, a2);
  }

LABEL_9:
  os_unfair_lock_unlock((v13 + 16));
}

uint64_t PropertyList.description.getter(void *a1)
{
  v4[0] = 91;
  v4[1] = 0xE100000000000000;
  v3 = 0;
  if (a1)
  {
    v2 = 0;
    specialized PropertyList.Element.forEach(filter:_:)(&v2, a1, &v3, v4);
  }

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);
  return v4[0];
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance StyleableViewContextInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1E69E6720];

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance MatchedGeometryScope(a1, a2, a3, a4, &lazy cache variable for type metadata for Any.Type?, type metadata accessor for Any.Type, v4);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.GestureAccessibilityProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey(a1, a2, a3, a4, &lazy cache variable for type metadata for GestureAccessibilityProvider.Type, &lazy cache variable for type metadata for GestureAccessibilityProvider);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance TextRendererInput()
{
  type metadata accessor for TextRendererBoxBase();

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance MappedViewElement.BodyInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance MatchedGeometryScope(a1, a2, a3, a4, &lazy cache variable for type metadata for Stack<(_:)>, type metadata accessor for (_:), type metadata accessor for Stack);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ContentShapeAccessibilityProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey(a1, a2, a3, a4, &lazy cache variable for type metadata for ContentShapeAccessibilityProvider.Type, &lazy cache variable for type metadata for ContentShapeAccessibilityProvider);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageAccessibilityProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey(a1, a2, a3, a4, &lazy cache variable for type metadata for ImageAccessibilityProvider.Type, &lazy cache variable for type metadata for ImageAccessibilityProvider);
}

uint64_t PropertyList.elements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void (*PropertyList.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  PropertyList.subscript.getter(a2, *v4, a3, a4);
  return PropertyList.subscript.modify;
}

void PropertyList.subscript.modify(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized PropertyList.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized PropertyList.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

SwiftUI::BloomFilter PropertyList.prependValue<A>(_:for:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for TypedElement();
  v4 = *v2;
  swift_allocObject();
  result.value = specialized TypedElement.init(value:before:after:)(a1, 0, v4).value;
  *v2 = result.value;
  return result;
}

uint64_t specialized PropertyList.Element.forEach(filter:_:)(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  v7 = *result;
  while (1)
  {
    while ((v7 & ~a2[7]) != 0)
    {
      a2 = a2[5];
      if (!a2)
      {
        return 1;
      }
    }

    v8 = a2[3];
    if (v8)
    {
      v10 = v7;
      result = specialized PropertyList.Element.forEach(filter:_:)(&v10, v8, a3, a4);
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (*a3)
    {
      result = MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    }

    v9 = (*(*a2 + 200))(result);
    MEMORY[0x193ABEDD0](v9);

    if (__OFADD__(*a3, 1))
    {
      break;
    }

    ++*a3;
    a2 = a2[4];
    if (!a2)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t PropertyList.Element.forEach(filter:_:)(uint64_t *a1, void (*a2)(void *, BOOL *), uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v11 = 0;
  while (1)
  {
    while ((v7 & ~v4[7]) != 0)
    {
      v4 = v4[5];
      if (!v4)
      {
        return 1;
      }
    }

    if (v4[3])
    {
      v10 = v7;
      v8 = PropertyList.Element.forEach(filter:_:)(&v10, a2, a3);
      v11 = (v8 & 1) == 0;
      if ((v8 & 1) == 0)
      {
        break;
      }
    }

    a2(v4, &v11);
    if (v11)
    {
      break;
    }

    v4 = v4[4];
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t closure #13 in PropertyList.merge(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  *a3 = a4;
  v6 = *a5;
  if (*a5 < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (!v6)
    {
      return result;
    }

    v8 = result;
    while (a4)
    {
      *v8 = a4;
      if (!*a3)
      {
        goto LABEL_17;
      }

      a4 = *(*a3 + 32);
      *a3 = a4;
      ++v8;
      if (!--v6)
      {
        v9 = *a5;
        if (*a5 < 0)
        {
          goto LABEL_15;
        }

        if (v9)
        {
          v10 = result - 8;
          v11 = *a5;
          while (v9 >= v11)
          {
            v12 = v11 - 1;
            closure #3 in closure #13 in PropertyList.merge(_:)(*(v10 + 8 * v11), a6, &v13);
            *a6 = v13;

            v11 = v12;
            if (!v12)
            {
              return result;
            }
          }

          __break(1u);
          goto LABEL_14;
        }

        return result;
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t closure #3 in closure #13 in PropertyList.merge(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[3];
  v5 = *a2;
  v6 = *(*a1 + 216);

  v7 = v6(v4, v5);

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PropertyList()
{
  v1 = *v0;
  v5[0] = 91;
  v5[1] = 0xE100000000000000;
  v4 = 0;
  if (v1)
  {
    v3 = 0;
    specialized PropertyList.Element.forEach(filter:_:)(&v3, v1, &v4, v5);
  }

  MEMORY[0x193ABEDD0](93, 0xE100000000000000);
  return v5[0];
}

__n128 property wrapper backing initializer of PropertyList.Tracker.data@<Q0>(uint64_t a1@<X0>, __n128 **a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_1(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v7 = swift_allocObject();
  v7[1].n128_u32[0] = 0;
  v7[1].n128_u64[1] = v4;
  result = *(a1 + 8);
  v7[2] = result;
  v7[3].n128_u64[0] = v5;
  v7[3].n128_u8[8] = v6;
  *a2 = v7;
  return result;
}

uint64_t TrackerData.formUnion(_:)(uint64_t result)
{
  v2 = *result;
  v3 = *v1;
  if (*result)
  {
    v4 = v3 == v2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = *(result + 8);
    v5 = *(result + 16);
    v7 = *(result + 24);
    v8 = *(result + 32);
    if (v3)
    {
      *v1 = v2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v1[1];
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v6, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v12);

      v1[1] = v12;

      v10 = swift_isUniquelyReferenced_nonNull_native();
      v12 = v1[2];
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v10, &v12);

      v1[2] = v12;

      result = specialized Array.append<A>(contentsOf:)(v11);
      *(v1 + 32) = (*(v1 + 32) | v8) & 1;
    }

    else
    {

      *v1 = v2;
      v1[1] = v6;
      v1[2] = v5;
      v1[3] = v7;
      *(v1 + 32) = v8;
    }
  }

  return result;
}

uint64_t PropertyList.Element.__deallocating_deinit()
{
  PropertyList.Element.deinit();

  return swift_deallocClassInstance();
}

uint64_t TypedElement.description.getter()
{
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](2112800, 0xE300000000000000);
  swift_getAssociatedTypeWitness();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

uint64_t TypedElement.value<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  if (*(v8 + 64) == *(*(a1 - 8) + 64))
  {
    v9 = *(*(a1 - 8) + 16);
    v10 = v2 + *(v5 + 248);

    return v9(a2, v10, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TypedElement.__ivar_destroyer()
{
  v1 = *(*v0 + 248);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.AllowsHitTestingAccessibilityProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey(a1, a2, a3, a4, &lazy cache variable for type metadata for AllowsHitTestingAccessibilityProvider.Type, &lazy cache variable for type metadata for AllowsHitTestingAccessibilityProvider);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.TextAccessibilityProviderKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.PrivacyReductionAccessibilityProviderKey(a1, a2, a3, a4, &lazy cache variable for type metadata for TextAccessibilityProvider.Type, &lazy cache variable for type metadata for TextAccessibilityProvider);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = outlined init with copy of AnyTrackedValue((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

uint64_t initializeWithCopy for DerivedValue(uint64_t a1, uint64_t a2)
{
  return initializeWithCopy for DerivedValue(a1, a2);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for DerivedValue(uint64_t a1, uint64_t a2)
{
  return assignWithCopy for DerivedValue(a1, a2);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for DerivedValue(uint64_t a1, uint64_t a2)
{
  return initializeWithTake for DerivedValue(a1, a2);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for DerivedValue(uint64_t a1, uint64_t a2)
{
  return assignWithTake for DerivedValue(a1, a2);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for DerivedValue(unsigned __int16 *a1, unsigned int a2)
{
  return getEnumTagSinglePayload for DerivedValue(a1, a2);
}

{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void storeEnumTagSinglePayload for DerivedValue(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  storeEnumTagSinglePayload for DerivedValue(a1, a2, a3);
}

{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
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
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t initializeWithCopy for SecondaryLookupTrackedValue(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for SecondaryLookupTrackedValue(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for SecondaryLookupTrackedValue(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for SecondaryLookupTrackedValue(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for SecondaryLookupTrackedValue(unsigned __int16 *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void storeEnumTagSinglePayload for SecondaryLookupTrackedValue(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
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
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t initializeWithCopy for TrackerData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for TrackerData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for TrackerData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for TrackerData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for TrackerData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7ElementC7forEach6filter_SbAA11BloomFilterV_ys9UnmanagedVyAEG_SbztXEtF03_s7a4UI12cd62V7forEach21nominalTypeDescriptor2as_SbSV_xmyypXp_xSbztXEtlFys9k5VyAC7e3CG_V73XEfU_AA5StackOyAA09BodyInputL033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOG_Tg5SVSayypXpGypXmTxSbRi_zRi0_zlyAA5StackOyAA09BodyInputE033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOGIsgynl_Tf1ncn_nTf4nnnng_n(uint64_t *a1, void *a2, uint64_t a3, char **a4, void (*a5)(uint64_t, uint64_t *, BOOL *), uint64_t a6)
{
  v11 = *a1;
  v27 = 0;
  while (1)
  {
    while ((v11 & ~a2[7]) != 0)
    {
      a2 = a2[5];
      if (!a2)
      {
        return 1;
      }
    }

    v12 = a2[3];
    if (v12)
    {
      v26 = v11;
      v13 = _s7SwiftUI12PropertyListV7ElementC7forEach6filter_SbAA11BloomFilterV_ys9UnmanagedVyAEG_SbztXEtF03_s7a4UI12cd62V7forEach21nominalTypeDescriptor2as_SbSV_xmyypXp_xSbztXEtlFys9k5VyAC7e3CG_V73XEfU_AA5StackOyAA09BodyInputL033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOG_Tg5SVSayypXpGypXmTxSbRi_zRi0_zlyAA5StackOyAA09BodyInputE033_2BA0A33A15B7F322F46AFB9D0D1A262DLLOGIsgynl_Tf1ncn_nTf4nnnng_n(&v26, v12, a3, a4, a5, a6);
      v27 = (v13 & 1) == 0;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    v14 = a2[2];
    v15 = MEMORY[0x193AC2090](v14);
    if (v15 && v15 == a3)
    {
      v17 = *a4;
      v18 = *(*a4 + 2);
      v19 = 32;
      while (v18)
      {
        v20 = *&v17[v19];
        v19 += 8;
        --v18;
        if (v20 == v14)
        {
          goto LABEL_20;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        *a4 = v17;
      }

      v23 = *(v17 + 2);
      v22 = *(v17 + 3);
      if (v23 >= v22 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v17);
        *a4 = v17;
      }

      *(v17 + 2) = v23 + 1;
      *&v17[8 * v23 + 32] = v14;
      _s7SwiftUI12AtomicBuffer33_82B2D47816BC992595021D60C278AFF0LLCyAA11TrackerData33_D64CE6C88E7413721C59A34C0C940F2CLLVGMaTm_1(0, &lazy cache variable for type metadata for Stack<BodyInputElement>, &type metadata for BodyInputElement, type metadata accessor for Stack);
      (*(*a2 + 224))(&v26, v24, v24);
      a5(v14, &v26, &v27);

      if (v27)
      {
        return 0;
      }
    }

LABEL_20:
    a2 = a2[4];
    if (!a2)
    {
      return 1;
    }
  }
}