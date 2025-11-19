uint64_t AnimationPath.Element.animatableData(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v47 = a2;
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = v41 - v10;
  v11 = type metadata accessor for AnimationPath.SpringElement();
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - v12;
  v45 = v6;
  v14 = type metadata accessor for AnimationPath.CurveElement();
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v41 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v3, a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v43;
      (*(v43 + 32))(v13, v21, v11);
      v25 = *(v13 + 2);
      v48 = *v13;
      *&v49 = v25;
      v41[1] = *(v11 + 36);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v27 = v42;
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v28 = v44;
      Spring.value<A>(target:initialVelocity:time:)(v27, a3, &v13[*(v11 + 44)], AssociatedTypeWitness, AssociatedConformanceWitness);
      v29 = *(v46 + 8);
      v29(v27, AssociatedTypeWitness);
      dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
      v29(v28, AssociatedTypeWitness);
      return (*(v24 + 8))(v13, v11);
    }

    else
    {
      return (*(v46 + 32))(v47, v21, AssociatedTypeWitness);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v21, v14);
    if (a3 >= 0.0)
    {
      if (AnimationPath.Element.duration.getter(a1) >= a3)
      {
        v33 = &v17[v14[11]];
        v34 = v33[32];
        v35 = *(v33 + 1);
        v48 = *v33;
        v49 = v35;
        v50 = v34;
        v36 = UnitCurve.value(at:)(a3 / *&v17[v14[9]]);
        v37 = v17[v14[10]];
        v38 = type metadata accessor for HermiteCurve();
        if (v37 == 1)
        {
          v39 = v38;
          v40 = HermiteCurve.arcLength.getter();
          HermiteCurve.value(atArcLength:)(v39, v47, v36 * v40);
        }

        else
        {
          HermiteCurve.value(at:)(v38, v47, v36);
        }

        return (*(v15 + 8))(v17, v14);
      }

      else
      {
        v32 = type metadata accessor for HermiteCurve();
        (*(v46 + 16))(v47, &v17[*(v32 + 36)], AssociatedTypeWitness);
        return (*(*(v32 - 8) + 8))(v17, v32);
      }
    }

    else
    {
      (*(v46 + 16))(v47, v17, AssociatedTypeWitness);
      v31 = type metadata accessor for HermiteCurve();
      return (*(*(v31 - 8) + 8))(v17, v31);
    }
  }
}

uint64_t _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA4PathVAA010ForegroundS0VG_Tt5B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  LODWORD(v57) = 0;
  HIDWORD(v57) = *MEMORY[0x1E698D3F8];
  v52 = *MEMORY[0x1E698D3F8];
  v55 = *(a2 + 48);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v55) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v13;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v14 = *(a2 + 16);
    v59 = *a2;
    v60 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v59);
    v16 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v16;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v17 = *(a2 + 16);
    v59 = *a2;
    v60 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v59);
    v51 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v47 = v21;
    v48 = *(a2 + 60);
    v49 = *(a2 + 68);
    v50 = *(a2 + 76);
    *&v59 = a4;
    *(&v59 + 1) = __PAIR64__(a1, v9);
    *&v60 = __PAIR64__(OffsetAttribute2, a3);
    *(&v60 + 1) = __PAIR64__(v18, v15);
    *&v61 = __PAIR64__(v48, v49);
    *(&v61 + 1) = __PAIR64__(v50, v19);
    LOBYTE(v62) = v21;
    WORD1(v62) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Path, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Path, ForegroundStyle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Path, ForegroundStyle>>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v59 = a4;
    *(&v59 + 1) = __PAIR64__(a1, v9);
    *&v60 = __PAIR64__(OffsetAttribute2, a3);
    *(&v60 + 1) = __PAIR64__(v18, v15);
    *&v61 = __PAIR64__(v48, v49);
    *(&v61 + 1) = __PAIR64__(v50, v22);
    LOBYTE(v62) = v47;
    WORD1(v62) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v59, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Path, ForegroundStyle>>);
    LOBYTE(v58[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v51;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 48);
    v25 = *(a2 + 64);
    v26 = *(a2 + 16);
    v61 = *(a2 + 32);
    v62 = v24;
    v63 = v25;
    v64 = *(a2 + 80);
    v59 = *a2;
    v60 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v59);
    v28 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v28;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v29 = *(a2 + 16);
    v59 = *a2;
    v60 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v31 = *(a2 + 60);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Path, ForegroundStyle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = v8;
    *(v32 + 24) = 0;
    *(v32 + 160) = 0u;
    *(v32 + 176) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v55;
    *&v59 = v55;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v55 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v55 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v59 = __PAIR64__(a3, a1);
        *(&v59 + 1) = __PAIR64__(v30, v27);
        LODWORD(v60) = v31;
        *(&v60 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Path, ForegroundStyle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Path, ForegroundStyle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Path, ForegroundStyle>>);
        v35 = v55;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v59) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 64);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v59 = __PAIR64__(v40, v31);
    *(&v59 + 1) = __PAIR64__(a1, v41);
    LODWORD(v60) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Path, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Path, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Path, ForegroundStyle>>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v59 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v55 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v59) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v59) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v56;
      a5[1] = v57;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v59);
  result = AGWeakAttributeGetAttribute();
  if (result != v52)
  {
    v58[0] = v9;
    v46 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v58);
    v46(&v59, 0);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t outlined copy of PathDrawingStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  return result;
}

void type metadata accessor for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>()
{
  if (!lazy cache variable for type metadata for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>)
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v0 = type metadata accessor for SpringState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>);
    }
  }
}

uint64_t static _MaskAlignmentEffect._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v7;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v10[1] = v6;
  type metadata accessor for _MaskAlignmentEffect();
  type metadata accessor for _GraphValue();

  _GraphValue.subscript.getter(partial apply for closure #2 in static _MaskAlignmentEffect._makeView(modifier:inputs:body:), &type metadata for Alignment, v10);
  return specialized static _ViewOutputs.makeMaskView(inputs:contentBody:maskBody:outputsFromMask:mayUseForegroundColor:alignment:)(v11, partial apply for makeMask #1 <A>(inputs:) in static _MaskAlignmentEffect._makeView(modifier:inputs:body:), 0, 1, v10[0], a3, a4);
}

uint64_t HermiteCurve.value(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v28 = &v27 - v16;
  v17 = a3 * a3 * a3;
  v27 = *(a1 + 40);
  v29 = *(a1 + 44);
  v18 = a3 * a3 * 3.0;
  v19 = v17 + v17 - v18 + 1.0;
  v20 = v18 - (v17 + v17);
  v21 = v17 - (a3 * a3 + a3 * a3) + a3;
  v22 = v17 - a3 * a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v11, v19);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v8, v20);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v24 = *(v6 + 8);
  v24(v8, AssociatedTypeWitness);
  v24(v11, AssociatedTypeWitness);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v11, v21);
  v25 = v28;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v24(v11, AssociatedTypeWitness);
  v24(v14, AssociatedTypeWitness);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v14, v22);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v24(v14, AssociatedTypeWitness);
  return (v24)(v25, AssociatedTypeWitness);
}

unint64_t GraphicsBlendMode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v5 = static GraphicsBlendMode.normal;
  v6 = byte_1ED52F818;
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    result = outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
LABEL_40:
    a1[3] = 0;
    *a2 = v5;
    *(a2 + 8) = v6 & 1;
    return result;
  }

  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  while (1)
  {
    result = a1[3];
    if (result)
    {
      v10 = a1[4];
      if (v7 < v10)
      {
        goto LABEL_13;
      }

      if (v10 < v7)
      {
        goto LABEL_38;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of GraphicsBlendMode(v5, v6 & 1);
    }

    if (result <= 7)
    {
LABEL_38:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined consume of GraphicsBlendMode(v5, v6 & 1);
    }

LABEL_13:
    v11 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of GraphicsBlendMode(v5, v6 & 1);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        v14 = a1[1] + result;
        if (v8 < v14)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_38;
        }

        v14 = a1[1] + 4;
        if (v8 < v14)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_5;
    }

    if ((result & 7) != 0)
    {
      if (v11 != 1)
      {
        goto LABEL_38;
      }

      v14 = a1[1] + 8;
      if (v8 < v14)
      {
        goto LABEL_38;
      }

LABEL_5:
      a1[1] = v14;
      goto LABEL_6;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of GraphicsBlendMode(v5, v6 & 1);
    }

LABEL_6:
    v7 = a1[1];
    if (v7 >= v8)
    {
      goto LABEL_40;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_20:
    v13 = ProtobufDecoder.decodeVarint()();
    result = outlined consume of GraphicsBlendMode(v5, v6 & 1);
    if (v2)
    {
      return result;
    }

    v6 = 0;
    if (v13 >> 31)
    {
      v5 = 0;
    }

    else
    {
      v5 = v13;
    }

    goto LABEL_6;
  }

  if (v11 != 2)
  {
    goto LABEL_38;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of GraphicsBlendMode(v5, v6 & 1);
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v12 = a1[1] + result;
    if (v8 < v12)
    {
      goto LABEL_38;
    }

    a1[3] = 8;
    a1[4] = v12;
    goto LABEL_20;
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void destroy for AccessibilityNodeAttachment(uint64_t a1)
{
  type metadata accessor for AccessibilityNodeAttachment.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v2 = *(a1 + 88);
    if (v2)
    {
      if (v2 == 1)
      {
LABEL_6:
        if (*(a1 + 240) != 1)
        {
        }

        v3 = *(a1 + 288);

        return;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 64);
    }

    goto LABEL_6;
  }

  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v5 = *(a1 + 32) | (*(a1 + 34) << 16);
  if (EnumCaseMultiPayload == 1)
  {
    if (*(a1 + 34) != 255)
    {
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v5, BYTE2(v5) & 1);
    }

    if (*(a1 + 58) != 255)
    {
      v6 = *(a1 + 56) | (*(a1 + 58) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v6, BYTE2(v6) & 1);
    }

    if (*(a1 + 82) != 255)
    {
      v7 = *(a1 + 80) | (*(a1 + 82) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v7, BYTE2(v7) & 1);
    }

    v8 = *(a1 + 232);
    if (v8 != 1)
    {
      if (*(a1 + 162) != 255)
      {
        v9 = *(a1 + 160) | (*(a1 + 162) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v9, BYTE2(v9) & 1);
        v8 = *(a1 + 232);
      }

      if (v8)
      {
        if (*(a1 + 202) != 255)
        {
          v10 = *(a1 + 200) | (*(a1 + 202) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v10, BYTE2(v10) & 1);
        }

        if (*(a1 + 226) != 255)
        {
          v11 = *(a1 + 224) | (*(a1 + 226) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v11, BYTE2(v11) & 1);
        }
      }

      if (*(a1 + 344))
      {
        if (*(a1 + 314) != 255)
        {
          v12 = *(a1 + 312) | (*(a1 + 314) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v12, BYTE2(v12) & 1);
        }

        if (*(a1 + 338) != 255)
        {
          v13 = *(a1 + 336) | (*(a1 + 338) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v13, BYTE2(v13) & 1);
        }
      }
    }

    v14 = *(type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0) + 52);
    v15 = type metadata accessor for LinkDestination.Configuration(0);
    if (!(*(*(v15 - 8) + 48))(a1 + v14, 1, v15))
    {
      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 8))(a1 + v14, v16);
    }

    v17 = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(0);

    v18 = a1 + *(v17 + 24);
    v19 = *(v18 + 48);
    if (v19 != 1)
    {
      v20 = *(v18 + 16);
      if (v20 != 255)
      {
        outlined consume of AccessibilityText.Storage(*v18, *(v18 + 8), v20 & 1);
        v19 = *(v18 + 48);
      }

      if (v19)
      {
        __swift_destroy_boxed_opaque_existential_1(v18 + 24);
      }
    }
  }

  else
  {
    if (*(a1 + 34) != 255)
    {
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v5, BYTE2(v5) & 1);
    }

    if (*(a1 + 58) != 255)
    {
      v21 = *(a1 + 56) | (*(a1 + 58) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v21, BYTE2(v21) & 1);
    }

    if (*(a1 + 82) != 255)
    {
      v22 = *(a1 + 80) | (*(a1 + 82) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v22, BYTE2(v22) & 1);
    }

    v23 = *(a1 + 232);
    if (v23 != 1)
    {
      if (*(a1 + 162) != 255)
      {
        v24 = *(a1 + 160) | (*(a1 + 162) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v24, BYTE2(v24) & 1);
        v23 = *(a1 + 232);
      }

      if (v23)
      {
        if (*(a1 + 202) != 255)
        {
          v25 = *(a1 + 200) | (*(a1 + 202) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v25, BYTE2(v25) & 1);
        }

        if (*(a1 + 226) != 255)
        {
          v26 = *(a1 + 224) | (*(a1 + 226) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v26, BYTE2(v26) & 1);
        }
      }

      if (*(a1 + 344))
      {
        if (*(a1 + 314) != 255)
        {
          v27 = *(a1 + 312) | (*(a1 + 314) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v27, BYTE2(v27) & 1);
        }

        if (*(a1 + 338) != 255)
        {
          v28 = *(a1 + 336) | (*(a1 + 338) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v28, BYTE2(v28) & 1);
        }
      }
    }

    v29 = *(type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0) + 52);
    v30 = type metadata accessor for LinkDestination.Configuration(0);
    if (!(*(*(v30 - 8) + 48))(a1 + v29, 1, v30))
    {
      v31 = type metadata accessor for URL();
      (*(*(v31 - 8) + 8))(a1 + v29, v31);
    }

    type metadata accessor for CodableAccessibilityAttachmentStorage.V2(0);
  }
}

uint64_t specialized SpringAnimation.animate<A>(value:time:context:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  SpringModel.duration(epsilon:)(0.001);
  if (v9 <= a3 || (v10 = SpringModel.sample(at:)(a3), (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL))
  {
    *&result = 0.0;
    return result;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (a3 < 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (6.28318531 / sqrt(a5) <= a3)
  {
LABEL_8:
    *(a1 + 17) = 1;
  }

LABEL_9:
  *&result = v10 * a2;
  return result;
}

uint64_t closure #2 in DisplayList.Effect.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
LABEL_50:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
LABEL_51:
    a1[3] = 0;
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 24) = v8;
    *(result + 28) = v7;
    *(result + 32) = v9;
    *a2 = result;
    *(a2 + 8) = 0;
    *(a2 + 12) = 7;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = a1[3];
    if (v11)
    {
      v12 = a1[4];
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_52;
      }

      a1[3] = 0;
    }

    v13 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    v11 = v13;
    if (v13 < 8)
    {
      goto LABEL_52;
    }

LABEL_11:
    if (v11 >> 3 == 2)
    {
      break;
    }

    if (v11 >> 3 == 1)
    {

      if ((v11 & 7) != 2)
      {
        goto LABEL_53;
      }

      v14 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      *&v14[8 * v16 + 32] = v6;
      a1[5] = v14;
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if (result < 0)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        __break(1u);
        result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
        v30 = *(result + 16);
        if (v30)
        {
          v28 = v30 - 1;
          v29 = *(result + 8 * v28 + 32);
          *(result + 16) = v28;
          a1[5] = result;
          a1[2] = v29;
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      v18 = a1[1] + result;
      if (v6 < v18)
      {
        goto LABEL_53;
      }

      a1[2] = v18;
      DisplayList.init(from:)(&v31, a1);
      v19 = a1[5];
      if (!*(v19 + 2))
      {
        goto LABEL_58;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = *(v19 + 2);
        if (!v20)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v20 = *(v19 + 2);
        if (!v20)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      v21 = v20 - 1;
      v6 = *&v19[8 * v21 + 32];
      *(v19 + 2) = v21;
      a1[5] = v19;
      a1[2] = v6;
      v10 = v31;
      v8 = v32;
      v7 = v33;
    }

    else
    {
      v25 = v11 & 7;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v27 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if (v27 < 0)
          {
            goto LABEL_60;
          }

          v26 = a1[1] + v27;
          if (v6 < v26)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v25 != 5)
          {
            goto LABEL_52;
          }

          v26 = a1[1] + 4;
          if (v6 < v26)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_3;
      }

      if ((v11 & 7) != 0)
      {
        if (v25 != 1)
        {
          goto LABEL_52;
        }

        v26 = a1[1] + 8;
        if (v6 < v26)
        {
          goto LABEL_52;
        }

LABEL_3:
        a1[1] = v26;
        goto LABEL_4;
      }

      ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }
    }

LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      goto LABEL_51;
    }
  }

  if ((v11 & 7) == 0)
  {
LABEL_31:
    v24 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    v9 = v24;
    goto LABEL_4;
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_52;
  }

  v22 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
  }

  if (v22 < 0)
  {
    goto LABEL_59;
  }

  v23 = a1[1] + v22;
  if (v6 >= v23)
  {
    a1[3] = 16;
    a1[4] = v23;
    goto LABEL_31;
  }

LABEL_52:

LABEL_53:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_18D385188()
{

  return swift_deallocObject();
}

uint64_t _TrimmedShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v15 - v9;
  (*(v6 + 24))(v5, v6, v8);
  v11.f64[0] = *(v2 + *(a1 + 36));
  v11.f64[1] = *(v2 + *(a1 + 40));
  v15 = vmulq_f64(v11, vdupq_n_s64(0x4060000000000000uLL));
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v13 = v12;
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  return AnimatablePair.init(_:_:)(v10, &v15, AssociatedTypeWitness, v13, a2);
}

uint64_t AllowsHitTestingResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey()
{
  result = lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey;
  if (!lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey;
  if (!lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey);
  }

  return result;
}

uint64_t type metadata completion function for NamedImage.Key()
{
  result = type metadata accessor for NamedImage.BitmapKey(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t CodableAlignment.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    lazy protocol witness table accessor for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v5 = v14;
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    lazy protocol witness table accessor for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v7 = v14;
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (one-time initialization token for firstTextBaseline != -1)
        {
          swift_once();
        }

        v8 = &static VerticalAlignment.firstTextBaseline;
      }

      else if (v5 == 4)
      {
        if (one-time initialization token for lastTextBaseline != -1)
        {
          swift_once();
        }

        v8 = &static VerticalAlignment.lastTextBaseline;
      }

      else
      {
        if (one-time initialization token for _firstTextLineCenter != -1)
        {
          swift_once();
        }

        v8 = &static VerticalAlignment._firstTextLineCenter;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (one-time initialization token for bottom != -1)
        {
          swift_once();
        }

        v8 = &static VerticalAlignment.bottom;
      }

      else
      {
        if (one-time initialization token for center != -1)
        {
          swift_once();
        }

        v8 = &static VerticalAlignment.center;
      }
    }

    else
    {
      if (one-time initialization token for top != -1)
      {
        swift_once();
      }

      v8 = &static VerticalAlignment.top;
    }

    v9 = *v8;
    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          if (one-time initialization token for trailing != -1)
          {
            swift_once();
          }

          v10 = &static HorizontalAlignment.trailing;
        }

        else
        {
          if (one-time initialization token for center != -1)
          {
            swift_once();
          }

          v10 = &static HorizontalAlignment.center;
        }
      }

      else
      {
        if (one-time initialization token for leading != -1)
        {
          swift_once();
        }

        v10 = &static HorizontalAlignment.leading;
      }
    }

    else if (v7 > 4)
    {
      if (v7 == 5)
      {
        if (one-time initialization token for listRowSeparatorLeading != -1)
        {
          swift_once();
        }

        v10 = &static HorizontalAlignment.listRowSeparatorLeading;
      }

      else
      {
        if (one-time initialization token for listRowSeparatorTrailing != -1)
        {
          swift_once();
        }

        v10 = &static HorizontalAlignment.listRowSeparatorTrailing;
      }
    }

    else if (v7 == 3)
    {
      if (one-time initialization token for leadingText != -1)
      {
        swift_once();
      }

      v10 = &static HorizontalAlignment.leadingText;
    }

    else
    {
      if (one-time initialization token for formDetailLeading != -1)
      {
        swift_once();
      }

      v10 = &static HorizontalAlignment.formDetailLeading;
    }

    v11 = *v10;
    __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v11;
    a2[1] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue()
{
  result = lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue;
  if (!lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue;
  if (!lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue;
  if (!lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue;
  if (!lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment.VerticalCodingValue and conformance CodableAlignment.VerticalCodingValue);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CodableAlignment.VerticalCodingValue@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CodableAlignment.VerticalCodingValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized CodableAlignment.VerticalCodingValue.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t getEnumTagSinglePayload for CustomEventTrace.TransactionEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue()
{
  result = lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue;
  if (!lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue;
  if (!lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue;
  if (!lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue;
  if (!lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAlignment.HorizontalCodingValue and conformance CodableAlignment.HorizontalCodingValue);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CodableAlignment.HorizontalCodingValue@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CodableAlignment.HorizontalCodingValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized CodableAlignment.HorizontalCodingValue.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t getEnumTagSinglePayload for AccessibilityCustomAttributes.Value.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t CodableVisibility.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5 == 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AnyAccessibilityValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AnyAccessibilityValue.Keys>, lazy protocol witness table accessor for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys, &unk_1F008EEB0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v34 = 0;
    lazy protocol witness table accessor for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v29 > 5u)
    {
      if (v29 > 8u)
      {
        if (v29 == 9)
        {
          type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber>();
          v34 = 1;
          v30 = v20;
          v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber>;
          v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber>);
          *&v29 = swift_allocObject();
          v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber> and conformance AnyAccessibilityValue.ConcreteBase<A>;
        }

        else if (v29 == 10)
        {
          type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityNumber>();
          v34 = 1;
          v30 = v16;
          v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityNumber>;
          v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityNumber> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityNumber>);
          v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityNumber> and conformance AnyAccessibilityValue.ConcreteBase<A>;
        }

        else
        {
          type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue>();
          v34 = 1;
          v30 = v24;
          v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue>;
          v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue>);
          v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>;
        }
      }

      else if (v29 == 6)
      {
        type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilitySliderValue>();
        v34 = 1;
        v30 = v18;
        v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilitySliderValue>;
        v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilitySliderValue> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilitySliderValue>);
        *&v29 = swift_allocObject();
        v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilitySliderValue> and conformance AnyAccessibilityValue.ConcreteBase<A>;
      }

      else if (v29 == 7)
      {
        type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityStepperValue>();
        v34 = 1;
        v30 = v14;
        v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityStepperValue>;
        v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityStepperValue> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityStepperValue>);
        *&v29 = swift_allocObject();
        v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityStepperValue> and conformance AnyAccessibilityValue.ConcreteBase<A>;
      }

      else
      {
        type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityProgressValue>();
        v34 = 1;
        v30 = v22;
        v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityProgressValue>;
        v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityProgressValue> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityProgressValue>);
        v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityProgressValue> and conformance AnyAccessibilityValue.ConcreteBase<A>;
      }
    }

    else if (v29 > 2u)
    {
      if (v29 == 3)
      {
        type metadata accessor for AnyAccessibilityValue.ConcreteBase<String>();
        v34 = 1;
        v30 = v19;
        v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<String>;
        v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<String>);
        v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>;
      }

      else if (v29 == 4)
      {
        type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityDisclosureValue>();
        v34 = 1;
        v30 = v15;
        v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityDisclosureValue>;
        v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityDisclosureValue> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityDisclosureValue>);
        v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityDisclosureValue> and conformance AnyAccessibilityValue.ConcreteBase<A>;
      }

      else
      {
        type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityToggleValue>();
        v34 = 1;
        v30 = v23;
        v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityToggleValue>;
        v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityToggleValue> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityToggleValue>);
        v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityToggleValue> and conformance AnyAccessibilityValue.ConcreteBase<A>;
      }
    }

    else if (v29)
    {
      if (v29 == 1)
      {
        type metadata accessor for AnyAccessibilityValue.ConcreteBase<Double>();
        v34 = 1;
        v30 = v11;
        v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<Double>;
        v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<Double> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<Double>);
        v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<Double> and conformance AnyAccessibilityValue.ConcreteBase<A>;
      }

      else
      {
        type metadata accessor for AnyAccessibilityValue.ConcreteBase<Bool>();
        v34 = 1;
        v30 = v21;
        v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<Bool>;
        v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<Bool> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<Bool>);
        v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<Bool> and conformance AnyAccessibilityValue.ConcreteBase<A>;
      }
    }

    else
    {
      type metadata accessor for AnyAccessibilityValue.ConcreteBase<Int>();
      v34 = 1;
      v30 = v17;
      v12 = type metadata accessor for AnyAccessibilityValue.ConcreteBase<Int>;
      v31 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<Int> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<Int>);
      v13 = &lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<Int> and conformance AnyAccessibilityValue.ConcreteBase<A>;
    }

    lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(v13, v12);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    outlined init with take of AnyTrackedValue(&v29, v32);
    v25 = v32[1];
    *a2 = v32[0];
    *(a2 + 16) = v25;
    *(a2 + 32) = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t lazy protocol witness table accessor for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys()
{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValue.Keys and conformance AnyAccessibilityValue.Keys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType()
{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType;
  if (!lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyAccessibilityValueType and conformance AnyAccessibilityValueType);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AnyAccessibilityValue.Keys()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

SwiftUI::AnyAccessibilityValueType_optional __swiftcall AnyAccessibilityValueType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue>()
{
  if (!lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue>)
  {
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    v0 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<AccessibilityEmptyValue> and conformance AnyAccessibilityValue.ConcreteBase<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AnyAccessibilityValue.ConcreteBase.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v34 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v12;
  v39 = v13;
  v40 = v14;
  v41 = v15;
  type metadata accessor for AnyAccessibilityValue.ConcreteBase.CodingKeys();
  swift_getWitnessTable();
  v37 = type metadata accessor for KeyedDecodingContainer();
  v32 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v17 = &v28 - v16;
  v33 = a2;
  v38 = a2;
  v39 = a3;
  v35 = a3;
  v40 = a4;
  v41 = a5;
  v18 = type metadata accessor for AnyAccessibilityValue.ConcreteBase();
  v30 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v29 = v20;
    v42 = v18;
    v23 = v32;
    v22 = v33;
    v24 = v34;
    v25 = v36;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v17, v37);
    v26 = v29;
    (*(v24 + 32))(v29, v25, v22);
    (*(v30 + 32))(v31, v26, v42);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t specialized ProtobufDecoder.decodeMessage<A>()@<X0>(char *a1@<X8>)
{
  result = ProtobufDecoder.beginMessage()();
  if (!v2)
  {
    DisplayList.InterpolatorAnimation.init(from:)(v1, a1);
    v5 = *(v1 + 40);
    if (*(v5 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
LABEL_5:
          v7 = v6 - 1;
          v8 = *(v5 + 8 * v7 + 32);
          *(v5 + 16) = v7;
          *(v1 + 40) = v5;
          *(v1 + 16) = v8;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}

unint64_t DisplayList.InterpolatorAnimation.init(from:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
LABEL_56:
    v7 = 0;
    v8 = 0;
    v34 = 0u;
    v9 = 1;
LABEL_57:
    *(v3 + 24) = 0;
    *a2 = v34;
    *(a2 + 4) = v8;
    a2[20] = v9 & 1;
    *(a2 + 3) = v7;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v37 = 0;
  v34 = 0u;
  v9 = 1;
  while (1)
  {
    result = *(v3 + 24);
    if (result)
    {
      v10 = *(v3 + 32);
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_58;
      }

      *(v3 + 24) = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (result <= 7)
    {
      goto LABEL_58;
    }

LABEL_11:
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 != 1)
    {
      v29 = result & 7;
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          v30 = *(v3 + 8) + result;
          if (v6 < v30)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v29 != 5)
          {
            goto LABEL_58;
          }

          v30 = *(v3 + 8) + 4;
          if (v6 < v30)
          {
            goto LABEL_58;
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
          }

          goto LABEL_4;
        }

        if (v29 != 1)
        {
          goto LABEL_58;
        }

        v30 = *(v3 + 8) + 8;
        if (v6 < v30)
        {
          goto LABEL_58;
        }
      }

      *(v3 + 8) = v30;
      goto LABEL_4;
    }

    if ((result & 7) != 2)
    {
      goto LABEL_58;
    }

    v11 = *(v3 + 40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    *&v11[8 * v13 + 32] = v6;
    *(v3 + 40) = v11;
    v14 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (v14 < 0)
    {
      goto LABEL_66;
    }

    v15 = *(v3 + 8) + v14;
    if (v6 < v15)
    {
LABEL_58:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }

    *(v3 + 16) = v15;
    v16 = specialized CodableAnimation.init(from:)(v3);
    v17 = *(v3 + 40);
    if (!*(v17 + 2))
    {
      goto LABEL_68;
    }

    v18 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = *(v17 + 2);
      if (!v19)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      v19 = *(v17 + 2);
      if (!v19)
      {
        goto LABEL_69;
      }
    }

    v20 = v19 - 1;
    v6 = *&v17[8 * v20 + 32];
    *(v17 + 2) = v20;

    *(v3 + 40) = v17;
    *(v3 + 16) = v6;
    v7 = v18;
    v37 = v18;
LABEL_4:
    v5 = *(v3 + 8);
    if (v5 >= v6)
    {
      goto LABEL_57;
    }
  }

  if ((result & 7) != 2)
  {
    goto LABEL_58;
  }

  v21 = *(v3 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  *&v21[8 * v23 + 32] = v6;
  *(v3 + 40) = v21;
  v24 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = *(v3 + 8) + v24;
    if (v6 < v25)
    {
      goto LABEL_58;
    }

    *(v3 + 16) = v25;
    StrongHash.init(from:)(v3, &v35);
    v26 = *(v3 + 40);
    if (!*(v26 + 16))
    {
      goto LABEL_67;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v27 = *(v26 + 16);
      if (!v27)
      {
        goto LABEL_55;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
      v26 = result;
      v27 = *(result + 16);
      if (!v27)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v9 = 0;
    v28 = v27 - 1;
    v6 = *(v26 + 8 * v28 + 32);
    *(v26 + 16) = v28;
    *(v3 + 40) = v26;
    *(v3 + 16) = v6;
    v34 = v35;
    v8 = v36;
    goto LABEL_4;
  }

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
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v31 = *(a2 + 2);
    if (v31)
    {
      goto LABEL_63;
    }

    __break(1u);
    a2 = *(v3 + 40);
  }

  while (!*(a2 + 2));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v31 = *(a2 + 2);
    if (v31)
    {
LABEL_63:
      v32 = v31 - 1;
      v33 = *&a2[8 * v32 + 32];
      *(a2 + 2) = v32;
      *(v3 + 40) = a2;
      *(v3 + 16) = v33;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v31 = *(result + 16);
    if (v31)
    {
      goto LABEL_63;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized CodableAnimation.init(from:)(char *a1)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  if (v3 >= v4)
  {
    *(a1 + 3) = 0;
    goto LABEL_4;
  }

  v5 = 0;
  do
  {
    v14 = *(a1 + 3);
    if (v14)
    {
      v15 = *(a1 + 4);
      if (v3 < v15)
      {
        goto LABEL_17;
      }

      if (v15 < v3)
      {
        goto LABEL_142;
      }

      *(a1 + 3) = 0;
    }

    v14 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_144;
    }

    if (v14 < 8)
    {
      goto LABEL_142;
    }

LABEL_17:
    v16 = v14 >> 3;
    if (v14 >> 3 <= 3)
    {
      switch(v16)
      {
        case 1uLL:
          if ((v14 & 7) != 2)
          {
            goto LABEL_142;
          }

          v44 = *(a1 + 5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
          }

          v46 = *(v44 + 2);
          v45 = *(v44 + 3);
          if (v46 >= v45 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v44);
          }

          *(v44 + 2) = v46 + 1;
          *&v44[8 * v46 + 32] = v4;
          *(a1 + 5) = v44;
          v20 = a1;
          v47 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_144;
          }

          if (v47 < 0)
          {
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
            do
            {
              __break(1u);
              v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
              v77 = *(v20 + 2);
              if (v77)
              {
                goto LABEL_156;
              }

              __break(1u);
              v20 = *(a1 + 5);
              if (!*(v20 + 2))
              {
                goto LABEL_174;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v77 = *(v20 + 2);
                if (v77)
                {
                  goto LABEL_156;
                }
              }

              else
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
                v77 = *(v20 + 2);
                if (v77)
                {
                  goto LABEL_156;
                }
              }

              __break(1u);
              v20 = *(a1 + 5);
              if (!*(v20 + 2))
              {
                goto LABEL_175;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v77 = *(v20 + 2);
                if (v77)
                {
                  goto LABEL_156;
                }
              }

              else
              {
                v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
                v77 = *(v20 + 2);
                if (v77)
                {
                  goto LABEL_156;
                }
              }

              __break(1u);
              v20 = *(a1 + 5);
            }

            while (!*(v20 + 2));
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v77 = *(v20 + 2);
              if (v77)
              {
LABEL_156:
                v78 = v77 - 1;
                v79 = *&v20[8 * v78 + 32];
                *(v20 + 2) = v78;

                *(a1 + 5) = v20;
                *(a1 + 2) = v79;
                return v5;
              }
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
              v20 = result;
              v77 = *(result + 16);
              if (v77)
              {
                goto LABEL_156;
              }
            }

            __break(1u);
            return result;
          }

          v48 = *(a1 + 1) + v47;
          if (v4 < v48)
          {
            goto LABEL_142;
          }

          *(a1 + 2) = v48;
          BezierAnimation.init(from:)(a1, &v82);
          v20 = *(a1 + 5);
          if (!*(v20 + 2))
          {
            goto LABEL_164;
          }

          v7 = 0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v49 = *(v20 + 2);
            if (!v49)
            {
              goto LABEL_168;
            }
          }

          else
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
            v49 = *(v20 + 2);
            if (!v49)
            {
              goto LABEL_168;
            }
          }

          v50 = v49 - 1;
          v4 = *&v20[8 * v50 + 32];
          *(v20 + 2) = v50;

          *(a1 + 5) = v20;
          *(a1 + 2) = v4;
          v81 = v84;
          v51 = v85;
          type metadata accessor for InternalAnimationBox<DefaultAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>, lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation);
          v5 = swift_allocObject();
          v52 = v83;
          *(v5 + 16) = v82;
          *(v5 + 32) = v52;
          *(v5 + 48) = v81;
          *(v5 + 64) = v51;
          goto LABEL_9;
        case 2uLL:
          if ((v14 & 7) != 2)
          {
            goto LABEL_142;
          }

          v59 = *(a1 + 5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
          }

          v61 = *(v59 + 2);
          v60 = *(v59 + 3);
          if (v61 >= v60 >> 1)
          {
            v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v59);
          }

          *(v59 + 2) = v61 + 1;
          *&v59[8 * v61 + 32] = v4;
          *(a1 + 5) = v59;
          v20 = a1;
          v62 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
LABEL_144:
            v5 = v1;

            return v5;
          }

          if (v62 < 0)
          {
            goto LABEL_160;
          }

          v63 = *(a1 + 1) + v62;
          if (v4 < v63)
          {
            goto LABEL_142;
          }

          *(a1 + 2) = v63;
          SpringAnimation.init(from:)(a1, &v82);
          v20 = *(a1 + 5);
          if (!*(v20 + 2))
          {
            goto LABEL_165;
          }

          v7 = 0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v64 = *(v20 + 2);
            if (!v64)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
            v64 = *(v20 + 2);
            if (!v64)
            {
LABEL_141:
              __break(1u);
LABEL_142:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();

              return v5;
            }
          }

          v65 = v64 - 1;
          v4 = *&v20[8 * v65 + 32];
          *(v20 + 2) = v65;

          *(a1 + 5) = v20;
          *(a1 + 2) = v4;
          type metadata accessor for InternalAnimationBox<DefaultAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<SpringAnimation>, lazy protocol witness table accessor for type SpringAnimation and conformance SpringAnimation);
          v5 = swift_allocObject();
          v66 = v83;
          *(v5 + 16) = v82;
          *(v5 + 32) = v66;
          goto LABEL_9;
        case 3uLL:
          if ((v14 & 7) != 2)
          {
            goto LABEL_142;
          }

          v29 = *(a1 + 5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
          }

          v31 = *(v29 + 2);
          v30 = *(v29 + 3);
          if (v31 >= v30 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
          }

          *(v29 + 2) = v31 + 1;
          *&v29[8 * v31 + 32] = v4;
          *(a1 + 5) = v29;
          v20 = a1;
          v32 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_144;
          }

          if (v32 < 0)
          {
            goto LABEL_161;
          }

          v33 = *(a1 + 1) + v32;
          if (v4 < v33)
          {
            goto LABEL_142;
          }

          *(a1 + 2) = v33;
          FluidSpringAnimation.init(from:)(a1, &v82);
          v20 = *(a1 + 5);
          if (!*(v20 + 2))
          {
            goto LABEL_167;
          }

          v7 = 0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v34 = *(v20 + 2);
            if (!v34)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
            v34 = *(v20 + 2);
            if (!v34)
            {
              goto LABEL_170;
            }
          }

          v35 = v34 - 1;
          v4 = *&v20[8 * v35 + 32];
          *(v20 + 2) = v35;

          *(a1 + 5) = v20;
          *(a1 + 2) = v4;
          v80 = v82;
          v36 = v83;
          type metadata accessor for InternalAnimationBox<DefaultAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>, lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation);
          v5 = swift_allocObject();
          *(v5 + 16) = v80;
          *(v5 + 32) = v36;
          goto LABEL_9;
      }

LABEL_76:
      v53 = v14 & 7;
      if (v53 > 1)
      {
        if (v53 == 2)
        {
          v20 = a1;
          v70 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_144;
          }

          if (v70 < 0)
          {
            goto LABEL_171;
          }

          v54 = *(a1 + 1) + v70;
          if (v4 < v54)
          {
            goto LABEL_142;
          }
        }

        else
        {
          if (v53 != 5)
          {
            goto LABEL_142;
          }

          v54 = *(a1 + 1) + 4;
          if (v4 < v54)
          {
            goto LABEL_142;
          }
        }

        goto LABEL_116;
      }

      if ((v14 & 7) != 0)
      {
        if (v53 != 1)
        {
          goto LABEL_142;
        }

        v54 = *(a1 + 1) + 8;
        if (v4 < v54)
        {
          goto LABEL_142;
        }

LABEL_116:
        *(a1 + 1) = v54;
        goto LABEL_10;
      }

      ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_144;
      }

      goto LABEL_10;
    }

    if (v14 >> 3 > 5)
    {
      if (v16 == 6)
      {
        if (v5)
        {
          v57 = v14 & 7;
          if (v57 == 5)
          {
            v74 = *(a1 + 1);
            if (v4 < (v74 + 1))
            {
              goto LABEL_142;
            }

            v7 = v1;
            v75 = *v74;
            *(a1 + 1) = v74 + 1;
            v73 = v75;
          }

          else
          {
            if (v57 == 2)
            {
              v20 = a1;
              v72 = ProtobufDecoder.decodeVarint()();
              if (v1)
              {
                goto LABEL_144;
              }

              if (v72 < 0)
              {
                goto LABEL_173;
              }

              v58 = *(a1 + 1);
              if (v4 < v58 + v72)
              {
                goto LABEL_142;
              }

              *(a1 + 3) = 49;
              *(a1 + 4) = v58 + v72;
            }

            else
            {
              if (v57 != 1)
              {
                goto LABEL_142;
              }

              v58 = *(a1 + 1);
            }

            if (v4 < (v58 + 1))
            {
              goto LABEL_142;
            }

            v7 = v1;
            v73 = *v58;
            *(a1 + 1) = v58 + 1;
          }

          *&v82 = v73;
          v10 = *(*v5 + 144);
          v11 = lazy protocol witness table accessor for type SpeedAnimation and conformance SpeedAnimation();
          v12 = &type metadata for SpeedAnimation;
LABEL_8:
          v13 = v10(&v82, v12, v11);

          v5 = v13;
LABEL_9:
          v1 = v7;
          goto LABEL_10;
        }

        goto LABEL_10;
      }

      if (v16 == 7)
      {
        if ((v14 & 7) != 2)
        {
          goto LABEL_142;
        }

        v37 = *(a1 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
        }

        v39 = *(v37 + 2);
        v38 = *(v37 + 3);
        if (v39 >= v38 >> 1)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
        }

        *(v37 + 2) = v39 + 1;
        *&v37[8 * v39 + 32] = v4;
        *(a1 + 5) = v37;
        v20 = a1;
        v40 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_144;
        }

        if (v40 < 0)
        {
          goto LABEL_159;
        }

        v41 = *(a1 + 1) + v40;
        if (v4 < v41)
        {
          goto LABEL_142;
        }

        *(a1 + 2) = v41;
        if (!*(v37 + 2))
        {
          goto LABEL_162;
        }

        v20 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v42 = *(v37 + 2);
          if (!v42)
          {
            goto LABEL_163;
          }
        }

        else
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew()(v37);
          v42 = *(v37 + 2);
          if (!v42)
          {
            goto LABEL_163;
          }
        }

        v43 = v42 - 1;
        v4 = *&v37[8 * v43 + 32];
        *(v37 + 2) = v43;

        *(a1 + 5) = v37;
        *(a1 + 2) = v4;
        type metadata accessor for InternalAnimationBox<DefaultAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<DefaultAnimation>, lazy protocol witness table accessor for type DefaultAnimation and conformance DefaultAnimation);
        v5 = swift_allocObject();
        goto LABEL_10;
      }

      goto LABEL_76;
    }

    if (v16 == 4)
    {
      if (v5)
      {
        v55 = v14 & 7;
        if (v55 == 5)
        {
          v6 = *(a1 + 1);
          if (v4 < (v6 + 1))
          {
            goto LABEL_142;
          }

          v7 = v1;
          v8 = *v6;
          *(a1 + 1) = v6 + 1;
          v9 = v8;
        }

        else
        {
          if (v55 == 2)
          {
            v20 = a1;
            v71 = ProtobufDecoder.decodeVarint()();
            if (v1)
            {
              goto LABEL_144;
            }

            if (v71 < 0)
            {
              goto LABEL_172;
            }

            v56 = *(a1 + 1);
            if (v4 < v56 + v71)
            {
              goto LABEL_142;
            }

            *(a1 + 3) = 33;
            *(a1 + 4) = v56 + v71;
          }

          else
          {
            if (v55 != 1)
            {
              goto LABEL_142;
            }

            v56 = *(a1 + 1);
          }

          if (v4 < (v56 + 1))
          {
            goto LABEL_142;
          }

          v7 = v1;
          v9 = *v56;
          *(a1 + 1) = v56 + 1;
        }

        *&v82 = v9;
        v10 = *(*v5 + 144);
        v11 = lazy protocol witness table accessor for type DelayAnimation and conformance DelayAnimation();
        v12 = &type metadata for DelayAnimation;
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    if (v16 != 5)
    {
      goto LABEL_76;
    }

    if ((v14 & 7) != 2)
    {
      goto LABEL_142;
    }

    v17 = *(a1 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    *&v17[8 * v19 + 32] = v4;
    *(a1 + 5) = v17;
    v20 = a1;
    v21 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_144;
    }

    if (v21 < 0)
    {
      goto LABEL_158;
    }

    v22 = *(a1 + 1) + v21;
    if (v4 < v22)
    {
      goto LABEL_142;
    }

    *(a1 + 2) = v22;
    v23 = specialized static Animation.decodeRepeatMessage(from:)(a1);
    v25 = *(a1 + 5);
    if (!*(v25 + 2))
    {
      goto LABEL_166;
    }

    v20 = v23;
    v26 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v27 = *(v25 + 2);
      if (!v27)
      {
        goto LABEL_169;
      }
    }

    else
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
      v27 = *(v25 + 2);
      if (!v27)
      {
        goto LABEL_169;
      }
    }

    v28 = v27 - 1;
    v4 = *&v25[8 * v28 + 32];
    *(v25 + 2) = v28;
    *(a1 + 5) = v25;
    *(a1 + 2) = v4;
    if (v26)
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      *&v82 = 0;
      BYTE8(v82) = 1;
    }

    else
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      *&v82 = v20;
      BYTE8(v82) = 0;
    }

    BYTE9(v82) = HIBYTE(v26) & 1;
    v67 = *(*v5 + 144);
    v68 = lazy protocol witness table accessor for type RepeatAnimation and conformance RepeatAnimation();
    v69 = v67(&v82, &type metadata for RepeatAnimation, v68);

    v5 = v69;
LABEL_10:
    v3 = *(a1 + 1);
  }

  while (v3 < v4);
  *(a1 + 3) = 0;
  if (v5)
  {
    return v5;
  }

LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  v5 = swift_allocError();
  swift_willThrow();
  return v5;
}

unint64_t FluidSpringAnimation.init(from:)@<X0>(unint64_t result@<X0>, double *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0.0;
  if (v5 >= v6)
  {
    v8 = 0.0;
    v9 = 0.0;
LABEL_66:
    v3[3] = 0;
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v9;
    return result;
  }

  v8 = 0.0;
  v9 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_64;
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
LABEL_64:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v11 = result >> 3;
    v12 = result & 7;
    if (result >> 3 == 3)
    {
      if (v12 == 5)
      {
        v18 = v3[1];
        v5 = (v18 + 1);
        if (v6 < (v18 + 1))
        {
          goto LABEL_64;
        }

        v19 = *v18;
        v3[1] = v5;
        v9 = v19;
      }

      else
      {
        if (v12 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          v15 = v3[1];
          if (v6 < v15 + result)
          {
            goto LABEL_64;
          }

          v3[3] = 25;
          v3[4] = v15 + result;
        }

        else
        {
          if (v12 != 1)
          {
            goto LABEL_64;
          }

          v15 = v3[1];
        }

        v5 = (v15 + 1);
        if (v6 < (v15 + 1))
        {
          goto LABEL_64;
        }

        v9 = *v15;
        v3[1] = v5;
      }

      goto LABEL_4;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v12 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          v5 = v3[1] + result;
          if (v6 < v5)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_64;
          }

          v5 = v3[1] + 4;
          if (v6 < v5)
          {
            goto LABEL_64;
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

        if (v12 != 1)
        {
          goto LABEL_64;
        }

        v5 = v3[1] + 8;
        if (v6 < v5)
        {
          goto LABEL_64;
        }
      }

      v3[1] = v5;
      goto LABEL_4;
    }

    if (v12 == 5)
    {
      v20 = v3[1];
      v5 = (v20 + 1);
      if (v6 < (v20 + 1))
      {
        goto LABEL_64;
      }

      v21 = *v20;
      v3[1] = v5;
      v7 = v21;
    }

    else
    {
      if (v12 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v13 = v3[1];
        if (v6 < v13 + result)
        {
          goto LABEL_64;
        }

        v3[3] = 9;
        v3[4] = v13 + result;
      }

      else
      {
        if (v12 != 1)
        {
          goto LABEL_64;
        }

        v13 = v3[1];
      }

      v5 = (v13 + 1);
      if (v6 < (v13 + 1))
      {
        goto LABEL_64;
      }

      v7 = *v13;
      v3[1] = v5;
    }

LABEL_4:
    if (v5 >= v6)
    {
      goto LABEL_66;
    }
  }

  if (v12 == 5)
  {
    v16 = v3[1];
    v5 = (v16 + 1);
    if (v6 < (v16 + 1))
    {
      goto LABEL_64;
    }

    v17 = *v16;
    v3[1] = v5;
    v8 = v17;
    goto LABEL_4;
  }

  if (v12 != 2)
  {
    if (v12 != 1)
    {
      goto LABEL_64;
    }

    v14 = v3[1];
LABEL_39:
    v5 = (v14 + 1);
    if (v6 < (v14 + 1))
    {
      goto LABEL_64;
    }

    v8 = *v14;
    v3[1] = v5;
    goto LABEL_4;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v14 = v3[1];
    if (v6 < v14 + result)
    {
      goto LABEL_64;
    }

    v3[3] = 17;
    v3[4] = v14 + result;
    goto LABEL_39;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

void type metadata accessor for InternalAnimationBox<DefaultAnimation>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for InternalAnimationBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for AppearanceAnimationView()
{
  result = swift_checkMetadataState();
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

uint64_t type metadata completion function for _TrimmedShape()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _TrimmedShape<A>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppearanceAnimationView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v13 = v10 + v9;
  v14 = v10 + 7;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + ((v13 + (v12 & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v16 = (a2 - v11 + 255) >> 8;
  if (v15 <= 3)
  {
    v17 = v16 + 1;
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

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *&a1[v15];
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = a1[v15]) == 0)
  {
LABEL_30:
    if (v5 == v11)
    {
      return (*(v4 + 48))();
    }

    v24 = &a1[v12] & ~v9;
    if (v8 == v11)
    {
      return (*(v7 + 48))(v24, v8, v6);
    }

    v25 = *((v14 + ((v13 + v24) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }

  v22 = (v20 - 1) << (8 * v15);
  if (v15 <= 3)
  {
    v23 = *a1;
  }

  else
  {
    v22 = 0;
    v23 = *a1;
  }

  return v11 + (v23 | v22) + 1;
}

uint64_t ClosedRange<>.progress(at:countdown:)()
{
  Date.timeIntervalSinceReferenceDate.getter();
  v1 = v0;
  type metadata accessor for ClosedRange<Date>();
  result = Date.timeIntervalSinceReferenceDate.getter();
  if (v1 <= v3)
  {
    return Date.timeIntervalSinceReferenceDate.getter();
  }

  __break(1u);
  return result;
}

void type metadata accessor for ClosedRange<Date>()
{
  if (!lazy cache variable for type metadata for ClosedRange<Date>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for ClosedRange();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ClosedRange<Date>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_2(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4DateVACSLAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4DateVACSLAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for StrokeShapeView(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[4];
  v9 = *(a3[3] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a3[2] - 8) + 64);
  v15 = *(v9 + 80);
  if (v13 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 40;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = *(*(a3[3] - 8) + 64) + v18 + (v17 & ~v15) + 2;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v20 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + (v19 & ~v18) + 16;
  v21 = a2 - v16;
  v22 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = v21 + 1;
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

  if (v25 <= 1)
  {
    if (!v25)
    {
      goto LABEL_33;
    }

    v26 = *(a1 + v20);
    if (!v26)
    {
      goto LABEL_33;
    }

LABEL_30:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v16 + (v29 | v28) + 1;
  }

  if (v25 == 2)
  {
    v26 = *(a1 + v20);
    if (v26)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v26 = *(a1 + v20);
    if (v26)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v11 < v13)
  {
    v30 = *(v12 + 48);
    v31 = (a1 + v19) & ~v18;
    v32 = *(v12 + 84);
    v33 = a3[4];

    return v30(v31, v32, v33);
  }

  if (v7 < v10)
  {
    v30 = *(v9 + 48);
    v31 = (a1 + v17) & ~v15;
    v32 = *(v9 + 84);
    v33 = a3[3];

    return v30(v31, v32, v33);
  }

  if (v6 < 0x7FFFFFFF)
  {
    v35 = *(((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v35 >= 0xFFFFFFFF)
    {
      LODWORD(v35) = -1;
    }

    return (v35 + 1);
  }

  else
  {
    v34 = *(v5 + 48);

    return v34();
  }
}

void *static CombiningTransition.properties.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  (*(a2 + 32))(&v9 + 1);
  v7 = BYTE1(v9);
  result = (*(a3 + 32))(&v9, a1, a3);
  *a4 = (v7 | v9) & 1;
  return result;
}

uint64_t sub_18D388F0C()
{
  type metadata accessor for CombiningTransition();
  type metadata accessor for PlaceholderContentView();
  type metadata accessor for ApplyTransitionModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ApplyTransitionModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<ScaleTransition>, _ScaleEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<ScaleTransition>, _ScaleEffect>)
  {
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(255, &lazy cache variable for type metadata for PlaceholderContentView<ScaleTransition>, &type metadata for ScaleTransition, type metadata accessor for PlaceholderContentView);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<ScaleTransition>, _ScaleEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<ScaleTransition>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ScaleTransition>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ScaleTransition>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<ScaleTransition>, _ScaleEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<ScaleTransition>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void storeEnumTagSinglePayload for StrokeShapeView(_DWORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v41 = *(a4[2] - 8);
  v5 = *(v41 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v41 + 84);
  }

  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v9 + 80);
  if (v13 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v18 = *(*(v7 - 8) + 64) + ((v17 + v15) & ~v15) + 2;
  v19 = *(v12 + 80) & 0xF8 | 7;
  v20 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = ((v18 + v19) & ~v19) + v20;
  if (v16 >= a3)
  {
    v24 = 0;
    v25 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_22;
    }

LABEL_27:
    if (v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v21)
    {
      v27 = ~v16 + a2;
      v28 = a1;
      bzero(a1, ((v18 + v19) & ~v19) + v20);
      a1 = v28;
      *v28 = v27;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v21) = v26;
      }

      else
      {
        *(a1 + v21) = v26;
      }
    }

    else if (v24)
    {
      *(a1 + v21) = v26;
    }

    return;
  }

  v22 = a3 - v16;
  if (v21)
  {
    v23 = 2;
  }

  else
  {
    v23 = v22 + 1;
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

  if (v23 < 2)
  {
    v24 = 0;
  }

  v25 = a2 - v16;
  if (a2 > v16)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v21) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v24)
  {
    goto LABEL_37;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v11 >= v13)
  {
    if (v11 >= a2)
    {
      if (v6 >= v10)
      {
        if (v6 >= a2)
        {
          if (v5 < 0x7FFFFFFF)
          {
            v40 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v40 + 8) = 0u;
              *(v40 + 24) = 0u;
              *v40 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v40 + 24) = a2 - 1;
            }
          }

          else
          {
            v39 = *(v41 + 56);

            v39();
          }
        }

        else if (((v14 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
        {
          v29 = ~v6 + a2;
          v30 = a1;
          v31 = v17;
          goto LABEL_42;
        }
      }

      else
      {
        v37 = *(v9 + 56);
        v38 = (a1 + v17 + v15) & ~v15;

        v37(v38);
      }
    }

    else
    {
      if (v18 <= 3)
      {
        v32 = ~(-1 << (8 * v18));
      }

      else
      {
        v32 = -1;
      }

      if (v18)
      {
        v33 = v32 & (~v11 + a2);
        if (v18 <= 3)
        {
          v34 = v18;
        }

        else
        {
          v34 = 4;
        }

        v35 = a1;
        bzero(a1, v18);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            *v35 = v33;
            *(v35 + 2) = BYTE2(v33);
          }

          else
          {
            *v35 = v33;
          }
        }

        else if (v34 == 1)
        {
          *v35 = v33;
        }

        else
        {
          *v35 = v33;
        }
      }
    }
  }

  else
  {
    a1 = ((a1 + v18 + v19) & ~v19);
    if (v13 >= a2)
    {
      v36 = *(v12 + 56);

      v36(a1);
    }

    else if (v20)
    {
      v29 = ~v13 + a2;
      v30 = a1;
      v31 = v20;
LABEL_42:
      bzero(a1, v31);
      *v30 = v29;
    }
  }
}

double AccessibilityAttachment.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v7);
  v2 = v7[7];
  *(a1 + 224) = v7[6];
  *(a1 + 240) = v2;
  *(a1 + 256) = v7[8];
  *(a1 + 272) = v8;
  v3 = v7[3];
  *(a1 + 160) = v7[2];
  *(a1 + 176) = v3;
  v4 = v7[5];
  *(a1 + 192) = v7[4];
  *(a1 + 208) = v4;
  result = *v7;
  v6 = v7[1];
  *(a1 + 128) = v7[0];
  *(a1 + 144) = v6;
  *(a1 + 280) = MEMORY[0x1E69E7CC8];
  *(a1 + 288) = 0;
  return result;
}

BOOL AccessibilityProperties.isEmpty.getter()
{
  if (*(*(v0 + 280) + 16))
  {
    return 0;
  }

  if (*(v0 + 8))
  {
    return 0;
  }

  if (*(v0 + 24))
  {
    return 0;
  }

  if (*(v0 + 56) != 1)
  {
    return 0;
  }

  outlined init with copy of AccessibilityValueStorage?(v0 + 64, &v7, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
  v1 = *(&v8 + 1);
  _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(&v7, &lazy cache variable for type metadata for AccessibilityValueStorage?, &type metadata for AccessibilityValueStorage, type metadata accessor for HitTestableEvent?);
  if (v1 != 1 || *(v0 + 120) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 240);
  v13 = *(v0 + 224);
  v14 = v2;
  v15 = *(v0 + 256);
  v16 = *(v0 + 272);
  v3 = *(v0 + 176);
  v9 = *(v0 + 160);
  v10 = v3;
  v4 = *(v0 + 208);
  v11 = *(v0 + 192);
  v12 = v4;
  v5 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = v5;
  return _sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(&v7) != 0;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluisAC05HintsG0V_Tt0g5(uint64_t a1)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(a1, static AccessibilityProperties.HintsKey.defaultValue))
  {

    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.HintsKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<[Text]>();
    v4[3] = v3;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = a1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.HintsKey);
  }
}

void (*AccessibilityProperties.activationPointStorage.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015ActivationPointG0V_Tt0g5(v3);
  return AccessibilityProperties.activationPointStorage.modify;
}

double _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015ActivationPointG0V_Tt0g5@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ActivationPointKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v15);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, &type metadata for AccessibilityActivationPointStorage, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v13, v8, v8, v6, v7);
    v9 = v14;
    v11 = v13[1];
    v12 = v13[0];
    __swift_destroy_boxed_opaque_existential_1(v15);
    result = *&v12;
    *a1 = v12;
    *(a1 + 16) = v11;
    *(a1 + 32) = v9;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void AccessibilityProperties.activationPointStorage.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[3];
    if (v3)
    {
      v4 = v2[4];
      v5 = v2[2];
      v13 = *v2;
      type metadata accessor for AccessibilityPropertiesEntry<AccessibilityActivationPointStorage?>();
      v16 = v6;
      v17 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v7 = swift_allocObject();
      v15[0] = v7;
      *(v7 + 16) = v13;
      *(v7 + 32) = v5;
      *(v7 + 40) = v3;
      *(v7 + 48) = v4;

      specialized Dictionary.subscript.setter(v15, &type metadata for AccessibilityProperties.ActivationPointKey);
    }

    else
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ActivationPointKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), (v2 + 5));
      outlined destroy of AnyAccessibilityPropertiesEntry?((v2 + 5), type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }

    outlined consume of AccessibilityActivationPointStorage?(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    v8 = v2[3];
    if (v8)
    {
      v9 = v2[4];
      v10 = v2[2];
      v14 = *v2;
      type metadata accessor for AccessibilityPropertiesEntry<AccessibilityActivationPointStorage?>();
      v16 = v11;
      v17 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v12 = swift_allocObject();
      v15[0] = v12;
      *(v12 + 16) = v14;
      *(v12 + 32) = v10;
      *(v12 + 40) = v8;
      *(v12 + 48) = v9;
      specialized Dictionary.subscript.setter(v15, &type metadata for AccessibilityProperties.ActivationPointKey);
    }

    else
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ActivationPointKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), (v2 + 5));
      outlined destroy of AnyAccessibilityPropertiesEntry?((v2 + 5), type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }
  }

  free(v2);
}

void (*AccessibilityProperties.customAttributes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC016CustomAttributesG0V_Tt0g5((v3 + 40));
  return AccessibilityProperties.customAttributes.modify;
}

void AccessibilityProperties.customAttributes.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>();
      v7 = v4;
      v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v6[0] = v3;

      specialized Dictionary.subscript.setter(v6, &type metadata for AccessibilityProperties.CustomAttributesKey);
    }

    else
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.CustomAttributesKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
      outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }
  }

  else if (v3)
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>();
    v7 = v5;
    v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v6[0] = v3;
    specialized Dictionary.subscript.setter(v6, &type metadata for AccessibilityProperties.CustomAttributesKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.CustomAttributesKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  free(v2);
}

void _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC016CustomAttributesG0V_Tt0g5(void *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.CustomAttributesKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes?, &type metadata for AccessibilityCustomAttributes, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(&v10, v8, v8, v6, v7);
    v9 = v10;
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
}

uint64_t storeEnumTagSinglePayload for AccessibilityDataSeriesConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double _s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOi0_(uint64_t a1)
{
  *(a1 + 304) = 0;
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
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

uint64_t getEnumTagSinglePayload for AccessibilityDataSeriesConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t storeEnumTagSinglePayload for AccessibilityScrollableContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 63) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 71) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 71) = 0;
    }

    if (a2)
    {
      *(result + 70) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityScrollableContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 71))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 70);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static AccessibilityPropertiesKey.defaultValue.getter in conformance AccessibilityProperties.LinkDestinationKey@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void (*AccessibilityProperties.customContentList.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 40) = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC017CustomContentListG0V_Tt0g5();
  return AccessibilityProperties.customContentList.modify;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC017CustomContentListG0V_Tt0g5()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.CustomContentListKey);
  if ((v3 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for [AccessibilityCustomContentEntry], &type metadata for AccessibilityCustomContentEntry, MEMORY[0x1E69E62F8]);
  (*(v5 + 16))(&v9, v6, v6, v4, v5);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

void AccessibilityProperties.customContentList.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI31AccessibilityCustomContentEntryV_Tt1g5(v4, MEMORY[0x1E69E7CC0]))
    {

      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.CustomContentListKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
      outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }

    else
    {
      type metadata accessor for AccessibilityPropertiesEntry<[AccessibilityCustomContentEntry]>();
      v8 = v5;
      v9 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v7[0] = v3;
      specialized Dictionary.subscript.setter(v7, &type metadata for AccessibilityProperties.CustomContentListKey);
    }
  }

  else if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI31AccessibilityCustomContentEntryV_Tt1g5(*(*a1 + 40), MEMORY[0x1E69E7CC0]))
  {

    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.CustomContentListKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<[AccessibilityCustomContentEntry]>();
    v8 = v6;
    v9 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v7[0] = v3;
    specialized Dictionary.subscript.setter(v7, &type metadata for AccessibilityProperties.CustomContentListKey);
  }

  free(v2);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI31AccessibilityCustomContentEntryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v42 = v2;
  v43 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v21 = v5;
    outlined init with copy of AccessibilityCustomContentEntry(v5, &v29);
    outlined init with copy of AccessibilityCustomContentEntry(v6, &v24);
    v34 = v29;
    v35 = v30;
    v36 = v31;
    v37 = v32;
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v41 = v27;
    v7 = v29;
    v8 = v30;
    v9 = v24;
    v10 = v25;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if ((v25 & 0x8000000000000000) != 0 || v29 != v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_37;
      }

      outlined init with copy of AccessibilityCustomContentKey(&v34, v23);
      outlined init with copy of AccessibilityCustomContentKey(&v38, v23);
      goto LABEL_20;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    v11 = *(&v39 + 1);
    v12 = *(&v35 + 1);
    if ((v30 & 1) == 0)
    {
      if (v25)
      {
        goto LABEL_37;
      }

      if (v29 == v24)
      {
        outlined init with copy of AccessibilityCustomContentKey(&v34, v23);
        outlined init with copy of AccessibilityCustomContentKey(&v38, v23);

        outlined copy of Text.Storage(v7, *(&v7 + 1), 0);

        outlined copy of Text.Storage(v7, *(&v7 + 1), 0);
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined init with copy of AccessibilityCustomContentKey(&v34, v23);
        outlined init with copy of AccessibilityCustomContentKey(&v38, v23);

        outlined copy of Text.Storage(v9, *(&v9 + 1), 0);

        outlined copy of Text.Storage(v7, *(&v7 + 1), 0);
        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      goto LABEL_19;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_37;
    }

    v20 = *(*v29 + 96);
    outlined init with copy of AccessibilityCustomContentKey(&v34, v23);
    outlined init with copy of AccessibilityCustomContentKey(&v38, v23);

    outlined copy of Text.Storage(v9, *(&v9 + 1), 1);

    outlined copy of Text.Storage(v7, *(&v7 + 1), 1);
    if ((v20(v9) & 1) == 0)
    {
      break;
    }

LABEL_19:
    v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v12, v11);
    outlined consume of Text.Storage(v9, *(&v9 + 1), v10 & 1);

    outlined consume of Text.Storage(v7, *(&v7 + 1), v8 & 1);

    if ((v14 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_20:
    v15 = *(&v37 + 1);
    v16 = *(&v41 + 1);
    if (v37)
    {
      if ((v41 & 1) == 0 || ((*(*v36 + 96))(v40) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if ((v41 & 1) != 0 || (v36 != v40 || *(&v36 + 1) != *(&v40 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_36;
    }

    v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v15, v16);
    outlined destroy of AccessibilityCustomContentKey(&v38);
    outlined destroy of AccessibilityCustomContentKey(&v34);
    if ((v17 & 1) == 0)
    {
      goto LABEL_37;
    }

    v18 = specialized static AccessibilityCustomContentEntry.Value.== infix(_:_:)(v33, v28);
    outlined destroy of AccessibilityCustomContentEntry(&v24);
    outlined destroy of AccessibilityCustomContentEntry(&v29);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      return 1;
    }

    v6 += 120;
    v5 = v21 + 120;
  }

  outlined consume of Text.Storage(v9, *(&v9 + 1), v8 & 1);

  outlined consume of Text.Storage(v7, *(&v7 + 1), v8 & 1);

LABEL_36:
  outlined destroy of AccessibilityCustomContentKey(&v38);
  outlined destroy of AccessibilityCustomContentKey(&v34);
LABEL_37:
  outlined destroy of AccessibilityCustomContentEntry(&v24);
  outlined destroy of AccessibilityCustomContentEntry(&v29);
  return 0;
}

uint64_t storeEnumTagSinglePayload for AccessibilityCustomAttributes.Value.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityVisibility and conformance AccessibilityVisibility()
{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility;
  if (!lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityVisibility and conformance AccessibilityVisibility);
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityNullableOptionSet()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static AccessibilityAttachment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 288);
  if (v2 && v2 != *(a2 + 288))
  {
    return 0;
  }

  else
  {
    return specialized static AccessibilityProperties.== infix(_:_:)(a1, a2);
  }
}

uint64_t static AccessibilityLabelStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(*a1, *a2) & (v2 == v3);
}

uint64_t AccessibilityImageLabel.SystemSymbolTextStorage.isEqual(to:)()
{
  type metadata accessor for AccessibilityImageLabel.SystemSymbolTextStorage();
  v1 = swift_dynamicCastClass();
  if (v1 && (v3 = *(v1 + 16), v2 = *(v1 + 24), v5 = *(v0 + 16), v4 = *(v0 + 24), , v2))
  {
    if (v3 == v5 && v2 == v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t assignWithCopy for AccessibilityAttachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v8;
        *(a1 + 64) = v7;
        goto LABEL_18;
      }

      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
    }

    *(a1 + 104) = *(a2 + 104);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
    v10 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 64);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 64));
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 96);
        v15 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v15;
        *(a1 + 96) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v16;
      *(a1 + 80) = v17;
    }

    *(a1 + 104) = *(a2 + 104);
  }

LABEL_18:
  v18 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v18;
  v19 = *(a2 + 240);
  if (*(a1 + 240) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v20;
      v21 = *(a2 + 160);
      v22 = *(a2 + 176);
      v23 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v23;
      *(a1 + 160) = v21;
      *(a1 + 176) = v22;
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      v26 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v25;
      *(a1 + 256) = v26;
      *(a1 + 224) = v24;
    }

    else
    {
      v34 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v34;
      v35 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v35;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 154) = *(a2 + 154);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v36 = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = v36;
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    v27 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v27;
    v28 = *(a2 + 208);
    v30 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v28;
    *(a1 + 160) = v30;
    *(a1 + 176) = v29;
    v32 = *(a2 + 240);
    v31 = *(a2 + 256);
    v33 = *(a2 + 224);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v32;
    *(a1 + 256) = v31;
    *(a1 + 224) = v33;
  }

  else
  {
    v37 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v37;
    v38 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v38;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);

    v39 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v39;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  v40 = *(a1 + 288);
  v41 = *(a2 + 288);
  *(a1 + 288) = v41;
  v42 = v41;

  return a1;
}

uint64_t closure #1 in Binding<A>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Binding();
  Binding.readValue()(v8, v7);
  v9 = dispatch thunk of Collection.subscript.read();
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v11, AssociatedTypeWitness);
  v9(v14, 0);
  return (*(v5 + 8))(v7, a2);
}

uint64_t partial apply for closure #1 in Binding<A>.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  type metadata accessor for Binding();
  swift_getAssociatedTypeWitness();
  v4 = *(v1 + 16);

  return closure #1 in Binding<A>.subscript.getter(v4, v3, a1);
}

void type metadata accessor for TransitionBox<BlurAndFadeTransition>()
{
  if (!lazy cache variable for type metadata for TransitionBox<BlurAndFadeTransition>)
  {
    lazy protocol witness table accessor for type BlurAndFadeTransition and conformance BlurAndFadeTransition();
    v0 = type metadata accessor for TransitionBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TransitionBox<BlurAndFadeTransition>);
    }
  }
}

uint64_t static AnyTransition.blur(radius:)(double a1)
{
  type metadata accessor for TransitionBox<BlurAndFadeTransition>();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static _ContentTransitionModifier._makeView(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[3];
  v35 = a2[2];
  v36 = v5;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v6 = a2[1];
  v34[0] = *a2;
  v34[1] = v6;
  v7 = v35;
  v8 = v6;
  swift_beginAccess();
  *&v25[0] = __PAIR64__(*(v8 + 16), v4);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(v34, &v27);
  lazy protocol witness table accessor for type _ContentTransitionModifier.ChildEnvironment and conformance _ContentTransitionModifier.ChildEnvironment();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v10 = MEMORY[0x1E69E7CC0];
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<CachedEnvironment>();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 256;
  *(v12 + 88) = v11;

  v22 = *a2;
  *&v23 = v12;
  *(&v23 + 1) = *(&v8 + 1);
  LODWORD(v24[0]) = v7 | 0x20;
  *(&v24[2] + 4) = *(a2 + 68);
  *(&v24[1] + 4) = *(a2 + 52);
  *(v24 + 4) = *(a2 + 36);
  v18 = v24[0];
  v19 = v24[1];
  v20 = v24[2];
  v21 = v24[3];
  v16 = v22;
  v17 = v23;
  v13 = outlined init with copy of _ViewInputs(&v22, &v27);
  a3(v13, &v16);
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v26 = v21;
  v25[0] = v16;
  v25[1] = v17;
  outlined destroy of _ViewInputs(v25);
  v27 = *a2;
  v28 = v12;
  v29 = *(&v8 + 1);
  v30 = v7 | 0x20;
  v31 = *(a2 + 36);
  v32 = *(a2 + 52);
  v33 = *(a2 + 68);
  return outlined destroy of _ViewInputs(&v27);
}

unint64_t lazy protocol witness table accessor for type _ContentTransitionModifier.ChildEnvironment and conformance _ContentTransitionModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type _ContentTransitionModifier.ChildEnvironment and conformance _ContentTransitionModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type _ContentTransitionModifier.ChildEnvironment and conformance _ContentTransitionModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentTransitionModifier.ChildEnvironment and conformance _ContentTransitionModifier.ChildEnvironment);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.locale : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, a2);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (v5)
    {
      v6 = *(*v5 + 248);
      v7 = v5;
      v8 = type metadata accessor for Locale();
      v9 = *(*(v8 - 8) + 16);
      v10 = v7 + v6;
      v11 = v8;
      v12 = a2;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Locale();
      v10 = __swift_project_value_buffer(v13, static LocaleKey.defaultValue);
      v9 = *(*(v13 - 8) + 16);
      v12 = a2;
      v11 = v13;
    }

    return v9(v12, v10, v11);
  }
}

uint64_t static ContentTransition.interpolate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for interpolate != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static ContentTransition.interpolate;
  v3 = word_1ED5280EC;
  v4 = dword_1ED5280E8;
  v5 = dword_1ED5280E8 | (word_1ED5280EC << 32);
  v6 = byte_1ED5280EE;
  *a1 = static ContentTransition.interpolate;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = HIBYTE(word_1ED5280EC);
  *(a1 + 13) = HIBYTE(word_1ED5280EC);
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

uint64_t static ContentTransition.opacity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for opacity != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static ContentTransition.opacity;
  v3 = word_1EAB10A0C;
  v4 = dword_1EAB10A08;
  v5 = dword_1EAB10A08 | (word_1EAB10A0C << 32);
  v6 = byte_1EAB10A0E;
  *a1 = static ContentTransition.opacity;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = HIBYTE(word_1EAB10A0C);
  *(a1 + 13) = HIBYTE(word_1EAB10A0C);
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

void one-time initialization function for opacity()
{
  static ContentTransition.opacity = 0x8000000002;
  LOBYTE(word_1EAB10A0C) = 3;
  dword_1EAB10A08 = 0x2000000;
  *(&word_1EAB10A0C + 1) = 0;
}

uint64_t initializeWithCopy for _ContentTransitionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v6 | (v5 << 32), v7);
  *a1 = v4;
  *(a1 + 12) = v5;
  *(a1 + 8) = v6;
  *(a1 + 13) = v7;
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t _ContentTransitionModifier.ChildEnvironment.value.getter@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  *a1 = *Value;
  a1[1] = v3;
  v23 = a1;
  if (v3)
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v4, &v24);

    v5 = v25 | (v26 << 32);
    v6 = v27;
    v21 = v24;
    LOBYTE(v20) = v29;
    v22 = v28;
  }

  else
  {

    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v7);
    if (v8)
    {
      v5 = *(v8 + 20) | (*(v8 + 84) << 32);
      v6 = *(v8 + 85);
      v21 = v8[9];
      v22 = *(v8 + 87);
      v20 = *(v8 + 24);
      v9 = v21;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = static ContentTransition.State.defaultValue;
      v5 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v6 = BYTE13(static ContentTransition.State.defaultValue);
      v21 = static ContentTransition.State.defaultValue;
      v22 = HIBYTE(static ContentTransition.State.defaultValue);
      LOBYTE(v20) = dword_1ED536628;
    }

    outlined copy of ContentTransition.Storage(v9, v5, v6);
  }

  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = *(v10 + 8) | (*(v10 + 12) << 32);
  v13 = *(v10 + 13);
  v14 = *(v10 + 14);
  outlined copy of ContentTransition.Storage(*v10, v12, v13);
  outlined consume of ContentTransition.Storage(v21, v5, v6);
  v15 = *(AGGraphGetValue() + 16);

  v16 = *(AGGraphGetValue() + 24);
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v11, v12, v13);
  v17 = 0x1000000000000;
  if (!v14)
  {
    v17 = 0;
  }

  v18 = v17 | v12 | (v13 << 40) | (v22 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v23, v11, v18, v15, v16 | v20 & 1);

  outlined consume of ContentTransition.Storage(v11, v12, v13);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v4, *v23);
  }

  outlined consume of ContentTransition.Storage(v11, v12, v13);
}

double static AnyTransition.scale.getter()
{
  type metadata accessor for TransitionBox<ScaleTransition>(0, &lazy cache variable for type metadata for TransitionBox<ScaleTransition>, lazy protocol witness table accessor for type ScaleTransition and conformance ScaleTransition, &type metadata for ScaleTransition, type metadata accessor for TransitionBox);
  v0 = swift_allocObject();
  result = 0.00001;
  *(v0 + 16) = xmmword_18DE21770;
  *(v0 + 32) = 0x3FE0000000000000;
  return result;
}

unint64_t lazy protocol witness table accessor for type BlurAndFadeTransition and conformance BlurAndFadeTransition()
{
  result = lazy protocol witness table cache variable for type BlurAndFadeTransition and conformance BlurAndFadeTransition;
  if (!lazy protocol witness table cache variable for type BlurAndFadeTransition and conformance BlurAndFadeTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BlurAndFadeTransition and conformance BlurAndFadeTransition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScaleTransition and conformance ScaleTransition()
{
  result = lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition;
  if (!lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition);
  }

  return result;
}

double _TrimmedShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 24))(v7, *(a1 + 16));
  Path.trimmedPath(from:to:)(v8, *(v2 + *(a1 + 36)), *(v2 + *(a1 + 40)));
  outlined destroy of Path(v7);
  result = *v8;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v9;
  return result;
}

void AccessibilityProperties.customAttributes.getter(void *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.CustomAttributesKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityCustomAttributes?, &type metadata for AccessibilityCustomAttributes, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(&v10, v8, v8, v6, v7);
    v9 = v10;
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
}

uint64_t Binding<A>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v52 = a3;
  v46 = *(a3 + 8);
  v47 = a4;
  v5 = *(a2 + 16);
  v50 = a1;
  v51 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v38 = &v35 - v11;
  v48 = a2;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  v42 = *(v13 + 16);
  v42(&v35 - v18, v4, v17);
  v41 = *(v8 + 16);
  v41(v12, v50, AssociatedTypeWitness);
  v20 = *(v13 + 80);
  v21 = (v20 + 48) & ~v20;
  v22 = *(v8 + 80);
  v23 = v8;
  v24 = (v14 + v21 + v22) & ~v22;
  v39 = v20 | v22;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v52;
  *(v25 + 4) = v51;
  *(v25 + 5) = v26;
  v37 = *(v13 + 32);
  v27 = v48;
  v37(&v25[v21], v19, v48);
  v36 = *(v23 + 32);
  v28 = v49;
  v36(&v25[v24], v38, v49);
  v29 = v44;
  (v42)(v44, v43, v27);
  v30 = v45;
  v41(v45, v50, v28);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v52;
  *(v31 + 4) = v51;
  *(v31 + 5) = v32;
  v37(&v31[v21], v29, v48);
  v36(&v31[v24], v30, v49);
  v33 = swift_getAssociatedTypeWitness();
  return Binding.init(get:set:)(partial apply for closure #1 in Binding<A>.subscript.getter, v25, partial apply for closure #2 in Binding<A>.subscript.getter, v31, v33, v47);
}

uint64_t AccessibilityProperties.customContentList.getter()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.CustomContentListKey);
  if ((v3 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for [AccessibilityCustomContentEntry], &type metadata for AccessibilityCustomContentEntry, MEMORY[0x1E69E62F8]);
  (*(v5 + 16))(&v9, v6, v6, v4, v5);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

Swift::Bool __swiftcall AccessibilityLabelStorage.merge(with:)(SwiftUI::AccessibilityLabelStorage with)
{
  v2 = *with.texts._rawValue;
  v3 = *(with.texts._rawValue + 8);
  v4 = *(v1 + 8);
  type metadata accessor for (AccessibilityLabelStorage.Placement, AccessibilityLabelStorage.Placement)();
  if (v4 == 3)
  {
    if (v3 != 3)
    {

      *v1 = v2;
      *(v1 + 8) = v3;

      return 1;
    }

    return 0;
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  if (v3 == 3)
  {
    return 0;
  }

  if (v4 == 1)
  {
LABEL_8:

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v2);

    return 1;
  }

  if (v3 == 1)
  {
    goto LABEL_15;
  }

  if (v4 != 2)
  {
    if (v4)
    {
      goto LABEL_16;
    }

LABEL_15:

    specialized Array.append<A>(contentsOf:)(v6);
    return 1;
  }

  if (v3 == 2)
  {
    return 0;
  }

LABEL_16:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for AccessibilityNodeAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccessibilityNodeAttachment.Storage(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v10;
    v11 = *(a2 + 32) | (*(a2 + 34) << 16);

    if (EnumCaseMultiPayload != 1)
    {
      if (BYTE2(v11) == 255)
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 31) = *(a2 + 31);
      }

      else
      {
        v24 = *(a2 + 16);
        v25 = *(a2 + 24);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v24, v25, v11, BYTE2(v11) & 1);
        *(a1 + 16) = v24;
        *(a1 + 24) = v25;
        *(a1 + 32) = v11;
        *(a1 + 34) = BYTE2(v11) & 1;
      }

      if (*(a2 + 58) == 255)
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 55) = *(a2 + 55);
      }

      else
      {
        v29 = *(a2 + 56) | (*(a2 + 58) << 16);
        v30 = *(a2 + 40);
        v31 = *(a2 + 48);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v30, v31, *(a2 + 56), BYTE2(v29) & 1);
        *(a1 + 40) = v30;
        *(a1 + 48) = v31;
        *(a1 + 56) = v29;
        *(a1 + 58) = BYTE2(v29) & 1;
      }

      if (*(a2 + 82) == 255)
      {
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 79) = *(a2 + 79);
      }

      else
      {
        v36 = *(a2 + 80) | (*(a2 + 82) << 16);
        v37 = *(a2 + 64);
        v38 = *(a2 + 72);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v37, v38, *(a2 + 80), BYTE2(v36) & 1);
        *(a1 + 64) = v37;
        *(a1 + 72) = v38;
        *(a1 + 80) = v36;
        *(a1 + 82) = BYTE2(v36) & 1;
      }

      *(a1 + 84) = *(a2 + 84);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      v39 = *(a2 + 232);
      if (v39 == 1)
      {
        memcpy((a1 + 144), (a2 + 144), 0x108uLL);
      }

      else
      {
        if (*(a2 + 162) == 255)
        {
          *(a1 + 144) = *(a2 + 144);
          *(a1 + 159) = *(a2 + 159);
        }

        else
        {
          v45 = *(a2 + 160) | (*(a2 + 162) << 16);
          v46 = *(a2 + 144);
          v47 = *(a2 + 152);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v46, v47, *(a2 + 160), BYTE2(v45) & 1);
          *(a1 + 144) = v46;
          *(a1 + 152) = v47;
          *(a1 + 160) = v45;
          *(a1 + 162) = BYTE2(v45) & 1;
          v39 = *(a2 + 232);
        }

        *(a1 + 163) = *(a2 + 163);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 177) = *(a2 + 177);
        v48 = (a1 + 184);
        v49 = (a2 + 184);
        if (v39)
        {
          if (*(a2 + 202) == 255)
          {
            *v48 = *v49;
            *(a1 + 199) = *(a2 + 199);
          }

          else
          {
            v59 = *(a2 + 200) | (*(a2 + 202) << 16);
            v60 = *(a2 + 184);
            v61 = *(a2 + 192);
            outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v60, v61, *(a2 + 200), BYTE2(v59) & 1);
            *(a1 + 184) = v60;
            *(a1 + 192) = v61;
            *(a1 + 200) = v59;
            *(a1 + 202) = BYTE2(v59) & 1;
          }

          if (*(a2 + 226) == 255)
          {
            *(a1 + 208) = *(a2 + 208);
            *(a1 + 223) = *(a2 + 223);
          }

          else
          {
            v72 = *(a2 + 224) | (*(a2 + 226) << 16);
            v73 = *(a2 + 208);
            v74 = *(a2 + 216);
            outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v73, v74, *(a2 + 224), BYTE2(v72) & 1);
            *(a1 + 208) = v73;
            *(a1 + 216) = v74;
            *(a1 + 224) = v72;
            *(a1 + 226) = BYTE2(v72) & 1;
          }

          v75 = *(a2 + 240);
          *(a1 + 232) = *(a2 + 232);
          *(a1 + 240) = v75;
          *(a1 + 248) = *(a2 + 248);
          *(a1 + 256) = *(a2 + 256);
          *(a1 + 264) = *(a2 + 264);
          v76 = *(a2 + 280);
          *(a1 + 272) = *(a2 + 272);
          *(a1 + 280) = v76;
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          v53 = *(a2 + 264);
          *(a1 + 248) = *(a2 + 248);
          *(a1 + 264) = v53;
          *(a1 + 280) = *(a2 + 280);
          v54 = *(a2 + 200);
          *v48 = *v49;
          *(a1 + 200) = v54;
          v55 = *(a2 + 232);
          *(a1 + 216) = *(a2 + 216);
          *(a1 + 232) = v55;
        }

        v77 = (a1 + 296);
        v78 = (a2 + 296);
        if (*(a2 + 344))
        {
          if (*(a2 + 314) == 255)
          {
            *v77 = *v78;
            *(a1 + 311) = *(a2 + 311);
          }

          else
          {
            v85 = *(a2 + 312) | (*(a2 + 314) << 16);
            v86 = *(a2 + 296);
            v87 = *(a2 + 304);
            outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v86, v87, *(a2 + 312), BYTE2(v85) & 1);
            *(a1 + 296) = v86;
            *(a1 + 304) = v87;
            *(a1 + 312) = v85;
            *(a1 + 314) = BYTE2(v85) & 1;
          }

          if (*(a2 + 338) == 255)
          {
            *(a1 + 320) = *(a2 + 320);
            *(a1 + 335) = *(a2 + 335);
          }

          else
          {
            v126 = *(a2 + 336) | (*(a2 + 338) << 16);
            v127 = *(a2 + 320);
            v128 = *(a2 + 328);
            outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v127, v128, *(a2 + 336), BYTE2(v126) & 1);
            *(a1 + 320) = v127;
            *(a1 + 328) = v128;
            *(a1 + 336) = v126;
            *(a1 + 338) = BYTE2(v126) & 1;
          }

          v129 = *(a2 + 352);
          *(a1 + 344) = *(a2 + 344);
          *(a1 + 352) = v129;
          *(a1 + 360) = *(a2 + 360);
          *(a1 + 368) = *(a2 + 368);
          *(a1 + 376) = *(a2 + 376);
          v130 = *(a2 + 392);
          *(a1 + 384) = *(a2 + 384);
          *(a1 + 392) = v130;
          *(a1 + 400) = *(a2 + 400);
        }

        else
        {
          v79 = *(a2 + 376);
          *(a1 + 360) = *(a2 + 360);
          *(a1 + 376) = v79;
          *(a1 + 392) = *(a2 + 392);
          v80 = *(a2 + 312);
          *v77 = *v78;
          *(a1 + 312) = v80;
          v81 = *(a2 + 344);
          *(a1 + 328) = *(a2 + 328);
          *(a1 + 344) = v81;
        }
      }

      v131 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
      v132 = *(v131 + 52);
      v133 = (a1 + v132);
      v134 = (a2 + v132);
      v135 = type metadata accessor for LinkDestination.Configuration(0);
      v136 = *(v135 - 8);
      if ((*(v136 + 48))(v134, 1, v135))
      {
        type metadata accessor for LinkDestination.Configuration?(0);
        memcpy(v133, v134, *(*(v137 - 8) + 64));
      }

      else
      {
        v138 = type metadata accessor for URL();
        (*(*(v138 - 8) + 16))(v133, v134, v138);
        *(v133 + *(v135 + 20)) = *(v134 + *(v135 + 20));
        (*(v136 + 56))(v133, 0, 1, v135);
      }

      *(a1 + *(v131 + 56)) = *(a2 + *(v131 + 56));
      v139 = type metadata accessor for CodableAccessibilityAttachmentStorage.V2(0);
      *(a1 + *(v139 + 20)) = *(a2 + *(v139 + 20));

      goto LABEL_92;
    }

    if (BYTE2(v11) == 255)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 31) = *(a2 + 31);
    }

    else
    {
      v22 = *(a2 + 16);
      v23 = *(a2 + 24);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v22, v23, v11, BYTE2(v11) & 1);
      *(a1 + 16) = v22;
      *(a1 + 24) = v23;
      *(a1 + 32) = v11;
      *(a1 + 34) = BYTE2(v11) & 1;
    }

    if (*(a2 + 58) == 255)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 55) = *(a2 + 55);
    }

    else
    {
      v26 = *(a2 + 56) | (*(a2 + 58) << 16);
      v27 = *(a2 + 40);
      v28 = *(a2 + 48);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v27, v28, *(a2 + 56), BYTE2(v26) & 1);
      *(a1 + 40) = v27;
      *(a1 + 48) = v28;
      *(a1 + 56) = v26;
      *(a1 + 58) = BYTE2(v26) & 1;
    }

    if (*(a2 + 82) == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 79) = *(a2 + 79);
    }

    else
    {
      v32 = *(a2 + 80) | (*(a2 + 82) << 16);
      v33 = *(a2 + 64);
      v34 = *(a2 + 72);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v33, v34, *(a2 + 80), BYTE2(v32) & 1);
      *(a1 + 64) = v33;
      *(a1 + 72) = v34;
      *(a1 + 80) = v32;
      *(a1 + 82) = BYTE2(v32) & 1;
    }

    *(a1 + 84) = *(a2 + 84);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    v35 = *(a2 + 232);
    if (v35 == 1)
    {
      memcpy((a1 + 144), (a2 + 144), 0x108uLL);
    }

    else
    {
      if (*(a2 + 162) == 255)
      {
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 159) = *(a2 + 159);
      }

      else
      {
        v40 = *(a2 + 160) | (*(a2 + 162) << 16);
        v41 = *(a2 + 144);
        v42 = *(a2 + 152);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v41, v42, *(a2 + 160), BYTE2(v40) & 1);
        *(a1 + 144) = v41;
        *(a1 + 152) = v42;
        *(a1 + 160) = v40;
        *(a1 + 162) = BYTE2(v40) & 1;
        v35 = *(a2 + 232);
      }

      *(a1 + 163) = *(a2 + 163);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 177) = *(a2 + 177);
      v43 = (a1 + 184);
      v44 = (a2 + 184);
      if (v35)
      {
        if (*(a2 + 202) == 255)
        {
          *v43 = *v44;
          *(a1 + 199) = *(a2 + 199);
        }

        else
        {
          v56 = *(a2 + 200) | (*(a2 + 202) << 16);
          v57 = *(a2 + 184);
          v58 = *(a2 + 192);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v57, v58, *(a2 + 200), BYTE2(v56) & 1);
          *(a1 + 184) = v57;
          *(a1 + 192) = v58;
          *(a1 + 200) = v56;
          *(a1 + 202) = BYTE2(v56) & 1;
        }

        if (*(a2 + 226) == 255)
        {
          *(a1 + 208) = *(a2 + 208);
          *(a1 + 223) = *(a2 + 223);
        }

        else
        {
          v62 = *(a2 + 224) | (*(a2 + 226) << 16);
          v63 = *(a2 + 208);
          v64 = *(a2 + 216);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v63, v64, *(a2 + 224), BYTE2(v62) & 1);
          *(a1 + 208) = v63;
          *(a1 + 216) = v64;
          *(a1 + 224) = v62;
          *(a1 + 226) = BYTE2(v62) & 1;
        }

        v65 = *(a2 + 240);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 240) = v65;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        v66 = *(a2 + 280);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 280) = v66;
        *(a1 + 288) = *(a2 + 288);
      }

      else
      {
        v50 = *(a2 + 264);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = v50;
        *(a1 + 280) = *(a2 + 280);
        v51 = *(a2 + 200);
        *v43 = *v44;
        *(a1 + 200) = v51;
        v52 = *(a2 + 232);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 232) = v52;
      }

      v67 = (a1 + 296);
      v68 = (a2 + 296);
      if (*(a2 + 344))
      {
        if (*(a2 + 314) == 255)
        {
          *v67 = *v68;
          *(a1 + 311) = *(a2 + 311);
        }

        else
        {
          v82 = *(a2 + 312) | (*(a2 + 314) << 16);
          v83 = *(a2 + 296);
          v84 = *(a2 + 304);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v83, v84, *(a2 + 312), BYTE2(v82) & 1);
          *(a1 + 296) = v83;
          *(a1 + 304) = v84;
          *(a1 + 312) = v82;
          *(a1 + 314) = BYTE2(v82) & 1;
        }

        if (*(a2 + 338) == 255)
        {
          *(a1 + 320) = *(a2 + 320);
          *(a1 + 335) = *(a2 + 335);
        }

        else
        {
          v88 = *(a2 + 336) | (*(a2 + 338) << 16);
          v89 = *(a2 + 320);
          v90 = *(a2 + 328);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v89, v90, *(a2 + 336), BYTE2(v88) & 1);
          *(a1 + 320) = v89;
          *(a1 + 328) = v90;
          *(a1 + 336) = v88;
          *(a1 + 338) = BYTE2(v88) & 1;
        }

        v91 = *(a2 + 352);
        *(a1 + 344) = *(a2 + 344);
        *(a1 + 352) = v91;
        *(a1 + 360) = *(a2 + 360);
        *(a1 + 368) = *(a2 + 368);
        *(a1 + 376) = *(a2 + 376);
        v92 = *(a2 + 392);
        *(a1 + 384) = *(a2 + 384);
        *(a1 + 392) = v92;
        *(a1 + 400) = *(a2 + 400);
      }

      else
      {
        v69 = *(a2 + 376);
        *(a1 + 360) = *(a2 + 360);
        *(a1 + 376) = v69;
        *(a1 + 392) = *(a2 + 392);
        v70 = *(a2 + 312);
        *v67 = *v68;
        *(a1 + 312) = v70;
        v71 = *(a2 + 344);
        *(a1 + 328) = *(a2 + 328);
        *(a1 + 344) = v71;
      }
    }

    v93 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
    v94 = *(v93 + 52);
    v95 = (a1 + v94);
    v96 = (a2 + v94);
    v97 = type metadata accessor for LinkDestination.Configuration(0);
    v98 = *(v97 - 8);
    v99 = a3;
    if ((*(v98 + 48))(v96, 1, v97))
    {
      type metadata accessor for LinkDestination.Configuration?(0);
      memcpy(v95, v96, *(*(v100 - 8) + 64));
    }

    else
    {
      v101 = type metadata accessor for URL();
      (*(*(v101 - 8) + 16))(v95, v96, v101);
      *(v95 + *(v97 + 20)) = *(v96 + *(v97 + 20));
      (*(v98 + 56))(v95, 0, 1, v97);
    }

    *(a1 + *(v93 + 56)) = *(a2 + *(v93 + 56));
    v102 = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(0);
    v103 = v102[5];
    v104 = a1 + v103;
    v105 = a2 + v103;
    v106 = *(v105 + 8);
    *v104 = *v105;
    *(v104 + 8) = v106;
    v107 = *(v105 + 24);
    *(v104 + 16) = *(v105 + 16);
    *(v104 + 24) = v107;
    *(v104 + 48) = *(v105 + 48);
    *(v104 + 32) = *(v105 + 32);
    v108 = v102[6];
    v109 = a1 + v108;
    v110 = (a2 + v108);
    v111 = *(a2 + v108 + 48);

    if (v111 == 1)
    {
      v112 = *(v110 + 1);
      *v109 = *v110;
      *(v109 + 16) = v112;
      v113 = *(v110 + 3);
      *(v109 + 32) = *(v110 + 2);
      *(v109 + 48) = v113;
      a3 = v99;
LABEL_85:
      *(a1 + v102[7]) = *(a2 + v102[7]);
      v119 = v102[8];
      v120 = a1 + v119;
      v121 = a2 + v119;
      *v120 = *v121;
      *(v120 + 16) = *(v121 + 16);
      *(a1 + v102[9]) = *(a2 + v102[9]);
      *(a1 + v102[10]) = *(a2 + v102[10]);
      *(a1 + v102[11]) = *(a2 + v102[11]);
      *(a1 + v102[12]) = *(a2 + v102[12]);
      v122 = v102[13];
      v123 = (a1 + v122);
      v124 = (a2 + v122);
      v125 = v124[1];
      *v123 = *v124;
      v123[1] = v125;
      *(a1 + v102[14]) = *(a2 + v102[14]);

LABEL_92:
      swift_storeEnumTagMultiPayload();
      goto LABEL_93;
    }

    v114 = *(v110 + 16);
    a3 = v99;
    if (v114 == 255)
    {
      *v109 = *v110;
      *(v109 + 16) = *(v110 + 8);
      if (v111)
      {
LABEL_82:
        v115 = v110[7];
        *(v109 + 48) = v111;
        *(v109 + 56) = v115;
        (**(v111 - 8))(v109 + 24, (v110 + 3), v111);
        goto LABEL_85;
      }
    }

    else
    {
      v116 = *v110;
      v117 = v110[1];
      v118 = v114 & 1;
      outlined copy of AccessibilityText.Storage(*v110, v117, v114 & 1);
      *v109 = v116;
      *(v109 + 8) = v117;
      *(v109 + 16) = v118;
      *(v109 + 17) = *(v110 + 17);
      v111 = v110[6];
      if (v111)
      {
        goto LABEL_82;
      }
    }

    *(v109 + 24) = *(v110 + 3);
    *(v109 + 40) = *(v110 + 5);
    *(v109 + 56) = v110[7];
    goto LABEL_85;
  }

  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 88);

  if (!v7)
  {
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    *(a1 + 96) = *(a2 + 96);
LABEL_12:
    *(a1 + 104) = *(a2 + 104);

    goto LABEL_13;
  }

  if (v7 != 1)
  {
    v13 = *(a2 + 96);
    *(a1 + 88) = v7;
    *(a1 + 96) = v13;
    (**(v7 - 8))(a1 + 64, a2 + 64, v7);
    goto LABEL_12;
  }

  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = *(a2 + 96);
LABEL_13:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v14 = *(a2 + 240);
  if (v14 == 1)
  {
    v15 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v15;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v16 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v16;
    v17 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v17;
    v18 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v18;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v19 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v19;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v14;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v20 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v20;

  v21 = v20;
LABEL_93:
  swift_storeEnumTagMultiPayload();
  v140 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v140) = *(a2 + v140);
  return a1;
}

uint64_t AccessibilityAttachment.init(properties:platformElement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = 0;
  *(a3 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v11);
  v6 = v11[7];
  *(a3 + 224) = v11[6];
  *(a3 + 240) = v6;
  *(a3 + 256) = v11[8];
  *(a3 + 272) = v12;
  v7 = v11[3];
  *(a3 + 160) = v11[2];
  *(a3 + 176) = v7;
  v8 = v11[5];
  *(a3 + 192) = v11[4];
  *(a3 + 208) = v8;
  v9 = v11[1];
  *(a3 + 128) = v11[0];
  *(a3 + 144) = v9;
  *(a3 + 280) = MEMORY[0x1E69E7CC8];
  result = outlined assign with take of AccessibilityProperties(a1, a3);
  *(a3 + 288) = a2;
  return result;
}

uint64_t AccessibilityProperties.activationPointStorage.setter(__int128 *a1)
{
  v1 = *(a1 + 3);
  if (v1)
  {
    v2 = *(a1 + 4);
    v3 = *(a1 + 2);
    v7 = *a1;
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityActivationPointStorage?>();
    v8[3] = v4;
    v8[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v5 = swift_allocObject();
    v8[0] = v5;
    *(v5 + 16) = v7;
    *(v5 + 32) = v3;
    *(v5 + 40) = v1;
    *(v5 + 48) = v2;
    return specialized Dictionary.subscript.setter(v8, &type metadata for AccessibilityProperties.ActivationPointKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ActivationPointKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v8);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v8, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

uint64_t sub_18D38D5C8()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

double AccessibilityProperties.subscript.setter(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = 0uLL;
  if ((*(v2 + 56) & 1) == 0)
  {
    v4 = *(v2 + 40);
  }

  v7 = v4;
  if (v3 >= 0x40)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1 << v3;
  }

  specialized AccessibilityNullableOptionSet.subscript.setter(a1, v5);
  result = *&v7;
  *(v2 + 40) = v7;
  *(v2 + 56) = 0;
  return result;
}

uint64_t AccessibilityProperties.chartDescriptor.setter(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (a1)
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, a2, a3, type metadata accessor for AccessibilityPropertiesEntry);
    v8[3] = v6;
    v8[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v8[0] = a1;
    return specialized Dictionary.subscript.setter(v8, a4);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(a4, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v8);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v8, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015ChartDescriptorG0V_Tt0g5Tm(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + 280);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v5, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v9 = a2(0);
  (*(v8 + 16))(&v12, v9, v9, v7, v8);
  v10 = v12;
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t AccessibilityProperties.hints.getter()
{
  v1 = *(v0 + 280);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.HintsKey), (v3 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for [Text], &type metadata for Text, MEMORY[0x1E69E62F8]);
    (*(v5 + 16))(&v9, v6, v6, v4, v5);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v7 = static AccessibilityProperties.HintsKey.defaultValue;
  }

  return v7;
}

double protocol witness for Shape.path(in:) in conformance _TrimmedShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _TrimmedShape.path(in:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double AccessibilityProperties.activationPointStorage.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ActivationPointKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v15);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, &type metadata for AccessibilityActivationPointStorage, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v13, v8, v8, v6, v7);
    v9 = v14;
    v11 = v13[1];
    v12 = v13[0];
    __swift_destroy_boxed_opaque_existential_1(v15);
    result = *&v12;
    *a1 = v12;
    *(a1 + 16) = v11;
    *(a1 + 32) = v9;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ForegroundLayerViewModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void type metadata accessor for (AccessibilityLabelStorage.Placement, AccessibilityLabelStorage.Placement)()
{
  if (!lazy cache variable for type metadata for (AccessibilityLabelStorage.Placement, AccessibilityLabelStorage.Placement))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityLabelStorage.Placement, AccessibilityLabelStorage.Placement));
    }
  }
}

uint64_t initializeWithCopy for AccessibilityNodeAttachment.Storage(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v8;
    v9 = *(a2 + 32) | (*(a2 + 34) << 16);

    if (EnumCaseMultiPayload != 1)
    {
      if (BYTE2(v9) == 255)
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 31) = *(a2 + 31);
      }

      else
      {
        v23 = *(a2 + 16);
        v24 = *(a2 + 24);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v23, v24, v9, BYTE2(v9) & 1);
        *(a1 + 16) = v23;
        *(a1 + 24) = v24;
        *(a1 + 32) = v9;
        *(a1 + 34) = BYTE2(v9) & 1;
      }

      if (*(a2 + 58) == 255)
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 55) = *(a2 + 55);
      }

      else
      {
        v28 = *(a2 + 56) | (*(a2 + 58) << 16);
        v29 = *(a2 + 40);
        v30 = *(a2 + 48);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v29, v30, *(a2 + 56), BYTE2(v28) & 1);
        *(a1 + 40) = v29;
        *(a1 + 48) = v30;
        *(a1 + 56) = v28;
        *(a1 + 58) = BYTE2(v28) & 1;
      }

      if (*(a2 + 82) == 255)
      {
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 79) = *(a2 + 79);
      }

      else
      {
        v35 = *(a2 + 80) | (*(a2 + 82) << 16);
        v36 = *(a2 + 64);
        v37 = *(a2 + 72);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v36, v37, *(a2 + 80), BYTE2(v35) & 1);
        *(a1 + 64) = v36;
        *(a1 + 72) = v37;
        *(a1 + 80) = v35;
        *(a1 + 82) = BYTE2(v35) & 1;
      }

      *(a1 + 84) = *(a2 + 84);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      v38 = *(a2 + 232);
      if (v38 == 1)
      {
        memcpy((a1 + 144), (a2 + 144), 0x108uLL);
      }

      else
      {
        if (*(a2 + 162) == 255)
        {
          *(a1 + 144) = *(a2 + 144);
          *(a1 + 159) = *(a2 + 159);
        }

        else
        {
          v44 = *(a2 + 160) | (*(a2 + 162) << 16);
          v45 = *(a2 + 144);
          v46 = *(a2 + 152);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v45, v46, *(a2 + 160), BYTE2(v44) & 1);
          *(a1 + 144) = v45;
          *(a1 + 152) = v46;
          *(a1 + 160) = v44;
          *(a1 + 162) = BYTE2(v44) & 1;
          v38 = *(a2 + 232);
        }

        *(a1 + 163) = *(a2 + 163);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 177) = *(a2 + 177);
        v47 = (a1 + 184);
        v48 = (a2 + 184);
        if (v38)
        {
          if (*(a2 + 202) == 255)
          {
            *v47 = *v48;
            *(a1 + 199) = *(a2 + 199);
          }

          else
          {
            v58 = *(a2 + 200) | (*(a2 + 202) << 16);
            v59 = *(a2 + 184);
            v60 = *(a2 + 192);
            outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v59, v60, *(a2 + 200), BYTE2(v58) & 1);
            *(a1 + 184) = v59;
            *(a1 + 192) = v60;
            *(a1 + 200) = v58;
            *(a1 + 202) = BYTE2(v58) & 1;
          }

          if (*(a2 + 226) == 255)
          {
            *(a1 + 208) = *(a2 + 208);
            *(a1 + 223) = *(a2 + 223);
          }

          else
          {
            v71 = *(a2 + 224) | (*(a2 + 226) << 16);
            v72 = *(a2 + 208);
            v73 = *(a2 + 216);
            outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v72, v73, *(a2 + 224), BYTE2(v71) & 1);
            *(a1 + 208) = v72;
            *(a1 + 216) = v73;
            *(a1 + 224) = v71;
            *(a1 + 226) = BYTE2(v71) & 1;
          }

          v74 = *(a2 + 240);
          *(a1 + 232) = *(a2 + 232);
          *(a1 + 240) = v74;
          *(a1 + 248) = *(a2 + 248);
          *(a1 + 256) = *(a2 + 256);
          *(a1 + 264) = *(a2 + 264);
          v75 = *(a2 + 280);
          *(a1 + 272) = *(a2 + 272);
          *(a1 + 280) = v75;
          *(a1 + 288) = *(a2 + 288);
        }

        else
        {
          v52 = *(a2 + 264);
          *(a1 + 248) = *(a2 + 248);
          *(a1 + 264) = v52;
          *(a1 + 280) = *(a2 + 280);
          v53 = *(a2 + 200);
          *v47 = *v48;
          *(a1 + 200) = v53;
          v54 = *(a2 + 232);
          *(a1 + 216) = *(a2 + 216);
          *(a1 + 232) = v54;
        }

        v76 = (a1 + 296);
        v77 = (a2 + 296);
        if (*(a2 + 344))
        {
          if (*(a2 + 314) == 255)
          {
            *v76 = *v77;
            *(a1 + 311) = *(a2 + 311);
          }

          else
          {
            v84 = *(a2 + 312) | (*(a2 + 314) << 16);
            v85 = *(a2 + 296);
            v86 = *(a2 + 304);
            outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v85, v86, *(a2 + 312), BYTE2(v84) & 1);
            *(a1 + 296) = v85;
            *(a1 + 304) = v86;
            *(a1 + 312) = v84;
            *(a1 + 314) = BYTE2(v84) & 1;
          }

          if (*(a2 + 338) == 255)
          {
            *(a1 + 320) = *(a2 + 320);
            *(a1 + 335) = *(a2 + 335);
          }

          else
          {
            v124 = *(a2 + 336) | (*(a2 + 338) << 16);
            v125 = *(a2 + 320);
            v126 = *(a2 + 328);
            outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v125, v126, *(a2 + 336), BYTE2(v124) & 1);
            *(a1 + 320) = v125;
            *(a1 + 328) = v126;
            *(a1 + 336) = v124;
            *(a1 + 338) = BYTE2(v124) & 1;
          }

          v127 = *(a2 + 352);
          *(a1 + 344) = *(a2 + 344);
          *(a1 + 352) = v127;
          *(a1 + 360) = *(a2 + 360);
          *(a1 + 368) = *(a2 + 368);
          *(a1 + 376) = *(a2 + 376);
          v128 = *(a2 + 392);
          *(a1 + 384) = *(a2 + 384);
          *(a1 + 392) = v128;
          *(a1 + 400) = *(a2 + 400);
        }

        else
        {
          v78 = *(a2 + 376);
          *(a1 + 360) = *(a2 + 360);
          *(a1 + 376) = v78;
          *(a1 + 392) = *(a2 + 392);
          v79 = *(a2 + 312);
          *v76 = *v77;
          *(a1 + 312) = v79;
          v80 = *(a2 + 344);
          *(a1 + 328) = *(a2 + 328);
          *(a1 + 344) = v80;
        }
      }

      v129 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
      v130 = *(v129 + 52);
      v131 = (a1 + v130);
      v132 = (a2 + v130);
      v133 = type metadata accessor for LinkDestination.Configuration(0);
      v134 = *(v133 - 8);
      if ((*(v134 + 48))(v132, 1, v133))
      {
        type metadata accessor for LinkDestination.Configuration?(0);
        memcpy(v131, v132, *(*(v135 - 8) + 64));
      }

      else
      {
        v136 = type metadata accessor for URL();
        (*(*(v136 - 8) + 16))(v131, v132, v136);
        *(v131 + *(v133 + 20)) = *(v132 + *(v133 + 20));
        (*(v134 + 56))(v131, 0, 1, v133);
      }

      *(a1 + *(v129 + 56)) = *(a2 + *(v129 + 56));
      v137 = type metadata accessor for CodableAccessibilityAttachmentStorage.V2(0);
      *(a1 + *(v137 + 20)) = *(a2 + *(v137 + 20));

      goto LABEL_92;
    }

    if (BYTE2(v9) == 255)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 31) = *(a2 + 31);
    }

    else
    {
      v21 = *(a2 + 16);
      v22 = *(a2 + 24);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v21, v22, v9, BYTE2(v9) & 1);
      *(a1 + 16) = v21;
      *(a1 + 24) = v22;
      *(a1 + 32) = v9;
      *(a1 + 34) = BYTE2(v9) & 1;
    }

    if (*(a2 + 58) == 255)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 55) = *(a2 + 55);
    }

    else
    {
      v25 = *(a2 + 56) | (*(a2 + 58) << 16);
      v26 = *(a2 + 40);
      v27 = *(a2 + 48);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v26, v27, *(a2 + 56), BYTE2(v25) & 1);
      *(a1 + 40) = v26;
      *(a1 + 48) = v27;
      *(a1 + 56) = v25;
      *(a1 + 58) = BYTE2(v25) & 1;
    }

    if (*(a2 + 82) == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 79) = *(a2 + 79);
    }

    else
    {
      v31 = *(a2 + 80) | (*(a2 + 82) << 16);
      v32 = *(a2 + 64);
      v33 = *(a2 + 72);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v32, v33, *(a2 + 80), BYTE2(v31) & 1);
      *(a1 + 64) = v32;
      *(a1 + 72) = v33;
      *(a1 + 80) = v31;
      *(a1 + 82) = BYTE2(v31) & 1;
    }

    *(a1 + 84) = *(a2 + 84);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    v34 = *(a2 + 232);
    if (v34 == 1)
    {
      memcpy((a1 + 144), (a2 + 144), 0x108uLL);
    }

    else
    {
      if (*(a2 + 162) == 255)
      {
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 159) = *(a2 + 159);
      }

      else
      {
        v39 = *(a2 + 160) | (*(a2 + 162) << 16);
        v40 = *(a2 + 144);
        v41 = *(a2 + 152);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v40, v41, *(a2 + 160), BYTE2(v39) & 1);
        *(a1 + 144) = v40;
        *(a1 + 152) = v41;
        *(a1 + 160) = v39;
        *(a1 + 162) = BYTE2(v39) & 1;
        v34 = *(a2 + 232);
      }

      *(a1 + 163) = *(a2 + 163);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 177) = *(a2 + 177);
      v42 = (a1 + 184);
      v43 = (a2 + 184);
      if (v34)
      {
        if (*(a2 + 202) == 255)
        {
          *v42 = *v43;
          *(a1 + 199) = *(a2 + 199);
        }

        else
        {
          v55 = *(a2 + 200) | (*(a2 + 202) << 16);
          v56 = *(a2 + 184);
          v57 = *(a2 + 192);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v56, v57, *(a2 + 200), BYTE2(v55) & 1);
          *(a1 + 184) = v56;
          *(a1 + 192) = v57;
          *(a1 + 200) = v55;
          *(a1 + 202) = BYTE2(v55) & 1;
        }

        if (*(a2 + 226) == 255)
        {
          *(a1 + 208) = *(a2 + 208);
          *(a1 + 223) = *(a2 + 223);
        }

        else
        {
          v61 = *(a2 + 224) | (*(a2 + 226) << 16);
          v62 = *(a2 + 208);
          v63 = *(a2 + 216);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v62, v63, *(a2 + 224), BYTE2(v61) & 1);
          *(a1 + 208) = v62;
          *(a1 + 216) = v63;
          *(a1 + 224) = v61;
          *(a1 + 226) = BYTE2(v61) & 1;
        }

        v64 = *(a2 + 240);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 240) = v64;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        v65 = *(a2 + 280);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 280) = v65;
        *(a1 + 288) = *(a2 + 288);
      }

      else
      {
        v49 = *(a2 + 264);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = v49;
        *(a1 + 280) = *(a2 + 280);
        v50 = *(a2 + 200);
        *v42 = *v43;
        *(a1 + 200) = v50;
        v51 = *(a2 + 232);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 232) = v51;
      }

      v66 = (a1 + 296);
      v67 = (a2 + 296);
      if (*(a2 + 344))
      {
        if (*(a2 + 314) == 255)
        {
          *v66 = *v67;
          *(a1 + 311) = *(a2 + 311);
        }

        else
        {
          v81 = *(a2 + 312) | (*(a2 + 314) << 16);
          v82 = *(a2 + 296);
          v83 = *(a2 + 304);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v82, v83, *(a2 + 312), BYTE2(v81) & 1);
          *(a1 + 296) = v82;
          *(a1 + 304) = v83;
          *(a1 + 312) = v81;
          *(a1 + 314) = BYTE2(v81) & 1;
        }

        if (*(a2 + 338) == 255)
        {
          *(a1 + 320) = *(a2 + 320);
          *(a1 + 335) = *(a2 + 335);
        }

        else
        {
          v87 = *(a2 + 336) | (*(a2 + 338) << 16);
          v88 = *(a2 + 320);
          v89 = *(a2 + 328);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v88, v89, *(a2 + 336), BYTE2(v87) & 1);
          *(a1 + 320) = v88;
          *(a1 + 328) = v89;
          *(a1 + 336) = v87;
          *(a1 + 338) = BYTE2(v87) & 1;
        }

        v90 = *(a2 + 352);
        *(a1 + 344) = *(a2 + 344);
        *(a1 + 352) = v90;
        *(a1 + 360) = *(a2 + 360);
        *(a1 + 368) = *(a2 + 368);
        *(a1 + 376) = *(a2 + 376);
        v91 = *(a2 + 392);
        *(a1 + 384) = *(a2 + 384);
        *(a1 + 392) = v91;
        *(a1 + 400) = *(a2 + 400);
      }

      else
      {
        v68 = *(a2 + 376);
        *(a1 + 360) = *(a2 + 360);
        *(a1 + 376) = v68;
        *(a1 + 392) = *(a2 + 392);
        v69 = *(a2 + 312);
        *v66 = *v67;
        *(a1 + 312) = v69;
        v70 = *(a2 + 344);
        *(a1 + 328) = *(a2 + 328);
        *(a1 + 344) = v70;
      }
    }

    v92 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
    v93 = *(v92 + 52);
    v94 = (a1 + v93);
    v95 = (a2 + v93);
    v96 = type metadata accessor for LinkDestination.Configuration(0);
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v95, 1, v96))
    {
      type metadata accessor for LinkDestination.Configuration?(0);
      memcpy(v94, v95, *(*(v98 - 8) + 64));
    }

    else
    {
      v99 = type metadata accessor for URL();
      (*(*(v99 - 8) + 16))(v94, v95, v99);
      *(v94 + *(v96 + 20)) = *(v95 + *(v96 + 20));
      (*(v97 + 56))(v94, 0, 1, v96);
    }

    *(a1 + *(v92 + 56)) = *(a2 + *(v92 + 56));
    v100 = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(0);
    v101 = v100[5];
    v102 = a1 + v101;
    v103 = a2 + v101;
    v104 = *(v103 + 8);
    *v102 = *v103;
    *(v102 + 8) = v104;
    v105 = *(v103 + 24);
    *(v102 + 16) = *(v103 + 16);
    *(v102 + 24) = v105;
    *(v102 + 48) = *(v103 + 48);
    *(v102 + 32) = *(v103 + 32);
    v106 = v100[6];
    v107 = a1 + v106;
    v108 = (a2 + v106);
    v109 = *(a2 + v106 + 48);

    if (v109 == 1)
    {
      v110 = *(v108 + 1);
      *v107 = *v108;
      *(v107 + 16) = v110;
      v111 = *(v108 + 3);
      *(v107 + 32) = *(v108 + 2);
      *(v107 + 48) = v111;
LABEL_85:
      *(a1 + v100[7]) = *(a2 + v100[7]);
      v117 = v100[8];
      v118 = a1 + v117;
      v119 = a2 + v117;
      *v118 = *v119;
      *(v118 + 16) = *(v119 + 16);
      *(a1 + v100[9]) = *(a2 + v100[9]);
      *(a1 + v100[10]) = *(a2 + v100[10]);
      *(a1 + v100[11]) = *(a2 + v100[11]);
      *(a1 + v100[12]) = *(a2 + v100[12]);
      v120 = v100[13];
      v121 = (a1 + v120);
      v122 = (a2 + v120);
      v123 = v122[1];
      *v121 = *v122;
      v121[1] = v123;
      *(a1 + v100[14]) = *(a2 + v100[14]);

LABEL_92:
      swift_storeEnumTagMultiPayload();
      goto LABEL_93;
    }

    v112 = *(v108 + 16);
    if (v112 == 255)
    {
      *v107 = *v108;
      *(v107 + 16) = *(v108 + 8);
      if (v109)
      {
LABEL_82:
        v113 = v108[7];
        *(v107 + 48) = v109;
        *(v107 + 56) = v113;
        (**(v109 - 8))(v107 + 24, (v108 + 3), v109);
        goto LABEL_85;
      }
    }

    else
    {
      v114 = *v108;
      v115 = v108[1];
      v116 = v112 & 1;
      outlined copy of AccessibilityText.Storage(*v108, v115, v112 & 1);
      *v107 = v114;
      *(v107 + 8) = v115;
      *(v107 + 16) = v116;
      *(v107 + 17) = *(v108 + 17);
      v109 = v108[6];
      if (v109)
      {
        goto LABEL_82;
      }
    }

    *(v107 + 24) = *(v108 + 3);
    *(v107 + 40) = *(v108 + 5);
    *(v107 + 56) = v108[7];
    goto LABEL_85;
  }

  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (!v5)
  {
    v10 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = *(a2 + 96);
LABEL_12:
    *(a1 + 104) = *(a2 + 104);

    goto LABEL_13;
  }

  if (v5 != 1)
  {
    v11 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v11;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
    goto LABEL_12;
  }

  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 96) = *(a2 + 96);
LABEL_13:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v12 = *(a2 + 240);
  if (v12 == 1)
  {
    v13 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v13;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    v15 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v15;
    v16 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v16;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v17 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v17;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v12;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v18 = *(a2 + 280);
  v19 = *(a2 + 288);
  *(a1 + 280) = v18;
  *(a1 + 288) = v19;

  v20 = v19;
LABEL_93:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t specialized AccessibilityNullableOptionSet.subscript.setter(uint64_t result, uint64_t a2)
{
  if (result == 2)
  {
    v3 = v2[1];
    if ((v3 & a2) != 0)
    {
      v2[1] = v3 & ~a2;
    }

    v4 = *v2;
    if ((*v2 & a2) == 0)
    {
      return result;
    }

LABEL_12:
    *v2 = v4 & ~a2;
    return result;
  }

  v5 = v2[1];
  if ((a2 & ~v5) != 0)
  {
    v2[1] = v5 | a2;
  }

  v4 = *v2;
  v6 = *v2 & a2;
  if ((result & 1) == 0)
  {
    if (!v6)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v6 != a2)
  {
    *v2 = v4 | a2;
  }

  return result;
}

void BlurAndFadeTransition.body(content:phase:)(char a1@<W1>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1 == 1)
  {
    a3 = 0.0;
  }

  *a2 = a3;
  if (a1 == 1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_ForegroundLayerViewModifier> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_ForegroundLayerViewModifier> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_ForegroundLayerViewModifier> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_ForegroundLayerViewModifier>, &type metadata for _ForegroundLayerViewModifier, &protocol witness table for _ForegroundLayerViewModifier, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_ForegroundLayerViewModifier> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<BlurReplaceTransition>, OpacityRendererEffect>, _BlurEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for PlaceholderContentView<BlurReplaceTransition>(255, a3, a4, type metadata accessor for PlaceholderContentView);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect>, OpacityRendererEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect>, OpacityRendererEffect>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect>(255, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect>, &lazy cache variable for type metadata for PlaceholderContentView<BlurAndFadeTransition>, &unk_1F00BC138);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect>, OpacityRendererEffect>);
    }
  }
}

void type metadata accessor for PlaceholderContentView<BlurReplaceTransition>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect>(255, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect>, &lazy cache variable for type metadata for PlaceholderContentView<BlurAndFadeTransition>, &unk_1F00BC138);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<BlurAndFadeTransition>, _BlurEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t CoreViewSetTransform(uint64_t result, void *a2, __int128 *a3)
{
  if (result)
  {
    if (result == 1)
    {
      v3 = a3[1];
      v5 = *a3;
      v6 = v3;
      v7 = a3[2];
      return [a2 setTransform:&v5];
    }
  }

  else
  {
    v4 = a3[1];
    v5 = *a3;
    v6 = v4;
    v7 = a3[2];
    return [a2 setAffineTransform:&v5];
  }

  return result;
}

Swift::Bool __swiftcall DisplayList.Item.canMergeWithTransform()()
{
  if ((*(v0 + 64) & 0xC0000000) == 0x40000000)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 52);
    outlined copy of DisplayList.Effect(v1, v2, v3);
    if (v3 == 15)
    {
      v8 = v1;
      v9 = v2;
      v10 = 15;
    }

    else if (v3 == 6)
    {
      v4 = *(v1 + 48);
      if (!*(v1 + 48) || v4 == 2)
      {
        outlined consume of DisplayList.Effect(v1, v2, 6);
        return 0;
      }

      if (v4 == 1)
      {
        v6 = *(v1 + 32);
        v5 = *(v1 + 40);
        outlined consume of DisplayList.Effect(v1, v2, 6);
        return vabdd_f64(v6, v5) >= 0.001;
      }

      v8 = v1;
      v9 = v2;
      v10 = 6;
    }

    else
    {
      v8 = v1;
      v9 = v2;
      v10 = v3;
    }

    outlined consume of DisplayList.Effect(v8, v9, v10);
  }

  return 1;
}

BOOL AccessibilityAttachment.isEmpty.getter()
{
  if (!*(*(v0 + 280) + 16) && !*(v0 + 8) && !*(v0 + 24) && *(v0 + 56) == 1 && (outlined init with copy of AccessibilityValueStorage?(v0 + 64, &v7), v1 = *(&v8 + 1), outlined destroy of AccessibilityValueStorage?(&v7), v1 == 1) && *(v0 + 120) == 1 && (v2 = *(v0 + 240), v13 = *(v0 + 224), v14 = v2, v15 = *(v0 + 256), v16 = *(v0 + 272), v3 = *(v0 + 176), v9 = *(v0 + 160), v10 = v3, v4 = *(v0 + 208), v11 = *(v0 + 192), v12 = v4, v5 = *(v0 + 144), v7 = *(v0 + 128), v8 = v5, _sSo7CGPointV_7SwiftUI18ResolvedStyledTextC0F13LayoutManagerC7Metrics33_B6B30FF60BE9B7CF80B161CEF951DAD7LLVtSgWOg(&v7) == 1))
  {
    return *(v0 + 288) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with copy of AccessibilityValueStorage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AccessibilityValueStorage?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AccessibilityValueStorage?()
{
  if (!lazy cache variable for type metadata for AccessibilityValueStorage?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityValueStorage?);
    }
  }
}

uint64_t outlined destroy of AccessibilityValueStorage?(uint64_t a1)
{
  type metadata accessor for AccessibilityValueStorage?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ContentTransitionModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance StrokeStyle(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static StrokeStyle.== infix(_:_:)(v5, v7);
}

BOOL specialized static StrokeStyle.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(result + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(result + 24);
  v3 = *(a2 + 24);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return *(result + 32) == *(a2 + 32);
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return *(result + 32) == *(a2 + 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 32);
  v2 = (type metadata accessor for Binding() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = v3 + *(*v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[10], v1);
  (*(v6 + 8))(v0 + v7, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE029ResolvableStringReferenceDateF033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(*a1);
  if (!v7 || (v8 = MEMORY[0x1E6969530], v9 = MEMORY[0x1E69E6720], outlined init with copy of WeakBox<GlassContainerCache>(v7 + *(*v7 + 248), v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]), v10 = _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE029ResolvableStringReferenceDateE033_6237733B8EBAC19656F21E79CFCF2D67LLV_Tt1g5(a2, v6), result = outlined destroy of WeakBox<GlassContainerCache>(v6, &lazy cache variable for type metadata for Date?, v8, v9), (v10 & 1) == 0))
  {
    v12 = MEMORY[0x1E6969530];
    v13 = MEMORY[0x1E69E6720];
    outlined init with copy of WeakBox<GlassContainerCache>(a2, v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v14 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>();
    v15 = swift_allocObject();
    outlined init with copy of WeakBox<GlassContainerCache>(v6, v15 + *(*v15 + 248), &lazy cache variable for type metadata for Date?, v12, v13);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>, &type metadata for EnvironmentValues.ResolvableStringReferenceDateKey, &protocol witness table for EnvironmentValues.ResolvableStringReferenceDateKey, type metadata accessor for EnvironmentPropertyKey);
    v17 = v16;

    value = PropertyList.Element.init(keyType:before:after:)(v17, 0, v14).value;
    outlined destroy of WeakBox<GlassContainerCache>(v6, &lazy cache variable for type metadata for Date?, v12, v13);
    *a1 = value;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>, &type metadata for EnvironmentValues.ResolvableStringReferenceDateKey, &protocol witness table for EnvironmentValues.ResolvableStringReferenceDateKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE029ResolvableStringReferenceDateV033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE029ResolvableStringReferenceDateV033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE029ResolvableStringReferenceDateV033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>, &type metadata for EnvironmentValues.ResolvableStringReferenceDateKey, &protocol witness table for EnvironmentValues.ResolvableStringReferenceDateKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>, &type metadata for EnvironmentValues.ResolvableStringReferenceDateKey, &protocol witness table for EnvironmentValues.ResolvableStringReferenceDateKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>, &type metadata for EnvironmentValues.ResolvableStringReferenceDateKey, &protocol witness table for EnvironmentValues.ResolvableStringReferenceDateKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t GraphHost.Data.hostPreferenceKeys.modify(void *a1)
{
  a1[1] = *a1;
  AGGraphSetValue();
}

uint64_t Text._localizationInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v5 = *(*a1 + 120);

    v5(v7);

    return outlined consume of Text.Storage(a1, a2, 1);
  }

  else
  {
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 16) = 0;
    *(a4 + 40) = 0;
  }
}

uint64_t initializeWithCopy for _LocalizationInfo(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of _LocalizationInfo(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t LocalizedTextStorage.localizationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 32) | 0x40;
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v5;
}

uint64_t getEnumTag for _LocalizationInfo(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t outlined copy of _LocalizationInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6)
{
  if (a6 >> 6)
  {
    if (a6 >> 6 != 1)
    {
      return result;
    }

    v7 = a5;
  }
}

void outlined consume of _LocalizationInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
  }

  else if (!(a6 >> 6))
  {
  }
}

void type metadata accessor for [BackgroundContext](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized _GraphInputs.pushScope<A>(id:)(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*v1);
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    Value = AGGraphGetValue();
    v6 = *(Value + 28);
    v7 = Value[1];
    v14 = *Value;
    v15[0] = v7;
    *(v15 + 12) = v6;
    outlined init with copy of _DisplayList_StableIdentityScope(&v14, &v12);
    outlined init with copy of _DisplayList_StableIdentityScope(&v14, &v12);
    _s7SwiftUI32_DisplayList_StableIdentityScopeV2id6parentACx_ACtcAA16StronglyHashableRzlufCSi_Tt2B5(a1, &v14, &v12);
    v15[2] = v12;
    v16[0] = v13[0];
    *(v16 + 12) = *(v13 + 12);
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of _DisplayList_StableIdentityScope(&v12);
    a1 = AGCreateWeakAttribute();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v1, a1);

    v4 = v14;
    swift_beginAccess();
    v3 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
  *(v4 + 16) = v3;
LABEL_3:
  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  if (v10 >= v9 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3);
  }

  *(v3 + 16) = v10 + 1;
  *(v3 + 8 * v10 + 32) = a1;
  *(v4 + 16) = v3;
  return outlined destroy of _DisplayList_StableIdentityScope(&v14);
}

unint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _DisplayList_StableIdentityScope);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA08_DisplayS20_StableIdentityScopeV_Tt0B5(a1, v6);
  if (v2)
  {
    v3 = (v2 + 72);
    v4 = (v2 + 76);
  }

  else
  {
    v3 = &static _DisplayList_StableIdentityScope.defaultValue;
    v4 = &static _DisplayList_StableIdentityScope.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3 | (*v4 << 32);
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA08_DisplayS20_StableIdentityScopeV_Tt0B5(uint64_t result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA08_DisplayS20_StableIdentityScopeV_Tt0B5(*(result + 24));
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _DisplayList_StableIdentityScope)
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

uint64_t initializeWithCopy for _DisplayList_StableIdentityScope(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

double _s7SwiftUI32_DisplayList_StableIdentityScopeV2id6parentACx_ACtcAA16StronglyHashableRzlufCSi_Tt2B5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a3 + 32) = MEMORY[0x1E69E7CC8];
  *(a3 + 40) = 0;
  *a3 = *a2;
  memset(&v8, 0, sizeof(v8));

  CC_SHA1_Init(&v8);
  c = v8;
  *&v8.h0 = a1;
  CC_SHA1_Update(&c, &v8, 8u);
  *&v8.h0 = *(a2 + 8);
  v8.h4 = *(a2 + 24);
  CC_SHA1_Update(&c, &v8, 0x14u);
  outlined destroy of _DisplayList_StableIdentityScope(a2);
  memset(&v8, 0, 20);
  CC_SHA1_Final(&v8, &c);
  h4 = v8.h4;
  result = *&v8.h0;
  *(a3 + 8) = *&v8.h0;
  *(a3 + 24) = h4;
  return result;
}

uint64_t destroy for _DisplayList_StableIdentityScope()
{
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _DisplayList_StableIdentityScope);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA08_DisplayS20_StableIdentityScopeV_Tt0B5(v4, v7) || (result = static WeakAttribute.== infix(_:_:)(), (result & 1) == 0))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_DisplayList_StableIdentityScope>, &type metadata for _DisplayList_StableIdentityScope, &protocol witness table for _DisplayList_StableIdentityScope, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _DisplayList_StableIdentityScope, 0, v6);
  }

  return result;
}

uint64_t DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for TransitionHelper();
  v8 = *(v7 - 8);
  v42 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for UncheckedSendable();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v43 = a1;
  v44 = v8;
  v15 = a1;
  v16 = *(v8 + 16);
  v16(v10, v15, v7, v12);
  UncheckedSendable.init(_:)(v10, v7, v14);
  v45 = a2;
  v46 = v14;
  closure #1 in DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)(v14, a2, a3, &v67);
  if (v67 == 1)
  {
    v17 = *(v3 + 136);
    v63 = *(v3 + 120);
    v64 = v17;
    v65 = *(v3 + 152);
    v66 = *(v3 + 168);
    v18 = *(v3 + 104);
    v61 = *(v3 + 88);
    v62 = v18;
    v58 = v17;
    v59 = v65;
    v56 = v18;
    v57 = v63;
    v60 = v66;
    v55 = v61;
    v41 = a3;
    if ((WORD2(v63) & 0x100) != 0)
    {
      outlined init with copy of _ViewInputs(&v61, &v67);
      AGTypeGetSignature();
      specialized _GraphInputs.pushScope<A>(id:)(v67, *(&v67 + 1), v68);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v61, &v67);
    }

    v19 = (v3 + 80);
    if (*(v3 + 84))
    {
      v19 = MEMORY[0x1E698D3F8];
    }

    LODWORD(v67) = *v19;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ViewListArchivedAnimation and conformance ViewListArchivedAnimation();
    v40 = Attribute.init<A>(body:value:flags:update:)();
    v69 = v57;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v67 = v55;
    v68 = v56;
    outlined init with copy of DynamicViewListItem(v3 + 8, v52);
    v20 = *(v3 + 184);
    v39 = *(v3 + 176);
    outlined init with copy of DynamicViewListItem(v52, v50);
    (v16)(v10, v43, v7);
    v21 = v44;
    v22 = (*(v44 + 80) + 109) & ~*(v44 + 80);
    v23 = (v42 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    v25 = v41;
    *(v24 + 16) = v45;
    *(v24 + 24) = v25;
    v26 = v51[0];
    *(v24 + 64) = v50[2];
    *(v24 + 80) = v26;
    *(v24 + 93) = *(v51 + 13);
    v27 = v50[1];
    *(v24 + 32) = v50[0];
    *(v24 + 48) = v27;
    (*(v21 + 32))(v24 + v22, v10, v7);
    v28 = (v24 + v23);
    *v28 = v39;
    v28[1] = v20;

    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA0I21ListArchivedAnimation33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV0D0V_Tt3B5(v40, &v67, partial apply for closure #2 in DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:), v49);

    outlined destroy of DynamicViewListItem(v52);
    v53[2] = v57;
    v53[3] = v58;
    v53[4] = v59;
    v54 = v60;
    v53[0] = v55;
    v53[1] = v56;
    outlined destroy of _ViewInputs(v53);
    v29 = v49[0];
    v30 = v49[1];

    *(v3 + 192) = v29;
    *(v3 + 200) = v30;
  }

  else
  {
    v31 = *(v3 + 176);
    v32 = *(v3 + 136);
    v63 = *(v3 + 120);
    v64 = v32;
    v65 = *(v3 + 152);
    v66 = *(v3 + 168);
    v33 = *(v3 + 104);
    v61 = *(v3 + 88);
    v62 = v33;
    v34 = *(v3 + 136);
    v57 = *(v3 + 120);
    v58 = v34;
    v59 = *(v3 + 152);
    v60 = *(v3 + 168);
    v35 = *(v3 + 104);
    v55 = *(v3 + 88);
    v56 = v35;
    outlined init with copy of _ViewInputs(&v61, &v67);
    v31(v53, &v55);
    v69 = v57;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v67 = v55;
    v68 = v56;
    outlined destroy of _ViewInputs(&v67);
    v36 = v53[0];

    *(v3 + 192) = v36;
  }

  return (*(v47 + 8))(v46, v48);
}

uint64_t sub_18D390C88()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for TransitionHelper() - 8);
  v3 = (*(*v2 + 80) + 109) & ~*(*v2 + 80);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  (*(*(v1 - 8) + 8))(v0 + v2[13] + v3, v1);

  return swift_deallocObject();
}

uint64_t outlined destroy of DisplayList.ArchiveIDs?(uint64_t a1)
{
  _s7SwiftUI11DisplayListV10ArchiveIDsVSgMaTm_1(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, type metadata accessor for DisplayList.ArchiveIDs, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithCopy for _ContentTransitionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v6 | (v5 << 32), v7);
  v8 = *a1;
  v9 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v10 = *(a1 + 13);
  *(a1 + 13) = v7;
  outlined consume of ContentTransition.Storage(v8, v9, v10);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t Transaction.combinedAnimationListener.getter(void *a1)
{
  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v2 && (v3 = v2[9]) != 0)
  {

    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
    if (v4)
    {
      v5 = v4[9];
      if (v5)
      {
        type metadata accessor for ListenerPair();
        v6 = swift_allocObject();
        *(v6 + 16) = v3;
        *(v6 + 24) = v5;

        return v6;
      }
    }
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
    if (v7)
    {
      v3 = v7[9];
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t initializeWithCopy for DisplayList.InterpolatorLayer.Removed(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  v7 = *(a2 + 72);
  v6 = *(a2 + 80);
  *(a1 + 72) = v7;
  *(a1 + 80) = v6;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);

  swift_unknownObjectRetain();
  v8 = v4;
  v9 = v5;
  v10 = v7;

  return a1;
}

uint64_t _PreferenceWritingModifier.init(key:value:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

void DynamicAnimationListener.animationWasRemoved()()
{
  v1 = *(v0 + 32) - 1;
  *(v0 + 32) = v1;
  if (!v1 && swift_weakLoadStrong())
  {
    specialized GraphHost.continueTransaction<A>(_:)(*(v0 + 24));
  }
}

uint64_t closure #1 in static Update.dispatchActions()(uint64_t a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for postUpdateActions != -1)
  {
    swift_once();
  }

  v6 = static Signpost.postUpdateActions;
  v7 = word_1ED530E00;
  v8 = HIBYTE(word_1ED530E00);
  v9 = byte_1ED530E02;
  if (one-time initialization token for traceHost != -1)
  {
    swift_once();
  }

  v34 = v6;
  LOBYTE(v35) = v7;
  BYTE1(v35) = v8;
  BYTE2(v35) = v9;
  if (Signpost.isEnabled.getter())
  {
    v10 = one-time initialization token for _signpostLog;
    swift_unknownObjectRetain();
    if (v10 != -1)
    {
      swift_once();
    }

    v11 = _signpostLog;
    OSSignpostID.init(log:object:)();
    static os_signpost_type_t.begin.getter();
    v32 = v3;
    v33 = v2;
    v31 = *(&v6 + 1);
    v30 = v7;
    v29[1] = v11;
    if (v8)
    {
      os_signpost(_:dso:log:name:signpostID:)();
    }

    else
    {
      OSSignpostID.rawValue.getter();
      kdebug_trace();
    }

    v21 = specialized static Update.begin()();
    v22 = static Update.dispatchDepth;
    static Update.dispatchDepth = static Update.depth;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = (a1 + 56);
      while (1)
      {
        v25 = *v24;
        v26 = *(v24 - 2);
        v27 = *(v24 - 1);
        v28 = static Update.depth;
        LOBYTE(v34) = *(v24 - 24);
        *(&v34 + 1) = v26;
        v35 = v27;
        v36 = v25;

        Update.Action.callAsFunction()();
        if (static Update.depth != v28)
        {
          break;
        }

        v24 += 8;

        if (!--v23)
        {
          goto LABEL_22;
        }
      }

LABEL_26:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

LABEL_22:
    static Update.dispatchDepth = v22;
    static Update.end()(v21);
    static os_signpost_type_t.end.getter();
    if (v8)
    {
      os_signpost(_:dso:log:name:signpostID:)();
    }

    else
    {
      OSSignpostID.rawValue.getter();
      kdebug_trace();
    }

    return (*(v32 + 8))(v5, v33);
  }

  else
  {
    v12 = specialized static Update.begin()();
    v13 = static Update.dispatchDepth;
    static Update.dispatchDepth = static Update.depth;
    v14 = *(a1 + 16);
    if (v14)
    {
      v15 = (a1 + 56);
      do
      {
        v16 = *v15;
        v17 = *(v15 - 2);
        v18 = *(v15 - 1);
        v19 = static Update.depth;
        LOBYTE(v34) = *(v15 - 24);
        *(&v34 + 1) = v17;
        v35 = v18;
        v36 = v16;

        Update.Action.callAsFunction()();
        if (static Update.depth != v19)
        {
          goto LABEL_26;
        }

        v15 += 8;
      }

      while (--v14);
    }

    static Update.dispatchDepth = v13;

    return static Update.end()(v12);
  }
}

Swift::Void __swiftcall Update.Action.callAsFunction()()
{
  v2 = *(v1 + 8);
  if (one-time initialization token for enabledCategories != -1)
  {
    v0 = swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 21313;
    type metadata accessor for (UInt32, UInt32?)();
    v0 = AGGraphAddTraceEvent();
  }

  v2(v0);
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x42uLL)
  {
LABEL_13:
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 97) == 1)
  {
    if (static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 17985;
      type metadata accessor for (UInt32, UInt32?)();
      AGGraphAddTraceEvent();
    }
  }
}

Swift::Void __swiftcall ViewGraphDisplayLink.invalidate()()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v2 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link;
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
  if (v3)
  {
    v4 = v3;
    if ([v4 isPaused])
    {
      [v4 invalidate];
    }
  }

  v5 = *(v0 + v2);
  *(v0 + v2) = 0;

  _MovableLockUnlock(v1);
}

uint64_t destroy for RBDrawingLayer.State(uint64_t a1)
{
  outlined consume of PlatformDrawableContent.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
}

id outlined copy of VariableBlurStyle.Mask(id result, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{
  if (!(a14 >> 30))
  {
    return outlined copy of GraphicsImage.Contents?(result, a2);
  }

  return result;
}

uint64_t _ForegroundStyleModifier3.ForegroundStyleEnvironment.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v65 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v21;
  v73 = v22;
  v74 = v23;
  v75 = v24;
  v76 = v25;
  v77 = v26;
  v58 = v25;
  v67 = type metadata accessor for _ForegroundStyleModifier3();
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v28 = &v55 - v27;
  v68 = a1;
  Value = AGGraphGetValue();
  v31 = *Value;
  v30 = Value[1];
  v66 = a7;
  *a7 = v31;
  a7[1] = v30;

  v56 = a4;
  v57 = a6;
  _ForegroundStyleModifier3.ForegroundStyleEnvironment.modifier.getter(v28);
  v32 = v60;
  v33 = v55;
  (*(v60 + 16))(v55, v28, a2);
  v69 = *(v70 + 8);
  v70 += 8;
  v69(v28, v67);
  v34 = v66[1];
  v72 = *v66;
  v73 = v34;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v71);

  v59 = a5;
  v61 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v71, &v72, 0, a2, a5);

  (*(v32 + 8))(v33, a2);
  v35 = v66;
  v36 = v58;
  _ForegroundStyleModifier3.ForegroundStyleEnvironment.modifier.getter(v28);
  v37 = v67;
  v38 = v62;
  v39 = v63;
  (*(v63 + 16))(v62, &v28[*(v67 + 68)], a3);
  v69(v28, v37);
  v40 = v35[1];
  v72 = *v35;
  v73 = v40;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v71);

  v41 = v38;
  v42 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v71, &v72, 0, a3, v36);

  (*(v39 + 8))(v41, a3);
  v43 = v42;
  v44 = v56;
  v45 = v57;
  _ForegroundStyleModifier3.ForegroundStyleEnvironment.modifier.getter(v28);
  v47 = v64;
  v46 = v65;
  (*(v65 + 16))(v64, &v28[*(v37 + 72)], v44);
  v69(v28, v37);
  v48 = *v35;
  v49 = v35[1];
  v72 = *v35;
  v73 = v49;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v71);

  v50 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v71, &v72, 0, v44, v45);

  v51 = v47;
  v52 = v61;
  (*(v46 + 8))(v51, v44);
  _s7SwiftUI13ShapeStyleBox33_C5308685324599C90E2F7A588812BB29LLCyAA0cD4PairVyAA03AnycD0VAHGGMaTm_0(0, &lazy cache variable for type metadata for ShapeStyleBox<ShapeStyleTriple<AnyShapeStyle, AnyShapeStyle, AnyShapeStyle>>, type metadata accessor for ShapeStyleTriple<AnyShapeStyle, AnyShapeStyle, AnyShapeStyle>);
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = v43;
  v53[4] = v50;
  swift_retain_n();
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(v35, v53);

  if (v49)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v48, *v35);
  }
}

uint64_t _ForegroundStyleModifier3.ForegroundStyleEnvironment.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ForegroundStyleModifier3();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

__n128 __swift_memcpy80_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t _ColorMatrix._apply(to:)(uint64_t result)
{
  if (*(result + 24) <= 1u)
  {
    if (*(result + 24))
    {
      v3 = *(result + 8);
      if (v3 != *(result + 16))
      {
        v4 = *result;
        v5 = v1[3];
        v15[2] = v1[2];
        v15[3] = v5;
        v15[4] = v1[4];
        v6 = v1[1];
        v15[0] = *v1;
        v15[1] = v6;
        v16 = 2139095040;
        v17 = 1280;
        v18 = 1065353216;
        v19 = 0;
        v20 = -1;
        v7 = MEMORY[0x1E69E7CC0];
        v21 = MEMORY[0x1E69E7CC0];
        v14 = v4;
        if (*(result + 40) == 1)
        {
          v7 = *(result + 32);
          v8 = result;

          outlined consume of _ShapeStyle_Shape.Result(v9, 1u);
          result = v8;
          *(v8 + 32) = 0;
          *(v8 + 40) = 5;
        }

        v10 = result;
        _ShapeStyle_Pack.subscript.setter(v15, &v14, v3);
        v11 = v7;
        v12 = *(v10 + 32);
        v13 = *(v10 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v12, v13);
        *(v10 + 32) = v11;
        *(v10 + 40) = 1;
      }
    }

    else
    {
      v2 = result;
      result = outlined consume of _ShapeStyle_Shape.Result(*(result + 32), *(result + 40));
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
    }
  }

  return result;
}

uint64_t destroy for _ForegroundStyleModifier3(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(a2[4] - 8);
  v10 = *(v9 + 8);
  v11 = (v8 + *(v7 + 56) + *(v9 + 80)) & ~*(v9 + 80);

  return v10(v11);
}

BOOL sub_18D392690(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return specialized static ColorMatrix.== infix(_:_:)(v8, v9);
}

void _ShapeStyle_RenderedShape.render(effect:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  if (*(a1 + 12) <= 9u)
  {
    if (v4 == 4)
    {
      *(v1 + 260) = *(v1 + 260) * *&v2;
      return;
    }

    if (v4 == 5)
    {
      v5 = *(v1 + 248);
      v6 = *(v1 + 256);
      v7 = v3 & 1;
      outlined copy of GraphicsBlendMode(*a1, v7);
      outlined consume of GraphicsBlendMode(v5, v6);
      *(v1 + 248) = v2;
      *(v1 + 256) = v7;
      return;
    }

    goto LABEL_21;
  }

  if (v4 == 10)
  {
    memmove(v19, (v2 + 16), 0x7CuLL);
    if (_s7SwiftUI14GraphicsFilterOWOg(v19) == 15)
    {
      _s7SwiftUI14GraphicsFilterOWOj6_(v19);
      v10 = *(v1 + 264);
      if (v10)
      {
        LOWORD(v26) = *(v1 + 108);
        DisplayList.Item.addDrawingGroup(contentSeed:)(&v26);
        v10 &= ~1u;
        *(v1 + 264) = v10;
      }

      if ((v10 & 2) == 0)
      {
        *(v1 + 264) = v10 | 2;
      }
    }

    goto LABEL_21;
  }

  if (v4 != 20 || v2 != 0 || v3 != 0)
  {
LABEL_21:
    v11 = *(v1 + 208);
    v12 = *(v1 + 216);
    v13 = *(v1 + 224);
    v14 = *(v1 + 192);
    v15 = *(v1 + 200);
    v19[0] = 0uLL;
    v19[1] = *(v1 + 176);
    v20 = v14;
    v21 = v15;
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v25 = 0;
    outlined copy of DisplayList.Effect(v2, v3, v4);
    outlined copy of DisplayList.Item.Value(v15, v11, v12, v13);
    DisplayList.init(_:)(v19, &v26);
    v16 = v26;
    v17 = v3 | (v4 << 32);
    v18 = v27 | (v28 << 32) | 0x40000000;
    outlined consume of DisplayList.Item.Value(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
    *(v1 + 200) = v2;
    *(v1 + 208) = v17;
    *(v1 + 216) = v16;
    *(v1 + 224) = v18;
    LOBYTE(v19[0]) = *(v1 + 236);
    DisplayList.Item.canonicalize(options:)(v19);
  }
}

uint64_t specialized static Image.SymbolRenderingOptionsProvider.== infix(_:_:)(_BYTE *a1, uint64_t a2)
{
  v2 = a1[8];
  v3 = a1[9];
  v4 = a1[10];
  v5 = a1[11];
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  if (*a1 != *a2 && ((*(**a1 + 96))() & 1) == 0)
  {
    return 0;
  }

  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  return specialized static SymbolRenderingOptions.== infix(_:_:)(v12, v11) & (v5 == v9);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_0(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>, &type metadata for EnvironmentValues.__Key_timeDataSource, &protocol witness table for EnvironmentValues.__Key_timeDataSource, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v7);
  v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt0B5(a1, v12[1]);
  if (v8)
  {
    v9 = v8[9];
  }

  else
  {
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_0(0, &lazy cache variable for type metadata for (pauseDate: Date), MEMORY[0x1E6969530]);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_0(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateBox, type metadata accessor for TimeDataSource<A>.DateBox);
    v9 = swift_allocObject();
    result = outlined init with take of TimeDataSource<Date><A>.DateStorage(v6, v9 + direct field offset for TimeDataSource<A>.DateBox.storage);
  }

  *a2 = v9;
  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt0B5(result[3]);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>, &type metadata for EnvironmentValues.__Key_timeDataSource, &protocol witness table for EnvironmentValues.__Key_timeDataSource, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TimeDataSource<Date><A>.DateStorage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with take of TimeDataSource<Date><A>.DateStorage(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimeDataSource<Date><A>.DateStorage(0, &lazy cache variable for type metadata for TimeDataSource<Date><A>.DateStorage, type metadata accessor for TimeDataSource<A>.DateStorage);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (pauseDate: Date)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  _s7SwiftUI14TimeDataSourceVAA10Foundation4DateVRszlE0G7StorageOyAF_GMaTm_1(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t TimeDataSource<A>.DateBox.__deallocating_deinit(void *a1, unint64_t *a2, uint64_t (*a3)(void))
{
  outlined destroy of (pauseDate: Date)(v3 + *a1, a2, a3);

  return swift_deallocClassInstance();
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>, &type metadata for EnvironmentValues.__Key_timeDataSource, &protocol witness table for EnvironmentValues.__Key_timeDataSource, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt0B5(v4, v9) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for TimeDataSource<Date>, MEMORY[0x1E6969530], type metadata accessor for TimeDataSource), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>();
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>, &type metadata for EnvironmentValues.__Key_timeDataSource, &protocol witness table for EnvironmentValues.__Key_timeDataSource, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>);
    }
  }
}

uint64_t outlined copy of SDFLayer.SDFElement.Contents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 & 0x80) != 0)
  {
  }

  else
  {
    return outlined copy of Path.Storage(a1, a2, a3, a4, a5);
  }
}

uint64_t specialized static SDFLayer.SDFElement.Contents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if ((v6 & 0x80000000) == 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      v17 = *a1;
      v18 = v2;
      v19 = v5;
      v20 = v4;
      v21 = v6;
      v22 = v8;
      v23 = v7;
      v24 = v9;
      v25 = v10;
      v26 = v11;
      outlined copy of SDFLayer.SDFElement.Contents(v8, v7, v9, v10, v11);
      outlined copy of SDFLayer.SDFElement.Contents(v3, v2, v5, v4, v6);
      v15 = v10;
      v12 = v9;
      v13 = specialized static Path.Storage.== infix(_:_:)(&v17, &v22);
      outlined consume of SDFLayer.SDFElement.Contents(v3, v2, v5, v4, v6);
      outlined consume of SDFLayer.SDFElement.Contents(v8, v7, v12, v15, v11);
      return v13 & 1;
    }

    goto LABEL_5;
  }

  if ((v11 & 0x80000000) == 0)
  {
LABEL_5:
    outlined copy of SDFLayer.SDFElement.Contents(*a2, *(a2 + 8), v9, v10, v11);
    outlined copy of SDFLayer.SDFElement.Contents(v3, v2, v5, v4, v6);
    outlined consume of SDFLayer.SDFElement.Contents(v3, v2, v5, v4, v6);
    outlined consume of SDFLayer.SDFElement.Contents(v8, v7, v9, v10, v11);
LABEL_6:
    v13 = 0;
    return v13 & 1;
  }

  v22 = *a1;
  LOWORD(v23) = v2;
  HIDWORD(v23) = HIDWORD(v2);
  v17 = v8;
  LOWORD(v18) = v7;
  HIDWORD(v18) = HIDWORD(v7);
  v16 = specialized static DisplayList.== infix(_:_:)(&v22, &v17);
  outlined copy of SDFLayer.SDFElement.Contents(v8, v7, v9, v10, v11);
  outlined copy of SDFLayer.SDFElement.Contents(v3, v2, v5, v4, v6);
  outlined consume of SDFLayer.SDFElement.Contents(v3, v2, v5, v4, v6);
  outlined consume of SDFLayer.SDFElement.Contents(v8, v7, v9, v10, v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = *&v4 == *&v10 && *&v5 == *&v9;
  return v13 & 1;
}

uint64_t outlined consume of SDFLayer.SDFElement.Contents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 & 0x80) != 0)
  {
  }

  else
  {
    return outlined consume of Path.Storage(a1, a2, a3, a4, a5);
  }
}

unint64_t DisplayList.Index.skip(effect:)(uint64_t a1)
{
  type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, type metadata accessor for DisplayList.ArchiveIDs, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v223 - v4;
  result = *a1;
  v7 = *(a1 + 12);
  if (v7 == 1)
  {
LABEL_223:
    v220 = swift_projectBox();
    outlined init with copy of DisplayList.ArchiveIDs?(v220, v5);
    v221 = type metadata accessor for DisplayList.ArchiveIDs();
    v222 = (*(*(v221 - 8) + 48))(v5, 1, v221) != 1;
    DisplayList.Index.updateArchive(entering:)(v222);
    return outlined destroy of Any?(v5, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, type metadata accessor for DisplayList.ArchiveIDs, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.ArchiveIDs?);
  }

  else if (v7 == 7)
  {
    v8 = *(result + 16);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = v8 + 32;
      v225 = *(v8 + 16);
      v226 = v8;
      v224 = v8 + 32;
      while (1)
      {
        v12 = (v11 + 80 * v10);
        v13 = v12[1];
        v14 = v12[2];
        v15 = v12[3];
        *&v270[12] = *(v12 + 60);
        v16 = *v12;
        v269 = v14;
        *v270 = v15;
        v268[0] = v16;
        v268[1] = v13;
        if (*&v270[24])
        {
          goto LABEL_220;
        }

        result = *(&v269 + 1);
        v17 = *v270;
        v18 = *&v270[8];
        v19 = *&v270[16];
        v20 = *v1;
        v21 = v1[1] + 1;
        v1[1] = v21;
        v22 = *(v1 + 1);
        v23 = *(v1 + 16);
        *(v1 + 16) = 0;
        v24 = v19 >> 30;
        if (v24 - 2 < 2)
        {
          goto LABEL_210;
        }

        if (v24)
        {
          break;
        }

        if (result >> 60 != 11)
        {
          goto LABEL_210;
        }

        v25 = *((result & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v26 = *(v25 + 16);
        if (!v26)
        {
          goto LABEL_210;
        }

        v231 = v20;
        v232 = v21;
        v233 = v23;
        v234 = v10;
        v242 = v26;
        v243 = v25;
        outlined init with copy of DisplayList.Item(v268, &v264);
        outlined init with copy of DisplayList.Item(v268, &v264);
        result = outlined init with copy of DisplayList.Item(v268, &v264);
        v28 = v242;
        v27 = v243;
        if (!*(v243 + 16))
        {
          goto LABEL_227;
        }

        v29 = 0;
        v30 = v243 + 32;
        v241 = v243 + 32;
        while (2)
        {
          v31 = (v30 + 80 * v29);
          v32 = v31[1];
          v33 = v31[2];
          v34 = v31[3];
          *(v267 + 12) = *(v31 + 60);
          v35 = *v31;
          v266 = v33;
          v267[0] = v34;
          v264 = v35;
          v265 = v32;
          if (DWORD2(v267[1]))
          {
            goto LABEL_91;
          }

          v5 = *(&v266 + 1);
          v36 = v267[0];
          v37 = v267[1];
          v38 = *v1;
          v39 = v1[1] + 1;
          v1[1] = v39;
          v40 = *(v1 + 1);
          *(v1 + 16) = 0;
          v41 = v37 >> 30;
          if (v41 - 2 < 2)
          {
            goto LABEL_81;
          }

          if (v41)
          {
            v244 = v36;
            LODWORD(v248) = v38;
            LODWORD(v249) = v39;
            v72 = *(*(&v36 + 1) + 16);
            if (!v72)
            {
              outlined init with copy of DisplayList.Item(&v264, &v260);
              outlined init with copy of DisplayList.Item(&v264, &v260);

              goto LABEL_78;
            }

            v240 = v5;
            v73 = *(&v36 + 1) + 32;
            outlined init with copy of DisplayList.Item(&v264, &v260);
            outlined init with copy of DisplayList.Item(&v264, &v260);
            v74 = 0;
            v246 = v72;
            v247 = *(&v36 + 1);
            v245 = *(&v36 + 1) + 32;
            while (2)
            {
              v75 = (v73 + 80 * v74);
              v76 = v75[1];
              v77 = v75[2];
              v78 = v75[3];
              *(v263 + 12) = *(v75 + 60);
              v79 = *v75;
              v262 = v77;
              v263[0] = v78;
              v260 = v79;
              v261 = v76;
              if (!DWORD2(v263[1]))
              {
                v80 = *(&v262 + 1);
                v82 = *(&v263[0] + 1);
                v81 = *&v263[0];
                v83 = v263[1];
                v84 = *v1;
                v85 = v1[1] + 1;
                v1[1] = v85;
                v86 = *(v1 + 1);
                *(v1 + 16) = 0;
                v87 = v83 >> 30;
                if (v87 - 2 >= 2)
                {
                  if (v87)
                  {
                    LODWORD(v250) = v84;
                    v251 = v85;
                    v95 = *(v82 + 16);
                    if (v95)
                    {
                      outlined init with copy of DisplayList.Item(&v260, &v256);
                      outlined init with copy of DisplayList.Item(&v260, &v256);
                      v96 = *(v82 + 48);
                      v97 = *(v82 + 80);
                      v258 = *(v82 + 64);
                      v259[0] = v97;
                      *(v259 + 12) = *(v82 + 92);
                      v256 = *(v82 + 32);
                      v257 = v96;
                      DisplayList.Index.skip(item:)(&v256);
                      v98 = v95 - 1;
                      if (v98)
                      {
                        v99 = (v82 + 112);
                        do
                        {
                          v257 = v99[1];
                          v258 = v99[2];
                          v259[0] = v99[3];
                          *(v259 + 12) = *(v99 + 60);
                          v100 = *v99;
                          v99 += 5;
                          v256 = v100;
                          DisplayList.Index.skip(item:)(&v256);
                          --v98;
                        }

                        while (v98);
                      }
                    }

                    else
                    {
                      outlined init with copy of DisplayList.Item(&v260, &v256);
                      outlined init with copy of DisplayList.Item(&v260, &v256);
                    }

                    *&v256 = v80;
                    DWORD2(v256) = v81;
                    BYTE12(v256) = BYTE4(v81);
                    DisplayList.Index.skip(effect:)(&v256);
                    outlined consume of DisplayList.Effect(v80, v81, SBYTE4(v81));
                    outlined destroy of DisplayList.Item(&v260);
                    v72 = v246;
                    v73 = v245;
LABEL_66:
                    v85 = v251;
                    v84 = v250;
                  }

                  else if (v80 >> 60 == 11)
                  {
                    v88 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                    v89 = *(v88 + 16);
                    if (v89)
                    {
                      LODWORD(v250) = v84;
                      v251 = v85;
                      outlined init with copy of DisplayList.Item(&v260, &v256);
                      v90 = *(v88 + 48);
                      v91 = *(v88 + 80);
                      v258 = *(v88 + 64);
                      v259[0] = v91;
                      *(v259 + 12) = *(v88 + 92);
                      v256 = *(v88 + 32);
                      v257 = v90;
                      DisplayList.Index.skip(item:)(&v256);
                      v92 = v89 - 1;
                      if (v92)
                      {
                        v93 = (v88 + 112);
                        do
                        {
                          v257 = v93[1];
                          v258 = v93[2];
                          v259[0] = v93[3];
                          *(v259 + 12) = *(v93 + 60);
                          v94 = *v93;
                          v93 += 5;
                          v256 = v94;
                          DisplayList.Index.skip(item:)(&v256);
                          --v92;
                        }

                        while (v92);
                      }

                      outlined destroy of DisplayList.Item(&v260);
                      goto LABEL_66;
                    }
                  }
                }

                v101 = *(v1 + 16);
                if ((v101 & 0xC) != 0)
                {
                  v102 = *v1;
                  if ((v1[4] & 4) != 0)
                  {
                    *v1 = *(v1 + 1);
                  }

                  if ((v101 & 8) != 0)
                  {
                    *(v1 + 1) = v102;
                  }
                }

                if (v101)
                {
                  *v1 = v84;
                  v1[1] = v85;
                }

                if ((v101 & 2) != 0)
                {
                  *(v1 + 1) = v86;
                }

                *(v1 + 16) = 0;
              }

              if (++v74 == v72)
              {

                v5 = v240;
LABEL_78:
                *&v260 = v5;
                v103 = v244;
                DWORD2(v260) = v244;
                BYTE12(v260) = BYTE4(v244);
                DisplayList.Index.skip(effect:)(&v260);
                outlined consume of DisplayList.Effect(v5, v103, SBYTE4(v103));
                goto LABEL_80;
              }

              continue;
            }
          }

          if (v5 >> 60 != 11)
          {
            goto LABEL_81;
          }

          v42 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v43 = *(v42 + 16);
          if (!v43)
          {
            goto LABEL_81;
          }

          LODWORD(v248) = v38;
          LODWORD(v249) = v39;
          v44 = v42 + 32;
          outlined init with copy of DisplayList.Item(&v264, &v260);
          outlined init with copy of DisplayList.Item(&v264, &v260);
          outlined init with copy of DisplayList.Item(&v264, &v260);
          v45 = 0;
          v246 = v44;
          v247 = v43;
          do
          {
            v46 = (v44 + 80 * v45);
            v47 = v46[1];
            v48 = v46[2];
            v49 = v46[3];
            *(v263 + 12) = *(v46 + 60);
            v50 = *v46;
            v262 = v48;
            v263[0] = v49;
            v260 = v50;
            v261 = v47;
            if (DWORD2(v263[1]))
            {
              goto LABEL_19;
            }

            v5 = *(&v262 + 1);
            v51 = *(&v263[0] + 1);
            v52 = *&v263[0];
            v53 = v263[1];
            v54 = *v1;
            v55 = v1[1] + 1;
            v1[1] = v55;
            v56 = *(v1 + 1);
            *(v1 + 16) = 0;
            v57 = v53 >> 30;
            if (v57 - 2 >= 2)
            {
              if (v57)
              {
                v251 = v54;
                LODWORD(v250) = v55;
                v64 = *(v51 + 16);
                if (v64)
                {
                  outlined init with copy of DisplayList.Item(&v260, &v256);
                  outlined init with copy of DisplayList.Item(&v260, &v256);
                  v65 = *(v51 + 48);
                  v66 = *(v51 + 80);
                  v258 = *(v51 + 64);
                  v259[0] = v66;
                  *(v259 + 12) = *(v51 + 92);
                  v256 = *(v51 + 32);
                  v257 = v65;
                  DisplayList.Index.skip(item:)(&v256);
                  v67 = v64 - 1;
                  if (v67)
                  {
                    v68 = (v51 + 112);
                    do
                    {
                      v257 = v68[1];
                      v258 = v68[2];
                      v259[0] = v68[3];
                      *(v259 + 12) = *(v68 + 60);
                      v69 = *v68;
                      v68 += 5;
                      v256 = v69;
                      DisplayList.Index.skip(item:)(&v256);
                      --v67;
                    }

                    while (v67);
                  }
                }

                else
                {
                  outlined init with copy of DisplayList.Item(&v260, &v256);
                  outlined init with copy of DisplayList.Item(&v260, &v256);
                }

                *&v256 = v5;
                DWORD2(v256) = v52;
                BYTE12(v256) = BYTE4(v52);
                DisplayList.Index.skip(effect:)(&v256);
                outlined consume of DisplayList.Effect(v5, v52, SBYTE4(v52));
                outlined destroy of DisplayList.Item(&v260);
                v44 = v246;
                v43 = v247;
                v55 = v250;
              }

              else
              {
                if (v5 >> 60 != 11)
                {
                  goto LABEL_37;
                }

                v58 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v5 = *(v58 + 16);
                if (!v5)
                {
                  goto LABEL_37;
                }

                v251 = v54;
                v59 = v55;
                outlined init with copy of DisplayList.Item(&v260, &v256);
                v60 = *(v58 + 48);
                v61 = *(v58 + 80);
                v258 = *(v58 + 64);
                v259[0] = v61;
                *(v259 + 12) = *(v58 + 92);
                v256 = *(v58 + 32);
                v257 = v60;
                DisplayList.Index.skip(item:)(&v256);
                if (--v5)
                {
                  v62 = (v58 + 112);
                  do
                  {
                    v257 = v62[1];
                    v258 = v62[2];
                    v259[0] = v62[3];
                    *(v259 + 12) = *(v62 + 60);
                    v63 = *v62;
                    v62 += 5;
                    v256 = v63;
                    DisplayList.Index.skip(item:)(&v256);
                    --v5;
                  }

                  while (v5);
                }

                outlined destroy of DisplayList.Item(&v260);
                v55 = v59;
              }

              v54 = v251;
            }

LABEL_37:
            v70 = *(v1 + 16);
            if ((v70 & 0xC) != 0)
            {
              v71 = *v1;
              if ((v1[4] & 4) != 0)
              {
                *v1 = *(v1 + 1);
              }

              if ((v70 & 8) != 0)
              {
                *(v1 + 1) = v71;
              }
            }

            if (v70)
            {
              *v1 = v54;
              v1[1] = v55;
            }

            if ((v70 & 2) != 0)
            {
              *(v1 + 1) = v56;
            }

            *(v1 + 16) = 0;
LABEL_19:
            ++v45;
          }

          while (v45 != v43);
          outlined destroy of DisplayList.Item(&v264);
          outlined destroy of DisplayList.Item(&v264);
LABEL_80:
          result = outlined destroy of DisplayList.Item(&v264);
          v28 = v242;
          v27 = v243;
          v30 = v241;
          v39 = v249;
          v38 = v248;
LABEL_81:
          v104 = *(v1 + 16);
          if ((v104 & 0xC) != 0)
          {
            v105 = *v1;
            if ((v1[4] & 4) != 0)
            {
              *v1 = *(v1 + 1);
            }

            if ((v104 & 8) != 0)
            {
              *(v1 + 1) = v105;
            }
          }

          if (v104)
          {
            *v1 = v38;
            v1[1] = v39;
          }

          if ((v104 & 2) != 0)
          {
            *(v1 + 1) = v40;
          }

          *(v1 + 16) = 0;
LABEL_91:
          if (++v29 != v28)
          {
            if (v29 >= *(v27 + 16))
            {
LABEL_227:
              __break(1u);
              return result;
            }

            continue;
          }

          break;
        }

        outlined destroy of DisplayList.Item(v268);
        outlined destroy of DisplayList.Item(v268);
        result = outlined destroy of DisplayList.Item(v268);
        v9 = v225;
        v8 = v226;
        v10 = v234;
        v11 = v224;
LABEL_209:
        v21 = v232;
        LOBYTE(v23) = v233;
        v20 = v231;
LABEL_210:
        v218 = *(v1 + 16);
        if ((v218 & 0xC) != 0)
        {
          v219 = *v1;
          if ((v1[4] & 4) != 0)
          {
            *v1 = *(v1 + 1);
          }

          if ((v218 & 8) != 0)
          {
            *(v1 + 1) = v219;
          }
        }

        if (v218)
        {
          *v1 = v20;
          v1[1] = v21;
        }

        if ((v218 & 2) != 0)
        {
          *(v1 + 1) = v22;
        }

        *(v1 + 16) = v23;
LABEL_220:
        if (++v10 == v9)
        {
          return result;
        }

        if (v10 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_223;
        }
      }

      v227 = v17;
      v228 = result;
      v231 = v20;
      v232 = v21;
      v233 = v23;
      v234 = v10;
      v106 = *(v18 + 16);
      if (!v106)
      {
        outlined init with copy of DisplayList.Item(v268, &v264);
        outlined init with copy of DisplayList.Item(v268, &v264);
LABEL_207:

        v217 = v227;
        v216 = v228;
        *&v264 = v228;
        v5 = HIDWORD(v227);
        DWORD2(v264) = v227;
        BYTE12(v264) = BYTE4(v227);
        DisplayList.Index.skip(effect:)(&v264);
        outlined consume of DisplayList.Effect(v216, v217, SBYTE4(v217));
        result = outlined destroy of DisplayList.Item(v268);
        v9 = v225;
        v8 = v226;
        v10 = v234;
        v11 = v224;
        goto LABEL_209;
      }

      outlined init with copy of DisplayList.Item(v268, &v264);
      result = outlined init with copy of DisplayList.Item(v268, &v264);
      if (*(v18 + 16))
      {
        v107 = 0;
        v108 = v18 + 32;
        v237 = v106;
        v238 = v18;
        v235 = v18 + 32;
        while (1)
        {
          v109 = (v108 + 80 * v107);
          v110 = v109[1];
          v111 = v109[2];
          v112 = v109[3];
          *(v267 + 12) = *(v109 + 60);
          v113 = *v109;
          v266 = v111;
          v267[0] = v112;
          v264 = v113;
          v265 = v110;
          if (!DWORD2(v267[1]))
          {
            break;
          }

LABEL_203:
          if (++v107 == v106)
          {
            goto LABEL_207;
          }

          if (v107 >= *(v18 + 16))
          {
            goto LABEL_226;
          }
        }

        v114 = *(&v266 + 1);
        v116 = *(&v267[0] + 1);
        v115 = *&v267[0];
        v117 = v267[1];
        v118 = *v1;
        v119 = v1[1] + 1;
        v1[1] = v119;
        v120 = *(v1 + 1);
        *(v1 + 16) = 0;
        v121 = v117 >> 30;
        if (v121 - 2 < 2)
        {
LABEL_193:
          v214 = *(v1 + 16);
          if ((v214 & 0xC) != 0)
          {
            v215 = *v1;
            if ((v1[4] & 4) != 0)
            {
              *v1 = *(v1 + 1);
            }

            if ((v214 & 8) != 0)
            {
              *(v1 + 1) = v215;
            }
          }

          if (v214)
          {
            *v1 = v118;
            v1[1] = v119;
          }

          if ((v214 & 2) != 0)
          {
            *(v1 + 1) = v120;
          }

          *(v1 + 16) = 0;
          goto LABEL_203;
        }

        if (!v121)
        {
          if (v114 >> 60 != 11)
          {
            goto LABEL_193;
          }

          v122 = *((v114 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v123 = *(v122 + 16);
          if (!v123)
          {
            goto LABEL_193;
          }

          v239 = v118;
          LODWORD(v240) = v119;
          v241 = v107;
          v124 = v122 + 32;
          outlined init with copy of DisplayList.Item(&v264, &v260);
          outlined init with copy of DisplayList.Item(&v264, &v260);
          outlined init with copy of DisplayList.Item(&v264, &v260);
          v125 = 0;
          v249 = v124;
          v250 = v123;
          do
          {
            v126 = (v124 + 80 * v125);
            v127 = v126[1];
            v128 = v126[2];
            v129 = v126[3];
            *(v263 + 12) = *(v126 + 60);
            v130 = *v126;
            v262 = v128;
            v263[0] = v129;
            v260 = v130;
            v261 = v127;
            if (!DWORD2(v263[1]))
            {
              v131 = *(&v262 + 1);
              v133 = *(&v263[0] + 1);
              v132 = *&v263[0];
              v134 = v263[1];
              v135 = *v1;
              v136 = v1[1] + 1;
              v1[1] = v136;
              v137 = *(v1 + 1);
              *(v1 + 16) = 0;
              v138 = v134 >> 30;
              if (v138 - 2 >= 2)
              {
                if (v138)
                {
                  v251 = v135;
                  v147 = *(v133 + 16);
                  if (v147)
                  {
                    outlined init with copy of DisplayList.Item(&v260, &v256);
                    outlined init with copy of DisplayList.Item(&v260, &v256);
                    v148 = *(v133 + 48);
                    v149 = *(v133 + 80);
                    v258 = *(v133 + 64);
                    v259[0] = v149;
                    *(v259 + 12) = *(v133 + 92);
                    v256 = *(v133 + 32);
                    v257 = v148;
                    DisplayList.Index.skip(item:)(&v256);
                    v150 = v147 - 1;
                    if (v150)
                    {
                      v151 = (v133 + 112);
                      do
                      {
                        v257 = v151[1];
                        v258 = v151[2];
                        v259[0] = v151[3];
                        *(v259 + 12) = *(v151 + 60);
                        v152 = *v151;
                        v151 += 5;
                        v256 = v152;
                        DisplayList.Index.skip(item:)(&v256);
                        --v150;
                      }

                      while (v150);
                    }
                  }

                  else
                  {
                    outlined init with copy of DisplayList.Item(&v260, &v256);
                    outlined init with copy of DisplayList.Item(&v260, &v256);
                  }

                  *&v256 = v131;
                  DWORD2(v256) = v132;
                  BYTE12(v256) = BYTE4(v132);
                  DisplayList.Index.skip(effect:)(&v256);
                  outlined consume of DisplayList.Effect(v131, v132, SBYTE4(v132));
                  outlined destroy of DisplayList.Item(&v260);
                  v124 = v249;
                  v123 = v250;
                  v135 = v251;
                }

                else if (v131 >> 60 == 11)
                {
                  v139 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v140 = *(v139 + 16);
                  if (v140)
                  {
                    v141 = v135;
                    outlined init with copy of DisplayList.Item(&v260, &v256);
                    v142 = *(v139 + 48);
                    v143 = *(v139 + 80);
                    v258 = *(v139 + 64);
                    v259[0] = v143;
                    *(v259 + 12) = *(v139 + 92);
                    v256 = *(v139 + 32);
                    v257 = v142;
                    DisplayList.Index.skip(item:)(&v256);
                    v144 = v140 - 1;
                    if (v144)
                    {
                      v145 = (v139 + 112);
                      do
                      {
                        v257 = v145[1];
                        v258 = v145[2];
                        v259[0] = v145[3];
                        *(v259 + 12) = *(v145 + 60);
                        v146 = *v145;
                        v145 += 5;
                        v256 = v146;
                        DisplayList.Index.skip(item:)(&v256);
                        --v144;
                      }

                      while (v144);
                    }

                    outlined destroy of DisplayList.Item(&v260);
                    v135 = v141;
                  }
                }
              }

              v153 = *(v1 + 16);
              if ((v153 & 0xC) != 0)
              {
                v154 = *v1;
                if ((v1[4] & 4) != 0)
                {
                  *v1 = *(v1 + 1);
                }

                if ((v153 & 8) != 0)
                {
                  *(v1 + 1) = v154;
                }
              }

              if (v153)
              {
                *v1 = v135;
                v1[1] = v136;
              }

              if ((v153 & 2) != 0)
              {
                *(v1 + 1) = v137;
              }

              *(v1 + 16) = 0;
            }

            ++v125;
          }

          while (v125 != v123);
          outlined destroy of DisplayList.Item(&v264);
          outlined destroy of DisplayList.Item(&v264);
          result = outlined destroy of DisplayList.Item(&v264);
          v106 = v237;
          v18 = v238;
          goto LABEL_192;
        }

        v239 = v118;
        LODWORD(v240) = v119;
        v241 = v107;
        v155 = *(v116 + 16);
        if (!v155)
        {
          outlined init with copy of DisplayList.Item(&v264, &v260);
          outlined init with copy of DisplayList.Item(&v264, &v260);

LABEL_190:
          *&v260 = v114;
          DWORD2(v260) = v115;
          BYTE12(v260) = BYTE4(v115);
          DisplayList.Index.skip(effect:)(&v260);
          outlined consume of DisplayList.Effect(v114, v115, SBYTE4(v115));
          result = outlined destroy of DisplayList.Item(&v264);
LABEL_192:
          v107 = v241;
          v108 = v235;
          v118 = v239;
          v119 = v240;
          goto LABEL_193;
        }

        v229 = v115;
        v230 = v114;
        v243 = v155;
        outlined init with copy of DisplayList.Item(&v264, &v260);
        result = outlined init with copy of DisplayList.Item(&v264, &v260);
        v156 = v243;
        if (*(v116 + 16))
        {
          v157 = 0;
          v158 = v116 + 32;
          v242 = v116 + 32;
          v236 = v116;
          do
          {
            v159 = (v158 + 80 * v157);
            v160 = v159[1];
            v161 = v159[2];
            v162 = v159[3];
            *(v263 + 12) = *(v159 + 60);
            v163 = *v159;
            v262 = v161;
            v263[0] = v162;
            v260 = v163;
            v261 = v160;
            if (DWORD2(v263[1]))
            {
              goto LABEL_185;
            }

            v164 = *(&v262 + 1);
            v165 = v263[0];
            v166 = v263[1];
            v167 = *v1;
            v168 = v1[1] + 1;
            v1[1] = v168;
            v169 = *(v1 + 1);
            *(v1 + 16) = 0;
            v170 = v166 >> 30;
            if (v170 - 2 >= 2)
            {
              if (v170)
              {
                v244 = v165;
                v245 = v164;
                LODWORD(v247) = v167;
                LODWORD(v246) = v168;
                if (*(*(&v165 + 1) + 16))
                {
                  v250 = *(*(&v165 + 1) + 16);
                  outlined init with copy of DisplayList.Item(&v260, &v256);
                  outlined init with copy of DisplayList.Item(&v260, &v256);
                  v178 = *(&v165 + 1) + 32;
                  v179 = v250;
                  v180 = 0;
                  v248 = *(&v165 + 1) + 32;
                  v249 = *(&v165 + 1);
                  do
                  {
                    v181 = (v178 + 80 * v180);
                    v182 = v181[1];
                    v183 = v181[2];
                    v184 = v181[3];
                    *(v259 + 12) = *(v181 + 60);
                    v185 = *v181;
                    v258 = v183;
                    v259[0] = v184;
                    v256 = v185;
                    v257 = v182;
                    if (!DWORD2(v259[1]))
                    {
                      v186 = *(&v258 + 1);
                      v187 = *(&v259[0] + 1);
                      v188 = *&v259[0];
                      v189 = v259[1];
                      v190 = *v1;
                      v191 = v1[1] + 1;
                      v1[1] = v191;
                      v192 = *(v1 + 1);
                      *(v1 + 16) = 0;
                      v193 = v189 >> 30;
                      if (v193 - 2 >= 2)
                      {
                        if (v193)
                        {
                          v251 = v190;
                          v202 = *(v187 + 16);
                          if (v202)
                          {
                            outlined init with copy of DisplayList.Item(&v256, &v252);
                            outlined init with copy of DisplayList.Item(&v256, &v252);
                            v203 = *(v187 + 48);
                            v204 = *(v187 + 80);
                            v254 = *(v187 + 64);
                            v255[0] = v204;
                            *(v255 + 12) = *(v187 + 92);
                            v252 = *(v187 + 32);
                            v253 = v203;
                            DisplayList.Index.skip(item:)(&v252);
                            v205 = v202 - 1;
                            if (v202 != 1)
                            {
                              v206 = (v187 + 112);
                              do
                              {
                                v253 = v206[1];
                                v254 = v206[2];
                                v255[0] = v206[3];
                                *(v255 + 12) = *(v206 + 60);
                                v207 = *v206;
                                v206 += 5;
                                v252 = v207;
                                DisplayList.Index.skip(item:)(&v252);
                                --v205;
                              }

                              while (v205);
                            }
                          }

                          else
                          {
                            outlined init with copy of DisplayList.Item(&v256, &v252);
                            outlined init with copy of DisplayList.Item(&v256, &v252);
                          }

                          *&v252 = v186;
                          DWORD2(v252) = v188;
                          BYTE12(v252) = BYTE4(v188);
                          DisplayList.Index.skip(effect:)(&v252);
                          outlined consume of DisplayList.Effect(v186, v188, SBYTE4(v188));
                          outlined destroy of DisplayList.Item(&v256);
                          v179 = v250;
                          v178 = v248;
                          v190 = v251;
                        }

                        else if (v186 >> 60 == 11)
                        {
                          v194 = *((v186 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                          v195 = *(v194 + 16);
                          if (v195)
                          {
                            v196 = v190;
                            outlined init with copy of DisplayList.Item(&v256, &v252);
                            v197 = *(v194 + 48);
                            v198 = *(v194 + 80);
                            v254 = *(v194 + 64);
                            v255[0] = v198;
                            *(v255 + 12) = *(v194 + 92);
                            v252 = *(v194 + 32);
                            v253 = v197;
                            DisplayList.Index.skip(item:)(&v252);
                            v199 = v195 - 1;
                            if (v199)
                            {
                              v200 = (v194 + 112);
                              do
                              {
                                v253 = v200[1];
                                v254 = v200[2];
                                v255[0] = v200[3];
                                *(v255 + 12) = *(v200 + 60);
                                v201 = *v200;
                                v200 += 5;
                                v252 = v201;
                                DisplayList.Index.skip(item:)(&v252);
                                --v199;
                              }

                              while (v199);
                            }

                            outlined destroy of DisplayList.Item(&v256);
                            v179 = v250;
                            v178 = v248;
                            v190 = v196;
                          }
                        }
                      }

                      v208 = *(v1 + 16);
                      if ((v208 & 0xC) != 0)
                      {
                        v209 = *v1;
                        if ((v1[4] & 4) != 0)
                        {
                          *v1 = *(v1 + 1);
                        }

                        if ((v208 & 8) != 0)
                        {
                          *(v1 + 1) = v209;
                        }
                      }

                      if (v208)
                      {
                        *v1 = v190;
                        v1[1] = v191;
                      }

                      if ((v208 & 2) != 0)
                      {
                        *(v1 + 1) = v192;
                      }

                      *(v1 + 16) = 0;
                    }

                    ++v180;
                  }

                  while (v180 != v179);

                  v106 = v237;
                  v18 = v238;
                  v116 = v236;
                }

                else
                {
                  outlined init with copy of DisplayList.Item(&v260, &v256);
                  outlined init with copy of DisplayList.Item(&v260, &v256);
                }

                v211 = v244;
                v210 = v245;
                *&v256 = v245;
                DWORD2(v256) = v244;
                BYTE12(v256) = BYTE4(v244);
                DisplayList.Index.skip(effect:)(&v256);
                outlined consume of DisplayList.Effect(v210, v211, SBYTE4(v211));
                result = outlined destroy of DisplayList.Item(&v260);
                v158 = v242;
                v156 = v243;
                v168 = v246;
              }

              else
              {
                if (v164 >> 60 != 11)
                {
                  goto LABEL_175;
                }

                v171 = *((v164 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v172 = *(v171 + 16);
                if (!v172)
                {
                  goto LABEL_175;
                }

                LODWORD(v247) = v167;
                outlined init with copy of DisplayList.Item(&v260, &v256);
                v173 = *(v171 + 48);
                v174 = *(v171 + 80);
                v258 = *(v171 + 64);
                v259[0] = v174;
                *(v259 + 12) = *(v171 + 92);
                v256 = *(v171 + 32);
                v257 = v173;
                DisplayList.Index.skip(item:)(&v256);
                v175 = v172 - 1;
                if (v175)
                {
                  v176 = (v171 + 112);
                  do
                  {
                    v257 = v176[1];
                    v258 = v176[2];
                    v259[0] = v176[3];
                    *(v259 + 12) = *(v176 + 60);
                    v177 = *v176;
                    v176 += 5;
                    v256 = v177;
                    DisplayList.Index.skip(item:)(&v256);
                    --v175;
                  }

                  while (v175);
                }

                result = outlined destroy of DisplayList.Item(&v260);
                v158 = v242;
                v156 = v243;
              }

              v167 = v247;
            }

LABEL_175:
            v212 = *(v1 + 16);
            if ((v212 & 0xC) != 0)
            {
              v213 = *v1;
              if ((v1[4] & 4) != 0)
              {
                *v1 = *(v1 + 1);
              }

              if ((v212 & 8) != 0)
              {
                *(v1 + 1) = v213;
              }
            }

            if (v212)
            {
              *v1 = v167;
              v1[1] = v168;
            }

            if ((v212 & 2) != 0)
            {
              *(v1 + 1) = v169;
            }

            *(v1 + 16) = 0;
LABEL_185:
            if (++v157 == v156)
            {

              v115 = v229;
              v114 = v230;
              goto LABEL_190;
            }
          }

          while (v157 < *(v116 + 16));
        }

        __break(1u);
      }

LABEL_226:
      __break(1u);
      goto LABEL_227;
    }
  }

  return result;
}