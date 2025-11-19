uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, double a5)
{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    v15 = a4 & 1;
    *&v31 = v10;
    *(&v31 + 1) = a2;
    *&v32 = a3;
    BYTE8(v32) = a4 & 1;
    *&v33 = a5;
    v24 = v12;
    *(&v33 + 1) = v12;
    *&v34 = v13;
    *(&v34 + 1) = v14;
    swift_beginAccess();
    v16 = *(v5 + 152);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v31, v25, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 152) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      *(v5 + 152) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[8 * v19];
    v21 = v31;
    v22 = v32;
    v23 = v34;
    v20[4] = v33;
    v20[5] = v23;
    v20[2] = v21;
    v20[3] = v22;
    *(v5 + 152) = v16;
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v25[0] = v10;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v15;
    v27 = a5;
    v28 = v24;
    v29 = v13;
    v30 = v14;
    return outlined destroy of Slice<IndexSet>(v25, type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>.Fork);
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, __int128 *a3)
{
  if ((*(v3 + 208) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 200);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 216);
    v9 = *(v3 + 224);
    v10 = *(v3 + 200);
    v11 = a3[1];
    v31 = *a3;
    v32 = v11;
    v12 = a3[3];
    v33 = a3[2];
    v34 = v12;
    *&v35 = v6;
    *(&v35 + 1) = a2;
    v38 = v33;
    v39 = v12;
    v36 = v31;
    v37 = v11;
    *&v40 = v8;
    *(&v40 + 1) = v9;
    v41 = v10;
    swift_beginAccess();
    v13 = *(v3 + 232);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v35, v23, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 232) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      *(v3 + 232) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[13 * v16];
    v18 = v35;
    v19 = v37;
    *(v17 + 3) = v36;
    *(v17 + 4) = v19;
    *(v17 + 2) = v18;
    v20 = v38;
    v21 = v39;
    v22 = v40;
    v17[16] = v41;
    *(v17 + 6) = v21;
    *(v17 + 7) = v22;
    *(v17 + 5) = v20;
    *(v3 + 232) = v13;
    swift_endAccess();
    *(v3 + 200) = MEMORY[0x1E69E7CC0];

    v23[0] = v6;
    v23[1] = a2;
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    return outlined destroy of Slice<IndexSet>(v23, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 128) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 120);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = *(v3 + 120);
    v25 = *a3;
    v26 = *(a3 + 4);
    *&v27 = v6;
    *(&v27 + 1) = a2;
    v28 = v25;
    LODWORD(v29) = v26;
    *(&v29 + 1) = v8;
    *&v30 = v9;
    *(&v30 + 1) = v10;
    swift_beginAccess();
    v11 = *(v3 + 152);

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v27, v19, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 152) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *(v3 + 152) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[8 * v14];
    v16 = v27;
    v17 = v28;
    v18 = v30;
    v15[4] = v29;
    v15[5] = v18;
    v15[2] = v16;
    v15[3] = v17;
    *(v3 + 152) = v11;
    swift_endAccess();
    *(v3 + 120) = MEMORY[0x1E69E7CC0];

    v19[0] = v6;
    v19[1] = a2;
    v20 = v25;
    v21 = v26;
    v22 = v8;
    v23 = v9;
    v24 = v10;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v19, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>.Fork, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

{
  if ((*(v3 + 160) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 152);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 168);
    v9 = *(v3 + 176);
    v10 = *(v3 + 152);
    v20[0] = v6;
    v20[1] = a2;
    v11 = a3[1];
    v21 = *a3;
    v22 = v11;
    v23 = *(a3 + 4);
    v24 = v8;
    v25 = v9;
    v26 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v20, v13, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
    specialized Array.append(_:)(v20);
    swift_endAccess();
    *(v3 + 152) = MEMORY[0x1E69E7CC0];

    v13[0] = v6;
    v13[1] = a2;
    v12 = a3[1];
    v14 = *a3;
    v15 = v12;
    v16 = *(a3 + 4);
    v17 = v8;
    v18 = v9;
    v19 = v10;
    return outlined destroy of Slice<IndexSet>(v13, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 176) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 168);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v9 = *(v3 + 184);
    v8 = *(v3 + 192);
    v10 = *(v3 + 168);
    v19[0] = v6;
    v19[1] = a2;
    v11 = a3[1];
    v20 = *a3;
    v21[0] = v11;
    *(v21 + 9) = *(a3 + 25);
    v22 = v9;
    v23 = v8;
    v24 = v10;
    swift_beginAccess();

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v19, v13, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimatorState.Fork);
    specialized Array.append(_:)(v19);
    swift_endAccess();
    *(v3 + 168) = MEMORY[0x1E69E7CC0];

    v13[0] = v6;
    v13[1] = a2;
    v12 = a3[1];
    v14 = *a3;
    v15[0] = v12;
    *(v15 + 9) = *(a3 + 25);
    v16 = v9;
    v17 = v8;
    v18 = v10;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v13, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

{
  if ((*(v3 + 192) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 184);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 200);
    v9 = *(v3 + 208);
    v10 = *(v3 + 184);
    v21[0] = v6;
    v21[1] = a2;
    v11 = a3[1];
    v22 = *a3;
    v23 = v11;
    v24 = a3[2];
    v25 = *(a3 + 48);
    v26 = v8;
    v27 = v9;
    v28 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v21, v13, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
    specialized Array.append(_:)(v21);
    swift_endAccess();
    *(v3 + 184) = MEMORY[0x1E69E7CC0];

    v13[0] = v6;
    v13[1] = a2;
    v12 = a3[1];
    v14 = *a3;
    v15 = v12;
    v16 = a3[2];
    v17 = *(a3 + 48);
    v18 = v8;
    v19 = v9;
    v20 = v10;
    return outlined destroy of Slice<IndexSet>(v13, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 592) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 584);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 600);
    v26 = *(v3 + 608);
    v9 = *(v3 + 584);
    v47[0] = v6;
    v47[1] = a2;
    v10 = a3[13];
    v60 = a3[12];
    v61 = v10;
    v11 = a3[15];
    v62 = a3[14];
    v63 = v11;
    v12 = a3[9];
    v56 = a3[8];
    v57 = v12;
    v13 = a3[11];
    v58 = a3[10];
    v59 = v13;
    v14 = a3[5];
    v52 = a3[4];
    v53 = v14;
    v15 = a3[7];
    v54 = a3[6];
    v55 = v15;
    v16 = a3[1];
    v48 = *a3;
    v49 = v16;
    v17 = a3[3];
    v50 = a3[2];
    v51 = v17;
    v64 = v8;
    v65 = v26;
    v66 = v9;
    swift_beginAccess();

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v47, v27, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimatorState.Fork);
    specialized Array.append(_:)(v47);
    swift_endAccess();
    *(v3 + 584) = MEMORY[0x1E69E7CC0];

    v27[0] = v6;
    v27[1] = a2;
    v18 = a3[13];
    v40 = a3[12];
    v41 = v18;
    v19 = a3[15];
    v42 = a3[14];
    v43 = v19;
    v20 = a3[9];
    v36 = a3[8];
    v37 = v20;
    v21 = a3[11];
    v38 = a3[10];
    v39 = v21;
    v22 = a3[5];
    v32 = a3[4];
    v33 = v22;
    v23 = a3[7];
    v34 = a3[6];
    v35 = v23;
    v24 = a3[1];
    v28 = *a3;
    v29 = v24;
    v25 = a3[3];
    v30 = a3[2];
    v31 = v25;
    v44 = v8;
    v45 = v26;
    v46 = v9;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v27, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

{
  if ((*(v3 + 128) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 120);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = *(v3 + 120);
    v17[0] = v6;
    v17[1] = a2;
    v18 = *a3;
    v19 = *(a3 + 4);
    v20 = v8;
    v21 = v9;
    v22 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v17, v11, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
    specialized Array.append(_:)(v17);
    swift_endAccess();
    *(v3 + 120) = MEMORY[0x1E69E7CC0];

    v11[0] = v6;
    v11[1] = a2;
    v12 = *a3;
    v13 = *(a3 + 4);
    v14 = v8;
    v15 = v9;
    v16 = v10;
    return outlined destroy of Slice<IndexSet>(v11, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 160) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 152);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 168);
    v9 = *(v3 + 176);
    v10 = *(v3 + 152);
    v20[0] = v6;
    v20[1] = a2;
    v11 = a3[1];
    v21 = *a3;
    v22 = v11;
    v23 = *(a3 + 4);
    v24 = v8;
    v25 = v9;
    v26 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v20, v13, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
    specialized Array.append(_:)(v20);
    swift_endAccess();
    *(v3 + 152) = MEMORY[0x1E69E7CC0];

    v13[0] = v6;
    v13[1] = a2;
    v12 = a3[1];
    v14 = *a3;
    v15 = v12;
    v16 = *(a3 + 4);
    v17 = v8;
    v18 = v9;
    v19 = v10;
    return outlined destroy of Slice<IndexSet>(v13, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 128) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 120);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = *(v3 + 120);
    v17[0] = v6;
    v17[1] = a2;
    v18 = *a3;
    v19 = *(a3 + 2);
    v20 = v8;
    v21 = v9;
    v22 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v17, v11, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
    specialized Array.append(_:)(v17);
    swift_endAccess();
    *(v3 + 120) = MEMORY[0x1E69E7CC0];

    v11[0] = v6;
    v11[1] = a2;
    v12 = *a3;
    v13 = *(a3 + 2);
    v14 = v8;
    v15 = v9;
    v16 = v10;
    return outlined destroy of Slice<IndexSet>(v11, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 272) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 264);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 280);
    v9 = *(v3 + 288);
    v10 = *(v3 + 264);
    v27[0] = v6;
    v27[1] = a2;
    v11 = a3[3];
    v30 = a3[2];
    v31 = v11;
    v12 = a3[5];
    v32 = a3[4];
    v33 = v12;
    v13 = a3[1];
    v28 = *a3;
    v29 = v13;
    v34 = v8;
    v35 = v9;
    v36 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v27, v17, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
    specialized Array.append(_:)(v27);
    swift_endAccess();
    *(v3 + 264) = MEMORY[0x1E69E7CC0];

    v17[0] = v6;
    v17[1] = a2;
    v14 = a3[3];
    v20 = a3[2];
    v21 = v14;
    v15 = a3[5];
    v22 = a3[4];
    v23 = v15;
    v16 = a3[1];
    v18 = *a3;
    v19 = v16;
    v24 = v8;
    v25 = v9;
    v26 = v10;
    return outlined destroy of Slice<IndexSet>(v17, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 288) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 280);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 296);
    v9 = *(v3 + 304);
    v10 = *(v3 + 280);
    v30[0] = v6;
    v30[1] = a2;
    v11 = a3[5];
    v35 = a3[4];
    v36 = v11;
    v12 = *(a3 + 12);
    v13 = a3[1];
    v31 = *a3;
    v32 = v13;
    v14 = a3[3];
    v33 = a3[2];
    v34 = v14;
    v37 = v12;
    v38 = v8;
    v39 = v9;
    v40 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v30, v19, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
    specialized Array.append(_:)(v30);
    swift_endAccess();
    *(v3 + 280) = MEMORY[0x1E69E7CC0];

    v19[0] = v6;
    v19[1] = a2;
    v15 = a3[5];
    v24 = a3[4];
    v25 = v15;
    v16 = *(a3 + 12);
    v17 = a3[1];
    v20 = *a3;
    v21 = v17;
    v18 = a3[2];
    v23 = a3[3];
    v22 = v18;
    v26 = v16;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    return outlined destroy of Slice<IndexSet>(v19, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 336) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 328);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 344);
    v18 = *(v3 + 352);
    v9 = *(v3 + 328);
    *&v31[0] = v6;
    *(&v31[0] + 1) = a2;
    v10 = a3[5];
    v31[5] = a3[4];
    v31[6] = v10;
    v11 = a3[7];
    v31[7] = a3[6];
    v31[8] = v11;
    v12 = a3[1];
    v31[1] = *a3;
    v31[2] = v12;
    v13 = a3[3];
    v31[3] = a3[2];
    v31[4] = v13;
    v32 = v8;
    v33 = v18;
    v34 = v9;
    swift_beginAccess();

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v31, v19, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimatorState.Fork);
    specialized Array.append(_:)(v31);
    swift_endAccess();
    *(v3 + 328) = MEMORY[0x1E69E7CC0];

    v19[0] = v6;
    v19[1] = a2;
    v14 = a3[5];
    v24 = a3[4];
    v25 = v14;
    v15 = a3[7];
    v26 = a3[6];
    v27 = v15;
    v16 = a3[1];
    v20 = *a3;
    v21 = v16;
    v17 = a3[3];
    v22 = a3[2];
    v23 = v17;
    v28 = v8;
    v29 = v18;
    v30 = v9;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v19, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

{
  if ((*(v3 + 128) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 120);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 136);
    v9 = *(v3 + 144);
    v10 = *(v3 + 120);
    v17[0] = v6;
    v17[1] = a2;
    v18 = *a3;
    v19 = *(a3 + 2);
    v20 = v8;
    v21 = v9;
    v22 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v17, v11, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
    specialized Array.append(_:)(v17);
    swift_endAccess();
    *(v3 + 120) = MEMORY[0x1E69E7CC0];

    v11[0] = v6;
    v11[1] = a2;
    v12 = *a3;
    v13 = *(a3 + 2);
    v14 = v8;
    v15 = v9;
    v16 = v10;
    return outlined destroy of Slice<IndexSet>(v11, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 96) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 88);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = *(v3 + 88);
    swift_beginAccess();
    v11 = *(v3 + 120);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 120) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *(v3 + 120) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[6 * v14];
    v15[4] = v6;
    v15[5] = a2;
    v15[6] = a3;
    v15[7] = v8;
    v15[8] = v9;
    v15[9] = v10;
    *(v3 + 120) = v11;
    swift_endAccess();
    *(v3 + 88) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

{
  if ((*(v3 + 160) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 152);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 168);
    v9 = *(v3 + 176);
    v10 = *(v3 + 152);
    v11 = *a3;
    v12 = *(a3 + 16);
    v13 = *(a3 + 32);
    v21[0] = v6;
    v21[1] = a2;
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v14, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v21, v14, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
    specialized Array.append(_:)(v21);
    swift_endAccess();
    *(v3 + 152) = MEMORY[0x1E69E7CC0];

    v14[0] = v6;
    v14[1] = a2;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    return outlined destroy of Slice<IndexSet>(v14, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 192) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 184);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 200);
    v9 = *(v3 + 208);
    v10 = *(v3 + 184);
    v11 = *a3;
    v12 = *(a3 + 16);
    v13 = *(a3 + 32);
    v14 = *(a3 + 48);
    v23[0] = v6;
    v23[1] = a2;
    v27 = v14;
    v25 = v12;
    v26 = v13;
    v24 = v11;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v15, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v23, v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
    specialized Array.append(_:)(v23);
    swift_endAccess();
    *(v3 + 184) = MEMORY[0x1E69E7CC0];

    v15[0] = v6;
    v15[1] = a2;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 192) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 184);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 200);
    v9 = *(v3 + 208);
    v10 = *(v3 + 184);
    v11 = *a3;
    v12 = *(a3 + 16);
    v13 = *(a3 + 32);
    v14 = *(a3 + 48);
    v23[0] = v6;
    v23[1] = a2;
    v25 = v12;
    v26 = v13;
    v24 = v11;
    v27 = v14;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v15, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v23, v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    specialized Array.append(_:)(v23);
    swift_endAccess();
    *(v3 + 184) = MEMORY[0x1E69E7CC0];

    v15[0] = v6;
    v15[1] = a2;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 192) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 184);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 200);
    v9 = *(v3 + 208);
    v10 = *(v3 + 184);
    v11 = *a3;
    v12 = *(a3 + 16);
    v13 = *(a3 + 32);
    v14 = *(a3 + 48);
    v23[0] = v6;
    v23[1] = a2;
    v25 = v12;
    v26 = v13;
    v24 = v11;
    v27 = v14;
    v28 = v8;
    v29 = v9;
    v30 = v10;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v15, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v23, v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
    specialized Array.append(_:)(v23);
    swift_endAccess();
    *(v3 + 184) = MEMORY[0x1E69E7CC0];

    v15[0] = v6;
    v15[1] = a2;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 288) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 280);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(a3 + 48);
    v19 = *(a3 + 64);
    v20 = *(a3 + 80);
    v9 = *(a3 + 16);
    v16 = v9;
    v17 = *(a3 + 32);
    v18 = v8;
    v34 = *a3;
    v15 = v34;
    v35 = v9;
    v10 = *(a3 + 80);
    v38 = v19;
    v39 = v10;
    v11 = *(v3 + 296);
    v12 = *(v3 + 304);
    v13 = *(v3 + 280);
    v21 = *(a3 + 96);
    v33[0] = v6;
    v33[1] = a2;
    v14 = *(a3 + 96);
    v36 = v17;
    v37 = v8;
    v40 = v14;
    v41 = v11;
    v42 = v12;
    v43 = v13;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v22, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v33, v22, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
    specialized Array.append(_:)(v33);
    swift_endAccess();
    *(v3 + 280) = MEMORY[0x1E69E7CC0];

    v22[0] = v6;
    v22[1] = a2;
    v27 = v19;
    v28 = v20;
    v23 = v15;
    v24 = v16;
    v26 = v18;
    v25 = v17;
    v29 = v21;
    v30 = v11;
    v31 = v12;
    v32 = v13;
    return outlined destroy of Slice<IndexSet>(v22, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
  }

  return result;
}

{
  if ((*(v3 + 256) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 248);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(a3 + 16);
    v15 = *(a3 + 32);
    v16 = *(a3 + 48);
    v17 = *(a3 + 64);
    v14 = v8;
    v30 = *a3;
    v13 = v30;
    v31 = v8;
    v9 = *(a3 + 64);
    v33 = v16;
    v34 = v9;
    v10 = *(v3 + 264);
    v11 = *(v3 + 272);
    v12 = *(v3 + 248);
    v18 = *(a3 + 80);
    *&v29 = v6;
    *(&v29 + 1) = a2;
    v35 = *(a3 + 80);
    v32 = v15;
    v36 = v10;
    v37 = v11;
    v38 = v12;
    swift_beginAccess();

    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(a3, v19);

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v29, v19, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimatorState.Fork);
    specialized Array.append(_:)(&v29);
    swift_endAccess();
    *(v3 + 248) = MEMORY[0x1E69E7CC0];

    v19[0] = v6;
    v19[1] = a2;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v20 = v13;
    v21 = v14;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v19, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v5 + 136);
    v13 = *(v5 + 144);
    v12 = *(v5 + 120);
    v22[0] = v10;
    v22[1] = a2;
    v22[2] = a3;
    v23 = a4;
    v24 = HIDWORD(a4);
    v25 = a5 & 1;
    v26 = v14;
    v27 = v13;
    v28 = v12;
    swift_beginAccess();

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v22, v15, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimatorState.Fork);
    specialized Array.append(_:)(v22);
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v15[0] = v10;
    v15[1] = a2;
    v15[2] = a3;
    v16 = a4;
    v17 = HIDWORD(a4);
    v18 = a5 & 1;
    v19 = v14;
    v20 = v13;
    v21 = v12;
    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v15, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, float a3, float a4, float a5, float a6)
{
  if ((*(v6 + 112) & 1) == 0)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(v6 + 104);
    if (v13 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v14 = *(v6 + 120);
    v15 = *(v6 + 128);
    v16 = *(v6 + 104);
    v25[0] = v12;
    v25[1] = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v25, v17, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
    specialized Array.append(_:)(v25);
    swift_endAccess();
    *(v6 + 104) = MEMORY[0x1E69E7CC0];

    v17[0] = v12;
    v17[1] = a2;
    v18 = a3;
    v19 = a4;
    v20 = a5;
    v21 = a6;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    return outlined destroy of Slice<IndexSet>(v17, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
  }

  return result;
}

void AnimatorState.forkListeners(animation:state:interval:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v29 = a3;
  v31 = a1;
  v5 = *v3;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AnimatorState.Fork();
  v30 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = *a2;
  if ((*(v3 + *(v5 + 184)) & 1) == 0)
  {
    v18 = *(v6 + 176);
    swift_beginAccess();
    v19 = *(v3 + v18);
    if (v19 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    (*(v8 + 16))(v10, v29, v7);
    v20 = (v3 + *(*v3 + 192));
    v21 = v8;
    v22 = *(v3 + v18);
    v23 = v17;
    v28 = v17;
    v25 = *v20;
    v24 = v20[1];
    *v16 = v31;
    *(v16 + 1) = v23;
    (*(v21 + 32))(&v16[v11[10]], v10, v7);
    v26 = &v16[v11[11]];
    *v26 = v25;
    *(v26 + 1) = v24;
    *&v16[v11[12]] = v22;
    v27 = v30;
    (*(v30 + 16))(v13, v16, v11);
    swift_beginAccess();
    type metadata accessor for Array();

    Array.append(_:)();
    swift_endAccess();
    *(v3 + v18) = MEMORY[0x1E69E7CC0];

    (*(v27 + 8))(v16, v11);
  }
}

uint64_t specialized AnimatorState.init(animation:interval:at:in:finishingDefinition:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v14 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = 0uLL;
  if (static Color.Resolved.legacyInterpolation)
  {
    v16 = 1;
    v17 = 0uLL;
  }

  else
  {
    v30 = 2;
    ResolvedGradient.ColorSpace.convertIn(_:)(v29, 0.0, 0, 0.0, 0.0);
    v18.i64[0] = 0x4300000043000000;
    v18.i64[1] = 0x4300000043000000;
    v17 = vmulq_f32(v29[0], v18);
    v15 = 0uLL;
    v16 = static Color.Resolved.legacyInterpolation;
  }

  *(v6 + 32) = v14;
  *(v6 + 40) = v14;
  *(v6 + 48) = v17;
  *(v6 + 64) = 0;
  *(v6 + 88) = 0;
  if ((v16 & 1) == 0)
  {
    v30 = 2;
    ResolvedGradient.ColorSpace.convertIn(_:)(v29, 0.0, 0, 0.0, 0.0);
    v19.i64[0] = 0x4300000043000000;
    v19.i64[1] = 0x4300000043000000;
    v15 = vmulq_f32(v29[0], v19);
  }

  *(v6 + 96) = v14;
  *(v6 + 104) = v14;
  *(v6 + 112) = v15;
  *(v6 + 128) = 0;
  *(v6 + 136) = 1;
  *(v6 + 144) = v14;
  *(v6 + 152) = v14;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = v14;
  *(v6 + 16) = a1;
  swift_beginAccess();

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, v29, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
  v20 = *(a2 + 16);
  *(v6 + 32) = *a2;
  *(v6 + 48) = v20;
  *(v6 + 64) = *(a2 + 32);

  *(v6 + 168) = a4;
  *(v6 + 176) = a5;
  *(v6 + 72) = a6;
  *(v6 + 88) = a6;
  v21 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v22 & 1) == 0)
  {
    if (v21 <= 0.0)
    {
      *(v6 + 80) = 0;
    }

    else
    {
      v25 = log2(v21 * 240.0);
      v26 = exp2(floor(v25 + 0.01)) * 0.00416666667;
      *(v6 + 80) = v26;
      if (v26 >= 0.0166666667)
      {
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

        v23 = 0;
        goto LABEL_10;
      }
    }

    v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v23 = v27;
    v24 = HIDWORD(v27) & 1;

    outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

    goto LABEL_16;
  }

  outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

  v23 = 0;
  *(v7 + 80) = 0;
LABEL_10:
  LOBYTE(v24) = 1;
LABEL_16:
  *(v7 + 132) = v23;
  *(v7 + 136) = v24;
  return v7;
}

{
  v7 = v6;
  v12 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[0] = &v45;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[1] = &v46;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[2] = &v47;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[3] = &v48;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[4] = &v49;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[5] = &v50;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[6] = &v51;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[7] = &v52;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[8] = &v53;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[9] = &v54;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[10] = &v55;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v57[11] = &v56;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v57, v58);
  *(v6 + 32) = 0;
  v13 = v58[3];
  *(v6 + 72) = v58[2];
  *(v6 + 88) = v13;
  v14 = v58[5];
  *(v6 + 104) = v58[4];
  *(v6 + 120) = v14;
  v15 = v58[1];
  *(v6 + 40) = v58[0];
  *(v6 + 56) = v15;
  *(v6 + 152) = 0;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[0] = &v32;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[1] = &v33;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[2] = &v34;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[3] = &v35;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[4] = &v36;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[5] = &v37;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[6] = &v38;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[7] = &v39;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[8] = &v40;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[9] = &v41;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[10] = &v42;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v44[11] = &v43;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v44, v59);
  v16 = v59[3];
  *(v6 + 200) = v59[2];
  *(v6 + 216) = v16;
  v17 = v59[5];
  *(v6 + 232) = v59[4];
  *(v6 + 248) = v17;
  v18 = v59[1];
  *(v6 + 168) = v59[0];
  *(v6 + 160) = 0;
  *(v6 + 184) = v18;
  *(v6 + 264) = 0;
  *(v6 + 268) = 1;
  *(v6 + 272) = v12;
  *(v6 + 280) = v12;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0;
  *(v6 + 304) = 0;
  *(v6 + 312) = v12;
  *(v6 + 16) = a1;
  swift_beginAccess();
  v19 = *(a2 + 80);
  *(v6 + 96) = *(a2 + 64);
  *(v6 + 112) = v19;
  *(v6 + 128) = *(a2 + 96);
  v20 = *(a2 + 16);
  *(v6 + 32) = *a2;
  *(v6 + 48) = v20;
  v21 = *(a2 + 48);
  *(v6 + 64) = *(a2 + 32);
  *(v6 + 80) = v21;
  *(v6 + 296) = a4;
  *(v6 + 304) = a5;
  *(v6 + 136) = a6;
  *(v6 + 152) = a6;

  v22 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v23 & 1) == 0)
  {
    if (v22 <= 0.0)
    {
      *(v6 + 144) = 0;
    }

    else
    {
      v26 = log2(v22 * 240.0);
      v27 = exp2(floor(v26 + 0.01)) * 0.00416666667;
      *(v6 + 144) = v27;
      if (v27 >= 0.0166666667)
      {

        v24 = 0;
        goto LABEL_3;
      }
    }

    v28 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v24 = v28;
    v25 = HIDWORD(v28) & 1;

    goto LABEL_9;
  }

  v24 = 0;
  *(v7 + 144) = 0;
LABEL_3:
  LOBYTE(v25) = 1;
LABEL_9:
  *(v7 + 264) = v24;
  *(v7 + 268) = v25;
  return v7;
}

uint64_t specialized AnimatorState.init(animation:interval:at:in:finishingDefinition:)(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v13 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[0] = &v39;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[1] = &v40;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[2] = &v41;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[3] = &v42;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[4] = &v43;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[5] = &v44;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[6] = &v45;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[7] = &v46;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[8] = &v47;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[9] = &v48;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[10] = &v49;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v51[11] = &v50;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v51, (v6 + 32));
  *(v6 + 144) = 0;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[0] = &v26;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[1] = &v27;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[2] = &v28;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[3] = &v29;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[4] = &v30;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[5] = &v31;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[6] = &v32;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[7] = &v33;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[8] = &v34;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[9] = &v35;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[10] = &v36;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v38[11] = &v37;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v38, (v6 + 152));
  *(v6 + 248) = 0;
  *(v6 + 252) = 1;
  *(v6 + 256) = v13;
  *(v6 + 264) = v13;
  *(v6 + 272) = 0;
  *(v6 + 280) = 0;
  *(v6 + 288) = 0;
  *(v6 + 296) = v13;
  *(v6 + 16) = a1;
  swift_beginAccess();
  v14 = a2[3];
  *(v6 + 64) = a2[2];
  *(v6 + 80) = v14;
  v15 = a2[5];
  *(v6 + 96) = a2[4];
  *(v6 + 112) = v15;
  v16 = a2[1];
  *(v6 + 32) = *a2;
  *(v6 + 48) = v16;
  *(v6 + 280) = a4;
  *(v6 + 288) = a5;
  *(v6 + 128) = a6;
  *(v6 + 144) = a6;

  v17 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v18 & 1) == 0)
  {
    if (v17 <= 0.0)
    {
      *(v6 + 136) = 0;
    }

    else
    {
      v21 = log2(v17 * 240.0);
      v22 = exp2(floor(v21 + 0.01)) * 0.00416666667;
      *(v6 + 136) = v22;
      if (v22 >= 0.0166666667)
      {

        v19 = 0;
        goto LABEL_3;
      }
    }

    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v19 = v23;
    v20 = HIDWORD(v23) & 1;

    goto LABEL_9;
  }

  v19 = 0;
  *(v7 + 136) = 0;
LABEL_3:
  LOBYTE(v20) = 1;
LABEL_9:
  *(v7 + 248) = v19;
  *(v7 + 252) = v20;
  return v7;
}

unint64_t *AnimatorState.init(animation:interval:at:in:finishingDefinition:)(unint64_t a1, uint64_t a2, unint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = *a3;
  v10 = *(*v6 + 80);
  AnimationState.init()(v7 + 3);
  v11 = *(*v7 + 112);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v12 = *(*v7 + 136);
  *(v7 + v12) = 0;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v13 = v7 + *(*v7 + 152);
  *v13 = 0;
  v13[4] = 1;
  *(v7 + *(*v7 + 160)) = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v7 + *(*v7 + 168)) = MEMORY[0x1E69E7CC0];
  *(v7 + *(*v7 + 176)) = v14;
  *(v7 + *(*v7 + 184)) = 0;
  v15 = (v7 + *(*v7 + 192));
  *v15 = 0;
  v15[1] = 0;
  v16 = *(*v7 + 200);
  type metadata accessor for AnimatorState.Fork();
  *(v7 + v16) = Array.init()();
  v7[2] = a1;
  swift_beginAccess();
  v17 = *(v10 - 8);
  v18 = *(v17 + 24);

  v18(v7 + v11, a2, v10);
  swift_endAccess();
  *v15 = a5;
  v15[1] = a6;
  *(v7 + *(*v7 + 120)) = v9;
  *(v7 + v12) = v9;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v7 + *(*v7 + 128)) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v7 + *(*v7 + 128)) = v24;
      if (v24 >= 0.0166666667)
      {
        (*(v17 + 8))(a2, v10);

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    (*(v17 + 8))(a2, v10);

    goto LABEL_9;
  }

  (*(v17 + 8))(a2, v10);

  v21 = 0;
  *(v7 + *(*v7 + 128)) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *v13 = v21;
  v13[4] = v22;
  return v7;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, void *a3, char a4, uint64_t a5, void *a6, char a7, double a8)
{
  v15 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = *(v16 + 16);

    v50 = a3;
    v51 = a4 & 1;

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(&v50, a6, a7 & 1);
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v19 = v50;
    v20 = v51;
    v21 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    }

    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
    }

    v21[2] = v23 + 1;
    v24 = &v21[3 * v23];
    v24[4] = v19;
    *(v24 + 40) = v20;
    v24[6] = v18;
    type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>();
    v52 = v25;
    v50 = v21;
    specialized Dictionary.subscript.setter(&v50, v25);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v27 = *(v17 + 2);
    v26 = *(v17 + 3);
    if (v27 >= v26 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v17);
    }

    *(v17 + 2) = v27 + 1;
    v28 = &v17[16 * v27];
    *(v28 + 4) = a5;
    *(v28 + 5) = a8;
    result = swift_allocObject();
    *(result + 16) = v17;
    *a1 = result;
  }

  else
  {
    v53 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v30 = *a2;
    v31 = a4 & 1;

    v32 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v53, type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>);
    v48 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    }

    v32[2] = v34 + 1;
    v35 = &v32[3 * v34];
    v35[4] = a3;
    *(v35 + 40) = v31;
    v35[6] = v30;
    type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>();
    v37 = v36;
    v52 = v36;
    v50 = v32;
    specialized Dictionary.subscript.setter(&v50, v36);
    v50 = a3;
    v51 = v31;

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZAA16_ShapeStyle_PackV3KeyV_AA0D4PairVyAG4FillO0D4DataOAKySfAA0dE0VyAKySfAG6EffectV4KindOANOGGGGTt1B5(&v50, a6, a7 & 1);
    v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v39 = v50;
    v40 = v51;
    v41 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v53, type metadata accessor for CombinedAnimationState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
    }

    v43 = v41[2];
    v42 = v41[3];
    if (v43 >= v42 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41);
    }

    v41[2] = v43 + 1;
    v44 = &v41[3 * v43];
    v44[4] = v39;
    *(v44 + 40) = v40;
    v44[6] = v38;
    v52 = v37;
    v50 = v41;
    specialized Dictionary.subscript.setter(&v50, v37);
    v45 = v53;

    *a2 = v45;

    v46 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v15, a5, a8);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *v48 = v47;
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = *(v17 + 16);

    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v20 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    }

    v21 = a4 + a7;
    v22 = a5 + a8;
    v24 = v20[2];
    v23 = v20[3];
    if (v24 >= v23 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v20);
    }

    v20[2] = v24 + 1;
    v25 = &v20[3 * v24];
    v25[4] = v21;
    v25[5] = v22;
    *(v25 + 6) = v19;
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>();
    v49 = v26;
    v48[0] = v20;
    specialized Dictionary.subscript.setter(v48, v26);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
    }

    v28 = *(v18 + 2);
    v27 = *(v18 + 3);
    if (v28 >= v27 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v18);
    }

    *(v18 + 2) = v28 + 1;
    v29 = &v18[16 * v28];
    *(v29 + 4) = a3;
    *(v29 + 5) = a6;
    result = swift_allocObject();
    *(result + 16) = v18;
    *a1 = result;
  }

  else
  {
    v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v31 = *a2;

    v32 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v50, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    }

    v32[2] = v34 + 1;
    v35 = &v32[3 * v34];
    v35[4] = a4;
    v35[5] = a5;
    *(v35 + 6) = v31;
    type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>();
    v37 = v36;
    v49 = v36;
    v48[0] = v32;
    specialized Dictionary.subscript.setter(v48, v36);
    v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v39 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v50, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, CGFloat>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    }

    v40 = a4 + a7;
    v41 = a5 + a8;
    v43 = v39[2];
    v42 = v39[3];
    if (v43 >= v42 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v39);
    }

    v39[2] = v43 + 1;
    v44 = &v39[3 * v43];
    v44[4] = v40;
    v44[5] = v41;
    *(v44 + 6) = v38;
    v49 = v37;
    v48[0] = v39;
    specialized Dictionary.subscript.setter(v48, v37);
    v45 = v50;

    *a2 = v45;

    v46 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v16, a3, a6);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *a1 = v47;
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v16 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVySdGTt0B5(*a2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    }

    v17 = a4 + a6;
    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = v17;
    *(v20 + 5) = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for CombinedAnimationState<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for CombinedAnimationState);
    v43 = v21;
    v42[0] = v16;
    specialized Dictionary.subscript.setter(v42, v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v23 = *(v14 + 2);
    v22 = *(v14 + 3);
    if (v23 >= v22 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
    }

    *(v14 + 2) = v23 + 1;
    v24 = &v14[16 * v23];
    *(v24 + 4) = a3;
    *(v24 + 5) = a5;
    result = swift_allocObject();
    *(result + 16) = v14;
    *a1 = result;
  }

  else
  {
    v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = *a2;

    v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVySdGTt0B5(v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
    }

    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
    }

    v27[2] = v29 + 1;
    v30 = &v27[2 * v29];
    v30[4] = a4;
    *(v30 + 5) = v26;
    type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for CombinedAnimationState<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for CombinedAnimationState);
    v32 = v31;
    v43 = v31;
    v42[0] = v27;
    specialized Dictionary.subscript.setter(v42, v31);
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v34 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVySdGTt0B5(v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
    }

    v35 = a4 + a6;
    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
    }

    v34[2] = v37 + 1;
    v38 = &v34[2 * v37];
    v38[4] = v35;
    *(v38 + 5) = v33;
    v43 = v32;
    v42[0] = v34;
    specialized Dictionary.subscript.setter(v42, v32);
    v39 = v44;

    *a2 = v39;

    v40 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, a3, a5);
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *a1 = v41;
  }

  return result;
}

{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v16 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    }

    v17 = a4 + a6;
    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = &v16[2 * v19];
    v20[4] = v17;
    *(v20 + 5) = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for CombinedAnimationState);
    v44 = v21;
    v43[0] = v16;
    specialized Dictionary.subscript.setter(v43, v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v23 = *(v14 + 2);
    v22 = *(v14 + 3);
    if (v23 >= v22 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
    }

    *(v14 + 2) = v23 + 1;
    v24 = &v14[16 * v23];
    *(v24 + 4) = a3;
    *(v24 + 5) = a5;
    result = swift_allocObject();
    *(result + 16) = v14;
    *a1 = result;
  }

  else
  {
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = *a2;

    v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v45, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
    }

    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
    }

    v27[2] = v29 + 1;
    v30 = &v27[2 * v29];
    v30[4] = a4;
    *(v30 + 5) = v26;
    v31 = MEMORY[0x1E69E7DE0];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for CombinedAnimationState);
    v33 = v32;
    v44 = v32;
    v43[0] = v27;
    specialized Dictionary.subscript.setter(v43, v32);
    v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v35 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v45, &lazy cache variable for type metadata for CombinedAnimationState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, v31);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
    }

    v36 = a4 + a6;
    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    v39 = &v35[2 * v38];
    v39[4] = v36;
    *(v39 + 5) = v34;
    v44 = v33;
    v43[0] = v35;
    specialized Dictionary.subscript.setter(v43, v33);
    v40 = v45;

    *a2 = v40;

    v41 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, a3, a5);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *a1 = v42;
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, void *a5, double a6)
{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    outlined init with copy of _AnyAnimatableData(a3, &v48);
    v15 = v48;
    if (v48 == *a5)
    {
      (*(v48 + 96))(&v48 + 8, a5 + 1);
    }

    else if (v15 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(&v48);
      outlined init with copy of _AnyAnimatableData(a5, &v48);
    }

    *(&v50 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
    }

    v26[2] = v28 + 1;
    v29 = &v26[6 * v28];
    v30 = v48;
    v31 = v50;
    v29[3] = v49;
    v29[4] = v31;
    v29[2] = v30;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for CombinedAnimationState);
    v47 = v32;
    v46[0] = v26;
    specialized Dictionary.subscript.setter(v46, v32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v34 = *(v14 + 2);
    v33 = *(v14 + 3);
    if (v34 >= v33 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v14);
    }

    *(v14 + 2) = v34 + 1;
    v35 = &v14[16 * v34];
    *(v35 + 4) = a4;
    *(v35 + 5) = a6;
    result = swift_allocObject();
    *(result + 16) = v14;
    *a1 = result;
  }

  else
  {
    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v51 = v16;
    outlined init with copy of _AnyAnimatableData(a3, &v48);
    *(&v50 + 1) = *a2;

    v17 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v16, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[6 * v19];
    v21 = v48;
    v22 = v50;
    v20[3] = v49;
    v20[4] = v22;
    v20[2] = v21;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for CombinedAnimationState);
    v24 = v23;
    v47 = v23;
    v46[0] = v17;
    specialized Dictionary.subscript.setter(v46, v23);
    outlined init with copy of _AnyAnimatableData(a3, &v48);
    v25 = v48;
    if (v48 == *a5)
    {
      (*(v48 + 96))(&v48 + 8, a5 + 1);
    }

    else if (v25 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(&v48);
      outlined init with copy of _AnyAnimatableData(a5, &v48);
    }

    *(&v50 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v37 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v51, &lazy cache variable for type metadata for CombinedAnimationState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
    }

    v37[2] = v39 + 1;
    v40 = &v37[6 * v39];
    v41 = v48;
    v42 = v50;
    v40[3] = v49;
    v40[4] = v42;
    v40[2] = v41;
    v47 = v24;
    v46[0] = v37;
    specialized Dictionary.subscript.setter(v46, v24);
    v43 = v51;

    *a2 = v43;

    v44 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, a4, a6);
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *a1 = v45;
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v105 = a1;
  v19 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v103 = v20;
  v21 = swift_dynamicCastClass();
  v104 = a3;
  v102 = a2;
  if (v21)
  {
    v101 = *(v21 + 16);

    v117 = *&a4;
    v112 = a5;
    v113 = a6;
    v114 = a8;
    v109 = a9;
    v110 = a10;
    v22 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v23 = MEMORY[0x1E69E7DE0];
    v24 = *(MEMORY[0x1E69E7DE0] - 8);
    v25 = v24[8];
    v26 = MEMORY[0x1EEE9AC00](v22);
    v27 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v24[2];
    v29 = v28(v27, &v117, v23, v26);
    v30 = MEMORY[0x1EEE9AC00](v29);
    v28(v27, &v114, v23, v30);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v31 = v24[1];
    v31(v27, v23);
    v31(v27, v23);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    v33 = v32;
    v99 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v100 = &v97;
    v34 = *(v33 - 8);
    v35 = v34[8];
    v36 = MEMORY[0x1EEE9AC00](v99);
    v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
    v38 = v34[2];
    v39 = v38(&v97 - v37, &v112, v33, v36);
    v40 = MEMORY[0x1EEE9AC00](v39);
    v38(&v97 - v37, &v109, v33, v40);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v41 = v34[1];
    v41(&v97 - v37, v33);
    v41(&v97 - v37, v33);
    v42 = v107[0];
    v43 = v106[0];
    v44 = v106[1];
    v41(v106, v33);
    v45 = v102;
    v31(v107, MEMORY[0x1E69E7DE0]);
    v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_AA0G4PairVyA2KGQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAOGTt0B5(*v45);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
    }

    v49 = v47[2];
    v48 = v47[3];
    v50 = v104;
    if (v49 >= v48 >> 1)
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v47);
    }

    v47[2] = v49 + 1;
    v51 = &v47[4 * v49];
    v51[4] = v42;
    v51[5] = v43;
    v51[6] = v44;
    v51[7] = v46;
    type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>();
    v116 = v52;
    v115[0] = v47;
    specialized Dictionary.subscript.setter(v115, v52);

    v53 = v101;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[16 * v55];
    *(v56 + 4) = v50;
    *(v56 + 5) = a7;
    result = swift_allocObject();
    *(result + 16) = v53;
    *v105 = result;
  }

  else
  {
    v117 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v58 = *a2;

    v59 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_AA0G4PairVyA2KGQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAOGTt0B5(v117);
    v100 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
    }

    v61 = v59[2];
    v60 = v59[3];
    if (v61 >= v60 >> 1)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v59);
    }

    v59[2] = v61 + 1;
    v62 = &v59[4 * v61];
    v62[4] = a4;
    v62[5] = a5;
    v62[6] = a6;
    *(v62 + 7) = v58;
    type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>();
    v116 = v63;
    v115[0] = v59;
    v101 = v63;
    specialized Dictionary.subscript.setter(v115, v63);
    v110 = a6;
    v111 = a4;
    v108 = a8;
    v109 = a5;
    *v107 = a9;
    *&v107[1] = a10;
    v64 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v65 = MEMORY[0x1E69E7DE0];
    v66 = *(MEMORY[0x1E69E7DE0] - 8);
    v67 = v66[8];
    v68 = MEMORY[0x1EEE9AC00](v64);
    v69 = &v97 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = v66[2];
    v71 = v70(v69, &v111, v65, v68);
    v72 = MEMORY[0x1EEE9AC00](v71);
    v70(v69, &v108, v65, v72);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v73 = v66[1];
    v73(v69, v65);
    v73(v69, v65);
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    v75 = v74;
    v98 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v99 = &v97;
    v76 = *(v75 - 8);
    v77 = v76[8];
    v78 = MEMORY[0x1EEE9AC00](v98);
    v79 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
    v80 = v76[2];
    v81 = v80(&v97 - v79, &v109, v75, v78);
    v82 = MEMORY[0x1EEE9AC00](v81);
    v80(&v97 - v79, v107, v75, v82);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v83 = v76[1];
    v83(&v97 - v79, v75);
    v83(&v97 - v79, v75);
    v85 = v113;
    v84 = v114;
    v86 = v112;
    v83(&v112, v75);
    v73(&v114, MEMORY[0x1E69E7DE0]);
    v87 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v88 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_AA0G4PairVyA2KGQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAOGTt0B5(v117);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88[2] + 1, 1, v88);
    }

    v89 = v104;
    v90 = v102;
    v92 = v88[2];
    v91 = v88[3];
    if (v92 >= v91 >> 1)
    {
      v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v88);
    }

    v88[2] = v92 + 1;
    v93 = &v88[4 * v92];
    v93[4] = v84;
    v93[5] = v86;
    v93[6] = v85;
    *(v93 + 7) = v87;
    v106[3] = v101;
    v106[0] = v88;
    specialized Dictionary.subscript.setter(v106, v101);
    v94 = v117;

    *v90 = v94;

    v95 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v100, v89, a7);
    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    *v105 = v96;
  }

  return result;
}

{
  v20 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = *(v21 + 16);

    v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v24 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    }

    v25 = a4 + a8;
    v26 = a5 + a9;
    v27 = a6 + a10;
    v29 = v24[2];
    v28 = v24[3];
    if (v29 >= v28 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v24);
    }

    v24[2] = v29 + 1;
    v30 = &v24[4 * v29];
    v30[4] = v25;
    v30[5] = v26;
    v30[6] = v27;
    *(v30 + 7) = v23;
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>();
    v55 = v31;
    v54[0] = v24;
    specialized Dictionary.subscript.setter(v54, v31);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    }

    v33 = *(v22 + 2);
    v32 = *(v22 + 3);
    if (v33 >= v32 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v22);
    }

    *(v22 + 2) = v33 + 1;
    v34 = &v22[16 * v33];
    *(v34 + 4) = a3;
    *(v34 + 5) = a7;
    result = swift_allocObject();
    *(result + 16) = v22;
    *a1 = result;
  }

  else
  {
    v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v36 = *a2;

    v37 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v56, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
    }

    v37[2] = v39 + 1;
    v40 = &v37[4 * v39];
    v40[4] = a4;
    v40[5] = a5;
    v40[6] = a6;
    *(v40 + 7) = v36;
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>();
    v42 = v41;
    v55 = v41;
    v54[0] = v37;
    specialized Dictionary.subscript.setter(v54, v41);
    v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v44 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v56, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
    }

    v45 = a4 + a8;
    v46 = a5 + a9;
    v47 = a6 + a10;
    v49 = v44[2];
    v48 = v44[3];
    if (v49 >= v48 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v44);
    }

    v44[2] = v49 + 1;
    v50 = &v44[4 * v49];
    v50[4] = v45;
    v50[5] = v46;
    v50[6] = v47;
    *(v50 + 7) = v43;
    v55 = v42;
    v54[0] = v44;
    specialized Dictionary.subscript.setter(v54, v42);
    v51 = v56;

    *a2 = v51;

    v52 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v20, a3, a7);
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *a1 = v53;
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, void *a3, char a4, uint64_t a5, unint64_t a6, char a7, double a8, double a9, double a10)
{
  v19 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = *(v20 + 16);

    v56 = a3;
    v57 = a4 & 1;

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(&v56, a6, a7 & 1);
    v22 = v56;
    v23 = v57;
    v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v25 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
    }

    v26 = a8 + a10;
    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[4 * v28];
    v29[4] = v22;
    *(v29 + 40) = v23;
    *(v29 + 6) = v26;
    v29[7] = v24;
    type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>();
    v58 = v30;
    v56 = v25;
    specialized Dictionary.subscript.setter(&v56, v30);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v32 = *(v21 + 2);
    v31 = *(v21 + 3);
    if (v32 >= v31 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v21);
    }

    *(v21 + 2) = v32 + 1;
    v33 = &v21[16 * v32];
    *(v33 + 4) = a5;
    *(v33 + 5) = a9;
    result = swift_allocObject();
    *(result + 16) = v21;
    *a1 = result;
  }

  else
  {
    v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v35 = *a2;
    v36 = a4 & 1;

    v37 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v59, type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>);
    v54 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
    }

    v37[2] = v39 + 1;
    v40 = &v37[4 * v39];
    v40[4] = a3;
    *(v40 + 40) = v36;
    *(v40 + 6) = a8;
    v40[7] = v35;
    type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>();
    v42 = v41;
    v58 = v41;
    v56 = v37;
    specialized Dictionary.subscript.setter(&v56, v41);
    v56 = a3;
    v57 = v36;

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(&v56, a6, a7 & 1);
    v43 = v56;
    v44 = v57;
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v46 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v59, type metadata accessor for CombinedAnimationState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
    }

    v47 = a8 + a10;
    v49 = v46[2];
    v48 = v46[3];
    if (v49 >= v48 >> 1)
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v46);
    }

    v46[2] = v49 + 1;
    v50 = &v46[4 * v49];
    v50[4] = v43;
    *(v50 + 40) = v44;
    *(v50 + 6) = v47;
    v50[7] = v45;
    v58 = v42;
    v56 = v46;
    specialized Dictionary.subscript.setter(&v56, v42);
    v51 = v59;

    *a2 = v51;

    v52 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v19, a5, a9);
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *v54 = v53;
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, float64x2_t *a3, uint64_t a4, float64x2_t *a5, double a6)
{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    v73 = a3[1];
    v77 = *a3;
    v65 = a3[2];
    v69 = *a5;
    v61 = a3[3];
    v63 = a5[1];
    v57 = a5[3];
    v59 = a5[2];
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v16 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    }

    v17 = vaddq_f64(v73, v63);
    v18 = vaddq_f64(v77, v69);
    v19 = vaddq_f64(v61, v57);
    v20 = vaddq_f64(v65, v59);
    v22 = v16[2];
    v21 = v16[3];
    if (v22 >= v21 >> 1)
    {
      v75 = v17;
      v79 = v18;
      v67 = v19;
      v71 = v20;
      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v16);
      v19 = v67;
      v20 = v71;
      v17 = v75;
      v18 = v79;
      v16 = v54;
    }

    v16[2] = v22 + 1;
    v23 = &v16[9 * v22];
    v23[2] = v18;
    v23[3] = v17;
    v23[4] = v20;
    v23[5] = v19;
    *&v23[6].f64[0] = v15;
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>();
    *&v85.f64[1] = v24;
    *&v84.f64[0] = v16;
    specialized Dictionary.subscript.setter(&v84, v24);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v26 = *(v14 + 2);
    v25 = *(v14 + 3);
    if (v26 >= v25 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v14);
    }

    *(v14 + 2) = v26 + 1;
    v27 = &v14[16 * v26];
    *(v27 + 4) = a4;
    *(v27 + 5) = a6;
    result = swift_allocObject();
    *(result + 16) = v14;
    *a1 = result;
  }

  else
  {
    v78 = a1;
    v83 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v29 = *a2;
    v30 = a3[1];
    v84 = *a3;
    v85 = v30;
    v31 = a3[3];
    v86 = a3[2];
    v87 = v31;

    v32 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v83, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    }

    v32[2] = v34 + 1;
    v35 = &v32[9 * v34];
    v36 = v84;
    v37 = v85;
    v38 = v87;
    v35[4] = v86;
    v35[5] = v38;
    v35[2] = v36;
    v35[3] = v37;
    *&v35[6].f64[0] = v29;
    type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>();
    v40 = v39;
    v82 = v39;
    v81[0] = v32;
    specialized Dictionary.subscript.setter(v81, v39);
    v70 = a3[1];
    v74 = *a3;
    v64 = a3[2];
    v66 = *a5;
    v60 = a3[3];
    v62 = a5[1];
    v56 = a5[3];
    v58 = a5[2];
    v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v42 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV0F0VAA0H4PairVyAJ4FillO0H4DataOANySfAA0hI0VyANySfAJ6EffectV4KindOAQOGGGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyA2_GTt0B5Tm(v83, type metadata accessor for CombinedAnimationState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
    }

    v43 = v78;
    v44 = vaddq_f64(v70, v62);
    v45 = vaddq_f64(v74, v66);
    v46 = vaddq_f64(v60, v56);
    v47 = vaddq_f64(v64, v58);
    v49 = v42[2];
    v48 = v42[3];
    if (v49 >= v48 >> 1)
    {
      v76 = v44;
      v80 = v45;
      v68 = v46;
      v72 = v47;
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v42);
      v46 = v68;
      v47 = v72;
      v44 = v76;
      v45 = v80;
      v42 = v55;
    }

    v42[2] = v49 + 1;
    v50 = &v42[9 * v49];
    v50[2] = v45;
    v50[3] = v44;
    v50[4] = v47;
    v50[5] = v46;
    *&v50[6].f64[0] = v41;
    v82 = v40;
    v81[0] = v42;
    specialized Dictionary.subscript.setter(v81, v40);
    v51 = v83;

    *a2 = v51;

    v52 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, a4, a6);
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *v43 = v53;
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5, double a6)
{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    v50 = *a3;
    v52 = *a5;
    if (a3[1].f32[0] > a5[1].f32[0])
    {
      v15 = a3[1].i32[0];
    }

    else
    {
      v15 = a5[1].i32[0];
    }

    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v17 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    }

    v18 = vaddq_f32(v52, v50);
    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v53 = v18;
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
      v18 = v53;
      v17 = v47;
    }

    v17[2] = v20 + 1;
    v21 = &v17[4 * v20];
    v21[2] = v18;
    v21[3].i32[0] = v15;
    v21[3].i64[1] = v16;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for CombinedAnimationState);
    v56 = v22;
    v55[0] = v17;
    specialized Dictionary.subscript.setter(v55, v22);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v24 = *(v14 + 2);
    v23 = *(v14 + 3);
    if (v24 >= v23 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v14);
    }

    *(v14 + 2) = v24 + 1;
    v25 = &v14[16 * v24];
    *(v25 + 4) = a4;
    *(v25 + 5) = a6;
    result = swift_allocObject();
    *(result + 16) = v14;
    *a1 = result;
  }

  else
  {
    v57 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v27 = *a2;
    v28 = a3->i64[0];
    v29 = a3->i64[1];
    v30 = a3[1].i32[0];

    v31 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v57, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    }

    v33 = v31[2];
    v32 = v31[3];
    if (v33 >= v32 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
    }

    v31[2] = v33 + 1;
    v34 = &v31[4 * v33];
    v34[4] = v28;
    v34[5] = v29;
    *(v34 + 12) = v30;
    v34[7] = v27;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for CombinedAnimationState);
    v36 = v35;
    v56 = v35;
    v55[0] = v31;
    specialized Dictionary.subscript.setter(v55, v35);
    v51 = *a5;
    v49 = *a3;
    if (a3[1].f32[0] > a5[1].f32[0])
    {
      v37 = a3[1].i32[0];
    }

    else
    {
      v37 = a5[1].i32[0];
    }

    v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v39 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v57, &lazy cache variable for type metadata for CombinedAnimationState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    }

    v40 = vaddq_f32(v51, v49);
    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v54 = v40;
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39);
      v40 = v54;
      v39 = v48;
    }

    v39[2] = v42 + 1;
    v43 = &v39[4 * v42];
    v43[2] = v40;
    v43[3].i32[0] = v37;
    v43[3].i64[1] = v38;
    v56 = v36;
    v55[0] = v39;
    specialized Dictionary.subscript.setter(v55, v36);
    v44 = v57;

    *a2 = v44;

    v45 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, a4, a6);
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *a1 = v46;
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6)
{
  v12 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 16);

    v44[0] = a3;
    v46 = a5;

    specialized static ShaderVectorData.+= infix(_:_:)(v44, &v46);
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v16 = v44[0];
    v17 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[2 * v19];
    v20[4] = v16;
    v20[5] = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for CombinedAnimationState);
    v45 = v21;
    v44[0] = v17;
    specialized Dictionary.subscript.setter(v44, v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v23 = *(v14 + 2);
    v22 = *(v14 + 3);
    if (v23 >= v22 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v14);
    }

    *(v14 + 2) = v23 + 1;
    v24 = &v14[16 * v23];
    *(v24 + 4) = a4;
    *(v24 + 5) = a6;
    result = swift_allocObject();
    *(result + 16) = v14;
    *a1 = result;
  }

  else
  {
    v42 = a4;
    v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v26 = *a2;

    v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v46, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
    }

    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
    }

    v27[2] = v29 + 1;
    v30 = &v27[2 * v29];
    v30[4] = a3;
    v30[5] = v26;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for CombinedAnimationState);
    v32 = v31;
    v45 = v31;
    v44[0] = v27;
    specialized Dictionary.subscript.setter(v44, v31);
    v43 = a5;
    v44[0] = a3;

    specialized static ShaderVectorData.+= infix(_:_:)(v44, &v43);
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v34 = v44[0];
    v35 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v46, &lazy cache variable for type metadata for CombinedAnimationState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
    }

    v37 = v35[2];
    v36 = v35[3];
    if (v37 >= v36 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35);
    }

    v35[2] = v37 + 1;
    v38 = &v35[2 * v37];
    v38[4] = v34;
    v38[5] = v33;
    v45 = v32;
    v44[0] = v35;
    specialized Dictionary.subscript.setter(v44, v32);
    v39 = v46;

    *a2 = v39;

    v40 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v12, v42, a6);
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *a1 = v41;
  }

  return result;
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>();
  if (v20 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a7, a8);
  }

  else
  {
    v21 = v20;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      __break(1u);
    }

    else
    {
      v23 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = *(v24 + 16);

        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v28 = a4 + a8;
        v29 = a5 + a9;
        v30 = a6 + a10;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v27);
        }

        v27[2] = v32 + 1;
        v33 = &v27[4 * v32];
        v33[4] = v28;
        v33[5] = v29;
        v33[6] = v30;
        *(v33 + 7) = v26;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
        v60 = v34;
        v59[0] = v27;
        specialized Dictionary.subscript.setter(v59, v34);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        }

        v36 = *(v25 + 2);
        v35 = *(v25 + 3);
        if (v36 >= v35 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v25);
        }

        *(v25 + 2) = v36 + 1;
        v37 = &v25[16 * v36];
        *(v37 + 4) = a3;
        *(v37 + 5) = a7;
        v38 = swift_allocObject();
        *(v38 + 16) = v25;
        *a1 = v38;
      }

      else
      {
        v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v39 = *a2;

        v40 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v61, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v43 = &v40[4 * v42];
        v43[4] = a4;
        v43[5] = a5;
        v43[6] = a6;
        *(v43 + 7) = v39;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
        v45 = v44;
        v60 = v44;
        v59[0] = v40;
        specialized Dictionary.subscript.setter(v59, v44);
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v61, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = a4 + a8;
        v49 = a5 + a9;
        v50 = a6 + a10;
        v52 = v47[2];
        v51 = v47[3];
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v47);
          v53 = v52 + 1;
          v47 = v58;
        }

        v47[2] = v53;
        v54 = &v47[4 * v52];
        v54[4] = v48;
        v54[5] = v49;
        v54[6] = v50;
        *(v54 + 7) = v46;
        v60 = v45;
        v59[0] = v47;
        specialized Dictionary.subscript.setter(v59, v45);
        v55 = v61;

        *a2 = v55;

        v56 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v23, a3, a7);
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *a1 = v57;
      }
    }
  }
}

{
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>();
  if (v20 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a7, a8);
  }

  else
  {
    v21 = v20;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      __break(1u);
    }

    else
    {
      v23 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = *(v24 + 16);

        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v28 = a4 + a8;
        v29 = a5 + a9;
        v30 = a6 + a10;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v27);
        }

        v27[2] = v32 + 1;
        v33 = &v27[4 * v32];
        v33[4] = v28;
        v33[5] = v29;
        v33[6] = v30;
        *(v33 + 7) = v26;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>();
        v60 = v34;
        v59[0] = v27;
        specialized Dictionary.subscript.setter(v59, v34);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        }

        v36 = *(v25 + 2);
        v35 = *(v25 + 3);
        if (v36 >= v35 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v25);
        }

        *(v25 + 2) = v36 + 1;
        v37 = &v25[16 * v36];
        *(v37 + 4) = a3;
        *(v37 + 5) = a7;
        v38 = swift_allocObject();
        *(v38 + 16) = v25;
        *a1 = v38;
      }

      else
      {
        v61 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v39 = *a2;

        v40 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v61, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
        }

        v42 = v40[2];
        v41 = v40[3];
        if (v42 >= v41 >> 1)
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40);
        }

        v40[2] = v42 + 1;
        v43 = &v40[4 * v42];
        v43[4] = a4;
        v43[5] = a5;
        v43[6] = a6;
        *(v43 + 7) = v39;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>();
        v45 = v44;
        v60 = v44;
        v59[0] = v40;
        specialized Dictionary.subscript.setter(v59, v44);
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v61, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = a4 + a8;
        v49 = a5 + a9;
        v50 = a6 + a10;
        v52 = v47[2];
        v51 = v47[3];
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v47);
          v53 = v52 + 1;
          v47 = v58;
        }

        v47[2] = v53;
        v54 = &v47[4 * v52];
        v54[4] = v48;
        v54[5] = v49;
        v54[6] = v50;
        *(v54 + 7) = v46;
        v60 = v45;
        v59[0] = v47;
        specialized Dictionary.subscript.setter(v59, v45);
        v55 = v61;

        *a2 = v55;

        v56 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v23, a3, a7);
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *a1 = v57;
      }
    }
  }
}

{
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>();
  if (v20 == MEMORY[0x1E69E63B0])
  {

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, a4, a7, a8);
  }

  else
  {
    v21 = v20;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      __break(1u);
    }

    else
    {
      v23 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v25 = v24;
      v26 = swift_dynamicCastClass();
      v108 = a1;
      v107 = a3;
      v106 = v25;
      v105 = a2;
      if (v26)
      {
        v103 = *(v26 + 16);

        v116 = a5;
        v117 = a4;
        v114 = a8;
        v115 = a6;
        v112 = a10;
        v113 = a9;
        v27 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v102 = &v100;
        v28 = MEMORY[0x1E69E7DE0];
        v29 = *(MEMORY[0x1E69E7DE0] - 8);
        v30 = v29[8];
        v31 = MEMORY[0x1EEE9AC00](v27);
        v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
        v33 = v29[2];
        v34 = v33(&v100 - v32, &v117, v28, v31);
        v101 = &v100;
        v35 = MEMORY[0x1EEE9AC00](v34);
        v33(&v100 - v32, &v114, v28, v35);
        v104 = *(v27 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v36 = v29[1];
        v36(&v100 - v32, v28);
        v37 = (v36)(&v100 - v32, v28);
        v102 = &v100;
        v38 = MEMORY[0x1EEE9AC00](v37);
        v39 = v33(&v100 - v32, &v116, v28, v38);
        v101 = &v100;
        v40 = MEMORY[0x1EEE9AC00](v39);
        v33(&v100 - v32, &v113, v28, v40);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v36(&v100 - v32, v28);
        v41 = (v36)(&v100 - v32, v28);
        v102 = &v100;
        v42 = MEMORY[0x1EEE9AC00](v41);
        v43 = v33(&v100 - v32, &v115, v28, v42);
        v44 = MEMORY[0x1EEE9AC00](v43);
        v33(&v100 - v32, &v112, v28, v44);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v36(&v100 - v32, v28);
        v36(&v100 - v32, v28);
        v45 = v105;
        v46 = v109[0];
        v47 = v121;
        v48 = v118;
        v36(&v118, v28);
        v36(&v121, v28);
        v36(v109, v28);
        v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v50 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(*v45, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
        }

        v51 = v107;
        v53 = v50[2];
        v52 = v50[3];
        if (v53 >= v52 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v50);
        }

        v50[2] = v53 + 1;
        v54 = &v50[4 * v53];
        v54[4] = v46;
        v54[5] = v47;
        v54[6] = v48;
        v54[7] = v49;
        type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>();
        v120 = v55;
        v119[0] = v50;
        specialized Dictionary.subscript.setter(v119, v55);

        v56 = v103;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
        }

        v57 = v108;
        v59 = *(v56 + 2);
        v58 = *(v56 + 3);
        if (v59 >= v58 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v56);
        }

        *(v56 + 2) = v59 + 1;
        v60 = &v56[16 * v59];
        *(v60 + 4) = v51;
        *(v60 + 5) = a7;
        v61 = swift_allocObject();
        *(v61 + 16) = v56;
        *v57 = v61;
      }

      else
      {
        v121 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v62 = *a2;

        v63 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v121, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>);
        v104 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
        }

        v65 = v63[2];
        v64 = v63[3];
        if (v65 >= v64 >> 1)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v63);
        }

        v63[2] = v65 + 1;
        v66 = &v63[4 * v65];
        v66[4] = a4;
        v66[5] = a5;
        v66[6] = a6;
        *(v66 + 7) = v62;
        type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>();
        v120 = v67;
        v119[0] = v63;
        v103 = v67;
        specialized Dictionary.subscript.setter(v119, v67);
        v114 = a5;
        v115 = a4;
        v112 = a8;
        v113 = a6;
        v111 = a9;
        v110 = a10;
        v68 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v102 = &v100;
        v69 = MEMORY[0x1E69E7DE0];
        v70 = *(MEMORY[0x1E69E7DE0] - 8);
        v71 = v70[8];
        v72 = MEMORY[0x1EEE9AC00](v68);
        v73 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
        v74 = v70[2];
        v75 = v74(&v100 - v73, &v115, v69, v72);
        v101 = &v100;
        v76 = MEMORY[0x1EEE9AC00](v75);
        v74(&v100 - v73, &v112, v69, v76);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v77 = v70[1];
        v77(&v100 - v73, v69);
        v78 = (v77)(&v100 - v73, v69);
        v102 = &v100;
        v79 = MEMORY[0x1EEE9AC00](v78);
        v80 = v74(&v100 - v73, &v114, v69, v79);
        v101 = &v100;
        v81 = MEMORY[0x1EEE9AC00](v80);
        v74(&v100 - v73, &v111, v69, v81);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v77(&v100 - v73, v69);
        v82 = (v77)(&v100 - v73, v69);
        v102 = &v100;
        v83 = MEMORY[0x1EEE9AC00](v82);
        v84 = v74(&v100 - v73, &v113, v69, v83);
        v85 = MEMORY[0x1EEE9AC00](v84);
        v74(&v100 - v73, &v110, v69, v85);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v77(&v100 - v73, v69);
        v77(&v100 - v73, v69);
        v87 = v117;
        v86 = v118;
        v88 = v116;
        v77(&v116, v69);
        v77(&v117, v69);
        v77(&v118, v69);
        v89 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v90 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v121, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90[2] + 1, 1, v90);
        }

        v91 = v108;
        v92 = v107;
        v93 = v105;
        v95 = v90[2];
        v94 = v90[3];
        if (v95 >= v94 >> 1)
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v90);
        }

        v90[2] = v95 + 1;
        v96 = &v90[4 * v95];
        *(v96 + 4) = v86;
        v96[5] = v87;
        v96[6] = v88;
        *(v96 + 7) = v89;
        v109[3] = v103;
        v109[0] = v90;
        specialized Dictionary.subscript.setter(v109, v103);
        v97 = v121;

        *v93 = v97;

        v98 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v104, v92, a7);
        v99 = swift_allocObject();
        *(v99 + 16) = v98;
        *v91 = v99;
      }
    }
  }
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = *a5;
  v12 = *(a5 + 8);
  v15 = *(a5 + 16);
  v14 = *(a5 + 20);
  v16 = *(a5 + 28);
  v82 = *(a5 + 24);
  v17 = *a3;
  v18 = *(a3 + 8);
  v19 = *(a3 + 16);
  v20 = *(a3 + 20);
  v22 = *(a3 + 24);
  v21 = *(a3 + 28);
  type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>();
  if (v23 == MEMORY[0x1E69E63B0])
  {

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v17, a6, *&v13);
  }

  else
  {
    v24 = v23;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v24 == v25)
    {
      *&v88 = __PAIR64__(LODWORD(v14), LODWORD(v15));
      v85[0] = __PAIR64__(LODWORD(v16), LODWORD(v82));
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v17, v18, COERCE_DOUBLE(__PAIR64__(LODWORD(v20), LODWORD(v19))), COERCE_DOUBLE(__PAIR64__(LODWORD(v21), LODWORD(v22))), a6, *&v13, *&v12, COERCE_DOUBLE(__PAIR64__(LODWORD(v14), LODWORD(v15))), COERCE_DOUBLE(__PAIR64__(LODWORD(v16), LODWORD(v82))));
    }

    else
    {
      v81 = a1;
      v26 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        v79 = v16;
        v80 = a6;
        v28 = *(v27 + 16);

        *v85 = v17;
        v91 = v17;
        outlined init with copy of AnimatableArray<Float>(v85, &v88);
        _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(&v91, v13);
        v29 = *(a3 + 32);
        v30 = *(a5 + 32);
        *v92 = v18;
        v87 = v18;
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v92, &v88, type metadata accessor for AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v87, v12);
        if (v29 > v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = v30;
        }

        v78 = v31;
        v32 = *&v87;
        v33 = v91;
        v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v35 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
        }

        v36 = v15 + v19;
        v37 = v14 + v20;
        v39 = v35[2];
        v38 = v35[3];
        if (v39 >= v38 >> 1)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v35);
        }

        v35[2] = v39 + 1;
        v40 = &v35[6 * v39];
        *(v40 + 4) = v33;
        *(v40 + 5) = v32;
        v40[12] = v36;
        v40[13] = v37;
        v40[14] = v82 + v22;
        v40[15] = v79 + v21;
        v40[16] = v78;
        *(v40 + 9) = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>();
        *(&v89 + 1) = v41;
        *&v88 = v35;
        specialized Dictionary.subscript.setter(&v88, v41);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v43 = *(v28 + 2);
        v42 = *(v28 + 3);
        if (v43 >= v42 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v28);
        }

        *(v28 + 2) = v43 + 1;
        v44 = &v28[16 * v43];
        *(v44 + 4) = a4;
        *(v44 + 5) = v80;
        result = swift_allocObject();
        *(result + 16) = v28;
        *v81 = result;
      }

      else
      {
        *&v46 = COERCE_DOUBLE(_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]));
        v87 = *&v46;
        v47 = *a2;
        v48 = *(a3 + 16);
        v88 = *a3;
        v89 = v48;
        LODWORD(v90) = *(a3 + 32);
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, v85, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);

        v49 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v46, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
        }

        v51 = v49[2];
        v50 = v49[3];
        v52 = a6;
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        v49[2] = v51 + 1;
        v53 = &v49[6 * v51];
        v54 = v89;
        v55 = v90;
        *(v53 + 2) = v88;
        *(v53 + 3) = v54;
        v53[8] = v55;
        v53[9] = v47;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>();
        v57 = v56;
        v86 = v56;
        v85[0] = v49;
        specialized Dictionary.subscript.setter(v85, v56);
        v92[0] = *a3;
        v58 = *a5;
        v84 = v92[0];
        outlined init with copy of AnimatableArray<Float>(v92, v85);
        _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(&v84, v58);
        v59 = *(a3 + 32);
        v60 = *(a5 + 8);
        v61 = *(a3 + 16);
        v62 = *(a3 + 24);
        v63 = *(a5 + 16);
        v64 = *(a5 + 24);
        v65 = *(a5 + 32);
        v91 = *(a3 + 8);
        v83 = v91;
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v91, v85, type metadata accessor for AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v83, v60);
        if (v59 <= v65)
        {
          v59 = v65;
        }

        v67 = *&v83;
        v66 = v84;
        v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v69 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*&v87, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69);
        }

        v70 = vadd_f32(v61, v63);
        v71 = vadd_f32(v62, v64);
        v73 = v69[2];
        v72 = v69[3];
        if (v73 >= v72 >> 1)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v69);
        }

        v69[2] = v73 + 1;
        v74 = &v69[6 * v73];
        v74[4] = v66;
        v74[5] = v67;
        v74[6] = v70;
        v74[7] = v71;
        v74[8].f32[0] = v59;
        v74[9] = v68;
        v86 = v57;
        v85[0] = v69;
        specialized Dictionary.subscript.setter(v85, v57);
        v75 = *&v87;

        *a2 = v75;

        v76 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v26, a4, v52);
        v77 = swift_allocObject();
        *(v77 + 16) = v76;
        *v81 = v77;
      }
    }
  }

  return result;
}

{
  v12 = *a5;
  v13 = *(a5 + 8);
  v14 = *(a5 + 24);
  v80 = *(a5 + 16);
  v15 = *a3;
  v16 = *(a3 + 8);
  v18 = *(a3 + 16);
  v17 = *(a3 + 24);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>();
  if (v19 == MEMORY[0x1E69E63B0])
  {

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, a6, v12);
  }

  else
  {
    v20 = v19;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v20 == v21)
    {
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, v16, v18, v17, a6, v12, v13, v80, v14);
    }

    else
    {
      v22 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v23 = swift_dynamicCastClass();
      v78 = a1;
      if (v23)
      {
        v24 = *(v23 + 16);

        v86 = *(a3 + 32);
        v87 = *(a3 + 48);
        v94 = *(a5 + 32);
        v95 = *(a5 + 48);
        v90 = *(a3 + 32);
        LOBYTE(v91) = *(a3 + 48);
        outlined init with copy of ResolvedGradientVector(&v86, &v84);
        ResolvedGradientVector.add(_:scaledBy:)(&v94, 1.0);
        v25 = v90;
        v26 = BYTE8(v90);
        v75 = HIDWORD(v90);
        LOBYTE(v94) = v91;
        v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v28 = v94;
        v29 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>);
        v30 = a4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
        }

        v31 = v12 + v15;
        v32 = v13 + v16;
        v33 = v14 + v17;
        v35 = v29[2];
        v34 = v29[3];
        if (v35 >= v34 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v29);
        }

        v29[2] = v35 + 1;
        v36 = &v29[8 * v35];
        *(v36 + 4) = v31;
        *(v36 + 5) = v32;
        *(v36 + 6) = v80 + v18;
        *(v36 + 7) = v33;
        v36[8] = v25;
        *(v36 + 72) = v26;
        v37 = BYTE2(v84);
        *(v36 + 73) = v84;
        *(v36 + 75) = v37;
        *(v36 + 19) = v75;
        *(v36 + 80) = v28;
        v38 = *(&v94 + 3);
        *(v36 + 81) = v94;
        *(v36 + 21) = v38;
        v36[11] = v27;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>();
        *(&v91 + 1) = v39;
        *&v90 = v29;
        specialized Dictionary.subscript.setter(&v90, v39);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v41 = *(v24 + 2);
        v40 = *(v24 + 3);
        if (v41 >= v40 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v24);
        }

        *(v24 + 2) = v41 + 1;
        v42 = &v24[16 * v41];
        *(v42 + 4) = v30;
        *(v42 + 5) = a6;
        result = swift_allocObject();
        *(result + 16) = v24;
        *v78 = result;
      }

      else
      {
        v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v89 = v44;
        v45 = *a2;
        v46 = *(a3 + 16);
        v90 = *a3;
        v47 = *(a3 + 32);
        v91 = v46;
        v92 = v47;
        LOBYTE(v93) = *(a3 + 48);
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, &v86, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

        v48 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v44, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
        }

        v50 = v48[2];
        v49 = v48[3];
        if (v50 >= v49 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
        }

        v48[2] = v50 + 1;
        v51 = &v48[8 * v50];
        v52 = v90;
        v53 = v92;
        v54 = v93;
        *(v51 + 3) = v91;
        *(v51 + 4) = v53;
        *(v51 + 2) = v52;
        v51[10] = v54;
        v51[11] = v45;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>();
        v56 = v55;
        v88 = v55;
        *&v86 = v48;
        specialized Dictionary.subscript.setter(&v86, v55);
        v81 = *a3;
        v76 = *(a3 + 16);
        v72 = *(a5 + 16);
        v73 = *a5;
        v94 = *(a3 + 32);
        v95 = *(a3 + 48);
        v84 = *(a5 + 32);
        v85 = *(a5 + 48);
        v86 = *(a3 + 32);
        v87 = *(a3 + 48);
        outlined init with copy of ResolvedGradientVector(&v94, v83);
        ResolvedGradientVector.add(_:scaledBy:)(&v84, 1.0);
        v79 = v86;
        v57 = BYTE8(v86);
        v58 = HIDWORD(v86);
        LOBYTE(v84) = v87;
        v59 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v60 = v84;
        v61 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v89, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>);
        v74 = a4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
        }

        v62 = vaddq_f64(v76, v72);
        v63 = vaddq_f64(v81, v73);
        v65 = v61[2];
        v64 = v61[3];
        if (v65 >= v64 >> 1)
        {
          v82 = v63;
          v77 = v62;
          v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v61);
          v62 = v77;
          v63 = v82;
          v61 = v71;
        }

        v61[2] = v65 + 1;
        v66 = &v61[8 * v65];
        *(v66 + 2) = v63;
        *(v66 + 3) = v62;
        v66[8] = v79;
        *(v66 + 72) = v57;
        *(v66 + 19) = v58;
        *(v66 + 80) = v60;
        v67 = *(&v84 + 3);
        *(v66 + 81) = v84;
        *(v66 + 21) = v67;
        v66[11] = v59;
        v88 = v56;
        *&v86 = v61;
        specialized Dictionary.subscript.setter(&v86, v56);
        v68 = v89;

        *a2 = v68;

        v69 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v22, v74, a6);
        v70 = swift_allocObject();
        *(v70 + 16) = v69;
        *v78 = v70;
      }
    }
  }

  return result;
}

{
  v12 = *a5;
  v13 = *(a5 + 8);
  v91 = (a5 + 16);
  v88 = *(a5 + 24);
  v89 = *(a5 + 16);
  v14 = *(a5 + 28);
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *(a3 + 16);
  v92 = a3 + 16;
  v18 = *(a3 + 24);
  v19 = *(a3 + 28);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>();
  if (v20 == MEMORY[0x1E69E63B0])
  {

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, a6, v12);
  }

  else
  {
    v21 = v20;
    v93 = a2;
    v90 = a4;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, v16, v17, COERCE_DOUBLE(v18 | (v19 << 32)), a6, v12, v13, v89, COERCE_DOUBLE(v88 | (v14 << 32)));
    }

    else
    {
      v23 = a1;
      v24 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v25 = swift_dynamicCastClass();
      v87 = a6;
      if (v25)
      {
        v26 = *(v25 + 16);

        v97 = *v92;
        v98 = *(v92 + 16);
        v105 = *v91;
        v106 = *(v91 + 16);
        v101 = *v92;
        LOBYTE(v102) = *(v92 + 16);
        outlined init with copy of ResolvedGradientVector(&v97, &v95);
        ResolvedGradientVector.add(_:scaledBy:)(&v105, 1.0);
        v27 = v101;
        v28 = BYTE8(v101);
        v29 = HIDWORD(v101);
        v30 = *(a3 + 40);
        v31 = *(a3 + 48);
        v33 = *(a5 + 40);
        v32 = *(a5 + 48);
        LOBYTE(v101) = v102;
        v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v35 = v101;
        v36 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*v93, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        }

        v37 = v12 + v15;
        v38 = v13 + v16;
        v39 = v31 + v32;
        v41 = v36[2];
        v40 = v36[3];
        if (v41 >= v40 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v36);
        }

        v36[2] = v41 + 1;
        v42 = &v36[8 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v38;
        v42[6] = v27;
        *(v42 + 56) = v28;
        v43 = BYTE2(v95);
        *(v42 + 57) = v95;
        *(v42 + 59) = v43;
        *(v42 + 15) = v29;
        *(v42 + 64) = v35;
        v44 = *(&v105 + 3);
        *(v42 + 65) = v105;
        *(v42 + 17) = v44;
        *(v42 + 9) = v30 + v33;
        *(v42 + 10) = v39;
        v42[11] = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>();
        *(&v102 + 1) = v45;
        *&v101 = v36;
        specialized Dictionary.subscript.setter(&v101, v45);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v47 = *(v26 + 2);
        v46 = *(v26 + 3);
        if (v47 >= v46 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v26);
        }

        *(v26 + 2) = v47 + 1;
        v48 = &v26[16 * v47];
        *(v48 + 4) = v90;
        *(v48 + 5) = v87;
        result = swift_allocObject();
        *(result + 16) = v26;
        *v23 = result;
      }

      else
      {
        v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v100 = v50;
        v51 = *v93;
        v52 = *(a3 + 16);
        v101 = *a3;
        v53 = *(a3 + 32);
        v102 = v52;
        v103 = v53;
        v104 = *(a3 + 48);
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, &v97, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

        v54 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v50, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>);
        v86 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
        }

        v56 = v54[2];
        v55 = v54[3];
        if (v56 >= v55 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54);
        }

        v54[2] = v56 + 1;
        v57 = &v54[8 * v56];
        v58 = v101;
        v59 = v103;
        v60 = v104;
        *(v57 + 3) = v102;
        *(v57 + 4) = v59;
        *(v57 + 2) = v58;
        v57[10] = v60;
        v57[11] = v51;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>();
        v62 = v61;
        v99 = v61;
        *&v97 = v54;
        specialized Dictionary.subscript.setter(&v97, v61);
        v63 = *a3;
        v64 = *(a3 + 8);
        v105 = *v92;
        v106 = *(v92 + 16);
        v65 = *a5;
        v66 = *(a5 + 8);
        v95 = *v91;
        v96 = *(v91 + 16);
        v97 = *v92;
        v98 = *(v92 + 16);
        outlined init with copy of ResolvedGradientVector(&v105, v94);
        ResolvedGradientVector.add(_:scaledBy:)(&v95, 1.0);
        v67 = v97;
        v68 = BYTE8(v97);
        v69 = HIDWORD(v97);
        v70 = *(a3 + 40);
        v71 = *(a3 + 48);
        v72 = *(a5 + 40);
        v73 = *(a5 + 48);
        LOBYTE(v97) = v98;
        v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v75 = v97;
        v76 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v100, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
        }

        v77 = v63 + v65;
        v78 = v64 + v66;
        v79 = v70 + v72;
        v81 = v76[2];
        v80 = v76[3];
        if (v81 >= v80 >> 1)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v76);
        }

        v76[2] = v81 + 1;
        v82 = &v76[8 * v81];
        v82[4] = v77;
        v82[5] = v78;
        *(v82 + 6) = v67;
        *(v82 + 56) = v68;
        *(v82 + 15) = v69;
        *(v82 + 64) = v75;
        v82[9] = v79;
        v82[10] = v71 + v73;
        *(v82 + 11) = v74;
        v99 = v62;
        *&v97 = v76;
        specialized Dictionary.subscript.setter(&v97, v62);
        v83 = v100;

        *v93 = v83;

        v84 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v86, v90, v87);
        v85 = swift_allocObject();
        *(v85 + 16) = v84;
        *v23 = v85;
      }
    }
  }

  return result;
}

{
  v12 = *a5;
  v13 = *(a5 + 8);
  v91 = (a5 + 16);
  v88 = *(a5 + 24);
  v89 = *(a5 + 16);
  v14 = *(a5 + 28);
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *(a3 + 16);
  v92 = a3 + 16;
  v18 = *(a3 + 24);
  v19 = *(a3 + 28);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>();
  if (v20 == MEMORY[0x1E69E63B0])
  {

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, a6, v12);
  }

  else
  {
    v21 = v20;
    v93 = a2;
    v90 = a4;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, v16, v17, COERCE_DOUBLE(v18 | (v19 << 32)), a6, v12, v13, v89, COERCE_DOUBLE(v88 | (v14 << 32)));
    }

    else
    {
      v23 = a1;
      v24 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v25 = swift_dynamicCastClass();
      v87 = a6;
      if (v25)
      {
        v26 = *(v25 + 16);

        v97 = *v92;
        v98 = *(v92 + 16);
        v105 = *v91;
        v106 = *(v91 + 16);
        v101 = *v92;
        LOBYTE(v102) = *(v92 + 16);
        outlined init with copy of ResolvedGradientVector(&v97, &v95);
        ResolvedGradientVector.add(_:scaledBy:)(&v105, 1.0);
        v27 = v101;
        v28 = BYTE8(v101);
        v29 = HIDWORD(v101);
        v30 = *(a3 + 40);
        v31 = *(a3 + 48);
        v33 = *(a5 + 40);
        v32 = *(a5 + 48);
        LOBYTE(v101) = v102;
        v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v35 = v101;
        v36 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*v93, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        }

        v37 = v12 + v15;
        v38 = v13 + v16;
        v39 = v31 + v32;
        v41 = v36[2];
        v40 = v36[3];
        if (v41 >= v40 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v36);
        }

        v36[2] = v41 + 1;
        v42 = &v36[8 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v38;
        v42[6] = v27;
        *(v42 + 56) = v28;
        v43 = BYTE2(v95);
        *(v42 + 57) = v95;
        *(v42 + 59) = v43;
        *(v42 + 15) = v29;
        *(v42 + 64) = v35;
        v44 = *(&v105 + 3);
        *(v42 + 65) = v105;
        *(v42 + 17) = v44;
        *(v42 + 9) = v30 + v33;
        *(v42 + 10) = v39;
        v42[11] = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>();
        *(&v102 + 1) = v45;
        *&v101 = v36;
        specialized Dictionary.subscript.setter(&v101, v45);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v47 = *(v26 + 2);
        v46 = *(v26 + 3);
        if (v47 >= v46 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v26);
        }

        *(v26 + 2) = v47 + 1;
        v48 = &v26[16 * v47];
        *(v48 + 4) = v90;
        *(v48 + 5) = v87;
        result = swift_allocObject();
        *(result + 16) = v26;
        *v23 = result;
      }

      else
      {
        v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v100 = v50;
        v51 = *v93;
        v52 = *(a3 + 16);
        v101 = *a3;
        v53 = *(a3 + 32);
        v102 = v52;
        v103 = v53;
        v104 = *(a3 + 48);
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, &v97, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

        v54 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v50, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>);
        v86 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
        }

        v56 = v54[2];
        v55 = v54[3];
        if (v56 >= v55 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v54);
        }

        v54[2] = v56 + 1;
        v57 = &v54[8 * v56];
        v58 = v101;
        v59 = v103;
        v60 = v104;
        *(v57 + 3) = v102;
        *(v57 + 4) = v59;
        *(v57 + 2) = v58;
        v57[10] = v60;
        v57[11] = v51;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>();
        v62 = v61;
        v99 = v61;
        *&v97 = v54;
        specialized Dictionary.subscript.setter(&v97, v61);
        v63 = *a3;
        v64 = *(a3 + 8);
        v105 = *v92;
        v106 = *(v92 + 16);
        v65 = *a5;
        v66 = *(a5 + 8);
        v95 = *v91;
        v96 = *(v91 + 16);
        v97 = *v92;
        v98 = *(v92 + 16);
        outlined init with copy of ResolvedGradientVector(&v105, v94);
        ResolvedGradientVector.add(_:scaledBy:)(&v95, 1.0);
        v67 = v97;
        v68 = BYTE8(v97);
        v69 = HIDWORD(v97);
        v70 = *(a3 + 40);
        v71 = *(a3 + 48);
        v72 = *(a5 + 40);
        v73 = *(a5 + 48);
        LOBYTE(v97) = v98;
        v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v75 = v97;
        v76 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v100, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
        }

        v77 = v63 + v65;
        v78 = v64 + v66;
        v79 = v70 + v72;
        v81 = v76[2];
        v80 = v76[3];
        if (v81 >= v80 >> 1)
        {
          v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v76);
        }

        v76[2] = v81 + 1;
        v82 = &v76[8 * v81];
        v82[4] = v77;
        v82[5] = v78;
        *(v82 + 6) = v67;
        *(v82 + 56) = v68;
        *(v82 + 15) = v69;
        *(v82 + 64) = v75;
        v82[9] = v79;
        v82[10] = v71 + v73;
        *(v82 + 11) = v74;
        v99 = v62;
        *&v97 = v76;
        specialized Dictionary.subscript.setter(&v97, v62);
        v83 = v100;

        *v93 = v83;

        v84 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v86, v90, v87);
        v85 = swift_allocObject();
        *(v85 + 16) = v84;
        *v23 = v85;
      }
    }
  }

  return result;
}

{
  v12 = *a5;
  v13 = *(a5 + 8);
  v14 = *(a5 + 16);
  v15 = *(a5 + 24);
  v16 = *a3;
  v17 = *(a3 + 8);
  v18 = *(a3 + 16);
  v19 = *(a3 + 24);
  type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
  if (v20 == MEMORY[0x1E69E63B0])
  {

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v16, a6, v12);
  }

  else
  {
    v21 = v20;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v21 == v22)
    {
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v16, v17, v18, v19, a6, v12, v13, v14, v15);
    }

    v23 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = *(v24 + 16);

      v26 = *(a3 + 16);
      v27 = *(a3 + 48);
      v122 = *(a3 + 32);
      v123 = v27;
      v28 = *(a3 + 48);
      v124 = *(a3 + 64);
      v29 = *(a3 + 16);
      v120 = *a3;
      v121 = v29;
      v30 = *(a5 + 48);
      v129 = *(a5 + 32);
      v130 = v30;
      v131 = *(a5 + 64);
      v31 = *(a5 + 16);
      v127 = *a5;
      v128 = v31;
      LOBYTE(v125) = *(a3 + 80);
      LOBYTE(v132) = *(a5 + 80);
      v135 = v120;
      v136 = v26;
      v32 = *(a3 + 64);
      v140 = *(a3 + 80);
      v138 = v28;
      v139 = v32;
      v137 = v122;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v120, &v114);
      specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(&v135, &v127);
      v112 = *(a3 + 88);
      v33 = *(a5 + 88);
      v23 = *(a5 + 96);
      v34 = *(&v112 + 1);
      if (*(v23 + 16) >= *(*(&v112 + 1) + 16))
      {
        v35 = *(*(&v112 + 1) + 16);
      }

      else
      {
        v35 = *(v23 + 16);
      }

      if (!v35)
      {
        _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v112, &v127, type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
LABEL_41:
        LODWORD(v14) = v112;
        v129 = v137;
        v130 = v138;
        v131 = v139;
        LOBYTE(v132) = v140;
        v127 = v135;
        v128 = v136;
        v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v35 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_42;
        }

        goto LABEL_57;
      }

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v112, &v127, type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
      }

      v36 = 0;
      v37 = 0;
      v38 = *(v34 + 2);
      while (v37 < v38)
      {
        v44 = *(v23 + v36 + 40);
        v45 = *(v23 + v36 + 56);
        v46 = *(v23 + v36 + 72);
        v47 = *(v23 + v36 + 80);
        v48 = &v34[v36];
        *&v34[v36 + 32] = *(v23 + v36 + 32) + *&v34[v36 + 32];
        if ((v47 & 1) == 0)
        {
          if (v48[80])
          {
            *(v48 + 5) = v44.i64[0];
            *(v48 + 3) = vextq_s8(v44, v45, 8uLL);
            *(v48 + 8) = *&v45.f64[1];
            v41 = v46;
          }

          else
          {
            v39 = *(v48 + 40);
            v40 = *(v48 + 56);
            v41 = *(v48 + 9) + v46;
            v42 = vadd_f32(vmovn_s64(v44), vmovn_s64(v39));
            v43.i64[0] = v42.u32[0];
            v43.i64[1] = v42.u32[1];
            *(v48 + 40) = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v44, 0x20uLL), vshrn_n_s64(v39, 0x20uLL)), 0x20uLL), v43);
            *(v48 + 56) = vaddq_f64(v40, v45);
          }

          *(v48 + 9) = v41;
          v48[80] = 0;
        }

        v37 = (v37 + 1);
        v36 += 56;
        if (v35 == v37)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
LABEL_42:
      v86 = v33 + *&v14;
      v88 = v35[2];
      v87 = v35[3];
      if (v88 >= v87 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v35);
      }

      v35[2] = v88 + 1;
      v89 = &v35[14 * v88];
      v90 = v128;
      *(v89 + 2) = v127;
      *(v89 + 3) = v90;
      v91 = v129;
      v92 = v130;
      v93 = v131;
      v89[14] = v132;
      *(v89 + 5) = v92;
      *(v89 + 6) = v93;
      *(v89 + 4) = v91;
      *(v89 + 30) = v86;
      v89[16] = v34;
      v89[17] = v23;
      type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
      *(&v115 + 1) = v94;
      *&v114 = v35;
      specialized Dictionary.subscript.setter(&v114, v94);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v96 = *(v25 + 2);
      v95 = *(v25 + 3);
      if (v96 >= v95 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v25);
      }

      *(v25 + 2) = v96 + 1;
      v97 = &v25[16 * v96];
      *(v97 + 4) = a4;
      *(v97 + 5) = a6;
      result = swift_allocObject();
      *(result + 16) = v25;
      *a1 = result;
      return result;
    }

    v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v126 = v50;
    v51 = *a2;
    v52 = *(a3 + 80);
    v131 = *(a3 + 64);
    v132 = v52;
    v133 = *(a3 + 96);
    v53 = *(a3 + 16);
    v127 = *a3;
    v128 = v53;
    v54 = *(a3 + 48);
    v129 = *(a3 + 32);
    v130 = v54;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a3, &v120, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

    v55 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v50, type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
    }

    v57 = v55[2];
    v56 = v55[3];
    if (v57 >= v56 >> 1)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v55);
    }

    v55[2] = v57 + 1;
    v58 = &v55[14 * v57];
    v59 = v127;
    v60 = v129;
    *(v58 + 3) = v128;
    *(v58 + 4) = v60;
    *(v58 + 2) = v59;
    v61 = v130;
    v62 = v132;
    v63 = v133;
    *(v58 + 6) = v131;
    *(v58 + 7) = v62;
    *(v58 + 5) = v61;
    v58[16] = v63;
    v58[17] = v51;
    type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
    v25 = v64;
    *(&v121 + 1) = v64;
    *&v120 = v55;
    specialized Dictionary.subscript.setter(&v120, v64);
    v65 = *(a3 + 16);
    v66 = *(a3 + 48);
    v137 = *(a3 + 32);
    v138 = v66;
    v67 = *(a3 + 48);
    v139 = *(a3 + 64);
    v68 = *(a3 + 16);
    v135 = *a3;
    v136 = v68;
    v69 = *(a5 + 48);
    v122 = *(a5 + 32);
    v123 = v69;
    v124 = *(a5 + 64);
    v70 = *(a5 + 16);
    v120 = *a5;
    v121 = v70;
    v140 = *(a3 + 80);
    LOBYTE(v125) = *(a5 + 80);
    v114 = v135;
    v115 = v65;
    v71 = *(a3 + 64);
    v119 = *(a3 + 80);
    v117 = v67;
    v118 = v71;
    v116 = v137;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v135, &v112);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(&v114, &v120);
    v134 = *(a3 + 88);
    v33 = *(a5 + 88);
    v35 = *(a5 + 96);
    v34 = *(&v134 + 1);
    if (v35[2] >= *(*(&v134 + 1) + 16))
    {
      v72 = *(*(&v134 + 1) + 16);
    }

    else
    {
      v72 = v35[2];
    }

    if (v72)
    {
      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v134, &v120, type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
      }

      v73 = 0;
      v74 = 0;
      v75 = *(v34 + 2);
      while (v74 < v75)
      {
        v81 = *&v35[v73 + 5];
        v82 = *&v35[v73 + 7];
        v83 = *&v35[v73 + 9];
        v84 = v35[v73 + 10];
        v85 = &v34[v73 * 8];
        *&v34[v73 * 8 + 32] = *&v35[v73 + 4] + *&v34[v73 * 8 + 32];
        if ((v84 & 1) == 0)
        {
          if (v85[80])
          {
            *(v85 + 5) = v81.i64[0];
            *(v85 + 3) = vextq_s8(v81, v82, 8uLL);
            *(v85 + 8) = *&v82.f64[1];
            v78 = v83;
          }

          else
          {
            v76 = *(v85 + 40);
            v77 = *(v85 + 56);
            v78 = *(v85 + 9) + v83;
            v79 = vadd_f32(vmovn_s64(v81), vmovn_s64(v76));
            v80.i64[0] = v79.u32[0];
            v80.i64[1] = v79.u32[1];
            *(v85 + 40) = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v81, 0x20uLL), vshrn_n_s64(v76, 0x20uLL)), 0x20uLL), v80);
            *(v85 + 56) = vaddq_f64(v77, v82);
          }

          *(v85 + 9) = v78;
          v85[80] = 0;
        }

        ++v74;
        v73 += 7;
        if (v72 == v74)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_56;
    }

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v134, &v120, type metadata accessor for AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>);
LABEL_50:
    v98 = *&v134;
    v122 = v116;
    v123 = v117;
    v124 = v118;
    LOBYTE(v125) = v119;
    v120 = v114;
    v121 = v115;
    v99 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v100 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v126, type metadata accessor for CombinedAnimationState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v100[2] + 1, 1, v100);
    }

    v101 = v33 + v98;
    v103 = v100[2];
    v102 = v100[3];
    if (v103 >= v102 >> 1)
    {
      v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v100);
    }

    v100[2] = v103 + 1;
    v104 = &v100[14 * v103];
    v105 = v121;
    *(v104 + 2) = v120;
    *(v104 + 3) = v105;
    v106 = v122;
    v107 = v123;
    v108 = v124;
    v104[14] = v125;
    *(v104 + 5) = v107;
    *(v104 + 6) = v108;
    *(v104 + 4) = v106;
    *(v104 + 30) = v101;
    v104[16] = v34;
    v104[17] = v99;
    v113 = v25;
    *&v112 = v100;
    specialized Dictionary.subscript.setter(&v112, v25);
    v109 = v126;

    *a2 = v109;

    v110 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v23, a4, a6);
    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *a1 = v111;
  }
}

{
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v12 == &type metadata for _ShapeStyle_Pack.Fill.AnimatableData)
  {
    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), a6, *a5, *(a5 + 8), *(a5 + 16), *(a5 + 24));
  }

  v13 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(v14 + 16);

    v16 = *(a3 + 48);
    v66 = *(a3 + 32);
    v67 = v16;
    v68 = *(a3 + 64);
    v69 = *(a3 + 80);
    v17 = *(a3 + 16);
    v64 = *a3;
    v65 = v17;
    v18 = *(a5 + 48);
    v86 = *(a5 + 32);
    v87 = v18;
    v88 = *(a5 + 64);
    LOBYTE(v89) = *(a5 + 80);
    v19 = *(a5 + 16);
    v84 = *a5;
    v85 = v19;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(a3, &v77);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(&v64, &v84);
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v86 = v66;
    v87 = v67;
    v88 = v68;
    LOBYTE(v89) = v69;
    v84 = v64;
    v85 = v65;
    v21 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
    }

    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
    }

    v21[2] = v23 + 1;
    v24 = &v21[12 * v23];
    v25 = v85;
    *(v24 + 2) = v84;
    *(v24 + 3) = v25;
    v26 = v86;
    v27 = v88;
    v28 = v89;
    *(v24 + 5) = v87;
    *(v24 + 6) = v27;
    *(v24 + 4) = v26;
    v24[14] = v28;
    v24[15] = v20;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for CombinedAnimationState);
    *(&v78 + 1) = v29;
    *&v77 = v21;
    specialized Dictionary.subscript.setter(&v77, v29);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v31 = *(v15 + 2);
    v30 = *(v15 + 3);
    if (v31 >= v30 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v15);
    }

    *(v15 + 2) = v31 + 1;
    v32 = &v15[16 * v31];
    *(v32 + 4) = a4;
    *(v32 + 5) = a6;
    result = swift_allocObject();
    *(result + 16) = v15;
    *a1 = result;
  }

  else
  {
    v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v83 = v34;
    v35 = *a2;
    v36 = *(a3 + 48);
    v86 = *(a3 + 32);
    v87 = v36;
    v88 = *(a3 + 64);
    LOBYTE(v89) = *(a3 + 80);
    v37 = *(a3 + 16);
    v84 = *a3;
    v85 = v37;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(a3, &v77);

    v38 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v34, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
    }

    v38[2] = v40 + 1;
    v41 = &v38[12 * v40];
    v42 = v85;
    *(v41 + 2) = v84;
    *(v41 + 3) = v42;
    v43 = v86;
    v44 = v88;
    v45 = v89;
    *(v41 + 5) = v87;
    *(v41 + 6) = v44;
    *(v41 + 4) = v43;
    v41[14] = v45;
    v41[15] = v35;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for CombinedAnimationState);
    v47 = v46;
    *(&v78 + 1) = v46;
    *&v77 = v38;
    specialized Dictionary.subscript.setter(&v77, v46);
    v48 = *(a3 + 48);
    v73 = *(a3 + 32);
    v74 = v48;
    v75 = *(a3 + 64);
    v76 = *(a3 + 80);
    v49 = *(a3 + 16);
    v71 = *a3;
    v72 = v49;
    v50 = *(a5 + 48);
    v79 = *(a5 + 32);
    v80 = v50;
    v81 = *(a5 + 64);
    LOBYTE(v82) = *(a5 + 80);
    v51 = *(a5 + 16);
    v77 = *a5;
    v78 = v51;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(a3, v70);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(&v71, &v77);
    v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v79 = v73;
    v80 = v74;
    v81 = v75;
    LOBYTE(v82) = v76;
    v77 = v71;
    v78 = v72;
    v53 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v83, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53[2] + 1, 1, v53);
    }

    v55 = v53[2];
    v54 = v53[3];
    if (v55 >= v54 >> 1)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v53);
    }

    v53[2] = v55 + 1;
    v56 = &v53[12 * v55];
    v57 = v78;
    *(v56 + 2) = v77;
    *(v56 + 3) = v57;
    v58 = v79;
    v59 = v81;
    v60 = v82;
    *(v56 + 5) = v80;
    *(v56 + 6) = v59;
    *(v56 + 4) = v58;
    v56[14] = v60;
    v56[15] = v52;
    v70[3] = v47;
    v70[0] = v53;
    specialized Dictionary.subscript.setter(v70, v47);
    v61 = v83;

    *a2 = v61;

    v62 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v13, a4, a6);
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *a1 = v63;
  }

  return result;
}

{
  v13 = *a3;
  v12 = *(a3 + 8);
  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v16 = *(a3 + 32);
  v17 = *(a3 + 40);
  v19 = *a5;
  v18 = *(a5 + 8);
  v20 = *(a5 + 16);
  v21 = *(a5 + 24);
  v22 = *(a5 + 32);
  v58 = *(a5 + 40);
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v23 == &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v13, v12, v15, v14, a6, v19, v18, v20, v21);
  }

  v56 = v18;
  v57 = a4;
  v55 = v19;
  v60 = v17;
  v24 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v25 = swift_dynamicCastClass();
  v59 = a2;
  if (v25)
  {
    v26 = *(v25 + 16);

    if (v58)
    {
      v27 = *&v13;
      v28 = *&v12;
      v20 = v15;
      v21 = v14;
      v22 = v16;
    }

    else
    {
      v60 = 0;
      if (v17)
      {
        v27 = *&v19;
        v28 = *&v56;
      }

      else
      {
        v20 = v15 + v20;
        v21 = v14 + v21;
        v22 = v16 + v22;
        v27 = COERCE_UNSIGNED_INT(*&v13 + *&v19) | (COERCE_UNSIGNED_INT(*(&v13 + 1) + *(&v19 + 1)) << 32);
        v28 = COERCE_UNSIGNED_INT(*&v12 + *&v56) | (COERCE_UNSIGNED_INT(*(&v12 + 1) + *(&v56 + 1)) << 32);
      }
    }

    v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v38 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*v59, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
    }

    v38[2] = v40 + 1;
    v41 = &v38[7 * v40];
    *(v41 + 4) = v27;
    *(v41 + 5) = v28;
    v41[6] = v20;
    v41[7] = v21;
    v41[8] = v22;
    *(v41 + 72) = v60 & 1;
    *(v41 + 10) = v37;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for CombinedAnimationState);
    v62 = v42;
    v61[0] = v38;
    specialized Dictionary.subscript.setter(v61, v42);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
    }

    v44 = *(v26 + 2);
    v43 = *(v26 + 3);
    if (v44 >= v43 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v26);
    }

    *(v26 + 2) = v44 + 1;
    v45 = &v26[16 * v44];
    *(v45 + 4) = v57;
    *(v45 + 5) = a6;
    result = swift_allocObject();
    *(result + 16) = v26;
    *a1 = result;
  }

  else
  {
    v63 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v30 = *a2;

    v31 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v63, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
    v54 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    }

    v33 = v31[2];
    v32 = v31[3];
    if (v33 >= v32 >> 1)
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
    }

    v31[2] = v33 + 1;
    v34 = &v31[7 * v33];
    v34[4] = v13;
    v34[5] = v12;
    v34[6] = v15;
    v34[7] = v14;
    v34[8] = v16;
    *(v34 + 72) = v60 & 1;
    *(v34 + 10) = v30;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for CombinedAnimationState);
    v36 = v35;
    v62 = v35;
    v61[0] = v31;
    specialized Dictionary.subscript.setter(v61, v35);
    if ((*(a5 + 40) & 1) == 0)
    {
      if (*(a3 + 40))
      {
        v13 = v55;
        v12 = v18;
        v15 = v20;
        v14 = v21;
        v16 = v22;
        v60 = v58;
      }

      else
      {
        v60 = 0;
        *&v13 = COERCE_UNSIGNED_INT(*a3 + *&v55) | (COERCE_UNSIGNED_INT(*(a3 + 4) + *(&v55 + 1)) << 32);
        *&v12 = COERCE_UNSIGNED_INT(*(a3 + 8) + *&v18) | (COERCE_UNSIGNED_INT(*(a3 + 12) + *(&v18 + 1)) << 32);
        v15 = *(a3 + 16) + v20;
        v14 = *(a3 + 24) + v21;
        v16 = *(a3 + 32) + v22;
      }
    }

    v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v63, &lazy cache variable for type metadata for CombinedAnimationState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
    }

    v49 = v47[2];
    v48 = v47[3];
    if (v49 >= v48 >> 1)
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v47);
    }

    v47[2] = v49 + 1;
    v50 = &v47[7 * v49];
    v50[4] = v13;
    v50[5] = v12;
    v50[6] = v15;
    v50[7] = v14;
    v50[8] = v16;
    *(v50 + 72) = v60 & 1;
    *(v50 + 10) = v46;
    v62 = v36;
    v61[0] = v47;
    specialized Dictionary.subscript.setter(v61, v36);
    v51 = v63;

    *v59 = v51;

    v52 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v24, v57, a6);
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *v54 = v53;
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = *a5;
  v12 = *(a5 + 4);
  v14 = *(a5 + 8);
  v70 = *(a5 + 12);
  v76 = *(a5 + 16);
  v74 = *(a5 + 24);
  v16 = *a3;
  v15 = *(a3 + 1);
  v17 = *(a3 + 2);
  v18 = *(a3 + 3);
  v71 = *(a3 + 2);
  v72 = *(a3 + 3);
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  if (v19 == MEMORY[0x1E69E63B0])
  {
    *&v81 = __PAIR64__(LODWORD(v12), LODWORD(v13));

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, COERCE_DOUBLE(__PAIR64__(LODWORD(v15), LODWORD(v16))), a6, COERCE_DOUBLE(__PAIR64__(LODWORD(v12), LODWORD(v13))));
  }

  else
  {
    v20 = v19;
    v69 = a6;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v20 == v21)
    {
      *&v81 = __PAIR64__(LODWORD(v12), LODWORD(v13));
      v78[0] = __PAIR64__(LODWORD(v70), LODWORD(v14));
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, COERCE_DOUBLE(__PAIR64__(LODWORD(v15), LODWORD(v16))), COERCE_DOUBLE(__PAIR64__(LODWORD(v18), LODWORD(v17))), v71, v72, a6, COERCE_DOUBLE(__PAIR64__(LODWORD(v12), LODWORD(v13))), COERCE_DOUBLE(__PAIR64__(LODWORD(v70), LODWORD(v14))), v76, v74);
    }

    else
    {
      v22 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = *(v23 + 16);

        v25 = *(a3 + 4);
        v68 = *(a5 + 32);
        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v28 = v13 + v16;
        v29 = v12 + v15;
        v30 = v14 + v17;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v27);
        }

        v27[2] = v32 + 1;
        v33 = &v27[6 * v32];
        v33[8] = v28;
        v33[9] = v29;
        v33[10] = v30;
        v33[11] = v70 + v18;
        *(v33 + 6) = v76 + v71;
        *(v33 + 7) = v74 + v72;
        *(v33 + 8) = v25 + v68;
        *(v33 + 9) = v26;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>();
        *(&v82 + 1) = v34;
        *&v81 = v27;
        specialized Dictionary.subscript.setter(&v81, v34);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v36 = *(v24 + 2);
        v35 = *(v24 + 3);
        if (v36 >= v35 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v24);
        }

        *(v24 + 2) = v36 + 1;
        v37 = &v24[16 * v36];
        *(v37 + 4) = a4;
        *(v37 + 5) = v69;
        result = swift_allocObject();
        *(result + 16) = v24;
        *a1 = result;
      }

      else
      {
        v80 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v39 = *a2;
        v40 = a3[1];
        v81 = *a3;
        v82 = v40;
        v83 = *(a3 + 4);

        v41 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v80, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v41);
        }

        v41[2] = v43 + 1;
        v44 = &v41[6 * v43];
        v45 = v82;
        v46 = v83;
        *(v44 + 2) = v81;
        *(v44 + 3) = v45;
        v44[8] = v46;
        v44[9] = v39;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>();
        v48 = v47;
        v79 = v47;
        v78[0] = v41;
        specialized Dictionary.subscript.setter(v78, v47);
        v73 = *a5;
        v75 = *a3;
        v49 = *(a3 + 2);
        v50 = *(a3 + 3);
        v51 = *(a3 + 4);
        v52 = *(a5 + 16);
        v53 = *(a5 + 24);
        v54 = *(a5 + 32);
        v55 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v56 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v80, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
        }

        v57 = vaddq_f32(v75, v73);
        v58 = v49 + v52;
        v59 = v50 + v53;
        v60 = v51 + v54;
        v62 = v56[2];
        v61 = v56[3];
        if (v62 >= v61 >> 1)
        {
          v77 = v57;
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v56);
          v57 = v77;
          v56 = v67;
        }

        v56[2] = v62 + 1;
        v63 = &v56[6 * v62];
        v63[2] = v57;
        *v63[3].i64 = v58;
        *&v63[3].i64[1] = v59;
        *v63[4].i64 = v60;
        v63[4].i64[1] = v55;
        v79 = v48;
        v78[0] = v56;
        specialized Dictionary.subscript.setter(v78, v48);
        v64 = v80;

        *a2 = v64;

        v65 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v22, a4, a6);
        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        *a1 = v66;
      }
    }
  }

  return result;
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, char a10)
{
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v18 == &type metadata for ResolvedGradientVector)
  {
    __break(1u);
  }

  else
  {
    v19 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v20 = swift_dynamicCastClass();
    v57 = a6;
    if (v20)
    {
      v21 = *(v20 + 16);

      v63 = a3;
      v64 = a4;
      v65 = HIDWORD(a4);
      v66 = a5 & 1;
      v59 = a7;
      v60 = a8;
      v61 = HIDWORD(a8);
      v62 = a10 & 1;

      ResolvedGradientVector.add(_:scaledBy:)(&v59, 1.0);
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v23 = v63;
      v24 = v64;
      v25 = v65;
      v26 = v66;
      v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
      }

      v27[2] = v29 + 1;
      v30 = &v27[4 * v29];
      v30[4] = v23;
      *(v30 + 40) = v24;
      *(v30 + 11) = v25;
      *(v30 + 48) = v26;
      v30[7] = v22;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for CombinedAnimationState);
      v67 = v31;
      v63 = v27;
      specialized Dictionary.subscript.setter(&v63, v31);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      }

      v33 = *(v21 + 2);
      v32 = *(v21 + 3);
      if (v33 >= v32 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v21);
      }

      *(v21 + 2) = v33 + 1;
      v34 = &v21[16 * v33];
      *(v34 + 4) = v57;
      *(v34 + 5) = a9;
      v35 = swift_allocObject();
      *(v35 + 16) = v21;
      *a1 = v35;
    }

    else
    {
      v56 = a1;
      v68 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v36 = *a2;

      v37 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v68, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
      v55 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
      }

      v39 = v37[2];
      v38 = v37[3];
      if (v39 >= v38 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
      }

      v37[2] = v39 + 1;
      v40 = &v37[4 * v39];
      v40[4] = a3;
      *(v40 + 40) = a4;
      *(v40 + 11) = HIDWORD(a4);
      *(v40 + 48) = a5 & 1;
      v40[7] = v36;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for CombinedAnimationState);
      v42 = v41;
      v67 = v41;
      v63 = v37;
      specialized Dictionary.subscript.setter(&v63, v41);
      v63 = a3;
      v64 = a4;
      v65 = HIDWORD(a4);
      v66 = a5 & 1;
      v59 = a7;
      v60 = a8;
      v61 = HIDWORD(a8);
      v62 = a10 & 1;

      ResolvedGradientVector.add(_:scaledBy:)(&v59, 1.0);
      v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v44 = v63;
      v45 = v64;
      v46 = v65;
      v47 = v66;
      v48 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v68, &lazy cache variable for type metadata for CombinedAnimationState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
      }

      v50 = v48[2];
      v49 = v48[3];
      if (v50 >= v49 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v48);
      }

      v48[2] = v50 + 1;
      v51 = &v48[4 * v50];
      v51[4] = v44;
      *(v51 + 40) = v45;
      *(v51 + 11) = v46;
      *(v51 + 48) = v47;
      v51[7] = v43;
      v67 = v42;
      v63 = v48;
      specialized Dictionary.subscript.setter(&v63, v42);
      v52 = v68;

      *a2 = v52;

      v53 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v55, v57, a9);
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *v56 = v54;
    }
  }
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, double *a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = *a5;
  v14 = *(a5 + 8);
  v13 = *(a5 + 16);
  v79 = *(a5 + 24);
  v15 = *a3;
  v17 = a3[1];
  v16 = a3[2];
  v18 = a3[3];
  type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>();
  if (v19 != MEMORY[0x1E69E63B0])
  {
    v20 = v19;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v20 == v21)
    {
      *&v85 = v15;
      v36 = *&v85;
      *&v85 = v12;
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v36, v17, v16, v18, a6, *&v85, v14, v13, v79);
    }

    v22 = *a1;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
    v23 = swift_dynamicCastClass();
    v78 = a1;
    if (v23)
    {
      v24 = v16;
      v25 = *(v23 + 16);

      v27 = a3[4];
      v26 = a3[5];
      v28 = *(a3 + 48);
      if (*(a5 + 48))
      {
        v29 = *&v17;
        v30 = *&v16;
        v31 = v27;
        v32 = v26;
        v33 = v12;
      }

      else
      {
        v29 = *&v14;
        v30 = *&v13;
        v31 = *(a5 + 32);
        v32 = *(a5 + 40);
        v33 = v12;
        if (v28)
        {
          v28 = 0;
          v18 = v79;
        }

        else
        {
          v28 = 0;
          v18 = v18 + v79;
          v31 = v27 + v31;
          v32 = v26 + v32;
          v29 = COERCE_UNSIGNED_INT(*&v17 + *&v29) | (COERCE_UNSIGNED_INT(*(&v17 + 1) + *(&v29 + 1)) << 32);
          v30 = COERCE_UNSIGNED_INT(*&v24 + *&v30) | (COERCE_UNSIGNED_INT(*(&v24 + 1) + *(&v30 + 1)) << 32);
        }
      }

      v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      LOBYTE(v84) = v28;
      v55 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
      v56 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
      }

      v58 = v55[2];
      v57 = v55[3];
      if (v58 >= v57 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v55);
      }

      v55[2] = v58 + 1;
      v59 = &v55[8 * v58];
      *(v59 + 8) = v33 + v15;
      v59[5] = v29;
      v59[6] = v30;
      *(v59 + 7) = v18;
      *(v59 + 8) = v31;
      *(v59 + 9) = v32;
      *(v59 + 80) = v56;
      v60 = *(v82 + 3);
      *(v59 + 81) = v82[0];
      *(v59 + 21) = v60;
      v59[11] = v54;
      type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>();
      *(&v86 + 1) = v61;
      *&v85 = v55;
      specialized Dictionary.subscript.setter(&v85, v61);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v63 = *(v25 + 2);
      v62 = *(v25 + 3);
      if (v63 >= v62 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v25);
      }

      *(v25 + 2) = v63 + 1;
      v64 = &v25[16 * v63];
      *(v64 + 4) = a4;
      *(v64 + 5) = a6;
      result = swift_allocObject();
      *(result + 16) = v25;
      *v78 = result;
      return result;
    }

    v84 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v37 = *a2;
    v38 = *(a3 + 1);
    v85 = *a3;
    v86 = v38;
    v87 = *(a3 + 2);
    LOBYTE(v88) = *(a3 + 48);

    v39 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v84, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
    }

    v41 = v39[2];
    v40 = v39[3];
    if (v41 >= v40 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
    }

    v39[2] = v41 + 1;
    v42 = &v39[8 * v41];
    v43 = v85;
    v44 = v87;
    v45 = v88;
    *(v42 + 3) = v86;
    *(v42 + 4) = v44;
    *(v42 + 2) = v43;
    v42[10] = v45;
    v42[11] = v37;
    type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>();
    v47 = v46;
    v83 = v46;
    v82[0] = v39;
    specialized Dictionary.subscript.setter(v82, v46);
    v48 = *(a3 + 48);
    v49 = *(a3 + 1);
    if (*(a5 + 48))
    {
      v50 = a3[3];
      v51 = a3[4];
      v52 = a3[5];
    }

    else
    {
      v53 = *(a5 + 8);
      v50 = *(a5 + 24);
      v51 = *(a5 + 32);
      v52 = *(a5 + 40);
      if (a3[6])
      {
        v80 = *(a5 + 8);
        v48 = 0;
LABEL_32:
        v67 = *a3;
        v68 = *a5;
        v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v70 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v84, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
        }

        v71 = v67 + v68;
        v73 = v70[2];
        v72 = v70[3];
        if (v73 >= v72 >> 1)
        {
          v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v70);
        }

        v70[2] = v73 + 1;
        v74 = &v70[8 * v73];
        *(v74 + 8) = v71;
        *(v74 + 5) = v80;
        *(v74 + 7) = v50;
        *(v74 + 8) = v51;
        *(v74 + 9) = v52;
        *(v74 + 80) = v48;
        *(v74 + 81) = *v81;
        *(v74 + 21) = *&v81[3];
        v74[11] = v69;
        v83 = v47;
        v82[0] = v70;
        specialized Dictionary.subscript.setter(v82, v47);
        v75 = v84;

        *a2 = v75;

        v76 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v22, a4, a6);
        v77 = swift_allocObject();
        *(v77 + 16) = v76;
        *v78 = v77;
      }

      v48 = 0;
      v50 = a3[3] + v50;
      v51 = a3[4] + v51;
      v52 = a3[5] + v52;
      v65 = vadd_f32(vmovn_s64(v49), vmovn_s64(v53));
      v66.i64[0] = v65.u32[0];
      v66.i64[1] = v65.u32[1];
      v49 = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v49, 0x20uLL), vshrn_n_s64(v53, 0x20uLL)), 0x20uLL), v66);
    }

    v80 = v49;
    goto LABEL_32;
  }

  *&v85 = v15;
  v34 = *&v85;
  *&v85 = v12;

  return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v34, a6, *&v85);
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, double *a3, uint64_t a4, double *a5, double a6)
{
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v12 == &type metadata for ConcentricRectangle.AnimatableData)
  {
    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, *a3, a3[1], a3[2], a3[3], a6, *a5, a5[1], a5[2], a5[3]);
  }

  v13 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(v14 + 16);

    v16 = *(a3 + 5);
    v159 = *(a3 + 4);
    v160 = v16;
    v17 = *(a3 + 7);
    v161 = *(a3 + 6);
    v162 = v17;
    v18 = *(a3 + 1);
    v155 = *a3;
    v156 = v18;
    v19 = *(a3 + 3);
    v157 = *(a3 + 2);
    v158 = v19;
    v20 = *(a3 + 13);
    v133 = *(a3 + 12);
    v134 = v20;
    v21 = *(a3 + 15);
    v135 = *(a3 + 14);
    v136 = v21;
    v22 = *(a3 + 9);
    v129 = *(a3 + 8);
    v130 = v22;
    v23 = *(a3 + 11);
    v131 = *(a3 + 10);
    v132 = v23;
    v24 = *(a5 + 5);
    v141 = *(a5 + 4);
    v142 = v24;
    v25 = *(a5 + 7);
    v143 = *(a5 + 6);
    v144 = v25;
    v26 = *(a5 + 1);
    v137 = *a5;
    v138 = v26;
    v27 = *(a5 + 3);
    v139 = *(a5 + 2);
    v140 = v27;
    v28 = *(a5 + 13);
    v125 = *(a5 + 12);
    v126 = v28;
    v29 = *(a5 + 15);
    v127 = *(a5 + 14);
    v128 = v29;
    v30 = *(a5 + 9);
    v121 = *(a5 + 8);
    v122 = v30;
    v31 = *(a5 + 11);
    v123 = *(a5 + 10);
    v124 = v31;
    static ConcentricRectangle.Uniformity.+ infix(_:_:)(&v155);
    static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(v119, &v129, &v121);
    v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v33 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
    }

    v33[2] = v35 + 1;
    v36 = &v33[33 * v35];
    *(v36 + 4) = v113;
    *(v36 + 5) = v114;
    *(v36 + 2) = v111;
    *(v36 + 3) = v112;
    *(v36 + 8) = v117;
    *(v36 + 9) = v118;
    *(v36 + 6) = v115;
    *(v36 + 7) = v116;
    v37 = v119[0];
    v38 = v119[1];
    v39 = v119[3];
    *(v36 + 12) = v119[2];
    *(v36 + 13) = v39;
    *(v36 + 10) = v37;
    *(v36 + 11) = v38;
    v40 = v119[4];
    v41 = v119[5];
    v42 = v119[7];
    *(v36 + 16) = v119[6];
    *(v36 + 17) = v42;
    *(v36 + 14) = v40;
    *(v36 + 15) = v41;
    v36[36] = v32;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for CombinedAnimationState);
    *(&v156 + 1) = v43;
    *&v155 = v33;
    specialized Dictionary.subscript.setter(&v155, v43);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v45 = *(v15 + 2);
    v44 = *(v15 + 3);
    if (v45 >= v44 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v15);
    }

    *(v15 + 2) = v45 + 1;
    v46 = &v15[16 * v45];
    *(v46 + 4) = a4;
    *(v46 + 5) = a6;
    result = swift_allocObject();
    *(result + 16) = v15;
    *a1 = result;
  }

  else
  {
    v154 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v48 = *a2;
    v49 = *(a3 + 13);
    v167 = *(a3 + 12);
    v168 = v49;
    v50 = *(a3 + 15);
    v169 = *(a3 + 14);
    v170 = v50;
    v51 = *(a3 + 9);
    v163 = *(a3 + 8);
    v164 = v51;
    v52 = *(a3 + 11);
    v165 = *(a3 + 10);
    v166 = v52;
    v53 = *(a3 + 5);
    v159 = *(a3 + 4);
    v160 = v53;
    v54 = *(a3 + 7);
    v161 = *(a3 + 6);
    v162 = v54;
    v55 = *(a3 + 1);
    v155 = *a3;
    v156 = v55;
    v56 = *(a3 + 3);
    v157 = *(a3 + 2);
    v158 = v56;

    v57 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v154, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
    }

    v59 = v57[2];
    v58 = v57[3];
    if (v59 >= v58 >> 1)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v57);
    }

    v57[2] = v59 + 1;
    v60 = &v57[33 * v59];
    v61 = v155;
    v62 = v156;
    v63 = v158;
    *(v60 + 4) = v157;
    *(v60 + 5) = v63;
    *(v60 + 2) = v61;
    *(v60 + 3) = v62;
    v64 = v159;
    v65 = v160;
    v66 = v162;
    *(v60 + 8) = v161;
    *(v60 + 9) = v66;
    *(v60 + 6) = v64;
    *(v60 + 7) = v65;
    v67 = v163;
    v68 = v164;
    v69 = v166;
    *(v60 + 12) = v165;
    *(v60 + 13) = v69;
    *(v60 + 10) = v67;
    *(v60 + 11) = v68;
    v70 = v167;
    v71 = v168;
    v72 = v170;
    *(v60 + 16) = v169;
    *(v60 + 17) = v72;
    *(v60 + 14) = v70;
    *(v60 + 15) = v71;
    v60[36] = v48;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for CombinedAnimationState);
    v74 = v73;
    *(&v138 + 1) = v73;
    *&v137 = v57;
    specialized Dictionary.subscript.setter(&v137, v73);
    v75 = *(a3 + 5);
    v141 = *(a3 + 4);
    v142 = v75;
    v76 = *(a3 + 7);
    v143 = *(a3 + 6);
    v144 = v76;
    v77 = *(a3 + 1);
    v137 = *a3;
    v138 = v77;
    v78 = *(a3 + 3);
    v139 = *(a3 + 2);
    v140 = v78;
    v79 = *(a3 + 13);
    v125 = *(a3 + 12);
    v126 = v79;
    v80 = *(a3 + 15);
    v127 = *(a3 + 14);
    v128 = v80;
    v81 = *(a3 + 9);
    v121 = *(a3 + 8);
    v122 = v81;
    v82 = *(a3 + 11);
    v123 = *(a3 + 10);
    v124 = v82;
    v83 = *(a5 + 5);
    v133 = *(a5 + 4);
    v134 = v83;
    v84 = *(a5 + 7);
    v135 = *(a5 + 6);
    v136 = v84;
    v85 = *(a5 + 1);
    v129 = *a5;
    v130 = v85;
    v86 = *(a5 + 3);
    v131 = *(a5 + 2);
    v132 = v86;
    v87 = *(a5 + 13);
    v120[4] = *(a5 + 12);
    v120[5] = v87;
    v88 = *(a5 + 15);
    v120[6] = *(a5 + 14);
    v120[7] = v88;
    v89 = *(a5 + 9);
    v120[0] = *(a5 + 8);
    v120[1] = v89;
    v90 = *(a5 + 11);
    v120[2] = *(a5 + 10);
    v120[3] = v90;
    static ConcentricRectangle.Uniformity.+ infix(_:_:)(&v137);
    static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(v153, &v121, v120);
    v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v92 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v154, &lazy cache variable for type metadata for CombinedAnimationState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92[2] + 1, 1, v92);
    }

    v94 = v92[2];
    v93 = v92[3];
    if (v94 >= v93 >> 1)
    {
      v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v92);
    }

    v92[2] = v94 + 1;
    v95 = &v92[33 * v94];
    v96 = v145;
    v97 = v146;
    v98 = v148;
    *(v95 + 4) = v147;
    *(v95 + 5) = v98;
    *(v95 + 2) = v96;
    *(v95 + 3) = v97;
    v99 = v149;
    v100 = v150;
    v101 = v152;
    *(v95 + 8) = v151;
    *(v95 + 9) = v101;
    *(v95 + 6) = v99;
    *(v95 + 7) = v100;
    v102 = v153[0];
    v103 = v153[1];
    v104 = v153[3];
    *(v95 + 12) = v153[2];
    *(v95 + 13) = v104;
    *(v95 + 10) = v102;
    *(v95 + 11) = v103;
    v105 = v153[4];
    v106 = v153[5];
    v107 = v153[7];
    *(v95 + 16) = v153[6];
    *(v95 + 17) = v107;
    *(v95 + 14) = v105;
    *(v95 + 15) = v106;
    v95[36] = v91;
    *(&v138 + 1) = v74;
    *&v137 = v92;
    specialized Dictionary.subscript.setter(&v137, v74);
    v108 = v154;

    *a2 = v108;

    v109 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v13, a4, a6);
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *a1 = v110;
  }

  return result;
}

{
  v12 = *a5;
  v13 = a5[1];
  v15 = a5[2];
  v14 = a5[3];
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[2];
  v69 = a3[3];
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>();
  if (v19 == MEMORY[0x1E69E63B0])
  {

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v16, a6, v12);
  }

  else
  {
    v20 = v19;
    v68 = a6;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v20 == v21)
    {
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v16, v17, v18, v69, a6, v12, v13, v15, v14);
    }

    else
    {
      v22 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = *(v23 + 16);

        v25 = a3[4];
        v66 = a5[4];
        v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v27 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
        }

        v28 = v12 + v16;
        v29 = v13 + v17;
        v30 = v15 + v18;
        v31 = v14 + v69;
        v32 = v25 + v66;
        v34 = v27[2];
        v33 = v27[3];
        if (v34 >= v33 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v27);
        }

        v27[2] = v34 + 1;
        v35 = &v27[6 * v34];
        v35[4] = v28;
        v35[5] = v29;
        v35[6] = v30;
        v35[7] = v31;
        v35[8] = v32;
        *(v35 + 9) = v26;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>();
        v73 = v36;
        v72[0] = v27;
        specialized Dictionary.subscript.setter(v72, v36);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
        }

        v38 = *(v24 + 2);
        v37 = *(v24 + 3);
        if (v38 >= v37 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v24);
        }

        *(v24 + 2) = v38 + 1;
        v39 = &v24[16 * v38];
        *(v39 + 4) = a4;
        *(v39 + 5) = v68;
        result = swift_allocObject();
        *(result + 16) = v24;
        *a1 = result;
      }

      else
      {
        v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v41 = *a2;
        v42 = *(a3 + 4);

        v43 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v74, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
        }

        v43[2] = v45 + 1;
        v46 = &v43[6 * v45];
        v46[4] = v16;
        v46[5] = v17;
        v46[6] = v18;
        v46[7] = v69;
        *(v46 + 8) = v42;
        *(v46 + 9) = v41;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>();
        v48 = v47;
        v73 = v47;
        v72[0] = v43;
        specialized Dictionary.subscript.setter(v72, v47);
        v49 = a3[4];
        v70 = *a3;
        v64 = *a5;
        v65 = *(a3 + 2);
        v63 = *(a5 + 2);
        v50 = a5[4];
        v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v52 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v74, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2] + 1, 1, v52);
        }

        v53 = vaddq_f64(v65, v63);
        v54 = vaddq_f64(v70, v64);
        v55 = v49 + v50;
        v57 = v52[2];
        v56 = v52[3];
        if (v57 >= v56 >> 1)
        {
          v71 = v54;
          v67 = v53;
          v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v52);
          v53 = v67;
          v54 = v71;
          v52 = v62;
        }

        v52[2] = v57 + 1;
        v58 = &v52[6 * v57];
        v58[2] = v54;
        v58[3] = v53;
        v58[4].f64[0] = v55;
        *&v58[4].f64[1] = v51;
        v73 = v48;
        v72[0] = v52;
        specialized Dictionary.subscript.setter(v72, v48);
        v59 = v74;

        *a2 = v59;

        v60 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v22, a4, v68);
        v61 = swift_allocObject();
        *(v61 + 16) = v60;
        *a1 = v61;
      }
    }
  }

  return result;
}

{
  v12 = *a5;
  v261 = a5[1];
  v14 = a5[2];
  v13 = a5[3];
  v15 = *a3;
  v16 = a3[1];
  v17 = a3[2];
  v18 = a3[3];
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>();
  if (v19 == MEMORY[0x1E69E63B0])
  {

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, a6, v12);
  }

  else
  {
    v20 = v19;
    v256 = a6;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v20 == v21)
    {
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v15, v16, v17, v18, v256, v12, v261, v14, v13);
    }

    else
    {
      v253 = a1;
      v22 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v251 = v23;
      v24 = swift_dynamicCastClass();
      v252 = a4;
      v250 = a2;
      if (v24)
      {
        v249 = *(v24 + 16);

        v25 = *(a3 + 3);
        v277 = *(a3 + 2);
        v278 = v25;
        v26 = *(a3 + 5);
        v279 = *(a3 + 4);
        v280 = v26;
        v27 = *(a3 + 1);
        v275 = *a3;
        v276 = v27;
        v28 = *(a5 + 3);
        v271 = *(a5 + 2);
        v272 = v28;
        v29 = *(a5 + 5);
        v273 = *(a5 + 4);
        v274 = v29;
        v30 = *(a5 + 1);
        v269 = *a5;
        v270 = v30;
        v31 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v248 = &v246;
        v32 = MEMORY[0x1E69E7DE0];
        v33 = *(MEMORY[0x1E69E7DE0] - 8);
        v34 = v33[8];
        v35 = MEMORY[0x1EEE9AC00](v31);
        v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
        v37 = v33[2];
        v38 = v37(&v246 - v36, &v275, v32, v35);
        v258 = v37;
        v247 = &v246;
        v39 = MEMORY[0x1EEE9AC00](v38);
        v40(&v246 - v36, &v269, v32, v39);
        v261 = *(v31 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v41 = v33[1];
        v41(&v246 - v36, v32);
        v42 = (v41)(&v246 - v36, v32);
        v248 = &v246;
        *&v294 = &v281;
        v246 = &v282;
        v257 = v34;
        v43 = MEMORY[0x1EEE9AC00](v42);
        v44 = v258;
        v45 = (v258)(&v246 - v36, &v275 + 8, v32, v43);
        v247 = &v246;
        v46 = MEMORY[0x1EEE9AC00](v45);
        v44(&v246 - v36, &v269 + 8, v32, v46);
        v47 = v246;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v260 = (v33 + 1);
        v41(&v246 - v36, v32);
        v48 = (v41)(&v246 - v36, v32);
        v248 = &v246;
        *(&v294 + 1) = v47;
        v49 = MEMORY[0x1EEE9AC00](v48);
        v259 = v36;
        v50 = v258;
        v51 = (v258)(&v246 - v36, &v276, v32, v49);
        v247 = &v246;
        v52 = MEMORY[0x1EEE9AC00](v51);
        v50(&v246 - v36, &v270, v32, v52);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v41(&v246 - v36, v32);
        v53 = (v41)(&v246 - v36, v32);
        v248 = &v246;
        *&v295 = &v283;
        v246 = &v284;
        v54 = MEMORY[0x1EEE9AC00](v53);
        v55 = v258;
        v56 = v259;
        v57 = &v246 - v259;
        v58 = (v258)(&v246 - v259, &v276 + 8, v32, v54);
        v247 = &v246;
        v59 = MEMORY[0x1EEE9AC00](v58);
        v254 = v33 + 2;
        v55(&v246 - v56, &v270 + 8, v32, v59);
        v60 = v246;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v41(&v246 - v56, v32);
        v61 = (v41)(v57, v32);
        v248 = &v246;
        *(&v295 + 1) = v60;
        v246 = &v285;
        v62 = MEMORY[0x1EEE9AC00](v61);
        v63 = v258;
        v64 = v259;
        v65 = (v258)(&v246 - v259, &v277, v32, v62);
        v247 = &v246;
        v66 = MEMORY[0x1EEE9AC00](v65);
        v63(&v246 - v64, &v271, v32, v66);
        v67 = v246;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v255 = v41;
        v41(&v246 - v64, v32);
        v68 = (v41)(&v246 - v64, v32);
        v248 = &v246;
        *&v296 = v67;
        v69 = MEMORY[0x1EEE9AC00](v68);
        v70 = v258;
        v71 = (v258)(&v246 - v64, &v277 + 8, v32, v69);
        v247 = &v246;
        v72 = MEMORY[0x1EEE9AC00](v71);
        v70(&v246 - v64, &v271 + 8, v32, v72);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v73 = v255;
        v255(&v246 - v64, v32);
        v74 = v73(&v246 - v64, v32);
        v248 = &v246;
        *(&v296 + 1) = &v286;
        v75 = MEMORY[0x1EEE9AC00](v74);
        v76 = &v246 - v64;
        v77 = (v70)(&v246 - v64, &v278, v32, v75);
        v247 = &v246;
        v78 = MEMORY[0x1EEE9AC00](v77);
        v70(&v246 - v64, &v272, v32, v78);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v79 = &v246 - v64;
        v80 = v255;
        v255(v79, v32);
        v81 = v80(v76, v32);
        v248 = &v246;
        *&v297 = &v287;
        v82 = MEMORY[0x1EEE9AC00](v81);
        v83 = v259;
        v84 = &v246 - v259;
        v85 = (v70)(&v246 - v259, &v278 + 8, v32, v82);
        v247 = &v246;
        v86 = MEMORY[0x1EEE9AC00](v85);
        v70(&v246 - v83, &v272 + 8, v32, v86);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v80(&v246 - v83, v32);
        v87 = v80(v84, v32);
        v248 = &v246;
        *(&v297 + 1) = &v288;
        v88 = MEMORY[0x1EEE9AC00](v87);
        v89 = v259;
        v90 = &v246 - v259;
        v91 = (v70)(&v246 - v259, &v279, v32, v88);
        v247 = &v246;
        v92 = MEMORY[0x1EEE9AC00](v91);
        v70(&v246 - v89, &v273, v32, v92);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v93 = &v246 - v89;
        v94 = v255;
        v255(v93, v32);
        v95 = v94(v90, v32);
        v248 = &v246;
        *&v298 = &v289;
        v96 = MEMORY[0x1EEE9AC00](v95);
        v97 = v259;
        v98 = (v70)(&v246 - v259, &v279 + 8, v32, v96);
        v247 = &v246;
        v99 = MEMORY[0x1EEE9AC00](v98);
        v70(&v246 - v97, &v273 + 8, v32, v99);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v94(&v246 - v97, v32);
        v100 = v94(&v246 - v97, v32);
        v248 = &v246;
        *(&v298 + 1) = &v290;
        v101 = MEMORY[0x1EEE9AC00](v100);
        v102 = v259;
        v103 = (v70)(&v246 - v259, &v280, v32, v101);
        v247 = &v246;
        v104 = MEMORY[0x1EEE9AC00](v103);
        v70(&v246 - v102, &v274, v32, v104);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v94(&v246 - v102, v32);
        v105 = v94(&v246 - v102, v32);
        v248 = &v246;
        *&v299 = &v291;
        v106 = MEMORY[0x1EEE9AC00](v105);
        v108 = v258;
        v107 = v259;
        v109 = (v258)(&v246 - v259, &v280 + 8, v32, v106);
        v247 = &v246;
        v110 = MEMORY[0x1EEE9AC00](v109);
        v108(&v246 - v107, &v274 + 8, v32, v110);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v94(&v246 - v107, v32);
        v94(&v246 - v107, v32);
        v111 = v250;
        *(&v299 + 1) = &v292;
        _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v294, &v301);
        v112 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v113 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(*v111, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v256;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113[2] + 1, 1, v113);
        }

        v117 = v113[2];
        v116 = v113[3];
        v118 = v252;
        if (v117 >= v116 >> 1)
        {
          v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1, v113);
        }

        v113[2] = v117 + 1;
        v119 = &v113[13 * v117];
        v120 = v302;
        *(v119 + 2) = v301;
        *(v119 + 3) = v120;
        v121 = v303;
        v122 = v304;
        v123 = v306;
        *(v119 + 6) = v305;
        *(v119 + 7) = v123;
        *(v119 + 4) = v121;
        *(v119 + 5) = v122;
        v119[16] = v112;
        type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
        *(&v264 + 1) = v124;
        *&v263 = v113;
        specialized Dictionary.subscript.setter(&v263, v124);

        v125 = v249;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v125 + 2) + 1, 1, v125);
        }

        v127 = *(v125 + 2);
        v126 = *(v125 + 3);
        if (v127 >= v126 >> 1)
        {
          v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v125);
        }

        *(v125 + 2) = v127 + 1;
        v128 = &v125[16 * v127];
        *(v128 + 4) = v118;
        *(v128 + 5) = v115;
        result = swift_allocObject();
        *(result + 16) = v125;
        *v253 = result;
      }

      else
      {
        v254 = v22;
        v300 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v130 = *a2;
        v131 = *(a3 + 3);
        v303 = *(a3 + 2);
        v304 = v131;
        v132 = *(a3 + 5);
        v305 = *(a3 + 4);
        v306 = v132;
        v133 = *(a3 + 1);
        v301 = *a3;
        v302 = v133;

        v134 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v300, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
        v135 = v256;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v134[2] + 1, 1, v134);
        }

        v137 = v134[2];
        v136 = v134[3];
        if (v137 >= v136 >> 1)
        {
          v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v137 + 1, 1, v134);
        }

        v134[2] = v137 + 1;
        v138 = &v134[13 * v137];
        v139 = v302;
        *(v138 + 2) = v301;
        *(v138 + 3) = v139;
        v140 = v303;
        v141 = v304;
        v142 = v306;
        *(v138 + 6) = v305;
        *(v138 + 7) = v142;
        *(v138 + 4) = v140;
        *(v138 + 5) = v141;
        v138[16] = v130;
        type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
        v293[3] = v143;
        v293[0] = v134;
        v249 = v143;
        specialized Dictionary.subscript.setter(v293, v143);
        v144 = *(a3 + 3);
        v271 = *(a3 + 2);
        v272 = v144;
        v145 = *(a3 + 5);
        v273 = *(a3 + 4);
        v274 = v145;
        v146 = *(a3 + 1);
        v269 = *a3;
        v270 = v146;
        v147 = *(a5 + 3);
        v265 = *(a5 + 2);
        v266 = v147;
        v148 = *(a5 + 5);
        v267 = *(a5 + 4);
        v268 = v148;
        v149 = *(a5 + 1);
        v263 = *a5;
        v264 = v149;
        v150 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v248 = &v246;
        v151 = MEMORY[0x1E69E7DE0];
        v152 = *(MEMORY[0x1E69E7DE0] - 8);
        v153 = *(v152 + 8);
        v154 = MEMORY[0x1EEE9AC00](v150);
        v261 = v153;
        v155 = (*&v153 + 15) & 0xFFFFFFFFFFFFFFF0;
        v156 = v152[2];
        v157 = v156(&v246 - v155, &v269, v151, v154);
        v158 = MEMORY[0x1EEE9AC00](v157);
        v156(&v246 - v155, &v263, v151, v158);
        v259 = *(v150 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v159 = v152[1];
        v159(&v246 - v155, v151);
        v160 = (v159)(&v246 - v155, v151);
        v248 = &v246;
        v281 = &v275;
        v161 = MEMORY[0x1EEE9AC00](v160);
        v260 = v155;
        v162 = v156(&v246 - v155, (&v269 + 8), v151, v161);
        v247 = &v246;
        v163 = MEMORY[0x1EEE9AC00](v162);
        v257 = v156;
        v156(&v246 - v155, (&v263 + 8), v151, v163);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v159(&v246 - v155, v151);
        v164 = (v159)(&v246 - v155, v151);
        v248 = &v246;
        v282 = &v275 + 8;
        v246 = &v276;
        v165 = MEMORY[0x1EEE9AC00](v164);
        v166 = v260;
        v167 = (&v246 - v260);
        v168 = v156((&v246 - v260), &v270, v151, v165);
        v247 = &v246;
        v169 = MEMORY[0x1EEE9AC00](v168);
        v170 = (&v246 - v166);
        v156((&v246 - v166), &v264, v151, v169);
        v171 = v246;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v258 = v159;
        v159(v170, v151);
        v172 = (v159)(v167, v151);
        v248 = &v246;
        v283 = v171;
        v173 = MEMORY[0x1EEE9AC00](v172);
        v174 = v260;
        v175 = (&v246 - v260);
        v176 = v257;
        v177 = (v257)(&v246 - v260, &v270 + 8, v151, v173);
        v247 = &v246;
        v178 = MEMORY[0x1EEE9AC00](v177);
        v179 = (&v246 - v174);
        v176(v179, &v264 + 8, v151, v178);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v180 = v179;
        v181 = v258;
        (v258)(v180, v151);
        v182 = v181(v175, v151);
        v248 = &v246;
        v284 = &v276 + 8;
        v183 = MEMORY[0x1EEE9AC00](v182);
        v184 = v260;
        v185 = (v176)(&v246 - v260, &v271, v151, v183);
        v247 = &v246;
        v186 = MEMORY[0x1EEE9AC00](v185);
        v176((&v246 - v184), &v265, v151, v186);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v187 = v258;
        (v258)(&v246 - v184, v151);
        v188 = v187(&v246 - v184, v151);
        v189 = (v152 + 1);
        v248 = &v246;
        v285 = &v277;
        v190 = MEMORY[0x1EEE9AC00](v188);
        v191 = v260;
        v192 = v257;
        v193 = (v257)(&v246 - v260, &v271 + 8, v151, v190);
        v247 = &v246;
        v194 = MEMORY[0x1EEE9AC00](v193);
        v192(&v246 - v191, &v265 + 8, v151, v194);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v195 = v258;
        v255 = v189;
        (v258)(&v246 - v191, v151);
        v196 = v195(&v246 - v191, v151);
        v248 = &v246;
        v286 = &v277 + 8;
        v197 = MEMORY[0x1EEE9AC00](v196);
        v198 = v257;
        v199 = (v257)(&v246 - v191, &v272, v151, v197);
        v247 = &v246;
        v200 = MEMORY[0x1EEE9AC00](v199);
        v198(&v246 - v191, &v266, v151, v200);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v201 = v258;
        (v258)(&v246 - v191, v151);
        v202 = v201(&v246 - v191, v151);
        v248 = &v246;
        v287 = &v278;
        v203 = MEMORY[0x1EEE9AC00](v202);
        v204 = (v198)(&v246 - v191, &v272 + 8, v151, v203);
        v247 = &v246;
        v205 = MEMORY[0x1EEE9AC00](v204);
        v198(&v246 - v191, (&v266 + 8), v151, v205);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v201(&v246 - v191, v151);
        v206 = v201(&v246 - v191, v151);
        v248 = &v246;
        v288 = &v278 + 8;
        v207 = MEMORY[0x1EEE9AC00](v206);
        v208 = v260;
        v209 = (&v246 - v260);
        v210 = (v198)(&v246 - v260, &v273, v151, v207);
        v247 = &v246;
        v211 = MEMORY[0x1EEE9AC00](v210);
        v198(&v246 - v208, &v267, v151, v211);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v212 = (&v246 - v208);
        v213 = v258;
        (v258)(v212, v151);
        v214 = v213(v209, v151);
        v248 = &v246;
        v289 = &v279;
        v215 = MEMORY[0x1EEE9AC00](v214);
        v216 = v260;
        v217 = (v198)(&v246 - v260, &v273 + 8, v151, v215);
        v247 = &v246;
        v218 = MEMORY[0x1EEE9AC00](v217);
        v198(&v246 - v216, (&v267 + 8), v151, v218);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v213((&v246 - v216), v151);
        v219 = v213((&v246 - v216), v151);
        v248 = &v246;
        v290 = &v279 + 8;
        v220 = MEMORY[0x1EEE9AC00](v219);
        v221 = v257;
        v222 = (v257)(&v246 - v216, &v274, v151, v220);
        v247 = &v246;
        v223 = MEMORY[0x1EEE9AC00](v222);
        v221(&v246 - v216, &v268, v151, v223);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v224 = v258;
        (v258)(&v246 - v216, v151);
        v225 = v224(&v246 - v216, v151);
        v248 = &v246;
        v291 = &v280;
        v226 = MEMORY[0x1EEE9AC00](v225);
        v227 = v260;
        v228 = (&v246 - v260);
        v229 = (v221)(&v246 - v260, &v274 + 8, v151, v226);
        v247 = &v246;
        v230 = MEMORY[0x1EEE9AC00](v229);
        v231 = (&v246 - v227);
        v221(v231, (&v268 + 8), v151, v230);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v224(v231, v151);
        v224(v228, v151);
        v292 = &v280 + 8;
        _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v281, &v294);
        v232 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v233 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v300, type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v233[2] + 1, 1, v233);
        }

        v234 = v250;
        v236 = v233[2];
        v235 = v233[3];
        if (v236 >= v235 >> 1)
        {
          v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v235 > 1), v236 + 1, 1, v233);
        }

        v233[2] = v236 + 1;
        v237 = &v233[13 * v236];
        v238 = v295;
        *(v237 + 2) = v294;
        *(v237 + 3) = v238;
        v239 = v296;
        v240 = v297;
        v241 = v299;
        *(v237 + 6) = v298;
        *(v237 + 7) = v241;
        *(v237 + 4) = v239;
        *(v237 + 5) = v240;
        v237[16] = v232;
        v262[3] = v249;
        v262[0] = v233;
        specialized Dictionary.subscript.setter(v262, v249);
        v242 = v300;

        *v234 = v242;
        v243 = v252;

        v244 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v254, v243, v135);
        v245 = swift_allocObject();
        *(v245 + 16) = v244;
        *v253 = v245;
      }
    }
  }

  return result;
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, float a4, float a5, float a6, float a7, double a8, float a9, float a10, float a11, float a12)
{
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
  if (v27 == MEMORY[0x1E69E63B0])
  {
    v65[0] = __PAIR64__(LODWORD(a10), LODWORD(a9));

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a3, COERCE_DOUBLE(__PAIR64__(LODWORD(a5), LODWORD(a4))), a8, COERCE_DOUBLE(__PAIR64__(LODWORD(a10), LODWORD(a9))));
  }

  else
  {
    v28 = v27;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v28 == v29)
    {
      __break(1u);
    }

    else
    {
      v30 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v32 = *(v31 + 16);

        v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v34 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
        }

        v35 = a4 + a9;
        v36 = a5 + a10;
        v38 = v34[2];
        v37 = v34[3];
        if (v38 >= v37 >> 1)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v34);
        }

        v34[2] = v38 + 1;
        v39 = &v34[3 * v38];
        v39[8] = v35;
        v39[9] = v36;
        v39[10] = a6 + a11;
        v39[11] = a7 + a12;
        *(v39 + 6) = v33;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
        v66 = v40;
        v65[0] = v34;
        specialized Dictionary.subscript.setter(v65, v40);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
        }

        v42 = *(v32 + 2);
        v41 = *(v32 + 3);
        if (v42 >= v41 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v32);
        }

        *(v32 + 2) = v42 + 1;
        v43 = &v32[16 * v42];
        *(v43 + 4) = a3;
        *(v43 + 5) = a8;
        v44 = swift_allocObject();
        *(v44 + 16) = v32;
        *a1 = v44;
      }

      else
      {
        v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v45 = *a2;

        v46 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v67, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
        }

        v48 = v46[2];
        v47 = v46[3];
        if (v48 >= v47 >> 1)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v46);
        }

        v46[2] = v48 + 1;
        v49 = &v46[3 * v48];
        v49[8] = a4;
        v49[9] = a5;
        v49[10] = a6;
        v49[11] = a7;
        *(v49 + 6) = v45;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
        v51 = v50;
        v66 = v50;
        v65[0] = v46;
        specialized Dictionary.subscript.setter(v65, v50);
        v52 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v53 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v67, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53[2] + 1, 1, v53);
        }

        v54 = a4 + a9;
        v55 = a5 + a10;
        v57 = v53[2];
        v56 = v53[3];
        v58 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v53);
          v58 = v57 + 1;
          v53 = v63;
        }

        v53[2] = v58;
        v59 = &v53[3 * v57];
        v59[8] = v54;
        v59[9] = v55;
        v59[10] = a6 + a11;
        v59[11] = a7 + a12;
        *(v59 + 6) = v52;
        v66 = v51;
        v65[0] = v53;
        specialized Dictionary.subscript.setter(v65, v51);
        v60 = v67;

        *a2 = v60;

        v61 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v30, a3, a8);
        v62 = swift_allocObject();
        *(v62 + 16) = v61;
        *a1 = v62;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
  if (v12 == MEMORY[0x1E69E63B0])
  {
    v32 = *a3;
    v33 = *a5;

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v32, a6, v33);
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      __break(1u);
    }

    else
    {
      v15 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);

        v18 = *(a3 + 16);
        v58 = *a5;
        v60 = *a3;
        v19 = *(a5 + 16);
        v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v21 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
        }

        v22 = vaddq_f32(v60, v58);
        v23 = v18 + v19;
        v25 = v21[2];
        v24 = v21[3];
        if (v25 >= v24 >> 1)
        {
          v62 = v22;
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
          v22 = v62;
          v21 = v56;
        }

        v21[2] = v25 + 1;
        v26 = &v21[4 * v25];
        v26[2] = v22;
        v26[3].f32[0] = v23;
        v26[3].i64[1] = v20;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
        v65 = v27;
        v64[0] = v21;
        specialized Dictionary.subscript.setter(v64, v27);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        v30 = &v17[16 * v29];
        *(v30 + 4) = a4;
        *(v30 + 5) = a6;
        v31 = swift_allocObject();
        *(v31 + 16) = v17;
        *a1 = v31;
      }

      else
      {
        v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v34 = *a2;
        v35 = *a3;
        v36 = *(a3 + 8);
        v37 = *(a3 + 16);

        v38 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
        }

        v38[2] = v40 + 1;
        v41 = &v38[4 * v40];
        v41[4] = v35;
        *(v41 + 5) = v36;
        *(v41 + 12) = v37;
        *(v41 + 7) = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
        v43 = v42;
        v65 = v42;
        v64[0] = v38;
        specialized Dictionary.subscript.setter(v64, v42);
        v44 = *(a3 + 16);
        v59 = *a5;
        v61 = *a3;
        v45 = *(a5 + 16);
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = vaddq_f32(v61, v59);
        v49 = v44 + v45;
        v51 = v47[2];
        v50 = v47[3];
        if (v51 >= v50 >> 1)
        {
          v63 = v48;
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v47);
          v48 = v63;
          v47 = v57;
        }

        v47[2] = v51 + 1;
        v52 = &v47[4 * v51];
        v52[2] = v48;
        v52[3].f32[0] = v49;
        v52[3].i64[1] = v46;
        v65 = v43;
        v64[0] = v47;
        specialized Dictionary.subscript.setter(v64, v43);
        v53 = v66;

        *a2 = v53;

        v54 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v15, a4, a6);
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        *a1 = v55;
      }
    }
  }
}

void specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, double *a3, uint64_t a4, double *a5, double a6)
{
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
  if (v12 == MEMORY[0x1E69E63B0])
  {
    v32 = *a3;
    v33 = *a5;

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v32, a6, v33);
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      __break(1u);
    }

    else
    {
      v15 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);

        v58 = *a5;
        v60 = *a3;
        v18 = a3[2];
        v19 = a5[2];
        v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v21 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
        }

        v22 = vaddq_f32(v60, v58);
        v23 = vadd_f32(v18, v19);
        v25 = v21[2];
        v24 = v21[3];
        if (v25 >= v24 >> 1)
        {
          v62 = v22;
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
          v22 = v62;
          v21 = v56;
        }

        v21[2] = v25 + 1;
        v26 = &v21[4 * v25];
        v26[2] = v22;
        *v26[3].f32 = v23;
        v26[3].i64[1] = v20;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>();
        v65 = v27;
        v64[0] = v21;
        specialized Dictionary.subscript.setter(v64, v27);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        v30 = &v17[16 * v29];
        *(v30 + 4) = a4;
        *(v30 + 5) = a6;
        v31 = swift_allocObject();
        *(v31 + 16) = v17;
        *a1 = v31;
      }

      else
      {
        v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v34 = *a2;
        v35 = *a3;
        v36 = *(a3 + 1);
        v37 = *(a3 + 2);

        v38 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
        }

        v38[2] = v40 + 1;
        v41 = &v38[4 * v40];
        v41[4] = v35;
        *(v41 + 5) = v36;
        *(v41 + 6) = v37;
        *(v41 + 7) = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>();
        v43 = v42;
        v65 = v42;
        v64[0] = v38;
        specialized Dictionary.subscript.setter(v64, v42);
        v59 = *a5;
        v61 = *a3;
        v44 = a3[2];
        v45 = a5[2];
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = vaddq_f32(v61, v59);
        v49 = vadd_f32(v44, v45);
        v51 = v47[2];
        v50 = v47[3];
        if (v51 >= v50 >> 1)
        {
          v63 = v48;
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v47);
          v48 = v63;
          v47 = v57;
        }

        v47[2] = v51 + 1;
        v52 = &v47[4 * v51];
        v52[2] = v48;
        *v52[3].f32 = v49;
        v52[3].i64[1] = v46;
        v65 = v43;
        v64[0] = v47;
        specialized Dictionary.subscript.setter(v64, v43);
        v53 = v66;

        *a2 = v53;

        v54 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v15, a4, a6);
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        *a1 = v55;
      }
    }
  }
}

{
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
  if (v12 == MEMORY[0x1E69E63B0])
  {
    v32 = *a3;
    v33 = *a5;

    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v32, a6, v33);
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      __break(1u);
    }

    else
    {
      v15 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(v16 + 16);

        v58 = *a5;
        v60 = *a3;
        v18 = a3[2];
        v19 = a5[2];
        v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v21 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(*a2, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
        }

        v22 = vaddq_f32(v60, v58);
        v23 = vadd_f32(v18, v19);
        v25 = v21[2];
        v24 = v21[3];
        if (v25 >= v24 >> 1)
        {
          v62 = v22;
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
          v22 = v62;
          v21 = v56;
        }

        v21[2] = v25 + 1;
        v26 = &v21[4 * v25];
        v26[2] = v22;
        *v26[3].f32 = v23;
        v26[3].i64[1] = v20;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
        v65 = v27;
        v64[0] = v21;
        specialized Dictionary.subscript.setter(v64, v27);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        v30 = &v17[16 * v29];
        *(v30 + 4) = a4;
        *(v30 + 5) = a6;
        v31 = swift_allocObject();
        *(v31 + 16) = v17;
        *a1 = v31;
      }

      else
      {
        v66 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v34 = *a2;
        v35 = *a3;
        v36 = *(a3 + 1);
        v37 = *(a3 + 2);

        v38 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
        }

        v38[2] = v40 + 1;
        v41 = &v38[4 * v40];
        v41[4] = v35;
        *(v41 + 5) = v36;
        *(v41 + 6) = v37;
        *(v41 + 7) = v34;
        type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
        v43 = v42;
        v65 = v42;
        v64[0] = v38;
        specialized Dictionary.subscript.setter(v64, v42);
        v59 = *a5;
        v61 = *a3;
        v44 = a3[2];
        v45 = a5[2];
        v46 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v47 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(v66, type metadata accessor for CombinedAnimationState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v48 = vaddq_f32(v61, v59);
        v49 = vadd_f32(v44, v45);
        v51 = v47[2];
        v50 = v47[3];
        if (v51 >= v50 >> 1)
        {
          v63 = v48;
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v47);
          v48 = v63;
          v47 = v57;
        }

        v47[2] = v51 + 1;
        v52 = &v47[4 * v51];
        v52[2] = v48;
        *v52[3].f32 = v49;
        v52[3].i64[1] = v46;
        v65 = v43;
        v64[0] = v47;
        specialized Dictionary.subscript.setter(v64, v43);
        v53 = v66;

        *a2 = v53;

        v54 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v15, a4, a6);
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        *a1 = v55;
      }
    }
  }
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4, void *a5, double a6)
{
  v12 = *a5;
  v13 = (a5 + 1);
  v270 = *(a5 + 1);
  v15 = *(a5 + 2);
  v14 = *(a5 + 3);
  v16 = *a3;
  v17 = (a3 + 8);
  v18 = *(a3 + 1);
  v19 = *(a3 + 2);
  v20 = *(a3 + 3);
  type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
  if (v21 == MEMORY[0x1E69E63B0])
  {

    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, v16, a6, v12);
  }

  else
  {
    v22 = v21;
    *&v263 = v16;
    v264 = v12;
    v265 = a6;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v22 == v23)
    {
      return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, *&v263, v18, v19, v20, v265, v264, v270, v15, v14);
    }

    else
    {
      v259 = a4;
      v260 = a1;
      v24 = *a1;
      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
      v258 = v25;
      v26 = swift_dynamicCastClass();
      v257 = a2;
      if (v26)
      {
        v256 = *(v26 + 16);

        v27 = v17[3];
        v286 = v17[2];
        v287 = v27;
        v28 = v17[5];
        v288 = v17[4];
        v289 = v28;
        v29 = v17[1];
        v284 = *v17;
        v285 = v29;
        v30 = v13[3];
        v280 = v13[2];
        v281 = v30;
        v31 = v13[5];
        v282 = v13[4];
        v283 = v31;
        v32 = v13[1];
        v278 = *v13;
        v279 = v32;
        v33 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v255 = &v253;
        v34 = MEMORY[0x1E69E7DE0];
        v35 = *(MEMORY[0x1E69E7DE0] - 8);
        v36 = v35[8];
        v37 = MEMORY[0x1EEE9AC00](v33);
        v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
        v39 = v35[2];
        v40 = v39(&v253 - v38, &v284, v34, v37);
        v267 = v39;
        v254 = &v253;
        v41 = MEMORY[0x1EEE9AC00](v40);
        v42(&v253 - v38, &v278, v34, v41);
        v270 = *(v33 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v43 = v35[1];
        v43(&v253 - v38, v34);
        v44 = (v43)(&v253 - v38, v34);
        v255 = &v253;
        *&v303 = &v290;
        v253 = &v291;
        v266 = v36;
        v45 = MEMORY[0x1EEE9AC00](v44);
        v46 = v267;
        v47 = (v267)(&v253 - v38, &v284 + 8, v34, v45);
        v254 = &v253;
        v48 = MEMORY[0x1EEE9AC00](v47);
        v46(&v253 - v38, &v278 + 8, v34, v48);
        v49 = v253;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v269 = (v35 + 1);
        v43(&v253 - v38, v34);
        v50 = (v43)(&v253 - v38, v34);
        v255 = &v253;
        *(&v303 + 1) = v49;
        v51 = MEMORY[0x1EEE9AC00](v50);
        v268 = v38;
        v52 = v267;
        v53 = (v267)(&v253 - v38, &v285, v34, v51);
        v254 = &v253;
        v54 = MEMORY[0x1EEE9AC00](v53);
        v52(&v253 - v38, &v279, v34, v54);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v43(&v253 - v38, v34);
        v55 = (v43)(&v253 - v38, v34);
        v255 = &v253;
        *&v304 = &v292;
        v253 = &v293;
        v56 = MEMORY[0x1EEE9AC00](v55);
        v57 = v267;
        v58 = v268;
        v59 = &v253 - v268;
        v60 = (v267)(&v253 - v268, &v285 + 8, v34, v56);
        v254 = &v253;
        v61 = MEMORY[0x1EEE9AC00](v60);
        v261 = (v35 + 2);
        v57(&v253 - v58, &v279 + 8, v34, v61);
        v62 = v253;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v43(&v253 - v58, v34);
        v63 = (v43)(v59, v34);
        v255 = &v253;
        *(&v304 + 1) = v62;
        v253 = &v294;
        v64 = MEMORY[0x1EEE9AC00](v63);
        v65 = v267;
        v66 = v268;
        v67 = (v267)(&v253 - v268, &v286, v34, v64);
        v254 = &v253;
        v68 = MEMORY[0x1EEE9AC00](v67);
        v65(&v253 - v66, &v280, v34, v68);
        v69 = v253;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v262 = v43;
        v43(&v253 - v66, v34);
        v70 = (v43)(&v253 - v66, v34);
        v255 = &v253;
        *&v305 = v69;
        v71 = MEMORY[0x1EEE9AC00](v70);
        v72 = v267;
        v73 = (v267)(&v253 - v66, &v286 + 8, v34, v71);
        v254 = &v253;
        v74 = MEMORY[0x1EEE9AC00](v73);
        v72(&v253 - v66, &v280 + 8, v34, v74);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v75 = v262;
        v262(&v253 - v66, v34);
        v76 = v75(&v253 - v66, v34);
        v255 = &v253;
        *(&v305 + 1) = &v295;
        v77 = MEMORY[0x1EEE9AC00](v76);
        v78 = &v253 - v66;
        v79 = (v72)(&v253 - v66, &v287, v34, v77);
        v254 = &v253;
        v80 = MEMORY[0x1EEE9AC00](v79);
        v72(&v253 - v66, &v281, v34, v80);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v81 = &v253 - v66;
        v82 = v262;
        v262(v81, v34);
        v83 = v82(v78, v34);
        v255 = &v253;
        *&v306 = &v296;
        v84 = MEMORY[0x1EEE9AC00](v83);
        v85 = v268;
        v86 = &v253 - v268;
        v87 = (v72)(&v253 - v268, &v287 + 8, v34, v84);
        v254 = &v253;
        v88 = MEMORY[0x1EEE9AC00](v87);
        v72(&v253 - v85, &v281 + 8, v34, v88);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v82(&v253 - v85, v34);
        v89 = v82(v86, v34);
        v255 = &v253;
        *(&v306 + 1) = &v297;
        v90 = MEMORY[0x1EEE9AC00](v89);
        v91 = v268;
        v92 = &v253 - v268;
        v93 = (v72)(&v253 - v268, &v288, v34, v90);
        v254 = &v253;
        v94 = MEMORY[0x1EEE9AC00](v93);
        v72(&v253 - v91, &v282, v34, v94);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v95 = &v253 - v91;
        v96 = v262;
        v262(v95, v34);
        v97 = v96(v92, v34);
        v255 = &v253;
        *&v307 = &v298;
        v98 = MEMORY[0x1EEE9AC00](v97);
        v99 = v268;
        v100 = (v72)(&v253 - v268, &v288 + 8, v34, v98);
        v254 = &v253;
        v101 = MEMORY[0x1EEE9AC00](v100);
        v72(&v253 - v99, &v282 + 8, v34, v101);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v96(&v253 - v99, v34);
        v102 = v96(&v253 - v99, v34);
        v255 = &v253;
        *(&v307 + 1) = &v299;
        v103 = MEMORY[0x1EEE9AC00](v102);
        v104 = v268;
        v105 = (v72)(&v253 - v268, &v289, v34, v103);
        v254 = &v253;
        v106 = MEMORY[0x1EEE9AC00](v105);
        v72(&v253 - v104, &v283, v34, v106);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v96(&v253 - v104, v34);
        v107 = v96(&v253 - v104, v34);
        v255 = &v253;
        *&v308 = &v300;
        v108 = MEMORY[0x1EEE9AC00](v107);
        v110 = v267;
        v109 = v268;
        v111 = (v267)(&v253 - v268, &v289 + 8, v34, v108);
        v254 = &v253;
        v112 = MEMORY[0x1EEE9AC00](v111);
        v110(&v253 - v109, &v283 + 8, v34, v112);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v96(&v253 - v109, v34);
        v96(&v253 - v109, v34);
        v113 = v257;
        *(&v308 + 1) = &v301;
        _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v303, &v310);
        v114 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v115 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(*v113, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v265;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v115 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115[2] + 1, 1, v115);
        }

        v118 = v264 + *&v263;
        v120 = v115[2];
        v119 = v115[3];
        if (v120 >= v119 >> 1)
        {
          v115 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v115);
        }

        v115[2] = v120 + 1;
        v121 = &v115[14 * v120];
        *(v121 + 4) = v118;
        v122 = v310;
        *(v121 + 7) = v311;
        *(v121 + 5) = v122;
        v123 = v312;
        v124 = v313;
        v125 = v314;
        *(v121 + 15) = v315;
        *(v121 + 13) = v125;
        *(v121 + 11) = v124;
        *(v121 + 9) = v123;
        v121[17] = v114;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>();
        *(&v273 + 1) = v126;
        *&v272 = v115;
        specialized Dictionary.subscript.setter(&v272, v126);
        v127 = v259;

        v128 = v256;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v128 + 2) + 1, 1, v128);
        }

        v130 = *(v128 + 2);
        v129 = *(v128 + 3);
        if (v130 >= v129 >> 1)
        {
          v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v129 > 1), v130 + 1, 1, v128);
        }

        *(v128 + 2) = v130 + 1;
        v131 = &v128[16 * v130];
        *(v131 + 4) = v127;
        *(v131 + 5) = v117;
        result = swift_allocObject();
        *(result + 16) = v128;
        *v260 = result;
      }

      else
      {
        v263 = v24;
        v309 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v133 = *a2;
        v134 = a3[5];
        v314 = a3[4];
        v315 = v134;
        v316 = *(a3 + 12);
        v135 = a3[1];
        v310 = *a3;
        v311 = v135;
        v136 = a3[3];
        v312 = a3[2];
        v313 = v136;

        v137 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v309, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>);
        v138 = v265;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v137[2] + 1, 1, v137);
        }

        v140 = v137[2];
        v139 = v137[3];
        if (v140 >= v139 >> 1)
        {
          v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v137);
        }

        v137[2] = v140 + 1;
        v141 = &v137[14 * v140];
        v142 = v310;
        v143 = v312;
        *(v141 + 3) = v311;
        *(v141 + 4) = v143;
        *(v141 + 2) = v142;
        v144 = v313;
        v145 = v315;
        v146 = v316;
        *(v141 + 6) = v314;
        *(v141 + 7) = v145;
        *(v141 + 5) = v144;
        v141[16] = v146;
        v141[17] = v133;
        type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>();
        v302[3] = v147;
        v302[0] = v137;
        v262 = v147;
        specialized Dictionary.subscript.setter(v302, v147);
        v148 = *a3;
        v149 = *a5;
        v150 = v17[3];
        v280 = v17[2];
        v281 = v150;
        v151 = v17[5];
        v282 = v17[4];
        v283 = v151;
        v152 = v17[1];
        v278 = *v17;
        v279 = v152;
        v153 = v13[3];
        v274 = v13[2];
        v275 = v153;
        v154 = v13[5];
        v276 = v13[4];
        v277 = v154;
        v155 = v13[1];
        v272 = *v13;
        v273 = v155;
        v156 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v261 = &v253;
        v157 = MEMORY[0x1E69E7DE0];
        v158 = *(MEMORY[0x1E69E7DE0] - 8);
        v159 = *(v158 + 8);
        v160 = MEMORY[0x1EEE9AC00](v156);
        v270 = v159;
        v161 = (*&v159 + 15) & 0xFFFFFFFFFFFFFFF0;
        v162 = v158[2];
        v163 = v162(&v253 - v161, &v278, v157, v160);
        v164 = MEMORY[0x1EEE9AC00](v163);
        v162(&v253 - v161, &v272, v157, v164);
        v268 = *(v156 + 8);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v165 = v158[1];
        v165(&v253 - v161, v157);
        v166 = (v165)(&v253 - v161, v157);
        v261 = &v253;
        v290 = &v284;
        v167 = MEMORY[0x1EEE9AC00](v166);
        v269 = v161;
        v168 = v162(&v253 - v161, (&v278 + 8), v157, v167);
        v256 = &v253;
        v169 = MEMORY[0x1EEE9AC00](v168);
        v266 = v162;
        v162(&v253 - v161, (&v272 + 8), v157, v169);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v165(&v253 - v161, v157);
        v170 = (v165)(&v253 - v161, v157);
        v261 = &v253;
        v291 = &v284 + 8;
        v255 = &v285;
        v171 = MEMORY[0x1EEE9AC00](v170);
        v172 = v269;
        v173 = (&v253 - v269);
        v174 = v162((&v253 - v269), &v279, v157, v171);
        v256 = &v253;
        v175 = MEMORY[0x1EEE9AC00](v174);
        v176 = (&v253 - v172);
        v162((&v253 - v172), &v273, v157, v175);
        v177 = v255;
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v267 = v165;
        v165(v176, v157);
        v178 = (v165)(v173, v157);
        v261 = &v253;
        v292 = v177;
        v179 = MEMORY[0x1EEE9AC00](v178);
        v180 = v269;
        v181 = (&v253 - v269);
        v182 = v266;
        v183 = (v266)(&v253 - v269, &v279 + 8, v157, v179);
        v256 = &v253;
        v184 = MEMORY[0x1EEE9AC00](v183);
        v185 = (&v253 - v180);
        v182(v185, &v273 + 8, v157, v184);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v186 = v185;
        v187 = v267;
        (v267)(v186, v157);
        v188 = v187(v181, v157);
        v261 = &v253;
        v293 = &v285 + 8;
        v189 = MEMORY[0x1EEE9AC00](v188);
        v190 = v269;
        v191 = (v182)(&v253 - v269, &v280, v157, v189);
        v256 = &v253;
        v192 = MEMORY[0x1EEE9AC00](v191);
        v182((&v253 - v190), &v274, v157, v192);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v193 = v267;
        (v267)(&v253 - v190, v157);
        v194 = v193(&v253 - v190, v157);
        v195 = v158 + 1;
        v261 = &v253;
        v294 = &v286;
        v196 = MEMORY[0x1EEE9AC00](v194);
        v197 = v269;
        v198 = v266;
        v199 = (v266)(&v253 - v269, &v280 + 8, v157, v196);
        v256 = &v253;
        v200 = MEMORY[0x1EEE9AC00](v199);
        v198(&v253 - v197, &v274 + 8, v157, v200);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v201 = v267;
        v264 = *&v195;
        (v267)(&v253 - v197, v157);
        v202 = v201(&v253 - v197, v157);
        v261 = &v253;
        v295 = &v286 + 8;
        v203 = MEMORY[0x1EEE9AC00](v202);
        v204 = v266;
        v205 = (v266)(&v253 - v197, &v281, v157, v203);
        v256 = &v253;
        v206 = MEMORY[0x1EEE9AC00](v205);
        v204(&v253 - v197, &v275, v157, v206);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v207 = v267;
        (v267)(&v253 - v197, v157);
        v208 = v207(&v253 - v197, v157);
        v261 = &v253;
        v296 = &v287;
        v209 = MEMORY[0x1EEE9AC00](v208);
        v210 = (v204)(&v253 - v197, &v281 + 8, v157, v209);
        v256 = &v253;
        v211 = MEMORY[0x1EEE9AC00](v210);
        v204(&v253 - v197, (&v275 + 8), v157, v211);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v207(&v253 - v197, v157);
        v212 = v207(&v253 - v197, v157);
        v261 = &v253;
        v297 = &v287 + 8;
        v213 = MEMORY[0x1EEE9AC00](v212);
        v214 = v269;
        v215 = (&v253 - v269);
        v216 = (v204)(&v253 - v269, &v282, v157, v213);
        v256 = &v253;
        v217 = MEMORY[0x1EEE9AC00](v216);
        v204(&v253 - v214, &v276, v157, v217);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v218 = (&v253 - v214);
        v219 = v267;
        (v267)(v218, v157);
        v220 = v219(v215, v157);
        v261 = &v253;
        v298 = &v288;
        v221 = MEMORY[0x1EEE9AC00](v220);
        v222 = v269;
        v223 = (v204)(&v253 - v269, &v282 + 8, v157, v221);
        v256 = &v253;
        v224 = MEMORY[0x1EEE9AC00](v223);
        v204(&v253 - v222, (&v276 + 8), v157, v224);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v219((&v253 - v222), v157);
        v225 = v219((&v253 - v222), v157);
        v261 = &v253;
        v299 = &v288 + 8;
        v226 = MEMORY[0x1EEE9AC00](v225);
        v227 = v266;
        v228 = (v266)(&v253 - v222, &v283, v157, v226);
        v256 = &v253;
        v229 = MEMORY[0x1EEE9AC00](v228);
        v227(&v253 - v222, &v277, v157, v229);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v230 = v267;
        (v267)(&v253 - v222, v157);
        v231 = v230(&v253 - v222, v157);
        v261 = &v253;
        v300 = &v289;
        v232 = MEMORY[0x1EEE9AC00](v231);
        v233 = v269;
        v234 = (&v253 - v269);
        v235 = (v227)(&v253 - v269, &v283 + 8, v157, v232);
        v256 = &v253;
        v236 = MEMORY[0x1EEE9AC00](v235);
        v237 = (&v253 - v233);
        v227(v237, (&v277 + 8), v157, v236);
        dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
        v230(v237, v157);
        v230(v234, v157);
        v301 = &v289 + 8;
        _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v290, &v303);
        v238 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v239 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(v309, type metadata accessor for CombinedAnimationState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v239 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v239[2] + 1, 1, v239);
        }

        v240 = v257;
        v241 = v148 + v149;
        v243 = v239[2];
        v242 = v239[3];
        if (v243 >= v242 >> 1)
        {
          v239 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v242 > 1), v243 + 1, 1, v239);
        }

        v239[2] = v243 + 1;
        v244 = &v239[14 * v243];
        *(v244 + 4) = v241;
        v245 = v303;
        *(v244 + 7) = v304;
        *(v244 + 5) = v245;
        v246 = v305;
        v247 = v306;
        v248 = v307;
        *(v244 + 15) = v308;
        *(v244 + 13) = v248;
        *(v244 + 11) = v247;
        *(v244 + 9) = v246;
        v244[17] = v238;
        v271[3] = v262;
        v271[0] = v239;
        specialized Dictionary.subscript.setter(v271, v262);
        v249 = v309;

        *v240 = v249;
        v250 = v259;

        v251 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v263, v250, v138);
        v252 = swift_allocObject();
        *(v252 + 16) = v251;
        *v260 = v252;
      }
    }
  }

  return result;
}

uint64_t specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4, __int128 *a5, double a6)
{
  v11 = a3[5];
  v102 = a3[4];
  v103 = v11;
  v12 = a3[7];
  v104 = a3[6];
  v105 = v12;
  v13 = a3[1];
  v98 = *a3;
  v99 = v13;
  v14 = a3[3];
  v100 = a3[2];
  v101 = v14;
  v15 = a5[5];
  v94 = a5[4];
  v95 = v15;
  v16 = a5[7];
  v96 = a5[6];
  v97 = v16;
  v17 = a5[1];
  v90 = *a5;
  v91 = v17;
  v18 = a5[3];
  v92 = a5[2];
  v93 = v18;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v19 == &type metadata for RoundedRectangularShapeCorners.AnimatableData)
  {
    return specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(a1, a2, a4, *&v98, *(&v98 + 1), *&v99, *(&v99 + 1), a6, *&v90, *(&v90 + 1), *&v91, *(&v91 + 1));
  }

  v20 = *a1;
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationBox<DefaultCombiningAnimation>, lazy protocol witness table accessor for type DefaultCombiningAnimation and conformance DefaultCombiningAnimation, &type metadata for DefaultCombiningAnimation, type metadata accessor for AnimationBox);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = *(v21 + 16);

    static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(&v82, &v98, &v90);
    v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v24 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(*a2, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    }

    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
    }

    v24[2] = v26 + 1;
    v27 = &v24[17 * v26];
    v28 = v82;
    v29 = v83;
    v30 = v85;
    *(v27 + 4) = v84;
    *(v27 + 5) = v30;
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    v31 = v86;
    v32 = v87;
    v33 = v89;
    *(v27 + 8) = v88;
    *(v27 + 9) = v33;
    *(v27 + 6) = v31;
    *(v27 + 7) = v32;
    v27[20] = v23;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for CombinedAnimationState);
    *(&v74 + 1) = v34;
    *&v73 = v24;
    specialized Dictionary.subscript.setter(&v73, v34);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    }

    v36 = *(v22 + 2);
    v35 = *(v22 + 3);
    if (v36 >= v35 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v22);
    }

    *(v22 + 2) = v36 + 1;
    v37 = &v22[16 * v36];
    *(v37 + 4) = a4;
    *(v37 + 5) = a6;
    result = swift_allocObject();
    *(result + 16) = v22;
    *a1 = result;
  }

  else
  {
    v81 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v39 = a3[5];
    v86 = a3[4];
    v87 = v39;
    v40 = a3[7];
    v88 = a3[6];
    v89 = v40;
    v41 = a3[1];
    v82 = *a3;
    v83 = v41;
    v42 = a3[3];
    v84 = a3[2];
    v85 = v42;
    v43 = *a2;

    v44 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v81, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
    }

    v46 = v44[2];
    v45 = v44[3];
    if (v46 >= v45 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v44);
    }

    v44[2] = v46 + 1;
    v47 = &v44[17 * v46];
    v48 = v82;
    v49 = v83;
    v50 = v85;
    *(v47 + 4) = v84;
    *(v47 + 5) = v50;
    *(v47 + 2) = v48;
    *(v47 + 3) = v49;
    v51 = v86;
    v52 = v87;
    v53 = v89;
    *(v47 + 8) = v88;
    *(v47 + 9) = v53;
    *(v47 + 6) = v51;
    *(v47 + 7) = v52;
    v47[20] = v43;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for CombinedAnimationState);
    v55 = v54;
    *(&v74 + 1) = v54;
    *&v73 = v44;
    specialized Dictionary.subscript.setter(&v73, v54);
    static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)(&v73, &v98, &v90);
    v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v57 = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(v81, &lazy cache variable for type metadata for CombinedAnimationState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
    }

    v59 = v57[2];
    v58 = v57[3];
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v57);
      v60 = v59 + 1;
      v57 = v71;
    }

    v57[2] = v60;
    v61 = &v57[17 * v59];
    v62 = v73;
    v63 = v74;
    v64 = v76;
    *(v61 + 4) = v75;
    *(v61 + 5) = v64;
    *(v61 + 2) = v62;
    *(v61 + 3) = v63;
    v65 = v77;
    v66 = v78;
    v67 = v80;
    *(v61 + 8) = v79;
    *(v61 + 9) = v67;
    *(v61 + 6) = v65;
    *(v61 + 7) = v66;
    v61[20] = v56;
    v72[3] = v55;
    v72[0] = v57;
    specialized Dictionary.subscript.setter(v72, v55);
    v68 = v81;

    *a2 = v68;

    v69 = specialized DefaultCombiningAnimation.init(first:firstElapsed:second:)(v20, a4, a6);
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *a1 = v70;
  }

  return result;
}

BOOL _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAIG_AA22ResolvedGradientVectorVTt1B5(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  v8 = *(a2 + 40);
  v9 = *(a2 + 44);
  v10 = *(a2 + 48);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0 || v5 != v8)
  {
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    return (v10 & 1) == 0 && v6 == v9;
  }

  return (v10 & 1) != 0;
}

BOOL _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAA22ResolvedGradientVectorVG_AITt1B5Tm(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 28);
  v7 = *(a2 + 28);
  v8 = *(a2 + 24);
  v9 = *(a1 + 24);
  v10 = *(a2 + 32);
  v11 = *(a1 + 32);
  v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(*(a1 + 16), *(a2 + 16));
  result = 0;
  if ((v12 & 1) != 0 && v9 == v8)
  {
    if (v11)
    {
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      return *(a1 + 48) == *(a2 + 48) && *(a1 + 40) == *(a2 + 40);
    }

    result = 0;
    if ((v10 & 1) == 0 && v6 == v7)
    {
      return *(a1 + 48) == *(a2 + 48) && *(a1 + 40) == *(a2 + 40);
    }
  }

  return result;
}

uint64_t _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZAA0C5ArrayVySfG_ACyAGyACySfACySfACyS2fGGGGAA5ColorVAAE11ResolvedHDRV01_C0VGTt1B5(uint64_t result, float *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
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
LABEL_10:
    v8 = *(result + 16);
    v9 = *(result + 20);
    v20 = *(result + 28);
    v21 = *(result + 24);
    v10 = *(result + 32);
    v11 = a2[4];
    v12 = a2[5];
    v13 = a2[6];
    v14 = a2[7];
    v15 = a2[8];
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(*(result + 8), *(a2 + 1)))
    {
      v16 = v8 == v11 && v9 == v12;
      v17 = v16 && v21 == v13;
      v18 = v17 && v20 == v14;
      if (v18 && v10 == v15)
      {
        return 1;
      }
    }

    return 0;
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
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZSd_ACy12CoreGraphics7CGFloatVACyAhCyAhCyACyA2HGAIGGGGTt1g5(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    if (static AnimatablePair.== infix(_:_:)())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZSf_AA16_ShapeStyle_PackV6EffectV4KindO0C4DataOTt1B5(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    if (*(a1 + 48))
    {
      if (*(a2 + 48))
      {
        return 1;
      }
    }

    else if ((*(a2 + 48) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(uint64_t result, float32x4_t *a2)
{
  v2 = *result;
  if (a2[1].i64[0] >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = a2[1].u64[0];
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    *v5 = v2;
    if (v3 > *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 8 && ((v6 = 4 * v3 + 32, v2 + 32 < a2 + v6) ? (v7 = &a2[2] >= v2 + v6) : (v7 = 1), v7))
    {
      v8 = v3 & 0x7FFFFFFFFFFFFFF8;
      v9 = a2 + 3;
      v10 = (v2 + 48);
      v11 = v3 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v12 = vaddq_f32(*v9, *v10);
        v10[-1] = vaddq_f32(v9[-1], v10[-1]);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 8;
      }

      while (v11);
      if (v3 == v8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = v3 - v8;
    v14 = 4 * v8 + 32;
    v15 = (v2 + v14);
    v16 = (a2->f32 + v14);
    do
    {
      v17 = *v16++;
      *v15 = v17 + *v15;
      ++v15;
      --v13;
    }

    while (v13);
LABEL_21:
    *v5 = v2;
  }

  return result;
}

uint64_t _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(uint64_t result, float32x4_t *a2)
{
  v2 = *result;
  if (a2[1].i64[0] >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = a2[1].u64[0];
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    *v5 = v2;
    if (v3 > *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 0xC && ((v6 = (v2 + 32), v7 = 16 * (v3 - 1), v2 + 32 + v7 >= (v2 + 32)) ? (v8 = v2 + 36 + v7 >= (v2 + 36)) : (v8 = 0), v8 ? (v9 = v2 + 44 + v7 >= (v2 + 44)) : (v9 = 0), v9 ? (v10 = v2 + 40 + v7 >= (v2 + 40)) : (v10 = 0), v10 ? (v11 = (v3 - 1) >> 60 == 0) : (v11 = 0), v11 && ((v12 = a2 + 2, v13 = 16 * v3 + 32, v6 < (a2 + v13)) ? (v14 = v12 >= v2 + v13) : (v14 = 1), v14)))
    {
      v15 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      v16 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v17 = v12[2];
        v18 = v12[3];
        v19 = *v12;
        v20 = v12[1];
        v12 += 4;
        v21 = vaddq_f32(v20, v6[1]);
        v22 = vaddq_f32(v19, *v6);
        v23 = vaddq_f32(v18, v6[3]);
        v6[2] = vaddq_f32(v17, v6[2]);
        v6[3] = v23;
        *v6 = v22;
        v6[1] = v21;
        v6 += 4;
        v16 -= 4;
      }

      while (v16);
      if (v3 == v15)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v15 = 0;
    }

    v24 = v3 - v15;
    v25 = 16 * v15 + 32;
    v26 = (v2 + v25);
    v27 = (a2 + v25);
    do
    {
      v28 = *v27++;
      *v26 = vaddq_f32(v28, *v26);
      ++v26;
      --v24;
    }

    while (v24);
LABEL_35:
    *v5 = v2;
  }

  return result;
}

uint64_t _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*(a2 + 16) >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = *(a2 + 16);
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
LABEL_17:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    v6 = 0;
    v7 = 0;
    *v5 = v2;
    v8 = *(v2 + 16);
    do
    {
      if (v7 >= v8)
      {
        __break(1u);
        goto LABEL_17;
      }

      v14 = *(a2 + v6 + 40);
      v15 = *(a2 + v6 + 56);
      v16 = *(a2 + v6 + 72);
      v17 = *(a2 + v6 + 80);
      v18 = v2 + v6;
      *(v2 + v6 + 32) = *(a2 + v6 + 32) + *(v2 + v6 + 32);
      if ((v17 & 1) == 0)
      {
        if (*(v18 + 80))
        {
          *(v18 + 40) = v14.i64[0];
          *(v18 + 48) = vextq_s8(v14, v15, 8uLL);
          *(v18 + 64) = v15.f64[1];
          v11 = v16;
        }

        else
        {
          v9 = *(v18 + 40);
          v10 = *(v18 + 56);
          v11 = *(v18 + 72) + v16;
          v12 = vadd_f32(vmovn_s64(v14), vmovn_s64(v9));
          v13.i64[0] = v12.u32[0];
          v13.i64[1] = v12.u32[1];
          *(v18 + 40) = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v14, 0x20uLL), vshrn_n_s64(v9, 0x20uLL)), 0x20uLL), v13);
          *(v18 + 56) = vaddq_f64(v10, v15);
        }

        *(v18 + 72) = v11;
        *(v18 + 80) = 0;
      }

      ++v7;
      v6 += 56;
    }

    while (v3 != v7);
    *v5 = v2;
  }

  return result;
}

uint64_t _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(uint64_t result, uint64_t a2)
{
  v2 = *result;
  if (*(a2 + 16) >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = *(a2 + 16);
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
LABEL_17:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    v6 = 0;
    v7 = 0;
    *v5 = v2;
    v8 = *(v2 + 16);
    do
    {
      if (v7 >= v8)
      {
        __break(1u);
        goto LABEL_17;
      }

      v14 = *(a2 + v6 + 40);
      v15 = *(a2 + v6 + 56);
      v16 = *(a2 + v6 + 72);
      v17 = *(a2 + v6 + 80);
      v18 = v2 + v6;
      *(v2 + v6 + 32) = *(v2 + v6 + 32) - *(a2 + v6 + 32);
      if ((v17 & 1) == 0)
      {
        if (*(v18 + 80))
        {
          *(v18 + 40) = v14.i64[0];
          *(v18 + 48) = vextq_s8(v14, v15, 8uLL);
          *(v18 + 64) = v15.f64[1];
          v11 = v16;
        }

        else
        {
          v9 = *(v18 + 40);
          v10 = *(v18 + 56);
          v11 = *(v18 + 72) - v16;
          v12 = vsub_f32(vmovn_s64(v9), vmovn_s64(v14));
          v13.i64[0] = v12.u32[0];
          v13.i64[1] = v12.u32[1];
          *(v18 + 40) = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v9, 0x20uLL), vshrn_n_s64(v14, 0x20uLL)), 0x20uLL), v13);
          *(v18 + 56) = vsubq_f64(v10, v15);
        }

        *(v18 + 72) = v11;
        *(v18 + 80) = 0;
      }

      ++v7;
      v6 += 56;
    }

    while (v3 != v7);
    *v5 = v2;
  }

  return result;
}

uint64_t _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(uint64_t result, float32x4_t *a2)
{
  v2 = *result;
  if (a2[1].i64[0] >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = a2[1].u64[0];
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    *v5 = v2;
    if (v3 > *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 8 && ((v6 = 4 * v3 + 32, v2 + 32 < a2 + v6) ? (v7 = &a2[2] >= v2 + v6) : (v7 = 1), v7))
    {
      v8 = v3 & 0x7FFFFFFFFFFFFFF8;
      v9 = a2 + 3;
      v10 = (v2 + 48);
      v11 = v3 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v12 = vsubq_f32(*v10, *v9);
        v10[-1] = vsubq_f32(v10[-1], v9[-1]);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 8;
      }

      while (v11);
      if (v3 == v8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = v3 - v8;
    v14 = 4 * v8 + 32;
    v15 = (v2 + v14);
    v16 = (a2->f32 + v14);
    do
    {
      v17 = *v16++;
      *v15 = *v15 - v17;
      ++v15;
      --v13;
    }

    while (v13);
LABEL_21:
    *v5 = v2;
  }

  return result;
}

uint64_t _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(uint64_t result, float32x4_t *a2)
{
  v2 = *result;
  if (a2[1].i64[0] >= *(*result + 16))
  {
    v3 = *(*result + 16);
  }

  else
  {
    v3 = a2[1].u64[0];
  }

  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    *v5 = v2;
    if (v3 > *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    if (v3 >= 0xC && ((v6 = (v2 + 32), v7 = 16 * (v3 - 1), v2 + 32 + v7 >= (v2 + 32)) ? (v8 = v2 + 36 + v7 >= (v2 + 36)) : (v8 = 0), v8 ? (v9 = v2 + 44 + v7 >= (v2 + 44)) : (v9 = 0), v9 ? (v10 = v2 + 40 + v7 >= (v2 + 40)) : (v10 = 0), v10 ? (v11 = (v3 - 1) >> 60 == 0) : (v11 = 0), v11 && ((v12 = a2 + 2, v13 = 16 * v3 + 32, v6 < (a2 + v13)) ? (v14 = v12 >= v2 + v13) : (v14 = 1), v14)))
    {
      v15 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      v16 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v17 = v12[2];
        v18 = v12[3];
        v19 = *v12;
        v20 = v12[1];
        v12 += 4;
        v21 = vsubq_f32(v6[1], v20);
        v22 = vsubq_f32(*v6, v19);
        v23 = vsubq_f32(v6[3], v18);
        v6[2] = vsubq_f32(v6[2], v17);
        v6[3] = v23;
        *v6 = v22;
        v6[1] = v21;
        v6 += 4;
        v16 -= 4;
      }

      while (v16);
      if (v3 == v15)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v15 = 0;
    }

    v24 = v3 - v15;
    v25 = 16 * v15 + 32;
    v26 = (v2 + v25);
    v27 = (a2 + v25);
    do
    {
      v28 = *v27++;
      *v26 = vsubq_f32(*v26, v28);
      ++v26;
      --v24;
    }

    while (v24);
LABEL_35:
    *v5 = v2;
  }

  return result;
}

unint64_t *specialized AnimatorState.__allocating_init(animation:interval:at:in:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  (*(v11 + 16))(v8, v6);
  v14 = v10;
  swift_allocObject();
  return AnimatorState.init(animation:interval:at:in:finishingDefinition:)(a1, v8, &v14, a4, 0, 0);
}

uint64_t specialized AnimatableAttribute.description.getter()
{
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](62, 0xE100000000000000);
  return 0x626174616D696E41;
}

void type metadata accessor for AGAttribute?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t instantiation function for generic protocol witness table for AnimatableFrameAttribute(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnimatableFrameAttribute and conformance AnimatableFrameAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AnimatableFrameAttributeVFD(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnimatableFrameAttributeVFD and conformance AnimatableFrameAttributeVFD();
  *(a1 + 8) = result;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatableAttribute(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = v6 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v9 + 7;
  v11 = v6 & 0x100000;
  if (v7 > 7 || v11 != 0 || ((((((v9 + 7 + ((v7 + 12) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + (v8 & (v7 + 8))) | 4) > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + (v8 & (v7 + 16)));
  }

  else
  {
    v15 = AssociatedTypeWitness;
    *a1 = *a2;
    v16 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v18[1] = v19[1];
    v20 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = ((v20 + v7 + 4) & ~v7);
    v23 = ((v21 + v7 + 4) & ~v7);
    if ((*(v5 + 48))((v21 + v7 + 4) & ~v7, 1, AssociatedTypeWitness))
    {
      memcpy(v22, v23, v9);
    }

    else
    {
      (*(v5 + 16))(v22, v23, v15);
      (*(v5 + 56))(v22, 0, 1, v15);
    }

    v24 = ((v22 + v10) & 0xFFFFFFFFFFFFFFF8);
    v25 = ((v23 + v10) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v25;
    *((v24 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

_DWORD *assignWithCopy for AnimatableAttribute(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = (v7 | 7) + 4;
  v9 = v3 + v8;
  v10 = ((v4 + v8) & ~(v7 | 7));
  v11 = (v9 & ~(v7 | 7));
  *v11 = *v10;
  v11[1] = v10[1];
  v12 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + v7 + 4) & ~v7);
  v15 = ((v13 + v7 + 4) & ~v7);
  v16 = *(v6 + 48);
  v17 = v16(v14, 1, AssociatedTypeWitness);
  v18 = v16(v15, 1, AssociatedTypeWitness);
  if (v17)
  {
    if (!v18)
    {
      (*(v6 + 16))(v14, v15, AssociatedTypeWitness);
      (*(v6 + 56))(v14, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v19 = *(v6 + 84);
    v20 = *(v6 + 64);
  }

  else
  {
    if (!v18)
    {
      (*(v6 + 24))(v14, v15, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(v14, AssociatedTypeWitness);
    v19 = *(v6 + 84);
    v20 = *(v6 + 64);
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  memcpy(v14, v15, v21);
LABEL_12:
  if (*(v6 + 84))
  {
    v22 = *(v6 + 64);
  }

  else
  {
    v22 = *(v6 + 64) + 1;
  }

  v23 = v14 + v22 + 7;
  v24 = v15 + v22 + 7;
  v25 = (v24 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v23 & 0xFFFFFFFFFFFFFFF8) = *(v24 & 0xFFFFFFFFFFFFFFF8);
  v26 = (v23 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v26 & 0xFFFFFFFFFFFFFFF8) = *(v25 & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *initializeWithTake for AnimatableAttribute(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = (v7 | 7) + 4;
  v9 = v3 + v8;
  v10 = ((v4 + v8) & ~(v7 | 7));
  v11 = (v9 & ~(v7 | 7));
  *v11 = *v10;
  v11[1] = v10[1];
  v12 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + v7 + 4) & ~v7);
  v15 = ((v13 + v7 + 4) & ~v7);
  if ((*(v6 + 48))(v15, 1, AssociatedTypeWitness))
  {
    v16 = *(v6 + 84);
    v17 = *(v6 + 64);
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 + 1;
    }

    memcpy(v14, v15, v18);
  }

  else
  {
    (*(v6 + 32))(v14, v15, AssociatedTypeWitness);
    v20 = *(v6 + 56);
    v19 = v6 + 56;
    v20(v14, 0, 1, AssociatedTypeWitness);
    v16 = *(v19 + 28);
    v17 = *(v19 + 8);
  }

  if (v16)
  {
    v21 = v17;
  }

  else
  {
    v21 = v17 + 1;
  }

  v22 = ((v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  *((v22 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v23 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for AnimatableAttribute(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = (v7 | 7) + 4;
  v9 = v3 + v8;
  v10 = ((v4 + v8) & ~(v7 | 7));
  v11 = (v9 & ~(v7 | 7));
  *v11 = *v10;
  v11[1] = v10[1];
  v12 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = ((v12 + v7 + 4) & ~v7);
  v15 = ((v13 + v7 + 4) & ~v7);
  v16 = *(v6 + 48);
  v17 = v16(v14, 1, AssociatedTypeWitness);
  v18 = v16(v15, 1, AssociatedTypeWitness);
  if (v17)
  {
    if (!v18)
    {
      (*(v6 + 32))(v14, v15, AssociatedTypeWitness);
      (*(v6 + 56))(v14, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v19 = *(v6 + 84);
    v20 = *(v6 + 64);
  }

  else
  {
    if (!v18)
    {
      (*(v6 + 40))(v14, v15, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v6 + 8))(v14, AssociatedTypeWitness);
    v19 = *(v6 + 84);
    v20 = *(v6 + 64);
  }

  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  memcpy(v14, v15, v21);
LABEL_12:
  if (*(v6 + 84))
  {
    v22 = *(v6 + 64);
  }

  else
  {
    v22 = *(v6 + 64) + 1;
  }

  v23 = v14 + v22 + 7;
  v24 = ((v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  *(v23 & 0xFFFFFFFFFFFFFFF8) = *v24;
  v25 = (v23 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v25 & 0xFFFFFFFFFFFFFFF8) = *((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}