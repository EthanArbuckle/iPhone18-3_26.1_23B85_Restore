uint64_t AnimatableMaterialProviderBox.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2 + *(v4 + 216), v5, v6);
  return _AnyAnimatableData.init<A>(_:)(v8, v5, *(v4 + 240), a2);
}

float Color.Resolved.animatableData.getter(float a1, float a2, float a3, float32_t a4)
{
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((static Color.Resolved.legacyInterpolation & 1) == 0)
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v9, a1, LODWORD(a2), a3, a4);
    a1 = v9.f32[0];
  }

  return a1 * 128.0;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 3);
          if (v13 >= *(v12 - 1))
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 4);
          v16 = v12[40];
          v17 = *(v12 + 11);
          v18 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v18;
          *(v12 - 2) = v14;
          *(v12 - 1) = v13;
          *v12 = v15;
          v12[8] = v16;
          *(v12 + 3) = v17;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 1);
          if (v13 >= *(v12 - 3))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 3) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (v13 >= *v12)
          {
            break;
          }

          v14 = *(v12 + 3);
          v15 = *(v12 + 40);
          v16 = *(v12 + 8);
          *(v12 + 24) = *(v12 - 8);
          *(v12 + 40) = v16;
          *(v12 - 1) = v14;
          *v12 = v13;
          *(v12 + 8) = v15;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for ClosedRange<CGFloat>();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = v12[24];
          if (v13 >= v12[8])
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          v12[8] = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t initializeWithCopy for _ShapeSet.Element(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);

  return a1;
}

void *assignWithCopy for PathSet(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

_DWORD *specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v250 = *MEMORY[0x1E69E9840];
  v223 = type metadata accessor for OSSignpostID();
  v219 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v11 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v201 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v221 = &v201 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v201 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v222 = &v201 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v212 = &v201 - v23;
  if (*(a4 + 40))
  {
    Value = AGGraphGetValue();
    if (v25)
    {
      v26 = *Value;
    }

    else
    {
      v26 = -INFINITY;
    }
  }

  else
  {
    v26 = -INFINITY;
  }

  result = AGGraphGetValue();
  if (*(a4 + 48) != *result >> 1)
  {
    specialized AnimatableAttributeHelper.reset()();
    *(a1 + 16) = 1;
LABEL_11:
    _ShapeSet.Wrapper.animatableData.getter(&v231);
    v29 = *(a4 + 16);
    v30 = v231;
    if (!v29)
    {
      goto LABEL_127;
    }

    v220 = *&v11;
    v4 = *(a4 + 32);
    v31 = *(a4 + 24);
    v32 = v232;
    v5 = v233;

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20KeyedAnimatableArrayV7ElementVySiAC04_AnyE4DataV_G_Tt1g5(v30, v29) & 1) != 0 && ((v32 ^ v31) & 1) == 0 && v5 == v4)
    {

      goto LABEL_127;
    }

    v218 = *&a2;
    v203 = v19;
    v202 = v14;
    v206 = v29;
    v207 = a3;
    AGGraphClearUpdate();
    v33 = *(a4 + 16);
    v246 = *a4;
    v247 = v33;
    v248 = *(a4 + 32);
    v211 = a4;
    v249 = *(a4 + 48);
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v246, &v240, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeSet.Wrapper>, lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper, &type metadata for _ShapeSet.Wrapper, type metadata accessor for AnimatableAttributeHelper);
    v34 = *AGGraphGetValue();

    v35 = v34;
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v246, &lazy cache variable for type metadata for AnimatableAttributeHelper<_ShapeSet.Wrapper>, lazy protocol witness table accessor for type _ShapeSet.Wrapper and conformance _ShapeSet.Wrapper, &type metadata for _ShapeSet.Wrapper, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v208 = Transaction.effectiveAnimation.getter(v34);
    if (v208)
    {
      v36 = v206;
    }

    else
    {
      a3 = v207;
      v36 = v206;
      if (v218 == 0.0)
      {

        a4 = v211;
        goto LABEL_127;
      }
    }

    v37 = *(&v248 + 1);
    v228 = v30;
    v229 = v32;
    v230 = v5;

    _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(&v228, v36, v31 & 1);
    v38 = v5 - v4;
    v230 = v38;
    v26 = *AGGraphGetValue();
    v213 = a1;
    v204 = v35;
    if (*&v37 != 0.0)
    {
      v39 = v228;
      v40 = v229;

      LOBYTE(v240) = 0;
      v41 = v208;
      v205 = v37;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v208, v39, v40, v35, v38, v26);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v37) = CurrentAttribute;
      v43 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v44) = 0;
      }

      else
      {
        LODWORD(v44) = CurrentAttribute;
      }

      (*(*v41 + 96))(&v234);
      v45 = v234;
      v46 = v235;
      v47 = v236;
      v48 = v237;
      v49 = v238;
      v50 = v239;
      *&v227 = NAN;
      v226 = NAN;
      *&v225 = 1.0;
      v224 = NAN;
      v240 = v234;
      v241 = v235;
      v242 = *&v236;
      v243 = *&v237;
      v244 = *&v238;
      LOBYTE(v245) = v239;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v240, &v227, &v226, &v225, &v224);
      v4 = *&v227;
      v5 = v226;
      v51 = *&v225;
      v52 = v224;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_215;
      }

      goto LABEL_25;
    }

    v60 = v228;
    v61 = v229;
    v234 = &type metadata for _ShapeSet.Wrapper;
    type metadata accessor for _ShapeSet.Wrapper.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Type, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);

    v62 = swift_dynamicCast();
    if (v62)
    {
      v63 = v240;
    }

    else
    {
      v63 = 0;
    }

    if (v62)
    {
      v64 = v241;
    }

    else
    {
      v64 = 0;
    }

    v65 = v208;

    v67 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAA05KeyedU5ArrayVySiAA04_AnyU4DataVG12CoreGraphics7CGFloatVG_Tt4B5(v66, v60, v61, v35, v63, v64, v38, v26);
    v68 = AGGraphGetCurrentAttribute();
    v69 = v68;
    v43 = *MEMORY[0x1E698D3F8];
    if (v68 == *MEMORY[0x1E698D3F8])
    {
      v70 = 0;
    }

    else
    {
      v70 = v68;
    }

    LODWORD(v221) = v70;
    (*(*v65 + 96))(&v234);
    v71 = v234;
    v72 = v235;
    v73 = v236;
    v74 = v237;
    v75 = v238;
    v76 = v239;
    *&v227 = NAN;
    v226 = NAN;
    *&v225 = 1.0;
    v224 = NAN;
    v240 = v234;
    v241 = v235;
    v242 = *&v236;
    v243 = *&v237;
    v244 = *&v238;
    LOBYTE(v245) = v239;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v240, &v227, &v226, &v225, &v224);
    v4 = *&v227;
    v5 = v226;
    v77 = *&v225;
    *&v78 = v224;
    if (one-time initialization token for enabledCategories != -1)
    {
      v218 = *&v225;
      v217 = *&v224;
      swift_once();
      v78 = v217;
      v77 = v218;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v79 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      v205 = v67;
      if (v79)
      {
        v217 = v74;
        LODWORD(v218) = v76;
        v80 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v81 = *(v80 + 16);
          LODWORD(v240) = v221;
          BYTE4(v240) = v69 == v43;
          v241 = &type metadata for _ShapeSet.Wrapper;
          v242 = v4;
          v243 = v5;
          v244 = v77;
          v245 = *&v78;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v82 = v81;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v71, v72, v73, v217, v75, LOBYTE(v218));
        }

        else
        {
          outlined consume of Animation.Function(v71, v72, v73, v217, v75, LOBYTE(v218));
        }
      }

      else
      {
        outlined consume of Animation.Function(v71, v72, v73, v74, v75, v76);
      }

      v124 = one-time initialization token for animationState;

      if (v124 == -1)
      {
        goto LABEL_89;
      }
    }

    swift_once();
LABEL_89:
    v37 = *(&static Signpost.animationState + 1);
    v89 = static Signpost.animationState;
    v91 = word_1ED5283E8;
    v94 = HIBYTE(word_1ED5283E8);
    v125 = byte_1ED5283EA;
    v92 = static os_signpost_type_t.begin.getter();
    v240 = v89;
    v241 = v37;
    LOBYTE(v242) = v91;
    BYTE1(v242) = v94;
    BYTE2(v242) = v125;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v134 = v205;

      goto LABEL_125;
    }

    v126 = one-time initialization token for _signpostLog;

    if (v126 != -1)
    {
      goto LABEL_222;
    }

    goto LABEL_91;
  }

  if (*(a1 + 16) == 1)
  {
    goto LABEL_11;
  }

  v28 = *(a4 + 40);
  if (!v28)
  {
    return result;
  }

  while (1)
  {
    v211 = a4;

    _ShapeSet.Wrapper.animatableData.getter(&v231);
    LOBYTE(v246) = 0;
    v155 = specialized AnimatorState.update(_:at:environment:)(&v231, a3, v26);
    v156 = AGGraphGetCurrentAttribute();
    v43 = *MEMORY[0x1E698D3F8];
    v157 = v156 == *MEMORY[0x1E698D3F8] ? 0 : v156;
    v213 = a1;
    v210 = v28;
    if ((v155 & 1) == 0)
    {
      break;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      v199 = v156;
      swift_once();
      v156 = v199;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_210;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v246) = v157;
      BYTE4(v246) = v156 == v43;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v158 = one-time initialization token for animationState;

    if (v158 != -1)
    {
      goto LABEL_212;
    }

LABEL_139:
    v45 = *(&static Signpost.animationState + 1);
    v44 = static Signpost.animationState;
    v50 = word_1ED5283E8;
    v47 = HIBYTE(word_1ED5283E8);
    v159 = byte_1ED5283EA;
    v48 = static os_signpost_type_t.end.getter();
    v246 = __PAIR128__(v45, v44);
    LOBYTE(v247) = v50;
    BYTE1(v247) = v47;
    BYTE2(v247) = v159;
    v49 = &v246;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_181:
      specialized AnimatorState.removeListeners()();

      *(v211 + 40) = 0;
      goto LABEL_182;
    }

    v160 = one-time initialization token for _signpostLog;

    if (v160 != -1)
    {
      swift_once();
    }

    v46 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v37 = COERCE_DOUBLE(swift_allocObject());
    *(v37 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v43)
    {
      __break(1u);
    }

    else
    {
      v49 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v162 = MEMORY[0x1E69E6870];
      *(v37 + 56) = MEMORY[0x1E69E6810];
      *(v37 + 64) = v162;
      *(v37 + 32) = Counter;
      v163 = AGGraphGetCurrentAttribute();
      if (v163 != v43)
      {
        v164 = MEMORY[0x1E69E76D0];
        *(v37 + 96) = MEMORY[0x1E69E7668];
        *(v37 + 104) = v164;
        *(v37 + 72) = v163;
        *(v37 + 136) = MEMORY[0x1E69E6158];
        *(v37 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v37 + 112) = 0x72657070617257;
        *(v37 + 120) = 0xE700000000000000;
        if (v47)
        {
          LOBYTE(v226) = v48;
          v234 = &dword_18D018000;
          v228 = v46;
          *&v246 = v44;
          *(&v246 + 1) = v45;
          LOBYTE(v247) = v50;
          v240 = "Animation: (%p) [%d] %{public}@ ended";
          v241 = 37;
          LOBYTE(v242) = 2;
          v227 = v37;
          v165 = v212;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

          (*(v219 + 8))(v165, v223);
        }

        else
        {
          v166 = v44;
          if (v44 == 20)
          {
            v167 = 3;
          }

          else
          {
            v167 = 4;
          }

          v112 = bswap32(v44) | (4 * WORD1(v44));
          v106 = v48;
          v168 = v219 + 16;
          v214 = *(v219 + 16);
          v169 = v214(v222, v212, v223);
          v170 = 0;
          LOBYTE(v240) = 1;
          v221 = v167;
          v217 = 16 * v167;
          v219 = v168;
          *&v218 = v168 - 8;
          v216 = v37 + 32;
          v215 = v166;
          do
          {
            v220 = COERCE_DOUBLE(&v201);
            MEMORY[0x1EEE9AC00](v169);
            v172 = &v201 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
            v103 = (v172 + 8);
            v173 = v221;
            v174 = v172 + 8;
            do
            {
              *(v174 - 1) = 0;
              *v174 = 0;
              v174 += 16;
              --v173;
            }

            while (v173);
            v175 = v216 + 40 * v170;
            v176 = v221;
            while (1)
            {
              v177 = *(v37 + 16);
              if (v170 == v177)
              {
                break;
              }

              if (v170 >= v177)
              {
                __break(1u);
                goto LABEL_203;
              }

              ++v170;
              outlined init with copy of AnyTrackedValue(v175, &v246);
              v178 = *(&v247 + 1);
              __swift_project_boxed_opaque_existential_1(&v246, *(&v247 + 1));
              *(v103 - 8) = CVarArg.kdebugValue(_:)(v112 | v106, v178);
              *v103 = v179 & 1;
              v103 += 16;
              __swift_destroy_boxed_opaque_existential_1(&v246);
              v175 += 40;
              if (!--v176)
              {
                goto LABEL_165;
              }
            }

            LOBYTE(v240) = 0;
LABEL_165:
            v180 = v215;
            if (v215 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v172[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v172[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v172[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v180 != 20 && v172[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v181 = **&v218;
            v182 = v222;
            v183 = v223;
            (**&v218)(v222, v223);
            v184 = __swift_project_value_buffer(v183, static OSSignpostID.continuation);
            v169 = v214(v182, v184, v183);
          }

          while ((v240 & 1) != 0);

          v185 = v223;
          v181(v222, v223);
          v181(v212, v185);
        }

        a1 = v213;
        goto LABEL_181;
      }
    }

    __break(1u);
LABEL_215:
    v220 = v51;
    v218 = v52;
    swift_once();
    v52 = v218;
    v51 = v220;
LABEL_25:
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v53 = v44;
        v54 = v49;
        v55 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v56 = v37 == v43;
          LODWORD(v220) = v50;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v57 = *(v55 + 16);
          LODWORD(v240) = v53;
          BYTE4(v240) = v56;
          v241 = &type metadata for _ShapeSet.Wrapper;
          v242 = v4;
          v243 = v5;
          v244 = v51;
          v245 = v52;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v218 = v58;

          v59 = v57;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v45, v46, v47, v48, v54, LOBYTE(v220));

          goto LABEL_49;
        }

        v83 = v45;
        v84 = v46;
        v85 = v47;
        v86 = v48;
        v87 = v54;
      }

      else
      {
        v83 = v45;
        v84 = v46;
        v85 = v47;
        v86 = v48;
        v87 = v49;
      }

      outlined consume of Animation.Function(v83, v84, v85, v86, v87, v50);
LABEL_49:
      v88 = one-time initialization token for animationState;

      if (v88 == -1)
      {
        goto LABEL_50;
      }

      goto LABEL_217;
    }

    __break(1u);
LABEL_217:
    swift_once();
LABEL_50:
    v90 = *(&static Signpost.animationState + 1);
    v89 = static Signpost.animationState;
    v91 = word_1ED5283E8;
    v92 = HIBYTE(word_1ED5283E8);
    v93 = byte_1ED5283EA;
    v94 = static os_signpost_type_t.event.getter();
    v240 = v89;
    v241 = v90;
    LOBYTE(v242) = v91;
    BYTE1(v242) = v92;
    BYTE2(v242) = v93;
    if (Signpost.isEnabled.getter())
    {
      v95 = one-time initialization token for _signpostLog;

      if (v95 != -1)
      {
        swift_once();
      }

      v96 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v37 = COERCE_DOUBLE(swift_allocObject());
      *(v37 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v43)
      {
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        swift_once();
LABEL_91:
        v127 = COERCE_DOUBLE(_signpostLog);
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        *&v103 = COERCE_DOUBLE(swift_allocObject());
        *(v103 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v43)
        {
          __break(1u);
LABEL_224:
          __break(1u);
        }

        v128 = AGGraphGetAttributeGraph();
        v129 = AGGraphGetCounter();

        v130 = MEMORY[0x1E69E6870];
        *(v103 + 56) = MEMORY[0x1E69E6810];
        *(v103 + 64) = v130;
        *(v103 + 32) = v129;
        v131 = AGGraphGetCurrentAttribute();
        if (v131 == v43)
        {
          goto LABEL_224;
        }

        v132 = MEMORY[0x1E69E76D0];
        *(v103 + 96) = MEMORY[0x1E69E7668];
        *(v103 + 104) = v132;
        *(v103 + 72) = v131;
        *(v103 + 136) = MEMORY[0x1E69E6158];
        *(v103 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v103 + 112) = 0x72657070617257;
        *(v103 + 120) = 0xE700000000000000;
        if (v94)
        {
          LOBYTE(v224) = v92;
          *&v227 = COERCE_DOUBLE(&dword_18D018000);
          v226 = v127;
          v240 = v89;
          v241 = v37;
          LOBYTE(v242) = v91;
          v234 = "Animation: (%p) [%d] %{public}@ started";
          v235 = 39;
          LOBYTE(v236) = 2;
          v225 = v103;
          v133 = v202;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          v134 = v205;

          (*(v219 + 8))(v133, v223);
        }

        else
        {
          if (v89 == 20)
          {
            v37 = 3;
          }

          else
          {
            v37 = 4;
          }

          v135 = bswap32(v89) | (4 * (v89 >> 16));
          v112 = v92;
          v136 = v219 + 16;
          v209 = *(v219 + 16);
          v137 = v209(*&v220, v202, v223);
          v138 = 0;
          LOBYTE(v234) = 1;
          v217 = 16 * v37;
          v210 = v136;
          *&v218 = v136 - 8;
          v216 = v103 + 32;
          v215 = v89;
          v214 = v37;
          do
          {
            v221 = &v201;
            MEMORY[0x1EEE9AC00](v137);
            v140 = &v201 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
            v106 = (v140 + 8);
            v141 = v37;
            v142 = v140 + 8;
            do
            {
              *(v142 - 1) = 0;
              *v142 = 0;
              v142 += 16;
              --v141;
            }

            while (v141);
            v143 = v216 + 40 * v138;
            while (1)
            {
              v144 = *(v103 + 16);
              if (v138 == v144)
              {
                break;
              }

              if (v138 >= v144)
              {
                goto LABEL_206;
              }

              ++v138;
              outlined init with copy of AnyTrackedValue(v143, &v240);
              v145 = *&v243;
              __swift_project_boxed_opaque_existential_1(&v240, *&v243);
              *(v106 - 8) = CVarArg.kdebugValue(_:)(v135 | v112, v145);
              *v106 = v146 & 1;
              v106 += 16;
              __swift_destroy_boxed_opaque_existential_1(&v240);
              v143 += 40;
              --v37;
              if (*&v37 == 0.0)
              {
                goto LABEL_108;
              }
            }

            LOBYTE(v234) = 0;
LABEL_108:
            v147 = v215;
            if (v215 == 20)
            {
              v148 = v220;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v148 = v220;
            }

            v37 = v214;
            if (v140[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v140[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v140[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v147 != 20 && v140[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v149 = **&v218;
            v150 = v223;
            (**&v218)(COERCE_DOUBLE(*&v148), v223);
            v151 = __swift_project_value_buffer(v150, static OSSignpostID.continuation);
            v137 = v209(*&v148, v151, v150);
          }

          while ((v234 & 1) != 0);
          v134 = v205;

          v152 = v223;
          v149(*&v220, v223);
          v149(v202, v152);
        }

LABEL_125:
        a4 = v211;
        *(v211 + 40) = v134;
        goto LABEL_126;
      }

      v97 = AGGraphGetAttributeGraph();
      v98 = AGGraphGetCounter();

      v99 = MEMORY[0x1E69E6870];
      *(v37 + 56) = MEMORY[0x1E69E6810];
      *(v37 + 64) = v99;
      *(v37 + 32) = v98;
      v100 = AGGraphGetCurrentAttribute();
      if (v100 == v43)
      {
        goto LABEL_221;
      }

      v101 = MEMORY[0x1E69E76D0];
      *(v37 + 96) = MEMORY[0x1E69E7668];
      *(v37 + 104) = v101;
      *(v37 + 72) = v100;
      *(v37 + 136) = MEMORY[0x1E69E6158];
      *(v37 + 144) = lazy protocol witness table accessor for type String and conformance String();
      *(v37 + 112) = 0x72657070617257;
      *(v37 + 120) = 0xE700000000000000;
      if (v92)
      {
        LOBYTE(v224) = v94;
        *&v227 = COERCE_DOUBLE(&dword_18D018000);
        v226 = v96;
        v240 = v89;
        v241 = v90;
        LOBYTE(v242) = v91;
        v234 = "Animation: (%p) [%d] %{public}@ updated";
        v235 = 39;
        LOBYTE(v236) = 2;
        v225 = v37;
        v102 = v203;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

        (*(v219 + 8))(v102, v223);
      }

      else
      {
        v103 = v89;
        if (v89 == 20)
        {
          v104 = 3;
        }

        else
        {
          v104 = 4;
        }

        v105 = bswap32(v89) | (4 * (v89 >> 16));
        v106 = v94;
        v107 = v219 + 16;
        v209 = *(v219 + 16);
        v108 = v209(v221, v203, v223);
        v109 = 0;
        LOBYTE(v234) = 1;
        v217 = 16 * v104;
        v210 = v107;
        *&v218 = v107 - 8;
        v216 = v37 + 32;
        v215 = v103;
        v214 = v104;
        do
        {
          v220 = COERCE_DOUBLE(&v201);
          MEMORY[0x1EEE9AC00](v108);
          v111 = &v201 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
          v112 = (v111 + 8);
          v113 = v104;
          v114 = v111 + 8;
          do
          {
            *(v114 - 1) = 0;
            *v114 = 0;
            v114 += 16;
            --v113;
          }

          while (v113);
          v115 = v216 + 40 * v109;
          while (1)
          {
            v116 = *(v37 + 16);
            if (v109 == v116)
            {
              break;
            }

            if (v109 >= v116)
            {
LABEL_203:
              __break(1u);
              goto LABEL_204;
            }

            ++v109;
            outlined init with copy of AnyTrackedValue(v115, &v240);
            v117 = *&v243;
            *&v103 = v244;
            __swift_project_boxed_opaque_existential_1(&v240, *&v243);
            *(v112 - 8) = CVarArg.kdebugValue(_:)(v105 | v106, v117);
            *v112 = v118 & 1;
            v112 += 16;
            __swift_destroy_boxed_opaque_existential_1(&v240);
            v115 += 40;
            if (!--v104)
            {
              goto LABEL_70;
            }
          }

          LOBYTE(v234) = 0;
LABEL_70:
          v103 = v215;
          if (v215 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          v104 = v214;
          if (v111[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v111[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v111[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v103 != 20 && v111[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v119 = **&v218;
          v120 = v221;
          v121 = v223;
          (**&v218)(v221, v223);
          v122 = __swift_project_value_buffer(v121, static OSSignpostID.continuation);
          v108 = v209(v120, v122, v121);
        }

        while ((v234 & 1) != 0);

        v123 = v223;
        v119(v221, v223);
        v119(v203, v123);
      }
    }

    else
    {
    }

    a4 = v211;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v204);

    v30 = v231;
    a1 = v213;
    a3 = v207;
LABEL_127:

    v153 = v232;
    v154 = v233;
    *(a4 + 16) = v30;
    *(a4 + 24) = v153;
    *(a4 + 32) = v154;
    v28 = *(a4 + 40);
    if (!v28)
    {
      return result;
    }
  }

  if (one-time initialization token for enabledCategories == -1)
  {
    goto LABEL_147;
  }

LABEL_210:
  v200 = v156;
  swift_once();
  v156 = v200;
LABEL_147:
  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
LABEL_212:
    swift_once();
    goto LABEL_139;
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
    LODWORD(v246) = v157;
    BYTE4(v246) = v156 == v43;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
    AGGraphAddTraceEvent();
  }

  specialized AnimatorState.nextUpdate()();
LABEL_182:
  v112 = v231;
  v26 = v233;
  v106 = *a1;
  v103 = *(*a1 + 16);
  v37 = *(v231 + 16);
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_207;
  }

  for (; *&v103 != 0.0; v106 = specialized _ArrayBuffer._consumeAndCreateNew()(v106))
  {
    v186 = 0;
    v187 = 0;
    v188 = (v112 + 32);
LABEL_185:
    if (v187 == v37)
    {
      break;
    }

    v189 = &v188[48 * v187];
    v190 = *(v106 + 16);
    if (v186 > v190)
    {
      v190 = v186;
    }

    v191 = (v106 + 32 + 32 * v186);
    while (v190 != v186)
    {
      if (v187 >= *(v112 + 16))
      {
        goto LABEL_205;
      }

      v192 = v191[1];
      if (v192 == *v189)
      {
        outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(v189, &v246, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element, type metadata accessor for KeyedAnimatableArray.Element, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>);
        outlined init with copy of _AnyAnimatableData(&v246 + 1, &v240);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v194 = *v191;
        if (isUniquelyReferenced_nonNull_native)
        {
          outlined init with copy of _AnyAnimatableData(&v240, &v234);
          (*(*v194 + 104))(&v234);
          outlined destroy of _AnyAnimatableData(&v240);
        }

        else
        {
          v195 = (*(*v194 + 120))(&v240);
          v196 = v188;
          v197 = v195;
          outlined destroy of _AnyAnimatableData(&v240);
          *v191 = v197;
          v188 = v196;
        }

        outlined destroy of _AnyAnimatableData(&v246 + 8);
        ++v186;
LABEL_199:
        ++v187;
        if (v186 < v103)
        {
          goto LABEL_185;
        }

        goto LABEL_200;
      }

      if (v192 >= *v189)
      {
        goto LABEL_199;
      }

      ++v186;
      v191 += 4;
      if (v186 >= v103)
      {
        goto LABEL_200;
      }
    }

LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    ;
  }

LABEL_200:
  v198 = v213;
  *v213 = v106;

  result = swift_bridgeObjectRelease_n();
  *(v198 + 1) = v26;
  *(v198 + 16) = 1;
  return result;
}

void _ShapeSet.Wrapper.animatableData.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(*v1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v17;
    v7 = (v3 + 40);
    do
    {
      v8 = *v7;
      v9 = *(**(v7 - 1) + 96);

      v9(v16 + 1, v10);

      *&v16[0] = v8;
      v17 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      v7 += 4;
      *(v6 + 16) = v12 + 1;
      v13 = (v6 + 48 * v12);
      v14 = v16[0];
      v15 = v16[2];
      v13[3] = v16[1];
      v13[4] = v15;
      v13[2] = v14;
      --v5;
    }

    while (v5);
  }

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
}

void type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element()
{
  if (!lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element)
  {
    lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData();
    v0 = type metadata accessor for KeyedAnimatableArray.Element();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
    }
  }
}

uint64_t _SizedShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v6 + 24))(v5, v6, v8);
  v14 = *(v2 + *(a1 + 36));
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v12 = v11;
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>();
  return AnimatablePair.init(_:_:)(v10, &v14, AssociatedTypeWitness, v12, a2);
}

uint64_t OffsetShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v6 + 24))(v5, v6, v8);
  v14 = *(v2 + *(a1 + 36));
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v12 = v11;
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
  return AnimatablePair.init(_:_:)(v10, &v14, AssociatedTypeWitness, v12, a2);
}

unint64_t lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>()
{
  result = lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>;
  if (!lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20KeyedAnimatableArrayV7ElementVySiAC04_AnyE4DataV_G_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = a2 + 32; ; i += 48)
    {
      outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v3, &v9, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
      outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(i, v7, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
      if (v9 != v7[0] || v10 != v7[1])
      {
        break;
      }

      v5 = (*(v10 + 88))(&v11, &v8);
      outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v7, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
      outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v9, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
      if ((v5 & 1) == 0)
      {
        return 0;
      }

      v3 += 48;
      if (!--v2)
      {
        return 1;
      }
    }

    outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v7, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
    outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(&v9, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element);
  }

  return 0;
}

uint64_t *initializeBufferWithCopyOfBuffer for SimultaneousGesture(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

double specialized GeometryProxy.subscript.getter(uint64_t a1)
{
  specialized static Update.begin()();
  v3 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v3;
  v10[2] = *(v1 + 32);
  v11 = *(v1 + 48);
  v4 = GeometryProxy.placementContext.getter(v7);
  if (v9)
  {
    (*(*a1 + 88))(v10, v4);
    v5 = *v10;
  }

  else
  {
    v5 = specialized Anchor.in(_:)(v7[0], v7[1], v7[2], v8, a1);
  }

  static Update.end()();
  return v5;
}

double specialized Anchor.in(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  InputValue = AGGraphGetInputValue();
  v7 = *InputValue;
  v8 = *(InputValue + 8);
  v9 = *(InputValue + 16);
  v10 = *(InputValue + 24);
  v11 = *(InputValue + 32);
  v12 = *(InputValue + 40);
  type metadata accessor for CGPoint(0);

  v13 = AGGraphGetInputValue();
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = v11 - (*v13 - v9);
  v18[0] = v7;
  v18[1] = v8;
  *&v18[2] = v14;
  *&v18[3] = v15;
  *&v18[4] = v16;
  *&v18[5] = v12 - (v15 - v10);
  (*(*a5 + 96))(&v19, v18);

  return v19;
}

void *MaterialEffectTransaction.value.getter(uint64_t a1, uint64_t a2)
{
  v3 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v5 = *(Value + 8);
  v6 = *(Value + 16);
  v7 = *(Value + 24);

  if (*AGGraphGetValue() == v7)
  {
    if ((a2 & 0x100000000) != 0)
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    if (v3)
    {
      if (v8)
      {
        if (v3[3])
        {
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
          swift_allocObject();
          swift_retain_n();

          v9.value = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v8, v3).value;
        }

        else
        {
          v10 = v3[4];
          v11 = *(*v3 + 216);

          v9.value = v11(v12, v10);
        }

        v8 = v9.value;
      }

      else
      {
        v8 = v3;
      }
    }

    else
    {
    }
  }

  else
  {

    return v3;
  }

  return v8;
}

uint64_t Transaction.isAnimated.getter(void *a1)
{
  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (v2)
  {
    v3 = v2[9];
    if (v3)
    {
      v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
      if (v4)
      {
        LOBYTE(v3) = *(v4 + 72) ^ 1;
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t PlatformGlassInteractionContext.glass.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v5;
  outlined copy of _Glass.Variant.Role(v2, v3);
}

uint64_t destroy for PlatformGlassInteractionContext(uint64_t *a1)
{
  outlined consume of _Glass.Variant.Role(*a1, a1[1]);

  if (a1[9] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[6], a1[7]);
  }

  if (a1[15] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[12], a1[13]);
  }

  return swift_weakDestroy();
}

void storeEnumTagSinglePayload for CoreInteractionRepresentableEffect(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);

    v24();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
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
}

uint64_t getEnumTagSinglePayload for CoreInteractionRepresentableEffect(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void *assignWithTake for CoreInteractionRepresentableEffect(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = v13 + 7;
  v15 = ((a1 + v14) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((a2 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;

  *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectRelease();
  return a1;
}

uint64_t _CoreInteractionHelperBox.value<A, B>(as:idType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a4;
  v39 = a6;
  v40 = a7;
  v12 = *v7;
  v13 = *(*v7 + 120);
  v14 = *(*v7 + 136);
  type metadata accessor for CoreInteractionRepresentableEffect();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  if (v13 == a1 && (v20 = v12[16], v20 == a2))
  {
    v26 = v12[19];
    v36 = v17;
    swift_beginAccess();
    v27 = v7 + v26;
    v28 = v36;
    v29 = (*(v16 + 16))(v19, v27, v36);
    v37 = &v35;
    MEMORY[0x1EEE9AC00](v29);
    *(&v35 - 8) = v13;
    *(&v35 - 7) = v20;
    v30 = v38;
    *(&v35 - 6) = a3;
    *(&v35 - 5) = v30;
    v31 = v12[18];
    *(&v35 - 4) = v14;
    *(&v35 - 3) = v31;
    v32 = v39;
    *(&v35 - 2) = a5;
    *(&v35 - 1) = v32;
    v33 = type metadata accessor for CoreInteractionRepresentableEffect();
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _CoreInteractionHelperBox.value<A, B>(as:idType:), (&v35 - 10), MEMORY[0x1E69E73E0], v33, v34, v40);
    return (*(v16 + 8))(v19, v28);
  }

  else
  {
    v21 = type metadata accessor for CoreInteractionRepresentableEffect();
    v22 = *(*(v21 - 8) + 56);
    v23 = v21;
    v24 = v40;

    return v22(v24, 1, 1, v23);
  }
}

void *initializeWithCopy for CoreInteractionRepresentableEffect(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = v12 + 7;
  v14 = ((a1 + v13) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);

  swift_unknownObjectRetain();
  return a1;
}

void *initializeWithTake for CoreInteractionRepresentableEffect(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = v12 + 7;
  v14 = ((a1 + v13) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t closure #1 in _CoreInteractionHelperBox.value<A, B>(as:idType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for CoreInteractionRepresentableEffect() - 8) + 64);
  result = type metadata accessor for CoreInteractionRepresentableEffect();
  if (v4 == *(*(result - 8) + 64))
  {
    return (*(*(result - 8) + 16))(a2, a1, result);
  }

  __break(1u);
  return result;
}

uint64_t MaterialEffectDisplayList.updateValue()()
{
  v1 = v0;
  v113 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  if (v0[6] == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *Value;
    v3 = *(Value + 8);
    v4 = *(Value + 12);
  }

  v101 = v5;
  v102 = v3;
  v103 = v4;
  type metadata accessor for CGPoint(0);
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = v7[1];
  v10 = AGGraphGetValue();
  v11 = v8 - *v10;
  v12 = v9 - v10[1];
  v13 = ++static DisplayList.Version.lastValue;
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for MaterialEffectResolvedData.Data?, &unk_1F00A6040, MEMORY[0x1E69E6720]);
  v14 = AGGraphGetValue();
  v93 = *v14;
  if (!*v14)
  {
    *&__src[0] = v13;
    DisplayList.translate(by:version:)(__PAIR128__(*&v12, *&v11), __src);
    *&__src[0] = v101;
    WORD4(__src[0]) = v102;
    HIDWORD(__src[0]) = v103;
    AGGraphSetOutputValue();
  }

  v94 = v4;
  v15 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v91 = v15;
  v92 = v17;
  v90 = v16;
  if (v17 != 2)
  {
LABEL_8:
    v19 = HIDWORD(v17);
    v112 = 0;
    *&v111[72] = 0x20000000;
    memset(v111, 0, 72);
    type metadata accessor for CGSize(0);
    outlined copy of MaterialEffectResolvedData.Data?(v93, v15, v16, v17);

    v20 = AGGraphGetValue();
    if (v13)
    {
      v21 = (2 * ((33 * (v13 >> 16)) ^ v13)) | 1;
    }

    else
    {
      LOWORD(v21) = 0;
    }

    v22 = *v20;
    v23 = v20[1];
    v24 = *v0;
    v25 = v0[5];
    *&__src[9] = 0;
    DWORD2(__src[9]) = 0;
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v26 = static GraphicsBlendMode.normal;
    v27 = byte_1ED52F818;
    *(&__src[15] + 1) = static GraphicsBlendMode.normal;
    LOBYTE(__src[16]) = byte_1ED52F818;
    DWORD1(__src[16]) = 1065353216;
    BYTE8(__src[16]) = 0;
    *&__src[0] = v93;
    *(&__src[0] + 1) = v91;
    *&__src[4] = 0;
    DWORD2(__src[6]) = 0x20000000;
    WORD6(__src[6]) = v21;
    *&__src[7] = v11;
    *(&__src[7] + 1) = v12;
    *&__src[8] = v22;
    *(&__src[8] + 1) = v23;
    *&__src[10] = v11;
    *(&__src[10] + 1) = v12;
    *&__src[11] = v22;
    *(&__src[11] + 1) = v23;
    __src[12] = v13;
    __src[13] = 0uLL;
    *&__src[14] = 3221225472;
    DWORD2(__src[14]) = v24;
    BYTE12(__src[14]) = 0;
    LODWORD(__src[15]) = v25;
    v97 = v2;
    v28 = v16;
    *&__dst[0] = v16;
    BYTE8(__dst[0]) = v92;
    HIDWORD(__dst[0]) = v19;
    BYTE5(__dst[5]) = 3;
    DWORD2(__dst[5]) = 1065353216;
    *&__dst[6] = 0;
    BYTE8(__dst[6]) = -1;
    *&__dst[7] = v2;
    LOBYTE(v105) = 0;
    outlined copy of Material.ID(v16, v92);
    outlined copy of GraphicsBlendMode(v26, v27);
    _ShapeStyle_Pack.subscript.setter(__dst, &v105, 0);
    LOBYTE(__dst[0]) = 0;
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v111, __src, &v97);
    LOBYTE(__dst[0]) = 0;
    _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v98);
    *&__dst[0] = v13;
    DisplayList.translate(by:version:)(__PAIR128__(*&v12, *&v11), __dst);
    v29 = *(v101 + 16);
    if (v29)
    {
      v30 = 0;
      v95 = v101 + 32;
      v31 = v98;
      while (1)
      {
        v33 = (v95 + 80 * v30);
        v34 = *(v33 + 60);
        v35 = v33[3];
        v36 = v33[1];
        __dst[2] = v33[2];
        __dst[3] = v35;
        *(&__dst[3] + 12) = v34;
        __dst[0] = *v33;
        __dst[1] = v36;
        v37 = *(&__dst[2] + 1);
        v39 = v35;
        v38 = v34 >> 32;
        v40 = DWORD1(v34) >> 30;
        if (DWORD1(v34) >> 30 == 3 && !(*&__dst[3] | *(&__dst[2] + 1) | *(&__dst[3] + 1)) && *&__dst[4] == 3221225472)
        {
          goto LABEL_18;
        }

        outlined init with copy of DisplayList.Item(__dst, &v105);
        outlined init with copy of DisplayList.Item(__dst, &v105);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        }

        v42 = *(v31 + 2);
        v41 = *(v31 + 3);
        if (v42 >= v41 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v31);
        }

        *(v31 + 2) = v42 + 1;
        v43 = &v31[80 * v42];
        *(v43 + 2) = __dst[0];
        v44 = __dst[1];
        v45 = __dst[2];
        v46 = __dst[3];
        *(v43 + 92) = *(&__dst[3] + 12);
        *(v43 + 4) = v45;
        *(v43 + 5) = v46;
        *(v43 + 3) = v44;
        v107 = __dst[2];
        v108[0] = __dst[3];
        *(v108 + 12) = *(&__dst[3] + 12);
        v105 = __dst[0];
        v106 = __dst[1];
        DisplayList.Item.features.getter(&v96);
        v99 |= v96;
        if (v40 > 1)
        {
          if (v40 == 2)
          {
            v47 = *(v37 + 16);
            if (v47)
            {
              if (v47 > 7)
              {
                v48 = v47 & 0x7FFFFFFFFFFFFFF8;
                v50 = (v37 + 188);
                v51 = 0uLL;
                v52 = v47 & 0x7FFFFFFFFFFFFFF8;
                v53 = 0uLL;
                do
                {
                  v54.i32[0] = *(v50 - 30);
                  v54.i32[1] = *(v50 - 20);
                  v54.i32[2] = *(v50 - 10);
                  v54.i32[3] = *v50;
                  v55.i32[0] = v50[10];
                  v55.i32[1] = v50[20];
                  v55.i32[2] = v50[30];
                  v55.i32[3] = v50[40];
                  v51 = vorrq_s8(v54, v51);
                  v53 = vorrq_s8(v55, v53);
                  v50 += 80;
                  v52 -= 8;
                }

                while (v52);
                v56 = vorrq_s8(v53, v51);
                v57 = vorr_s8(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
                v32 = v57.i32[0] | v57.i32[1];
                if (v47 == v48)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                v32 = 0;
                v48 = 0;
              }

              v58 = v47 - v48;
              v59 = (v37 + 40 * v48 + 68);
              do
              {
                v60 = *v59;
                v59 += 10;
                v32 |= v60;
                --v58;
              }

              while (v58);
            }

            else
            {
              v32 = 0;
            }

LABEL_45:
            outlined destroy of DisplayList.Item(__dst);
            goto LABEL_17;
          }
        }

        else
        {
          if (v40)
          {
            switch(BYTE4(v39))
            {
              case 2u:

                v49 = v37;
                break;
              case 7u:
                v49 = *(v37 + 28);
                outlined init with copy of DisplayList.Item(__dst, &v105);
                outlined consume of DisplayList.Effect(v37, v39, 7);

                outlined destroy of DisplayList.Item(__dst);
                break;
              case 0x12u:
                (*(*v37 + 120))(&v96);
                outlined init with copy of DisplayList.Item(__dst, &v105);
                outlined consume of DisplayList.Effect(v37, v39, 18);

                outlined destroy of DisplayList.Item(__dst);
                v49 = v96;
                break;
              default:
                outlined copy of DisplayList.Effect(v37, v39, SBYTE4(v39));

                outlined consume of DisplayList.Effect(v37, v39, SBYTE4(v39));

                outlined destroy of DisplayList.Item(__dst);
                v49 = 0;
                break;
            }

            v32 = v49 | HIDWORD(v38);
            goto LABEL_17;
          }

          if (v37 >> 60 == 6 || v37 >> 60 == 11)
          {
            v32 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            goto LABEL_45;
          }
        }

        outlined destroy of DisplayList.Item(__dst);
        v32 = 0;
LABEL_17:
        v100 |= v32;
LABEL_18:
        if (++v30 == v29)
        {
          v98 = v31;

          v28 = v16;
          goto LABEL_52;
        }
      }
    }

    v31 = v98;
LABEL_52:
    *&v105 = v31;
    WORD4(v105) = v99;
    HIDWORD(v105) = v100;
    AGGraphSetOutputValue();
    outlined consume of MaterialEffectResolvedData.Data?(v93, v91, v28, v92);
    memcpy(__dst, __src, 0x109uLL);
    outlined destroy of _ShapeStyle_RenderedShape(__dst);

    v107 = *&v111[32];
    v108[0] = *&v111[48];
    v108[1] = *&v111[64];
    v109 = v112;
    v105 = *v111;
    v106 = *&v111[16];
    outlined destroy of _ShapeStyle_RenderedLayers(&v105);
  }

  *&__dst[0] = v14[2];
  Material.Layers.singletonSDFLayer.getter(__src);
  v18 = *&__src[0];
  if ((~*&__src[0] & 0xF000000000000007) == 0)
  {
    v17 = v92;
    goto LABEL_8;
  }

  v62 = DWORD2(__src[0]);
  v63 = 0.5;
  if ((BYTE8(__src[0]) & 1) == 0)
  {
    v63 = 0.0;
  }

  if (*(__src + 3) == 0.0)
  {
    v64 = v63;
  }

  else
  {
    v64 = *(__src + 3);
  }

  outlined copy of MaterialEffectResolvedData.Data?(v93, v15, v16, v92);

  v89 = v62;
  outlined copy of Material.Layer.SDFLayer?(v18);
  v65 = AGGraphGetValue();
  v66 = *v65;
  if (*(v65 + 8))
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE021MaterialBackdropProxyI033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt1g5(v66, __src);

    v67 = *&__src[0];
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
    BloomFilter.init(hashValue:)(v68);
    v69 = *&__src[0];

    v71 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE021MaterialBackdropProxyV033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt0B5(v70, v69);
    if (v71)
    {
      v67 = v71[9];
    }

    else
    {
      v67 = 0;
    }
  }

  v72 = *(v1 + 5);
  v88 = v18;
  if (v67)
  {
    if (v72)
    {
      if (v67 == v72)
      {
        goto LABEL_80;
      }

LABEL_71:
      v73 = *(v1 + 5);
      if (v73)
      {
        v74 = *(v1 + 4);

        os_unfair_lock_lock(v73 + 4);
        _s7SwiftUI21MaterialBackdropProxyV14removeObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(&v73[6], v74);
        os_unfair_lock_unlock(v73 + 4);
      }

      if (v67)
      {
        v75 = *(v1 + 4);

        os_unfair_lock_lock((v67 + 16));
        _s7SwiftUI21MaterialBackdropProxyV11addObserveryyAA0cdG0_pFyAC7Storage33_DEF3755CDC6B87C0368876C9F497EC3DLLC4DataVzYuYTXEfU_(v67 + 24, v75, &protocol witness table for SDFShape.BackdropObserver);
        os_unfair_lock_unlock((v67 + 16));

        *(v1 + 5) = v67;

        v76 = *(v1 + 4);

        os_unfair_lock_lock((v67 + 16));
        v77 = *(v67 + 24);
        v78 = *(v67 + 28);
        os_unfair_lock_unlock((v67 + 16));
        if (swift_weakLoadStrong())
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          v79 = static Update._lock;
          _MovableLockLock(static Update._lock);
          specialized static Update.begin()();
          v80 = *(v76 + 24);
          v81 = _threadTransactionID();
          LOBYTE(__src[0]) = v78;
          specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v81, v80, v77 | (v78 << 32), 1, 1);
          static Update.end()();
          _MovableLockUnlock(v79);
        }

        v18 = v88;
      }

      else
      {
        *(v1 + 5) = 0;
      }

      goto LABEL_80;
    }

LABEL_70:

    goto LABEL_71;
  }

  if (v72)
  {
    goto LABEL_70;
  }

LABEL_80:
  if (*(v1 + 5))
  {
    v82 = 0;
  }

  else
  {
    v82 = *(v1 + 4);
  }

  v83 = swift_allocObject();
  v105 = 0uLL;
  *&v106 = v93;
  *(&v106 + 1) = v91;
  *&v107 = v18;
  *(&v107 + 1) = __PAIR64__(v89, LODWORD(v64));
  *&v108[0] = v82;
  *(v83 + 64) = v82;
  v84 = v106;
  *(v83 + 16) = v105;
  *(v83 + 32) = v84;
  *(v83 + 48) = v107;
  type metadata accessor for CGSize(0);
  outlined init with copy of SDFShape(&v105, __src);
  v85 = AGGraphGetValue();
  v86 = *v1;
  v87 = *v85;
  *__src = v11;
  *(__src + 1) = v12;
  __src[1] = v87;
  *&__src[2] = v13;
  *(&__src[2] + 1) = v83;
  *&__src[3] = 0x800000000;
  *(&__src[3] + 1) = v5;
  *&__src[4] = v3 | (v94 << 32) | 0x40000000;
  DWORD2(__src[4]) = v86;
  __dst[2] = __src[2];
  __dst[3] = __src[3];
  *(&__dst[3] + 12) = *(&__src[3] + 12);
  __dst[0] = __src[0];
  __dst[1] = v87;
  outlined init with copy of DisplayList.Item(__src, v111);
  DisplayList.init(_:)(__dst, v111);
  *&__dst[0] = *v111;
  WORD4(__dst[0]) = *&v111[8];
  HIDWORD(__dst[0]) = *&v111[12];
  AGGraphSetOutputValue();
  outlined consume of MaterialEffectResolvedData.Data?(v93, v91, v90, v92);
  outlined destroy of DisplayList.Item(__src);

  outlined consume of SDFStyle?(v88);

  __dst[0] = 0uLL;
  *&__dst[1] = v93;
  *(&__dst[1] + 1) = v91;
  *&__dst[2] = v88;
  *(&__dst[2] + 1) = __PAIR64__(v89, LODWORD(v64));
  *&__dst[3] = v82;
  return outlined destroy of SDFShape(__dst);
}

uint64_t sub_18D184BF8()
{

  return swift_deallocObject();
}

uint64_t MaterialProviderBox.resolveLayers(in:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[3];
  v8[2] = a1[2];
  v9[0] = v5;
  *(v9 + 9) = *(a1 + 57);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  result = (*(*(v4 + 208) + 16))(v8, *(v4 + 200));
  *a2 = result;
  return result;
}

void _ShapeSet.Wrapper.pathSet(in:)(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = *(*v3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = a1;
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v26;
    v10 = (v4 + 60);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 4);
      v13 = *v10;
      v14 = *(**(v10 - 7) + 80);

      v14(v24, v15, 0.0, 0.0, a2, a3);

      v26 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v7 = v26;
      }

      v10 += 8;
      *(v7 + 16) = v17 + 1;
      v18 = v7 + 56 * v17;
      v19 = v24[1];
      v20 = v25;
      *(v18 + 32) = v24[0];
      *(v18 + 48) = v19;
      *(v18 + 64) = v20;
      *(v18 + 72) = v11;
      *(v18 + 80) = v12;
      *(v18 + 81) = v22;
      *(v18 + 83) = v23;
      *(v18 + 84) = v13;
      --v6;
    }

    while (v6);
    a1 = v21;
  }

  *a1 = v7;
  a1[1] = v5;
}

double protocol witness for Shape.path(in:) in conformance _SizedShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  _SizedShape.path(in:)(a1, v7, a3, a4);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

double _SizedShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  (*(*(a1 + 24) + 24))(v8, *(a1 + 16), a3, a4, *(v4 + *(a1 + 36)), *(v4 + *(a1 + 36) + 8));
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

double protocol witness for Shape.path(in:) in conformance OffsetShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OffsetShape.path(in:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void *OffsetShape.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*(a1 + 24) + 24))(v13, *(a1 + 16));
  v6 = (v2 + *(a1 + 36));
  v7 = v6[1];
  if (*v6 == 0.0 && v7 == 0.0)
  {
    v8 = v13[0];
    v9 = v13[1];
    v10 = v14;
  }

  else
  {
    CGAffineTransformMakeTranslation(&v17, *v6, v7);
    Path.applying(_:)(&v17.a, v15);
    v11 = v15[1];
    v12 = v15[0];
    v10 = v16;
    result = outlined destroy of Path(v13);
    v9 = v11;
    v8 = v12;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  return result;
}

unint64_t lazy protocol witness table accessor for type OffsetShape<AnyShape> and conformance OffsetShape<A>()
{
  result = lazy protocol witness table cache variable for type OffsetShape<AnyShape> and conformance OffsetShape<A>;
  if (!lazy protocol witness table cache variable for type OffsetShape<AnyShape> and conformance OffsetShape<A>)
  {
    type metadata accessor for OffsetShape<AnyShape>(255, &lazy cache variable for type metadata for OffsetShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for OffsetShape);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OffsetShape<AnyShape> and conformance OffsetShape<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for RawRepresentableProxy<A>(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for RawRepresentableProxy<A>(a1);
}

uint64_t Material.Layers.singletonSDFLayer.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*(*v1 + 16) == 1 && *(v2 + 64) == 2 && (*(v2 + 80) & 1) == 0 && !*(v2 + 72) && *(v2 + 68) == 1.0)
  {
    v4 = *(v2 + 32);
    v3 = *(v2 + 40);
    v5 = a1;

    a1 = v5;
  }

  else
  {
    v3 = 0;
    v4 = 0xF000000000000007;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t outlined consume of SDFStyle?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

_DWORD *initializeWithCopy for TransitionHelper(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 16))(v11, v12);
  *(*(v9 + 48) + v11) = *(*(v9 + 48) + v12);
  return a1;
}

uint64_t type metadata completion function for _SizedShape()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18D1855BC()
{

  return swift_deallocObject();
}

uint64_t closure #1 in static ViewModifier.makeImplicitRoot(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = _ViewInputs.implicitRootBodyInputs.getter(v6);
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14MaterialEffectV4Fill33_E3B0FF576136F59061E5D7766373CC25LLV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v11[0] = v2;
    v11[1] = v8;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11[2] = v4;
    v11[3] = v3;
    v15 = 0;
    v11[4] = v5;
    outlined init with copy of AnimatableAttribute<MaterialEffect.Fill>(v11, v10, &lazy cache variable for type metadata for AnimatableAttribute<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<MaterialEffect.Fill> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill);
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v11, &lazy cache variable for type metadata for AnimatableAttribute<MaterialEffect.Fill>, lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t initializeWithCopy for MaterialEffect(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  outlined copy of Material.ID(v5, v6);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t partial apply for specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)(a1, *(v2 + 32), *(v2 + 40), a2);
}

{
  return specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)(a1, *(v2 + 32), *(v2 + 40), _s7SwiftUI12ViewModifierPAAE16makeImplicitRoot8modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListK0VAA01_L0V_AA01_coN0VtctFZApR_ANtcfU_TA_0, _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA19GlassMaterialEffect33_62A32D59B8A902A88963544196023CF7LLV_Tt3B5, a2);
}

{
  return specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)(a1, *(v2 + 32), *(v2 + 40), closure #1 in static ViewModifier.makeImplicitRoot(modifier:inputs:body:)partial apply, _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA021GlassEntryInteractionT033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt3B5, a2);
}

uint64_t specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v7;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a4 = MEMORY[0x1E69E7CC0];
    *(a4 + 8) = 0;
    *(a4 + 12) = result;
  }

  else
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA14MaterialEffectV_Tt3B5(v10, v12, _s7SwiftUI12ViewModifierPAAE16makeImplicitRoot8modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListK0VAA01_L0V_AA01_coN0VtctFZApR_ANtcfU_TA_0, v11, a4);
  }

  return result;
}

{
  return specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)(a1, a2, a3, _s7SwiftUI12ViewModifierPAAE16makeImplicitRoot8modifier6inputs4bodyAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListK0VAA01_L0V_AA01_coN0VtctFZApR_ANtcfU_TA_0, _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA19GlassMaterialEffect33_62A32D59B8A902A88963544196023CF7LLV_Tt3B5, a4);
}

{
  return specialized closure #1 in static ViewModifier.makeUnaryViewList(modifier:inputs:body:)(a1, a2, a3, closure #1 in static ViewModifier.makeImplicitRoot(modifier:inputs:body:)partial apply, _s7SwiftUI12_ViewOutputsVAAE05multiC033_DC167C463E6601B3880A23A75ACAA63BLL8applying6inputs4bodyAcA11_GraphValueVyxG_AA01_C6InputsVAA01_c4ListD0VAA01_P0V_AMtctAA0C8ModifierRzlFZAA021GlassEntryInteractionT033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt3B5, a4);
}

uint64_t sub_18D185AC0()
{

  return swift_deallocObject();
}

uint64_t static MaterialEffect._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a3@<X8>)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  *v82 = *(a1 + 32);
  *&v82[16] = v3;
  *&v82[32] = *(a1 + 64);
  v83 = *(a1 + 80);
  v4 = *(a1 + 16);
  v80 = *a1;
  v81 = v4;
  AGGraphCreateOffsetAttribute2();
  v5 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v43 = *(v5 + 64);

  v78[0] = v80;
  v78[1] = v81;
  v79 = *v82;
  v6 = v81;
  swift_beginAccess();
  v41 = HIDWORD(v81);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaterialEffectState and conformance MaterialEffectState();
  v7 = Attribute.init<A>(body:value:flags:update:)();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaterialEffectUpdatedFill and conformance MaterialEffectUpdatedFill();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v38 = *v82;
  v72 = *&v82[4];
  v73 = *&v82[20];
  v68 = *v82;
  v69 = *&v82[16];
  v70 = *&v82[32];
  v74 = v80;
  v45 = DWORD2(v81);
  v49 = *&v82[40];
  v50 = v83;
  v71 = v83;
  v66 = v80;
  v67 = v81;
  swift_beginAccess();
  outlined init with copy of _ViewInputs(&v80, &v62);
  v9 = CachedEnvironment.animatedPosition(for:)(&v66);
  swift_endAccess();
  v34 = v8;
  *&v66 = __PAIR64__(*(v6 + 16), v8);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaterialEffectEnvironment and conformance MaterialEffectEnvironment();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  v11 = MEMORY[0x1E69E7CC0];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 256;
  *(v13 + 88) = v12;
  v36 = v6;

  *&v66 = __PAIR64__(v41, v7);
  DWORD2(v66) = v43;
  BYTE12(v66) = 1;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MaterialEffectTransaction and conformance MaterialEffectTransaction();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  *&v63 = v13;
  *(&v63 + 1) = __PAIR64__(v14, v45);
  LODWORD(v64[0]) = v38 | 0x20;
  *(&v64[1] + 4) = v73;
  *(v64 + 4) = v72;
  DWORD1(v64[2]) = v9;
  *(&v64[2] + 1) = v49;
  v60[0] = v64[0];
  v60[1] = v64[1];
  v60[2] = v64[2];
  v62 = v74;
  v65 = v50;
  v61 = v50;
  v58 = v74;
  v59 = v63;
  v15 = outlined init with copy of _ViewInputs(&v62, &v66);
  a2(v48, v15, &v58);
  v68 = v60[0];
  v69 = v60[1];
  v70 = v60[2];
  v71 = v61;
  v66 = v58;
  v67 = v59;
  outlined destroy of _ViewInputs(&v66);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v82[16]) & 1) == 0)
  {
    v58 = v74;
    *(v60 + 4) = v72;
    *&v59 = v13;
    *(&v59 + 1) = __PAIR64__(v14, v45);
    LODWORD(v60[0]) = v38 | 0x20;
    *(&v60[1] + 4) = v73;
    DWORD1(v60[2]) = v9;
    *(&v60[2] + 1) = v49;
    v61 = v50;
    result = outlined destroy of _ViewInputs(&v58);
LABEL_7:
    *a3 = v48[0];
    a3[1] = v48[1];
    return result;
  }

  v32 = v14;
  v40 = v9;
  v16 = ++lastIdentity;
  v17 = MEMORY[0x1E698D3F8];
  if ((v82[5] & 1) == 0)
  {
LABEL_3:
    LODWORD(v58) = AGGraphCreateOffsetAttribute2();
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    v33 = v16;
    lazy protocol witness table accessor for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init();
    v47 = Attribute.init<A>(body:value:flags:update:)();
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9_ShapeSetV7WrapperV_Tt1B5(&v47, v78);
    type metadata accessor for MaterialEffectBackdropObserver();
    v18 = swift_allocObject();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    swift_weakInit();

    *(v18 + 24) = 0;
    v31 = v18;
    *(v18 + 24) = AGCreateWeakAttribute();
    v57[0] = v78[0];
    *(v57 + 12) = *(v78 + 12);
    v46 = v79;
    *v75 = v7;
    *&v75[4] = v41;
    *&v75[8] = v43;
    v75[12] = 0;
    outlined init with copy of _GraphInputs(&v80, &v58);
    v44 = Attribute.init<A>(body:value:flags:update:)();
    *v75 = v78[0];
    *&v75[12] = *(v78 + 12);
    v76 = v44;
    v77 = v79;
    LODWORD(v58) = v34;
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA14MaterialEffectV4Fill33_E3B0FF576136F59061E5D7766373CC25LLV_Tt1B5(&v58, v75);
    v42 = v58;
    v60[0] = *v82;
    v60[1] = *&v82[16];
    v60[2] = *&v82[32];
    v61 = v83;
    v58 = v80;
    v59 = v81;
    swift_beginAccess();
    v19 = CachedEnvironment.animatedPosition(for:)(&v58);
    v60[0] = *v82;
    v60[1] = *&v82[16];
    v60[2] = *&v82[32];
    v61 = v83;
    v58 = v80;
    v59 = v81;
    v20 = CachedEnvironment.animatedCGSize(for:)(&v58);
    v35 = v47;
    v60[0] = *v82;
    v60[1] = *&v82[16];
    v60[2] = *&v82[32];
    v61 = v83;
    v58 = v80;
    v59 = v81;
    v21 = CachedEnvironment.animatedSize(for:)(&v58);
    swift_endAccess();
    v22 = *&v82[28];
    v23 = *(v36 + 16);
    v60[0] = *v82;
    v60[1] = *&v82[16];
    v60[2] = *&v82[32];
    LODWORD(v18) = *&v82[44];
    v61 = v83;
    v58 = v80;
    v59 = v81;
    _ViewInputs.materialSubstrate.getter(&v56);
    *v54 = v42;
    *&v54[4] = v35;
    *&v54[8] = v19;
    *&v54[12] = v20;
    *&v54[16] = v21;
    *&v54[20] = v22;
    *&v54[24] = v18;
    v55 = v23;
    DWORD1(v56) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_1(0, &lazy cache variable for type metadata for MaterialEffectResolvedData.Data?, &unk_1F00A6040, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type MaterialEffectResolvedData and conformance MaterialEffectResolvedData();
    v24 = Attribute.init<A>(body:value:flags:update:)();
    v25 = *(v36 + 16);
    v26 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v48[0]);
    v27 = *MEMORY[0x1E698D3F8];
    if ((v26 & 0x100000000) == 0)
    {
      v27 = v26;
    }

    *&v51 = __PAIR64__(v24, v33);
    *(&v51 + 1) = __PAIR64__(v20, v19);
    *&v52 = __PAIR64__(v25, *&v82[36]);
    DWORD2(v52) = v27;
    v53 = v31;
    v58 = v51;
    v59 = v52;
    v60[0] = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MaterialEffectDisplayList and conformance MaterialEffectDisplayList();

    v28 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of MaterialEffectDisplayList(&v51);
    LOBYTE(v58) = 0;
    PreferencesOutputs.subscript.setter(v28, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);

    v58 = v74;
    *(v60 + 4) = v72;
    *&v59 = v13;
    *(&v59 + 1) = __PAIR64__(v32, v45);
    LODWORD(v60[0]) = v38 | 0x20;
    *(&v60[1] + 4) = v73;
    DWORD1(v60[2]) = v40;
    *(&v60[2] + 1) = v49;
    v61 = v50;
    outlined destroy of _ViewInputs(&v58);
    *v54 = v57[0];
    *&v54[12] = *(v57 + 12);
    v55 = v44;
    v56 = v46;
    result = outlined destroy of _GraphInputs(v54);
    goto LABEL_7;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v80, &v58);
  result = AGWeakAttributeGetAttribute();
  if (result != *v17)
  {
    *v75 = v16;
    v30 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v75);
    v30(&v58, 0);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t instantiation function for generic protocol witness table for KeyedAnimatableArray<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialEffect.Fill and conformance MaterialEffect.Fill()
{
  result = lazy protocol witness table cache variable for type MaterialEffect.Fill and conformance MaterialEffect.Fill;
  if (!lazy protocol witness table cache variable for type MaterialEffect.Fill and conformance MaterialEffect.Fill)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialEffect.Fill and conformance MaterialEffect.Fill);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialEffectDisplayList and conformance MaterialEffectDisplayList()
{
  result = lazy protocol witness table cache variable for type MaterialEffectDisplayList and conformance MaterialEffectDisplayList;
  if (!lazy protocol witness table cache variable for type MaterialEffectDisplayList and conformance MaterialEffectDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialEffectDisplayList and conformance MaterialEffectDisplayList);
  }

  return result;
}

uint64_t initializeWithCopy for MaterialEffectDisplayList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

uint64_t outlined destroy of MaterialEffectDisplayList(uint64_t a1)
{

  return a1;
}

uint64_t initializeWithCopy for MaterialEffectState.Value(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for MaterialEffect.Fill(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t type metadata completion function for AnimatableValues(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[1] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 8;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AnimatableValues<Pack{repeat A}>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double OffsetPosition.value.getter()
{
  v0 = *AGGraphGetValue();
  if (*AGGraphGetValue())
  {
    v0 = -v0;
  }

  type metadata accessor for CGPoint(0);
  return v0 + *AGGraphGetValue();
}

uint64_t *AnyCoreInteractionHelper.init<A, B>(for:idType:)()
{
  type metadata accessor for _CoreInteractionHelperBox();
  swift_allocObject();
  return _CoreInteractionHelperBox.init()();
}

uint64_t type metadata completion function for _CoreInteractionHelperBox()
{
  type metadata accessor for CoreInteractionRepresentableEffect();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t *_CoreInteractionHelperBox.init()()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 120);
  v4 = type metadata accessor for CoreInteractionRepresentableEffect();
  (*(*(v4 - 8) + 56))(v0 + v2, 1, 1, v4);
  *(v0 + *(*v0 + 160)) = 0;
  *(v0 + *(*v0 + 168)) = 0;
  *(v0 + *(*v0 + 176)) = 0;
  (*(*(v3 - 8) + 56))(v0 + *(*v0 + 184), 1, 1, v3);
  (*(*(*(v1 + 128) - 8) + 56))(v0 + *(*v0 + 192), 1, 1);
  v5 = v0 + *(*v0 + 200);
  *v5 = 0;
  *(v5 + 4) = 1;
  return v0;
}

uint64_t _CoreInteractionHelperBox.resetInteractions()()
{
  v1 = v0;
  v2 = *v0;
  if (*(v0 + *(*v0 + 168)))
  {
    v3 = *(v0 + *(*v0 + 160));
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v6 = *(AssociatedConformanceWitness + 64);
        swift_unknownObjectRetain();

        v7 = 32;
        do
        {
          v8 = *(v3 + v7);
          swift_unknownObjectRetain();
          v9 = swift_checkMetadataState();
          v6(v8, v9, AssociatedConformanceWitness);
          swift_unknownObjectRelease();
          v7 += 16;
          --v4;
        }

        while (v4);

        swift_unknownObjectRelease();
        v1 = v0;
        v2 = *v0;
      }
    }
  }

  *(v1 + *(v2 + 160)) = 0;
}

uint64_t CoreInteractionRepresentableInteractionsProxy.append(interaction:tag:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_unknownObjectRetain();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 16 * v8;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *v2 = v5;
  return result;
}

uint64_t destroy for GlassContainer.Entry.GroupID(uint64_t a1)
{
  outlined consume of _Glass.Variant.ID(*a1, *(a1 + 8));
}

uint64_t getEnumTagSinglePayload for _ColorMonochromeEffect._Resolved(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t initializeWithCopy for _Glass.ID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, unint64_t a4, char a5, char *a6)
{
  v7 = v6;
  v63 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v14 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v7 + 16))
  {
    v16 = 0;
    goto LABEL_43;
  }

  v52 = v14;
  v15 = (a5 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v7 + 168) &= a6 & 1;
  v17 = swift_beginAccess();
  v18 = *(v7 + 144);
  v19 = *(v18 + 16);
  v51 = a2;
  if (v19)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      *(v7 + 144) = v18;
    }

    if (v19 > *(v18 + 16))
    {
      __break(1u);
LABEL_55:
      swift_once();
LABEL_17:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v56[0]) = v19;
          AGGraphAddTraceEvent();
        }

        *(v7 + 144) = v18;
        swift_endAccess();
        if (v15)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        if (*(v18 + 16))
        {
          specialized Array._customRemoveLast()(&v58);
          LODWORD(a3) = v59;
          v15 = v60;
          a1 = v58;
          if (v60)
          {
            v18 = HIDWORD(v59);
          }

          else
          {
            outlined consume of AsyncTransaction?(v58, v59, 0);
            specialized Array.remove(at:)(*(*(v7 + 144) + 16) - 1, &v58);
            a1 = v58;
            LODWORD(a3) = v59;
            LODWORD(v18) = HIDWORD(v59);
            v15 = v60;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a6 = *(v7 + 144);

          v43 = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 144) = a6;
          if (v43)
          {
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_58:
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
      *(v7 + 144) = a6;
LABEL_46:
      v45 = *(a6 + 2);
      v44 = *(a6 + 3);
      if (v45 >= v44 >> 1)
      {
        a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, a6);
      }

      *(a6 + 2) = v45 + 1;
      v46 = &a6[24 * v45];
      *(v46 + 4) = a1;
      *(v46 + 10) = a3;
      *(v46 + 11) = v18;
      *(v46 + 6) = v15;
      *(v7 + 144) = a6;
      swift_endAccess();

LABEL_49:
      v47 = *(v7 + 144);
      v48 = *(v47 + 16);
      if (v48)
      {
        v16 = *(v47 + 24 * v48 + 20);
      }

      else
      {
        v16 = 0;
      }

      v14 = v52;
      goto LABEL_43;
    }

    v19 = v18 + 24 * v19;
    if (*(v19 + 16) == a2)
    {
      v21 = *(v19 + 8);
      if (v21)
      {
        if (a1)
        {
          v56[0] = MEMORY[0x1E69E7CC0];

          v22 = compareLists(_:_:ignoredTypes:)(v21, a1, v56);

          if (v22)
          {
LABEL_16:
            a6 = (v19 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3, a4 | ((HIDWORD(a4) & 1) << 32));
            LODWORD(v19) = *(v19 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_17;
            }

            goto LABEL_55;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_16;
      }
    }

    *(v7 + 144) = v18;
    swift_endAccess();
    if (!v15)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v7 + 192))(v17))
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    (*(v24 + 32))(ObjectType, v24);
    swift_unknownObjectRelease();
  }

  v14 = &protocol witness table for MaterialEffectBackdropObserver.LuminanceMutation;
  v61 = &type metadata for MaterialEffectBackdropObserver.LuminanceMutation;
  v62 = &protocol witness table for MaterialEffectBackdropObserver.LuminanceMutation;
  v58 = a3;
  LODWORD(v59) = a4;
  BYTE4(v59) = BYTE4(a4) & 1;
  swift_beginAccess();
  v50 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v58, v56);
  v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v28 = v26[2];
  v27 = v26[3];
  v16 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
  }

  __swift_destroy_boxed_opaque_existential_1(&v58);
  v29 = v57;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v31);
  v35 = *(v33 + 2);
  v36 = v33[12];
  v54 = &type metadata for MaterialEffectBackdropObserver.LuminanceMutation;
  v55 = &protocol witness table for MaterialEffectBackdropObserver.LuminanceMutation;
  *&v53 = *v33;
  DWORD2(v53) = v35;
  BYTE12(v53) = v36;
  v26[2] = v16;
  outlined init with take of AnyTrackedValue(&v53, &v26[5 * v28 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v56);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v37 = v51;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v16 = (v50 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v58) = v16;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v29 = *(v7 + 144);

    v38 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v29;
    v14 = v52;
    if (v38)
    {
      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
  *(v7 + 144) = v29;
LABEL_40:
  v40 = *(v29 + 2);
  v39 = *(v29 + 3);
  if (v40 >= v39 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v29);
  }

  *(v29 + 2) = v40 + 1;
  v41 = &v29[24 * v40];
  *(v41 + 4) = a1;
  *(v41 + 10) = v37;
  *(v41 + 11) = v16;
  *(v41 + 6) = v26;
  *(v7 + 144) = v29;
  swift_endAccess();

LABEL_43:
  _MovableLockUnlock(v14);
  return v16;
}

uint64_t storeEnumTagSinglePayload for _ColorMonochromeEffect._Resolved(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void *sub_18D187A8C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t type metadata completion function for CoreInteractionRepresentableEffect()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id SDFLayer.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_backdropObserver] = 0;
  v2 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfStyle;
  v3 = swift_allocObject();
  *(v3 + 32) = 0x80;
  v4 = MEMORY[0x1E69E7CC0];
  *&v0[v2] = v3 | 0x8000000000000000;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects] = v4;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets] = v4;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements] = v4;
  v5 = &v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_renderer] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_ovalization] = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 40) = v4;
  *(v3 + 48) = v4;
  *&v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_currentLuminance] = 2143289344;
  v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup] = 0;
  v6 = &v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds];
  *v6 = 0u;
  v6[1] = 0u;
  v0[OBJC_IVAR____TtC7SwiftUI8SDFLayer_needsUpdate] = 1;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 setAllowsGroupOpacity_];
  [v7 setAllowsGroupBlending_];

  return v7;
}

uint64_t sub_18D187CF0()
{

  return swift_deallocObject();
}

double SDFLayer.resetSDFEffects()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = 32;
    do
    {
      [*(v3 + v5) removeFromSuperlayer];
      v5 += 32;
      --v4;
    }

    while (v4);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v2);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v7 + 16));
  }

  else
  {
    *(v1 + v2) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI8SDFLayerC9SDFEffect33_05C1F5BE6EE7940FED05100EA822F7B3LLV_Tt1g5(0, *(v7 + 24) >> 1);
  }

  swift_endAccess();
  v8 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfSubsets;
  swift_beginAccess();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if (v9)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v10 + 16));
  }

  else
  {
    *(v1 + v8) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI8SDFLayerC9SDFSubset33_05C1F5BE6EE7940FED05100EA822F7B3LLV_Tt1g5(0, *(v10 + 24) >> 1);
  }

  swift_endAccess();
  v11 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfElements;
  swift_beginAccess();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v1 + v11);
  if (v12)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v13 + 16));
  }

  else
  {
    *(v1 + v11) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI8SDFLayerC10SDFElement33_05C1F5BE6EE7940FED05100EA822F7B3LLV_Tt1g5(0, *(v13 + 24) >> 1);
  }

  swift_endAccess();
  v14 = v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_distanceRange;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  v15 = (v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds);
  result = 0.0;
  *v15 = 0u;
  v15[1] = 0u;
  *(v1 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup) = 0;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI4TextV6LayoutVAFE11DecorationsV8FragmentV_Tt1gq5Tm(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 1;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI16ResolvedGradientV4StopV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v8 = ((v6 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v5[2] = a1;
  v5[3] = 2 * ((v8 >> 3) + (v8 >> 63));
  return result;
}

void SDFLayer.makeSDFEffects(for:shapeFilter:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1 >> 60;
  if ((a1 >> 60) > 4)
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
        [v8 setAnchorPoint_];
        [v8 setNoAnimationDelegate];
        v9 = MEMORY[0x1E6979458];
      }

      else if (v7 == 6)
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
        [v8 setAnchorPoint_];
        [v8 setNoAnimationDelegate];
        v9 = MEMORY[0x1E6979460];
      }

      else
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
        [v8 setAnchorPoint_];
        [v8 setNoAnimationDelegate];
        v9 = MEMORY[0x1E6979470];
      }

      goto LABEL_32;
    }

    if (v7 != 8)
    {
      if (v7 == 9)
      {
        v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

        v12 = SDFLayer.makeSDFEffects(for:shapeFilter:)(v10, a2, a3);
        if (v12)
        {
          v13 = SDFLayer.makeSDFEffects(for:shapeFilter:)(v11, a2, a3);
          if (v13)
          {
            v14 = v13;
            [v12 setMask_];
          }
        }

        return;
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
      [v8 setAnchorPoint_];
      [v8 setNoAnimationDelegate];
      v9 = MEMORY[0x1E6979480];
LABEL_32:
      v17 = [objc_allocWithZone(v9) init];
      [v8 setEffect_];
      addEffect #1 (_:layer:for:) in SDFLayer.makeSDFEffects(for:shapeFilter:)(v17, v8, a2, a3, v4);

      goto LABEL_33;
    }

    v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v79 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v20 = v19 >> 6;
    if (v19 >> 6 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_51;
      }

      v36 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      if (v19 == 128 && v18 == 2 && !v36)
      {
        if (v3[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentLayer] != 1)
        {
          return;
        }

        v37 = type metadata accessor for SDFPortalLayer();
        v38 = objc_allocWithZone(v37);

        v39 = [v38 init];
        v40 = [v4 sublayers];
        if (v40)
        {
          v41 = v4;
          type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer);
          v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if ((v42 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x193AC03C0](0, v42);
          }

          else
          {
            if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v43 = *(v42 + 32);
          }

          v40 = v43;

          v4 = v41;
        }

        v80.receiver = v39;
        v80.super_class = v37;
        v44 = v39;
        objc_msgSendSuper2(&v80, sel_setSourceLayer_, v40);

        [v44 setHidesSourceLayer_];
        v4[OBJC_IVAR____TtC7SwiftUI8SDFLayer_hasContentGroup] = 1;
        v24 = v44;
        goto LABEL_53;
      }

      if (v19 == 128 && v18 == 3 && !v36)
      {
        v48 = objc_allocWithZone(MEMORY[0x1E6979310]);

        v49 = [v48 init];
      }

      else
      {
LABEL_51:
        v50 = objc_allocWithZone(MEMORY[0x1E6979398]);

        v49 = [v50 init];
      }

      v24 = v49;
    }

    else
    {
      LODWORD(v21) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (v20)
      {
        v45 = (v18 >> 40) & 1;
        v46 = objc_allocWithZone(MEMORY[0x1E6979310]);

        v47 = [v46 init];
        [v47 setScale_];
        [v47 setDelegate_];
        [v47 setCaptureOnly_];
        [v47 setAllowsFilteredLuma_];
        v24 = v47;
      }

      else
      {
        v22 = objc_allocWithZone(MEMORY[0x1E6979310]);

        v23 = [v22 init];
        [v23 setScale_];
        v24 = v23;
      }
    }

LABEL_53:
    v51 = v24;
    [v24 setAnchorPoint_];
    v52 = [v51 delegate];

    if (v52)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      [v51 setNoAnimationDelegate];
    }

    v53 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
    swift_beginAccess();
    v54 = *&v4[v53];
    v55 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v4[v53] = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v58 = *(v54 + 2);
      v57 = *(v54 + 3);
      if (v58 >= v57 >> 1)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v54);
      }

      *(v54 + 2) = v58 + 1;
      v59 = &v54[32 * v58];
      *(v59 + 4) = v55;
      *(v59 + 5) = 0;
      v60 = v55;
      v55 = a2;
      *(v59 + 6) = a2;
      *(v59 + 7) = a3;
      *&v4[v53] = v54;
      swift_endAccess();
      v78 = v60;

      v61 = *(v79 + 16);
      if (!v61)
      {
        break;
      }

      a2 = 0;
      v53 = v79 + 32;
      while (a2 < *(v79 + 16))
      {
        v62 = *v53;
        v63 = *(v53 + 16);
        v64 = *(v53 + 32);
        v85 = *(v53 + 48);
        v84[1] = v63;
        v84[2] = v64;
        v84[0] = v62;
        v65 = *v53;
        v66 = *(v53 + 16);
        v67 = *(v53 + 32);
        v87 = *(v53 + 48);
        v86[1] = v66;
        v86[2] = v67;
        v86[0] = v65;
        v68 = v65;
        v69 = *(&v66 + 1);
        v54 = a3;
        v70 = a3 & ~*(&v66 + 1);
        v71 = v4;
        v72 = v67 & *(&v66 + 1);
        outlined init with copy of Material.Layer.SDFLayer.GroupLayer(v84, &v82);
        v73 = v72 | v70;
        v4 = v71;
        v74 = SDFLayer.makeSDFEffects(for:shapeFilter:)(v68, v69 | v55, v73);
        if (v74)
        {
          v75 = v74;
          v81 = a2;
          v82 = 64;
          v83 = 0xE100000000000000;
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v76);

          v77 = MEMORY[0x193ABEC20](v82, v83);

          [v75 setName_];

          [v78 addSublayer_];
          outlined destroy of Material.Layer.SDFLayer.GroupLayer(v86);
        }

        else
        {
          outlined destroy of Material.Layer.SDFLayer.GroupLayer(v86);
        }

        ++a2;
        v53 += 56;
        a3 = v54;
        if (v61 == a2)
        {
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_69:
      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
      *&v4[v53] = v54;
    }

LABEL_66:

    return;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
      [v8 setAnchorPoint_];
      [v8 setNoAnimationDelegate];
      v9 = MEMORY[0x1E6979468];
    }

    else
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
      [v8 setAnchorPoint_];
      [v8 setNoAnimationDelegate];
      v9 = MEMORY[0x1E6979440];
    }

    goto LABEL_32;
  }

  if (v7 == 2)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
    [v15 setAnchorPoint_];
    [v15 setNoAnimationDelegate];
    v16 = [objc_allocWithZone(MEMORY[0x1E6979468]) init];
    [v16 setPremultiplied_];
    v17 = v16;
    [v15 setEffect_];
    addEffect #1 (_:layer:for:) in SDFLayer.makeSDFEffects(for:shapeFilter:)(v17, v15, a2, a3, v4);

LABEL_33:
    return;
  }

  if (v7 == 3)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
    [v8 setAnchorPoint_];
    [v8 setNoAnimationDelegate];
    v9 = MEMORY[0x1E6979488];
    goto LABEL_32;
  }

  v25 = *(**((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 88);

  v27 = v25(v26);
  v28 = v27;
  if (v27)
  {
    [v27 setAnchorPoint_];
    [v28 setNoAnimationDelegate];
    v29 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
    swift_beginAccess();
    v30 = *&v3[v29];
    v31 = v28;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *&v3[v29] = v30;
    if ((v32 & 1) == 0)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      *&v3[v29] = v30;
    }

    v34 = *(v30 + 2);
    v33 = *(v30 + 3);
    if (v34 >= v33 >> 1)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v30);
    }

    *(v30 + 2) = v34 + 1;
    v35 = &v30[32 * v34];
    *(v35 + 4) = v31;
    *(v35 + 5) = 0;
    *(v35 + 6) = 0;
    *(v35 + 7) = 0;
    *&v3[v29] = v30;
    swift_endAccess();
  }

  else
  {
  }
}

double SDFStyle.Group.margin.getter()
{
  LODWORD(v1) = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  LODWORD(v4) = v1 >> 6;
  v5 = 0.0;
  if (v1 >> 6 >= 2)
  {
LABEL_38:
    if (v4 == 3)
    {
      return v5;
    }

    v33 = v1 == 128 && *(v0 + 8) == 0;
    if (!v33 || *v0 != 3)
    {
      return v5;
    }
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v2 + 32;
    while (1)
    {
      v9 = (v3 + 32 + (v7 << 7));
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v40 = v9[2];
      v41 = v12;
      v38 = v10;
      v39 = v11;
      v13 = v9[4];
      v14 = v9[5];
      v15 = v9[6];
      *(v44 + 12) = *(v9 + 108);
      v43 = v14;
      v44[0] = v15;
      v42 = v13;
      memmove(__dst, v9, 0x7CuLL);
      v16 = _s7SwiftUI14GraphicsFilterOWOg(__dst);
      if (v16 > 20)
      {
        if (v16 == 22)
        {
          v30 = _s7SwiftUI14GraphicsFilterOWOj6_(__dst);
          v0 = *v30;
          v31 = *(**v30 + 112);
          v36[4] = v42;
          v36[5] = v43;
          v37[0] = v44[0];
          *(v37 + 12) = *(v44 + 12);
          v36[0] = v38;
          v36[1] = v39;
          v36[2] = v40;
          v36[3] = v41;
          _s7SwiftUI14GraphicsFilterOWOj6_(v36);

          v5 = v31(v32);
          outlined destroy of GraphicsFilter(&v38);
        }

        else if (v16 == 21)
        {
          v5 = *_s7SwiftUI14GraphicsFilterOWOj6_(__dst);
        }
      }

      else if ((v16 - 2) >= 2)
      {
        if (v16 == 1)
        {
          v22 = _s7SwiftUI14GraphicsFilterOWOj6_(__dst);
          v23 = 0.0;
          if (*(v22 + 120) >> 30 == 1)
          {
            v24 = *(v22 + 16);
            if ((v24 & 0x8000000000000000) == 0)
            {
              v4 = *(v2 + 16);
              if (v24 < v4)
              {
                v25 = *(v8 + 56 * v24);
                v4 = v25 >> 60;
                if (v25 >> 60 == 2)
                {
                  v4 = *((v25 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v26 = *(v4 + 16);
                  if (v26)
                  {
                    v23 = *(v4 + 32);
                    v27 = v26 - 1;
                    if (v27)
                    {
                      v4 += 40;
                      do
                      {
                        v28 = *v4;
                        v4 += 8;
                        v29 = v28;
                        if (v23 < v28)
                        {
                          v23 = v29;
                        }

                        --v27;
                      }

                      while (v27);
                    }
                  }
                }
              }
            }
          }

          if (v5 <= v23)
          {
            v5 = v23;
          }
        }
      }

      else
      {
        v17 = _s7SwiftUI14GraphicsFilterOWOj6_(__dst);
        v18 = fabs(*v17);
        if (*(v17 + 112) >> 30 == 1)
        {
          v19 = *(v17 + 8);
          if ((v19 & 0x8000000000000000) == 0 && v19 < *(v2 + 16))
          {
            v20 = *(v8 + 56 * v19);
            if (v20 >> 60 == 5)
            {
              v21 = -*((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x30) - *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              if (v21 <= 0.0)
              {
                v21 = 0.0;
              }

              v18 = v18 + v21;
            }
          }

          outlined init with copy of GraphicsFilter(&v38, v36);
        }

        if (v5 <= v18)
        {
          v5 = v18;
        }
      }

      if (++v7 == v6)
      {
        break;
      }

      v1 = *(v3 + 16);
      if (v7 >= v1)
      {
        __break(1u);
        goto LABEL_38;
      }
    }
  }

  return v5;
}

uint64_t _AnyCAFilterProvider.resolve<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*v3 + 144) + 16))(a1, a2, a3, *(*v3 + 136));
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t protocol witness for CAFilterContext.sdfSublayerName(at:) in conformance _CAFilterContext()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v0);

  return 64;
}

uint64_t protocol witness for PlatformGroupFactory.makePlatformGroup() in conformance CoreInteractionRepresentableEffect<A>(uint64_t a1)
{
  specialized CoreInteractionRepresentableEffect.makePlatformGroup()(a1);

  return swift_unknownObjectRetain();
}

uint64_t specialized CoreInteractionRepresentableEffect.makePlatformGroup()(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 36));
  v4 = *(v3 + 16);
  if (v4)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(AssociatedConformanceWitness + 56);
    v7 = (v3 + 32);
    do
    {
      v8 = *v7;
      v7 += 2;
      swift_unknownObjectRetain();
      v9 = swift_checkMetadataState();
      v6(v8, v9, AssociatedConformanceWitness);
      swift_unknownObjectRelease();
      --v4;
    }

    while (v4);
  }

  return *(v1 + *(a1 + 40));
}

uint64_t static AnimatableValues.== infix(_:_:)(uint64_t TupleTypeMetadata, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v58 = a5;
  v6 = a3;
  if (a3 == 1)
  {
    v8 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v11 = 0;
      v12 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v6)
      {
LABEL_9:
        v17 = v6 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v24 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = *(v22 + 16);
  v53 = v50 - v28;
  v27(v26);
  v54 = v24;
  v29 = (v27)(v24, a2, v8);
  if (v6)
  {
    v50[1] = v50;
    v51 = v22;
    v30 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v31 = (v58 & 0xFFFFFFFFFFFFFFFELL);
    v52 = v8;
    v32 = (v8 + 32);
    v33 = v6;
    v58 = v6;
    while (1)
    {
      v56 = v50;
      v34 = *v30;
      v57 = *v31;
      v35 = *(v34 - 8);
      MEMORY[0x1EEE9AC00](v29);
      v37 = v50 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = v50;
      v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
      v41 = v50 - v40;
      v42 = v6 == 1 ? 0 : *v32;
      v43 = *(v35 + 16);
      v43(v37, &v53[v42], v34, v39);
      v44 = v58 == 1 ? 0 : *v32;
      (v43)(v41, &v54[v44], v34);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v35 + 8);
      v46(v41, v34);
      v29 = (v46)(v37, v34);
      if ((v45 & 1) == 0)
      {
        break;
      }

      v32 += 4;
      ++v31;
      ++v30;
      --v33;
      v6 = v58;
      if (!v33)
      {
        v47 = 1;
        goto LABEL_25;
      }
    }

    v47 = 0;
LABEL_25:
    v22 = v51;
    v8 = v52;
  }

  else
  {
    v47 = 1;
  }

  v48 = *(v22 + 8);
  v48(v54, v8);
  v48(v53, v8);
  return v47;
}

Swift::Void __swiftcall SDFLayer.layoutSublayers()()
{
  v1 = OBJC_IVAR____TtC7SwiftUI8SDFLayer_sdfEffects;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v0 + OBJC_IVAR____TtC7SwiftUI8SDFLayer_shapeBounds);

    v5 = (v2 + 40);
    do
    {
      v6 = *v5;
      v7 = *v4;
      v8 = v4[1];
      v9 = v4[2];
      v10 = v4[3];
      v11 = *(v5 - 1);
      v12 = v6;
      [v11 setBounds_];
      [v11 setPosition_];

      v5 += 4;
      --v3;
    }

    while (v3);
  }
}

uint64_t assignWithCopy for MaterialEffect.Fill(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of Material.ID(v6, v7);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t specialized static SDFStyle.GlassHighlight.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 12) == *(a2 + 12) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 ? (v3 = *(a1 + 20) == *(a2 + 20)) : (v3 = 0), v3 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64)))
  {
    return (*(a1 + 72) ^ *(a2 + 72) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for GraphMutation.apply() in conformance MaterialEffectBackdropObserver.LuminanceMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v1);
    return AGGraphMutateAttribute();
  }

  return result;
}

uint64_t partial apply for closure #1 in MaterialEffectBackdropObserver.LuminanceMutation.apply()(uint64_t result)
{
  v2 = *(v1 + 24);
  if (*(v1 + 28))
  {
    v2 = NAN;
  }

  *(result + 24) = v2;
  return result;
}

uint64_t MaterialEffectBackdropObserver.LuminanceMutation.combine<A>(with:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v9;
  v6 = v10;
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  *(v1 + 8) = v5;
  *(v1 + 12) = v6;
  return 1;
}

uint64_t getEnumTag for _GlassEffectTransition.Kind(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for _GlassEffectTransition.Kind(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

BOOL specialized static _Glass.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v19 = *a1;
  v20 = v2;
  v17 = v7;
  v18 = v8;
  outlined copy of _Glass.Variant.Role(v19, v2);
  outlined copy of _Glass.Variant.Role(v7, v8);
  LOBYTE(v7) = specialized static _Glass.Variant.== infix(_:_:)(&v19, &v17);
  outlined consume of _Glass.Variant.Role(v17, v18);
  outlined consume of _Glass.Variant.Role(v19, v20);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  if (v3 == 5)
  {
    if (v9 != 5)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v9 == 5 || v3 != v9)
    {
      return result;
    }
  }

  if (!v4)
  {
    result = 0;
    if (v10)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v10)
  {
    return 0;
  }

  if (v4 == v10)
  {
    if (v5 != v11)
    {
      return 0;
    }

    return v6 == v12;
  }

  v14 = *(*v4 + 88);

  v16 = v14(v15);

  result = 0;
  if (v16)
  {
LABEL_16:
    if (v5 == v11)
    {
      return v6 == v12;
    }
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.ItemData(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = v3;
  return a1;
}

uint64_t AnchorValueBox.isEqual(to:)()
{
  v1 = *v0;
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = v1[19];
    v4 = *(*result + 152);
    v6 = v1[17];
    v5 = v1[18];
    v7 = *(v5 + 56);
    v8 = result;

    v9 = v7(&v0[v3], v8 + v4, v6, v5);

    return v9 & 1;
  }

  return result;
}

int8x16_t Rectangle.path(in:)@<Q0>(int8x16_t *a1@<X8>, double a2@<D0>, uint64_t a3@<D1>, double a4@<D2>, uint64_t a5@<D3>)
{
  IsNull = CGRectIsNull(*&a2);
  *v7.i64 = a2;
  v7.i64[1] = a3;
  *v8.i64 = a4;
  v8.i64[1] = a5;
  if (IsNull)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s64(v9);
  if (IsNull)
  {
    v11 = 6;
  }

  else
  {
    v11 = 0;
  }

  v12 = vbicq_s8(v7, v10);
  result = vbicq_s8(v8, v10);
  *a1 = v12;
  a1[1] = result;
  a1[2].i8[0] = v11;
  return result;
}

uint64_t LazyState.projectedValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  LazyState.getValue(forReading:)(0, a1, &v15 - v10);
  v12 = *(v2 + *(a1 + 28));
  if (v12)
  {
    (*(v6 + 16))(v8, v11, v5);
    Binding.init(value:location:)(v8, v12, a2);
    v13 = *(v6 + 8);

    return v13(v11, v5);
  }

  else
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    static Binding.constant(_:)(v11, v5, a2);
    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t View.transformTrait<A>(_:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v5 = type metadata accessor for TraitTransformerModifier();
  return View.modifier<A>(_:)(v7, a4, v5);
}

uint64_t closure #1 in static ToggleState.stateFor<A, B>(item:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Binding();
  Binding.wrappedValue.getter(v7);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v4 + 8))(v6, a3);
  return v8 & 1;
}

uint64_t static ToggleState.stateFor<A, B>(item:in:)@<X0>(char *a1@<X8>)
{
  result = Sequence.allSatisfy(_:)();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    result = Sequence.allSatisfy(_:)();
    if (result)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  *a1 = v3;
  return result;
}

BOOL closure #2 in static ToggleState.stateFor<A, B>(item:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Binding();
  Binding.wrappedValue.getter(v7);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v4 + 8))(v6, a3);
  return (v8 & 1) == 0;
}

uint64_t static AnyTransition.opacity.getter()
{
  if (one-time initialization token for opacity != -1)
  {
    swift_once();
  }
}

BOOL static EdgeInsets.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t destroy for ScaledMetric(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<ButtonSizing>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<ButtonSizing>.Content(*(v3 + 16), *(v3 + 24));
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (v3 + *(v4 + 80) + 25) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t outlined consume of Environment<ButtonSizing>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t View.background<A>(_:ignoresSafeAreaEdges:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _BackgroundStyleModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  View.modifier<A>(_:)(v16, a3, v12);
  return (*(v13 + 8))(v16, v12);
}

uint64_t initializeWithCopy for ScaledMetric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<ButtonSizing>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = a1 & 0xFFFFFFFFFFFFFFF8;
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v6) = *(v9 + 24);
  outlined copy of Environment<ButtonSizing>.Content(v10, v6);
  *(v8 + 16) = v10;
  *(v8 + 24) = v6;
  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 16;
  v13 = *(v11 + 80);
  v14 = (v13 + 25 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v13;
  v15 = (v13 + 25 + v9) & ~v13;
  (*(v11 + 16))(v14, v15);
  *(*(v12 + 48) + v14) = *(*(v12 + 48) + v15);
  return a1;
}

uint64_t outlined copy of Environment<ButtonSizing>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for ViewGraphFeature.modifyViewInputs(inputs:graph:) in conformance ImageRendererHostViewGraph(uint64_t a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA21UsingGraphicsRendererV_Tt2g5(a1, 1);

  *(a1 + 36) |= 1u;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA21UsingGraphicsRendererV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for UsingGraphicsRenderer);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA21UsingGraphicsRendererV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<UsingGraphicsRenderer>, &type metadata for UsingGraphicsRenderer, &protocol witness table for UsingGraphicsRenderer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for UsingGraphicsRenderer, 0, v6);
  }

  return result;
}

uint64_t (*protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance ImageRendererHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ImageRendererHost.valuesNeedingUpdate.modify();
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t ImageRendererHost.renderingPhase.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 58) = v2;
  return result;
}

void @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:)()
{
  v0 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();

  AGGraphWithUpdate();

  AGSubgraphSetCurrent();
}

Swift::Void __swiftcall ImageRendererHost.updateEnvironment()()
{
  swift_beginAccess();
  swift_beginAccess();

  AGGraphSetValue();
}

uint64_t closure #1 in ImageRendererHost.updateSizeThatFitsObserver()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v13 = *&a4;
    v14 = NAN;
    if (a5)
    {
      v13 = NAN;
    }

    v15 = a6;
    if ((a7 & 1) == 0)
    {
      v14 = *&a6;
    }

    ViewGraph.setSize(_:)(*&v13);
  }

  return result;
}

uint64_t GraphicsContext.draw(_:in:style:shading:)(__int128 *a1, CGFloat a2, CGFloat a3, double a4, double a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  v13 = a1[5];
  *v74 = a1[4];
  *&v74[16] = v13;
  *&v74[28] = *(a1 + 92);
  v14 = a1[1];
  v72 = *a1;
  *v73 = v14;
  v15 = a1[3];
  *&v73[16] = a1[2];
  *&v73[32] = v15;
  v16 = *a7;
  v17 = a7[1];
  *&v78[9] = *(a7 + 57);
  v18 = a7[3];
  v77 = a7[2];
  *v78 = v18;
  v75 = v16;
  v76 = v17;
  if ((BYTE8(v72) & 0xFE) != 2)
  {
    goto LABEL_8;
  }

  if (v74[40] != 2)
  {
    v19 = *&v74[24];
    v20 = *&v74[8];
    if (one-time initialization token for resizable != -1)
    {
      v47 = a1;
      v48 = a7;
      swift_once();
      v19 = *&v74[24];
      v20 = *&v74[8];
      a1 = v47;
      a7 = v48;
    }

    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v20, static Image.ResizingInfo.resizable), vceqq_f64(v19, unk_1EAB12458))))) & 1) != 0 || ((byte_1EAB12468 ^ v74[40]))
    {
      goto LABEL_8;
    }
  }

  v21 = a1[5];
  v63 = a1[4];
  v64[0] = v21;
  *(v64 + 12) = *(a1 + 92);
  v22 = a1[1];
  v59 = *a1;
  v60 = v22;
  v23 = a1[3];
  v61 = a1[2];
  v62 = v23;
  v24 = a7[3];
  *&v58[16] = a7[2];
  *&v58[32] = v24;
  *&v58[41] = *(a7 + 57);
  v25 = a7[1];
  v57 = *a7;
  *v58 = v25;
  result = specialized GraphicsContext.drawAsVector(image:rect:style:shading:)(&v59, &v57, a8, a2, a3, a4, a5);
  if ((result & 1) == 0)
  {
LABEL_8:
    v68 = v72;
    v69[0] = *v73;
    *(v69 + 12) = *&v73[12];
    v27 = *&v73[28];
    v28 = *&v73[36];
    v29 = *&v73[44];
    v67 = v74[0];
    v65 = *&v74[1];
    v66[0] = *&v74[17];
    *(v66 + 11) = *&v74[28];
    v30 = *(a8 + 24);
    if (v78[24] == 1)
    {
      v32 = v75;
      v33 = *(a8 + 32);
      if (v33 == 1)
      {
        v34 = *(a8 + 16);
        v35 = *(v34 + 48);
        v36 = *(v34 + 56);
      }

      else
      {
        v36 = *(a8 + 40);
        v35 = *(a8 + 32);
      }

      *&v57 = v35;
      *(&v57 + 1) = v36;
      v37 = *(*v32 + 120);
      outlined init with copy of GraphicsContext.Shading?(&v75, &v59);
      outlined init with copy of GraphicsImage(&v72, &v59);
      outlined init with copy of GraphicsContext.Shading?(&v75, &v59);
      outlined copy of EnvironmentValues?(v33);
      v37(v70, &v57);
      v27 = v70[0];
      v28 = v70[1];
      v29 = v71;
      outlined destroy of GraphicsContext.Shading?(&v75, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
      outlined destroy of GraphicsContext.Shading?(&v75, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);

      v67 = 0;
      v31 = v30;
    }

    else if (v78[24] == 255)
    {
      outlined init with copy of GraphicsImage(&v72, &v59);
      v31 = v30;
    }

    else
    {
      v67 = 1;
      outlined init with copy of GraphicsImage(&v72, &v59);
      outlined init with copy of GraphicsContext.Shading?(&v75, &v59);
      v30 = RBDrawingStateInit();
      v31 = RBDrawingStateBeginLayer();
      outlined destroy of GraphicsContext.Shading?(&v75, &lazy cache variable for type metadata for GraphicsContext.Shading?, &type metadata for GraphicsContext.Shading);
      v27 = 0;
      v28 = 0;
      v29 = 0;
    }

    v38 = *(a8 + 16);
    v39 = *(a8 + 56);
    v40 = *(v38 + 32);
    [v40 setRect_];
    RBShape.setRenderingMode(style:shapeDistance:)(v39);

    v41 = *(v38 + 40);
    *&v58[12] = *(v69 + 12);
    v57 = v68;
    *v58 = v69[0];
    *&v58[28] = v27;
    *&v58[36] = v28;
    *&v58[44] = v29;
    v42 = v67;
    v58[48] = v67;
    *&v58[49] = v65;
    *&v58[65] = v66[0];
    *&v58[76] = *(v66 + 11);
    *&v56[48] = *&v58[48];
    *&v56[64] = *&v58[64];
    *&v56[76] = *(v66 + 11);
    v55 = v68;
    *v56 = v69[0];
    *&v56[16] = *&v58[16];
    *&v56[32] = *&v58[32];
    v43 = *(v38 + 64);
    v44 = v41;
    outlined init with copy of GraphicsImage(&v57, &v59);
    RBFill.setImage(_:destRect:in:)(&v55, v43, a2, a3, a4, a5);

    v63 = *&v56[48];
    v64[0] = *&v56[64];
    *(v64 + 12) = *&v56[76];
    v59 = v55;
    v60 = *v56;
    v61 = *&v56[16];
    v62 = *&v56[32];
    outlined destroy of GraphicsImage(&v59);
    *(v38 + 272) = 0;

    RBDrawingStateDrawShape();
    if (v31 != v30)
    {
      result = RBDrawingStateClipLayer();
      if (v78[24] == 255)
      {
        __break(1u);
        return result;
      }

      v51 = v77;
      *v52 = *v78;
      *&v52[16] = *&v78[16];
      v49 = v75;
      v50 = v76;
      v52[24] = v78[24];
      v45 = *(a8 + 48);
      v46 = *(a8 + 52);
      *(v54 + 9) = *&v78[9];
      v53[2] = v77;
      v54[0] = *v78;
      v53[0] = v75;
      v53[1] = v76;
      outlined init with copy of GraphicsContext.Shading(v53, &v55);
      GraphicsContext.draw(shading:bounds:in:alpha:blendMode:)(&v49, v30, v46, a8, a2, a3, a4, a5, v45);
      *&v56[16] = v51;
      *&v56[32] = *v52;
      *&v56[41] = *&v52[9];
      v55 = v49;
      *v56 = v50;
      outlined destroy of GraphicsContext.Shading(&v55);
      RBDrawingStateDestroy();
    }

    v55 = v68;
    *v56 = v69[0];
    *&v56[12] = *(v69 + 12);
    *&v56[49] = v65;
    *&v56[28] = v27;
    *&v56[36] = v28;
    *&v56[44] = v29;
    v56[48] = v42;
    *&v56[65] = v66[0];
    *&v56[76] = *(v66 + 11);
    return outlined destroy of GraphicsImage(&v55);
  }

  return result;
}

uint64_t ImageRenderer.deinit()
{

  v1 = direct field offset for ImageRenderer.observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t closure #1 in closure #1 in ImageRenderer.initializeRenderer()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    type metadata accessor for PassthroughSubject<(), Never>();
    lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<(), Never>);
    Subject<>.send()();
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ForegroundEnvironment<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for ForegroundEnvironment<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static _ValueTransactionModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v37 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for ValueTransactionSeed();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = *a1;
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static _ValueTransactionModifier._makeInputs(modifier:inputs:)(1, a3, a4, type metadata accessor for _ValueTransactionModifier, closure #1 in static PointerOffset.of(_:)partial apply);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v16 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v17 = *(v16 + 68);

  variable initialization expression of CodableOptional.base(a3, v9);
  v18 = ValueTransactionSeed.init(value:transactionSeed:oldValue:)(OffsetAttribute2, v17, v9, v13);
  MEMORY[0x1EEE9AC00](v18);
  *(&v32 - 2) = v10;
  *(&v32 - 1) = swift_getWitnessTable();
  type metadata accessor for Attribute<UInt32>();
  v19 = MEMORY[0x1E69E73E0];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_12, (&v32 - 4), v10, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  (*(v11 + 8))(v13, v10);
  v22 = v34[0];
  v23 = AGGraphSetFlags();
  MEMORY[0x1EEE9AC00](v23);
  *(&v32 - 2) = a3;
  *(&v32 - 1) = a4;
  KeyPath = swift_getKeyPath();
  v34[0] = v14;
  v35 = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_TA_0;
  v36 = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  type metadata accessor for _ValueTransactionModifier();
  type metadata accessor for (_:)();
  v25 = type metadata accessor for Map();
  *(&v32 - 2) = v25;
  *(&v32 - 1) = swift_getWitnessTable();
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  v27 = v26;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v34, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_9, (&v32 - 4), v25, v19, v27, MEMORY[0x1E69E7410], v28);

  v29 = v32;
  v30 = *(v32 + 28);
  v34[0] = v22;
  v34[1] = v33;
  v35 = __PAIR64__(v17, v30);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildValueTransaction and conformance ChildValueTransaction();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(v29 + 28) = result;
  return result;
}

__n128 sub_18D18BD34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void type metadata accessor for Attribute<UInt32>()
{
  if (!lazy cache variable for type metadata for Attribute<UInt32>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<UInt32>);
    }
  }
}

void type metadata accessor for Attribute<(_:)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ChildValueTransaction and conformance ChildValueTransaction()
{
  result = lazy protocol witness table cache variable for type ChildValueTransaction and conformance ChildValueTransaction;
  if (!lazy protocol witness table cache variable for type ChildValueTransaction and conformance ChildValueTransaction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChildValueTransaction and conformance ChildValueTransaction);
  }

  return result;
}

uint64_t static _PreferenceWritingModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v8 = static Semantics_v2_3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (static Semantics.forced < v8)
  {
LABEL_17:
    v16 = type metadata accessor for _PreferenceWritingModifier();
    v21[0] = v7;
    return static ViewModifier.makeMultiViewList(modifier:inputs:body:)(v21, a2, a3, a4, v16, &protocol witness table for _PreferenceWritingModifier<A>);
  }

  if ((*(a2 + 57) & 4) == 0)
  {
    goto LABEL_17;
  }

  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey>(0, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey>, &type metadata for PreferredColorSchemeKey, &protocol witness table for PreferredColorSchemeKey, type metadata accessor for _PreferenceWritingModifier);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_17;
  }

  v21[0] = v7;
  type metadata accessor for _GraphValue();
  type metadata accessor for _GraphValue<_PreferenceWritingModifier<PreferredColorSchemeKey>>();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = v20;
  outlined init with copy of _ViewListInputs(a2, v21);
  HIDWORD(v20) = *(a2 + 64);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait(0, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait, type metadata accessor for _PreferenceWritingModifier<>.ColorSchemeTrait);
  lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait and conformance _PreferenceWritingModifier<A><>.ColorSchemeTrait(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait and conformance _PreferenceWritingModifier<A><>.ColorSchemeTrait, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait, type metadata accessor for _PreferenceWritingModifier<>.ColorSchemeTrait);
  v24 = Attribute.init<A>(body:value:flags:update:)();
  if (v25)
  {
    v17 = v25;
    v18 = v26 & 1;
    v25 = 0;
    v26 = 0;
    specialized Set._Variant.insert(_:)(&v20, &type metadata for PreviewColorSchemeTraitKey);

    v25 = v17;
    v26 = v18;
  }

  v10 = *(a2 + 16);
  swift_beginAccess();
  v19 = *(v10 + 16);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait(0, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeEnv, type metadata accessor for _PreferenceWritingModifier<>.ColorSchemeEnv);
  lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeTrait and conformance _PreferenceWritingModifier<A><>.ColorSchemeTrait(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeEnv and conformance _PreferenceWritingModifier<A><>.ColorSchemeEnv, &lazy cache variable for type metadata for _PreferenceWritingModifier<PreferredColorSchemeKey><>.ColorSchemeEnv, type metadata accessor for _PreferenceWritingModifier<>.ColorSchemeEnv);
  LODWORD(v10) = Attribute.init<A>(body:value:flags:update:)();
  v11 = MEMORY[0x1E69E7CC0];
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Attribute<HoverEffectContext>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 80) = 256;
  *(v13 + 82) = v9;
  *(v13 + 86) = v19;
  *(v13 + 88) = v12;

  v22 = v13;
  if ((v23 & 0x20) == 0)
  {
    v23 |= 0x20u;
  }

  (a3)(v14, v21);
  return outlined destroy of _ViewListInputs(v21);
}

uint64_t static ViewModifier.makeMultiViewList(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  a3();
  v11 = v9;
  return _ViewListOutputs.multiModifier<A>(_:inputs:)(&v11, a2, a5, a6);
}

double GeometryProxy.safeAreaInsets.getter()
{
  v1 = v0[1];
  v21 = *v0;
  v22 = v1;
  v23 = v0[2];
  v24 = *(v0 + 12);
  specialized static Update.begin()();
  GeometryProxy.placementContext.getter(&v16);
  if (v20)
  {
    v2 = 0.0;
  }

  else
  {
    v3 = v19;
    v2 = 0.0;
    if (v19 != *MEMORY[0x1E698D3F8])
    {
      v5 = v17;
      v4 = v18;
      v6 = HIDWORD(v18);
      v7 = v16;
      v8 = HIDWORD(v17);
      v9 = HIDWORD(v16);
      InputValue = AGGraphGetInputValue();
      v11 = *(InputValue + 16);
      v14 = *InputValue;
      v15 = v11;
      v13[0] = v7;
      v13[1] = v9;
      v13[2] = v5;
      v13[3] = v8;
      v13[4] = v4;
      v13[5] = v6;
      v13[6] = v3;
      v2 = SafeAreaInsets.resolve(regions:cornerAdaptation:in:)(-1, 0, v13);
    }
  }

  static Update.end()();
  return v2;
}

uint64_t key path getter for EnvironmentValues.accentColor : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*a1);
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

uint64_t keypath_setTm()
{

  specialized EnvironmentValues.accentColor.setter(v0);
}

uint64_t View.accentColor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t sub_18D18C7C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.accentColor.getter();
  *a1 = result;
  return result;
}

uint64_t _ValueTransactionModifier.init(value:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = a6(0, a4, a5);
  v14 = (a7 + *(result + 36));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

uint64_t static _PreferenceActionModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v49 = a7;
  v78 = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v45 = &v42 - v14;
  v47 = a6;
  v15 = type metadata accessor for PreferenceBinder();
  v48 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v42 - v16;
  v17 = a2[3];
  v18 = a2[1];
  v70 = a2[2];
  v71 = v17;
  v19 = a2[3];
  v72 = a2[4];
  v20 = a2[1];
  v68 = *a2;
  v69 = v20;
  v64 = v70;
  v65 = v19;
  v66 = a2[4];
  v21 = *a1;
  v73 = *(a2 + 20);
  v67 = *(a2 + 20);
  v62 = v68;
  v63 = v18;
  outlined init with copy of _ViewInputs(&v68, v76);
  PreferencesInputs.add<A>(_:)(a4, a4, a5);
  v74[2] = v64;
  v74[3] = v65;
  v74[4] = v66;
  v75 = v67;
  v74[0] = v62;
  v74[1] = v63;
  v58 = v64;
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v56 = v62;
  v57 = v63;
  v22 = outlined init with copy of _ViewInputs(v74, v76);
  a3(&v53, v22, &v56);
  v76[2] = v58;
  v76[3] = v59;
  v76[4] = v60;
  v77 = v61;
  v76[0] = v56;
  v76[1] = v57;
  outlined destroy of _ViewInputs(v76);
  v23 = v53;
  v24 = v54;
  v25 = v55;
  v26 = _ViewOutputs.subscript.getter(a4, a4, a5);
  if ((v26 & 0x100000000) == 0)
  {
    v27 = v26;
    v42 = DWORD2(v69);
    v44 = v23;
    default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v56);
    v50 = v56;
    v51 = DWORD2(v56);
    v52 = BYTE12(v56);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v29 = *(*(AssociatedTypeWitness - 8) + 56);
    v43 = v24;
    v30 = v15;
    v31 = v45;
    v29(v45, 1, 1, AssociatedTypeWitness);
    v32 = v46;
    v33 = PreferenceBinder.init(modifier:keyValue:phase:cycleDetector:lastResetSeed:lastValue:)(v21, v27, v42, &v50, 0, v31, v46);
    MEMORY[0x1EEE9AC00](v33);
    v40 = v30;
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for Attribute<()>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v32, partial apply for closure #1 in Attribute.init<A>(_:), (&v42 - 8), v30, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v35);
    v36 = v32;
    v23 = v44;
    v37 = v30;
    v24 = v43;
    (*(v48 + 8))(v36, v37);
    AGGraphGetFlags();
    AGGraphSetFlags();
  }

  v58 = v64;
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v56 = v62;
  v57 = v63;
  result = outlined destroy of _ViewInputs(&v56);
  v39 = v49;
  *v49 = v23;
  *(v39 + 2) = v24;
  *(v39 + 3) = v25;
  return result;
}

uint64_t type metadata completion function for PreferenceBinder()
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)@<D0>(uint64_t a1@<X8>)
{
  v2 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v3 = *(v2 + 64);

  *a1 = v3;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 4) = 0xFFFFFFFFLL;
  *(a1 + 12) = 0;
  return result;
}

uint64_t PreferenceBinder.init(modifier:keyValue:phase:cycleDetector:lastResetSeed:lastValue:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a4 + 8);
  v10 = *(a4 + 12);
  *a7 = a1;
  *(a7 + 4) = a2;
  *(a7 + 8) = a3;
  *(a7 + 12) = *a4;
  *(a7 + 20) = v9;
  *(a7 + 24) = v10;
  *(a7 + 28) = a5;
  v11 = *(type metadata accessor for PreferenceBinder() + 60);
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(*(v12 - 8) + 32);

  return v13(a7 + v11, a6, v12);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceBinder<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for PreferenceBinder<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t closure #1 in static _ValueTransactionModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = a4(0);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t static _PushPopTransactionModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 16);
  v62[0] = *a2;
  v62[1] = v9;
  v10 = *(a2 + 48);
  v63 = *(a2 + 32);
  v64 = v10;
  v65 = *(a2 + 64);
  v58 = v63;
  v59 = v10;
  v60 = *(a2 + 64);
  v11 = *a1;
  v66 = *(a2 + 80);
  v12 = HIDWORD(v9);
  v61 = *(a2 + 80);
  v56 = v62[0];
  v57 = v9;
  outlined init with copy of _ViewInputs(v62, &v50);

  v14 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v13);

  v29 = a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 16) = v16 + 1;
  *(v14 + 4 * v16 + 32) = v12;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(&v56, v14);

  closure #1 in static _PushPopTransactionModifier._makeView(modifier:inputs:body:)(1);
  LODWORD(v50) = AGGraphCreateOffsetAttribute2();
  DWORD1(v50) = v12;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildTransaction and conformance ChildTransaction();
  v17 = Attribute.init<A>(body:value:flags:update:)();
  v26 = &v26;
  HIDWORD(v57) = v17;
  MEMORY[0x1EEE9AC00](v17);
  v31[1] = v11;
  type metadata accessor for _PushPopTransactionModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #2 in static _PushPopTransactionModifier._makeView(modifier:inputs:body:), a5, v31);
  v18 = v31[0];
  v52 = v58;
  v53 = v59;
  v54 = v60;
  v55 = v61;
  v50 = v56;
  v51 = v57;
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = v27;
  *(v19 + 24) = v20;
  ShouldRecordTree = AGSubgraphShouldRecordTree();

  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v42 = v52;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v40 = v50;
  v41 = v51;
  LODWORD(v28) = v52;
  LODWORD(v42) = 0;
  LODWORD(v27) = v18;
  LODWORD(v32[0]) = v18;
  v46[0] = v50;
  v46[1] = v51;
  v47 = v55;
  v46[3] = v53;
  v46[4] = v54;
  v46[2] = v42;
  v37 = v53;
  v38 = v54;
  v39 = v55;
  v34 = v50;
  v35 = v51;
  v36 = v42;
  v22 = v30;
  v23 = *(v30 + 24);
  outlined init with copy of _ViewInputs(&v50, v48);
  outlined init with copy of _ViewInputs(v46, v48);
  v24 = v29;
  v23(v32, &v34, partial apply for closure #3 in static _PushPopTransactionModifier._makeView(modifier:inputs:body:), v19, a5, v22);
  v48[2] = v36;
  v48[3] = v37;
  v48[4] = v38;
  v49 = v39;
  v48[0] = v34;
  v48[1] = v35;
  outlined destroy of _ViewInputs(v48);
  LODWORD(v42) = v28;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v24, &v40);
    AGSubgraphEndTreeElement();
  }

  v32[2] = v42;
  v32[3] = v43;
  v32[4] = v44;
  v33 = v45;
  v32[0] = v40;
  v32[1] = v41;
  outlined destroy of _ViewInputs(v32);
  v37 = v59;
  v38 = v60;
  v39 = v61;
  v34 = v56;
  v35 = v57;
  v36 = v58;
  return outlined destroy of _ViewInputs(&v34);
}

void type metadata accessor for _ContiguousArrayStorage<Attribute<Transaction>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<Transaction>>)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(255, &lazy cache variable for type metadata for Attribute<Transaction>, &type metadata for Transaction, MEMORY[0x1E698D388]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<Transaction>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.SavedTransactionKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016SavedTransactionV033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt0B5(v4, v8);
  if (!v5 || (result = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14AttributeGraph0B0Vy7SwiftUI11TransactionVG_Tt1g5(a2, *(v5 + 72)), (result & 1) == 0))
  {
    v7 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.SavedTransactionKey>, &type metadata for _GraphInputs.SavedTransactionKey, &protocol witness table for _GraphInputs.SavedTransactionKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.SavedTransactionKey, 0, v7);
  }

  return result;
}

uint64_t closure #1 in static _PushPopTransactionModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for _PushPopTransactionModifier();
  v3 = *(v2 + 36);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v7, &type metadata for _TransactionModifier, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #3 in static _PushPopTransactionModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v33 = *(a2 + 32);
  v34 = v5;
  v7 = *(a2 + 48);
  v35 = *(a2 + 64);
  v8 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v8;
  v28 = v33;
  v29 = v7;
  v30 = *(a2 + 64);
  v36 = *(a2 + 80);
  v31 = *(a2 + 80);
  v26 = v32[0];
  v27 = v6;
  outlined init with copy of _ViewInputs(v32, &v20);

  v10 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5Tf4n_g(v9);
  if (!*(v10 + 16))
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v12 = *(result + 16);
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v3 + 16);
  if (v12)
  {
LABEL_4:
    v13 = v12 - 1;
    v14 = *(v3 + 4 * v13 + 32);
    *(v3 + 16) = v13;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016SavedTransactionF033_A1B10B5AB036C34AB7DD2EE8825FCA93LLV_Tt2g5(&v26, v3);

    HIDWORD(v27) = v14;
    v16[2] = v28;
    v16[3] = v29;
    v16[4] = v30;
    v17 = v31;
    v16[0] = v26;
    v16[1] = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v15 = outlined init with copy of _ViewInputs(v16, v18);
    a3(v15, &v20);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    outlined destroy of _ViewInputs(v18);
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    return outlined destroy of _ViewInputs(&v20);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14AttributeGraph0B0Vy7SwiftUI11TransactionVG_Tt1g5(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Font.ModifierProvider<Font.WeightModifier> and conformance Font.ModifierProvider<A>()
{
  result = lazy protocol witness table cache variable for type Font.ModifierProvider<Font.WeightModifier> and conformance Font.ModifierProvider<A>;
  if (!lazy protocol witness table cache variable for type Font.ModifierProvider<Font.WeightModifier> and conformance Font.ModifierProvider<A>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for Font.ModifierProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.ModifierProvider<Font.WeightModifier> and conformance Font.ModifierProvider<A>);
  }

  return result;
}

uint64_t static CustomModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v14 = *(a2 + 48);
  v15 = *(a2 + 16);
  v54 = *(a2 + 32);
  v55 = v14;
  v16 = *(a2 + 48);
  v56 = *(a2 + 64);
  v17 = *(a2 + 16);
  v53[0] = *a2;
  v53[1] = v17;
  v49 = v54;
  v50 = v16;
  v51 = *(a2 + 64);
  v18 = *a1;
  v57 = *(a2 + 80);
  v52 = *(a2 + 80);
  v47 = v53[0];
  v48 = v15;
  v19 = type metadata accessor for PlaceholderContentView();
  outlined init with copy of _ViewInputs(v53, &v58);
  _ViewInputs.pushModifierBody<A>(_:body:)(v19, a3, a4);
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v25[1] = v18;
  type metadata accessor for CustomModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static CustomModifier._makeView(modifier:inputs:body:), a6, v25);
  v20 = v25[0];
  v60 = v49;
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v58 = v47;
  v59 = v48;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v39 = v60;
  v40 = v61;
  v41 = v62;
  v42 = v63;
  v37 = v58;
  v38 = v59;
  v22 = v60;
  LODWORD(v39) = 0;
  LODWORD(v29[0]) = v20;
  v43[0] = v58;
  v43[1] = v59;
  v44 = v63;
  v43[3] = v61;
  v43[4] = v62;
  v43[2] = v39;
  v33 = v39;
  v34 = v61;
  v35 = v62;
  v36 = v63;
  v31 = v58;
  v32 = v59;
  v23 = *(a7 + 24);
  outlined init with copy of _ViewInputs(&v58, v45);
  outlined init with copy of _ViewInputs(v43, v45);
  v23(v29, &v31, a6, a7);
  v45[2] = v33;
  v45[3] = v34;
  v45[4] = v35;
  v46 = v36;
  v45[0] = v31;
  v45[1] = v32;
  outlined destroy of _ViewInputs(v45);
  LODWORD(v39) = v22;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v37);
    AGSubgraphEndTreeElement();
  }

  v29[2] = v49;
  v29[3] = v50;
  v29[4] = v51;
  v30 = v52;
  v29[0] = v47;
  v29[1] = v48;
  outlined destroy of _ViewInputs(v29);
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v36 = v42;
  v31 = v37;
  v32 = v38;
  return outlined destroy of _ViewInputs(&v31);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CustomModifier<A, B>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  return static CustomModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5[2], a5[3], a5[4], a6);
}

{
  return static CustomModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5[2], a5[3], a5[4], a5[5], a6);
}

{
  return static CustomModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5[2], a5[3], a5[4], a5[5], a6);
}

uint64_t closure #1 in static CustomModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = type metadata accessor for CustomModifier();
  v8[3] = a3;
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v8, a3, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t partial apply for closure #1 in static CustomModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  return closure #1 in static CustomModifier._makeView(modifier:inputs:body:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return closure #1 in static CustomModifier._makeView(modifier:inputs:body:)(a1, v1[2], v1[3], v1[4], v1[5]);
}

{
  return closure #1 in closure #3 in static PhaseAnimator.StateTransitioningContainer._makeView(view:inputs:)(a1, v1[2], v1[3], v1[4], v1[5], type metadata accessor for CustomModifier, closure #1 in static PointerOffset.of(_:)partial apply);
}

double _s7SwiftUI22_DynamicPropertyBufferV6fields9container6inputsAcA0cD5CacheV6FieldsV_AA11_GraphValueVyxGAA01_K6InputsVztclufCAA36ContentCaptureProtectionViewModifierV_Tt3B5Tm@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v19 = 0;
  v20 = 0.0;
  if (a3)
  {
    if (*(a2 + 16))
    {
      v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI20DynamicPropertyCacheV12TaggedFieldsVG_Si3tag_AF01_fG6BufferV5linksts5NeverOTg503_s7d5UI22_fgl5V9addj37_9container6inputs10baseOffsetyAA0cD5h65V0G0V_AA11_GraphValueVyxGAA01_M6InputsVzSitlFSi3tag_AC5linkstAI06iW29VXEfU_AA14LinearGradientV_TG5AF01_yZ0VyAF14LinearGradientVGAF01_Y6InputsVTf1cn_nTm(a2, a4, a5, a6);
      project #1 <A><A1>(type:) in _DynamicPropertyBuffer.addFields<A>(_:container:inputs:baseOffset:)(a1, &v19, v12, 0);
    }
  }

  else
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = (a1 + 48);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v14 += 4;
        v18[0] = a4;
        (*(v15 + 8))(&v19, v18, v16, a5, a6);
        --v13;
      }

      while (v13);
    }
  }

  outlined consume of DynamicPropertyCache.Fields.Layout();
  *a7 = v19;
  result = v20;
  a7[1] = v20;
  return result;
}

uint64_t State.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  specialized LazyState.wrappedValue.setter(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t specialized LazyState.wrappedValue.setter(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 28));
  if (v3)
  {
    return (*(*v3 + 128))(result, 0);
  }

  return result;
}

void NamedImage.BitmapKey.loadBitmapInfo(location:idiom:subtype:)(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  if (!*a1)
  {
    if (one-time initialization token for systemAssetManager != -1)
    {
      swift_once();
    }

    v9 = static Image.Location.systemAssetManager;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    if (one-time initialization token for privateSystemAssetManager != -1)
    {
      swift_once();
    }

    v9 = static Image.Location.privateSystemAssetManager;
LABEL_9:
    v10 = v9;
    goto LABEL_13;
  }

  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  v10 = NamedImage.Cache.subscript.getter(v8);
  if (!v10)
  {
    goto LABEL_75;
  }

LABEL_13:
  v11 = v10;
  if (*(v4 + 40))
  {
    v12 = 4;
  }

  else
  {
    v12 = 5;
  }

  if (a2 == 8)
  {
    type metadata accessor for NamedImage.VectorInfo?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CatalogAssetMatchType>, &type metadata for CatalogAssetMatchType, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v13 = v10;
    *(v10 + 1) = xmmword_18DDAB4C0;
    *(v10 + 4) = 8;
    *(v10 + 40) = 0;
    *(v10 + 6) = 1;
    *(v10 + 56) = 1;
  }

  else
  {
    v13 = &outlined read-only object #0 of NamedImage.BitmapKey.loadBitmapInfo(location:idiom:subtype:);
  }

  MEMORY[0x1EEE9AC00](v10);
  v81[2] = v11;
  v81[3] = v4;
  v81[4] = a2;
  v81[5] = a3;
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v81[6] = v12;
  v17 = specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v16 | v14, v13, partial apply for closure #1 in NamedImage.BitmapKey.loadBitmapInfo(location:idiom:subtype:), v81);

  if (!v17)
  {
LABEL_74:

LABEL_75:
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 48) = 3;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0u;
    *(a4 + 88) = 0;
    return;
  }

  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v18 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (static Semantics.forced < v18)
  {
LABEL_52:
    v58 = [v17 image];
    if (v58)
    {
      v59 = v58;
      if (v8 >= 2)
      {
        if (one-time initialization token for sharedCache != -1)
        {
          swift_once();
        }

        v60 = NamedImage.Cache.subscript.getter(v8);
        if (v60)
        {
          if (v61)
          {
            v62 = v60;
            v63 = v59;
            v64 = MEMORY[0x193ABEC20](0xD000000000000020, 0x800000018DD7CB20);
            CGImageSetProperty();

            v60 = v64;
          }
        }
      }

      v47 = v59;
      Width = CGImageGetWidth(v47);
      Height = CGImageGetHeight(v47);

      v57 = 0;
      v56 = Height;
      goto LABEL_61;
    }

    goto LABEL_74;
  }

  if (![v17 preservedVectorRepresentation])
  {
    goto LABEL_52;
  }

  *&v84 = MEMORY[0x193ABEC20](*(v4 + 8), *(v4 + 16));
  v19 = *(v4 + 24);
  v20 = *(v4 + *(type metadata accessor for NamedImage.BitmapKey(0) + 40));
  v21 = v12;
  v22 = v17;
  v23 = [v22 appearance];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v25 = v84;
  *&v85 = v21;
  v26 = [v11 namedVectorImageWithName:v84 scaleFactor:v20 displayGamut:v21 layoutDirection:v23 appearanceName:isa locale:v19];

  if (!v26)
  {

    v12 = v85;
    goto LABEL_52;
  }

  *&v84 = v22;
  v27 = [v26 appearance];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = v84;
  v33 = [v84 appearance];

  if (!v33)
  {
    v12 = v85;
    if (!v31)
    {
      goto LABEL_48;
    }

LABEL_44:

    goto LABEL_52;
  }

  *&v83 = v29;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v12 = v85;
  if (!v31)
  {
    if (!v36)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (!v36)
  {
    goto LABEL_44;
  }

  if (v83 == v34 && v31 == v36)
  {

    goto LABEL_48;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v37 & 1) == 0)
  {
LABEL_50:

    goto LABEL_52;
  }

LABEL_48:
  v86 = v8;
  v38 = v26;
  outlined copy of Image.Location(v8);
  v39 = v84;
  [v84 size];
  VectorImageLayer.init(image:location:size:)(v38, &v86, v87, v40, v41);
  v42 = v87[0];
  if (!v87[0])
  {

    goto LABEL_52;
  }

  v44 = v87[2];
  v43 = v87[3];
  v45 = v87[1];
  v46 = v39;
  v47 = swift_allocObject();
  v47[2] = v42;
  v47[3] = v45;
  v47[4] = v44;
  v47[5] = v43;

  outlined copy of Image.Location?(v45);

  [v46 size];
  v49 = v48;
  v51 = v50;
  v52 = v46;
  v12 = v85;
  [v52 scale];
  v54 = v53;

  outlined consume of VectorImageLayer?(v42, v45);
  Width = v49 * v54;
  v56 = v51 * v54;
  v57 = 3;
LABEL_61:
  v66 = [v17 templateRenderingMode];
  if (v66)
  {
    v67 = 2 * (v66 != 1);
  }

  else
  {
    v67 = 1;
  }

  v68 = specialized Image.Orientation.init(exifValue:)([v17 exifOrientation] & 0xF);
  if (v68 == 8)
  {
    LOBYTE(v69) = 0;
  }

  else
  {
    LOBYTE(v69) = v68;
  }

  v70 = [v17 layoutDirection];
  if ([v17 isFlippable] && v70 && v70 != v12)
  {
    v69 = 0x607040502030001uLL >> (8 * v69);
  }

  [v17 scale];
  v72 = v71;
  if ([v17 hasSliceInformation])
  {
    [v17 edgeInsets];
    v83 = v73;
    v84 = v74;
    v82 = v75;
    v85 = v76;
    v77 = [v17 resizingMode];

    *&v80 = v82;
    *&v79 = v83;
    v78 = v77 != 0;
    *(&v79 + 1) = v84;
    *(&v80 + 1) = v85;
  }

  else
  {

    v79 = 0uLL;
    v78 = 2;
    v80 = 0uLL;
  }

  *a4 = v47;
  *(a4 + 8) = v57;
  *(a4 + 16) = v72;
  *(a4 + 24) = v69;
  *(a4 + 32) = Width;
  *(a4 + 40) = v56;
  *(a4 + 48) = v67;
  *(a4 + 56) = v79;
  *(a4 + 72) = v80;
  *(a4 + 88) = v78;
}

uint64_t sub_18D18E898()
{

  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
  }

  return swift_deallocObject();
}

uint64_t specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(__int16 a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = a2;
  v8 = a1;
  v42 = a2 + 32;
  v43 = *(a2 + 32);
  v44 = *(a2 + 40);
  if (v43 == 8)
  {
    v9 = *(a2 + 40);
  }

  else
  {
    v9 = 1;
  }

  if ((a1 & 0x100) == 0)
  {
    if (v9)
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 1) = xmmword_18DDAB4C0;
      v10[32] = v8 & 1;
      v10[33] = 0;
      v11 = v10 + 34;
      v12 = v10 + 35;
      goto LABEL_11;
    }

    v10 = &outlined read-only object #1 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
    v14 = qword_1F0044218;
    if (qword_1F0044218)
    {
      goto LABEL_14;
    }

LABEL_58:

    goto LABEL_59;
  }

  if (v9)
  {
    _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_18DDACA80;
    v10[32] = v8 & 1;
    v10[33] = 1;
    v10[34] = v8 & 1;
    *(v10 + 35) = 512;
    v10[37] = 1;
    v11 = v10 + 38;
    v12 = v10 + 39;
LABEL_11:
    *v11 = 2;
    *v12 = 0;
    v14 = *(v10 + 2);
    if (!v14)
    {
      goto LABEL_58;
    }

    goto LABEL_14;
  }

  v10 = &outlined read-only object #0 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
  v14 = qword_1F00441F0;
  if (!qword_1F00441F0)
  {
    goto LABEL_58;
  }

LABEL_14:
  v39 = v8;
  v40 = v7;
  v13 = 0;
  v15 = v10 + 33;
  v16 = v43;
  v17 = v44;
  v41 = a3;
  do
  {
    if (!v13)
    {
      v18 = *(v15 - 1);
      v19 = 0xD00000000000001BLL;
      if (!*v15)
      {
        v19 = 0x7261657070414955;
      }

      v20 = 0x800000018DD7CA20;
      if (!*v15)
      {
        v20 = 0xEF796E4165636E61;
      }

      v21 = 0xD00000000000001CLL;
      if (!*v15)
      {
        v21 = 0xD000000000000010;
      }

      v22 = "UIAppearanceHighContrastAny";
      if (!*v15)
      {
        v22 = "UIAppearanceHighContrastDark";
      }

      v23 = v22 | 0x8000000000000000;
      if (*v15)
      {
        v24 = 0xD00000000000001DLL;
      }

      else
      {
        v24 = 0xD000000000000011;
      }

      v25 = "UIAppearanceDark";
      if (!*v15)
      {
        v25 = "UIAppearanceHighContrastLight";
      }

      v26 = v25 | 0x8000000000000000;
      if (v18)
      {
        v24 = v21;
        v27 = v23;
      }

      else
      {
        v27 = v26;
      }

      if (v18 == 2)
      {
        v28 = v19;
      }

      else
      {
        v28 = v24;
      }

      if (v18 == 2)
      {
        v29 = v20;
      }

      else
      {
        v29 = v27;
      }

      v30 = a3(v28, v29);
      v13 = v30;
      if (!v30)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (v17)
      {
        if (!v16)
        {
          goto LABEL_15;
        }

        v31 = [v30 appearance];
        if (v31)
        {
          v32 = v31;
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          if (v33 == v28 && v35 == v29)
          {

            a3 = v41;
            v16 = v43;
            v17 = v44;
          }

          else
          {
            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v17 = v44;
            if ((v37 & 1) == 0)
            {

              v13 = 0;
            }

            a3 = v41;
            v16 = v43;
          }
        }

        else
        {

          v13 = 0;
          v17 = v44;
        }
      }

      else
      {

        if ([v13 idiom] != v16)
        {

          v13 = 0;
        }
      }
    }

LABEL_16:
    v15 += 2;
    --v14;
  }

  while (v14);

  v7 = v40;
  v8 = v39;
  if (v13)
  {
    return v13;
  }

LABEL_59:

  return specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v8 & 0x101, v7, v42, 1, (2 * v4) | 1, a3, a4);
}

id closure #1 in NamedImage.BitmapKey.loadBitmapInfo(location:idiom:subtype:)(uint64_t a1, uint64_t a2, void *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = MEMORY[0x193ABEC20](*(a4 + 1), *(a4 + 2));
  v13 = a4[3];
  v14 = type metadata accessor for NamedImage.BitmapKey(0);
  v15 = *(a4 + v14[10]);
  v16 = *(a4 + v14[13]);
  v17 = *(a4 + v14[14]);
  v18 = MEMORY[0x193ABEC20](a1, a2);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v20 = [a3 imageWithName:v12 scaleFactor:a5 deviceIdiom:a6 deviceSubtype:v15 displayGamut:a7 layoutDirection:v16 sizeClassHorizontal:v13 sizeClassVertical:v17 appearanceName:v18 locale:isa];

  return v20;
}

double VectorImageLayer.init(image:location:size:)@<D0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *a2;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_13:
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = a1;
      v22 = [v20 svgDocument];
      if (v22)
      {
        v15 = v22;
        if (v9 >= 2)
        {
          if (one-time initialization token for sharedCache != -1)
          {
            swift_once();
          }

          v16 = NamedImage.Cache.subscript.getter(v9);
          v24 = v23;

          if (!v16 || (v24 & 1) != 0)
          {
            goto LABEL_22;
          }

          v21 = v16;
        }

        v16 = 0;
LABEL_22:
        type metadata accessor for SVGImageContents();
        goto LABEL_23;
      }
    }

    outlined consume of Image.Location(v9);

    outlined consume of Image.Location?(2);
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v11 = v10;
  v12 = a1;
  v13 = [v11 pdfDocument];
  if (!v13 || (v14 = v13, v15 = CGPDFDocumentGetPage(v13, 1uLL), v14, !v15))
  {

    goto LABEL_13;
  }

  if (v9 >= 2)
  {
    if (one-time initialization token for sharedCache != -1)
    {
      swift_once();
    }

    v16 = NamedImage.Cache.subscript.getter(v9);
    v18 = v17;

    if (!v16 || (v18 & 1) != 0)
    {
      goto LABEL_11;
    }

    v12 = v16;
  }

  v16 = 0;
LABEL_11:
  type metadata accessor for PDFImageContents();
LABEL_23:
  v25 = swift_allocObject();
  *(v25 + 48) = v15;
  *(v25 + 56) = v16;
  *(v25 + 40) = 0;
  *(v25 + 24) = a4;
  *(v25 + 32) = a5;
  *(v25 + 16) = MEMORY[0x1E69E7CC8];
  v26 = [a1 name];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  outlined consume of Image.Location?(2);
  *a3 = v25;
  *(a3 + 8) = v9;
  *(a3 + 16) = v28;
  *(a3 + 24) = v30;

  outlined copy of Image.Location?(v9);

  outlined consume of Image.Location?(v9);

  return result;
}

uint64_t outlined consume of VectorImageLayer?(uint64_t result, void *a2)
{
  if (result)
  {

    outlined consume of Image.Location?(a2);
  }

  return result;
}

uint64_t specialized Image.Orientation.init(exifValue:)(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return (0x407060503020100uLL >> (8 * (a1 - 1)));
  }
}

uint64_t outlined init with take of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for NamedImage._BitmapInfo()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithTake for NamedImage._BitmapInfo(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t initializeWithTake for NamedImage.WeakOrStrongImageContents(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 9);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    v3 = *(a2 + 8);
    if (v3 >= 3)
    {
      v3 = *a2 + 3;
    }

    if (v3 == 2)
    {
      result = swift_weakTakeInit();
      v4 = 2;
    }

    else if (v3 == 1)
    {
      result = swift_unknownObjectWeakTakeInit();
      v4 = 1;
    }

    else
    {
      result = swift_unknownObjectWeakTakeInit();
      v4 = 0;
    }

    *(result + 8) = v4;
    *(result + 9) = 1;
  }

  else
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<NamedImage.BitmapKey, NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NamedImage.BitmapKey, NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>>)
  {
    type metadata accessor for NamedImage.BitmapKey(255);
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type NamedImage.BitmapKey and conformance NamedImage.BitmapKey, type metadata accessor for NamedImage.BitmapKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NamedImage.BitmapKey, NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>>);
    }
  }
}

uint64_t MatchedGeometryScope.__deallocating_deinit()
{
  v1 = *(v0 + 72);
  v4[2] = *(v0 + 56);
  v4[3] = v1;
  v4[4] = *(v0 + 88);
  v5 = *(v0 + 104);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  return swift_deallocClassInstance();
}

unint64_t one-time initialization function for defaultValue()
{
  result = lazy protocol witness table accessor for type EmptyImageAccessibilityProvider and conformance EmptyImageAccessibilityProvider();
  *&static _GraphInputs.ImageAccessibilityProviderKey.defaultValue = &type metadata for EmptyImageAccessibilityProvider;
  *(&static _GraphInputs.ImageAccessibilityProviderKey.defaultValue + 1) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type EmptyTextAccessibilityProvider and conformance EmptyTextAccessibilityProvider();
  *&static _GraphInputs.TextAccessibilityProviderKey.defaultValue = &type metadata for EmptyTextAccessibilityProvider;
  *(&static _GraphInputs.TextAccessibilityProviderKey.defaultValue + 1) = result;
  return result;
}

{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  qword_1ED522CE8 = 0;
  qword_1ED522CF0 = 0;
  static ScrollAnchorsKey.defaultValue = result;
  byte_1ED522CF8 = 1;
  return result;
}

{
  v0 = MEMORY[0x1E69E7CC0];
  static AttributeCountInfoKey.defaultValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  qword_1EAB29248 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(v0);
  qword_1EAB29250 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(v0);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(v0);
  qword_1EAB29258 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyImageAccessibilityProvider and conformance EmptyImageAccessibilityProvider()
{
  result = lazy protocol witness table cache variable for type EmptyImageAccessibilityProvider and conformance EmptyImageAccessibilityProvider;
  if (!lazy protocol witness table cache variable for type EmptyImageAccessibilityProvider and conformance EmptyImageAccessibilityProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyImageAccessibilityProvider and conformance EmptyImageAccessibilityProvider);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<RBImageRendererProperty, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<RBImageRendererProperty, Any>)
  {
    type metadata accessor for RBImageRendererProperty(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty, type metadata accessor for RBImageRendererProperty);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<RBImageRendererProperty, Any>);
    }
  }
}

uint64_t DisplayList.GraphicsRenderer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static Animation.default.getter()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>, &type metadata for EnvironmentValues.AssetCatalogConfigurationKey, &protocol witness table for EnvironmentValues.AssetCatalogConfigurationKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AssetCatalogConfigurationKey>>);
    }
  }
}

void NamedImage.Cache.subscript.getter(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  os_unfair_lock_lock(v4 + 6);
  _s7SwiftUI10NamedImageO5CacheCyAC11_BitmapInfoVy_AA08GraphicsD0V8ContentsOGSgAC0F3KeyV_AA0D0V8LocationOtcigAMSgAE4Data33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLVzYuYTXEfU_(&v4[8], a1, v64);
  os_unfair_lock_unlock(v4 + 6);
  v12 = v65;
  if (v65 == 4)
  {
    v36 = v11;
    NamedImage.BitmapKey.loadBitmapInfo(location:idiom:subtype:)(&v36, *(a1 + *(v8 + 44)), *(a1 + *(v8 + 48)), &v48);
    v13 = v48;
    v14 = v49;
    v63[0] = *v50;
    *(v63 + 3) = *&v50[3];
    v15 = v51;
    v16 = v52;
    v62[0] = *v53;
    *(v62 + 3) = *&v53[3];
    v18 = v54;
    v17 = v55;
    v20 = v56;
    v19 = v57;
    v22 = v58;
    v21 = v59;
    v23 = v60;
    v24 = v61;
    if (v56 == 3)
    {
      *a3 = v48;
      *(a3 + 8) = v14;
      *(a3 + 9) = v63[0];
      *(a3 + 12) = *(v63 + 3);
      *(a3 + 16) = v15;
      *(a3 + 24) = v16;
      *(a3 + 25) = v62[0];
      *(a3 + 28) = *(v62 + 3);
      *(a3 + 32) = v18;
      *(a3 + 40) = v17;
      *(a3 + 48) = v20;
      *(a3 + 56) = v19;
      *(a3 + 64) = v22;
      *(a3 + 72) = v21;
      *(a3 + 80) = v23;
      *(a3 + 88) = v24;
      return;
    }

    v32 = v58;
    v33 = v60;
    v35 = v59;
    v34 = v61;
    v28 = v58;
    v31 = v49;
    os_unfair_lock_lock(v4 + 6);
    outlined init with copy of NamedImage.Key(a1, v10, type metadata accessor for NamedImage.BitmapKey);
    v36 = v13;
    v37 = v31;
    v38 = v15;
    v39 = v16;
    v40 = v18;
    v41 = v17;
    v42 = v20;
    v43 = v19;
    v44 = v28;
    v45 = v35;
    v46 = v33;
    v47 = v34;
    LOBYTE(v28) = v31;
    outlined copy of GraphicsImage.Contents(v13, v31);
    specialized Dictionary.subscript.setter(&v36, v10);
    os_unfair_lock_unlock(v4 + 6);
    *a3 = v13;
    *(a3 + 8) = v28;
    *(a3 + 9) = *v50;
    *(a3 + 12) = *&v50[3];
    *(a3 + 16) = v15;
    *(a3 + 24) = v16;
    *(a3 + 25) = *v53;
    *(a3 + 28) = *&v53[3];
    *(a3 + 32) = v18;
    *(a3 + 40) = v17;
    *(a3 + 48) = v20;
    *(a3 + 56) = v19;
    v29 = v35;
    *(a3 + 64) = v32;
    *(a3 + 72) = v29;
    *(a3 + 80) = v33;
    v27 = v34;
  }

  else
  {
    v25 = v64[1];
    *a3 = v64[0];
    *(a3 + 16) = v25;
    *(a3 + 32) = v64[2];
    *(a3 + 48) = v12;
    v26 = v67;
    *(a3 + 56) = v66;
    *(a3 + 72) = v26;
    v27 = v68;
  }

  *(a3 + 88) = v27;
}

uint64_t ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 24) <= 2u)
  {
    v5 = *a2;
    if (*(a2 + 24))
    {
      if (*(a2 + 24) == 1)
      {
        v6 = *(a2 + 8);
        if (v6 == *(a2 + 16))
        {
          return result;
        }

        v7 = *(a2 + 56);
        v36 = *(a2 + 48);
        v37 = v7;
        v8 = *(a4 + 40);
        v9 = result;

        v8(&v44, &v36, a3, a4);

        v12 = v45;
        v13 = v46;
        v14 = v47;
        v15 = *(a2 + 56);
        v36 = *(a2 + 48);
        v37 = v15;
        v16 = *(*v9 + 168);

        v17 = v16(v6, &v36);

        v36 = v44;
        LODWORD(v37) = v12;
        *(&v37 + 1) = v13 * v17;
        v38 = v14;
        v39 = 0;
        v40 = 1065353216;
        v41 = 0;
        v42 = -1;
        v18 = MEMORY[0x1E69E7CC0];
        v43 = MEMORY[0x1E69E7CC0];
        v35 = v5;
        if (*(a2 + 40) == 1)
        {
          v18 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v19, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v36, &v35, v6);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v18;
        v20 = 1;
      }

      else
      {
        v28 = result;
        if (v5 >= 1)
        {
          v29 = *(a2 + 56);
          v36 = *(a2 + 48);
          v37 = v29;
          v30 = *(*result + 168);
          v31 = result;

          v32 = v30(v5, &v36);

          type metadata accessor for ColorBox<Color.OpacityColor>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor);
          v28 = swift_allocObject();
          *(v28 + 16) = v31;
          *(v28 + 24) = v32;
        }

        v33 = *(a2 + 32);
        v34 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v33, v34);
        *(a2 + 32) = v28;
        v20 = 3;
      }

      *(a2 + 40) = v20;
    }

    else
    {
      v21 = result;
      if (v5 >= 1)
      {
        v22 = *(a2 + 56);
        v36 = *(a2 + 48);
        v37 = v22;
        v23 = *(*result + 168);
        v24 = result;

        v25 = v23(v5, &v36);

        type metadata accessor for ColorBox<Color.OpacityColor>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor);
        v21 = swift_allocObject();
        *(v21 + 16) = v24;
        *(v21 + 24) = v25;
      }

      v26 = *(a2 + 32);
      v27 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v26, v27);
      *(a2 + 32) = v21;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t NamedImage.BitmapKey.init(name:location:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *(a4 + 8);
  v40 = *a4;
  v41 = v10;

  EnvironmentValues.colorScheme.getter(&v39);
  v11 = v39;
  if (v10)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v9, &v40);

    v12 = v40;
    *a5 = v11;
    *(a5 + 1) = v12;
    *(a5 + 8) = a1;
    *(a5 + 16) = a2;

    v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9);

    *(a5 + 24) = v13;
    *(a5 + 32) = v8;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v9, &v40);

    v14 = v40;
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v9);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a5 = v11;
    *(a5 + 1) = v16;
    *(a5 + 8) = a1;
    *(a5 + 16) = a2;
    v17 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
    if (v17)
    {
      v18 = v17[9];
    }

    else
    {
      v18 = 1.0;
    }

    *(a5 + 24) = v18;
    *(a5 + 32) = v8;
    v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v9);
    if (v19)
    {
      v14 = *(v19 + 72);
    }

    else
    {
      v14 = 0;
    }
  }

  *(a5 + 40) = v14;
  v20 = type metadata accessor for NamedImage.BitmapKey(0);
  v21 = v20[9];
  if (v10)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, a5 + v21);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, &v40);

    *(a5 + v20[10]) = v40;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v9, &v40);

    v22 = v40;
  }

  else
  {
    v23 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
    if (v23)
    {
      v24 = *(*v23 + 248);
      v25 = v23;
      v26 = type metadata accessor for Locale();
      (*(*(v26 - 8) + 16))(a5 + v21, &v25[v24], v26);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Locale();
      v28 = __swift_project_value_buffer(v27, static LocaleKey.defaultValue);
      (*(*(v27 - 8) + 16))(a5 + v21, v28, v27);
    }

    v29 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
    if (v29)
    {
      v30 = *(v29 + 72);
    }

    else
    {
      v30 = 0;
    }

    *(a5 + v20[10]) = v30;
    v31 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v9);
    if (v31)
    {
      v22 = *(v31 + 72);
    }

    else
    {
      v22 = 6;
    }
  }

  LOBYTE(v40) = v22;
  *(a5 + v20[11]) = ViewGraphHost.Idiom.cuiDeviceClass.getter();
  v40 = v9;
  v41 = v10;
  *(a5 + v20[12]) = EnvironmentValues.cuiAssetSubtype.getter();
  if (v10)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA032HorizontalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, &v40);

    if (v40 == 2)
    {
      v32 = 0;
    }

    else
    {
      v32 = (v40 & 1) + 1;
    }

    *(a5 + v20[13]) = v32;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA030VerticalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, &v40);

    v34 = v40;
  }

  else
  {
    v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
    if (v35 && *(v35 + 72) != 2)
    {
      v36 = (v35[9] & 1) + 1;
    }

    else
    {
      v36 = 0;
    }

    *(a5 + v20[13]) = v36;
    v37 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v9);
    if (v37)
    {
      v34 = *(v37 + 72);
    }

    else
    {
      v34 = 2;
    }
  }

  if (v34 == 2)
  {
    v38 = 0;
  }

  else
  {
    v38 = (v34 & 1) + 1;
  }

  *(a5 + v20[14]) = v38;
  return result;
}

uint64_t EnvironmentValues.cuiAssetSubtype.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v1, &v18);

    v3 = v18;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE025AssetCatalogConfigurationI033_F748B30B59970FC73194935C526E3031LLVG_Tt1g5(v1, &v18);

    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    v9 = 0;
    v10 = 0.0;
    v11 = 100.0;
    v12 = 0.0;
    v13 = 100.0;
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v1);
  if (v4)
  {
    v3 = *(v4 + 72);
  }

  else
  {
    v3 = 6;
  }

  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE025AssetCatalogConfigurationS033_F748B30B59970FC73194935C526E3031LLVG_Tt0g5(v1);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 13);
  v7 = *(v5 + 120);
  v8 = *(v5 + 11);
  v18 = *(v5 + 9);
  v19 = v8;
  v20 = v6;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_12:
  v13 = *(&v19 + 1);
  v12 = *(&v18 + 1);
  v11 = *&v19;
  v10 = *&v18;
  if (v20 == 163.0)
  {
    v9 = 163;
  }

  else
  {
    v9 = 0;
  }

  if (!v2)
  {
LABEL_16:
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v1);
    if (v15)
    {
      v14 = v15[9];
      if (v3 > 7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = 1.0;
      if (v3 > 7)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_27;
  }

LABEL_10:

  v14 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

  if (v3 > 7)
  {
LABEL_18:
    if (v3 != 8)
    {
      if (v3 == 10)
      {
        return 320;
      }

      if (v3 == 11)
      {
        return 3648;
      }

      return 0;
    }

    v22.origin.x = v10;
    v22.origin.y = v12;
    v22.size.width = v11;
    v22.size.height = v13;
    if (v14 * CGRectGetHeight(v22) >= 1080.0)
    {
      return 0;
    }

    else
    {
      return 720;
    }
  }

LABEL_27:
  if (v3 != 6)
  {
    if (v3 == 7)
    {
      return v9;
    }

    return 0;
  }

  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v11;
  v23.size.height = v13;
  Height = CGRectGetHeight(v23);
  if (Height > 667.0)
  {
    return 570;
  }

  if (Height > 568.0)
  {
    return 569;
  }

  if (Height <= 480.0)
  {
    return 0;
  }

  return 568;
}

void _s7SwiftUI10NamedImageO5CacheCyAC11_BitmapInfoVy_AA08GraphicsD0V8ContentsOGSgAC0F3KeyV_AA0D0V8LocationOtcigAMSgAE4Data33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLVzYuYTXEfU_(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  v10 = (a1 + 8);
  v9 = v11;
  if (!*(v11 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v13 & 1) == 0))
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 48) = 4;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    return;
  }

  v14 = v12;
  v15 = *(v9 + 36);
  specialized Dictionary.Values.subscript.getter(v12, v15, v9, &v49);
  outlined init with copy of NamedImage.WeakOrStrongImageContents(&v49, &v46);
  if ((v48 & 1) == 0)
  {
    v33 = v46;
    v24 = v47;
    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(&v49, v34, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for NamedImage.VectorInfo?);
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v42;
    v32 = v40;
    v31 = v41;
    _sypSgWOhTm_9(v34, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    *a3 = v33;
    *(a3 + 8) = v24;
    *(a3 + 16) = v25;
    *(a3 + 24) = v26;
    *(a3 + 32) = v27;
    *(a3 + 40) = v28;
    *(a3 + 48) = v29;
    *(a3 + 72) = v31;
    *(a3 + 56) = v32;
    *(a3 + 88) = v30;
    goto LABEL_15;
  }

  outlined init with take of GraphicsImage.WeakContents(&v46, v45);
  outlined init with copy of GraphicsImage.WeakContents(v45, v34);
  GraphicsImage.Contents.init(_:)(v34, &v43);
  v16 = v44;
  if (v44 == 255)
  {
    specialized Dictionary._Variant.remove(at:)(v8, v34, v14, v15);
    _sypSgWOhTm_9(v34, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    outlined destroy of NamedImage.BitmapKey(v8, type metadata accessor for NamedImage.BitmapKey);
    outlined destroy of GraphicsImage.WeakContents(v45);
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 48) = 4;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0;
    goto LABEL_15;
  }

  v17 = v43;
  outlined destroy of NamedImage.WeakOrStrongImageContents(&v49);
  v49 = v17;
  v50 = v16;
  v51 = 0;
  outlined copy of GraphicsImage.Contents?(v17, v16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34[0] = v9;
    specialized _NativeDictionary.copy()();
    v9 = v34[0];
  }

  if (v14 < 0 || v14 >= 1 << *(v9 + 32))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (((*(v9 + 8 * (v14 >> 6) + 64) >> v14) & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v33 = v17;
  if (v15 == *(v9 + 36))
  {
    outlined assign with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(&v49, *(v9 + 56) + 96 * v14);
    outlined destroy of GraphicsImage.WeakContents(v45);
    *v10 = v9;
    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(&v49, v34, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for NamedImage.VectorInfo?);
    v18 = v35;
    v19 = v36;
    v20 = v37;
    v21 = v38;
    v22 = v39;
    v23 = v42;
    v32 = v40;
    v31 = v41;
    _sypSgWOhTm_9(v34, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    *a3 = v33;
    *(a3 + 8) = v16;
    *(a3 + 16) = v18;
    *(a3 + 24) = v19;
    *(a3 + 32) = v20;
    *(a3 + 40) = v21;
    *(a3 + 48) = v22;
    *(a3 + 72) = v31;
    *(a3 + 56) = v32;
    *(a3 + 88) = v23;
LABEL_15:
    _sypSgWOhTm_9(&v49, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t initializeWithCopy for NamedImage.BitmapKey(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);

  if (v7 >= 2)
  {
    v8 = v7;
  }

  *(a1 + 32) = v7;
  *(a1 + 40) = *(a2 + 40);
  v9 = a3[9];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
  v11 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v12) = *(a2 + v12);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

void NamedImage.BitmapKey.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 1);
  MEMORY[0x193AC11A0](*v0, v4);
  MEMORY[0x193AC11A0](v7);
  String.hash(into:)();
  v8 = v0[3];
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v8);
  v9 = *(v0 + 4);
  if (v9)
  {
    if (v9 != 1)
    {
      MEMORY[0x193AC11A0](0);
      v11 = [v9 bundleURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.hash(into:)();
      (*(v3 + 8))(v6, v2);
      goto LABEL_9;
    }

    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  MEMORY[0x193AC11A0](v10);
LABEL_9:
  MEMORY[0x193AC11A0](*(v1 + 40));
  v12 = type metadata accessor for NamedImage.BitmapKey(0);
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x193AC11A0](*(v1 + v12[10]));
  MEMORY[0x193AC11A0](*(v1 + v12[11]));
  MEMORY[0x193AC11A0](*(v1 + v12[12]));
  Hasher._combine(_:)(*(v1 + v12[13]));
  Hasher._combine(_:)(*(v1 + v12[14]));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 *a1, uint64_t a2)
{
  v27 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      outlined init with copy of NamedImage.VectorKey(*(v2 + 48) + v11 * v9, v7, type metadata accessor for NamedImage.BitmapKey);
      if (*v7 != *a1 || ((v7[1] ^ a1[1]) & 1) != 0)
      {
        goto LABEL_5;
      }

      v12 = *(v7 + 1) == *(a1 + 1) && *(v7 + 2) == *(a1 + 2);
      if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v7 + 3) != *(a1 + 3))
      {
        goto LABEL_5;
      }

      v13 = *(v7 + 4);
      v14 = *(a1 + 4);
      if (v13)
      {
        if (v13 == 1)
        {
          if (v14 != 1)
          {
            goto LABEL_4;
          }

          v13 = 1;
        }

        else
        {
          if (v14 < 2)
          {
LABEL_4:
            outlined copy of Image.Location(*(v7 + 4));
            outlined copy of Image.Location(v14);
            outlined consume of Image.Location(v13);
            outlined consume of Image.Location(v14);
            goto LABEL_5;
          }

          v15 = *(v7 + 4);
          if (v13 == v14)
          {
            outlined copy of Image.Location(v15);
            outlined copy of Image.Location(v13);
            v14 = v13;
          }

          else
          {
            outlined copy of Image.Location(v15);
            outlined copy of Image.Location(v14);
            outlined copy of Image.Location(v13);
            outlined copy of Image.Location(v14);
            v16 = [v13 bundlePath];
            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v24 = v18;
            v25 = v17;

            v19 = [v14 bundlePath];
            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v20;

            if (v25 != v23 || v24 != v26)
            {
              LODWORD(v25) = _stringCompareWithSmolCheck(_:_:expecting:)();
              outlined consume of Image.Location(v13);
              outlined consume of Image.Location(v14);

              outlined consume of Image.Location(v14);
              outlined consume of Image.Location(v13);
              if ((v25 & 1) == 0)
              {
                goto LABEL_5;
              }

              goto LABEL_26;
            }

            outlined consume of Image.Location(v13);
            outlined consume of Image.Location(v14);
          }
        }
      }

      else
      {
        if (v14)
        {
          goto LABEL_4;
        }

        v13 = 0;
      }

      outlined consume of Image.Location(v14);
      outlined consume of Image.Location(v13);
LABEL_26:
      if (v7[40] == a1[40] && (MEMORY[0x193ABDB20](&v7[v27[9]], &a1[v27[9]]) & 1) != 0 && v7[v27[10]] == a1[v27[10]] && *&v7[v27[11]] == *&a1[v27[11]] && *&v7[v27[12]] == *&a1[v27[12]] && v7[v27[13]] == a1[v27[13]] && v7[v27[14]] == a1[v27[14]])
      {
        _s7SwiftUI10NamedImageO9BitmapKeyVWOhTm_0(v7, type metadata accessor for NamedImage.BitmapKey);
        return v9;
      }

LABEL_5:
      _s7SwiftUI10NamedImageO9BitmapKeyVWOhTm_0(v7, type metadata accessor for NamedImage.BitmapKey);
      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v5 = type metadata accessor for NamedImage.VectorKey(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    do
    {
      outlined init with copy of NamedImage.VectorKey(*(v2 + 48) + v14 * v10, v8, type metadata accessor for NamedImage.VectorKey);
      if (v12 != *v8 || ((v13 ^ v8[1]) & 1) != 0)
      {
        goto LABEL_5;
      }

      v16 = *(v8 + 1) == *(a1 + 1) && *(v8 + 2) == *(a1 + 2);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v8 + 3) != *(a1 + 3) || v8[32] != a1[32] || (MEMORY[0x193ABDB20](&v8[v5[8]], &a1[v5[8]]) & 1) == 0 || *&v8[v5[9]] != *&a1[v5[9]] || v8[v5[10]] != a1[v5[10]] || *&v8[v5[11]] != *&a1[v5[11]])
      {
        goto LABEL_5;
      }

      v17 = v5[12];
      v18 = *&v8[v17];
      v19 = *&a1[v17];
      if (v18)
      {
        if (v18 == 1)
        {
          if (v19 != 1)
          {
            v15 = v19;
            v29 = 1;
            v30 = v19;
LABEL_4:
            outlined copy of Image.Location(v15);
            outlined consume of Image.Location(v29);
            outlined consume of Image.Location(v30);
            goto LABEL_5;
          }

          outlined consume of Image.Location(1);
          outlined consume of Image.Location(1);
        }

        else
        {
          v28 = v18;
          if (v19 < 2)
          {
            v30 = v19;
            outlined copy of Image.Location(v19);
            v15 = v28;
            v29 = v28;
            goto LABEL_4;
          }

          if (v18 == v19)
          {
            outlined copy of Image.Location(v18);
            outlined copy of Image.Location(v28);
            outlined consume of Image.Location(v28);
            outlined consume of Image.Location(v28);
          }

          else
          {
            v30 = v19;
            outlined copy of Image.Location(v19);
            outlined copy of Image.Location(v28);
            v27 = [v28 bundlePath];
            v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v29 = v20;

            v25 = [v30 bundlePath];
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v21;

            if (v26 == v24 && v29 == v27)
            {
              outlined consume of Image.Location(v28);
              outlined consume of Image.Location(v30);
            }

            else
            {
              LODWORD(v26) = _stringCompareWithSmolCheck(_:_:expecting:)();
              outlined consume of Image.Location(v28);
              outlined consume of Image.Location(v30);

              if ((v26 & 1) == 0)
              {
                goto LABEL_5;
              }
            }
          }
        }
      }

      else
      {
        if (v19)
        {
          v29 = 0;
          v30 = v19;
          v15 = v19;
          goto LABEL_4;
        }

        outlined consume of Image.Location(0);
        outlined consume of Image.Location(0);
      }

      if (*&v8[v5[13]] == *&a1[v5[13]])
      {
        _s7SwiftUI10NamedImageO9BitmapKeyVWOhTm_0(v8, type metadata accessor for NamedImage.VectorKey);
        return v10;
      }

LABEL_5:
      _s7SwiftUI10NamedImageO9BitmapKeyVWOhTm_0(v8, type metadata accessor for NamedImage.VectorKey);
      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t destroy for NamedImage.BitmapKey(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 32);
  if (v4 >= 2)
  {
  }

  v5 = *(a2 + 36);
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t Image.NamedImageProvider.resolveBitmap(key:info:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v50 = *(a2 + 56);
  v51 = *(a2 + 64);
  v61 = *(a2 + 80);
  v62 = *(a2 + 72);
  v59 = *(a2 + 24);
  v60 = *(a2 + 88);
  v57 = *(v4 + 48);
  v58 = *(v4 + 40);
  v55 = *(v4 + 64);
  v56 = *(v4 + 56);
  v49 = *(v4 + 72);
  v15 = *a3;
  v14 = a3[1];
  *&v94 = *a3;
  *(&v94 + 1) = v14;
  LOBYTE(v66) = v13;

  v16 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v66);

  v17 = type metadata accessor for ImageResolutionContext();
  if ((*(a3 + *(v17 + 40)) & 4) != 0)
  {
    type metadata accessor for NamedImage.Key(0);
    v8 = swift_allocBox();
    outlined init with copy of NamedImage.Key(a1, v18, type metadata accessor for NamedImage.BitmapKey);
    swift_storeEnumTagMultiPayload();
    v9 = 5;
  }

  else
  {
    outlined copy of GraphicsImage.Contents(v8, v9);
  }

  outlined copy of GraphicsImage.Contents?(v8, v9);
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  v19 = 0x3F8000003F800000;
  if ((v16 & 1) == 0)
  {
    v19 = 0;
  }

  v54 = v19;
  if (v16)
  {
    v20 = 2143289344;
  }

  else
  {
    v20 = 0;
  }

  v53 = v20;
  v21 = (v16 & 1) == 0;
  v99 = v21;
  if (!v9)
  {
    outlined copy of GraphicsImage.Contents(v8, 0);
    v23 = CGImageGetColorSpace(v8);
    if (v23)
    {
      v24 = v21;
      v25 = v23;
      v26 = CGColorSpaceUsesITUR_2100TF(v23);
      outlined consume of GraphicsImage.Contents?(v8, 0);

      if (v26)
      {
        v15 = *a3;
        v14 = a3[1];
        *&v94 = *a3;
        *(&v94 + 1) = v14;
        LOBYTE(v104) = *(a3 + *(v17 + 36));

        EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v104, &v66);

        v52 = v66;
      }

      else
      {
        v52 = 0;
      }

      v21 = v24;
      if (v14)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    outlined consume of GraphicsImage.Contents?(v8, 0);
  }

  v52 = 0;
  if (v14)
  {
LABEL_11:

    ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v15);
    goto LABEL_19;
  }

LABEL_18:
  v94 = v15;

  ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = specialized static ShouldRedactContentKey.value(in:)(&v94);

LABEL_19:

  v27 = v8;
  v28 = v9;
  if (ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5)
  {
    v47 = v21;
    v29 = *a3;
    v30 = a3[1];
    v27 = swift_allocObject();
    if (one-time initialization token for foreground != -1)
    {
      swift_once();
    }

    *&v94 = v29;
    *(&v94 + 1) = v30;
    (*(*static Color.foreground + 120))(&v104, &v94);
    v31 = v107;
    v32 = v105;
    v33 = v106 * 0.16;
    *(v27 + 16) = v104;
    *(v27 + 24) = v32;
    *(v27 + 28) = v33;
    *(v27 + 32) = v31;
    outlined consume of GraphicsImage.Contents?(v8, v9);
    v28 = 4;
    v21 = v47;
  }

  *&v94 = v27;
  BYTE8(v94) = v28;
  *(&v94 + 9) = *v103;
  HIDWORD(v94) = *&v103[3];
  *&v95 = v10;
  *(&v95 + 1) = v11;
  *v96 = v12;
  v96[8] = v59;
  *&v96[9] = v101;
  v96[11] = v102;
  *&v96[12] = v54;
  *&v96[20] = v54;
  *&v96[28] = v53;
  LOBYTE(v97) = v21;
  *(&v97 + 1) = *v100;
  DWORD1(v97) = *&v100[3];
  v34 = v51;
  *(&v97 + 1) = v50;
  *v98 = v51;
  *&v98[8] = v62;
  *&v98[16] = v61;
  v98[24] = v60;
  *&v98[25] = 257;
  v98[27] = v52;
  v88 = v94;
  v89 = v95;
  *(v93 + 12) = *&v98[12];
  v92 = v97;
  v93[0] = *v98;
  v90 = *v96;
  v91 = *&v96[16];
  outlined copy of AccessibilityImageLabel?(v58, v57, v56);
  outlined init with copy of GraphicsImage(&v94, &v66);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  if (BYTE8(v94) == 2)
  {
    v37 = *(v94 + 32);
    v48 = v21;
    v38 = *(v94 + 48);
    v39 = *(v94 + 16);
    outlined copy of Image.Location(v37);
    v40 = v38;
    outlined copy of Image.Location(v37);
    v41 = [v39 styleMask];
    v66 = v37;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v41, &v66, &v63);

    v34 = v51;
    outlined consume of Image.Location(v37);

    v21 = v48;
    outlined consume of GraphicsImage.Contents?(v8, v9);
    v42 = v63;
    v36 = v64;
    v35 = v65 & 0xFD;
  }

  else
  {
    if (BYTE8(v94) == 255)
    {
      outlined consume of GraphicsImage.Contents?(v8, v9);
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v36 = (v97 & 1) == 0;
      outlined consume of GraphicsImage.Contents?(v8, v9);
      v35 = 0;
    }

    v42 = 0;
  }

  v87 = 1;
  v43 = v93[0];
  *(a4 + 64) = v92;
  *(a4 + 80) = v43;
  *(a4 + 96) = v93[1];
  v44 = v89;
  *a4 = v88;
  *(a4 + 16) = v44;
  v45 = v91;
  *(a4 + 32) = v90;
  *(a4 + 48) = v45;
  *(a4 + 112) = v58;
  *(a4 + 120) = v57;
  *(a4 + 128) = v56;
  *(a4 + 136) = v55;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 160) = v49;
  *(a4 + 161) = 3;
  *(a4 + 164) = 0;
  *(a4 + 168) = 1;
  *(a4 + 176) = v42;
  *(a4 + 184) = v36;
  *(a4 + 186) = v35;
  v66 = v27;
  v67 = v28;
  *v68 = *v103;
  *&v68[3] = *&v103[3];
  v69 = v10;
  v70 = v11;
  v71 = v12;
  v72 = v59;
  v74 = v102;
  v73 = v101;
  v75 = v54;
  v76 = v54;
  v77 = v53;
  v78 = v21;
  *&v79[3] = *&v100[3];
  *v79 = *v100;
  v80 = v50;
  v81 = v34;
  v82 = v62;
  v83 = v61;
  v84 = v60;
  v85 = 257;
  v86 = v52;
  return outlined destroy of GraphicsImage(&v66);
}

void type metadata accessor for NamedImage._BitmapInfo<GraphicsImage.Contents>?()
{
  if (!lazy cache variable for type metadata for NamedImage._BitmapInfo<GraphicsImage.Contents>?)
  {
    type metadata accessor for NamedImage.VectorInfo?(255, &lazy cache variable for type metadata for NamedImage._BitmapInfo<GraphicsImage.Contents>, &type metadata for GraphicsImage.Contents, type metadata accessor for NamedImage._BitmapInfo);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NamedImage._BitmapInfo<GraphicsImage.Contents>?);
    }
  }
}

uint64_t getEnumTagSinglePayload for NamedImage._BitmapInfo(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
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

  v8 = ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 33;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0xFD)
  {
    return (*(v4 + 48))();
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 32);
  v18 = v17 >= 2;
  v19 = v17 - 2;
  if (!v18)
  {
    v19 = -1;
  }

  if (v19 + 1 >= 2)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall ShapeStyleResolver.destroy()()
{
  if (*(v0 + 48))
  {
    specialized AnimatorState.removeListeners()();
  }
}

uint64_t static BoxVTable.deinitialize(elt:)()
{
  v1 = *(v0 + 136);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  (*(*(v0 + 144) + 24))(v1);

  return UnsafeMutablePointer.deinitialize(count:)();
}

uint64_t _ShapeStyle_InterpolatorGroup.__deallocating_deinit()
{
  _ShapeStyle_InterpolatorGroup.reset()();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall _ShapeStyle_InterpolatorGroup.reset()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 24) = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        *(v1 + 24) = v2;
      }

      if (v4 >= *(v2 + 2))
      {
        break;
      }

      v6 = &v2[232 * v4];
      v7 = *(v6 + 29);
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = (v7 + 32);
        do
        {
          v10 = v9[3];
          v11 = v9[4];
          v12 = *(v9 + 89);
          v19[0] = v9[5];
          v13 = v9[1];
          v14 = v9[2];
          v18[0] = *v9;
          v18[1] = v13;
          *(v19 + 9) = v12;
          v18[3] = v10;
          v18[4] = v11;
          v18[2] = v14;
          if (*&v19[0])
          {
            v15 = *(**&v19[0] + 96);
            outlined init with copy of DisplayList.InterpolatorLayer.Removed(v18, &v17);

            v15(v16);
            outlined destroy of DisplayList.InterpolatorLayer.Removed(v18);
          }

          v9 += 7;
          --v8;
        }

        while (v8);
      }

      ++v4;
      *(v6 + 29) = MEMORY[0x1E69E7CC0];
      *(v6 + 31) = 0;
      v6[259] = 1;
      *(v1 + 24) = v2;
      swift_endAccess();

      if (v4 == v3)
      {
        return;
      }
    }

    __break(1u);
  }
}