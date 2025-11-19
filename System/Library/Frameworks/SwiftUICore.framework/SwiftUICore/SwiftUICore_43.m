uint64_t specialized AnimatorState.update(_:at:environment:)(uint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  if (v8 + v7 * -0.5 >= a3)
  {
LABEL_20:
    swift_beginAccess();
    outlined init with copy of _AnyAnimatableData((v3 + 96), &v38);
    v26 = *a1;
    if (*a1 == v38)
    {
      (*(v26 + 96))(a1 + 8, &v38 + 8);
    }

    else if (v26 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(a1);
      v27 = v39;
      *a1 = v38;
      *(a1 + 16) = v27;
      *(a1 + 32) = v40;
      goto LABEL_25;
    }

    outlined destroy of _AnyAnimatableData(&v38);
LABEL_25:
    swift_beginAccess();
    outlined init with copy of _AnyAnimatableData((v4 + 32), &v38);
    v28 = *a1;
    if (*a1 == v38)
    {
      (*(v28 + 104))(a1 + 8, &v38 + 8);
    }

    else if (v28 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(a1);
      outlined init with copy of _AnyAnimatableData(&v38, a1);
      (*(*a1 + 112))(a1 + 8);
    }

LABEL_36:
    outlined destroy of _AnyAnimatableData(&v38);
    return 0;
  }

  if (*(v3 + 141) > 1u)
  {
    if (*(v3 + 141) != 2)
    {
      goto LABEL_11;
    }

    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 72))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 72) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

  if (!*(v3 + 141))
  {
    *(v3 + 72) = a3;
    v10 = 1;
LABEL_10:
    *(v3 + 141) = v10;
    goto LABEL_11;
  }

  *(v3 + 141) = 2;
  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    *(v3 + 88) = v8 - *(v3 + 72) + a3;
    *(v3 + 72) = a3;
    goto LABEL_20;
  }

LABEL_11:
  v13 = a3 - *(v3 + 72);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 160);

  v35[0] = v14;
  v35[1] = AGCreateWeakAttribute();
  v36 = 0;
  v37 = v15;
  v16 = *(v4 + 168);
  if (v16)
  {
    v17 = *(v4 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
    *(&v39 + 1) = v20;
    *&v38 = v16;
    *(&v38 + 1) = v17;
    specialized Dictionary.subscript.setter(&v38, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  outlined init with copy of _AnyAnimatableData((v4 + 32), v32);
  v22 = *(*v21 + 120);
  v23 = lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData();

  v22(v33, v32, v35, &type metadata for _AnyAnimatableData, v23, v13);

  outlined destroy of _AnyAnimatableData(v32);
  if (!*&v33[0])
  {

    outlined destroy of HitTestableEvent?(v33, &lazy cache variable for type metadata for _AnyAnimatableData?);
    return 1;
  }

  v38 = v33[0];
  v39 = v33[1];
  v40 = v34;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v37, a2 | ((HIDWORD(a2) & 1) << 32), v13);
  *(v4 + 24) = v35[0];

  v24 = *a1;
  if (*a1 == v38)
  {
    (*(v24 + 96))(a1 + 8, &v38 + 8);
  }

  else if (v24 == type metadata accessor for ZeroVTable())
  {
    outlined destroy of _AnyAnimatableData(a1);
    outlined init with copy of _AnyAnimatableData(&v38, a1);
  }

  outlined init with copy of _AnyAnimatableData((v4 + 32), v33);
  v29 = *a1;
  if (*a1 == *&v33[0])
  {
    (*(v29 + 104))(a1 + 8, v33 + 8);
  }

  else if (v29 == type metadata accessor for ZeroVTable())
  {
    outlined destroy of _AnyAnimatableData(a1);
    outlined init with copy of _AnyAnimatableData(v33, a1);
    (*(*a1 + 112))(a1 + 8);
  }

  outlined destroy of _AnyAnimatableData(v33);
  swift_beginAccess();
  outlined assign with copy of _AnyAnimatableData(&v38, v4 + 96);
  swift_endAccess();
  *(v4 + 88) = a3;
  v30 = *(v4 + 80);
  if (v30 <= 0.0)
  {
    goto LABEL_36;
  }

  v31 = round(a3 / v30);
  outlined destroy of _AnyAnimatableData(&v38);
  *(v4 + 88) = (v31 + 1.0) * *(v4 + 80);
  return 0;
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v38 = *(v3 + 80);
    v39 = *(v4 + 88);
    v40 = *(v4 + 96);

    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(a1, v38, v39);

    v41 = v40 + *(a1 + 16);
    swift_beginAccess();
    v42 = *(v4 + 32);
    v43 = *(v4 + 40);
    v44 = *(v4 + 48);

    _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(a1, v42, v43);

    result = 0;
    *(a1 + 16) = v41 - v44;
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v52[0] = v14;
  v52[1] = AGCreateWeakAttribute();
  v53 = 0;
  v54 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>, MEMORY[0x1E69E6720]);
    v48 = v20;
    v45 = v16;
    v46 = v17;
    specialized Dictionary.subscript.setter(&v45, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v22 = *(v4 + 40);
  v23 = *(v4 + 48);
  v49 = *(v4 + 32);
  v50 = v22;
  v51 = v23;
  v24 = *(*v21 + 120);
  type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>();
  v26 = v25;
  v27 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);

  v24(&v45, &v49, v52, v26, v27, v13);

  v28 = v45;
  if (v45)
  {
    v29 = v46;
    v30 = v47;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v54, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v52[0];

    v31 = v29 & 1;
    _s7SwiftUI20KeyedAnimatableArrayV2peoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(a1, v28, v29 & 1);
    v32 = v30 + *(a1 + 16);
    v33 = *(v4 + 32);
    v34 = *(v4 + 40);
    v35 = *(v4 + 48);

    _s7SwiftUI20KeyedAnimatableArrayV2seoiyyACyxq_Gz_AEtFZSi_AA04_AnyD4DataVTt1B5(a1, v33, v34);

    *(a1 + 16) = v32 - v35;
    swift_beginAccess();
    *(v4 + 80) = v28;
    *(v4 + 88) = v31;
    *(v4 + 96) = v30;

    *(v4 + 72) = a3;
    v36 = *(v4 + 64);
    if (v36 > 0.0)
    {
      *(v4 + 72) = v36 * (round(a3 / v36) + 1.0);
    }

    return 0;
  }

  else
  {

    return 1;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 141) <= 1u)
  {
    if (!*(v3 + 141))
    {
      *(v3 + 72) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 141) = v10;
      goto LABEL_11;
    }

    *(v3 + 141) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 88) = v8 - *(v3 + 72) + a3;
    *(v3 + 72) = a3;
LABEL_19:
    swift_beginAccess();
    v30 = *(v3 + 128) + *(a1 + 32);
    v59 = vaddq_f32(*(v3 + 96), *a1);
    v61 = vaddq_f64(*(v3 + 112), *(a1 + 16));
    swift_beginAccess();
    result = 0;
    v32 = *(v3 + 64);
    v33 = vsubq_f64(v61, *(v3 + 48));
    *a1 = vsubq_f32(v59, *(v3 + 32));
    *(a1 + 16) = v33;
    *(a1 + 32) = v30 - v32;
    return result;
  }

  if (*(v3 + 141) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 72))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 72) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 72);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 160);

  v74[0] = v14;
  v74[1] = AGCreateWeakAttribute();
  v75 = 0;
  v76 = v15;
  v16 = *(v4 + 168);
  if (v16)
  {
    v17 = *(v4 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
    *(&v71 + 1) = v20;
    *&v70 = v16;
    *(&v70 + 1) = v17;
    specialized Dictionary.subscript.setter(&v70, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 48);
  v67 = *(v4 + 32);
  v68 = v23;
  v60 = *(v4 + 56);
  v69 = v60;
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  if (v24 == MEMORY[0x1E69E63B0])
  {
    *&v62 = v67;
    v29 = *(*v22 + 120);

    v29(v65, &v62, v74, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *&v70 = *&v65[0];
    BYTE8(v70) = BYTE8(v65[0]);
  }

  else
  {
    v25 = v24;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v25 == v26)
    {
      v34 = v26;
      v62 = v67;
      v63 = v23;
      v64 = v60;
      v35 = *(*v22 + 120);
      v36 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

      v35(v65, &v62, v74, v34, v36, v21);
      v70 = v65[0];
      v71 = v65[1];
      LOBYTE(v72) = v66;
    }

    else
    {
      v27 = *(*v22 + 120);
      v28 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);

      v27(&v70, &v67, v74, v25, v28, v21);
    }
  }

  if (v73)
  {

    return 1;
  }

  else
  {
    v38 = v70;
    v37 = DWORD1(v70);
    v40 = DWORD2(v70);
    v39 = HIDWORD(v70);
    v41 = v71;
    v42 = v72;
    v43 = v70;
    v44 = *(&v70 + 2);
    v45 = v21;
    v46 = *(&v70 + 3);
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v76, a2 | ((HIDWORD(a2) & 1) << 32), v45);
    *(v4 + 24) = v74[0];

    v47 = *(a1 + 8) + v44;
    v48 = *(a1 + 12) + v46;
    v49 = *&v41 + *(a1 + 16);
    v50 = *(&v41 + 1) + *(a1 + 24);
    v51 = v42 + *(a1 + 32);
    v52 = *(v4 + 40);
    v53 = *(v4 + 44);
    v54 = *(v4 + 48);
    v55 = *(v4 + 56);
    v56 = *(v4 + 64);
    v57 = (*(a1 + 4) + *(&v43 + 1)) - *(v4 + 36);
    *a1 = (*a1 + *&v43) - *(v4 + 32);
    *(a1 + 4) = v57;
    *(a1 + 8) = v47 - v52;
    *(a1 + 12) = v48 - v53;
    *(a1 + 16) = v49 - v54;
    *(a1 + 24) = v50 - v55;
    *(a1 + 32) = v51 - v56;
    swift_beginAccess();
    *(v4 + 96) = v38;
    *(v4 + 100) = v37;
    *(v4 + 104) = v40;
    *(v4 + 108) = v39;
    *(v4 + 112) = v41;
    *(v4 + 128) = v42;
    *(v4 + 88) = a3;
    v58 = *(v4 + 80);
    if (v58 > 0.0)
    {
      *(v4 + 88) = v58 * (round(a3 / v58) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 144);
  v8 = *(v3 + 152);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 269) > 1u)
  {
    if (*(v3 + 269) != 2)
    {
      goto LABEL_11;
    }

    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 136))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 136) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

  if (!*(v3 + 269))
  {
    *(v3 + 136) = a3;
    v10 = 1;
LABEL_10:
    *(v3 + 269) = v10;
    goto LABEL_11;
  }

  *(v3 + 269) = 2;
  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    *(v3 + 152) = v8 - *(v3 + 136) + a3;
    *(v3 + 136) = a3;
LABEL_19:
    swift_beginAccess();
    v36 = *(v3 + 208);
    v37 = *(v3 + 240);
    v127 = *(v3 + 224);
    *v128 = v37;
    v38 = *(v3 + 176);
    v123 = *(v3 + 160);
    v124 = v38;
    v39 = *(v3 + 208);
    v41 = *(v3 + 160);
    v40 = *(v3 + 176);
    v125 = *(v3 + 192);
    v126 = v39;
    v42 = *(v3 + 240);
    v133 = v127;
    v134 = v42;
    *&v128[16] = *(v3 + 256);
    v129 = v41;
    v130 = v40;
    v43 = *&v128[8];
    v135 = *(v3 + 256);
    v131 = v125;
    v132 = v36;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v123, &v116, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(a1, &v129);
    v44 = v43 + *(a1 + 88);
    _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(a1 + 96, v135);
    outlined destroy of Slice<IndexSet>(&v123, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    swift_beginAccess();
    v45 = *(v3 + 80);
    v46 = *(v3 + 112);
    v133 = *(v3 + 96);
    v134 = v46;
    v47 = *(v3 + 48);
    v129 = *(v3 + 32);
    v130 = v47;
    v48 = *(v3 + 80);
    v50 = *(v3 + 32);
    v49 = *(v3 + 48);
    v131 = *(v3 + 64);
    v132 = v48;
    v51 = *(v3 + 112);
    v120 = v133;
    v121 = v51;
    v135 = *(v3 + 128);
    v116 = v50;
    v117 = v49;
    v52 = *(&v134 + 2);
    v122 = *(v3 + 128);
    v118 = v131;
    v119 = v45;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v129, &v110, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(a1, &v116);
    v53 = v122;
    *(a1 + 88) = v44 - v52;
    _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(a1 + 96, v53);
    v54 = &v129;
    v55 = type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>;
    goto LABEL_20;
  }

LABEL_11:
  v13 = *(v3 + 136);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 288);

  v107[0] = v14;
  v107[1] = AGCreateWeakAttribute();
  v108 = 0;
  v109 = v15;
  v16 = *(v4 + 296);
  if (v16)
  {
    v17 = *(v4 + 304);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>, MEMORY[0x1E69E6720]);
    *(&v130 + 1) = v20;
    *&v129 = v16;
    *(&v129 + 1) = v17;
    specialized Dictionary.subscript.setter(&v129, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 80);
  v24 = *(v4 + 112);
  v133 = *(v4 + 96);
  v134 = v24;
  v25 = *(v4 + 48);
  v129 = *(v4 + 32);
  v130 = v25;
  v26 = *(v4 + 80);
  v28 = *(v4 + 32);
  v27 = *(v4 + 48);
  v131 = *(v4 + 64);
  v132 = v26;
  v29 = *(v4 + 112);
  v120 = v133;
  v121 = v29;
  v116 = v28;
  v117 = v27;
  v135 = *(v4 + 128);
  v122 = *(v4 + 128);
  v118 = v131;
  v119 = v23;
  type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
  if (v30 == MEMORY[0x1E69E63B0])
  {
    *&v100 = v116;
    v35 = *(*v22 + 120);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v129, &v110, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v35(&v110, &v100, v107, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *&v123 = v110;
    BYTE8(v123) = BYTE8(v110);
  }

  else
  {
    v31 = v30;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v31 == v32)
    {
      v57 = v32;
      v100 = v116;
      v101 = v117;
      v58 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v129, &v110, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
      v59 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v58(&v110, &v100, v107, v57, v59, v21);
      v123 = v110;
      v124 = v111;
      LOBYTE(v125) = v112;
    }

    else
    {
      v33 = *(*v22 + 120);

      _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v129, &v110, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
      v34 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
      v33(&v123, &v116, v107, v31, v34, v21);
    }
  }

  outlined destroy of Slice<IndexSet>(&v129, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  if (*&v128[16])
  {
    v83 = v127;
    v84 = *v128;
    v79 = v123;
    v80 = v124;
    v81 = v125;
    v82 = v126;
    v88 = v123;
    v89 = v124;
    v85 = *&v128[16];
    v93 = *v128;
    v91 = v126;
    v92 = v127;
    v90 = v125;
    v60 = *&v128[8];
    v87 = *&v128[20];
    v86 = *&v128[12];
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v109, a2 | ((HIDWORD(a2) & 1) << 32), v21);
    *(v4 + 24) = v107[0];

    v112 = v90;
    v113 = v91;
    v114 = v92;
    *v115 = v93;
    v110 = v88;
    v111 = v89;
    *&v115[8] = v60;
    *&v115[12] = v86;
    *&v115[20] = v87;
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(a1, &v110);
    v61 = v60 + *(a1 + 88);
    _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(a1 + 96, *&v115[16]);
    v62 = *(v4 + 80);
    v63 = *(v4 + 112);
    v97 = *(v4 + 96);
    v98 = v63;
    v64 = *(v4 + 48);
    v94[0] = *(v4 + 32);
    v94[1] = v64;
    v65 = *(v4 + 80);
    v67 = *(v4 + 32);
    v66 = *(v4 + 48);
    v95 = *(v4 + 64);
    v96 = v65;
    v68 = *(v4 + 112);
    v114 = v97;
    *v115 = v68;
    v99 = *(v4 + 128);
    v110 = v67;
    v111 = v66;
    v69 = *(&v98 + 2);
    *&v115[16] = *(v4 + 128);
    v112 = v95;
    v113 = v62;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v94, &v100, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(a1, &v110);
    v70 = *&v115[16];
    *(a1 + 88) = v61 - v69;
    _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAA16_ShapeStyle_PackV6EffectV4KindO0C4DataOG_Tt1B5(a1 + 96, v70);
    outlined destroy of Slice<IndexSet>(v94, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    swift_beginAccess();
    v71 = *(v4 + 240);
    v104 = *(v4 + 224);
    v105 = v71;
    v106 = *(v4 + 256);
    v72 = *(v4 + 176);
    v100 = *(v4 + 160);
    v101 = v72;
    v73 = *(v4 + 208);
    v102 = *(v4 + 192);
    v103 = v73;
    v110 = v79;
    v111 = v80;
    *&v115[16] = v85;
    v114 = v83;
    *v115 = v84;
    v112 = v81;
    v113 = v82;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v110, v78, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    v74 = v91;
    *(v4 + 192) = v90;
    *(v4 + 208) = v74;
    *(v4 + 224) = v92;
    *(v4 + 240) = v93;
    v75 = v89;
    *(v4 + 160) = v88;
    *(v4 + 176) = v75;
    *(v4 + 248) = v60;
    *(v4 + 252) = v86;
    *(v4 + 260) = v87;
    outlined destroy of Slice<IndexSet>(&v100, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
    *(v4 + 152) = a3;
    v76 = *(v4 + 144);
    if (v76 > 0.0)
    {
      v77 = round(a3 / v76);
      outlined destroy of Slice<IndexSet>(&v79, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
      *(v4 + 152) = (v77 + 1.0) * *(v4 + 144);
      return 0;
    }

    v55 = type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?;
    v54 = &v79;
LABEL_20:
    outlined destroy of Slice<IndexSet>(v54, v55);
    return 0;
  }

  v114 = v127;
  *v115 = *v128;
  *&v115[16] = *&v128[16];
  v110 = v123;
  v111 = v124;
  v112 = v125;
  v113 = v126;
  outlined destroy of Slice<IndexSet>(&v110, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
  return 1;
}

{
  v4 = v3;
  v7 = *(v3 + 128);
  v8 = *(v3 + 136);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_23;
  }

  if (*(v3 + 233) > 1u)
  {
    if (*(v3 + 233) != 2)
    {
      goto LABEL_11;
    }

    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 120))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 120) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

  if (!*(v3 + 233))
  {
    *(v3 + 120) = a3;
    v10 = 1;
LABEL_10:
    *(v3 + 233) = v10;
    goto LABEL_11;
  }

  *(v3 + 233) = 2;
  swift_beginAccess();
  if ((static CoreTesting.isRunning & 1) == 0)
  {
    *(v3 + 136) = v8 - *(v3 + 120) + a3;
    *(v3 + 120) = a3;
LABEL_23:
    swift_beginAccess();
    v42 = *(v3 + 192);
    v76 = *(v3 + 176);
    v77 = v42;
    v78 = *(v3 + 208);
    v79 = *(v3 + 224);
    v43 = *(v3 + 160);
    v74 = *(v3 + 144);
    v75 = v43;
    v97 = v79;
    v94 = v76;
    v95 = v42;
    v96 = v78;
    v92 = v74;
    v93 = v43;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v74, &v86);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(a1, &v92);
    v82 = v94;
    v83 = v95;
    v84 = v96;
    v85 = v97;
    v80 = v92;
    v81 = v93;
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v80);
    swift_beginAccess();
    v44 = *(v3 + 80);
    v88 = *(v3 + 64);
    v89 = v44;
    v90 = *(v3 + 96);
    v91 = *(v3 + 112);
    v45 = *(v3 + 48);
    v86 = *(v3 + 32);
    v87 = v45;
    v73 = v91;
    v70 = v88;
    v71 = v44;
    v72 = v90;
    v68 = v86;
    v69 = v45;
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v86, &v92);
    specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(a1, &v68);
    v94 = v70;
    v95 = v71;
    v96 = v72;
    v97 = v73;
    v92 = v68;
    v93 = v69;
    v41 = &v92;
    goto LABEL_24;
  }

LABEL_11:
  v13 = *(v3 + 120);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 256);

  v65[0] = v14;
  v65[1] = AGCreateWeakAttribute();
  v66 = 0;
  v67 = v15;
  v16 = *(v4 + 264);
  if (v16)
  {
    v17 = *(v4 + 272);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    *(&v93 + 1) = v20;
    *&v92 = v16;
    *(&v92 + 1) = v17;
    specialized Dictionary.subscript.setter(&v92, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 80);
  v24 = *(v4 + 48);
  v94 = *(v4 + 64);
  v95 = v23;
  v25 = *(v4 + 80);
  v96 = *(v4 + 96);
  v26 = *(v4 + 48);
  v92 = *(v4 + 32);
  v93 = v26;
  v76 = v94;
  v77 = v25;
  v78 = *(v4 + 96);
  v97 = *(v4 + 112);
  v79 = *(v4 + 112);
  v74 = v92;
  v75 = v24;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v27 == &type metadata for _ShapeStyle_Pack.Fill.AnimatableData)
  {
    v59 = v74;
    v60 = v75;
    v30 = *(*v22 + 120);

    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v92, &v68);
    v31 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v30(&v68, &v59, v65, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v31, v21);
    v80 = v68;
    v81 = v69;
    LOBYTE(v82) = v70;
  }

  else
  {
    v28 = *(*v22 + 120);

    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v92, &v68);
    v29 = lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData();
    v28(&v80, &v74, v65, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v29, v21);
  }

  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v92);
  if (v85 == 255)
  {

    v70 = v82;
    v71 = v83;
    v72 = v84;
    v73 = v85;
    v68 = v80;
    v69 = v81;
    outlined destroy of HitTestableEvent?(&v68, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?);
    return 1;
  }

  v88 = v82;
  v89 = v83;
  v90 = v84;
  v91 = v85;
  v86 = v80;
  v87 = v81;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v67, a2 | ((HIDWORD(a2) & 1) << 32), v21);
  *(v4 + 24) = v65[0];

  specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(a1, &v86);
  v32 = *(v4 + 80);
  v53 = *(v4 + 64);
  v54 = v32;
  v55 = *(v4 + 96);
  v56 = *(v4 + 112);
  v33 = *(v4 + 48);
  v52[0] = *(v4 + 32);
  v52[1] = v33;
  v73 = v56;
  v70 = v53;
  v71 = v32;
  v72 = v55;
  v68 = v52[0];
  v69 = v33;
  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v52, &v59);
  specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(a1, &v68);
  v57[2] = v70;
  v57[3] = v71;
  v57[4] = v72;
  v58 = v73;
  v57[0] = v68;
  v57[1] = v69;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v57);
  swift_beginAccess();
  v61 = v88;
  v62 = v89;
  v63 = v90;
  v64 = v91;
  v59 = v86;
  v60 = v87;
  v34 = *(v4 + 192);
  v70 = *(v4 + 176);
  v71 = v34;
  v72 = *(v4 + 208);
  v73 = *(v4 + 224);
  v35 = *(v4 + 160);
  v68 = *(v4 + 144);
  v69 = v35;
  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v59, &v46);
  v36 = v62;
  *(v4 + 176) = v61;
  *(v4 + 192) = v36;
  *(v4 + 208) = v63;
  *(v4 + 224) = v64;
  v37 = v60;
  *(v4 + 144) = v59;
  *(v4 + 160) = v37;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v68);
  *(v4 + 136) = a3;
  v38 = *(v4 + 128);
  if (v38 <= 0.0)
  {
    v48 = v88;
    v49 = v89;
    v50 = v90;
    v51 = v91;
    v46 = v86;
    v47 = v87;
    v41 = &v46;
LABEL_24:
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v41);
    return 0;
  }

  v48 = v88;
  v49 = v89;
  v50 = v90;
  v51 = v91;
  v39 = round(a3 / v38);
  v46 = v86;
  v47 = v87;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v46);
  *(v4 + 136) = (v39 + 1.0) * *(v4 + 128);
  return 0;
}

{
  v4 = v3;
  v7 = *(v3 + 88);
  v8 = *(v3 + 96);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_22;
  }

  if (*(v3 + 153) <= 1u)
  {
    if (!*(v3 + 153))
    {
      *(v3 + 80) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 153) = v10;
      goto LABEL_11;
    }

    *(v3 + 153) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 96) = v8 - *(v3 + 80) + a3;
    *(v3 + 80) = a3;
LABEL_22:
    swift_beginAccess();
    v40 = *(v3 + 136);
    v41 = *(v3 + 144);
    v42 = *(v3 + 120);
    v53 = *(v3 + 104);
    v54 = v42;
    v55 = v40;
    v56 = v41;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)(a1, &v53);
    swift_beginAccess();
    v43 = *(v3 + 64);
    v44 = *(v3 + 72);
    v45 = *(v3 + 48);
    v53 = *(v3 + 32);
    v54 = v45;
    v55 = v43;
    v56 = v44;
    specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.-= infix(_:_:)(a1, &v53);
    return 0;
  }

  if (*(v3 + 153) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 80))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 80) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 80);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 176);

  v62[0] = v14;
  v62[1] = AGCreateWeakAttribute();
  v63 = 0;
  v64 = v15;
  v16 = *(v4 + 184);
  if (v16)
  {
    v17 = *(v4 + 192);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
    *(&v54 + 1) = v20;
    *&v53 = v16;
    *(&v53 + 1) = v17;
    specialized Dictionary.subscript.setter(&v53, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 32);
  v24 = *(v4 + 40);
  v25 = *(v4 + 48);
  v26 = *(v4 + 72);
  v50[0] = v23;
  v50[1] = v24;
  v50[2] = v25;
  v46 = *(v4 + 56);
  v51 = v46;
  v52 = v26;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v27 == &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    v47[0] = v23;
    v47[1] = v24;
    v47[2] = v25;
    v47[3] = v46;
    v30 = *(*v22 + 120);
    v31 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

    v30(v48, v47, v62, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v31, v21);
    v53 = v48[0];
    v54 = v48[1];
    LOBYTE(v55) = v49;
  }

  else
  {
    v28 = *(*v22 + 120);
    v29 = lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData();

    v28(&v53, v50, v62, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v29, v21);
  }

  if (v57)
  {

    return 1;
  }

  v58 = v53;
  v59 = v54;
  v60 = v55;
  v61 = v56 & 1;
  specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v64, a2 | ((HIDWORD(a2) & 1) << 32), v21);
  *(v4 + 24) = v62[0];

  specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)(a1, &v58);
  v33 = *(v4 + 64);
  v34 = *(v4 + 72);
  v35 = *(v4 + 48);
  v53 = *(v4 + 32);
  v54 = v35;
  v55 = v33;
  v56 = v34;
  specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.-= infix(_:_:)(a1, &v53);
  swift_beginAccess();
  v36 = v60;
  v37 = v61;
  v38 = v59;
  *(v4 + 104) = v58;
  *(v4 + 120) = v38;
  *(v4 + 136) = v36;
  *(v4 + 144) = v37;
  *(v4 + 96) = a3;
  v39 = *(v4 + 88);
  if (v39 > 0.0)
  {
    *(v4 + 96) = v39 * (round(a3 / v39) + 1.0);
  }

  return 0;
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v42 = vaddq_f32(*(v3 + 80), *a1);
    v40 = vadd_f32(*(v3 + 96), *(a1 + 16));
    swift_beginAccess();
    result = 0;
    v41 = *(v3 + 48);
    *a1 = vsubq_f32(v42, *(v3 + 32));
    *(a1 + 16) = vsub_f32(v40, v41);
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v46[0] = v14;
  v46[1] = AGCreateWeakAttribute();
  v47 = 0;
  v48 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>, MEMORY[0x1E69E6720]);
    v45 = v20;
    *&v43 = v16;
    *(&v43 + 1) = v17;
    specialized Dictionary.subscript.setter(&v43, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v43 = *(v4 + 32);
  v44 = *(v4 + 48);

  v22 = specialized Animation.animate<A>(value:time:context:)(&v43, v46, v21, v13);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (v28)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v48, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v46[0];

    v30 = *(a1 + 8) + *&v24;
    v31 = *(a1 + 12) + *(&v24 + 1);
    v32 = *(a1 + 16) + *&v26;
    v33 = *(a1 + 20) + *(&v26 + 1);
    v34 = *(v4 + 40);
    v35 = *(v4 + 44);
    v36 = *(v4 + 48);
    v37 = *(v4 + 52);
    v38 = (*(a1 + 4) + *(&v22 + 1)) - *(v4 + 36);
    *a1 = (*a1 + *&v22) - *(v4 + 32);
    *(a1 + 4) = v38;
    *(a1 + 8) = v30 - v34;
    *(a1 + 12) = v31 - v35;
    *(a1 + 16) = v32 - v36;
    *(a1 + 20) = v33 - v37;
    swift_beginAccess();
    *(v4 + 80) = v22;
    *(v4 + 88) = v24;
    *(v4 + 96) = v26;
    *(v4 + 72) = a3;
    v39 = *(v4 + 64);
    if (v39 > 0.0)
    {
      *(v4 + 72) = v39 * (round(a3 / v39) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 144);
  v8 = *(v3 + 152);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_19;
  }

  if (*(v3 + 269) <= 1u)
  {
    if (!*(v3 + 269))
    {
      *(v3 + 136) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 269) = v10;
      goto LABEL_11;
    }

    *(v3 + 269) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 152) = v8 - *(v3 + 136) + a3;
    *(v3 + 136) = a3;
LABEL_19:
    swift_beginAccess();
    v32 = *(v3 + 160);
    v33 = *(v3 + 216);
    v441 = *(v3 + 200);
    v442 = v33;
    v34 = *(v3 + 248);
    v443 = *(v3 + 232);
    v444 = v34;
    v35 = *(v3 + 184);
    v439 = *(v3 + 168);
    v440 = v35;
    v36 = v32 + *a1;
    v37 = *(a1 + 56);
    v447 = *(a1 + 40);
    v448 = v37;
    v38 = *(a1 + 88);
    v449 = *(a1 + 72);
    v450 = v38;
    v39 = *(a1 + 24);
    v445 = *(a1 + 8);
    v446 = v39;
    v383 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v375 = &v373;
    v40 = MEMORY[0x1E69E7DE0];
    v41 = *(MEMORY[0x1E69E7DE0] - 8);
    v42 = v41[8];
    v43 = MEMORY[0x1EEE9AC00](v383);
    v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
    v45 = v41[2];
    v46 = v45(&v373 - v44, &v445, v40, v43);
    v378 = v41 + 2;
    v379 = v4;
    v47 = MEMORY[0x1EEE9AC00](v46);
    v377 = a1;
    v45(&v373 - v44, &v439, v40, v47);
    v381 = *(v383 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48 = v41[1];
    v48(&v373 - v44, v40);
    v49 = (v48)(&v373 - v44, v40);
    v375 = &v373;
    *&v457 = &v451;
    v384 = v42;
    v50 = MEMORY[0x1EEE9AC00](v49);
    v380 = v44;
    v51 = v45(&v373 - v44, (&v445 + 8), v40, v50);
    v374 = &v373;
    v52 = MEMORY[0x1EEE9AC00](v51);
    v45(&v373 - v44, (&v439 + 8), v40, v52);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(&v373 - v44, v40);
    v53 = (v48)(&v373 - v44, v40);
    v375 = &v373;
    *(&v457 + 1) = &v451 + 8;
    v373 = &v452;
    v54 = MEMORY[0x1EEE9AC00](v53);
    v55 = v380;
    v376 = v45;
    v56 = v45((&v373 - v380), &v446, v40, v54);
    v374 = &v373;
    v57 = MEMORY[0x1EEE9AC00](v56);
    v45((&v373 - v55), &v440, v40, v57);
    v58 = v373;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v382 = v41 + 1;
    v48((&v373 - v55), v40);
    v59 = (v48)(&v373 - v55, v40);
    v375 = &v373;
    *&v458 = v58;
    v60 = MEMORY[0x1EEE9AC00](v59);
    v61 = v376;
    v62 = (v376)(&v373 - v55, &v446 + 8, v40, v60);
    v374 = &v373;
    v63 = MEMORY[0x1EEE9AC00](v62);
    v61(&v373 - v55, &v440 + 8, v40, v63);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48((&v373 - v55), v40);
    v64 = (v48)(&v373 - v55, v40);
    v375 = &v373;
    *(&v458 + 1) = &v452 + 8;
    v65 = MEMORY[0x1EEE9AC00](v64);
    v66 = (v61)(&v373 - v55, &v447, v40, v65);
    v67 = MEMORY[0x1EEE9AC00](v66);
    v61(&v373 - v55, &v441, v40, v67);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48((&v373 - v55), v40);
    v68 = (v48)(&v373 - v55, v40);
    v375 = &v373;
    *&v459 = &v453;
    v69 = MEMORY[0x1EEE9AC00](v68);
    v70 = v380;
    v71 = (&v373 - v380);
    v72 = (v61)(&v373 - v380, &v447 + 8, v40, v69);
    v374 = &v373;
    v73 = MEMORY[0x1EEE9AC00](v72);
    v61(&v373 - v70, &v441 + 8, v40, v73);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48((&v373 - v70), v40);
    v74 = (v48)(v71, v40);
    v375 = &v373;
    *(&v459 + 1) = &v453 + 8;
    v75 = MEMORY[0x1EEE9AC00](v74);
    v76 = v380;
    v77 = (&v373 - v380);
    v78 = (v61)(&v373 - v380, &v448, v40, v75);
    v374 = &v373;
    v79 = MEMORY[0x1EEE9AC00](v78);
    v61(&v373 - v76, &v442, v40, v79);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48((&v373 - v76), v40);
    v80 = (v48)(v77, v40);
    v375 = &v373;
    *&v460 = &v454;
    v81 = MEMORY[0x1EEE9AC00](v80);
    v82 = v380;
    v83 = (v61)(&v373 - v380, &v448 + 8, v40, v81);
    v374 = &v373;
    v84 = MEMORY[0x1EEE9AC00](v83);
    v61(&v373 - v82, &v442 + 8, v40, v84);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48((&v373 - v82), v40);
    v85 = (v48)(&v373 - v82, v40);
    v375 = &v373;
    *(&v460 + 1) = &v454 + 8;
    v86 = MEMORY[0x1EEE9AC00](v85);
    v87 = (v61)(&v373 - v82, &v449, v40, v86);
    v374 = &v373;
    v88 = MEMORY[0x1EEE9AC00](v87);
    v61(&v373 - v82, &v443, v40, v88);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48((&v373 - v82), v40);
    v89 = (v48)(&v373 - v82, v40);
    v375 = &v373;
    *&v461 = &v455;
    v90 = MEMORY[0x1EEE9AC00](v89);
    v91 = (v61)(&v373 - v82, &v449 + 8, v40, v90);
    v374 = &v373;
    v92 = MEMORY[0x1EEE9AC00](v91);
    v61(&v373 - v82, &v443 + 8, v40, v92);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48((&v373 - v82), v40);
    v93 = (v48)(&v373 - v82, v40);
    v375 = &v373;
    *(&v461 + 1) = &v455 + 8;
    v94 = MEMORY[0x1EEE9AC00](v93);
    v95 = v380;
    v96 = (&v373 - v380);
    v97 = (v61)(&v373 - v380, &v450, v40, v94);
    v374 = &v373;
    v98 = MEMORY[0x1EEE9AC00](v97);
    v99 = (&v373 - v95);
    v100 = (&v373 - v95);
    v101 = v61;
    v61(v100, &v444, v40, v98);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v48(v99, v40);
    v102 = (v48)(v96, v40);
    v375 = &v373;
    *&v462 = &v456;
    v103 = MEMORY[0x1EEE9AC00](v102);
    v104 = v380;
    v105 = (&v373 - v380);
    v106 = v101(&v373 - v380, &v450 + 8, v40, v103);
    v374 = &v373;
    v107 = MEMORY[0x1EEE9AC00](v106);
    v101(&v373 - v104, &v444 + 8, v40, v107);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v383 = v48;
    v48((&v373 - v104), v40);
    v48(v105, v40);
    *(&v462 + 1) = &v456 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v457, &v403);
    v108 = v406;
    v109 = v377;
    *(v377 + 40) = v405;
    *(v109 + 56) = v108;
    v110 = v408;
    *(v109 + 72) = v407;
    *(v109 + 88) = v110;
    v111 = v404;
    *(v109 + 8) = v403;
    *(v109 + 24) = v111;
    v112 = v379;
    v113 = swift_beginAccess();
    v375 = &v373;
    v114 = *(v112 + 4);
    v115 = *(v112 + 11);
    v417 = *(v112 + 9);
    v418 = v115;
    v116 = *(v112 + 15);
    v419 = *(v112 + 13);
    v420 = v116;
    v117 = *(v112 + 7);
    v415 = *(v112 + 5);
    v416 = v117;
    *v109 = v36 - v114;
    v118 = *(v109 + 56);
    v423 = *(v109 + 40);
    v424 = v118;
    v119 = *(v109 + 88);
    v425 = *(v109 + 72);
    v426 = v119;
    v120 = *(v109 + 24);
    v421 = *(v109 + 8);
    v422 = v120;
    v121 = MEMORY[0x1EEE9AC00](v113);
    v122 = v380;
    v123 = v376;
    v124 = (v376)(&v373 - v380, &v421, v40, v121);
    v125 = MEMORY[0x1EEE9AC00](v124);
    v123(&v373 - v122, &v415, v40, v125);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v126 = v383;
    (v383)(&v373 - v122, v40);
    v127 = v126(&v373 - v122, v40);
    v379 = &v373;
    *&v433 = &v427;
    v128 = MEMORY[0x1EEE9AC00](v127);
    v129 = v123;
    v130 = (v123)(&v373 - v122, &v421 + 8, v40, v128);
    v375 = &v373;
    v131 = MEMORY[0x1EEE9AC00](v130);
    v123(&v373 - v122, (&v415 + 8), v40, v131);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v132 = v383;
    (v383)(&v373 - v122, v40);
    v133 = v132(&v373 - v122, v40);
    v379 = &v373;
    *(&v433 + 1) = &v427 + 8;
    v134 = MEMORY[0x1EEE9AC00](v133);
    v135 = v380;
    v136 = (v123)(&v373 - v380, &v422, v40, v134);
    v375 = &v373;
    v137 = MEMORY[0x1EEE9AC00](v136);
    v123(&v373 - v135, &v416, v40, v137);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v138 = v383;
    (v383)(&v373 - v135, v40);
    v139 = v138(&v373 - v135, v40);
    v379 = &v373;
    *&v434 = &v428;
    v140 = MEMORY[0x1EEE9AC00](v139);
    v141 = v129(&v373 - v135, &v422 + 8, v40, v140);
    v375 = &v373;
    v142 = MEMORY[0x1EEE9AC00](v141);
    v129(&v373 - v135, &v416 + 8, v40, v142);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v143 = v383;
    (v383)(&v373 - v135, v40);
    v144 = v143(&v373 - v135, v40);
    v379 = &v373;
    *(&v434 + 1) = &v428 + 8;
    v145 = MEMORY[0x1EEE9AC00](v144);
    v146 = v129(&v373 - v135, &v423, v40, v145);
    v375 = &v373;
    v147 = MEMORY[0x1EEE9AC00](v146);
    v129(&v373 - v135, &v417, v40, v147);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v148 = v383;
    (v383)(&v373 - v135, v40);
    v149 = v148(&v373 - v135, v40);
    v379 = &v373;
    *&v435 = &v429;
    v150 = MEMORY[0x1EEE9AC00](v149);
    v151 = v129(&v373 - v135, &v423 + 8, v40, v150);
    v375 = &v373;
    v152 = MEMORY[0x1EEE9AC00](v151);
    v129(&v373 - v135, &v417 + 8, v40, v152);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v153 = v383;
    (v383)(&v373 - v135, v40);
    v154 = v153(&v373 - v135, v40);
    v379 = &v373;
    *(&v435 + 1) = &v429 + 8;
    v155 = MEMORY[0x1EEE9AC00](v154);
    v156 = v129(&v373 - v135, &v424, v40, v155);
    v375 = &v373;
    v157 = MEMORY[0x1EEE9AC00](v156);
    v129(&v373 - v135, &v418, v40, v157);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v158 = v383;
    (v383)(&v373 - v135, v40);
    v159 = v158(&v373 - v135, v40);
    v379 = &v373;
    *&v436 = &v430;
    v160 = MEMORY[0x1EEE9AC00](v159);
    v161 = v129(&v373 - v135, &v424 + 8, v40, v160);
    v375 = &v373;
    v162 = MEMORY[0x1EEE9AC00](v161);
    v129(&v373 - v135, &v418 + 8, v40, v162);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v163 = v383;
    (v383)(&v373 - v135, v40);
    v164 = v163(&v373 - v135, v40);
    v379 = &v373;
    *(&v436 + 1) = &v430 + 8;
    v165 = MEMORY[0x1EEE9AC00](v164);
    v166 = v129(&v373 - v135, &v425, v40, v165);
    v375 = &v373;
    v167 = MEMORY[0x1EEE9AC00](v166);
    v129(&v373 - v135, &v419, v40, v167);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v168 = v383;
    (v383)(&v373 - v135, v40);
    v169 = v168(&v373 - v135, v40);
    v379 = &v373;
    *&v437 = &v431;
    v170 = MEMORY[0x1EEE9AC00](v169);
    v171 = v129(&v373 - v135, &v425 + 8, v40, v170);
    v375 = &v373;
    v172 = MEMORY[0x1EEE9AC00](v171);
    v129(&v373 - v135, &v419 + 8, v40, v172);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v173 = v383;
    (v383)(&v373 - v135, v40);
    v174 = v173(&v373 - v135, v40);
    v379 = &v373;
    *(&v437 + 1) = &v431 + 8;
    v175 = MEMORY[0x1EEE9AC00](v174);
    v176 = v129(&v373 - v135, &v426, v40, v175);
    v375 = &v373;
    v177 = MEMORY[0x1EEE9AC00](v176);
    v129(&v373 - v135, &v420, v40, v177);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v178 = v383;
    (v383)(&v373 - v135, v40);
    v179 = v178(&v373 - v135, v40);
    v379 = &v373;
    *&v438 = &v432;
    v180 = MEMORY[0x1EEE9AC00](v179);
    v181 = v129(&v373 - v135, &v426 + 8, v40, v180);
    v375 = &v373;
    v182 = MEMORY[0x1EEE9AC00](v181);
    v129(&v373 - v135, &v420 + 8, v40, v182);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v178(&v373 - v135, v40);
    v178(&v373 - v135, v40);
    *(&v438 + 1) = &v432 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v433, v410);
    result = 0;
    v184 = *&v410[48];
    v185 = v377;
    *(v377 + 40) = *&v410[32];
    *(v185 + 56) = v184;
    v186 = *&v410[80];
    *(v185 + 72) = *&v410[64];
    *(v185 + 88) = v186;
    v187 = *&v410[16];
    *(v185 + 8) = *v410;
    *(v185 + 24) = v187;
    return result;
  }

  if (*(v3 + 269) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 136))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 136) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v3 + 136);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 288);

  v412[0] = v14;
  v412[1] = AGCreateWeakAttribute();
  v413 = 0;
  v414 = v15;
  v16 = *(v4 + 296);
  if (v16)
  {
    v17 = *(v4 + 304);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>, MEMORY[0x1E69E6720]);
    *&v410[24] = v20;
    *v410 = v16;
    *&v410[8] = v17;
    specialized Dictionary.subscript.setter(v410, v19);
  }

  v21 = a3 - v13;
  swift_beginAccess();
  v22 = *(v4 + 16);
  swift_beginAccess();
  v23 = *(v4 + 112);
  v407 = *(v4 + 96);
  v408 = v23;
  v409 = *(v4 + 128);
  v24 = *(v4 + 48);
  v403 = *(v4 + 32);
  v404 = v24;
  v25 = *(v4 + 80);
  v405 = *(v4 + 64);
  v406 = v25;
  type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
  if (v26 == MEMORY[0x1E69E63B0])
  {
    *&v451 = v403;
    v31 = *(*v22 + 120);

    v31(&v457, &v451, v412, MEMORY[0x1E69E63B0], &protocol witness table for Double, v21);
    *v410 = v457;
    v410[8] = BYTE8(v457);
  }

  else
  {
    v27 = v26;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v27 == v28)
    {
      v188 = v28;
      v451 = v403;
      v452 = v404;
      v189 = *(*v22 + 120);
      v190 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);

      v189(&v457, &v451, v412, v188, v190, v21);
      *v410 = v457;
      *&v410[16] = v458;
      v410[32] = v459;
    }

    else
    {
      v29 = *(*v22 + 120);
      v30 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);

      v29(v410, &v403, v412, v27, v30, v21);
    }
  }

  if (v411)
  {

    return 1;
  }

  else
  {
    v191 = *v410;
    v453 = *&v410[40];
    v454 = *&v410[56];
    v455 = *&v410[72];
    v456 = *&v410[88];
    v451 = *&v410[8];
    v452 = *&v410[24];
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v414, a2 | ((HIDWORD(a2) & 1) << 32), v21);
    *(v4 + 24) = v412[0];

    v192 = v191 + *a1;
    v193 = *(a1 + 56);
    v435 = *(a1 + 40);
    v436 = v193;
    v194 = *(a1 + 88);
    v437 = *(a1 + 72);
    v438 = v194;
    v195 = *(a1 + 24);
    v433 = *(a1 + 8);
    v434 = v195;
    v429 = v453;
    v430 = v454;
    v431 = v455;
    v432 = v456;
    v427 = v451;
    v428 = v452;
    v384 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v375 = &v373;
    v196 = MEMORY[0x1E69E7DE0];
    v197 = *(*(MEMORY[0x1E69E7DE0] - 8) + 64);
    v198 = MEMORY[0x1EEE9AC00](v384);
    v382 = v197;
    v199 = &v373 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
    v201 = v200;
    v202 = (v200 + 16);
    v203 = *(v200 + 16);
    v204 = v203(v199, &v433, v196, v198);
    v376 = v202;
    v383 = v203;
    v379 = v4;
    v205 = MEMORY[0x1EEE9AC00](v204);
    v377 = a1;
    v206 = (v197 + 15) & 0xFFFFFFFFFFFFFFF0;
    v203(v199, &v427, v196, v205);
    v384 = *(v384 + 8);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207 = *(v201 + 8);
    v378 = (v201 + 8);
    v207(v199, v196);
    v208 = (v207)(v199, v196);
    v375 = &v373;
    *&v445 = &v439;
    v209 = MEMORY[0x1EEE9AC00](v208);
    v210 = v206;
    v381 = v206;
    v211 = &v373 - v206;
    v212 = &v373 - v206;
    v213 = v383;
    v214 = (v383)(v212, &v433 + 8, v196, v209);
    v374 = &v373;
    v215 = MEMORY[0x1EEE9AC00](v214);
    v213(&v373 - v210, &v427 + 8, v196, v215);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207(&v373 - v210, v196);
    v216 = (v207)(v211, v196);
    v375 = &v373;
    *(&v445 + 1) = &v439 + 8;
    v217 = MEMORY[0x1EEE9AC00](v216);
    v218 = v381;
    v219 = &v373 - v381;
    v220 = (v213)(&v373 - v381, &v434, v196, v217);
    v374 = &v373;
    v221 = MEMORY[0x1EEE9AC00](v220);
    v213(&v373 - v218, &v428, v196, v221);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207(&v373 - v218, v196);
    v222 = (v207)(v219, v196);
    v375 = &v373;
    *&v446 = &v440;
    v223 = MEMORY[0x1EEE9AC00](v222);
    v224 = v381;
    v225 = &v373 - v381;
    v226 = (v213)(&v373 - v381, &v434 + 8, v196, v223);
    v374 = &v373;
    v227 = MEMORY[0x1EEE9AC00](v226);
    v213(&v373 - v224, &v428 + 8, v196, v227);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207(&v373 - v224, v196);
    v228 = (v207)(v225, v196);
    v375 = &v373;
    *(&v446 + 1) = &v440 + 8;
    v229 = MEMORY[0x1EEE9AC00](v228);
    v230 = v381;
    v231 = (v213)(&v373 - v381, &v435, v196, v229);
    v374 = &v373;
    v232 = MEMORY[0x1EEE9AC00](v231);
    v213(&v373 - v230, &v429, v196, v232);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207(&v373 - v230, v196);
    v233 = (v207)(&v373 - v230, v196);
    v375 = &v373;
    *&v447 = &v441;
    v234 = MEMORY[0x1EEE9AC00](v233);
    v235 = (v213)(&v373 - v230, &v435 + 8, v196, v234);
    v374 = &v373;
    v236 = MEMORY[0x1EEE9AC00](v235);
    v213(&v373 - v230, &v429 + 8, v196, v236);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207(&v373 - v230, v196);
    v237 = (v207)(&v373 - v230, v196);
    v375 = &v373;
    *(&v447 + 1) = &v441 + 8;
    v238 = MEMORY[0x1EEE9AC00](v237);
    v239 = (v213)(&v373 - v230, &v436, v196, v238);
    v374 = &v373;
    v240 = MEMORY[0x1EEE9AC00](v239);
    v213(&v373 - v230, &v430, v196, v240);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207(&v373 - v230, v196);
    v241 = (v207)(&v373 - v230, v196);
    v375 = &v373;
    *&v448 = &v442;
    v242 = MEMORY[0x1EEE9AC00](v241);
    v243 = v383;
    v244 = (v383)(&v373 - v230, &v436 + 8, v196, v242);
    v374 = &v373;
    v245 = MEMORY[0x1EEE9AC00](v244);
    v243(&v373 - v230, &v430 + 8, v196, v245);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207(&v373 - v230, v196);
    v246 = (v207)(&v373 - v230, v196);
    v375 = &v373;
    *(&v448 + 1) = &v442 + 8;
    v247 = MEMORY[0x1EEE9AC00](v246);
    v248 = (v243)(&v373 - v230, &v437, v196, v247);
    v374 = &v373;
    v249 = MEMORY[0x1EEE9AC00](v248);
    v243(&v373 - v230, &v431, v196, v249);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207(&v373 - v230, v196);
    v250 = (v207)(&v373 - v230, v196);
    v375 = &v373;
    *&v449 = &v443;
    v251 = MEMORY[0x1EEE9AC00](v250);
    v252 = v381;
    v253 = v383;
    v254 = (v383)(&v373 - v381, &v437 + 8, v196, v251);
    v374 = &v373;
    v255 = MEMORY[0x1EEE9AC00](v254);
    v253(&v373 - v252, &v431 + 8, v196, v255);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207(&v373 - v252, v196);
    v256 = (v207)(&v373 - v252, v196);
    v375 = &v373;
    *(&v449 + 1) = &v443 + 8;
    v257 = MEMORY[0x1EEE9AC00](v256);
    v258 = v252;
    v259 = &v373 - v252;
    v260 = &v373 - v252;
    v261 = v383;
    v262 = (v383)(v260, &v438, v196, v257);
    v374 = &v373;
    v263 = MEMORY[0x1EEE9AC00](v262);
    v261(&v373 - v258, &v432, v196, v263);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v207(&v373 - v258, v196);
    v264 = (v207)(v259, v196);
    v375 = &v373;
    *&v450 = &v444;
    v265 = MEMORY[0x1EEE9AC00](v264);
    v266 = v381;
    v267 = v383;
    v268 = (v383)(&v373 - v381, &v438 + 8, v196, v265);
    v374 = &v373;
    v269 = MEMORY[0x1EEE9AC00](v268);
    v267(&v373 - v266, &v432 + 8, v196, v269);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v380 = v207;
    v207(&v373 - v266, v196);
    v207(&v373 - v266, v196);
    *(&v450 + 1) = &v444 + 8;
    v270 = _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v445, &v397);
    v375 = &v373;
    v271 = v400;
    v272 = v377;
    *(v377 + 40) = v399;
    v273 = v399;
    v274 = v400;
    *(v272 + 56) = v271;
    v275 = v402;
    *(v272 + 72) = v401;
    v276 = v401;
    v277 = v402;
    *(v272 + 88) = v275;
    v278 = v398;
    *(v272 + 8) = v397;
    v279 = v397;
    v280 = v398;
    *(v272 + 24) = v278;
    v281 = *(v379 + 11);
    v387 = *(v379 + 9);
    v388 = v281;
    v282 = *(v379 + 15);
    v389 = *(v379 + 13);
    v390 = v282;
    v283 = *(v379 + 7);
    v385 = *(v379 + 5);
    v386 = v283;
    *v272 = v192 - *(v379 + 4);
    v393 = v273;
    v394 = v274;
    v395 = v276;
    v396[0] = v277;
    v391 = v279;
    v392 = v280;
    v284 = MEMORY[0x1EEE9AC00](v270);
    v285 = (v267)(&v373 - v266, &v391, v196, v284);
    v286 = MEMORY[0x1EEE9AC00](v285);
    v267(&v373 - v266, &v385, v196, v286);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v287 = v380;
    (v380)(&v373 - v266, v196);
    v288 = (v287)(&v373 - v266, v196);
    v375 = &v373;
    *&v421 = &v415;
    v289 = MEMORY[0x1EEE9AC00](v288);
    v290 = (v267)(&v373 - v266, &v391 + 8, v196, v289);
    v374 = &v373;
    v291 = MEMORY[0x1EEE9AC00](v290);
    v267(&v373 - v266, &v385 + 8, v196, v291);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v292 = v380;
    (v380)(&v373 - v266, v196);
    v293 = (v292)(&v373 - v266, v196);
    v375 = &v373;
    *(&v421 + 1) = &v415 + 8;
    v294 = MEMORY[0x1EEE9AC00](v293);
    v295 = &v373 - v266;
    v296 = v383;
    v297 = (v383)(&v373 - v266, &v392, v196, v294);
    v374 = &v373;
    v298 = MEMORY[0x1EEE9AC00](v297);
    v299 = &v373 - v266;
    v296(&v373 - v266, &v386, v196, v298);
    v300 = v296;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v301 = v380;
    (v380)(v299, v196);
    v302 = (v301)(v295, v196);
    v375 = &v373;
    *&v422 = &v416;
    v303 = MEMORY[0x1EEE9AC00](v302);
    v304 = v381;
    v305 = &v373 - v381;
    v306 = v300(&v373 - v381, &v392 + 8, v196, v303);
    v374 = &v373;
    v307 = MEMORY[0x1EEE9AC00](v306);
    v300(&v373 - v304, &v386 + 8, v196, v307);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v308 = &v373 - v304;
    v309 = v380;
    (v380)(v308, v196);
    v310 = (v309)(v305, v196);
    v375 = &v373;
    *(&v422 + 1) = &v416 + 8;
    v311 = MEMORY[0x1EEE9AC00](v310);
    v312 = v381;
    v313 = v383;
    v314 = (v383)(&v373 - v381, &v393, v196, v311);
    v374 = &v373;
    v315 = MEMORY[0x1EEE9AC00](v314);
    v313(&v373 - v312, &v387, v196, v315);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v316 = v380;
    (v380)(&v373 - v312, v196);
    v317 = (v316)(&v373 - v312, v196);
    v375 = &v373;
    *&v423 = &v417;
    v318 = MEMORY[0x1EEE9AC00](v317);
    v319 = v381;
    v320 = v383;
    v321 = (v383)(&v373 - v381, &v393 + 8, v196, v318);
    v374 = &v373;
    v322 = MEMORY[0x1EEE9AC00](v321);
    v320(&v373 - v319, &v387 + 8, v196, v322);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v323 = v380;
    (v380)(&v373 - v319, v196);
    v324 = (v323)(&v373 - v319, v196);
    v375 = &v373;
    *(&v423 + 1) = &v417 + 8;
    v325 = MEMORY[0x1EEE9AC00](v324);
    v326 = v383;
    v327 = (v383)(&v373 - v319, &v394, v196, v325);
    v328 = MEMORY[0x1EEE9AC00](v327);
    v326(&v373 - v319, &v388, v196, v328);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v329 = v380;
    (v380)(&v373 - v319, v196);
    v330 = (v329)(&v373 - v319, v196);
    v375 = &v373;
    *&v424 = &v418;
    v331 = MEMORY[0x1EEE9AC00](v330);
    v332 = v381;
    v333 = &v373 - v381;
    v334 = v383;
    v335 = (v383)(&v373 - v381, &v394 + 8, v196, v331);
    v374 = &v373;
    v336 = MEMORY[0x1EEE9AC00](v335);
    v334(&v373 - v332, &v388 + 8, v196, v336);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v337 = v380;
    (v380)(&v373 - v332, v196);
    v338 = (v337)(v333, v196);
    v375 = &v373;
    *(&v424 + 1) = &v418 + 8;
    v339 = MEMORY[0x1EEE9AC00](v338);
    v340 = v381;
    v341 = v383;
    v342 = (v383)(&v373 - v381, &v395, v196, v339);
    v374 = &v373;
    v343 = MEMORY[0x1EEE9AC00](v342);
    v341(&v373 - v340, &v389, v196, v343);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v344 = v380;
    (v380)(&v373 - v340, v196);
    v345 = (v344)(&v373 - v340, v196);
    v375 = &v373;
    *&v425 = &v419;
    v346 = MEMORY[0x1EEE9AC00](v345);
    v347 = v381;
    v348 = &v373 - v381;
    v349 = v383;
    v350 = (v383)(&v373 - v381, &v395 + 8, v196, v346);
    v374 = &v373;
    v351 = MEMORY[0x1EEE9AC00](v350);
    v349(&v373 - v347, &v389 + 8, v196, v351);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v352 = v380;
    (v380)(&v373 - v347, v196);
    v353 = (v352)(v348, v196);
    v375 = &v373;
    *(&v425 + 1) = &v419 + 8;
    v354 = MEMORY[0x1EEE9AC00](v353);
    v355 = v381;
    v356 = v383;
    v357 = (v383)(&v373 - v381, v396, v196, v354);
    v374 = &v373;
    v358 = MEMORY[0x1EEE9AC00](v357);
    v356(&v373 - v355, &v390, v196, v358);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v359 = v380;
    (v380)(&v373 - v355, v196);
    v360 = (v359)(&v373 - v355, v196);
    v375 = &v373;
    *&v426 = &v420;
    v361 = MEMORY[0x1EEE9AC00](v360);
    v362 = (v356)(&v373 - v355, v396 + 8, v196, v361);
    v374 = &v373;
    v363 = MEMORY[0x1EEE9AC00](v362);
    v356(&v373 - v355, (&v390 + 8), v196, v363);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    (v359)(&v373 - v355, v196);
    (v359)(&v373 - v355, v196);
    v364 = v379;
    *(&v426 + 1) = &v420 + 8;
    _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(&v421, &v457);
    v365 = v460;
    v366 = v377;
    *(v377 + 40) = v459;
    *(v366 + 56) = v365;
    v367 = v462;
    *(v366 + 72) = v461;
    *(v366 + 88) = v367;
    v368 = v458;
    *(v366 + 8) = v457;
    *(v366 + 24) = v368;
    swift_beginAccess();
    v369 = v454;
    *(v364 + 25) = v453;
    *(v364 + 27) = v369;
    v370 = v456;
    *(v364 + 29) = v455;
    *(v364 + 31) = v370;
    v371 = v452;
    *(v364 + 21) = v451;
    *(v364 + 23) = v371;
    v372 = *(v364 + 18);
    *(v364 + 19) = a3;
    *(v364 + 20) = v191;
    if (v372 > 0.0)
    {
      *(v364 + 19) = v372 * (round(a3 / v372) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 109) <= 1u)
  {
    if (!*(v3 + 109))
    {
      *(v3 + 56) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 109) = v10;
      goto LABEL_11;
    }

    *(v3 + 109) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 72) = v8 - *(v3 + 56) + a3;
    *(v3 + 56) = a3;
LABEL_20:
    swift_beginAccess();
    v42 = vaddq_f32(*(v3 + 80), *a1);
    v40 = vadd_f32(*(v3 + 96), *(a1 + 16));
    swift_beginAccess();
    result = 0;
    v41 = *(v3 + 48);
    *a1 = vsubq_f32(v42, *(v3 + 32));
    *(a1 + 16) = vsub_f32(v40, v41);
    return result;
  }

  if (*(v3 + 109) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 56))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 56) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 56);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 128);

  v46[0] = v14;
  v46[1] = AGCreateWeakAttribute();
  v47 = 0;
  v48 = v15;
  v16 = *(v4 + 136);
  if (v16)
  {
    v17 = *(v4 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    v19 = v18;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
    v45 = v20;
    *&v43 = v16;
    *(&v43 + 1) = v17;
    specialized Dictionary.subscript.setter(&v43, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v43 = *(v4 + 32);
  v44 = *(v4 + 48);

  v22 = specialized Animation.animate<A>(value:time:context:)(&v43, v46, v21, v13);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  if (v28)
  {

    return 1;
  }

  else
  {
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v48, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v46[0];

    v30 = *(a1 + 8) + *&v24;
    v31 = *(a1 + 12) + *(&v24 + 1);
    v32 = *(a1 + 16) + *&v26;
    v33 = *(a1 + 20) + *(&v26 + 1);
    v34 = *(v4 + 40);
    v35 = *(v4 + 44);
    v36 = *(v4 + 48);
    v37 = *(v4 + 52);
    v38 = (*(a1 + 4) + *(&v22 + 1)) - *(v4 + 36);
    *a1 = (*a1 + *&v22) - *(v4 + 32);
    *(a1 + 4) = v38;
    *(a1 + 8) = v30 - v34;
    *(a1 + 12) = v31 - v35;
    *(a1 + 16) = v32 - v36;
    *(a1 + 20) = v33 - v37;
    swift_beginAccess();
    *(v4 + 80) = v22;
    *(v4 + 88) = v24;
    *(v4 + 96) = v26;
    *(v4 + 72) = a3;
    v39 = *(v4 + 64);
    if (v39 > 0.0)
    {
      *(v4 + 72) = v39 * (round(a3 / v39) + 1.0);
    }

    return 0;
  }
}

uint64_t AnimatableMaterialProviderBox.setAnimatableData(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, v1 + *(v2 + 216), v3, v5);
  _AnyAnimatableData.update<A>(_:)(v7, v3, *(v2 + 240));
  swift_allocObject();
  v8 = specialized AnimatableMaterialProviderBox.init(_:)(v7);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t _AnyAnimatableData.update<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11[-v7];
  v9 = *v3;
  result = type metadata accessor for VTable();
  if (v9 == result)
  {
    outlined init with copy of Any((v3 + 1), v11);
    swift_dynamicCast();
    return (*(a3 + 32))(v8, a2, a3);
  }

  return result;
}

void Color.Resolved.animatableData.setter(float a1, float a2, float a3, float a4)
{
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v12 = a4;
    v13 = a3;
    v14 = a2;
    v15 = a1;
    swift_once();
    a1 = v15;
    a2 = v14;
    a3 = v13;
    a4 = v12;
  }

  v5 = a1 * 0.0078125;
  v6 = a2 * 0.0078125;
  v7 = a3 * 0.0078125;
  v8 = a4 * 0.0078125;
  swift_beginAccess();
  if ((static Color.Resolved.legacyInterpolation & 1) == 0)
  {
    v19 = 2;
    v16 = __PAIR64__(LODWORD(v6), LODWORD(v5));
    v17 = v7;
    v18 = v8;
    v5 = ResolvedGradient.ColorSpace.convertOut(_:)(&v16);
    v6 = v9;
    v7 = v10;
    v8 = v11;
  }

  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance _AnyAnimatableData@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for ZeroVTable();
  a1[4] = MEMORY[0x1E69E7CA8] + 8;
  *a1 = result;
  return result;
}

uint64_t static VTable.scale(_:by:)(uint64_t a1, double a2)
{
  outlined init with take of Any(a1, &v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(a1 + 24) = AssociatedTypeWitness;
  __swift_allocate_boxed_opaque_existential_1(a1);
  swift_dynamicCast();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness, a2);
}

float protocol witness for VectorArithmetic.scale(by:) in conformance Float(double a1)
{
  v2 = a1;
  result = *v1 * v2;
  *v1 = result;
  return result;
}

uint64_t protocol witness for VectorArithmetic.scale(by:) in conformance AnimatableValues<Pack{repeat A}>(uint64_t TupleTypeMetadata, double a2)
{
  v3 = TupleTypeMetadata;
  v5 = *(TupleTypeMetadata + 16);
  if (v5 != 1)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v8 = 0;
      v9 = *(v3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_8;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_8;
      }

      v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v5 != v8)
      {
LABEL_8:
        v14 = v5 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v43[1] = v43;
  v20 = MEMORY[0x1EEE9AC00](v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v43 - v22;
  v49 = v21;
  v44 = v23;
  v45 = v2;
  v24 = *(v23 + 16);
  v46 = v25;
  v26 = v24(v20);
  if (v5)
  {
    v27 = (*(v3 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v28 = (*(v3 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v29 = (v46 + 32);
    v30 = v5;
    v47 = v5;
    do
    {
      if (v5 == 1)
      {
        v31 = v48;
      }

      else
      {
        v31 = &v48[*v29];
      }

      v33 = *v27++;
      v32 = v33;
      v34 = *v28++;
      v35 = *(v32 - 8);
      v36 = MEMORY[0x1EEE9AC00](v26);
      v38 = v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v38, v49 + v39, v32, v36);
      VectorArithmetic.scaled(by:)(v32, v34, v31, a2);
      v26 = (*(v35 + 8))(v38, v32);
      v29 += 4;
      --v30;
      v5 = v47;
    }

    while (v30);
  }

  v40 = v44;
  v41 = v46;
  (*(v44 + 40))(v45, v48, v46);
  return (*(v40 + 8))(v49, v41);
}

uint64_t specialized static _AnyAnimatableData.-= infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1;
  if (*a1 == *a2)
  {
    return (*(v4 + 104))(a1 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v4 == result)
  {
    outlined destroy of _AnyAnimatableData(a1);
    outlined init with copy of _AnyAnimatableData(a2, a1);
    return (*(*a1 + 112))(a1 + 1);
  }

  return result;
}

double static VTable.magnitudeSquared(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v9[-v4];
  outlined init with copy of Any(a1, v9);
  swift_dynamicCast();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  return v7;
}

double protocol witness for VectorArithmetic.magnitudeSquared.getter in conformance AnimatableValues<Pack{repeat A}>(uint64_t TupleTypeMetadata)
{
  v1 = TupleTypeMetadata;
  v2 = *(TupleTypeMetadata + 16);
  if (v2 == 1)
  {
    v3 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v2)
    {
      v6 = 0;
      v7 = *(v1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v2 < 4)
      {
        goto LABEL_9;
      }

      if (&v5[-v7] < 0x20)
      {
        goto LABEL_9;
      }

      v6 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = (v7 + 16);
      v9 = v5 + 16;
      v10 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *v8;
        *(v9 - 1) = *(v8 - 1);
        *v9 = v11;
        v8 += 2;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v2 != v6)
      {
LABEL_9:
        v12 = v2 - v6;
        v13 = 8 * v6;
        v14 = &v5[8 * v6];
        v15 = (v7 + v13);
        do
        {
          v16 = *v15++;
          *v14 = v16;
          v14 += 8;
          --v12;
        }

        while (v12);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = TupleTypeMetadata;
  }

  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v36 = v19;
  v20 = *(v19 + 16);
  v38 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20(v17);
  v37 = v3;
  if (v2)
  {
    v22 = (*(v1 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v23 = (*(v1 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v3 + 32);
    v25 = 0.0;
    v26 = v2;
    do
    {
      v29 = *v22;
      v30 = *v23;
      v31 = *(*v22 - 8);
      MEMORY[0x1EEE9AC00](v21);
      v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v26 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v24;
      }

      (*(v31 + 16))(v33, &v38[v27], v29);
      v28 = (*(v30 + 24))(v29, v30);
      v21 = (*(v31 + 8))(v33, v29);
      v25 = v25 + v28;
      v24 += 4;
      ++v23;
      ++v22;
      --v2;
    }

    while (v2);
  }

  else
  {
    v25 = 0.0;
  }

  (*(v36 + 8))(v38, v37);
  return v25;
}

uint64_t specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(char a1, unint64_t a2, double a3)
{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  Description = v10[-1].Description;
  MEMORY[0x1EEE9AC00](v10);
  i = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 160) & 1) == 0 && (a1)
  {
    *(v4 + 160) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 152);
    if (v13 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

      v52 = v10;
      v55 = i;
      IndexSet.init()();
      v57 = *(*(v4 + 184) + 16);
      if (!v57)
      {
LABEL_53:
        swift_beginAccess();
        a2 = v54;
        v49 = v55;
        specialized Collection.subscript.getter(v54);
        v50 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 184), a2);
        v51 = *(*(v4 + 184) + 16);
        if (v51 < v50)
        {
          goto LABEL_61;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v50, v51);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return Description[1](v49, v52);
      }

      v20 = 0;
      v21 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v21 = a2;
      }

      v56 = v21;
      v10 = &type metadata for _AnyAnimatableData;
      while (1)
      {
        swift_beginAccess();
        v22 = *(v4 + 184);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 184) = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
          *(v4 + 184) = v22;
        }

        if (v20 >= v22[2])
        {
          break;
        }

        v24 = &v22[10 * v20];
        v25 = v24 + 4;
        v26 = v24[5];

        v27 = AGCreateWeakAttribute();
        v62[0] = v26;
        v62[1] = v27;
        v63 = 0;
        v28 = v24[11];
        if (v28)
        {
          v29 = v24[12];
          type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
          a2 = v30;
          type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
          v61 = v31;
          *&v60 = v28;
          *(&v60 + 1) = v29;
          outlined init with take of Any(&v60, v59);
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v26;
          v62[0] = 0x8000000000000000;
          i = specialized __RawDictionaryStorage.find<A>(_:)(a2);
          v34 = v26[2];
          v35 = (v33 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_58;
          }

          v37 = v33;
          if (v26[3] >= v36)
          {
            if ((v32 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v32);
            v38 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
            if ((v37 & 1) != (v39 & 1))
            {
              goto LABEL_67;
            }

            i = v38;
          }

          v40 = v58;
          if (v37)
          {
            v41 = (v58[7] + 32 * i);
            __swift_destroy_boxed_opaque_existential_1(v41);
            outlined init with take of Any(v59, v41);
          }

          else
          {
            v58[(i >> 6) + 8] |= 1 << i;
            *(v40[6] + 8 * i) = a2;
            outlined init with take of Any(v59, (v40[7] + 32 * i));
            v42 = v40[2];
            v43 = __OFADD__(v42, 1);
            v44 = v42 + 1;
            if (v43)
            {
              goto LABEL_60;
            }

            v40[2] = v44;
          }

          v62[0] = v40;
        }

        a2 = *(**v25 + 120);
        i = **v25 + 120;
        v45 = lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData();
        (a2)(&v60, v25 + 2, v62, &type metadata for _AnyAnimatableData, v45, a3);
        if (v60)
        {
          outlined destroy of HitTestableEvent?(&v60, &lazy cache variable for type metadata for _AnyAnimatableData?);
          a2 = HIBYTE(v63);

          v46 = *(v4 + 184);
          swift_endAccess();
          if ((a2 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          outlined destroy of HitTestableEvent?(&v60, &lazy cache variable for type metadata for _AnyAnimatableData?);
          v46 = *(v4 + 184);
          swift_endAccess();
        }

        if (v20 >= *(v46 + 16))
        {
          goto LABEL_57;
        }

        a2 = *(v46 + 80 * v20 + 104);
        if (a2 >> 62)
        {
          v47 = __CocoaSet.count.getter();
          if (v47)
          {
LABEL_45:
            if (v47 < 1)
            {
              goto LABEL_59;
            }

            for (i = 0; i != v47; ++i)
            {
              if ((a2 & 0xC000000000000001) != 0)
              {
                v48 = MEMORY[0x193AC03C0](i, a2);
              }

              else
              {
                v48 = *(a2 + 8 * i + 32);
              }

              (*(*v48 + 96))();
            }
          }
        }

        else
        {
          v47 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v47)
          {
            goto LABEL_45;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_22:
        if (++v20 == v57)
        {
          goto LABEL_53;
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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 152);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 152) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {
    v16 = i;

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v18 = *(v14 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    i = v16;
    goto LABEL_14;
  }

  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 112) & 1) == 0 && (a1)
  {
    *(v4 + 112) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 104);
    if (v14 >> 62)
    {
      goto LABEL_63;
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

      v57 = v10;
      v55 = v12;
      v56 = v11;
      v12 = v58;
      IndexSet.init()();
      v20 = *(*(v4 + 136) + 16);
      if (!v20)
      {
LABEL_54:
        swift_beginAccess();
        v52 = v57;
        specialized Collection.subscript.getter(v57);
        v53 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 136), v52);
        v54 = *(*(v4 + 136) + 16);
        if (v54 < v53)
        {
          goto LABEL_62;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v53, v54);
        outlined destroy of Slice<IndexSet>(v52, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v55 + 8))(v12, v56);
      }

      v21 = 0;
      v22 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v22 = a2;
      }

      v59 = v22;
      while (1)
      {
        swift_beginAccess();
        v10 = *(v4 + 136);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 136) = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          *(v4 + 136) = v10;
        }

        if (v21 >= *(v10 + 16))
        {
          break;
        }

        a2 = v10 + 56 * v21;
        v24 = *(a2 + 40);

        v25 = AGCreateWeakAttribute();
        v64[0] = v24;
        v64[1] = v25;
        v65 = 0;
        v26 = *(a2 + 64);
        if (!v26)
        {
          goto LABEL_39;
        }

        v27 = *(a2 + 72);
        type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>();
        v29 = v28;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>, MEMORY[0x1E69E6720]);
        v63 = v30;
        *&v62 = v26;
        *(&v62 + 1) = v27;
        outlined init with take of Any(&v62, v61);
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v60 = v24;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v32 = *(v24 + 16);
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_59;
        }

        v35 = v31;
        if (*(v24 + 24) >= v34)
        {
          if (v11)
          {
            v11 = v60;
            if ((v31 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v11 = v60;
            if ((v35 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v11);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if ((v35 & 1) != (v37 & 1))
          {
            goto LABEL_68;
          }

          v12 = v36;
          v11 = v60;
          if ((v35 & 1) == 0)
          {
LABEL_36:
            *(v11 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v11 + 48) + 8 * v12) = v29;
            outlined init with take of Any(v61, (*(v11 + 56) + 32 * v12));
            v39 = *(v11 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_61;
            }

            *(v11 + 16) = v41;
            goto LABEL_38;
          }
        }

        v38 = (*(v11 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v38);
        outlined init with take of Any(v61, v38);
LABEL_38:
        v64[0] = v11;
        v12 = v58;
LABEL_39:
        v42 = *(a2 + 32);
        v43 = *(a2 + 56);
        *&v61[0] = *(a2 + 48);
        BYTE8(v61[0]) = v43;
        v44 = *(*v42 + 120);
        v11 = *v42 + 120;
        type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
        v46 = v45;
        v47 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>> and conformance KeyedAnimatableArray<A, B>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>);
        v44(&v62, v61, v64, v46, v47, a3);
        if (v62)
        {

          v48 = HIBYTE(v65);

          *(v4 + 136) = v10;
          swift_endAccess();
          if ((v48 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          *(v4 + 136) = v10;
          swift_endAccess();
        }

        if (v21 >= *(v10 + 16))
        {
          goto LABEL_58;
        }

        v49 = *(a2 + 80);
        if (v49 >> 62)
        {
          v10 = __CocoaSet.count.getter();
          if (v10)
          {
LABEL_46:
            if (v10 < 1)
            {
              goto LABEL_60;
            }

            a2 = v49 & 0xC000000000000001;

            for (i = 0; i != v10; ++i)
            {
              if (a2)
              {
                v51 = MEMORY[0x193AC03C0](i, v49);
              }

              else
              {
                v51 = *(v49 + 8 * i + 32);
              }

              (*(*v51 + 96))();
            }
          }
        }

        else
        {
          v10 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
            goto LABEL_46;
          }
        }

        IndexSet.insert(_:)(v21);
LABEL_22:
        if (++v21 == v20)
        {
          goto LABEL_54;
        }
      }

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

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 120);
    if (v14 >> 62)
    {
      goto LABEL_63;
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
      if (!*(*(v4 + 152) + 16))
      {
        return result;
      }

      v58 = v10;
      v56 = v12;
      v57 = v11;
      v12 = v59;
      IndexSet.init()();
      v20 = *(*(v4 + 152) + 16);
      if (!v20)
      {
LABEL_54:
        swift_beginAccess();
        v53 = v58;
        specialized Collection.subscript.getter(v58);
        v54 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 152), v53);
        v55 = *(*(v4 + 152) + 16);
        if (v55 < v54)
        {
          goto LABEL_62;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v54, v55);
        outlined destroy of Slice<IndexSet>(v53, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v56 + 8))(v12, v57);
      }

      v21 = 0;
      v22 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v22 = a2;
      }

      v60 = v22;
      while (1)
      {
        swift_beginAccess();
        v10 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          *(v4 + 152) = v10;
        }

        if (v21 >= *(v10 + 16))
        {
          break;
        }

        a2 = v10 + (v21 << 6);
        v24 = *(a2 + 40);

        v25 = AGCreateWeakAttribute();
        v66[0] = v24;
        v66[1] = v25;
        v67 = 0;
        v26 = *(a2 + 72);
        if (!v26)
        {
          goto LABEL_39;
        }

        v27 = *(a2 + 80);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>();
        v29 = v28;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>, MEMORY[0x1E69E6720]);
        v65 = v30;
        *&v64 = v26;
        *(&v64 + 1) = v27;
        outlined init with take of Any(&v64, &v62);
        v11 = swift_isUniquelyReferenced_nonNull_native();
        v61 = v24;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v32 = *(v24 + 16);
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_59;
        }

        v35 = v31;
        if (*(v24 + 24) >= v34)
        {
          if (v11)
          {
            v11 = v61;
            if ((v31 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v11 = v61;
            if ((v35 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v11);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if ((v35 & 1) != (v37 & 1))
          {
            goto LABEL_68;
          }

          v12 = v36;
          v11 = v61;
          if ((v35 & 1) == 0)
          {
LABEL_36:
            *(v11 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v11 + 48) + 8 * v12) = v29;
            outlined init with take of Any(&v62, (*(v11 + 56) + 32 * v12));
            v39 = *(v11 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_61;
            }

            *(v11 + 16) = v41;
            goto LABEL_38;
          }
        }

        v38 = (*(v11 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v38);
        outlined init with take of Any(&v62, v38);
LABEL_38:
        v66[0] = v11;
        v12 = v59;
LABEL_39:
        v42 = *(a2 + 32);
        v43 = *(a2 + 56);
        v44 = *(a2 + 64);
        *&v62 = *(a2 + 48);
        BYTE8(v62) = v43;
        v63 = v44;
        v45 = *(*v42 + 120);
        v11 = *v42 + 120;
        type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>();
        v47 = v46;
        v48 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>);
        v45(&v64, &v62, v66, v47, v48, a3);
        if (v64)
        {

          v49 = HIBYTE(v67);

          *(v4 + 152) = v10;
          swift_endAccess();
          if ((v49 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          *(v4 + 152) = v10;
          swift_endAccess();
        }

        if (v21 >= *(v10 + 16))
        {
          goto LABEL_58;
        }

        v50 = *(a2 + 88);
        if (v50 >> 62)
        {
          v10 = __CocoaSet.count.getter();
          if (v10)
          {
LABEL_46:
            if (v10 < 1)
            {
              goto LABEL_60;
            }

            a2 = v50 & 0xC000000000000001;

            for (i = 0; i != v10; ++i)
            {
              if (a2)
              {
                v52 = MEMORY[0x193AC03C0](i, v50);
              }

              else
              {
                v52 = *(v50 + 8 * i + 32);
              }

              (*(*v52 + 96))();
            }
          }
        }

        else
        {
          v10 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
            goto LABEL_46;
          }
        }

        IndexSet.insert(_:)(v21);
LABEL_22:
        if (++v21 == v20)
        {
          goto LABEL_54;
        }
      }

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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 120);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

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

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 208) & 1) == 0 && (a1)
  {
    *(v4 + 208) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 200);
    if (v13 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 232) + 16))
      {
        return result;
      }

      v60 = v12;
      IndexSet.init()();
      v20 = *(*(v4 + 232) + 16);
      if (!v20)
      {
LABEL_53:
        swift_beginAccess();
        v53 = v59;
        v12 = v60;
        specialized Collection.subscript.getter(v59);
        v54 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 232), v53);
        v55 = *(*(v4 + 232) + 16);
        if (v55 < v54)
        {
          goto LABEL_61;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v54, v55);
        outlined destroy of Slice<IndexSet>(v53, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v57 + 8))(v12, v58);
      }

      v21 = 0;
      v22 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v22 = a2;
      }

      v61 = v22;
      while (1)
      {
        swift_beginAccess();
        v23 = *(v4 + 232);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 232) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          *(v4 + 232) = v23;
        }

        if (v21 >= v23[2])
        {
          break;
        }

        a2 = &v23[13 * v21];
        v25 = *(a2 + 40);

        v26 = AGCreateWeakAttribute();
        v70[0] = v25;
        v70[1] = v26;
        v71 = 0;
        v12 = *(a2 + 112);
        if (!v12)
        {
          goto LABEL_39;
        }

        v27 = *(a2 + 120);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>();
        v29 = v28;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>, MEMORY[0x1E69E6720]);
        v64 = v30;
        *&v63 = v12;
        *(&v63 + 1) = v27;
        outlined init with take of Any(&v63, &v66);
        v31 = swift_isUniquelyReferenced_nonNull_native();
        *&v62[0] = v25;
        v70[0] = 0x8000000000000000;
        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v34 = *(v25 + 16);
        v35 = (v32 & 1) == 0;
        v36 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_58;
        }

        v12 = v32;
        if (*(v25 + 24) >= v36)
        {
          if (v31)
          {
            v39 = *&v62[0];
            if ((v32 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v39 = *&v62[0];
            if ((v12 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v31);
          v37 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if ((v12 & 1) != (v38 & 1))
          {
            goto LABEL_67;
          }

          v33 = v37;
          v39 = *&v62[0];
          if ((v12 & 1) == 0)
          {
LABEL_36:
            v39[(v33 >> 6) + 8] |= 1 << v33;
            *(v39[6] + 8 * v33) = v29;
            outlined init with take of Any(&v66, (v39[7] + 32 * v33));
            v41 = v39[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_60;
            }

            v39[2] = v43;
            goto LABEL_38;
          }
        }

        v40 = (v39[7] + 32 * v33);
        __swift_destroy_boxed_opaque_existential_1(v40);
        outlined init with take of Any(&v66, v40);
LABEL_38:

        v70[0] = v39;
LABEL_39:
        v44 = *(a2 + 32);
        v66 = *(a2 + 48);
        v67 = *(a2 + 64);
        v68 = *(a2 + 80);
        v69 = *(a2 + 96);
        v62[0] = v66;
        v62[1] = v67;
        v62[2] = v68;
        v62[3] = v69;
        v12 = *(*v44 + 120);
        a2 = *v44 + 120;
        type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>();
        v46 = v45;
        v47 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);
        (v12)(&v63, v62, v70, v46, v47, a3);
        if (v65)
        {

          v48 = *(v4 + 232);
          swift_endAccess();
        }

        else
        {
          v49 = HIBYTE(v71);

          v48 = *(v4 + 232);
          swift_endAccess();
          if ((v49 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        if (v21 >= *(v48 + 16))
        {
          goto LABEL_57;
        }

        v50 = *(v48 + 104 * v21 + 128);
        if (v50 >> 62)
        {
          v12 = __CocoaSet.count.getter();
          if (v12)
          {
LABEL_45:
            if (v12 < 1)
            {
              goto LABEL_59;
            }

            a2 = v50 & 0xC000000000000001;

            for (i = 0; i != v12; ++i)
            {
              if (a2)
              {
                v52 = MEMORY[0x193AC03C0](i, v50);
              }

              else
              {
                v52 = *(v50 + 8 * i + 32);
              }

              (*(*v52 + 96))();
            }
          }
        }

        else
        {
          v12 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_45;
          }
        }

        IndexSet.insert(_:)(v21);
LABEL_22:
        if (++v21 == v20)
        {
          goto LABEL_53;
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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = *(v4 + 200);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 200) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {
    v16 = v12;

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v18 = *(v14 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    v12 = v16;
    goto LABEL_14;
  }

  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  Description = v10[-1].Description;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 120);
    if (v13 >> 62)
    {
      goto LABEL_61;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

      v57 = v10;
      v60 = v12;
      IndexSet.init()();
      v62 = *(*(v4 + 152) + 16);
      if (!v62)
      {
LABEL_52:
        swift_beginAccess();
        v54 = v59;
        v12 = v60;
        specialized Collection.subscript.getter(v59);
        v55 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 152), v54);
        v56 = *(*(v4 + 152) + 16);
        if (v56 < v55)
        {
          goto LABEL_60;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v55, v56);
        outlined destroy of Slice<IndexSet>(v54, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return Description[1](v12, v57);
      }

      v20 = 0;
      v21 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v21 = a2;
      }

      v61 = v21;
      v10 = &type metadata for Color.ResolvedHDR._Animatable;
      while (1)
      {
        swift_beginAccess();
        v22 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
          *(v4 + 152) = v22;
        }

        if (v20 >= v22[2])
        {
          break;
        }

        v24 = &v22[8 * v20];
        a2 = (v24 + 4);
        v25 = v24[5];

        v26 = AGCreateWeakAttribute();
        v69[0] = v25;
        v69[1] = v26;
        v70 = 0;
        v27 = v24[9];
        if (v27)
        {
          v28 = v24[10];
          v12 = lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable;
          type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimationFinishingDefinitionKey);
          v30 = v29;
          type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable);
          v68 = v31;
          *&v66 = v27;
          *(&v66 + 1) = v28;
          outlined init with take of Any(&v66, &v64);
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v63 = v25;
          v69[0] = 0x8000000000000000;
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          v35 = v25[2];
          v36 = (v33 & 1) == 0;
          v37 = v35 + v36;
          if (__OFADD__(v35, v36))
          {
            goto LABEL_57;
          }

          v12 = v33;
          if (v25[3] >= v37)
          {
            if ((v32 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, v32);
            v38 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
            if ((v12 & 1) != (v39 & 1))
            {
              goto LABEL_66;
            }

            v34 = v38;
          }

          v40 = v63;
          if (v12)
          {
            v41 = (v63[7] + 32 * v34);
            __swift_destroy_boxed_opaque_existential_1(v41);
            outlined init with take of Any(&v64, v41);
          }

          else
          {
            v63[(v34 >> 6) + 8] |= 1 << v34;
            *(v40[6] + 8 * v34) = v30;
            outlined init with take of Any(&v64, (v40[7] + 32 * v34));
            v42 = v40[2];
            v43 = __OFADD__(v42, 1);
            v44 = v42 + 1;
            if (v43)
            {
              goto LABEL_59;
            }

            v40[2] = v44;
          }

          v69[0] = v40;
        }

        v45 = *a2;
        v46 = *(a2 + 32);
        v64 = *(a2 + 16);
        v65 = v46;
        v47 = *(*v45 + 120);
        v12 = *v45 + 120;
        v48 = lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable();
        v47(&v66, &v64, v69, &type metadata for Color.ResolvedHDR._Animatable, v48, a3);
        if (v67 == 1)
        {

          v49 = *(v4 + 152);
          swift_endAccess();
        }

        else
        {
          v50 = HIBYTE(v70);

          v49 = *(v4 + 152);
          swift_endAccess();
          if ((v50 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        if (v20 >= *(v49 + 16))
        {
          goto LABEL_56;
        }

        v51 = *(v49 + (v20 << 6) + 88);
        if (v51 >> 62)
        {
          v12 = __CocoaSet.count.getter();
          if (v12)
          {
LABEL_44:
            if (v12 < 1)
            {
              goto LABEL_58;
            }

            a2 = v51 & 0xC000000000000001;

            for (i = 0; i != v12; ++i)
            {
              if (a2)
              {
                v53 = MEMORY[0x193AC03C0](i, v51);
              }

              else
              {
                v53 = *(v51 + 8 * i + 32);
              }

              (*(*v53 + 96))();
            }
          }
        }

        else
        {
          v12 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_44;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_22:
        if (++v20 == v62)
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
    v14 = *(v4 + 120);
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {
    v16 = v12;

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v18 = *(v14 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    v12 = v16;
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
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v52 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[6].Kind & 1) == 0 && (a1)
  {
    LOBYTE(v4[6].Kind) = a1 & 1;
    swift_beginAccess();
    Description = v4[5].Description;
    if (Description >> 62)
    {
      goto LABEL_63;
    }

    if (*((Description & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(v4[7].Description + 2))
      {
        return result;
      }

      v51 = v10;
      IndexSet.init()();
      v57 = *(v4[7].Description + 2);
      if (!v57)
      {
LABEL_54:
        swift_beginAccess();
        a2 = v53;
        specialized Collection.subscript.getter(v53);
        v49 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(&v4[7].Description, a2);
        v50 = *(v4[7].Description + 2);
        if (v50 < v49)
        {
          goto LABEL_62;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v49, v50);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v52 + 8))(v12, v51);
      }

      v19 = 0;
      v20 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v20 = a2;
      }

      v56 = v20;
      v54 = v12;
      v55 = v4;
      v10 = &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>;
      while (1)
      {
        swift_beginAccess();
        a2 = v4[7].Description;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4[7].Description = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          v4[7].Description = a2;
        }

        if (v19 >= *(a2 + 16))
        {
          break;
        }

        v22 = (a2 + 48 * v19);
        v23 = v22[5];

        v24 = AGCreateWeakAttribute();
        v62[0] = v23;
        v62[1] = v24;
        v63 = 0;
        v25 = v22[7];
        if (!v25)
        {
          goto LABEL_39;
        }

        v12 = v22[8];
        v4 = &type metadata for ShaderVectorData;
        type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimationFinishingDefinitionKey);
        v27 = v26;
        type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData);
        v61 = v28;
        *&v60 = v25;
        *(&v60 + 1) = v12;
        outlined init with take of Any(&v60, v59);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v58 = v23;
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
        v32 = v23[2];
        v33 = (v30 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_59;
        }

        v12 = v30;
        if (v23[3] >= v34)
        {
          v4 = v55;
          if (v29)
          {
            v37 = v58;
            if ((v30 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v37 = v58;
            if ((v12 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v29);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
          v4 = v55;
          if ((v12 & 1) != (v36 & 1))
          {
            goto LABEL_68;
          }

          v31 = v35;
          v37 = v58;
          if ((v12 & 1) == 0)
          {
LABEL_36:
            v37[(v31 >> 6) + 8] |= 1 << v31;
            *(v37[6] + 8 * v31) = v27;
            outlined init with take of Any(v59, (v37[7] + 32 * v31));
            v39 = v37[2];
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_61;
            }

            v37[2] = v41;
            goto LABEL_38;
          }
        }

        v38 = (v37[7] + 32 * v31);
        __swift_destroy_boxed_opaque_existential_1(v38);
        outlined init with take of Any(v59, v38);
LABEL_38:
        v62[0] = v37;
        v12 = v54;
LABEL_39:
        v42 = v22[4];
        *&v59[0] = v22[6];
        v43 = *(*v42 + 120);
        v44 = lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData();
        v43(&v60, v59, v62, &type metadata for ShaderVectorData, v44, a3);
        if (v60)
        {

          v45 = HIBYTE(v63);

          v4[7].Description = a2;
          swift_endAccess();
          if ((v45 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          v4[7].Description = a2;
          swift_endAccess();
        }

        if (v19 >= *(a2 + 16))
        {
          goto LABEL_58;
        }

        a2 = v22[9];
        if (a2 >> 62)
        {
          v46 = __CocoaSet.count.getter();
          if (v46)
          {
LABEL_46:
            if (v46 < 1)
            {
              goto LABEL_60;
            }

            for (i = 0; i != v46; ++i)
            {
              if ((a2 & 0xC000000000000001) != 0)
              {
                v48 = MEMORY[0x193AC03C0](i, a2);
              }

              else
              {
                v48 = *(a2 + 8 * i + 32);
              }

              (*(*v48 + 96))();
            }
          }
        }

        else
        {
          v46 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v46)
          {
            goto LABEL_46;
          }
        }

        IndexSet.insert(_:)(v19);
LABEL_22:
        if (++v19 == v57)
        {
          goto LABEL_54;
        }
      }

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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v14 = v4[5].Description;
    if (!(v14 >> 62))
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        goto LABEL_7;
      }

LABEL_14:
      v4[5].Description = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v15 = __CocoaSet.count.getter();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v15 >= 1)
  {

    for (j = 0; j != v15; ++j)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AC03C0](j, v14);
      }

      else
      {
        v17 = *(v14 + 8 * j + 32);
      }

      (*(*v17 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 160) & 1) == 0 && (a1)
  {
    *(v4 + 160) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 152);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
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

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 184) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 184, v29);
        v31 = *(*(v4 + 184) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 80;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 184);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 184) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 184) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 184) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[10 * v20 + 13];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 80;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
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

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 160) & 1) == 0 && (a1)
  {
    *(v4 + 160) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 152);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
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

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 184) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 184, v29);
        v31 = *(*(v4 + 184) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 80;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 184);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 184) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 184) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 184) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[10 * v20 + 13];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 80;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
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

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 192) & 1) == 0 && (a1)
  {
    *(v4 + 192) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 184);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 216) + 16))
      {
        return result;
      }

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 216) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 216, v29);
        v31 = *(*(v4 + 216) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 96;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 216) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 216) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 216) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[12 * v20 + 15];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 96;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 184);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 184) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 192) & 1) == 0 && (a1)
  {
    *(v4 + 192) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 184);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 216) + 16))
      {
        return result;
      }

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 216) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 216, v29);
        v31 = *(*(v4 + 216) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 96;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 216) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 216) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 216) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[12 * v20 + 15];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 96;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 184);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 184) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 192) & 1) == 0 && (a1)
  {
    *(v4 + 192) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 184);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 216) + 16))
      {
        return result;
      }

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 216) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 216, v29);
        v31 = *(*(v4 + 216) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 96;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 216) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 216) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 216) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[12 * v20 + 15];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 96;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 184);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 184) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 120);
    if (v14 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
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

      v30 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 152) + 16);
      if (!v10)
      {
LABEL_36:
        swift_beginAccess();
        v10 = v30;
        specialized Collection.subscript.getter(v30);
        a2 = 0;
        v28 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, v10);
        v29 = *(*(v4 + 152) + 16);
        if (v29 < v28)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v28, v29);
        outlined destroy of Slice<IndexSet>(v10, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v31 + 8))(v13, v32);
      }

      v20 = 0;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 152) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 152) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[8 * v20 + 11];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v27 = *(v24 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v10)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
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

  result = __CocoaSet.count.getter();
  v17 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v17 >= 1)
  {

    for (j = 0; j != v17; ++j)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](j, v16);
      }

      else
      {
        v19 = *(v16 + 8 * j + 32);
      }

      (*(*v19 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 288) & 1) == 0 && (a1)
  {
    *(v4 + 288) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 280);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 312) + 16))
      {
        return result;
      }

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 312) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 312, v29);
        v31 = *(*(v4 + 312) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 144;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 312);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 312) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 312) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 312) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[18 * v20 + 21];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 144;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 280);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 280) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 256) & 1) == 0 && (a1)
  {
    *(v4 + 256) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 248);
    if (v14 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 280) + 16))
      {
        return result;
      }

      v30 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 280) + 16);
      if (!v10)
      {
LABEL_36:
        swift_beginAccess();
        v10 = v30;
        specialized Collection.subscript.getter(v30);
        a2 = 0;
        v28 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 280, v10);
        v29 = *(*(v4 + 280) + 16);
        if (v29 < v28)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v28, v29);
        outlined destroy of Slice<IndexSet>(v10, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v31 + 8))(v13, v32);
      }

      v20 = 0;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 280);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 280) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 280) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 280) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[16 * v20 + 19];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v27 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v27 = *(v24 + 8 * i + 32);
              }

              (*(*v27 + 96))();
            }
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v10)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 248);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 248) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v17 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v17 >= 1)
  {

    for (j = 0; j != v17; ++j)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](j, v16);
      }

      else
      {
        v19 = *(v16 + 8 * j + 32);
      }

      (*(*v19 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 176) & 1) == 0 && (a1)
  {
    *(v4 + 176) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 168);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 200) + 16))
      {
        return result;
      }

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 200) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 200, v29);
        v31 = *(*(v4 + 200) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 88;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 200);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 200) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 200) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 200) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[11 * v20 + 14];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 88;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 168);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 168) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 192) & 1) == 0 && (a1)
  {
    *(v4 + 192) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 184);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 216) + 16))
      {
        return result;
      }

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 216) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 216, v29);
        v31 = *(*(v4 + 216) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 96;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 216) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 216) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 216) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[12 * v20 + 15];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 96;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 184);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 184) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 592) & 1) == 0 && (a1)
  {
    *(v4 + 592) = a1 & 1;
    v13 = v4 + 584;
    swift_beginAccess();
    v14 = *(v4 + 584);
    if (v14 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      v13 = v4 + 616;
      result = swift_beginAccess();
      if (!*(*(v4 + 616) + 16))
      {
        return result;
      }

      v33 = v10;
      IndexSet.init()();
      v21 = *(*v13 + 16);
      if (!v21)
      {
LABEL_36:
        swift_beginAccess();
        v30 = v35;
        specialized Collection.subscript.getter(v35);
        a2 = 0;
        v31 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v13, v30);
        v32 = *(*v13 + 16);
        if (v32 < v31)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v31, v32);
        outlined destroy of Slice<IndexSet>(v30, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v34 + 8))(v12, v33);
      }

      v4 = 0;
      v10 = 296;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v22 = *v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
          *v13 = v22;
        }

        if (v4 >= v22[2])
        {
          break;
        }

        v24 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *v13 = v22;
        swift_endAccess();
        if ((v24 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v4 >= v22[2])
        {
          goto LABEL_40;
        }

        v25 = v22[37 * v4 + 40];
        if (v25 >> 62)
        {
          v26 = __CocoaSet.count.getter();
          if (v26)
          {
LABEL_28:
            if (v26 < 1)
            {
              goto LABEL_41;
            }

            v27 = v12;

            for (i = 0; i != v26; ++i)
            {
              if ((v25 & 0xC000000000000001) != 0)
              {
                v29 = MEMORY[0x193AC03C0](i, v25);
              }

              else
              {
                v29 = *(v25 + 8 * i + 32);
              }

              (*(*v29 + 96))();
            }

            v12 = v27;
            v10 = 296;
          }
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v4);
LABEL_20:
        if (++v4 == v21)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *v13;
    if (!(*v13 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *v13 = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v17 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v17 >= 1)
  {
    v18 = v12;

    for (j = 0; j != v17; ++j)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x193AC03C0](j, v16);
      }

      else
      {
        v20 = *(v16 + 8 * j + 32);
      }

      (*(*v20 + 96))();
    }

    v12 = v18;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 272) & 1) == 0 && (a1)
  {
    *(v4 + 272) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 264);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 296) + 16))
      {
        return result;
      }

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 296) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 296, v29);
        v31 = *(*(v4 + 296) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 136;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 296);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 296) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 296) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 296) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[17 * v20 + 20];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 136;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 264);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 264) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 288) & 1) == 0 && (a1)
  {
    *(v4 + 288) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 280);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 312) + 16))
      {
        return result;
      }

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 312) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 312, v29);
        v31 = *(*(v4 + 312) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 144;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 312);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 312) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 312) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 312) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[18 * v20 + 21];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 144;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 280);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 280) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 336) & 1) == 0 && (a1)
  {
    *(v4 + 336) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 328);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      result = swift_beginAccess();
      if (!*(*(v4 + 360) + 16))
      {
        return result;
      }

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 360) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 360, v29);
        v31 = *(*(v4 + 360) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 168;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 360);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 360) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 360) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 360) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[21 * v20 + 24];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 168;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 328);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 328) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 144) & 1) == 0 && (a1)
  {
    *(v4 + 144) = a1 & 1;
    swift_beginAccess();
    v13 = *(v4 + 136);
    if (v13 >> 62)
    {
      goto LABEL_43;
    }

    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
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

      v32 = v10;
      IndexSet.init()();
      v19 = *(*(v4 + 168) + 16);
      if (!v19)
      {
LABEL_36:
        swift_beginAccess();
        v29 = v34;
        specialized Collection.subscript.getter(v34);
        a2 = 0;
        v30 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 168, v29);
        v31 = *(*(v4 + 168) + 16);
        if (v31 < v30)
        {
          goto LABEL_42;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v30, v31);
        outlined destroy of Slice<IndexSet>(v29, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        return (*(v33 + 8))(v12, v32);
      }

      v20 = 0;
      v10 = 72;
      a2 = a2 | ((HIDWORD(a2) & 1) << 32);
      while (1)
      {
        swift_beginAccess();
        v21 = *(v4 + 168);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 168) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          *(v4 + 168) = v21;
        }

        if (v20 >= v21[2])
        {
          break;
        }

        v23 = specialized AnimatorState.Fork.update(time:environment:)(a3);
        *(v4 + 168) = v21;
        swift_endAccess();
        if ((v23 & 1) == 0)
        {
          goto LABEL_20;
        }

        if (v20 >= v21[2])
        {
          goto LABEL_40;
        }

        v24 = v21[9 * v20 + 12];
        if (v24 >> 62)
        {
          v25 = __CocoaSet.count.getter();
          if (v25)
          {
LABEL_28:
            if (v25 < 1)
            {
              goto LABEL_41;
            }

            v26 = v12;

            for (i = 0; i != v25; ++i)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x193AC03C0](i, v24);
              }

              else
              {
                v28 = *(v24 + 8 * i + 32);
              }

              (*(*v28 + 96))();
            }

            v12 = v26;
            v10 = 72;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v25)
          {
            goto LABEL_28;
          }
        }

        IndexSet.insert(_:)(v20);
LABEL_20:
        if (++v20 == v19)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = __CocoaSet.count.getter();
      if (!result)
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

  result = __CocoaSet.count.getter();
  v16 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (j = 0; j != v16; ++j)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](j, v15);
      }

      else
      {
        v18 = *(v15 + 8 * j + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

double sub_18D27E720(double a1)
{
  result = *v1 * a1;
  *v1 = result;
  return result;
}

uint64_t _ViewOutputs.layoutComputer.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 12) = v2;
  v3 = *(v1 + 8);
  if ((v3 & 0x80) == 0)
  {
    *(v1 + 8) = v3 | 0x80;
  }

  return result;
}

void *outlined init with copy of _AnyAnimatableData(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[4];
  a2[4] = v3;
  (**(v3 - 8))((a2 + 1), (a1 + 1));
  return a2;
}

double _s7SwiftUI14GraphicsFilterOSgWOi0_(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 1023213056;
  return result;
}

uint64_t _s7SwiftUI14GraphicsFilterOSgWOg(uint64_t a1)
{
  v1 = (((*(a1 + 120) >> 13) & 0x1E000 | (*(a1 + 120) >> 11) & 0x1FFFu) >> 12) & 0xFFFE001F | (32 * ((*(a1 + 120) >> 11) & 0xF80 | (*(a1 + 120) >> 9) & 0xFFF));
  v2 = v1 ^ 0x1FFF8;
  v3 = 0x20000 - v1;
  if (v2 >= 0x1FFE8)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance AnyLayout()
{
  return (*(**v0 + 128))();
}

{
  return (*(**v0 + 136))();
}

uint64_t _AnyLayoutBox.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  v38 = a5;
  v40 = a2;
  v41 = a4;
  v36 = a3;
  v39 = a1;
  v18 = *(*v11 + 184);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v33 - v20;
  v23 = *(v22 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v33 - v25;
  v27 = *a6;
  v33 = *(a6 + 1);
  v28 = *(a6 + 16);
  LODWORD(v25) = *(a6 + 17);
  v34 = v27;
  v35 = v25;
  outlined init with copy of Any(a7 + 8, v48);
  swift_dynamicCast();
  v29 = *(*v11 + 200);
  swift_beginAccess();
  (*(v19 + 16))(v21, v11 + v29, v18);
  v44 = v34;
  v45 = v33;
  v46 = v28;
  v30 = *(v23 + 72);
  v47 = v35;
  v43 = v36 & 1;
  v42 = v38 & 1;
  v31 = v30(v39, v40, a8, a9, a10, a11);
  (*(v19 + 8))(v21, v18);
  $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(a7, v26);
  (*(v37 + 8))(v26, AssociatedTypeWitness);
  return v31;
}

{
  v38 = a5;
  v40 = a2;
  v41 = a4;
  v36 = a3;
  v39 = a1;
  v18 = *(*v11 + 184);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v33 - v20;
  v23 = *(v22 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v33 - v25;
  v27 = *a6;
  v33 = *(a6 + 1);
  v28 = *(a6 + 16);
  LODWORD(v25) = *(a6 + 17);
  v34 = v27;
  v35 = v25;
  outlined init with copy of Any(a7 + 8, v48);
  swift_dynamicCast();
  v29 = *(*v11 + 200);
  swift_beginAccess();
  (*(v19 + 16))(v21, v11 + v29, v18);
  v44 = v34;
  v45 = v33;
  v46 = v28;
  v30 = *(v23 + 80);
  v47 = v35;
  v43 = v36 & 1;
  v42 = v38 & 1;
  v31 = v30(v39, v40, a8, a9, a10, a11);
  (*(v19 + 8))(v21, v18);
  $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(a7, v26);
  (*(v37 + 8))(v26, AssociatedTypeWitness);
  return v31;
}

uint64_t _AnyLayoutBox.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, int *a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v35 = a2;
  v36 = a4;
  v37 = a1;
  v38 = a3;
  v17 = *(*v10 + 184);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v31 - v19;
  v22 = *(v21 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v31 - v24;
  v26 = *a5;
  v31 = *(a5 + 1);
  v27 = *(a5 + 16);
  LODWORD(v24) = *(a5 + 17);
  v32 = v26;
  v33 = v24;
  outlined init with copy of Any(a6 + 8, v45);
  swift_dynamicCast();
  v28 = *(*v10 + 200);
  swift_beginAccess();
  (*(v18 + 16))(v20, v10 + v28, v17);
  v41 = v32;
  v42 = v31;
  v43 = v27;
  v29 = *(v22 + 64);
  v44 = v33;
  v40 = v35 & 1;
  v39 = v36 & 1;
  v29(v37, a7, a8, a9, a10);
  (*(v18 + 8))(v20, v17);
  $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(a6, v25);
  return (*(v34 + 8))(v25, AssociatedTypeWitness);
}

uint64_t View.offset(x:y:)(uint64_t a1, double a2, double a3)
{
  *v4 = a2;
  *&v4[1] = a3;
  return View.modifier<A>(_:)(v4, a1, &type metadata for _OffsetEffect);
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v196 = *MEMORY[0x1E69E9840];
  v178 = type metadata accessor for OSSignpostID();
  v175 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v16 = (&v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v159 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v159 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v159 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v177 = &v159 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v168 = &v159 - v29;
  if (*(a4 + 48))
  {
    Value = AGGraphGetValue();
    if (v31)
    {
      v32 = *Value;
    }

    else
    {
      v32 = -INFINITY;
    }
  }

  else
  {
    v32 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_125;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  if (*(a4 + 40))
  {
    goto LABEL_124;
  }

  v6 = *(a4 + 24);
  v5 = *(a4 + 32);
  v7 = *(a4 + 16);
  if (v8 == v7 && v9 == v6 && v10 == v5)
  {
    goto LABEL_124;
  }

  v174 = v16;
  v173 = *&v22;
  v159 = v19;
  v165 = a1;
  AGGraphClearUpdate();
  v34 = *(a4 + 16);
  v193 = *a4;
  v194 = v34;
  *v195 = *(a4 + 32);
  *&v195[12] = *(a4 + 44);
  v4 = &type metadata for RoundedRectangle._Inset;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v193, &v188, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
  v35 = *AGGraphGetValue();

  v36 = v35;
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v37 = Transaction.effectiveAnimation.getter(v35);
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_123;
    }

    v38 = a2;
  }

  v39 = *&v195[16];
  v40 = v8 - v7;
  v41 = v9 - v6;
  v42 = v10 - v5;
  v32 = *AGGraphGetValue();
  v164 = a4;
  v160 = a3;
  v162 = v36;
  v161 = v38;
  if (!v39)
  {
    *&v183.f64[0] = &type metadata for RoundedRectangle._Inset;
    type metadata accessor for RoundedRectangle._Inset.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>);
    v69 = swift_dynamicCast();
    if (v69)
    {
      v70 = *&v188.f64[0];
    }

    else
    {
      v70 = 0;
    }

    if (v69)
    {
      v71 = *&v188.f64[1];
    }

    else
    {
      v71 = 0;
    }

    v163 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAYGG_Tt4B5Tm(v72, v36, v70, v71, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>, v40, v41, v42, v32);
    *&v73 = COERCE_DOUBLE(AGGraphGetCurrentAttribute());
    a4 = v73;
    LODWORD(v54) = *MEMORY[0x1E698D3F8];
    if (v73 == *MEMORY[0x1E698D3F8])
    {
      v74 = 0;
    }

    else
    {
      v74 = v73;
    }

    (*(*v38 + 96))(&v183);
    v75 = v183;
    v76 = v184;
    v77 = v185;
    v78 = v186;
    *&v182 = NAN;
    v181 = NAN;
    v180 = 1.0;
    v179 = NAN;
    v188 = v183;
    v189 = *&v184;
    v190 = *&v185;
    v191 = *&v186;
    LODWORD(v176) = v187;
    LOBYTE(v192) = v187;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v188, &v182, &v181, &v180, &v179);
    v5 = *&v182;
    v6 = v181;
    v7 = v180;
    v79 = v179;
    if (one-time initialization token for enabledCategories != -1)
    {
      v173 = v179;
      swift_once();
      v79 = v173;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v80 = static CustomEventTrace.recorder) != 0)
      {
        v81 = a4 == LODWORD(v54);
        v172 = v78;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v173) = LODWORD(v54);
        *&v54 = v76;
        v82 = *(v80 + 16);
        LODWORD(v188.f64[0]) = v74;
        BYTE4(v188.f64[0]) = v81;
        *&v188.f64[1] = &type metadata for RoundedRectangle._Inset;
        v189 = v5;
        v190 = v6;
        v191 = v7;
        v192 = v79;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v83 = v82;
        AGGraphAddTraceEvent();
        v84 = *&v54;
        LODWORD(v54) = LODWORD(v173);
        outlined consume of Animation.Function(*&v75.f64[0], *&v75.f64[1], v84, v77, v172, v176);
      }

      else
      {
        outlined consume of Animation.Function(*&v75.f64[0], *&v75.f64[1], v76, v77, v78, v176);
      }

      v85 = one-time initialization token for animationState;

      a4 = v164;
      if (v85 == -1)
      {
        goto LABEL_54;
      }
    }

    swift_once();
LABEL_54:
    v59 = *(&static Signpost.animationState + 1);
    *&v55 = static Signpost.animationState;
    LODWORD(v4) = word_1ED5283E8;
    v56 = HIBYTE(word_1ED5283E8);
    v86 = byte_1ED5283EA;
    LOBYTE(v61) = static os_signpost_type_t.begin.getter();
    v188 = __PAIR128__(v59, *&v55);
    LOBYTE(v189) = v4;
    BYTE1(v189) = v56;
    BYTE2(v189) = v86;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v95 = v163;

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_61;
    }

    v87 = one-time initialization token for _signpostLog;

    if (v87 != -1)
    {
      goto LABEL_198;
    }

    goto LABEL_56;
  }

  v159 = v25;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v193, &v188, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v188.f64[0]) = 0;
  v163 = v39;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v38, v36, v40, v41, v42, v32);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  LODWORD(v4) = CurrentAttribute;
  v44 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v45 = 0;
  }

  else
  {
    v45 = CurrentAttribute;
  }

  (*(*v38 + 96))(&v183);
  v46 = v183.f64[1];
  v47 = *&v183.f64[0];
  v48 = v184;
  *&v182 = NAN;
  v181 = NAN;
  v180 = 1.0;
  v179 = NAN;
  v188 = v183;
  v189 = *&v184;
  v49 = v185;
  v190 = *&v185;
  v174 = v186;
  v191 = *&v186;
  LODWORD(v176) = v187;
  LOBYTE(v192) = v187;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v188, &v182, &v181, &v180, &v179);
  v5 = *&v182;
  v6 = v181;
  v7 = v180;
  v50 = v179;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_191;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_193:
      swift_once();
      goto LABEL_29;
    }

    v51 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v172) = v44;
    if (v51 && (v52 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v53 = *(v52 + 16);
      LODWORD(v188.f64[0]) = v45;
      BYTE4(v188.f64[0]) = v4 == v44;
      *&v188.f64[1] = &type metadata for RoundedRectangle._Inset;
      v189 = v5;
      v190 = v6;
      v191 = v7;
      v192 = v50;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v4 = v53;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v47, *&v46, v48, v49, v174, v176);
    }

    else
    {
      outlined consume of Animation.Function(v47, *&v46, v48, v49, v174, v176);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v193, &v188, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_193;
    }

LABEL_29:
    v55 = *(&static Signpost.animationState + 1);
    *&v54 = static Signpost.animationState;
    v56 = word_1ED5283E8;
    v57 = HIBYTE(word_1ED5283E8);
    v58 = byte_1ED5283EA;
    v59 = static os_signpost_type_t.event.getter();
    v188 = __PAIR128__(*&v55, *&v54);
    LOBYTE(v189) = v56;
    BYTE1(v189) = v57;
    BYTE2(v189) = v58;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
LABEL_92:
      a4 = v164;
      a3 = v160;
      goto LABEL_122;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v193, &v188, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v60 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v61 = COERCE_DOUBLE(swift_allocObject());
    *(v61 + 16) = xmmword_18DDAF080;
    v62 = AGGraphGetCurrentAttribute();
    LODWORD(v4) = v172;
    if (v62 == v172)
    {
      __break(1u);
    }

    else
    {
      v63 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v65 = MEMORY[0x1E69E6870];
      *(v61 + 56) = MEMORY[0x1E69E6810];
      *(v61 + 64) = v65;
      *(v61 + 32) = Counter;
      v66 = AGGraphGetCurrentAttribute();
      if (v66 != v4)
      {
        v67 = MEMORY[0x1E69E76D0];
        *(v61 + 96) = MEMORY[0x1E69E7668];
        *(v61 + 104) = v67;
        *(v61 + 72) = v66;
        *(v61 + 136) = MEMORY[0x1E69E6158];
        *(v61 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v61 + 112) = 0x7465736E495FLL;
        *(v61 + 120) = 0xE600000000000000;
        if (v57)
        {
          LOBYTE(v179) = v59;
          *&v182 = COERCE_DOUBLE(&dword_18D018000);
          v181 = v60;
          v188.f64[0] = v54;
          v188.f64[1] = v55;
          LOBYTE(v189) = v56;
          *&v183.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v183.f64[1] = 39;
          LOBYTE(v184) = 2;
          v180 = *&v61;
          v68 = v159;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          (*(v175 + 8))(v68, v178);
        }

        else
        {
          v96 = LOBYTE(v54);
          if (LOBYTE(v54) == 20)
          {
            v94 = 3;
          }

          else
          {
            v94 = 4;
          }

          a4 = bswap32(LOWORD(v54)) | (4 * HIWORD(LODWORD(v54)));
          v49 = v59;
          v97 = v175 + 16;
          v166 = *(v175 + 16);
          v98 = v166(*&v173, v159, v178);
          v99 = 0;
          LOBYTE(v183.f64[0]) = 1;
          v176 = v94;
          v171 = 16 * v94;
          v167 = v97;
          v172 = (v97 - 8);
          v170 = v61 + 32;
          v169 = v96;
          do
          {
            v174 = &v159;
            MEMORY[0x1EEE9AC00](v98);
            a1 = &v159 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
            v102 = (a1 + 8);
            v103 = v176;
            v104 = (a1 + 8);
            do
            {
              *(v104 - 1) = 0;
              *v104 = 0;
              v104 += 16;
              v103 = (v103 - 1);
            }

            while (v103);
            v4 = (v170 + 40 * v99);
            p_Description = v176;
            while (1)
            {
              v106 = *(v61 + 16);
              if (v99 == v106)
              {
                break;
              }

              if (v99 >= v106)
              {
                goto LABEL_182;
              }

              ++v99;
              outlined init with copy of AnyTrackedValue(v4, &v188);
              v94 = *&v190;
              __swift_project_boxed_opaque_existential_1(&v188, *&v190);
              *(v102 - 1) = CVarArg.kdebugValue(_:)(a4 | v49, v94);
              *v102 = v107 & 1;
              v102 += 16;
              v100 = __swift_destroy_boxed_opaque_existential_1(&v188);
              v4 = (v4 + 40);
              if (!--p_Description)
              {
                goto LABEL_75;
              }
            }

            LOBYTE(v183.f64[0]) = 0;
LABEL_75:
            v4 = v169;
            if (v169 == 20)
            {
              v108 = v173;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v108 = v173;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v109 = *v172;
            v94 = v178;
            (*v172)(*&v108, v178);
            v110 = __swift_project_value_buffer(v94, static OSSignpostID.continuation);
            v98 = v166(*&v108, v110, v94);
          }

          while ((LOBYTE(v183.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          v111 = v178;
          v109(*&v108, v178);
          v109(v159, v111);
        }

        goto LABEL_92;
      }
    }

    __break(1u);
LABEL_198:
    swift_once();
LABEL_56:
    v88 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v54))
    {
      __break(1u);
LABEL_200:
      __break(1u);
    }

    v89 = AGGraphGetAttributeGraph();
    v90 = AGGraphGetCounter();

    v91 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v91;
    *(a4 + 32) = v90;
    v92 = AGGraphGetCurrentAttribute();
    if (v92 == LODWORD(v54))
    {
      goto LABEL_200;
    }

    v93 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v93;
    *(a4 + 72) = v92;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 112) = 0x7465736E495FLL;
    *(a4 + 120) = 0xE600000000000000;
    v94 = v159;
    if (v56)
    {
      LOBYTE(v179) = v61;
      *&v182 = COERCE_DOUBLE(&dword_18D018000);
      v181 = v88;
      v188.f64[0] = v55;
      *&v188.f64[1] = v59;
      LOBYTE(v189) = v4;
      *&v183.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v183.f64[1] = 39;
      LOBYTE(v184) = 2;
      v180 = *&a4;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v95 = v163;

      (*(v175 + 8))(v94, v178);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      a4 = v164;
LABEL_61:
      *(a4 + 48) = v95;
    }

    else
    {
      v112 = LOBYTE(v55);
      v113 = v61;
      v114 = LOBYTE(v55) == 20 ? 3 : 4;
      a1 = bswap32(LOWORD(v55)) | (4 * HIWORD(LODWORD(v55)));
      v49 = v113;
      v115 = v175 + 16;
      v166 = *(v175 + 16);
      v116 = v166(v174, v159, v178);
      v99 = 0;
      LOBYTE(v183.f64[0]) = 1;
      v172 = (16 * v114);
      v167 = v115;
      *&v173 = v115 - 8;
      v171 = a4 + 32;
      v169 = v112;
      v170 = v114;
      do
      {
        v176 = &v159;
        MEMORY[0x1EEE9AC00](v116);
        v4 = (&v159 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0));
        p_Description = &v4->Description;
        v118 = v114;
        v119 = &v4->Description;
        do
        {
          *(v119 - 1) = 0;
          *v119 = 0;
          v119 += 2;
          --v118;
        }

        while (v118);
        v120 = v171 + 40 * v99;
        while (1)
        {
          v121 = *(a4 + 16);
          if (v99 == v121)
          {
            break;
          }

          if (v99 >= v121)
          {
            goto LABEL_183;
          }

          ++v99;
          outlined init with copy of AnyTrackedValue(v120, &v188);
          v94 = *&v190;
          __swift_project_boxed_opaque_existential_1(&v188, *&v190);
          *(p_Description - 8) = CVarArg.kdebugValue(_:)(a1 | v49, v94);
          *p_Description = v122 & 1;
          p_Description += 16;
          v100 = __swift_destroy_boxed_opaque_existential_1(&v188);
          v120 += 40;
          if (!--v114)
          {
            goto LABEL_105;
          }
        }

        LOBYTE(v183.f64[0]) = 0;
LABEL_105:
        v123 = v169;
        if (v169 == 20)
        {
          v124 = v174;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v124 = v174;
        }

        v114 = v170;
        if (LOBYTE(v4->Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[1].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[2].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (v123 != 20 && LOBYTE(v4[3].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v94 = **&v173;
        v125 = v178;
        (**&v173)(v124, v178);
        v126 = __swift_project_value_buffer(v125, static OSSignpostID.continuation);
        v116 = v166(v124, v126, v125);
      }

      while ((LOBYTE(v183.f64[0]) & 1) != 0);
      v127 = v163;

      v128 = v178;
      (v94)(v124, v178);
      (v94)(v159, v128);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      a4 = v164;
      *(v164 + 48) = v127;
    }

    a3 = v160;
LABEL_122:
    specialized AnimatorState.addListeners(transaction:)(v162);

LABEL_123:

    a1 = v165;
LABEL_124:
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
    *(a4 + 40) = 0;
LABEL_125:
    p_Description = *(a4 + 48);
    if (!p_Description)
    {
      return result;
    }

    v129 = *(a1 + 24);
    v188 = *a1;
    v189 = v129;

    LOBYTE(v193) = 0;
    v130 = specialized AnimatorState.update(_:at:environment:)(&v188, a3, v32);
    v100 = AGGraphGetCurrentAttribute();
    v49 = *MEMORY[0x1E698D3F8];
    if (v100 == v49)
    {
      LODWORD(v99) = 0;
    }

    else
    {
      LODWORD(v99) = v100;
    }

    v94 = &type metadata instantiation cache for TupleTypeDescription;
    if (v130)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_184;
      }

      goto LABEL_131;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_186;
    }

LABEL_144:
    v140 = *(v94 + 616);
    if (*(v140 + 16) >= 0x43uLL)
    {
      if (*(v140 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v193) = v99;
        BYTE4(v193) = v100 == v49;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_179;
    }

    __break(1u);
LABEL_188:
    swift_once();
LABEL_136:
    v48 = *(&static Signpost.animationState + 1);
    v99 = static Signpost.animationState;
    v45 = word_1ED5283E8;
    v47 = HIBYTE(word_1ED5283E8);
    v133 = byte_1ED5283EA;
    v44 = static os_signpost_type_t.end.getter();
    v193 = __PAIR128__(v48, v99);
    LOBYTE(v194) = v45;
    BYTE1(v194) = v47;
    BYTE2(v194) = v133;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_178;
    }

    v165 = a1;
    v134 = one-time initialization token for _signpostLog;

    if (v134 != -1)
    {
      swift_once();
    }

    v164 = a4;
    v46 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v49)
    {
      break;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    *&v171 = v50;
    swift_once();
    v50 = *&v171;
  }

  v135 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v136 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v136;
  *(a1 + 32) = v4;
  v137 = AGGraphGetCurrentAttribute();
  if (v137 == v49)
  {
    goto LABEL_190;
  }

  v138 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v138;
  *(a1 + 72) = v137;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0x7465736E495FLL;
  *(a1 + 120) = 0xE600000000000000;
  if (v47)
  {
    LOBYTE(v179) = v44;
    *&v182 = COERCE_DOUBLE(&dword_18D018000);
    v181 = v46;
    *&v193 = v99;
    *(&v193 + 1) = v48;
    LOBYTE(v194) = v45;
    *&v183.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v183.f64[1] = 37;
    LOBYTE(v184) = 2;
    v180 = *&a1;
    v139 = v168;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v175 + 8))(v139, v178);
    goto LABEL_177;
  }

  v141 = v99;
  if (v99 == 20)
  {
    p_Description = 3;
  }

  else
  {
    p_Description = 4;
  }

  v49 = bswap32(v99) | (4 * WORD1(v99));
  LODWORD(v99) = v44;
  v94 = v175 + 16;
  v169 = *(v175 + 16);
  v142 = (v169)(v177, v168, v178);
  v143 = 0;
  LOBYTE(v183.f64[0]) = 1;
  *&v173 = 16 * p_Description;
  v175 = v94;
  v174 = (v94 - 8);
  v172 = (a1 + 32);
  v171 = v141;
  v170 = p_Description;
  do
  {
    v176 = &v159;
    MEMORY[0x1EEE9AC00](v142);
    a4 = &v159 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
    v145 = (a4 + 8);
    v146 = p_Description;
    v147 = (a4 + 8);
    do
    {
      *(v147 - 1) = 0;
      *v147 = 0;
      v147 += 16;
      --v146;
    }

    while (v146);
    v4 = &v172[5 * v143];
    while (1)
    {
      v148 = *(a1 + 16);
      if (v143 == v148)
      {
        break;
      }

      if (v143 >= v148)
      {
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        v157 = v100;
        swift_once();
        v100 = v157;
LABEL_131:
        v131 = *(v94 + 616);
        if (*(v131 + 16) >= 0x43uLL)
        {
          if (*(v131 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v193) = v99;
            BYTE4(v193) = v100 == v49;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v132 = one-time initialization token for animationState;
          v167 = p_Description;

          if (v132 != -1)
          {
            goto LABEL_188;
          }

          goto LABEL_136;
        }

        __break(1u);
LABEL_186:
        v158 = v100;
        swift_once();
        v100 = v158;
        goto LABEL_144;
      }

      ++v143;
      outlined init with copy of AnyTrackedValue(v4, &v193);
      v149 = *(&v194 + 1);
      v94 = *v195;
      __swift_project_boxed_opaque_existential_1(&v193, *(&v194 + 1));
      *(v145 - 1) = CVarArg.kdebugValue(_:)(v49 | v99, v149);
      *v145 = v150 & 1;
      v145 += 16;
      v100 = __swift_destroy_boxed_opaque_existential_1(&v193);
      v4 = (v4 + 40);
      if (!--p_Description)
      {
        goto LABEL_162;
      }
    }

    LOBYTE(v183.f64[0]) = 0;
LABEL_162:
    v151 = v171;
    if (v171 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a4 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v151 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v94 = *v174;
    v152 = v177;
    v153 = v178;
    (*v174)(v177, v178);
    v154 = __swift_project_value_buffer(v153, static OSSignpostID.continuation);
    v142 = (v169)(v152, v154, v153);
    p_Description = v170;
  }

  while ((LOBYTE(v183.f64[0]) & 1) != 0);

  v155 = v178;
  (v94)(v177, v178);
  (v94)(v168, v155);
LABEL_177:

  a1 = v165;
  a4 = v164;
LABEL_178:
  specialized AnimatorState.removeListeners()();

  *(a4 + 48) = 0;
LABEL_179:
  v156 = v189;
  *a1 = v188;
  *(a1 + 24) = v156;
  *(a1 + 32) = 1;
  return result;
}

{
  v196 = *MEMORY[0x1E69E9840];
  v178 = type metadata accessor for OSSignpostID();
  v175 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v15 = (&v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v157 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v157 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v157 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v177 = &v157 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v168 = &v157 - v28;
  if (*(a4 + 48))
  {
    Value = AGGraphGetValue();
    if (v30)
    {
      v31 = *Value;
    }

    else
    {
      v31 = -INFINITY;
    }
  }

  else
  {
    v31 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 24) = 1;
  }

  else if (*(a1 + 24) != 1)
  {
    goto LABEL_129;
  }

  v33 = vmulq_f64(*a1, vdupq_n_s64(0x4060000000000000uLL));
  v8 = *(a1 + 16) * 128.0;
  if (*(a4 + 40))
  {
    goto LABEL_128;
  }

  v6 = *(a4 + 24);
  v5 = *(a4 + 32);
  v7 = *(a4 + 16);
  v9 = v33.f64[1];
  v34 = v33.f64[0] == v7 && v33.f64[1] == v6;
  if (v34 && v8 == v5)
  {
    goto LABEL_128;
  }

  v174 = v15;
  v173 = v21;
  v158 = v18;
  v163 = v33;
  v165 = a1;
  AGGraphClearUpdate();
  v36 = *(a4 + 16);
  v193 = *a4;
  v194 = v36;
  *v195 = *(a4 + 32);
  *&v195[12] = *(a4 + 44);
  v4 = &type metadata for _RotationEffect;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v193, &v188, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
  v37 = *AGGraphGetValue();

  v38 = v37;
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v39 = Transaction.effectiveAnimation.getter(v37);
  if (v39)
  {
    v40 = v39;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_127;
    }

    v40 = a2;
  }

  v41 = *&v195[16];
  v42 = v163.f64[0] - v7;
  v43 = v9 - v6;
  v44 = v8 - v5;
  v31 = *AGGraphGetValue();
  v164 = a4;
  v159 = a3;
  v161 = v38;
  v160 = v40;
  if (!v41)
  {
    *&v183.f64[0] = &type metadata for _RotationEffect;
    type metadata accessor for _RotationEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
    v69 = swift_dynamicCast();
    if (v69)
    {
      v70 = v188;
    }

    else
    {
      v70 = 0;
    }

    if (v69)
    {
      v71 = *(&v188 + 1);
    }

    else
    {
      v71 = 0;
    }

    v162 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAYGG_Tt4B5Tm(v72, v38, v70, v71, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>, v42, v43, v44, v31);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    a4 = CurrentAttribute;
    LODWORD(v54) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v74 = 0;
    }

    else
    {
      v74 = CurrentAttribute;
    }

    (*(*v40 + 96))(&v183);
    v75 = v183;
    v76 = *&v184;
    v77 = v185;
    v78 = v186;
    *&v182 = NAN;
    v181 = NAN;
    v180 = 1.0;
    v179 = NAN;
    v188 = v183;
    v189 = v184;
    v190 = *&v185;
    v191 = *&v186;
    LODWORD(v176) = v187;
    LOBYTE(v192) = v187;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v188, &v182, &v181, &v180, &v179);
    v5 = *&v182;
    v6 = v181;
    v7 = v180;
    v9 = v179;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v79 = static CustomEventTrace.recorder) != 0)
      {
        v80 = a4 == LODWORD(v54);
        v172 = v78;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v173) = LODWORD(v54);
        *&v54 = v76;
        v81 = *(v79 + 16);
        LODWORD(v188) = v74;
        BYTE4(v188) = v80;
        *(&v188 + 1) = &type metadata for _RotationEffect;
        v189 = v5;
        v190 = v6;
        v191 = v7;
        v192 = v9;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v82 = v81;
        AGGraphAddTraceEvent();
        v83 = *&v54;
        LODWORD(v54) = v173;
        outlined consume of Animation.Function(*&v75.f64[0], *&v75.f64[1], v83, v77, v172, v176);
      }

      else
      {
        outlined consume of Animation.Function(*&v75.f64[0], *&v75.f64[1], v76, v77, v78, v176);
      }

      v84 = one-time initialization token for animationState;

      a4 = v164;
      if (v84 == -1)
      {
        goto LABEL_58;
      }
    }

    swift_once();
LABEL_58:
    v59 = *(&static Signpost.animationState + 1);
    *&v55 = static Signpost.animationState;
    LODWORD(v4) = word_1ED5283E8;
    v56 = HIBYTE(word_1ED5283E8);
    v85 = byte_1ED5283EA;
    LOBYTE(v61) = static os_signpost_type_t.begin.getter();
    v188 = __PAIR128__(v59, *&v55);
    LOBYTE(v189) = v4;
    BYTE1(v189) = v56;
    BYTE2(v189) = v85;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v94 = v162;

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_65;
    }

    v86 = one-time initialization token for _signpostLog;

    if (v86 != -1)
    {
      goto LABEL_202;
    }

    goto LABEL_60;
  }

  v158 = v24;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v193, &v188, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v188) = 0;
  v162 = v41;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v40, v38, v42, v43, v44, v31);
  v45 = AGGraphGetCurrentAttribute();
  LODWORD(v4) = v45;
  v46 = *MEMORY[0x1E698D3F8];
  if (v45 == *MEMORY[0x1E698D3F8])
  {
    v47 = 0;
  }

  else
  {
    v47 = v45;
  }

  (*(*v40 + 96))(&v183);
  v48 = v183.f64[1];
  v49 = *&v183.f64[0];
  v50 = *&v184;
  *&v182 = NAN;
  v181 = NAN;
  v180 = 1.0;
  v179 = NAN;
  v188 = v183;
  v189 = v184;
  v190 = *&v185;
  v51 = v185;
  v174 = v186;
  v191 = *&v186;
  LODWORD(v176) = v187;
  LOBYTE(v192) = v187;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v188, &v182, &v181, &v180, &v179);
  v5 = *&v182;
  v6 = v181;
  v7 = v180;
  v9 = v179;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_195;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
      goto LABEL_33;
    }

    v34 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v172) = v46;
    if (v34 && (v52 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v53 = *(v52 + 16);
      LODWORD(v188) = v47;
      BYTE4(v188) = v4 == v46;
      *(&v188 + 1) = &type metadata for _RotationEffect;
      v189 = v5;
      v190 = v6;
      v191 = v7;
      v192 = v9;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v4 = v53;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v49, *&v48, v50, v51, v174, v176);
    }

    else
    {
      outlined consume of Animation.Function(v49, *&v48, v50, v51, v174, v176);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v193, &v188, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_197;
    }

LABEL_33:
    v55 = *(&static Signpost.animationState + 1);
    *&v54 = static Signpost.animationState;
    v56 = word_1ED5283E8;
    v57 = HIBYTE(word_1ED5283E8);
    v58 = byte_1ED5283EA;
    v59 = static os_signpost_type_t.event.getter();
    v188 = __PAIR128__(*&v55, *&v54);
    LOBYTE(v189) = v56;
    BYTE1(v189) = v57;
    BYTE2(v189) = v58;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
LABEL_96:
      a4 = v164;
      a3 = v159;
      goto LABEL_126;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v193, &v188, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v60 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v61 = COERCE_DOUBLE(swift_allocObject());
    *(v61 + 16) = xmmword_18DDAF080;
    v62 = AGGraphGetCurrentAttribute();
    LODWORD(v4) = v172;
    if (v62 == v172)
    {
      __break(1u);
    }

    else
    {
      v63 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v65 = MEMORY[0x1E69E6870];
      *(v61 + 56) = MEMORY[0x1E69E6810];
      *(v61 + 64) = v65;
      *(v61 + 32) = Counter;
      v66 = AGGraphGetCurrentAttribute();
      if (v66 != v4)
      {
        v67 = MEMORY[0x1E69E76D0];
        *(v61 + 96) = MEMORY[0x1E69E7668];
        *(v61 + 104) = v67;
        *(v61 + 72) = v66;
        *(v61 + 136) = MEMORY[0x1E69E6158];
        *(v61 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v61 + 112) = 0x6F697461746F525FLL;
        *(v61 + 120) = 0xEF7463656666456ELL;
        if (v57)
        {
          LOBYTE(v179) = v59;
          *&v182 = COERCE_DOUBLE(&dword_18D018000);
          v181 = v60;
          *&v188 = v54;
          *(&v188 + 1) = v55;
          LOBYTE(v189) = v56;
          *&v183.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v183.f64[1] = 39;
          LOBYTE(v184) = 2;
          v180 = *&v61;
          v68 = v158;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
          (*(v175 + 8))(v68, v178);
        }

        else
        {
          if (LOBYTE(v54) == 20)
          {
            v95 = 3;
          }

          else
          {
            v95 = 4;
          }

          v96 = bswap32(LOWORD(v54)) | (4 * HIWORD(LODWORD(v54)));
          a4 = v59;
          v97 = v175 + 16;
          v166 = *(v175 + 16);
          v98 = v166(v173, v158, v178);
          v99 = 0;
          LOBYTE(v183.f64[0]) = 1;
          v176 = v95;
          v171 = 16 * v95;
          v167 = v97;
          v172 = (v97 - 8);
          v170 = v61 + 32;
          v169 = LOBYTE(v54);
          do
          {
            v174 = &v157;
            MEMORY[0x1EEE9AC00](v98);
            a1 = &v157 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
            v51 = a1 + 8;
            v102 = v176;
            v103 = (a1 + 8);
            do
            {
              *(v103 - 1) = 0;
              *v103 = 0;
              v103 += 16;
              v102 = (v102 - 1);
            }

            while (v102);
            v4 = (v170 + 40 * v99);
            p_Description = v176;
            while (1)
            {
              v105 = *(v61 + 16);
              if (v99 == v105)
              {
                break;
              }

              if (v99 >= v105)
              {
                goto LABEL_186;
              }

              ++v99;
              outlined init with copy of AnyTrackedValue(v4, &v188);
              v95 = *&v190;
              __swift_project_boxed_opaque_existential_1(&v188, *&v190);
              *(v51 - 8) = CVarArg.kdebugValue(_:)(v96 | a4, v95);
              *v51 = v106 & 1;
              v51 += 16;
              v100 = __swift_destroy_boxed_opaque_existential_1(&v188);
              v4 = (v4 + 40);
              if (!--p_Description)
              {
                goto LABEL_79;
              }
            }

            LOBYTE(v183.f64[0]) = 0;
LABEL_79:
            v4 = v169;
            if (v169 == 20)
            {
              v107 = v173;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v107 = v173;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v108 = *v172;
            v95 = v178;
            (*v172)(v107, v178);
            v109 = __swift_project_value_buffer(v95, static OSSignpostID.continuation);
            v98 = v166(v107, v109, v95);
          }

          while ((LOBYTE(v183.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
          v110 = v178;
          v108(v107, v178);
          v108(v158, v110);
        }

        goto LABEL_96;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_60:
    v87 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v54))
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v88 = AGGraphGetAttributeGraph();
    v89 = AGGraphGetCounter();

    v90 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v90;
    *(a4 + 32) = v89;
    v91 = AGGraphGetCurrentAttribute();
    if (v91 == LODWORD(v54))
    {
      goto LABEL_204;
    }

    v92 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v92;
    *(a4 + 72) = v91;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 112) = 0x6F697461746F525FLL;
    *(a4 + 120) = 0xEF7463656666456ELL;
    if (v56)
    {
      LOBYTE(v179) = v61;
      *&v182 = COERCE_DOUBLE(&dword_18D018000);
      v181 = v87;
      *&v188 = v55;
      *(&v188 + 1) = v59;
      LOBYTE(v189) = v4;
      *&v183.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v183.f64[1] = 39;
      LOBYTE(v184) = 2;
      v180 = *&a4;
      v93 = v158;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v94 = v162;

      (*(v175 + 8))(v93, v178);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v164;
LABEL_65:
      *(a4 + 48) = v94;
    }

    else
    {
      v111 = LOBYTE(v55);
      v112 = v61;
      v113 = LOBYTE(v55) == 20 ? 3 : 4;
      a1 = bswap32(LOWORD(v55)) | (4 * HIWORD(LODWORD(v55)));
      v51 = v112;
      v95 = v175 + 16;
      v166 = *(v175 + 16);
      v114 = v166(v174, v158, v178);
      v99 = 0;
      LOBYTE(v183.f64[0]) = 1;
      v172 = (16 * v113);
      v167 = v95;
      v173 = (v95 - 8);
      v171 = a4 + 32;
      v169 = v111;
      v170 = v113;
      do
      {
        v176 = &v157;
        MEMORY[0x1EEE9AC00](v114);
        v4 = (&v157 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
        p_Description = &v4->Description;
        v116 = v113;
        v117 = &v4->Description;
        do
        {
          *(v117 - 1) = 0;
          *v117 = 0;
          v117 += 2;
          --v116;
        }

        while (v116);
        v118 = v171 + 40 * v99;
        while (1)
        {
          v119 = *(a4 + 16);
          if (v99 == v119)
          {
            break;
          }

          if (v99 >= v119)
          {
            goto LABEL_187;
          }

          ++v99;
          outlined init with copy of AnyTrackedValue(v118, &v188);
          v95 = *&v190;
          __swift_project_boxed_opaque_existential_1(&v188, *&v190);
          *(p_Description - 8) = CVarArg.kdebugValue(_:)(a1 | v51, v95);
          *p_Description = v120 & 1;
          p_Description += 16;
          v100 = __swift_destroy_boxed_opaque_existential_1(&v188);
          v118 += 40;
          if (!--v113)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v183.f64[0]) = 0;
LABEL_109:
        v121 = v169;
        if (v169 == 20)
        {
          v122 = v174;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v122 = v174;
        }

        v113 = v170;
        if (LOBYTE(v4->Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[1].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[2].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (v121 != 20 && LOBYTE(v4[3].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v95 = *v173;
        v123 = v178;
        (*v173)(v122, v178);
        v124 = __swift_project_value_buffer(v123, static OSSignpostID.continuation);
        v114 = v166(v122, v124, v123);
      }

      while ((LOBYTE(v183.f64[0]) & 1) != 0);
      v125 = v162;

      v126 = v178;
      (v95)(v122, v178);
      (v95)(v158, v126);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v193, &lazy cache variable for type metadata for AnimatableAttributeHelper<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v164;
      *(v164 + 48) = v125;
    }

    a3 = v159;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v161);

LABEL_127:

    a1 = v165;
    v33 = v163;
LABEL_128:
    *(a4 + 16) = v33;
    *(a4 + 32) = v8;
    *(a4 + 40) = 0;
LABEL_129:
    p_Description = *(a4 + 48);
    if (!p_Description)
    {
      return result;
    }

    v127 = *(a1 + 16) * 128.0;
    v188 = vmulq_f64(*a1, vdupq_n_s64(0x4060000000000000uLL));
    v189 = v127;

    LOBYTE(v193) = 0;
    v128 = specialized AnimatorState.update(_:at:environment:)(&v188, a3, v31);
    v100 = AGGraphGetCurrentAttribute();
    v51 = *MEMORY[0x1E698D3F8];
    if (v100 == v51)
    {
      LODWORD(v99) = 0;
    }

    else
    {
      LODWORD(v99) = v100;
    }

    v95 = &type metadata instantiation cache for TupleTypeDescription;
    if (v128)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v138 = *(v95 + 616);
    if (*(v138 + 16) >= 0x43uLL)
    {
      if (*(v138 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v193) = v99;
        BYTE4(v193) = v100 == v51;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v50 = *(&static Signpost.animationState + 1);
    v99 = static Signpost.animationState;
    v47 = word_1ED5283E8;
    v49 = HIBYTE(word_1ED5283E8);
    v131 = byte_1ED5283EA;
    v46 = static os_signpost_type_t.end.getter();
    v193 = __PAIR128__(v50, v99);
    LOBYTE(v194) = v47;
    BYTE1(v194) = v49;
    BYTE2(v194) = v131;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    v165 = a1;
    v132 = one-time initialization token for _signpostLog;

    if (v132 != -1)
    {
      swift_once();
    }

    v164 = a4;
    v48 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v51)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
  }

  v133 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v134 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v134;
  *(a1 + 32) = v4;
  v135 = AGGraphGetCurrentAttribute();
  if (v135 == v51)
  {
    goto LABEL_194;
  }

  v136 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v136;
  *(a1 + 72) = v135;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0x6F697461746F525FLL;
  *(a1 + 120) = 0xEF7463656666456ELL;
  if (v49)
  {
    LOBYTE(v179) = v46;
    *&v182 = COERCE_DOUBLE(&dword_18D018000);
    v181 = v48;
    *&v193 = v99;
    *(&v193 + 1) = v50;
    LOBYTE(v194) = v47;
    *&v183.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v183.f64[1] = 37;
    LOBYTE(v184) = 2;
    v180 = *&a1;
    v137 = v168;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v175 + 8))(v137, v178);
    goto LABEL_181;
  }

  v139 = v99;
  if (v99 == 20)
  {
    p_Description = 3;
  }

  else
  {
    p_Description = 4;
  }

  v51 = bswap32(v99) | (4 * WORD1(v99));
  LODWORD(v99) = v46;
  v95 = v175 + 16;
  v169 = *(v175 + 16);
  v140 = (v169)(v177, v168, v178);
  v141 = 0;
  LOBYTE(v183.f64[0]) = 1;
  v173 = (16 * p_Description);
  v175 = v95;
  v174 = (v95 - 8);
  v172 = (a1 + 32);
  v171 = v139;
  v170 = p_Description;
  do
  {
    v176 = &v157;
    MEMORY[0x1EEE9AC00](v140);
    a4 = &v157 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
    v143 = (a4 + 8);
    v144 = p_Description;
    v145 = (a4 + 8);
    do
    {
      *(v145 - 1) = 0;
      *v145 = 0;
      v145 += 16;
      --v144;
    }

    while (v144);
    v4 = &v172[5 * v141];
    while (1)
    {
      v146 = *(a1 + 16);
      if (v141 == v146)
      {
        break;
      }

      if (v141 >= v146)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v155 = v100;
        swift_once();
        v100 = v155;
LABEL_135:
        v129 = *(v95 + 616);
        if (*(v129 + 16) >= 0x43uLL)
        {
          if (*(v129 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v193) = v99;
            BYTE4(v193) = v100 == v51;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v130 = one-time initialization token for animationState;
          v167 = p_Description;

          if (v130 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v156 = v100;
        swift_once();
        v100 = v156;
        goto LABEL_148;
      }

      ++v141;
      outlined init with copy of AnyTrackedValue(v4, &v193);
      v147 = *(&v194 + 1);
      v95 = *v195;
      __swift_project_boxed_opaque_existential_1(&v193, *(&v194 + 1));
      *(v143 - 1) = CVarArg.kdebugValue(_:)(v51 | v99, v147);
      *v143 = v148 & 1;
      v143 += 16;
      v100 = __swift_destroy_boxed_opaque_existential_1(&v193);
      v4 = (v4 + 40);
      if (!--p_Description)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v183.f64[0]) = 0;
LABEL_166:
    v149 = v171;
    if (v171 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a4 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v149 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v95 = *v174;
    v150 = v177;
    v151 = v178;
    (*v174)(v177, v178);
    v152 = __swift_project_value_buffer(v151, static OSSignpostID.continuation);
    v140 = (v169)(v150, v152, v151);
    p_Description = v170;
  }

  while ((LOBYTE(v183.f64[0]) & 1) != 0);

  v153 = v178;
  (v95)(v177, v178);
  (v95)(v168, v153);
LABEL_181:

  a1 = v165;
  a4 = v164;
LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(a4 + 48) = 0;
LABEL_183:
  v154 = v189 * 0.0078125;
  *a1 = vmulq_f64(v188, vdupq_n_s64(0x3F80000000000000uLL));
  *(a1 + 16) = v154;
  *(a1 + 24) = 1;
  return result;
}

{
  v228 = *MEMORY[0x1E69E9840];
  v194 = type metadata accessor for OSSignpostID();
  v192 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v11 = (v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = v177 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v195 = (v177 - v16);
  MEMORY[0x1EEE9AC00](v17);
  *&v193 = v177 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v196 = v177 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v177 - v22;
  if (*(a4 + 32))
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

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 124) = 1;
  }

  else if (*(a1 + 124) != 1)
  {
    goto LABEL_121;
  }

  v5 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_120;
  }

  v4 = *(a4 + 16);
  if (v5 == v4)
  {
    goto LABEL_120;
  }

  v181 = v14;
  v184 = v23;
  v185 = a1;
  AGGraphClearUpdate();
  v183 = a4;
  v28 = *(a4 + 32);

  v29 = *AGGraphGetValue();

  v180 = v28;

  AGGraphSetUpdate();
  v30 = Transaction.effectiveAnimation.getter(v29);
  if (v30)
  {
    v31 = v30;
    v191 = v11;
  }

  else
  {
    if (!a2)
    {

      v23 = v184;
      a1 = v185;
      a4 = v183;
      goto LABEL_120;
    }

    v191 = v11;

    v31 = a2;
  }

  v32 = v185;
  v33 = v5 - v4;
  v26 = *AGGraphGetValue();
  v179 = a3;
  v177[1] = v31;
  v178 = v29;
  if (!v180)
  {
    *&v214 = &type metadata for VariableBlurStyle;
    type metadata accessor for VariableBlurStyle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type);
    v71 = swift_dynamicCast();
    if (v71)
    {
      v72 = v221;
    }

    else
    {
      v72 = 0;
    }

    if (v71)
    {
      v73 = *(&v221 + 1);
    }

    else
    {
      v73 = 0;
    }

    v177[0] = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(v74, v29, v72, v73, v33, v26);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v76 = CurrentAttribute;
    LODWORD(v197) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v197)
    {
      v77 = 0;
    }

    else
    {
      v77 = CurrentAttribute;
    }

    v78 = v32[5];
    v218 = v32[4];
    v219 = v78;
    v220[0] = v32[6];
    v79 = v220[0];
    *(v220 + 12) = *(v32 + 108);
    v80 = v32[1];
    v214 = *v32;
    v215 = v80;
    v81 = v32[3];
    v216 = v32[2];
    v217 = v81;
    *(v227 + 12) = *(v220 + 12);
    v226 = v78;
    v227[0] = v79;
    v224 = v81;
    v225 = v218;
    v222 = v80;
    v223 = v216;
    v221 = v214;
    outlined init with copy of VariableBlurStyle(&v214, &v208);
    v82 = outlined destroy of VariableBlurStyle(&v221);
    (*(*v31 + 96))(&v202, v82);
    v84 = *&v202;
    v83 = v203;
    v85 = v206;
    v86 = v207;
    v200 = NAN;
    *&v201 = NAN;
    v198 = NAN;
    v199 = 1.0;
    v208 = v202;
    v209 = v203;
    v87 = v204;
    v210 = *&v204;
    v211 = *&v205;
    v195 = v205;
    v212 = v206;
    LOBYTE(v213) = v207;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v208, &v201, &v200, &v199, &v198);
    v88 = v200;
    v4 = *&v201;
    v89 = v198;
    v90 = v199;
    if (one-time initialization token for enabledCategories != -1)
    {
      v193 = v200;
      *&v189 = v199;
      *&v190 = v198;
      swift_once();
      v90 = *&v189;
      v89 = *&v190;
      v88 = v193;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_191;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v193 = v85;
      v91 = static CustomEventTrace.recorder;
      v92 = v197;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v190) = v86;
        v93 = *(v91 + 16);
        LODWORD(v208) = v77;
        BYTE4(v208) = v76 == v92;
        v209 = &type metadata for VariableBlurStyle;
        v210 = v4;
        v211 = v88;
        v212 = v90;
        v213 = v89;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v94 = v93;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v84, v83, v87, v195, *&v193, v190);

        goto LABEL_82;
      }

      v95 = v84;
      v96 = v83;
      v97 = v87;
      v98 = v195;
      v99 = *&v193;
    }

    else
    {
      v95 = v84;
      v96 = v83;
      v97 = v87;
      v98 = v195;
      v99 = *&v85;
    }

    outlined consume of Animation.Function(v95, v96, v97, v98, v99, v86);
LABEL_82:
    v117 = one-time initialization token for animationState;
    v83 = v177[0];

    if (v117 == -1)
    {
LABEL_83:
      v56 = *(&static Signpost.animationState + 1);
      v55 = *&static Signpost.animationState;
      v57 = word_1ED5283E8;
      v58 = HIBYTE(word_1ED5283E8);
      v118 = byte_1ED5283EA;
      LODWORD(v36) = static os_signpost_type_t.begin.getter();
      v208 = *&v55;
      v209 = v56;
      LOBYTE(v210) = v57;
      BYTE1(v210) = v58;
      BYTE2(v210) = v118;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        goto LABEL_118;
      }

      v119 = one-time initialization token for _signpostLog;

      if (v119 != -1)
      {
        goto LABEL_194;
      }

      goto LABEL_85;
    }

LABEL_191:
    swift_once();
    goto LABEL_83;
  }

  LOBYTE(v221) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v31, v29, v33, v26);
  v34 = AGGraphGetCurrentAttribute();
  v35 = v34;
  LODWORD(v36) = *MEMORY[0x1E698D3F8];
  if (v34 == *MEMORY[0x1E698D3F8])
  {
    v37 = 0;
  }

  else
  {
    v37 = v34;
  }

  v38 = v32[5];
  v218 = v32[4];
  v219 = v38;
  v220[0] = v32[6];
  v39 = v220[0];
  *(v220 + 12) = *(v32 + 108);
  v40 = v32[1];
  v214 = *v32;
  v215 = v40;
  v41 = v32[3];
  v216 = v32[2];
  v217 = v41;
  *(v227 + 12) = *(v220 + 12);
  v226 = v38;
  v227[0] = v39;
  v224 = v41;
  v225 = v218;
  v222 = v40;
  v223 = v216;
  v221 = v214;
  outlined init with copy of VariableBlurStyle(&v214, &v208);
  v42 = outlined destroy of VariableBlurStyle(&v221);
  (*(*v31 + 96))(&v202, v42);
  v23 = *&v202;
  v43 = v203;
  a4 = v204;
  v44 = v205;
  v45 = *&v206;
  v200 = NAN;
  *&v201 = NAN;
  v198 = NAN;
  v199 = 1.0;
  v208 = v202;
  v209 = v203;
  v210 = *&v204;
  v211 = *&v205;
  v212 = v206;
  LODWORD(v197) = v207;
  LOBYTE(v213) = v207;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v208, &v201, &v200, &v199, &v198);
  v46 = *&v200;
  v4 = *&v201;
  v47 = v198;
  v48 = v199;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_26;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v49 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v191 = v44;
      v50 = *(v49 + 16);
      LODWORD(v208) = v37;
      BYTE4(v208) = v35 == v36;
      v209 = &type metadata for VariableBlurStyle;
      v210 = v4;
      v211 = *&v46;
      v212 = v48;
      v213 = v47;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v51 = v50;
      v52 = a4;
      v53 = v51;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v23, v43, v52, v191, v45, v197);
    }

    else
    {
      outlined consume of Animation.Function(v23, v43, a4, v44, v45, v197);
    }

    v54 = one-time initialization token for animationState;

    if (v54 != -1)
    {
      goto LABEL_189;
    }

LABEL_26:
    v56 = *(&static Signpost.animationState + 1);
    v55 = *&static Signpost.animationState;
    v57 = word_1ED5283E8;
    v58 = HIBYTE(word_1ED5283E8);
    v59 = byte_1ED5283EA;
    v60 = static os_signpost_type_t.event.getter();
    v208 = *&v55;
    v209 = v56;
    LOBYTE(v210) = v57;
    BYTE1(v210) = v58;
    BYTE2(v210) = v59;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_79:
      a1 = v185;
      a4 = v183;
      goto LABEL_119;
    }

    LODWORD(v197) = v60;
    v61 = one-time initialization token for _signpostLog;

    if (v61 != -1)
    {
      swift_once();
    }

    v62 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v36)
    {
      __break(1u);
    }

    else
    {
      v64 = v36;
      v36 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v66 = MEMORY[0x1E69E6870];
      *(v63 + 56) = MEMORY[0x1E69E6810];
      *(v63 + 64) = v66;
      *(v63 + 32) = Counter;
      v67 = AGGraphGetCurrentAttribute();
      if (v67 != v64)
      {
        v68 = v63;
        v69 = MEMORY[0x1E69E76D0];
        *(v63 + 96) = MEMORY[0x1E69E7668];
        *(v63 + 104) = v69;
        *(v63 + 72) = v67;
        *(v63 + 136) = MEMORY[0x1E69E6158];
        *(v63 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v63 + 112) = 0xD000000000000011;
        *(v63 + 120) = 0x800000018DD7EB90;
        if (v58)
        {
          LOBYTE(v198) = v197;
          v200 = *&v62;
          *&v201 = COERCE_DOUBLE(&dword_18D018000);
          v208 = *&v55;
          v209 = v56;
          LOBYTE(v210) = v57;
          v202 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ updated");
          v203 = 39;
          LOBYTE(v204) = 2;
          v199 = *&v63;
          v70 = v193;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

          (*(v192 + 8))(COERCE_DOUBLE(*&v70), v194);
        }

        else
        {
          v100 = v55;
          if (v55 == 20)
          {
            a1 = 3;
          }

          else
          {
            a1 = 4;
          }

          LODWORD(v55) = bswap32(v55) | (4 * (v55 >> 16));
          LODWORD(v197) = v197;
          v101 = (v192 + 16);
          v181 = *(v192 + 16);
          v102 = v181(v195, *&v193, v194);
          v23 = 0;
          LOBYTE(v202) = 1;
          v182 = v101;
          v189 = 16 * a1;
          v190 = v101 - 8;
          v187 = v100;
          v188 = v63 + 32;
          v186 = a1;
          do
          {
            v191 = v177;
            MEMORY[0x1EEE9AC00](v102);
            a4 = v177 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
            v105 = a4 + 8;
            v106 = a1;
            v107 = (a4 + 8);
            do
            {
              *(v107 - 1) = 0;
              *v107 = 0;
              v107 += 16;
              --v106;
            }

            while (v106);
            v108 = (v188 + 40 * v23);
            while (1)
            {
              v109 = *(v68 + 16);
              if (v23 == v109)
              {
                break;
              }

              if (v23 >= v109)
              {
                goto LABEL_178;
              }

              ++v23;
              outlined init with copy of AnyTrackedValue(v108, &v208);
              LODWORD(v100) = v68;
              v110 = *&v211;
              __swift_project_boxed_opaque_existential_1(&v208, *&v211);
              *(v105 - 8) = CVarArg.kdebugValue(_:)(v55 | v197, v110);
              *v105 = v111 & 1;
              v105 += 16;
              v103 = __swift_destroy_boxed_opaque_existential_1(&v208);
              v108 += 5;
              if (!--a1)
              {
                goto LABEL_63;
              }
            }

            LOBYTE(v202) = 0;
LABEL_63:
            v100 = v187;
            if (v187 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            a1 = v186;
            if (*(a4 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a4 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a4 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v100 != 20 && *(a4 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v112 = *v190;
            v113 = v194;
            v114 = v195;
            (*v190)(v195, v194);
            v115 = __swift_project_value_buffer(v113, static OSSignpostID.continuation);
            v102 = v181(v114, v115, v113);
          }

          while ((LOBYTE(v202) & 1) != 0);

          v116 = v194;
          v112(v195, v194);
          v112(*&v193, v116);
        }

        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_85:
    LODWORD(v195) = v36;
    v193 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_18DDAF080;
    v121 = AGGraphGetCurrentAttribute();
    v122 = v197;
    if (v121 == v197)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v123 = AGGraphGetAttributeGraph();
    v124 = AGGraphGetCounter();

    v125 = MEMORY[0x1E69E6870];
    *(v120 + 56) = MEMORY[0x1E69E6810];
    *(v120 + 64) = v125;
    *(v120 + 32) = v124;
    v126 = AGGraphGetCurrentAttribute();
    if (v126 == v122)
    {
      goto LABEL_196;
    }

    v127 = MEMORY[0x1E69E76D0];
    *(v120 + 96) = MEMORY[0x1E69E7668];
    *(v120 + 104) = v127;
    *(v120 + 72) = v126;
    v197 = v120;
    *(v120 + 136) = MEMORY[0x1E69E6158];
    v197[18] = lazy protocol witness table accessor for type String and conformance String();
    v197[14] = 0xD000000000000011;
    v197[15] = 0x800000018DD7EB90;
    v128 = v197;
    if (v58)
    {
      LOBYTE(v198) = v195;
      v200 = v193;
      *&v201 = COERCE_DOUBLE(&dword_18D018000);
      v208 = *&v55;
      v209 = v56;
      LOBYTE(v210) = v57;
      v202 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ started");
      v203 = 39;
      LOBYTE(v204) = 2;
      v199 = *&v197;
      v129 = v181;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v83 = v177[0];

      (*(v192 + 8))(v129, v194);
    }

    else
    {
      v130 = v55;
      a4 = v55 == 20 ? 3 : 4;
      LODWORD(v55) = bswap32(v55) | (4 * (v55 >> 16));
      LODWORD(v100) = v195;
      v131 = v192 + 16;
      v182 = *(v192 + 16);
      v132 = v182(v191, v181, v194);
      v133 = v128;
      v105 = 0;
      LOBYTE(v202) = 1;
      v186 = v131;
      v187 = a4;
      *&v193 = v131 - 8;
      v189 = (v133 + 4);
      v190 = 16 * a4;
      v188 = v130;
      do
      {
        v195 = v177;
        MEMORY[0x1EEE9AC00](v132);
        v23 = v177 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
        a1 = v23 + 8;
        v135 = a4;
        v136 = (v23 + 8);
        do
        {
          *(v136 - 1) = 0;
          *v136 = 0;
          v136 += 16;
          --v135;
        }

        while (v135);
        v108 = (v189 + 40 * v105);
        while (1)
        {
          v137 = v197[2];
          if (v105 == v137)
          {
            break;
          }

          if (v105 >= v137)
          {
            goto LABEL_179;
          }

          ++v105;
          outlined init with copy of AnyTrackedValue(v108, &v208);
          v138 = *&v211;
          __swift_project_boxed_opaque_existential_1(&v208, *&v211);
          *(a1 - 8) = CVarArg.kdebugValue(_:)(v55 | v100, v138);
          *a1 = v139 & 1;
          a1 += 16;
          v103 = __swift_destroy_boxed_opaque_existential_1(&v208);
          v108 += 5;
          if (!--a4)
          {
            goto LABEL_102;
          }
        }

        LOBYTE(v202) = 0;
LABEL_102:
        v140 = v188;
        if (v188 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        a4 = v187;
        if (*(v23 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v23 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v23 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v140 != 20 && *(v23 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v141 = v194;
        v142 = **&v193;
        v143 = v191;
        (**&v193)(v191, v194);
        v144 = __swift_project_value_buffer(v141, static OSSignpostID.continuation);
        v132 = v182(v143, v144, v141);
      }

      while ((LOBYTE(v202) & 1) != 0);
      v83 = v177[0];

      v145 = v194;
      v142(v191, v194);
      v142(v181, v145);
    }

LABEL_118:
    a4 = v183;
    *(v183 + 32) = v83;
    a1 = v185;
LABEL_119:
    v23 = v184;
    a3 = v179;
    specialized AnimatorState.addListeners(transaction:)(v178);

LABEL_120:
    *(a4 + 16) = v5;
    *(a4 + 24) = 0;
LABEL_121:
    v105 = *(a4 + 32);
    if (!v105)
    {
      return result;
    }

    v208 = *a1;

    LOBYTE(v221) = 0;
    v146 = specialized AnimatorState.update(_:at:environment:)(&v208, a3, v26);
    v103 = AGGraphGetCurrentAttribute();
    LODWORD(v55) = *MEMORY[0x1E698D3F8];
    if (v103 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v100) = 0;
    }

    else
    {
      LODWORD(v100) = v103;
    }

    v108 = &type metadata instantiation cache for TupleTypeDescription;
    if (v146)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_180;
      }

      goto LABEL_127;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_182;
    }

LABEL_140:
    v159 = v108[77];
    if (*(v159 + 16) >= 0x43uLL)
    {
      if (*(v159 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v221) = v100;
        BYTE4(v221) = v103 == v55;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_175;
    }

    __break(1u);
LABEL_184:
    swift_once();
LABEL_132:
    v36 = *(&static Signpost.animationState + 1);
    v149 = static Signpost.animationState;
    v44 = word_1ED5283E8;
    v35 = HIBYTE(word_1ED5283E8);
    v150 = byte_1ED5283EA;
    v151 = static os_signpost_type_t.end.getter();
    v195 = v149;
    v221 = __PAIR128__(v36, v149);
    v193 = *&v36;
    LOBYTE(v222) = v44;
    BYTE1(v222) = v35;
    BYTE2(v222) = v150;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    LODWORD(v191) = v151;
    v152 = one-time initialization token for _signpostLog;
    v45 = v186;

    if (v152 != -1)
    {
      swift_once();
    }

    v183 = a4;
    v185 = a1;
    v153 = COERCE_DOUBLE(_signpostLog);
    v184 = v23;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_18DDAF080;
    v154 = AGGraphGetCurrentAttribute();
    v37 = v197;
    if (v154 != v197)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    *&v190 = v47;
    v191 = v46;
    *&v189 = v48;
    swift_once();
    v48 = *&v189;
    v47 = *&v190;
    v46 = v191;
  }

  a4 = AGGraphGetAttributeGraph();
  v23 = AGGraphGetCounter();

  v155 = MEMORY[0x1E69E6870];
  *(v43 + 56) = MEMORY[0x1E69E6810];
  *(v43 + 64) = v155;
  *(v43 + 32) = v23;
  v156 = AGGraphGetCurrentAttribute();
  v45 = v191;
  if (v156 == v37)
  {
    goto LABEL_186;
  }

  v157 = MEMORY[0x1E69E76D0];
  *(v43 + 96) = MEMORY[0x1E69E7668];
  *(v43 + 104) = v157;
  *(v43 + 72) = v156;
  *(v43 + 136) = MEMORY[0x1E69E6158];
  *(v43 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v43 + 112) = 0xD000000000000011;
  *(v43 + 120) = 0x800000018DD7EB90;
  v158 = v184;
  if (v35)
  {
    LOBYTE(v199) = v45;
    *&v201 = v153;
    v202 = COERCE_DOUBLE(&dword_18D018000);
    *&v221 = v195;
    *(&v221 + 1) = v193;
    LOBYTE(v222) = v44;
    *&v214 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v214 + 1) = 37;
    LOBYTE(v215) = 2;
    v200 = *&v43;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v192 + 8))(v158, v194);
    goto LABEL_173;
  }

  v188 = v195;
  if (v195 == 20)
  {
    v160 = 3;
  }

  else
  {
    v160 = 4;
  }

  LODWORD(v100) = bswap32(v195) | (4 * (v195 >> 16));
  LODWORD(v197) = v45;
  v161 = v192 + 16;
  v187 = *(v192 + 16);
  v162 = v187(v196, v184, v194);
  v23 = 0;
  LOBYTE(v214) = 1;
  v195 = v160;
  v192 = v161;
  v190 = 16 * v160;
  v191 = (v161 - 8);
  v189 = v43 + 32;
  v105 = v43;
  do
  {
    v193 = COERCE_DOUBLE(v177);
    MEMORY[0x1EEE9AC00](v162);
    a4 = v177 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = (a4 + 8);
    v164 = v195;
    v165 = (a4 + 8);
    do
    {
      *(v165 - 1) = 0;
      *v165 = 0;
      v165 += 16;
      --v164;
    }

    while (v164);
    v108 = (v189 + 40 * v23);
    a1 = v195;
    while (1)
    {
      v166 = *(v105 + 16);
      if (v23 == v166)
      {
        break;
      }

      if (v23 >= v166)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v175 = v103;
        swift_once();
        v103 = v175;
LABEL_127:
        v147 = v108[77];
        if (*(v147 + 16) >= 0x43uLL)
        {
          if (*(v147 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v221) = v100;
            BYTE4(v221) = v103 == v55;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          LODWORD(v197) = v55;
          v148 = one-time initialization token for animationState;
          v186 = v105;

          if (v148 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v176 = v103;
        swift_once();
        v103 = v176;
        goto LABEL_140;
      }

      ++v23;
      outlined init with copy of AnyTrackedValue(v108, &v221);
      v167 = *(&v222 + 1);
      __swift_project_boxed_opaque_existential_1(&v221, *(&v222 + 1));
      *(v55 - 1) = CVarArg.kdebugValue(_:)(v100 | v197, v167);
      *v55 = v168 & 1;
      v55 += 16;
      v103 = __swift_destroy_boxed_opaque_existential_1(&v221);
      v108 += 5;
      if (!--a1)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v214) = 0;
LABEL_158:
    v169 = v188;
    if (v188 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a4 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v169 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v170 = *v191;
    v171 = v196;
    v172 = v194;
    (*v191)(v196, v194);
    v173 = __swift_project_value_buffer(v172, static OSSignpostID.continuation);
    v162 = v187(v171, v173, v172);
  }

  while ((v214 & 1) != 0);

  v174 = v194;
  v170(v196, v194);
  v170(v184, v174);
LABEL_173:

  a1 = v185;
  a4 = v183;
LABEL_174:
  specialized AnimatorState.removeListeners()();

  *(a4 + 32) = 0;
LABEL_175:
  *a1 = v208;
  *(a1 + 124) = 1;
  return result;
}

{
  v204 = *MEMORY[0x1E69E9840];
  v186 = type metadata accessor for OSSignpostID();
  v182 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v16 = (&v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v167 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v167 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v167 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v185 = &v167 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v176 = &v167 - v29;
  if (*(a4 + 48))
  {
    Value = AGGraphGetValue();
    if (v31)
    {
      v32 = *Value;
    }

    else
    {
      v32 = -INFINITY;
    }
  }

  else
  {
    v32 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 40) = 1;
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_127;
  }

  v8 = *a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  if (*(a4 + 40))
  {
    goto LABEL_126;
  }

  v6 = *(a4 + 24);
  v5 = *(a4 + 32);
  v7 = *(a4 + 16);
  if (v8 == v7 && v9 == v6 && v10 == v5)
  {
    goto LABEL_126;
  }

  v183 = v16;
  v181 = v22;
  v167 = v19;
  v173 = a1;
  AGGraphClearUpdate();
  v34 = *(a4 + 16);
  v201 = *a4;
  v202 = v34;
  *v203 = *(a4 + 32);
  *&v203[12] = *(a4 + 44);
  v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v201, &v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
  v35 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v36 = Transaction.effectiveAnimation.getter(v35);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_125;
    }

    v37 = a2;
  }

  v38 = *&v203[16];
  v39 = v8 - v7;
  v40 = v9 - v6;
  v41 = v10 - v5;
  v32 = *AGGraphGetValue();
  v172 = a4;
  v168 = a3;
  v170 = v35;
  v169 = v37;
  if (!v38)
  {
    *&v191.f64[0] = &type metadata for StrokeStyle;
    type metadata accessor for StrokeStyle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    v68 = swift_dynamicCast();
    if (v68)
    {
      v69 = v196;
    }

    else
    {
      v69 = 0;
    }

    if (v68)
    {
      v70 = *(&v196 + 1);
    }

    else
    {
      v70 = 0;
    }

    v171 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAYGG_Tt4B5Tm(v71, v35, v69, v70, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, v39, v40, v41, v32);
    *&v72 = COERCE_DOUBLE(AGGraphGetCurrentAttribute());
    a4 = v72;
    LODWORD(v53) = *MEMORY[0x1E698D3F8];
    if (v72 == *MEMORY[0x1E698D3F8])
    {
      v73 = 0;
    }

    else
    {
      v73 = v72;
    }

    (*(*v37 + 96))(&v191);
    v74 = v191;
    v75 = v192;
    v76 = v193;
    v77 = v194;
    *&v190 = NAN;
    v189 = NAN;
    v188 = 1.0;
    v187 = NAN;
    v196 = v191;
    v197 = *&v192;
    v198 = *&v193;
    v199 = *&v194;
    LODWORD(v184) = v195;
    LOBYTE(v200) = v195;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v196, &v190, &v189, &v188, &v187);
    v5 = *&v190;
    v6 = v189;
    v7 = v188;
    *&v78 = v187;
    if (one-time initialization token for enabledCategories != -1)
    {
      v181 = *&v187;
      swift_once();
      v78 = v181;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_197;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v79 = v73;
      v80 = v75;
      v81 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v82 = a4 == LODWORD(v53);
        v181 = v77;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v83 = v76;
        v84 = *(v81 + 16);
        LODWORD(v196) = v79;
        BYTE4(v196) = v82;
        *(&v196 + 1) = &type metadata for StrokeStyle;
        v197 = v5;
        v198 = v6;
        v199 = v7;
        v200 = *&v78;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v85 = v84;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v74.f64[0], *&v74.f64[1], v80, v83, v181, v184);

        goto LABEL_86;
      }

      v87 = *&v74.f64[1];
      v86 = *&v74.f64[0];
      v88 = v80;
    }

    else
    {
      v87 = *&v74.f64[1];
      v86 = *&v74.f64[0];
      v88 = v75;
    }

    outlined consume of Animation.Function(v86, v87, v88, v76, v77, v184);
LABEL_86:
    v105 = one-time initialization token for animationState;

    a4 = v172;
    if (v105 == -1)
    {
LABEL_87:
      v58 = *(&static Signpost.animationState + 1);
      *&v54 = static Signpost.animationState;
      LODWORD(v4) = word_1ED5283E8;
      v55 = HIBYTE(word_1ED5283E8);
      v106 = byte_1ED5283EA;
      LOBYTE(v60) = static os_signpost_type_t.begin.getter();
      v196 = __PAIR128__(v58, *&v54);
      LOBYTE(v197) = v4;
      BYTE1(v197) = v55;
      BYTE2(v197) = v106;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v114 = v171;

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
        goto LABEL_94;
      }

      v107 = one-time initialization token for _signpostLog;

      if (v107 != -1)
      {
        goto LABEL_200;
      }

      goto LABEL_89;
    }

LABEL_197:
    swift_once();
    goto LABEL_87;
  }

  v167 = v25;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v201, &v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v196) = 0;
  v171 = v38;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v37, v35, v39, v40, v41, v32);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  LODWORD(v4) = CurrentAttribute;
  LODWORD(v43) = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    LODWORD(v44) = 0;
  }

  else
  {
    LODWORD(v44) = CurrentAttribute;
  }

  (*(*v37 + 96))(&v191);
  v45 = v191.f64[1];
  v46 = *&v191.f64[0];
  v47 = v192;
  *&v190 = NAN;
  v189 = NAN;
  v188 = 1.0;
  v187 = NAN;
  v196 = v191;
  v197 = *&v192;
  v48 = v193;
  v198 = *&v193;
  v183 = v194;
  v199 = *&v194;
  LODWORD(v184) = v195;
  LOBYTE(v200) = v195;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v196, &v190, &v189, &v188, &v187);
  v5 = *&v190;
  v6 = v189;
  v7 = v188;
  v49 = v187;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_193;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_195:
      swift_once();
      goto LABEL_29;
    }

    v50 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v180) = v43;
    if (v50 && (v51 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v52 = *(v51 + 16);
      LODWORD(v196) = v44;
      BYTE4(v196) = v4 == v43;
      *(&v196 + 1) = &type metadata for StrokeStyle;
      v197 = v5;
      v198 = v6;
      v199 = v7;
      v200 = v49;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v4 = v52;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v46, *&v45, v47, v48, v183, v184);
    }

    else
    {
      outlined consume of Animation.Function(v46, *&v45, v47, v48, v183, v184);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v201, &v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_195;
    }

LABEL_29:
    v54 = *(&static Signpost.animationState + 1);
    *&v53 = static Signpost.animationState;
    v55 = word_1ED5283E8;
    v56 = HIBYTE(word_1ED5283E8);
    v57 = byte_1ED5283EA;
    v58 = static os_signpost_type_t.event.getter();
    v196 = __PAIR128__(*&v54, *&v53);
    LOBYTE(v197) = v55;
    BYTE1(v197) = v56;
    BYTE2(v197) = v57;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
LABEL_83:
      a4 = v172;
      a3 = v168;
      goto LABEL_124;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v201, &v196, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v59 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v60 = COERCE_DOUBLE(swift_allocObject());
    *(v60 + 16) = xmmword_18DDAF080;
    v61 = AGGraphGetCurrentAttribute();
    LODWORD(v4) = v180;
    if (v61 == v180)
    {
      __break(1u);
    }

    else
    {
      v62 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v64 = MEMORY[0x1E69E6870];
      *(v60 + 56) = MEMORY[0x1E69E6810];
      *(v60 + 64) = v64;
      *(v60 + 32) = Counter;
      v65 = AGGraphGetCurrentAttribute();
      if (v65 != v4)
      {
        v66 = MEMORY[0x1E69E76D0];
        *(v60 + 96) = MEMORY[0x1E69E7668];
        *(v60 + 104) = v66;
        *(v60 + 72) = v65;
        *(v60 + 136) = MEMORY[0x1E69E6158];
        *(v60 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v60 + 112) = 0x7453656B6F727453;
        *(v60 + 120) = 0xEB00000000656C79;
        if (v56)
        {
          LOBYTE(v187) = v58;
          *&v190 = COERCE_DOUBLE(&dword_18D018000);
          v189 = v59;
          *&v196 = v53;
          *(&v196 + 1) = v54;
          LOBYTE(v197) = v55;
          *&v191.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v191.f64[1] = 39;
          LOBYTE(v192) = 2;
          v188 = *&v60;
          v67 = v167;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
          (*(v182 + 8))(v67, v186);
        }

        else
        {
          v89 = LOBYTE(v53);
          if (LOBYTE(v53) == 20)
          {
            v43 = 3;
          }

          else
          {
            v43 = 4;
          }

          a4 = bswap32(LOWORD(v53)) | (4 * HIWORD(LODWORD(v53)));
          v90 = v58;
          v91 = (v182 + 16);
          v174 = *(v182 + 16);
          v92 = v174(v181, v167, v186);
          v93 = 0;
          LOBYTE(v191.f64[0]) = 1;
          v184 = v43;
          v179 = 16 * v43;
          v175 = v91;
          v180 = (v91 - 8);
          v178 = v60 + 32;
          v177 = v89;
          do
          {
            v183 = &v167;
            MEMORY[0x1EEE9AC00](v92);
            a1 = &v167 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
            v96 = (a1 + 8);
            v97 = v184;
            v98 = (a1 + 8);
            do
            {
              *(v98 - 1) = 0;
              *v98 = 0;
              v98 += 16;
              v97 = (v97 - 1);
            }

            while (v97);
            v4 = (v178 + 40 * v93);
            v44 = v184;
            while (1)
            {
              v99 = *(v60 + 16);
              if (v93 == v99)
              {
                break;
              }

              if (v93 >= v99)
              {
                goto LABEL_184;
              }

              ++v93;
              outlined init with copy of AnyTrackedValue(v4, &v196);
              v43 = *&v198;
              __swift_project_boxed_opaque_existential_1(&v196, *&v198);
              *(v96 - 1) = CVarArg.kdebugValue(_:)(a4 | v90, v43);
              *v96 = v100 & 1;
              v96 += 16;
              v94 = __swift_destroy_boxed_opaque_existential_1(&v196);
              v4 += 40;
              if (!--v44)
              {
                goto LABEL_66;
              }
            }

            LOBYTE(v191.f64[0]) = 0;
LABEL_66:
            v4 = v177;
            if (v177 == 20)
            {
              v101 = v181;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v101 = v181;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v102 = *v180;
            v43 = v186;
            (*v180)(v101, v186);
            v103 = __swift_project_value_buffer(v43, static OSSignpostID.continuation);
            v92 = v174(v101, v103, v43);
          }

          while ((LOBYTE(v191.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
          v104 = v186;
          v102(v101, v186);
          v102(v167, v104);
        }

        goto LABEL_83;
      }
    }

    __break(1u);
LABEL_200:
    swift_once();
LABEL_89:
    v108 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v53))
    {
      __break(1u);
LABEL_202:
      __break(1u);
    }

    v109 = AGGraphGetAttributeGraph();
    v110 = AGGraphGetCounter();

    v111 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v111;
    *(a4 + 32) = v110;
    v112 = AGGraphGetCurrentAttribute();
    if (v112 == LODWORD(v53))
    {
      goto LABEL_202;
    }

    v113 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v113;
    *(a4 + 72) = v112;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 112) = 0x7453656B6F727453;
    *(a4 + 120) = 0xEB00000000656C79;
    v43 = v167;
    if (v55)
    {
      LOBYTE(v187) = v60;
      *&v190 = COERCE_DOUBLE(&dword_18D018000);
      v189 = v108;
      *&v196 = v54;
      *(&v196 + 1) = v58;
      LOBYTE(v197) = v4;
      *&v191.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v191.f64[1] = 39;
      LOBYTE(v192) = 2;
      v188 = *&a4;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v114 = v171;

      (*(v182 + 8))(v43, v186);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v172;
LABEL_94:
      *(a4 + 48) = v114;
    }

    else
    {
      v115 = LOBYTE(v54);
      v116 = v60;
      v117 = LOBYTE(v54) == 20 ? 3 : 4;
      a1 = bswap32(LOWORD(v54)) | (4 * HIWORD(LODWORD(v54)));
      v90 = v116;
      v118 = (v182 + 16);
      v174 = *(v182 + 16);
      v119 = v174(v183, v167, v186);
      v93 = 0;
      LOBYTE(v191.f64[0]) = 1;
      v180 = (16 * v117);
      v175 = v118;
      v181 = (v118 - 8);
      v179 = a4 + 32;
      v177 = v115;
      v178 = v117;
      do
      {
        v184 = &v167;
        MEMORY[0x1EEE9AC00](v119);
        v4 = &v167 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
        v44 = v4 + 8;
        v121 = v117;
        v122 = v4 + 8;
        do
        {
          *(v122 - 1) = 0;
          *v122 = 0;
          v122 += 16;
          --v121;
        }

        while (v121);
        v123 = v179 + 40 * v93;
        while (1)
        {
          v124 = *(a4 + 16);
          if (v93 == v124)
          {
            break;
          }

          if (v93 >= v124)
          {
            goto LABEL_185;
          }

          ++v93;
          outlined init with copy of AnyTrackedValue(v123, &v196);
          v43 = *&v198;
          __swift_project_boxed_opaque_existential_1(&v196, *&v198);
          *(v44 - 1) = CVarArg.kdebugValue(_:)(a1 | v90, v43);
          *v44 = v125 & 1;
          v44 += 16;
          v94 = __swift_destroy_boxed_opaque_existential_1(&v196);
          v123 += 40;
          if (!--v117)
          {
            goto LABEL_107;
          }
        }

        LOBYTE(v191.f64[0]) = 0;
LABEL_107:
        v126 = v177;
        if (v177 == 20)
        {
          v127 = v183;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v127 = v183;
        }

        v117 = v178;
        if (v4[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v4[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v4[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v126 != 20 && v4[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v43 = *v181;
        v128 = v186;
        (*v181)(v127, v186);
        v129 = __swift_project_value_buffer(v128, static OSSignpostID.continuation);
        v119 = v174(v127, v129, v128);
      }

      while ((LOBYTE(v191.f64[0]) & 1) != 0);
      v130 = v171;

      v131 = v186;
      (v43)(v127, v186);
      (v43)(v167, v131);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<StrokeStyle>, lazy protocol witness table accessor for type StrokeStyle and conformance StrokeStyle, &type metadata for StrokeStyle, type metadata accessor for AnimatableAttributeHelper);
      a4 = v172;
      *(v172 + 48) = v130;
    }

    a3 = v168;
LABEL_124:
    specialized AnimatorState.addListeners(transaction:)(v170);

LABEL_125:

    a1 = v173;
LABEL_126:
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
    *(a4 + 40) = 0;
LABEL_127:
    v44 = *(a4 + 48);
    if (!v44)
    {
      return result;
    }

    v132 = *(a1 + 16);
    v133 = *(a1 + 32);
    *&v196 = *a1;
    *(&v196 + 1) = v132;
    v197 = v133;

    LOBYTE(v201) = 0;
    v134 = specialized AnimatorState.update(_:at:environment:)(&v196, a3, v32);
    v94 = AGGraphGetCurrentAttribute();
    LODWORD(v43) = *MEMORY[0x1E698D3F8];
    if (v94 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v93) = 0;
    }

    else
    {
      LODWORD(v93) = v94;
    }

    v90 = &type metadata instantiation cache for TupleTypeDescription;
    if (v134)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_186;
      }

      goto LABEL_133;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_188;
    }

LABEL_146:
    v145 = *(v90 + 616);
    if (*(v145 + 16) >= 0x43uLL)
    {
      if (*(v145 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v201) = v93;
        BYTE4(v201) = v94 == v43;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_181;
    }

    __break(1u);
LABEL_190:
    swift_once();
LABEL_138:
    v137 = *(&static Signpost.animationState + 1);
    v48 = static Signpost.animationState;
    v47 = word_1ED5283E8;
    v46 = HIBYTE(word_1ED5283E8);
    v138 = byte_1ED5283EA;
    v44 = static os_signpost_type_t.end.getter();
    v201 = __PAIR128__(v137, v48);
    LOBYTE(v202) = v47;
    BYTE1(v202) = v46;
    BYTE2(v202) = v138;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_180;
    }

    v173 = a1;
    v139 = one-time initialization token for _signpostLog;

    if (v139 != -1)
    {
      swift_once();
    }

    v172 = a4;
    v45 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v43)
    {
      break;
    }

    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    *&v179 = v49;
    swift_once();
    v49 = *&v179;
  }

  v140 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v141 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v141;
  *(a1 + 32) = v4;
  v142 = AGGraphGetCurrentAttribute();
  if (v142 == v43)
  {
    goto LABEL_192;
  }

  v143 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v143;
  *(a1 + 72) = v142;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0x7453656B6F727453;
  *(a1 + 120) = 0xEB00000000656C79;
  if (v46)
  {
    LOBYTE(v187) = v44;
    *&v190 = COERCE_DOUBLE(&dword_18D018000);
    v189 = v45;
    *&v201 = v48;
    *(&v201 + 1) = v137;
    LOBYTE(v202) = v47;
    *&v191.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v191.f64[1] = 37;
    LOBYTE(v192) = 2;
    v188 = *&a1;
    v144 = v176;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v182 + 8))(v144, v186);
    goto LABEL_179;
  }

  v146 = v48;
  if (v48 == 20)
  {
    v147 = 3;
  }

  else
  {
    v147 = 4;
  }

  v90 = bswap32(v48) | (4 * WORD1(v48));
  LODWORD(v93) = v44;
  v148 = v182 + 16;
  v177 = *(v182 + 16);
  v149 = (v177)(v185, v176, v186);
  v150 = 0;
  LOBYTE(v191.f64[0]) = 1;
  v184 = v147;
  v180 = (16 * v147);
  v182 = v148;
  v181 = v148 - 8;
  v179 = a1 + 32;
  v178 = v146;
  do
  {
    v183 = &v167;
    MEMORY[0x1EEE9AC00](v149);
    a4 = &v167 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
    v152 = (a4 + 8);
    v153 = v184;
    v154 = (a4 + 8);
    do
    {
      *(v154 - 1) = 0;
      *v154 = 0;
      v154 += 16;
      v153 = (v153 - 1);
    }

    while (v153);
    v4 = (v179 + 40 * v150);
    v43 = v184;
    while (1)
    {
      v155 = *(a1 + 16);
      if (v150 == v155)
      {
        break;
      }

      if (v150 >= v155)
      {
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        v165 = v94;
        swift_once();
        v94 = v165;
LABEL_133:
        v135 = *(v90 + 616);
        if (*(v135 + 16) >= 0x43uLL)
        {
          if (*(v135 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v201) = v93;
            BYTE4(v201) = v94 == v43;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v136 = one-time initialization token for animationState;
          v175 = v44;

          if (v136 != -1)
          {
            goto LABEL_190;
          }

          goto LABEL_138;
        }

        __break(1u);
LABEL_188:
        v166 = v94;
        swift_once();
        v94 = v166;
        goto LABEL_146;
      }

      ++v150;
      outlined init with copy of AnyTrackedValue(v4, &v201);
      v156 = *(&v202 + 1);
      v44 = *v203;
      __swift_project_boxed_opaque_existential_1(&v201, *(&v202 + 1));
      *(v152 - 1) = CVarArg.kdebugValue(_:)(v90 | v93, v156);
      *v152 = v157 & 1;
      v152 += 16;
      v94 = __swift_destroy_boxed_opaque_existential_1(&v201);
      v4 += 40;
      if (!--v43)
      {
        goto LABEL_164;
      }
    }

    LOBYTE(v191.f64[0]) = 0;
LABEL_164:
    v158 = v178;
    if (v178 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a4 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v158 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v159 = *v181;
    v44 = v185;
    v160 = v186;
    (*v181)(v185, v186);
    v161 = __swift_project_value_buffer(v160, static OSSignpostID.continuation);
    v149 = (v177)(v44, v161, v160);
  }

  while ((LOBYTE(v191.f64[0]) & 1) != 0);

  v162 = v186;
  v159(v185, v186);
  v159(v176, v162);
LABEL_179:

  a1 = v173;
  a4 = v172;
LABEL_180:
  specialized AnimatorState.removeListeners()();

  *(a4 + 48) = 0;
LABEL_181:
  v163 = *(&v196 + 1);
  v164 = v197;
  *a1 = v196;
  *(a1 + 16) = v163;
  *(a1 + 32) = v164;
  *(a1 + 40) = 1;
  return result;
}

{
  v261 = *MEMORY[0x1E69E9840];
  v211 = type metadata accessor for OSSignpostID();
  v208 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  Counter = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v186 - v11;
  MEMORY[0x1EEE9AC00](v13);
  *&v209 = &v186 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v186 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v210 = &v186 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v201 = &v186 - v21;
  v22 = *(a4 + 72);
  *&v212 = a2;
  if (v22)
  {
    Value = AGGraphGetValue();
    if (v24)
    {
      v25 = *Value;
    }

    else
    {
      v25 = -INFINITY;
    }
  }

  else
  {
    v25 = -INFINITY;
  }

  v26 = &v252;
  v27 = &v221;
  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 57) = 1;
  }

  else if (*(a1 + 57) != 1)
  {
    goto LABEL_123;
  }

  v202 = *&v17;
  v198 = v12;
  v29 = *(a1 + 8);
  v30 = *(a1 + 12);
  v31 = *(a1 + 16);
  v255.f64[0] = *a1;
  LOBYTE(v255.f64[1]) = v29;
  HIDWORD(v255.f64[1]) = v30;
  LOBYTE(v256) = v31;
  v32 = *(a1 + 40);
  v206 = *(a1 + 24);
  v207 = v32;
  ResolvedGradient.animatableData.getter(&v252);
  v33 = v252;
  v34 = LOBYTE(v253.f64[0]);
  v213 = LOBYTE(v253.f64[0]);
  v35 = *(a4 + 48);
  if (v35)
  {
    v205 = Counter;
    LODWORD(v203) = a3;
    v36 = *(a4 + 16);
    v37 = *(a4 + 32);
    v38 = *(a4 + 64);
    v39 = a4;
    v40 = *(a4 + 56);
    v196 = v37;
    v197 = v36;
    v236[0] = v36;
    v236[1] = v37;
    v237 = v35;
    v238 = v40;
    v239 = v38;
    v232[0] = v206;
    v232[1] = v207;
    v233 = v252;
    v204 = BYTE8(v252) | (HIDWORD(v252) << 32);
    v234 = v204;
    v235 = LOBYTE(v253.f64[0]);
    if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAIG_AA22ResolvedGradientVectorVTt1B5(v232, v236))
    {
      a4 = v39;
      a3 = v203;
      Counter = v204;
      goto LABEL_122;
    }

    v189 = v35;
    v190 = v33;
    v199 = a1;

    v195 = AGGraphClearUpdate();
    v41 = *(v39 + 48);
    v257 = *(v39 + 32);
    v258 = v41;
    v259 = *(v39 + 64);
    v260 = *(v39 + 80);
    v42 = *v39;
    v43 = *(v39 + 16);
    v200 = v39;
    v255 = v42;
    v256 = v43;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v255, &v252, &lazy cache variable for type metadata for AnimatableAttributeHelper<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for AnimatableAttributeHelper);
    v44 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v255, &lazy cache variable for type metadata for AnimatableAttributeHelper<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v188 = v44;
    v191 = Transaction.effectiveAnimation.getter(v44);
    if (v191)
    {
      v27 = v199;
      v45 = v190;
      Counter = v204;
    }

    else
    {
      Counter = v204;
      if (!v212)
      {

        a1 = v199;
        a4 = v200;
        v27 = &v221;
        v26 = &v252;
        a3 = v203;
        goto LABEL_121;
      }

      v27 = v199;
      v45 = v190;
    }

    v46 = *(&v259 + 1);
    v225[0] = v206;
    v225[1] = v207;
    *&v226 = v45;
    *(&v226 + 1) = Counter;
    v227 = v34;
    v224 = v34;
    v223 = v226;
    v221 = vsubq_f64(v206, v197);
    v222 = vsubq_f64(v207, v196);
    *&v218 = v189;
    BYTE8(v218) = v40;
    HIDWORD(v218) = HIDWORD(v40);
    LOBYTE(v219) = v38 & 1;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v225, &v252, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    ResolvedGradientVector.add(_:scaledBy:)(&v218, -1.0);
    v25 = *AGGraphGetValue();
    if (v46)
    {
      v228 = v221;
      v229 = v222;
      v230 = v223;
      v231 = v224;

      LOBYTE(v252) = 0;
      v47 = v191;
      v187 = v46;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v191, &v228, v188, v25);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(Counter) = CurrentAttribute;
      LODWORD(v49) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        v50 = 0;
      }

      else
      {
        v50 = CurrentAttribute;
      }

      LODWORD(v212) = v50;
      v51 = v27[1];
      v218 = *v27;
      v219 = v51;
      v220[0] = v27[2];
      v52 = v220[0];
      *(v220 + 9) = *(v27 + 41);
      v252 = v218;
      v253 = v51;
      v254[0] = v52;
      *(v254 + 9) = *(v220 + 9);
      outlined init with copy of LinearGradient.AbsolutePaint(&v218, &v246);
      v53 = outlined destroy of LinearGradient._Paint(&v252);
      (*(*v47 + 96))(&v240, v53);
      v54 = v240;
      v55 = v241;
      v56 = v242;
      v57 = v243;
      v58 = v244;
      LODWORD(v47) = v245;
      v216 = NAN;
      v217 = 0x7FF8000000000000;
      v214 = NAN;
      v215 = 1.0;
      v246 = v240;
      v247 = v241;
      v248 = v242;
      v249 = *&v243;
      v250 = *&v244;
      LOBYTE(v251) = v245;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v246, &v217, &v216, &v215, &v214);
      v59 = v216;
      v60 = v217;
      v61 = v214;
      v62 = v215;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_189;
      }

      goto LABEL_22;
    }

    v228 = v221;
    v229 = v222;
    v230 = v223;
    v231 = v224;
    *&v218 = &type metadata for LinearGradient.AbsolutePaint;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v228, &v252, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    type metadata accessor for LinearGradient.AbsolutePaint.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v80 = swift_dynamicCast();
    if (v80)
    {
      v81 = v252;
    }

    else
    {
      v81 = 0;
    }

    if (v80)
    {
      v82 = *(&v252 + 1);
    }

    else
    {
      v82 = 0;
    }

    v83 = v188;

    v84 = v191;

    v187 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAZGAA22ResolvedGradientVectorVG_Tt4B5(v85, &v228, v83, v81, v82, v25);
    v86 = AGGraphGetCurrentAttribute();
    a1 = v86;
    v87 = *MEMORY[0x1E698D3F8];
    if (v86 == *MEMORY[0x1E698D3F8])
    {
      v88 = 0;
    }

    else
    {
      v88 = v86;
    }

    v89 = v27[1];
    v218 = *v27;
    v219 = v89;
    v220[0] = v27[2];
    v90 = v220[0];
    *(v220 + 9) = *(v27 + 41);
    v252 = v218;
    v253 = v89;
    v254[0] = v90;
    *(v254 + 9) = *(v220 + 9);
    outlined init with copy of LinearGradient.AbsolutePaint(&v218, &v246);
    v91 = outlined destroy of LinearGradient._Paint(&v252);
    (*(*v84 + 96))(&v240, v91);
    v54 = v240;
    v92 = v241;
    v26 = v242;
    v93 = v243;
    v94 = v244;
    v216 = NAN;
    v217 = 0x7FF8000000000000;
    v214 = NAN;
    v215 = 1.0;
    v246 = v240;
    v247 = v241;
    v248 = v242;
    v249 = *&v243;
    v250 = *&v244;
    LODWORD(v212) = v245;
    LOBYTE(v251) = v245;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v246, &v217, &v216, &v215, &v214);
    v95 = v216;
    v96 = v217;
    v97 = v214;
    v98 = v215;
    if (one-time initialization token for enabledCategories != -1)
    {
      *&v209 = v217;
      v197.f64[0] = v216;
      v202 = v215;
      v196.f64[0] = v214;
      swift_once();
      v97 = v196.f64[0];
      v98 = v202;
      v95 = v197.f64[0];
      v96 = v209;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v99 = static CustomEventTrace.recorder) != 0)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        *&v209 = v94;
        v100 = *(v99 + 16);
        LODWORD(v246) = v88;
        BYTE4(v246) = a1 == v87;
        v247 = &type metadata for LinearGradient.AbsolutePaint;
        v248 = v96;
        v249 = v95;
        v250 = v98;
        v251 = v97;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v202 = v101;

        v102 = v100;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v54, v92, v26, v93, v209, v212);
      }

      else
      {
        outlined consume of Animation.Function(v54, v92, v26, v93, v94, v212);
      }

      LODWORD(v54) = v87;
      v103 = one-time initialization token for animationState;

      a1 = v199;
      v27 = &v221;
      v26 = &v252;
      if (v103 == -1)
      {
        goto LABEL_53;
      }
    }

    swift_once();
LABEL_53:
    v68 = *(&static Signpost.animationState + 1);
    v67 = static Signpost.animationState;
    v69 = word_1ED5283E8;
    LOBYTE(Counter) = HIBYTE(word_1ED5283E8);
    v104 = byte_1ED5283EA;
    LODWORD(v212) = static os_signpost_type_t.begin.getter();
    v246 = v67;
    v247 = v68;
    LOBYTE(v248) = v69;
    BYTE1(v248) = Counter;
    BYTE2(v248) = v104;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v115 = v187;

      a4 = v200;
      *(v200 + 72) = v115;
      goto LABEL_120;
    }

    v105 = one-time initialization token for _signpostLog;

    if (v105 != -1)
    {
      goto LABEL_196;
    }

    goto LABEL_55;
  }

  Counter = BYTE8(v252) | (HIDWORD(v252) << 32);
LABEL_122:
  while (1)
  {

    v149 = v207;
    *(a4 + 16) = v206;
    *(a4 + 32) = v149;
    *(a4 + 48) = v33;
    *(a4 + 56) = Counter;
    *(a4 + 64) = v34;
LABEL_123:
    v117 = *(a4 + 72);
    if (!v117)
    {
      return result;
    }

    v200 = a4;
    v150 = *(a1 + 8);
    v151 = *(a1 + 12);
    v152 = *(a1 + 16);
    *&v252 = *a1;
    BYTE8(v252) = v150;
    HIDWORD(v252) = v151;
    LOBYTE(v253.f64[0]) = v152;

    v212 = *(a1 + 24);
    v209 = *(a1 + 40);
    ResolvedGradient.animatableData.getter(&v218);
    v153 = v218;
    v154 = BYTE8(v218);
    v155 = HIDWORD(v218);
    v156 = v219;
    v157 = v209;
    v26[6] = v212;
    v26[7] = v157;
    *&v257 = v153;
    BYTE8(v257) = v154;
    HIDWORD(v257) = v155;
    LOBYTE(v258) = v156;
    LOBYTE(v252) = 0;
    v158 = specialized AnimatorState.update(_:at:environment:)(&v255, a3, v25);
    v121 = AGGraphGetCurrentAttribute();
    v58 = *MEMORY[0x1E698D3F8];
    if (v121 == v58)
    {
      LODWORD(v118) = 0;
    }

    else
    {
      LODWORD(v118) = v121;
    }

    v116 = &type metadata instantiation cache for TupleTypeDescription;
    if (v158)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_182;
      }

      goto LABEL_129;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_184;
    }

LABEL_142:
    v168 = *(v116 + 616);
    if (*(v168 + 16) >= 0x43uLL)
    {
      if (*(v168 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v252) = v118;
        BYTE4(v252) = v121 == v58;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_177;
    }

    __break(1u);
LABEL_186:
    swift_once();
LABEL_134:
    v49 = *(&static Signpost.animationState + 1);
    v47 = static Signpost.animationState;
    v54 = word_1ED5283E8;
    v57 = HIBYTE(word_1ED5283E8);
    v161 = byte_1ED5283EA;
    v162 = static os_signpost_type_t.end.getter();
    v252 = __PAIR128__(v49, v47);
    LOBYTE(v253.f64[0]) = v54;
    BYTE1(v253.f64[0]) = v57;
    BYTE2(v253.f64[0]) = v161;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    LODWORD(v212) = v162;
    v163 = one-time initialization token for _signpostLog;
    LODWORD(v27) = v198;

    if (v163 != -1)
    {
      swift_once();
    }

    v55 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v58)
    {
      break;
    }

    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    v205 = v60;
    v197.f64[0] = v59;
    *&v198 = v62;
    v196.f64[0] = v61;
    swift_once();
    v61 = v196.f64[0];
    v62 = *&v198;
    v59 = v197.f64[0];
    v60 = v205;
LABEL_22:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_191:
      swift_once();
      goto LABEL_28;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v63 = static CustomEventTrace.recorder) != 0)
    {
      v205 = v57;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v198) = v47;
      v64 = *(v63 + 16);
      LODWORD(v246) = v212;
      BYTE4(v246) = Counter == v49;
      v247 = &type metadata for LinearGradient.AbsolutePaint;
      v248 = v60;
      v249 = v59;
      v250 = v62;
      v251 = v61;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      *&v212 = v65;

      Counter = v64;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v54, v55, v56, v205, v58, v198);
    }

    else
    {
      outlined consume of Animation.Function(v54, v55, v56, v57, v58, v47);
    }

    LODWORD(v27) = v49;
    v66 = one-time initialization token for animationState;
    LODWORD(v54) = v187;

    if (v66 != -1)
    {
      goto LABEL_191;
    }

LABEL_28:
    v68 = *(&static Signpost.animationState + 1);
    v67 = static Signpost.animationState;
    v69 = word_1ED5283E8;
    v70 = HIBYTE(word_1ED5283E8);
    v71 = byte_1ED5283EA;
    v72 = static os_signpost_type_t.event.getter();
    v246 = v67;
    v247 = v68;
    LOBYTE(v248) = v69;
    BYTE1(v248) = v70;
    BYTE2(v248) = v71;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_89:
      a1 = v199;
      a4 = v200;
      goto LABEL_119;
    }

    LODWORD(v212) = v72;
    v73 = one-time initialization token for _signpostLog;

    if (v73 != -1)
    {
      swift_once();
    }

    *&v205 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v27)
    {
      __break(1u);
    }

    else
    {
      v74 = v27;
      v75 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v76 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v76;
      *(a1 + 32) = Counter;
      v77 = AGGraphGetCurrentAttribute();
      if (v77 != v74)
      {
        v78 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v78;
        *(a1 + 72) = v77;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
        strcpy((a1 + 112), "AbsolutePaint");
        *(a1 + 126) = -4864;
        if (v70)
        {
          LOBYTE(v214) = v212;
          v216 = *&v205;
          v217 = &dword_18D018000;
          v246 = v67;
          v247 = v68;
          LOBYTE(v248) = v69;
          v240 = "Animation: (%p) [%d] %{public}@ updated";
          v241 = 39;
          LOBYTE(v242) = 2;
          v215 = *&a1;
          v79 = v202;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

          (*(v208 + 8))(COERCE_DOUBLE(*&v79), v211);
        }

        else
        {
          v116 = v67;
          if (v67 == 20)
          {
            v117 = 3;
          }

          else
          {
            v117 = 4;
          }

          LODWORD(v118) = bswap32(v67) | (4 * (v67 >> 16));
          LODWORD(v212) = v212;
          v119 = v208 + 16;
          v192 = *(v208 + 16);
          v120 = v192(v209, *&v202, v211);
          v58 = 0;
          LOBYTE(v240) = 1;
          *&v197.f64[0] = 16 * v117;
          v193 = v119;
          v194 = v117;
          v198 = v119 - 8;
          v195 = v116;
          *&v196.f64[0] = a1 + 32;
          do
          {
            *&v205 = COERCE_DOUBLE(&v186);
            MEMORY[0x1EEE9AC00](v120);
            Counter = &v186 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
            v26 = (Counter + 8);
            v123 = v117;
            v124 = (Counter + 8);
            do
            {
              *(v124 - 1) = 0;
              *v124 = 0;
              v124 += 16;
              --v123;
            }

            while (v123);
            v27 = (*&v196.f64[0] + 40 * v58);
            while (1)
            {
              v125 = *(a1 + 16);
              if (v58 == v125)
              {
                break;
              }

              if (v58 >= v125)
              {
                goto LABEL_180;
              }

              ++v58;
              outlined init with copy of AnyTrackedValue(v27, &v246);
              v126 = *&v249;
              v116 = a1;
              __swift_project_boxed_opaque_existential_1(&v246, *&v249);
              *(v26 - 1) = CVarArg.kdebugValue(_:)(v118 | v212, v126);
              *v26++ = v127 & 1;
              v121 = __swift_destroy_boxed_opaque_existential_1(&v246);
              v27 = (v27 + 40);
              if (!--v117)
              {
                goto LABEL_73;
              }
            }

            LOBYTE(v240) = 0;
LABEL_73:
            v116 = v195;
            if (v195 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(Counter + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(Counter + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(Counter + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v116 != 20 && *(Counter + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v128 = *v198;
            v129 = v209;
            v130 = v211;
            (*v198)(v209, v211);
            v131 = __swift_project_value_buffer(v130, static OSSignpostID.continuation);
            v120 = v192(v129, v131, v130);
            v117 = v194;
          }

          while ((v240 & 1) != 0);

          v132 = v211;
          v128(v209, v211);
          v128(*&v202, v132);
        }

        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_55:
    v106 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v54)
    {
      __break(1u);
LABEL_198:
      __break(1u);
    }

    v108 = AGGraphGetAttributeGraph();
    v109 = AGGraphGetCounter();

    v110 = MEMORY[0x1E69E6870];
    *(v107 + 56) = MEMORY[0x1E69E6810];
    *(v107 + 64) = v110;
    *(v107 + 32) = v109;
    v111 = AGGraphGetCurrentAttribute();
    if (v111 == v54)
    {
      goto LABEL_198;
    }

    v27 = v107;
    v112 = MEMORY[0x1E69E76D0];
    *(v107 + 96) = MEMORY[0x1E69E7668];
    *(v107 + 104) = v112;
    *(v107 + 72) = v111;
    *(v107 + 136) = MEMORY[0x1E69E6158];
    *(v107 + 144) = lazy protocol witness table accessor for type String and conformance String();
    strcpy((v107 + 112), "AbsolutePaint");
    *(v107 + 126) = -4864;
    if (Counter)
    {
      LOBYTE(v214) = v212;
      v216 = v106;
      v217 = &dword_18D018000;
      v246 = v67;
      v247 = v68;
      LOBYTE(v248) = v69;
      v240 = "Animation: (%p) [%d] %{public}@ started";
      v241 = 39;
      LOBYTE(v242) = 2;
      v215 = *&v107;
      v113 = v198;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v114 = v187;

      (*(v208 + 8))(v113, v211);
    }

    else
    {
      v133 = v67;
      if (v67 == 20)
      {
        v134 = 3;
      }

      else
      {
        v134 = 4;
      }

      LODWORD(v118) = bswap32(v67) | (4 * (v67 >> 16));
      v116 = v212;
      v135 = v208 + 16;
      v192 = *(v208 + 16);
      v136 = v192(v205, v198, v211);
      v58 = 0;
      LOBYTE(v240) = 1;
      *&v209 = v134;
      v193 = v135;
      v194 = v133;
      *&v197.f64[0] = v135 - 8;
      *&v212 = v27;
      v195 = &v27[2];
      *&v196.f64[0] = 16 * v134;
      do
      {
        v202 = COERCE_DOUBLE(&v186);
        MEMORY[0x1EEE9AC00](v136);
        v26 = (&v186 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
        Counter = v26 + 8;
        v138 = v209;
        v139 = v26 + 8;
        do
        {
          *(v139 - 1) = 0;
          *v139 = 0;
          v139 += 16;
          --v138;
        }

        while (v138);
        v117 = v195 + 40 * v58;
        a1 = v209;
        while (1)
        {
          v140 = *(v212 + 16);
          if (v58 == v140)
          {
            break;
          }

          if (v58 >= v140)
          {
            goto LABEL_181;
          }

          ++v58;
          outlined init with copy of AnyTrackedValue(v117, &v246);
          v141 = *&v249;
          v27 = *&v250;
          __swift_project_boxed_opaque_existential_1(&v246, *&v249);
          *(Counter - 8) = CVarArg.kdebugValue(_:)(v118 | v116, v141);
          *Counter = v142 & 1;
          Counter += 16;
          v121 = __swift_destroy_boxed_opaque_existential_1(&v246);
          v117 += 40;
          if (!--a1)
          {
            goto LABEL_102;
          }
        }

        LOBYTE(v240) = 0;
LABEL_102:
        v143 = v194;
        if (v194 == 20)
        {
          v27 = v205;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v27 = v205;
        }

        if (*(v26 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v26 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v26 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v143 != 20 && *(v26 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v144 = **&v197.f64[0];
        v145 = v211;
        (**&v197.f64[0])(v27, v211);
        v146 = __swift_project_value_buffer(v145, static OSSignpostID.continuation);
        v136 = v192(v27, v146, v145);
      }

      while ((v240 & 1) != 0);
      v114 = v187;

      v147 = v211;
      v144(v27, v211);
      v144(v198, v147);
    }

    a1 = v199;
    a4 = v200;
    *(v200 + 72) = v114;
LABEL_119:
    v27 = &v221;
    v26 = &v252;
LABEL_120:
    a3 = v203;
    Counter = v204;
    specialized AnimatorState.addListeners(transaction:)(v188);

    v148 = v222;
    *v26 = v221;
    v26[1] = v148;
    v26[2] = v27[2];
    LOBYTE(v254[1]) = v224;
    outlined destroy of Slice<IndexSet>(&v252, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

    v34 = v213;
LABEL_121:
    v33 = v190;
  }

  v27 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v164 = MEMORY[0x1E69E6870];
  *(v56 + 56) = MEMORY[0x1E69E6810];
  *(v56 + 64) = v164;
  *(v56 + 32) = Counter;
  v165 = AGGraphGetCurrentAttribute();
  if (v165 == v58)
  {
    goto LABEL_188;
  }

  Counter = v56;
  v166 = MEMORY[0x1E69E76D0];
  *(v56 + 96) = MEMORY[0x1E69E7668];
  *(v56 + 104) = v166;
  *(v56 + 72) = v165;
  *(v56 + 136) = MEMORY[0x1E69E6158];
  *(v56 + 144) = lazy protocol witness table accessor for type String and conformance String();
  strcpy((v56 + 112), "AbsolutePaint");
  *(v56 + 126) = -4864;
  if (v57)
  {
    LOBYTE(v240) = v212;
    v246 = &dword_18D018000;
    *&v225[0] = v55;
    *&v252 = v47;
    *(&v252 + 1) = v49;
    LOBYTE(v253.f64[0]) = v54;
    *&v218 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v218 + 1) = 37;
    LOBYTE(v219) = 2;
    *&v221.f64[0] = v56;
    v167 = v201;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v208 + 8))(v167, v211);
    goto LABEL_175;
  }

  v117 = v47;
  if (v47 == 20)
  {
    a1 = 3;
  }

  else
  {
    a1 = 4;
  }

  v116 = bswap32(v47) | (4 * WORD1(v47));
  LODWORD(v212) = v212;
  v169 = v208 + 16;
  v202 = *(v208 + 16);
  v170 = (*&v202)(v210, v201, v211);
  v58 = 0;
  LOBYTE(v218) = 1;
  v208 = v169;
  *&v207.f64[0] = v169 - 8;
  v205 = (Counter + 32);
  *&v206.f64[0] = 16 * a1;
  v203 = v117;
  v204 = a1;
  do
  {
    *&v209 = &v186;
    MEMORY[0x1EEE9AC00](v170);
    v26 = (&v186 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0));
    v118 = v26 + 8;
    v172 = a1;
    v173 = v26 + 8;
    do
    {
      *(v173 - 1) = 0;
      *v173 = 0;
      v173 += 16;
      --v172;
    }

    while (v172);
    v27 = (v205 + 40 * v58);
    while (1)
    {
      v174 = *(Counter + 16);
      if (v58 == v174)
      {
        break;
      }

      if (v58 >= v174)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v184 = v121;
        swift_once();
        v121 = v184;
LABEL_129:
        v159 = *(v116 + 616);
        if (*(v159 + 16) >= 0x43uLL)
        {
          if (*(v159 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v252) = v118;
            BYTE4(v252) = v121 == v58;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v198 = v117;
          v199 = a1;
          v160 = one-time initialization token for animationState;

          if (v160 != -1)
          {
            goto LABEL_186;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_184:
        v185 = v121;
        swift_once();
        v121 = v185;
        goto LABEL_142;
      }

      ++v58;
      outlined init with copy of AnyTrackedValue(v27, &v252);
      v175 = *&v253.f64[1];
      v117 = Counter;
      __swift_project_boxed_opaque_existential_1(&v252, *&v253.f64[1]);
      *(v118 - 1) = CVarArg.kdebugValue(_:)(v116 | v212, v175);
      *v118 = v176 & 1;
      v118 += 16;
      v121 = __swift_destroy_boxed_opaque_existential_1(&v252);
      v27 = (v27 + 40);
      if (!--a1)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v218) = 0;
LABEL_160:
    v117 = v203;
    if (v203 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    a1 = v204;
    if (*(v26 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v26 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v26 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v117 != 20 && *(v26 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v177 = **&v207.f64[0];
    v179 = v210;
    v178 = v211;
    (**&v207.f64[0])(v210, v211);
    v180 = __swift_project_value_buffer(v178, static OSSignpostID.continuation);
    v170 = (*&v202)(v179, v180, v178);
  }

  while ((v218 & 1) != 0);

  v181 = v211;
  v177(v210, v211);
  v177(v201, v181);
LABEL_175:

LABEL_176:
  specialized AnimatorState.removeListeners()();

  a1 = v199;
  *(v200 + 72) = 0;
  v27 = &v221;
  v26 = &v252;
LABEL_177:
  v182 = v26[7];
  v218 = v26[6];
  v219 = v182;
  v220[0] = v26[8];
  *(a1 + 24) = v218;
  LOBYTE(v220[1]) = v258;
  *(a1 + 40) = v182;
  v246 = *&v220[0];
  LOBYTE(v247) = BYTE8(v220[0]);
  HIDWORD(v247) = HIDWORD(v220[0]);
  LOBYTE(v248) = v220[1];
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v218, &v252, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  ResolvedGradient.animatableData.setter(&v246);

  v183 = v26[7];
  v27[26] = v26[6];
  v27[27] = v183;
  v27[28] = v26[8];
  LOBYTE(v254[1]) = v258;
  result = outlined destroy of Slice<IndexSet>(&v252, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  *(a1 + 57) = 1;
  return result;
}

{
  v266 = *MEMORY[0x1E69E9840];
  v216 = type metadata accessor for OSSignpostID();
  v213 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v9 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v191 - v11;
  MEMORY[0x1EEE9AC00](v13);
  *&v214.f64[0] = &v191 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v191 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v215 = &v191 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v206 = &v191 - v21;
  v22 = *(a4 + 72);
  *&v217.f64[0] = a2;
  if (v22)
  {
    Value = AGGraphGetValue();
    if (v24)
    {
      v25 = *Value;
    }

    else
    {
      v25 = -INFINITY;
    }
  }

  else
  {
    v25 = -INFINITY;
  }

  v26 = &v257;
  v27 = &v226;
  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 57) = 1;
  }

  else if (*(a1 + 57) != 1)
  {
    goto LABEL_123;
  }

  v207 = *&v17;
  v203 = v12;
  v29 = *a1;
  v30 = *(a1 + 8);
  v31 = *(a1 + 12);
  v32 = *(a1 + 16);
  v33 = vdupq_n_s64(0x4060000000000000uLL);
  v34 = vmulq_f64(*(a1 + 24), v33);
  v211 = vmulq_f64(*(a1 + 40), v33);
  v212 = v34;
  v260.f64[0] = v29;
  LOBYTE(v260.f64[1]) = v30;
  HIDWORD(v260.f64[1]) = v31;
  LOBYTE(v261) = v32;
  ResolvedGradient.animatableData.getter(&v257);
  v35 = v257;
  v36 = LOBYTE(v258.f64[0]);
  v218 = LOBYTE(v258.f64[0]);
  v37 = *(a4 + 48);
  if (v37 != 0.0)
  {
    v210 = v9;
    LODWORD(v208) = a3;
    v39 = *(a4 + 16);
    v38 = *(a4 + 32);
    v40 = *(a4 + 64);
    v41 = a4;
    v42 = *(a4 + 56);
    v201 = v39;
    v202 = v38;
    v241[0] = v39;
    v241[1] = v38;
    v242 = v37;
    v243 = v42;
    v244 = v40;
    v237[0] = v212;
    v237[1] = v211;
    v238 = v257;
    v209 = BYTE8(v257) | (HIDWORD(v257) << 32);
    v239 = v209;
    v240 = LOBYTE(v258.f64[0]);
    if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZACyACy12CoreGraphics7CGFloatVAHGAIG_AA22ResolvedGradientVectorVTt1B5(v237, v241))
    {
      a4 = v41;
      a3 = v208;
      v9 = v209;
      goto LABEL_122;
    }

    v194 = v37;
    v195 = v35;
    v204 = a1;

    v200 = AGGraphClearUpdate();
    v43 = *(v41 + 48);
    v262 = *(v41 + 32);
    v263 = v43;
    v264 = *(v41 + 64);
    v265 = *(v41 + 80);
    v44 = *v41;
    v45 = *(v41 + 16);
    v205 = v41;
    v260 = v44;
    v261 = v45;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v260, &v257, &lazy cache variable for type metadata for AnimatableAttributeHelper<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint, &type metadata for LinearGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
    v46 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v260, &lazy cache variable for type metadata for AnimatableAttributeHelper<LinearGradient._Paint>, lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint, &type metadata for LinearGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v193 = v46;
    v196 = Transaction.effectiveAnimation.getter(v46);
    if (v196)
    {
      v27 = v204;
      v47 = v195;
      v9 = v209;
    }

    else
    {
      v9 = v209;
      if (!*&v217.f64[0])
      {

        a1 = v204;
        a4 = v205;
        v27 = &v226;
        v26 = &v257;
        a3 = v208;
        goto LABEL_121;
      }

      v27 = v204;
      v47 = v195;
    }

    v48 = *(&v264 + 1);
    v230[0] = v212;
    v230[1] = v211;
    *&v231 = v47;
    *(&v231 + 1) = v9;
    v232 = v36;
    v229 = v36;
    v228 = v231;
    v226 = vsubq_f64(v212, v201);
    v227 = vsubq_f64(v211, v202);
    v223.f64[0] = v194;
    LOBYTE(v223.f64[1]) = v42;
    HIDWORD(v223.f64[1]) = HIDWORD(v42);
    LOBYTE(v224.f64[0]) = v40 & 1;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v230, &v257, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    ResolvedGradientVector.add(_:scaledBy:)(&v223, -1.0);
    v25 = *AGGraphGetValue();
    if (v48)
    {
      v233 = v226;
      v234 = v227;
      v235 = v228;
      v236 = v229;

      LOBYTE(v257) = 0;
      v49 = v196;
      v192 = v48;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v196, &v233, v193, v25);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v9) = CurrentAttribute;
      LODWORD(v51) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        v52 = 0;
      }

      else
      {
        v52 = CurrentAttribute;
      }

      LODWORD(v217.f64[0]) = v52;
      v53 = v27[1];
      v223 = *v27;
      v224 = v53;
      v225[0] = v27[2];
      v54 = v225[0];
      *(v225 + 9) = *(v27 + 41);
      v257 = v223;
      v258 = v53;
      v259[0] = v54;
      *(v259 + 9) = *(v225 + 9);
      outlined init with copy of LinearGradient._Paint(&v223, &v251);
      v55 = outlined destroy of LinearGradient._Paint(&v257);
      (*(*v49 + 96))(&v245, v55);
      v56 = v245;
      v57 = v246;
      v58 = v247;
      v59 = v248;
      v60 = v249;
      LODWORD(v49) = v250;
      v221 = NAN;
      v222 = 0x7FF8000000000000;
      v219 = NAN;
      v220 = 1.0;
      v251 = v245;
      v252 = v246;
      v253 = v247;
      v254 = *&v248;
      v255 = *&v249;
      LOBYTE(v256) = v250;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v251, &v222, &v221, &v220, &v219);
      v61 = v221;
      v62 = v222;
      v63 = v219;
      v64 = v220;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_189;
      }

      goto LABEL_22;
    }

    v233 = v226;
    v234 = v227;
    v235 = v228;
    v236 = v229;
    *&v223.f64[0] = &type metadata for LinearGradient._Paint;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v233, &v257, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    type metadata accessor for LinearGradient._Paint.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
    v82 = swift_dynamicCast();
    if (v82)
    {
      v83 = v257;
    }

    else
    {
      v83 = 0;
    }

    if (v82)
    {
      v84 = *(&v257 + 1);
    }

    else
    {
      v84 = 0;
    }

    v85 = v193;

    v86 = v196;

    v192 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAZGAA22ResolvedGradientVectorVG_Tt4B5(v87, &v233, v85, v83, v84, v25);
    v88 = AGGraphGetCurrentAttribute();
    a1 = v88;
    v89 = *MEMORY[0x1E698D3F8];
    if (v88 == *MEMORY[0x1E698D3F8])
    {
      v90 = 0;
    }

    else
    {
      v90 = v88;
    }

    v91 = v27[1];
    v223 = *v27;
    v224 = v91;
    v225[0] = v27[2];
    v92 = v225[0];
    *(v225 + 9) = *(v27 + 41);
    v257 = v223;
    v258 = v91;
    v259[0] = v92;
    *(v259 + 9) = *(v225 + 9);
    outlined init with copy of LinearGradient._Paint(&v223, &v251);
    v93 = outlined destroy of LinearGradient._Paint(&v257);
    (*(*v86 + 96))(&v245, v93);
    v56 = v245;
    v94 = v246;
    v26 = v247;
    v95 = v248;
    v96 = v249;
    v221 = NAN;
    v222 = 0x7FF8000000000000;
    v219 = NAN;
    v220 = 1.0;
    v251 = v245;
    v252 = v246;
    v253 = v247;
    v254 = *&v248;
    v255 = *&v249;
    LODWORD(v217.f64[0]) = v250;
    LOBYTE(v256) = v250;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v251, &v222, &v221, &v220, &v219);
    v97 = v221;
    v98 = v222;
    v99 = v219;
    v100 = v220;
    if (one-time initialization token for enabledCategories != -1)
    {
      *&v214.f64[0] = v222;
      v202.f64[0] = v221;
      v207 = v220;
      v201.f64[0] = v219;
      swift_once();
      v99 = v201.f64[0];
      v100 = v207;
      v97 = v202.f64[0];
      v98 = *&v214.f64[0];
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v101 = static CustomEventTrace.recorder) != 0)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        *&v214.f64[0] = v96;
        v102 = *(v101 + 16);
        LODWORD(v251) = v90;
        BYTE4(v251) = a1 == v89;
        v252 = &type metadata for LinearGradient._Paint;
        v253 = v98;
        v254 = v97;
        v255 = v100;
        v256 = v99;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v207 = v103;

        v104 = v102;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v56, v94, v26, v95, *&v214.f64[0], LOBYTE(v217.f64[0]));
      }

      else
      {
        outlined consume of Animation.Function(v56, v94, v26, v95, v96, LOBYTE(v217.f64[0]));
      }

      LODWORD(v56) = v89;
      v105 = one-time initialization token for animationState;

      a1 = v204;
      v27 = &v226;
      v26 = &v257;
      if (v105 == -1)
      {
        goto LABEL_53;
      }
    }

    swift_once();
LABEL_53:
    v70 = *(&static Signpost.animationState + 1);
    v69 = static Signpost.animationState;
    v71 = word_1ED5283E8;
    LOBYTE(v9) = HIBYTE(word_1ED5283E8);
    v106 = byte_1ED5283EA;
    LODWORD(v217.f64[0]) = static os_signpost_type_t.begin.getter();
    v251 = v69;
    v252 = v70;
    LOBYTE(v253) = v71;
    BYTE1(v253) = v9;
    BYTE2(v253) = v106;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v117 = v192;

      a4 = v205;
      *(v205 + 72) = v117;
      goto LABEL_120;
    }

    v107 = one-time initialization token for _signpostLog;

    if (v107 != -1)
    {
      goto LABEL_196;
    }

    goto LABEL_55;
  }

  v9 = BYTE8(v257) | (HIDWORD(v257) << 32);
LABEL_122:
  while (1)
  {

    v151 = v211;
    *(a4 + 16) = v212;
    *(a4 + 32) = v151;
    *(a4 + 48) = v35;
    *(a4 + 56) = *&v9;
    *(a4 + 64) = v36;
LABEL_123:
    v119 = *(a4 + 72);
    if (*&v119 == 0.0)
    {
      return result;
    }

    v205 = a4;
    v152 = *(a1 + 8);
    v153 = *(a1 + 12);
    v154 = *(a1 + 16);
    *&v257 = *a1;
    BYTE8(v257) = v152;
    HIDWORD(v257) = v153;
    LOBYTE(v258.f64[0]) = v154;

    v155 = *(a1 + 40);
    v156 = vdupq_n_s64(0x4060000000000000uLL);
    v217 = vmulq_f64(*(a1 + 24), v156);
    v214 = vmulq_f64(v155, v156);
    ResolvedGradient.animatableData.getter(&v223);
    v157 = v223.f64[0];
    v158 = LOBYTE(v223.f64[1]);
    v159 = HIDWORD(v223.f64[1]);
    v160 = LOBYTE(v224.f64[0]);
    v161 = v214;
    v26[6] = v217;
    v26[7] = v161;
    *&v262 = v157;
    BYTE8(v262) = v158;
    HIDWORD(v262) = v159;
    LOBYTE(v263) = v160;
    LOBYTE(v257) = 0;
    v162 = specialized AnimatorState.update(_:at:environment:)(&v260, a3, v25);
    v123 = AGGraphGetCurrentAttribute();
    v60 = *MEMORY[0x1E698D3F8];
    if (v123 == v60)
    {
      LODWORD(v120) = 0;
    }

    else
    {
      LODWORD(v120) = v123;
    }

    v118 = &type metadata instantiation cache for TupleTypeDescription;
    if (v162)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_182;
      }

      goto LABEL_129;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_184;
    }

LABEL_142:
    v172 = *(v118 + 616);
    if (*(v172 + 16) >= 0x43uLL)
    {
      if (*(v172 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v257) = v120;
        BYTE4(v257) = v123 == v60;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_177;
    }

    __break(1u);
LABEL_186:
    swift_once();
LABEL_134:
    v51 = *(&static Signpost.animationState + 1);
    v49 = static Signpost.animationState;
    v56 = word_1ED5283E8;
    v59 = HIBYTE(word_1ED5283E8);
    v165 = byte_1ED5283EA;
    v166 = static os_signpost_type_t.end.getter();
    v257 = __PAIR128__(v51, v49);
    LOBYTE(v258.f64[0]) = v56;
    BYTE1(v258.f64[0]) = v59;
    BYTE2(v258.f64[0]) = v165;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    LODWORD(v217.f64[0]) = v166;
    v167 = one-time initialization token for _signpostLog;
    LODWORD(v27) = v203;

    if (v167 != -1)
    {
      swift_once();
    }

    v57 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v60)
    {
      break;
    }

    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    v210 = v62;
    v202.f64[0] = v61;
    *&v203 = v64;
    v201.f64[0] = v63;
    swift_once();
    v63 = v201.f64[0];
    v64 = *&v203;
    v61 = v202.f64[0];
    v62 = v210;
LABEL_22:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_191:
      swift_once();
      goto LABEL_28;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v65 = static CustomEventTrace.recorder) != 0)
    {
      v210 = v59;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v203) = v49;
      v66 = *(v65 + 16);
      LODWORD(v251) = LODWORD(v217.f64[0]);
      BYTE4(v251) = v9 == v51;
      v252 = &type metadata for LinearGradient._Paint;
      v253 = v62;
      v254 = v61;
      v255 = v64;
      v256 = v63;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      v217.f64[0] = v67;

      *&v9 = COERCE_DOUBLE(v66);
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v56, v57, v58, v210, v60, v203);
    }

    else
    {
      outlined consume of Animation.Function(v56, v57, v58, v59, v60, v49);
    }

    LODWORD(v27) = v51;
    v68 = one-time initialization token for animationState;
    LODWORD(v56) = v192;

    if (v68 != -1)
    {
      goto LABEL_191;
    }

LABEL_28:
    v70 = *(&static Signpost.animationState + 1);
    v69 = static Signpost.animationState;
    v71 = word_1ED5283E8;
    v72 = HIBYTE(word_1ED5283E8);
    v73 = byte_1ED5283EA;
    v74 = static os_signpost_type_t.event.getter();
    v251 = v69;
    v252 = v70;
    LOBYTE(v253) = v71;
    BYTE1(v253) = v72;
    BYTE2(v253) = v73;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_89:
      a1 = v204;
      a4 = v205;
      goto LABEL_119;
    }

    LODWORD(v217.f64[0]) = v74;
    v75 = one-time initialization token for _signpostLog;

    if (v75 != -1)
    {
      swift_once();
    }

    *&v210 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v27)
    {
      __break(1u);
    }

    else
    {
      v76 = v27;
      v77 = AGGraphGetAttributeGraph();
      *&v9 = COERCE_DOUBLE(AGGraphGetCounter());

      v78 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v78;
      *(a1 + 32) = *&v9;
      v79 = AGGraphGetCurrentAttribute();
      if (v79 != v76)
      {
        v80 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v80;
        *(a1 + 72) = v79;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 112) = 0x746E6961505FLL;
        *(a1 + 120) = 0xE600000000000000;
        if (v72)
        {
          LOBYTE(v219) = LOBYTE(v217.f64[0]);
          v221 = *&v210;
          v222 = &dword_18D018000;
          v251 = v69;
          v252 = v70;
          LOBYTE(v253) = v71;
          v245 = "Animation: (%p) [%d] %{public}@ updated";
          v246 = 39;
          LOBYTE(v247) = 2;
          v220 = *&a1;
          v81 = v207;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

          (*(v213 + 8))(COERCE_DOUBLE(*&v81), v216);
        }

        else
        {
          v118 = v69;
          if (v69 == 20)
          {
            v119 = 3;
          }

          else
          {
            v119 = 4;
          }

          LODWORD(v120) = bswap32(v69) | (4 * (v69 >> 16));
          LODWORD(v217.f64[0]) = LOBYTE(v217.f64[0]);
          v121 = v213 + 16;
          v197 = *(v213 + 16);
          v122 = v197(*&v214.f64[0], *&v207, v216);
          v60 = 0;
          LOBYTE(v245) = 1;
          *&v202.f64[0] = 16 * v119;
          v198 = v121;
          v199 = v119;
          v203 = v121 - 8;
          v200 = v118;
          *&v201.f64[0] = a1 + 32;
          do
          {
            *&v210 = COERCE_DOUBLE(&v191);
            MEMORY[0x1EEE9AC00](v122);
            v9 = &v191 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
            v26 = (v9 + 8);
            v125 = v119;
            v126 = (v9 + 8);
            do
            {
              *(v126 - 1) = 0;
              *v126 = 0;
              v126 += 16;
              --v125;
            }

            while (v125);
            v27 = (*&v201.f64[0] + 40 * v60);
            while (1)
            {
              v127 = *(a1 + 16);
              if (v60 == v127)
              {
                break;
              }

              if (v60 >= v127)
              {
                goto LABEL_180;
              }

              ++v60;
              outlined init with copy of AnyTrackedValue(v27, &v251);
              v128 = *&v254;
              v118 = a1;
              __swift_project_boxed_opaque_existential_1(&v251, *&v254);
              *(v26 - 1) = CVarArg.kdebugValue(_:)(v120 | LODWORD(v217.f64[0]), v128);
              *v26++ = v129 & 1;
              v123 = __swift_destroy_boxed_opaque_existential_1(&v251);
              v27 = (v27 + 40);
              --v119;
              if (*&v119 == 0.0)
              {
                goto LABEL_73;
              }
            }

            LOBYTE(v245) = 0;
LABEL_73:
            v118 = v200;
            if (v200 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (*(v9 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v9 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(v9 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v118 != 20 && *(v9 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v130 = *v203;
            v131 = v214.f64[0];
            v132 = v216;
            (*v203)(*&v214.f64[0], v216);
            v133 = __swift_project_value_buffer(v132, static OSSignpostID.continuation);
            v122 = v197(*&v131, v133, v132);
            v119 = v199;
          }

          while ((v245 & 1) != 0);

          v134 = v216;
          v130(*&v214.f64[0], v216);
          v130(*&v207, v134);
        }

        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_55:
    v108 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v109 = COERCE_DOUBLE(swift_allocObject());
    *(v109 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v56)
    {
      __break(1u);
LABEL_198:
      __break(1u);
    }

    v110 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    v112 = MEMORY[0x1E69E6870];
    *(v109 + 56) = MEMORY[0x1E69E6810];
    *(v109 + 64) = v112;
    *(v109 + 32) = Counter;
    v113 = AGGraphGetCurrentAttribute();
    if (v113 == v56)
    {
      goto LABEL_198;
    }

    v27 = v109;
    v114 = MEMORY[0x1E69E76D0];
    *(v109 + 96) = MEMORY[0x1E69E7668];
    *(v109 + 104) = v114;
    *(v109 + 72) = v113;
    *(v109 + 136) = MEMORY[0x1E69E6158];
    *(v109 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v109 + 112) = 0x746E6961505FLL;
    *(v109 + 120) = 0xE600000000000000;
    if (v9)
    {
      LOBYTE(v219) = LOBYTE(v217.f64[0]);
      v221 = v108;
      v222 = &dword_18D018000;
      v251 = v69;
      v252 = v70;
      LOBYTE(v253) = v71;
      v245 = "Animation: (%p) [%d] %{public}@ started";
      v246 = 39;
      LOBYTE(v247) = 2;
      v220 = *&v109;
      v115 = v203;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v116 = v192;

      (*(v213 + 8))(v115, v216);
    }

    else
    {
      v135 = v69;
      if (v69 == 20)
      {
        v136 = 3;
      }

      else
      {
        v136 = 4;
      }

      LODWORD(v120) = bswap32(v69) | (4 * (v69 >> 16));
      v118 = LOBYTE(v217.f64[0]);
      v137 = v213 + 16;
      v197 = *(v213 + 16);
      v138 = v197(v210, v203, v216);
      v60 = 0;
      LOBYTE(v245) = 1;
      *&v214.f64[0] = v136;
      v198 = v137;
      v199 = v135;
      *&v202.f64[0] = v137 - 8;
      *&v217.f64[0] = v27;
      v200 = &v27[2];
      *&v201.f64[0] = 16 * v136;
      do
      {
        v207 = COERCE_DOUBLE(&v191);
        MEMORY[0x1EEE9AC00](v138);
        v26 = (&v191 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0));
        v9 = v26 + 8;
        v140 = v214.f64[0];
        v141 = v26 + 8;
        do
        {
          *(v141 - 1) = 0;
          *v141 = 0;
          v141 += 16;
          --*&v140;
        }

        while (v140 != 0.0);
        v119 = v200 + 40 * v60;
        a1 = *&v214.f64[0];
        while (1)
        {
          v142 = *(*&v217.f64[0] + 16);
          if (v60 == v142)
          {
            break;
          }

          if (v60 >= v142)
          {
            goto LABEL_181;
          }

          ++v60;
          outlined init with copy of AnyTrackedValue(v119, &v251);
          v143 = *&v254;
          v27 = *&v255;
          __swift_project_boxed_opaque_existential_1(&v251, *&v254);
          *(v9 - 8) = CVarArg.kdebugValue(_:)(v120 | v118, v143);
          *v9 = v144 & 1;
          v9 += 16;
          v123 = __swift_destroy_boxed_opaque_existential_1(&v251);
          v119 += 40;
          --a1;
          if (*&a1 == 0.0)
          {
            goto LABEL_102;
          }
        }

        LOBYTE(v245) = 0;
LABEL_102:
        v145 = v199;
        if (v199 == 20)
        {
          v27 = v210;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v27 = v210;
        }

        if (*(v26 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v26 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v26 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v145 != 20 && *(v26 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v146 = **&v202.f64[0];
        v147 = v216;
        (**&v202.f64[0])(v27, v216);
        v148 = __swift_project_value_buffer(v147, static OSSignpostID.continuation);
        v138 = v197(v27, v148, v147);
      }

      while ((v245 & 1) != 0);
      v116 = v192;

      v149 = v216;
      v146(v27, v216);
      v146(v203, v149);
    }

    a1 = v204;
    a4 = v205;
    *(v205 + 72) = v116;
LABEL_119:
    v27 = &v226;
    v26 = &v257;
LABEL_120:
    a3 = v208;
    v9 = v209;
    specialized AnimatorState.addListeners(transaction:)(v193);

    v150 = v227;
    *v26 = v226;
    v26[1] = v150;
    v26[2] = v27[2];
    LOBYTE(v259[1]) = v229;
    outlined destroy of Slice<IndexSet>(&v257, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

    v36 = v218;
LABEL_121:
    v35 = v195;
  }

  v27 = AGGraphGetAttributeGraph();
  *&v9 = COERCE_DOUBLE(AGGraphGetCounter());

  v168 = MEMORY[0x1E69E6870];
  *(v58 + 56) = MEMORY[0x1E69E6810];
  *(v58 + 64) = v168;
  *(v58 + 32) = *&v9;
  v169 = AGGraphGetCurrentAttribute();
  if (v169 == v60)
  {
    goto LABEL_188;
  }

  v9 = v58;
  v170 = MEMORY[0x1E69E76D0];
  *(v58 + 96) = MEMORY[0x1E69E7668];
  *(v58 + 104) = v170;
  *(v58 + 72) = v169;
  *(v58 + 136) = MEMORY[0x1E69E6158];
  *(v58 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v58 + 112) = 0x746E6961505FLL;
  *(v58 + 120) = 0xE600000000000000;
  if (v59)
  {
    LOBYTE(v245) = LOBYTE(v217.f64[0]);
    v251 = &dword_18D018000;
    *&v230[0] = v57;
    *&v257 = v49;
    *(&v257 + 1) = v51;
    LOBYTE(v258.f64[0]) = v56;
    *&v223.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v223.f64[1] = 37;
    LOBYTE(v224.f64[0]) = 2;
    *&v226.f64[0] = v58;
    v171 = v206;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v213 + 8))(v171, v216);
    goto LABEL_175;
  }

  v119 = v49;
  if (v49 == 20)
  {
    a1 = 3;
  }

  else
  {
    a1 = 4;
  }

  v118 = bswap32(v49) | (4 * WORD1(v49));
  LODWORD(v217.f64[0]) = LOBYTE(v217.f64[0]);
  v173 = v213 + 16;
  v207 = *(v213 + 16);
  v174 = (*&v207)(v215, v206, v216);
  v60 = 0;
  LOBYTE(v223.f64[0]) = 1;
  v213 = v173;
  *&v212.f64[0] = v173 - 8;
  v210 = (v9 + 32);
  *&v211.f64[0] = 16 * a1;
  v208 = v119;
  v209 = a1;
  do
  {
    *&v214.f64[0] = &v191;
    MEMORY[0x1EEE9AC00](v174);
    v26 = (&v191 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0));
    v120 = v26 + 8;
    v176 = a1;
    v177 = v26 + 8;
    do
    {
      *(v177 - 1) = 0;
      *v177 = 0;
      v177 += 16;
      --v176;
    }

    while (v176);
    v27 = (v210 + 40 * v60);
    while (1)
    {
      v178 = *(v9 + 16);
      if (v60 == v178)
      {
        break;
      }

      if (v60 >= v178)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v189 = v123;
        swift_once();
        v123 = v189;
LABEL_129:
        v163 = *(v118 + 616);
        if (*(v163 + 16) >= 0x43uLL)
        {
          if (*(v163 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v257) = v120;
            BYTE4(v257) = v123 == v60;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v203 = v119;
          v204 = a1;
          v164 = one-time initialization token for animationState;

          if (v164 != -1)
          {
            goto LABEL_186;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_184:
        v190 = v123;
        swift_once();
        v123 = v190;
        goto LABEL_142;
      }

      ++v60;
      outlined init with copy of AnyTrackedValue(v27, &v257);
      v179 = *&v258.f64[1];
      v119 = v9;
      __swift_project_boxed_opaque_existential_1(&v257, *&v258.f64[1]);
      *(v120 - 1) = CVarArg.kdebugValue(_:)(v118 | LODWORD(v217.f64[0]), v179);
      *v120 = v180 & 1;
      v120 += 16;
      v123 = __swift_destroy_boxed_opaque_existential_1(&v257);
      v27 = (v27 + 40);
      --a1;
      if (*&a1 == 0.0)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v223.f64[0]) = 0;
LABEL_160:
    v119 = v208;
    if (v208 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    a1 = v209;
    if (*(v26 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v26 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v26 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v119 != 20 && *(v26 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v181 = **&v212.f64[0];
    v183 = v215;
    v182 = v216;
    (**&v212.f64[0])(v215, v216);
    v184 = __swift_project_value_buffer(v182, static OSSignpostID.continuation);
    v174 = (*&v207)(v183, v184, v182);
  }

  while ((LOBYTE(v223.f64[0]) & 1) != 0);

  v185 = v216;
  v181(v215, v216);
  v181(v206, v185);
LABEL_175:

LABEL_176:
  specialized AnimatorState.removeListeners()();

  a1 = v204;
  *(v205 + 72) = 0;
  v27 = &v226;
  v26 = &v257;
LABEL_177:
  v186 = v26[7];
  v223 = v26[6];
  v224 = v186;
  v225[0] = v26[8];
  v187 = vdupq_n_s64(0x3F80000000000000uLL);
  *(a1 + 24) = vmulq_f64(v223, v187);
  LOBYTE(v225[1]) = v263;
  *(a1 + 40) = vmulq_f64(v186, v187);
  v251 = *&v225[0];
  LOBYTE(v252) = BYTE8(v225[0]);
  HIDWORD(v252) = HIDWORD(v225[0]);
  LOBYTE(v253) = v225[1];
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v223, &v257, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  ResolvedGradient.animatableData.setter(&v251);

  v188 = v26[7];
  v27[27] = v26[6];
  v27[28] = v188;
  v27[29] = v26[8];
  LOBYTE(v259[1]) = v263;
  result = outlined destroy of Slice<IndexSet>(&v257, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  *(a1 + 57) = 1;
  return result;
}

{
  v251 = *MEMORY[0x1E69E9840];
  v221 = type metadata accessor for OSSignpostID();
  v217 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  *&v218 = &v200 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v200 - v11;
  MEMORY[0x1EEE9AC00](v13);
  *&v219 = &v200 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v200 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v220 = &v200 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v200 - v21;
  if (*(a4 + 40))
  {
    Value = AGGraphGetValue();
    if (v24)
    {
      v25 = *Value;
    }

    else
    {
      v25 = -INFINITY;
    }
  }

  else
  {
    v25 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 17) = 1;
  }

  else if (*(a1 + 17) != 1)
  {
    goto LABEL_130;
  }

  ResolvedGradient.animatableData.getter(&v231);
  v27 = *(a4 + 16);
  v28 = v231;
  if (!v27)
  {
    goto LABEL_129;
  }

  v202 = v12;
  v203 = v17;
  v209 = v22;
  v210 = a4;
  v207 = a1;
  v29 = *(a4 + 32);
  v31 = *(a4 + 24);
  v30 = *(a4 + 28);
  v32 = v232;
  LODWORD(v4) = v233;
  v33 = v234;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22ResolvedGradientVectorV4Stop026_3CA72A515D037D62EA3FD1FE1M4F3CBLLV_Tt1g5(v231, v27) & 1) != 0 && v32 == v31)
  {
    if (v33)
    {
      if (v29)
      {
        goto LABEL_48;
      }
    }

    else if ((v29 & 1) == 0 && *&v4 == v30)
    {
      goto LABEL_48;
    }
  }

  LODWORD(v215) = v33;
  *&v216 = v30;
  LODWORD(v222) = v29;
  v214 = a2;
  v206 = a3;
  v205 = v27;

  AGGraphClearUpdate();
  v34 = *(v210 + 16);
  v247 = *v210;
  v248 = v34;
  v249 = *(v210 + 32);
  v250 = *(v210 + 48);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v247, &v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedGradient>, lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient, &type metadata for ResolvedGradient, type metadata accessor for AnimatableAttributeHelper);
  v35 = *AGGraphGetValue();

  v36 = v35;
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v247, &lazy cache variable for type metadata for AnimatableAttributeHelper<ResolvedGradient>, lazy protocol witness table accessor for type ResolvedGradient and conformance ResolvedGradient, &type metadata for ResolvedGradient, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v37 = Transaction.effectiveAnimation.getter(v35);
  if (v37)
  {
    v38 = v37;
    goto LABEL_21;
  }

  a3 = v206;
  v38 = v214;
  if (v214)
  {

LABEL_21:
    v227 = v28;
    v228 = v32;
    v229 = v4;
    v230 = v215;
    v241 = v205;
    LOBYTE(v242) = v31;
    v39 = *(&v249 + 1);
    HIDWORD(v242) = LODWORD(v216);
    LOBYTE(v243) = v222 & 1;

    ResolvedGradientVector.add(_:scaledBy:)(&v241, -1.0);
    v25 = *AGGraphGetValue();
    v200 = v38;
    v201 = v35;
    if (!v39)
    {
      v64 = v227;
      v65 = v228;
      v66 = v230;
      a1 = v229;
      v235 = &type metadata for ResolvedGradient;
      type metadata accessor for ResolvedGradient.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == ResolvedGradientVector>.Type);

      v67 = swift_dynamicCast();
      if (v67)
      {
        v68 = v241;
      }

      else
      {
        v68 = 0;
      }

      if (v67)
      {
        v69 = v242;
      }

      else
      {
        v69 = 0;
      }

      v204 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA22ResolvedGradientVectorV_Tt4B5(v70, v64, v65 | (a1 << 32), v66, v36, v68, v69, v25);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(a1) = CurrentAttribute;
      LODWORD(v68) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v72) = 0;
      }

      else
      {
        LODWORD(v72) = CurrentAttribute;
      }

      (*(*v38 + 96))(&v235);
      v73 = v235;
      v74 = v236;
      v22 = v237;
      v75 = v238;
      v76 = v240;
      v225 = NAN;
      v226 = 0x7FF8000000000000;
      v223 = NAN;
      v224 = 1.0;
      v241 = v235;
      v242 = v236;
      v243 = v237;
      v244 = v238;
      v77 = v239;
      v245 = *&v239;
      LOBYTE(v246) = v240;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v241, &v226, &v225, &v224, &v223);
      v78 = *&v225;
      v4 = v226;
      v79 = v223;
      v80 = v224;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_198;
      }

      goto LABEL_41;
    }

    v40 = v227;
    v41 = v228;
    v42 = v230;
    v43 = v229;

    LOBYTE(v241) = 0;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v38, v40, v41 | (v43 << 32), v42, v35, v25);
    v44 = AGGraphGetCurrentAttribute();
    v45 = v44;
    LODWORD(v222) = *MEMORY[0x1E698D3F8];
    if (v44 == v222)
    {
      v46 = 0;
    }

    else
    {
      v46 = v44;
    }

    (*(*v38 + 96))(&v235);
    v48 = v235;
    v47 = v236;
    v50 = v237;
    v49 = v238;
    v51 = v240;
    v225 = NAN;
    v226 = 0x7FF8000000000000;
    v223 = NAN;
    v224 = 1.0;
    v241 = v235;
    v242 = v236;
    v243 = v237;
    v244 = v238;
    v52 = v239;
    v245 = *&v239;
    LOBYTE(v246) = v240;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v241, &v226, &v225, &v224, &v223);
    v53 = *&v225;
    v4 = v226;
    v54 = v223;
    v55 = v224;
    if (one-time initialization token for enabledCategories != -1)
    {
      v218 = v225;
      *&v215 = v224;
      v216 = v223;
      swift_once();
      v55 = *&v215;
      v54 = v216;
      v53 = *&v218;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_195:
      swift_once();
LABEL_52:
      v99 = *(&static Signpost.animationState + 1);
      v98 = static Signpost.animationState;
      v100 = word_1ED5283E8;
      v101 = HIBYTE(word_1ED5283E8);
      v102 = byte_1ED5283EA;
      v103 = static os_signpost_type_t.event.getter();
      v241 = v98;
      v242 = v99;
      LOBYTE(v243) = v100;
      BYTE1(v243) = v101;
      BYTE2(v243) = v102;
      if (Signpost.isEnabled.getter())
      {
        LODWORD(v218) = v103;
        v104 = one-time initialization token for _signpostLog;

        if (v104 != -1)
        {
          swift_once();
        }

        v105 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_18DDAF080;
        v107 = AGGraphGetCurrentAttribute();
        v108 = v222;
        if (v107 == v222)
        {
          __break(1u);
        }

        else
        {
          v109 = AGGraphGetAttributeGraph();
          Counter = AGGraphGetCounter();

          v111 = MEMORY[0x1E69E6870];
          *(v106 + 56) = MEMORY[0x1E69E6810];
          *(v106 + 64) = v111;
          *(v106 + 32) = Counter;
          v112 = AGGraphGetCurrentAttribute();
          if (v112 != v108)
          {
            v113 = v106;
            v114 = MEMORY[0x1E69E76D0];
            *(v106 + 96) = MEMORY[0x1E69E7668];
            *(v106 + 104) = v114;
            *(v106 + 72) = v112;
            v115 = 0x800000018DD7ED90;
            *(v106 + 136) = MEMORY[0x1E69E6158];
            *(v106 + 144) = lazy protocol witness table accessor for type String and conformance String();
            *(v106 + 112) = 0xD000000000000010;
            *(v106 + 120) = 0x800000018DD7ED90;
            v116 = v203;
            if (v101)
            {
              LOBYTE(v223) = LOBYTE(v218);
              v225 = *&v105;
              v226 = &dword_18D018000;
              v241 = v98;
              v242 = v99;
              LOBYTE(v243) = v100;
              v235 = "Animation: (%p) [%d] %{public}@ updated";
              v236 = 39;
              LOBYTE(v237) = 2;
              v224 = *&v106;
              specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

              (*(v217 + 8))(v116, v221);
            }

            else
            {
              v117 = v98;
              if (v98 == 20)
              {
                a4 = 3;
              }

              else
              {
                a4 = 4;
              }

              v22 = bswap32(v98) | (4 * (v98 >> 16));
              v118 = LOBYTE(v218);
              v119 = (v217 + 16);
              v211 = *(v217 + 16);
              v120 = v211(*&v219, v203, v221);
              v121 = 0;
              LOBYTE(v235) = 1;
              v212 = v119;
              v213 = v117;
              v215 = 16 * a4;
              *&v216 = v119 - 8;
              v222 = v113;
              v214 = v113 + 32;
              v208 = a4;
              do
              {
                v218 = COERCE_DOUBLE(&v200);
                MEMORY[0x1EEE9AC00](v120);
                v124 = &v200 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
                a1 = (v124 + 8);
                v125 = a4;
                v126 = v124 + 8;
                do
                {
                  *(v126 - 1) = 0;
                  *v126 = 0;
                  v126 += 16;
                  --v125;
                }

                while (v125);
                v127 = v214 + 40 * v121;
                while (1)
                {
                  v128 = *(v222 + 16);
                  if (v121 == v128)
                  {
                    break;
                  }

                  if (v121 >= v128)
                  {
                    goto LABEL_187;
                  }

                  ++v121;
                  outlined init with copy of AnyTrackedValue(v127, &v241);
                  v129 = v244;
                  LODWORD(v115) = LODWORD(v245);
                  __swift_project_boxed_opaque_existential_1(&v241, v244);
                  *(a1 - 8) = CVarArg.kdebugValue(_:)(v22 | v118, v129);
                  *a1 = v130 & 1;
                  a1 += 16;
                  v122 = __swift_destroy_boxed_opaque_existential_1(&v241);
                  v127 += 40;
                  if (!--a4)
                  {
                    goto LABEL_72;
                  }
                }

                LOBYTE(v235) = 0;
LABEL_72:
                v131 = v213;
                if (v213 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                a4 = v208;
                if (v124[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (v124[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (v124[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (v131 != 20 && v124[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v132 = **&v216;
                v133 = v219;
                v115 = v221;
                (**&v216)(*&v219, v221);
                v134 = __swift_project_value_buffer(v115, static OSSignpostID.continuation);
                v120 = v211(*&v133, v134, v115);
              }

              while ((v235 & 1) != 0);

              v135 = v221;
              v132(*&v219, v221);
              v132(v203, v135);
            }

LABEL_88:
            a4 = v210;
            goto LABEL_128;
          }
        }

        __break(1u);
        goto LABEL_203;
      }

      goto LABEL_88;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      LODWORD(v218) = v51;
      v56 = static CustomEventTrace.recorder;
      v57 = v222;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v58 = v46;
        v59 = v39;
        v60 = *(v56 + 16);
        LODWORD(v241) = v58;
        BYTE4(v241) = v45 == v57;
        v242 = &type metadata for ResolvedGradient;
        v243 = v4;
        v244 = v53;
        v245 = v55;
        v246 = v54;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v216 = v61;

        v62 = v60;
        v39 = v59;
        v63 = v62;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v48, v47, v50, v49, v52, LOBYTE(v218));

        goto LABEL_51;
      }

      v85 = v48;
      v86 = v47;
      v87 = v50;
      v88 = v49;
      v89 = v52;
      v90 = LOBYTE(v218);
    }

    else
    {
      v85 = v48;
      v86 = v47;
      v87 = v50;
      v88 = v49;
      v89 = v52;
      v90 = v51;
    }

    outlined consume of Animation.Function(v85, v86, v87, v88, v89, v90);
LABEL_51:
    v97 = one-time initialization token for animationState;
    v204 = v39;

    if (v97 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_195;
  }

LABEL_48:
  a1 = v207;
  v22 = v209;
  a4 = v210;
LABEL_129:
  while (1)
  {

    v165 = v234;
    v166 = v232 | (v233 << 32);
    *(a4 + 16) = v28;
    *(a4 + 24) = v166;
    *(a4 + 32) = v165;
LABEL_130:
    v167 = *(a4 + 40);
    if (!v167)
    {
      return result;
    }

    ResolvedGradient.animatableData.getter(&v241);
    LOBYTE(v247) = 0;
    v211 = v167;
    v168 = specialized AnimatorState.update(_:at:environment:)(v25, &v241, a3);
    v122 = AGGraphGetCurrentAttribute();
    LODWORD(v115) = *MEMORY[0x1E698D3F8];
    if (v122 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v121) = 0;
    }

    else
    {
      LODWORD(v121) = v122;
    }

    v118 = &type metadata instantiation cache for TupleTypeDescription;
    if (v168)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_189;
      }

      goto LABEL_136;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_191;
    }

LABEL_149:
    v181 = *(v118 + 616);
    if (*(v181 + 16) >= 0x43uLL)
    {
      if (*(v181 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v247) = v121;
        BYTE4(v247) = v122 == v115;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_184;
    }

    __break(1u);
LABEL_193:
    swift_once();
LABEL_141:
    v171 = *(&static Signpost.animationState + 1);
    v68 = static Signpost.animationState;
    v172 = word_1ED5283E8;
    v74 = HIBYTE(word_1ED5283E8);
    v173 = byte_1ED5283EA;
    v174 = static os_signpost_type_t.end.getter();
    v218 = v171;
    v219 = *&v68;
    v247 = __PAIR128__(*&v171, v68);
    v75 = v172;
    LOBYTE(v248) = v172;
    BYTE1(v248) = v74;
    BYTE2(v248) = v173;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_183;
    }

    LODWORD(v216) = v174;
    v175 = one-time initialization token for _signpostLog;
    v77 = v211;

    if (v175 != -1)
    {
      swift_once();
    }

    v210 = a4;
    v207 = a1;
    v73 = _signpostLog;
    v209 = v22;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_18DDAF080;
    v176 = AGGraphGetCurrentAttribute();
    v76 = v222;
    if (v176 != v222)
    {
      break;
    }

    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    v222 = v78;
    v216 = v80;
    v219 = v79;
    swift_once();
    v79 = v219;
    v80 = v216;
    v78 = v222;
LABEL_41:
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        LODWORD(v222) = v76;
        v81 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v219) = v68;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          v82 = v72;
          v83 = *(v81 + 16);
          LODWORD(v241) = v82;
          BYTE4(v241) = a1 == v68;
          v242 = &type metadata for ResolvedGradient;
          v243 = v4;
          v244 = v78;
          v245 = v80;
          v246 = v79;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v84 = v83;
          LODWORD(v68) = LODWORD(v219);
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v73, v74, v22, v75, v77, v222);

          goto LABEL_91;
        }

        v91 = v73;
        v92 = v74;
        v93 = v22;
        v94 = v75;
        v95 = v77;
        v96 = v222;
      }

      else
      {
        v91 = v73;
        v92 = v74;
        v93 = v22;
        v94 = v75;
        v95 = v77;
        v96 = v76;
      }

      outlined consume of Animation.Function(v91, v92, v93, v94, v95, v96);
LABEL_91:
      v136 = one-time initialization token for animationState;

      if (v136 == -1)
      {
        goto LABEL_92;
      }

      goto LABEL_200;
    }

    __break(1u);
LABEL_200:
    swift_once();
LABEL_92:
    v106 = *(&static Signpost.animationState + 1);
    v98 = static Signpost.animationState;
    v101 = word_1ED5283E8;
    v100 = HIBYTE(word_1ED5283E8);
    v137 = byte_1ED5283EA;
    v138 = static os_signpost_type_t.begin.getter();
    v241 = v98;
    v242 = v106;
    LOBYTE(v243) = v101;
    BYTE1(v243) = v100;
    BYTE2(v243) = v137;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v222) = v138;
      v108 = v68;
      v139 = one-time initialization token for _signpostLog;

      if (v139 != -1)
      {
LABEL_203:
        swift_once();
      }

      v140 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v108)
      {
        __break(1u);
LABEL_205:
        __break(1u);
      }

      v142 = AGGraphGetAttributeGraph();
      v143 = AGGraphGetCounter();

      v144 = MEMORY[0x1E69E6870];
      *(v141 + 56) = MEMORY[0x1E69E6810];
      *(v141 + 64) = v144;
      *(v141 + 32) = v143;
      v145 = AGGraphGetCurrentAttribute();
      if (v145 == v108)
      {
        goto LABEL_205;
      }

      v146 = MEMORY[0x1E69E76D0];
      *(v141 + 96) = MEMORY[0x1E69E7668];
      *(v141 + 104) = v146;
      *(v141 + 72) = v145;
      *(v141 + 136) = MEMORY[0x1E69E6158];
      *(v141 + 144) = lazy protocol witness table accessor for type String and conformance String();
      *(v141 + 112) = 0xD000000000000010;
      *(v141 + 120) = 0x800000018DD7ED90;
      v147 = v202;
      if (v100)
      {
        LOBYTE(v223) = v222;
        v225 = *&v140;
        v226 = &dword_18D018000;
        v241 = v98;
        v242 = v106;
        LOBYTE(v243) = v101;
        v235 = "Animation: (%p) [%d] %{public}@ started";
        v236 = 39;
        LOBYTE(v237) = 2;
        v224 = *&v141;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v148 = v204;

        (*(v217 + 8))(v147, v221);
      }

      else
      {
        v149 = v98;
        if (v98 == 20)
        {
          v150 = 3;
        }

        else
        {
          v150 = 4;
        }

        v118 = bswap32(v98) | (4 * (v98 >> 16));
        LODWORD(v121) = v222;
        v115 = (v217 + 16);
        v208 = *(v217 + 16);
        v151 = v208(*&v218, v202, v221);
        v152 = 0;
        LOBYTE(v235) = 1;
        v219 = *&v150;
        v211 = v115;
        v212 = v149;
        v214 = 16 * v150;
        v215 = (v115 - 8);
        v222 = v141;
        v213 = v141 + 32;
        do
        {
          v216 = COERCE_DOUBLE(&v200);
          MEMORY[0x1EEE9AC00](v151);
          v22 = &v200 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
          a4 = v22 + 8;
          v154 = v219;
          v155 = (v22 + 8);
          do
          {
            *(v155 - 1) = 0;
            *v155 = 0;
            v155 += 16;
            --*&v154;
          }

          while (v154 != 0.0);
          a1 = v213 + 40 * v152;
          v156 = v219;
          while (1)
          {
            v157 = *(v222 + 16);
            if (v152 == v157)
            {
              break;
            }

            if (v152 >= v157)
            {
              goto LABEL_188;
            }

            ++v152;
            outlined init with copy of AnyTrackedValue(a1, &v241);
            v158 = v244;
            LODWORD(v115) = LODWORD(v245);
            __swift_project_boxed_opaque_existential_1(&v241, v244);
            *(a4 - 8) = CVarArg.kdebugValue(_:)(v118 | v121, v158);
            *a4 = v159 & 1;
            a4 += 16;
            v122 = __swift_destroy_boxed_opaque_existential_1(&v241);
            a1 += 40;
            --*&v156;
            if (v156 == 0.0)
            {
              goto LABEL_111;
            }
          }

          LOBYTE(v235) = 0;
LABEL_111:
          v160 = v212;
          if (v212 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          if (*(v22 + 8) == 1)
          {
            kdebug_trace_string();
          }

          if (*(v22 + 24) == 1)
          {
            kdebug_trace_string();
          }

          if (*(v22 + 40) == 1)
          {
            kdebug_trace_string();
          }

          if (v160 != 20 && *(v22 + 56) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v161 = *v215;
          v162 = v218;
          v115 = v221;
          (*v215)(COERCE_DOUBLE(*&v218), v221);
          v163 = __swift_project_value_buffer(v115, static OSSignpostID.continuation);
          v151 = v208(*&v162, v163, v115);
        }

        while ((v235 & 1) != 0);
        v148 = v204;

        v164 = v221;
        v161(*&v218, v221);
        v161(v202, v164);
      }
    }

    else
    {
      v148 = v204;
    }

    a4 = v210;
    *(v210 + 40) = v148;
LABEL_128:
    specialized AnimatorState.addListeners(transaction:)(v201);

    v28 = v231;
    a1 = v207;
    v22 = v209;
    a3 = v206;
  }

  a1 = AGGraphGetAttributeGraph();
  v22 = AGGraphGetCounter();

  v177 = MEMORY[0x1E69E6870];
  *(v72 + 56) = MEMORY[0x1E69E6810];
  *(v72 + 64) = v177;
  *(v72 + 32) = v22;
  v178 = AGGraphGetCurrentAttribute();
  if (v178 == v76)
  {
    goto LABEL_197;
  }

  v179 = MEMORY[0x1E69E76D0];
  *(v72 + 96) = MEMORY[0x1E69E7668];
  *(v72 + 104) = v179;
  *(v72 + 72) = v178;
  *(v72 + 136) = MEMORY[0x1E69E6158];
  *(v72 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v72 + 112) = 0xD000000000000010;
  *(v72 + 120) = 0x800000018DD7ED90;
  v180 = v209;
  if (v74)
  {
    LOBYTE(v225) = LOBYTE(v216);
    v231 = &dword_18D018000;
    v226 = v72;
    v227 = v73;
    *&v247 = v219;
    *(&v247 + 1) = v218;
    LOBYTE(v248) = v75;
    v235 = "Animation: (%p) [%d] %{public}@ ended";
    v236 = 37;
    LOBYTE(v237) = 2;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v217 + 8))(v180, v221);
    goto LABEL_182;
  }

  v213 = LOBYTE(v219);
  if (LOBYTE(v219) == 20)
  {
    v182 = 3;
  }

  else
  {
    v182 = 4;
  }

  LODWORD(v121) = bswap32(LOWORD(v219)) | (4 * HIWORD(LODWORD(v219)));
  LODWORD(v222) = LOBYTE(v216);
  v183 = v217 + 16;
  v212 = *(v217 + 16);
  v184 = v212(v220, v209, v221);
  v118 = 0;
  LOBYTE(v235) = 1;
  v219 = *&v182;
  v217 = v183;
  v215 = 16 * v182;
  *&v216 = v183 - 8;
  v214 = v72 + 32;
  v185 = v72;
  do
  {
    v218 = COERCE_DOUBLE(&v200);
    MEMORY[0x1EEE9AC00](v184);
    v22 = &v200 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
    v115 = (v22 + 8);
    v187 = v219;
    v188 = (v22 + 8);
    do
    {
      *(v188 - 1) = 0;
      *v188 = 0;
      v188 += 16;
      --*&v187;
    }

    while (v187 != 0.0);
    a1 = v214 + 40 * v118;
    a4 = *&v219;
    while (1)
    {
      v189 = *(v185 + 16);
      if (v118 == v189)
      {
        break;
      }

      if (v118 >= v189)
      {
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        v198 = v122;
        swift_once();
        v122 = v198;
LABEL_136:
        v169 = *(v118 + 616);
        if (*(v169 + 16) >= 0x43uLL)
        {
          if (*(v169 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v247) = v121;
            BYTE4(v247) = v122 == v115;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          LODWORD(v222) = v115;
          v170 = one-time initialization token for animationState;

          if (v170 != -1)
          {
            goto LABEL_193;
          }

          goto LABEL_141;
        }

        __break(1u);
LABEL_191:
        v199 = v122;
        swift_once();
        v122 = v199;
        goto LABEL_149;
      }

      ++v118;
      outlined init with copy of AnyTrackedValue(a1, &v247);
      v190 = *(&v248 + 1);
      __swift_project_boxed_opaque_existential_1(&v247, *(&v248 + 1));
      *(v115 - 1) = CVarArg.kdebugValue(_:)(v121 | v222, v190);
      *v115 = v191 & 1;
      v115 += 16;
      v122 = __swift_destroy_boxed_opaque_existential_1(&v247);
      a1 += 40;
      if (!--a4)
      {
        goto LABEL_167;
      }
    }

    LOBYTE(v235) = 0;
LABEL_167:
    v192 = v213;
    if (v213 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(v22 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v22 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(v22 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v192 != 20 && *(v22 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v193 = **&v216;
    v195 = v220;
    v194 = v221;
    (**&v216)(v220, v221);
    v196 = __swift_project_value_buffer(v194, static OSSignpostID.continuation);
    v184 = v212(v195, v196, v194);
  }

  while ((v235 & 1) != 0);

  v197 = v221;
  v193(v220, v221);
  v193(v209, v197);
LABEL_182:

  a1 = v207;
  a4 = v210;
LABEL_183:
  specialized AnimatorState.removeListeners()();

  *(a4 + 40) = 0;
LABEL_184:
  *&v247 = v241;
  BYTE8(v247) = v242;
  HIDWORD(v247) = HIDWORD(v242);
  LOBYTE(v248) = v243;

  ResolvedGradient.animatableData.setter(&v247);

  *(a1 + 17) = 1;
  return result;
}

{
  v232 = *MEMORY[0x1E69E9840];
  v206 = type metadata accessor for OSSignpostID();
  v203 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v14 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v181 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v204 = &v181 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v181 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v205 = &v181 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v195 = &v181 - v26;
  if (*(a4 + 64))
  {
    Value = AGGraphGetValue();
    if (v28)
    {
      v29 = *Value;
    }

    else
    {
      v29 = -INFINITY;
    }
  }

  else
  {
    v29 = -INFINITY;
  }

  v30 = &v228;
  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 48) = 1;
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_129;
  }

  v5 = *a1;
  v7 = *(a1 + 8);
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  v34 = *(a1 + 40);
  if (*(a4 + 56))
  {
    goto LABEL_128;
  }

  *&v6 = v29;
  v36 = *(a4 + 40);
  v35 = *(a4 + 48);
  v37 = *(a4 + 24);
  v4 = *(a4 + 32);
  v8 = *(a4 + 16);
  if (v5 != v8 || v7 != v37 || v32 != v4 || v33 != v36 || v34 != v35)
  {
    v202 = v14;
    v182 = v17;
    v183 = v22;
    v188 = v34;
    v189 = v33;
    v190 = v32;
    v191 = a3;
    AGGraphClearUpdate();
    v38 = *(a4 + 16);
    v228 = *a4;
    v229 = v38;
    v39 = *(a4 + 48);
    v230 = *(a4 + 32);
    *v231 = v39;
    *&v231[12] = *(a4 + 60);
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v228, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    v40 = *AGGraphGetValue();

    LODWORD(v14) = v40;
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v41 = Transaction.effectiveAnimation.getter(v40);
    if (v41)
    {
      v42 = v41;
    }

    else
    {
      a3 = v191;
      if (!a2)
      {

        v30 = &v228;
        v29 = *&v6;
        goto LABEL_127;
      }

      v42 = a2;
    }

    v196 = a1;
    v43 = *&v231[16];
    v44 = v5 - v8;
    v186 = v7;
    v45 = v7 - v37;
    v46 = v190 - v4;
    v47 = v189 - v36;
    v48 = v188 - v35;
    v29 = *AGGraphGetValue();
    v194 = a4;
    v184 = v42;
    v185 = v40;
    if (v43)
    {
      v212.f64[0] = v44;
      v212.f64[1] = v45;
      v213 = v46;
      v214 = v47;
      v215 = v48;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v228, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v222) = 0;
      v187 = v43;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v42, &v212, v40, v29);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v14) = CurrentAttribute;
      LODWORD(v50) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        v51 = 0;
      }

      else
      {
        v51 = CurrentAttribute;
      }

      LODWORD(v207) = v51;
      (*(*v42 + 96))(&v216);
      v53 = v216;
      v52 = v217;
      v54 = v218;
      v55 = v220;
      Counter = v221;
      *&v210 = NAN;
      *&v211 = NAN;
      v208 = NAN;
      v209 = 1.0;
      v222 = v216;
      v223 = v217;
      v224 = *&v218;
      v225 = v219;
      v57 = v219;
      v226 = *&v220;
      LOBYTE(v227) = v221;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v222, &v211, &v210, &v209, &v208);
      v6 = v210;
      v4 = *&v211;
      v8 = v208;
      v7 = v209;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_25;
    }

    v216 = &type metadata for UnevenRoundedRectangle._Inset;
    type metadata accessor for UnevenRoundedRectangle._Inset.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>);
    v60 = swift_dynamicCast();
    if (v60)
    {
      v61 = v222;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = v223;
    }

    else
    {
      v62 = 0;
    }

    v212.f64[0] = v44;
    v212.f64[1] = v45;
    v213 = v46;
    v214 = v47;
    v215 = v48;

    v187 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVySfAVySfAVyS2fGGGAVy12CoreGraphics7CGFloatVAVyA0_A0_GGG_Tt4B5Tm(v63, &v212, v40, v61, v62, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>, v29);
    v64 = AGGraphGetCurrentAttribute();
    v65 = v64;
    LODWORD(v66) = *MEMORY[0x1E698D3F8];
    if (v64 == *MEMORY[0x1E698D3F8])
    {
      v67 = 0;
    }

    else
    {
      v67 = v64;
    }

    LODWORD(v204) = v67;
    (*(*v42 + 96))(&v216);
    v69 = v216;
    v68 = v217;
    v70 = v218;
    v71 = v219;
    v72 = v220;
    *&v210 = NAN;
    *&v211 = NAN;
    v208 = NAN;
    v209 = 1.0;
    v222 = v216;
    v223 = v217;
    v224 = *&v218;
    v225 = v219;
    v226 = *&v220;
    LODWORD(v207) = v221;
    LOBYTE(v227) = v221;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v222, &v211, &v210, &v209, &v208);
    v6 = v210;
    v4 = *&v211;
    v8 = v208;
    v7 = v209;
    v30 = &v228;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_199;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v201 = v71;
      v73 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v74 = v65 == v66;
        v200 = v72;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v75 = *(v73 + 16);
        LODWORD(v222) = v204;
        BYTE4(v222) = v74;
        v223 = &type metadata for UnevenRoundedRectangle._Inset;
        v224 = v4;
        v225 = v6;
        v226 = v7;
        v227 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v76 = v75;
        v30 = &v228;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v69, v68, v70, v201, v200, v207);

        goto LABEL_89;
      }

      v83 = v69;
      v84 = v68;
      v85 = v70;
      v86 = v201;
    }

    else
    {
      v83 = v69;
      v84 = v68;
      v85 = v70;
      v86 = v71;
    }

    outlined consume of Animation.Function(v83, v84, v85, v86, v72, v207);
LABEL_89:
    v118 = one-time initialization token for animationState;

    v7 = v186;
    if (v118 == -1)
    {
LABEL_90:
      Counter = *(&static Signpost.animationState + 1);
      v87 = static Signpost.animationState;
      LODWORD(v14) = word_1ED5283E8;
      v89 = HIBYTE(word_1ED5283E8);
      v119 = byte_1ED5283EA;
      v120 = static os_signpost_type_t.begin.getter();
      v222 = v87;
      v223 = Counter;
      LOBYTE(v224) = v14;
      BYTE1(v224) = v89;
      BYTE2(v224) = v119;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v130 = v187;

        goto LABEL_125;
      }

      LODWORD(v207) = v120;
      v121 = one-time initialization token for _signpostLog;

      if (v121 != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_92;
    }

LABEL_199:
    swift_once();
    goto LABEL_90;
  }

  v29 = *&v6;
LABEL_128:
  while (1)
  {
    *(a4 + 16) = v5;
    *(a4 + 24) = v7;
    *(a4 + 32) = v32;
    *(a4 + 40) = v33;
    *(a4 + 48) = v34;
    *(a4 + 56) = 0;
LABEL_129:
    Counter = *(a4 + 64);
    if (!Counter)
    {
      return result;
    }

    v194 = a4;
    v146 = *(a1 + 40);
    v147 = *a1;
    v148 = *(a1 + 16);
    v196 = a1;
    v228 = v147;
    v229 = v148;
    *&v230 = v146;

    LOBYTE(v222) = 0;
    v149 = specialized AnimatorState.update(_:at:environment:)(&v228, a3, v29);
    v105 = AGGraphGetCurrentAttribute();
    LODWORD(v50) = *MEMORY[0x1E698D3F8];
    if (v105 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v104) = 0;
    }

    else
    {
      LODWORD(v104) = v105;
    }

    v102 = &type metadata instantiation cache for TupleTypeDescription;
    if (v149)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v160 = *(v102 + 616);
    if (*(v160 + 16) >= 0x43uLL)
    {
      if (*(v160 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v222) = v104;
        BYTE4(v222) = v105 == v50;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      v161 = v196;
      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v152 = *(&static Signpost.animationState + 1);
    v55 = static Signpost.animationState;
    v54 = word_1ED5283E8;
    v53 = HIBYTE(word_1ED5283E8);
    v153 = byte_1ED5283EA;
    v154 = static os_signpost_type_t.end.getter();
    v222 = v55;
    v223 = v152;
    LOBYTE(v224) = v54;
    BYTE1(v224) = v53;
    BYTE2(v224) = v153;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    LODWORD(v207) = v154;
    v155 = one-time initialization token for _signpostLog;

    if (v155 != -1)
    {
      swift_once();
    }

    v52 = _signpostLog;
    v193 = Counter;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v57 = COERCE_DOUBLE(swift_allocObject());
    *(v57 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v50)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
LABEL_25:
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        LODWORD(v202) = Counter;
        Counter = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v201) = v50;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v58 = *(Counter + 16);
          LODWORD(v222) = v207;
          BYTE4(v222) = v14 == v50;
          v223 = &type metadata for UnevenRoundedRectangle._Inset;
          v224 = v4;
          v225 = v6;
          v226 = v7;
          v227 = v8;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v207 = v59;

          v14 = v58;
          LODWORD(v50) = v201;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v53, v52, v54, v57, v55, v202);

          goto LABEL_49;
        }

        v77 = v53;
        v78 = v52;
        v79 = v54;
        v80 = v57;
        v81 = v55;
        v82 = v202;
      }

      else
      {
        v77 = v53;
        v78 = v52;
        v79 = v54;
        v80 = v57;
        v81 = v55;
        v82 = Counter;
      }

      outlined consume of Animation.Function(v77, v78, v79, v80, v81, v82);
LABEL_49:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v228, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      v7 = v186;
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_50;
      }

      goto LABEL_197;
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_50:
    v87 = *(&static Signpost.animationState + 1);
    v66 = static Signpost.animationState;
    v88 = word_1ED5283E8;
    v89 = HIBYTE(word_1ED5283E8);
    v90 = byte_1ED5283EA;
    v91 = static os_signpost_type_t.event.getter();
    v222 = v66;
    v223 = v87;
    LOBYTE(v224) = v88;
    BYTE1(v224) = v89;
    BYTE2(v224) = v90;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
LABEL_86:
      a1 = v196;
      a4 = v194;
      v30 = &v228;
      goto LABEL_126;
    }

    LODWORD(v207) = v91;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v228, &v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v92 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v93 = COERCE_DOUBLE(swift_allocObject());
    *(v93 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v50)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v14) = v50;
      v94 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v95 = MEMORY[0x1E69E6870];
      *(v93 + 56) = MEMORY[0x1E69E6810];
      *(v93 + 64) = v95;
      *(v93 + 32) = Counter;
      v96 = AGGraphGetCurrentAttribute();
      if (v96 != v14)
      {
        v97 = MEMORY[0x1E69E76D0];
        *(v93 + 96) = MEMORY[0x1E69E7668];
        *(v93 + 104) = v97;
        *(v93 + 72) = v96;
        *(v93 + 136) = MEMORY[0x1E69E6158];
        *(v93 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v93 + 112) = 0x7465736E495FLL;
        *(v93 + 120) = 0xE600000000000000;
        if (v89)
        {
          LOBYTE(v208) = v207;
          v210 = v92;
          *&v211 = COERCE_DOUBLE(&dword_18D018000);
          v222 = v66;
          v223 = v87;
          LOBYTE(v224) = v88;
          v216 = "Animation: (%p) [%d] %{public}@ updated";
          v217 = 39;
          LOBYTE(v218) = 2;
          v209 = *&v93;
          v98 = v183;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          (*(v203 + 8))(v98, v206);
        }

        else
        {
          v99 = v66;
          if (v66 == 20)
          {
            v100 = 3;
          }

          else
          {
            v100 = 4;
          }

          v101 = bswap32(v66) | (4 * (v66 >> 16));
          v102 = v207;
          v50 = (v203 + 16);
          v192 = *(v203 + 16);
          v103 = v192(v204, v183, v206);
          v104 = 0;
          LOBYTE(v216) = 1;
          v202 = v100;
          v193 = v50;
          v199 = 16 * v100;
          v200 = (v50 - 8);
          v207 = v93;
          v197 = v99;
          v198 = v93 + 32;
          do
          {
            v201 = &v181;
            MEMORY[0x1EEE9AC00](v103);
            v14 = &v181 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
            v107 = v14 + 8;
            v108 = v202;
            v109 = v14 + 8;
            do
            {
              *(v109 - 1) = 0;
              *v109 = 0;
              v109 += 16;
              v108 = (v108 - 1);
            }

            while (v108);
            Counter = v198 + 40 * v104;
            v30 = v202;
            while (1)
            {
              v110 = *(v207 + 16);
              if (v104 == v110)
              {
                break;
              }

              if (v104 >= v110)
              {
                goto LABEL_186;
              }

              ++v104;
              outlined init with copy of AnyTrackedValue(Counter, &v222);
              v111 = v225;
              LODWORD(v50) = LODWORD(v226);
              __swift_project_boxed_opaque_existential_1(&v222, v225);
              *(v107 - 1) = CVarArg.kdebugValue(_:)(v101 | v102, v111);
              *v107 = v112 & 1;
              v107 += 16;
              v105 = __swift_destroy_boxed_opaque_existential_1(&v222);
              Counter += 40;
              v30 = (v30 - 1);
              if (!v30)
              {
                goto LABEL_70;
              }
            }

            LOBYTE(v216) = 0;
LABEL_70:
            v113 = v197;
            if (v197 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v14[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v14[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v14[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v113 != 20 && v14[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v114 = *v200;
            v50 = v204;
            v115 = v206;
            (*v200)(v204, v206);
            v116 = __swift_project_value_buffer(v115, static OSSignpostID.continuation);
            v103 = v192(v50, v116, v115);
          }

          while ((v216 & 1) != 0);
          v14 = type metadata accessor for AnimatableAttributeHelper;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
          v117 = v206;
          v114(v204, v206);
          v114(v183, v117);
        }

        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_92:
    v122 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v123 = COERCE_DOUBLE(swift_allocObject());
    *(v123 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v66)
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v124 = AGGraphGetAttributeGraph();
    v125 = AGGraphGetCounter();

    v126 = MEMORY[0x1E69E6870];
    *(v123 + 56) = MEMORY[0x1E69E6810];
    *(v123 + 64) = v126;
    *(v123 + 32) = v125;
    v127 = AGGraphGetCurrentAttribute();
    if (v127 == v66)
    {
      goto LABEL_204;
    }

    v128 = MEMORY[0x1E69E76D0];
    *(v123 + 96) = MEMORY[0x1E69E7668];
    *(v123 + 104) = v128;
    *(v123 + 72) = v127;
    *(v123 + 136) = MEMORY[0x1E69E6158];
    *(v123 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v123 + 112) = 0x7465736E495FLL;
    *(v123 + 120) = 0xE600000000000000;
    v30 = &v228;
    if (v89)
    {
      LOBYTE(v208) = v207;
      v210 = v122;
      *&v211 = COERCE_DOUBLE(&dword_18D018000);
      v222 = v87;
      v223 = Counter;
      LOBYTE(v224) = v14;
      v216 = "Animation: (%p) [%d] %{public}@ started";
      v217 = 39;
      LOBYTE(v218) = 2;
      v209 = *&v123;
      v129 = v182;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v130 = v187;

      (*(v203 + 8))(v129, v206);
    }

    else
    {
      v197 = v87;
      if (v87 == 20)
      {
        v131 = 3;
      }

      else
      {
        v131 = 4;
      }

      LODWORD(v14) = bswap32(v87) | (4 * (v87 >> 16));
      v102 = v207;
      v50 = (v203 + 16);
      v192 = *(v203 + 16);
      v132 = v192(v202, v182, v206);
      v104 = 0;
      LOBYTE(v216) = 1;
      v204 = v131;
      v193 = v50;
      v199 = 16 * v131;
      v200 = (v50 - 8);
      v207 = v123;
      v198 = v123 + 32;
      do
      {
        v201 = &v181;
        MEMORY[0x1EEE9AC00](v132);
        v134 = &v181 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = (v134 + 8);
        v135 = v204;
        v136 = v134 + 8;
        do
        {
          *(v136 - 1) = 0;
          *v136 = 0;
          v136 += 16;
          --v135;
        }

        while (v135);
        Counter = v198 + 40 * v104;
        v137 = v204;
        while (1)
        {
          v138 = *(v207 + 16);
          if (v104 == v138)
          {
            break;
          }

          if (v104 >= v138)
          {
            goto LABEL_187;
          }

          ++v104;
          outlined init with copy of AnyTrackedValue(Counter, &v222);
          v139 = v225;
          LODWORD(v50) = LODWORD(v226);
          __swift_project_boxed_opaque_existential_1(&v222, v225);
          *&v30[-1].f64[1] = CVarArg.kdebugValue(_:)(v14 | v102, v139);
          LOBYTE(v30->f64[0]) = v140 & 1;
          ++v30;
          v105 = __swift_destroy_boxed_opaque_existential_1(&v222);
          Counter += 40;
          if (!--v137)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v216) = 0;
LABEL_109:
        v141 = v197;
        if (v197 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v30 = &v228;
        if (v134[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v134[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v134[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v141 != 20 && v134[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v142 = *v200;
        v143 = v202;
        v50 = v206;
        (*v200)(v202, v206);
        v144 = __swift_project_value_buffer(v50, static OSSignpostID.continuation);
        v132 = v192(v143, v144, v50);
      }

      while ((v216 & 1) != 0);
      v130 = v187;

      v145 = v206;
      v142(v202, v206);
      v142(v182, v145);
    }

LABEL_125:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatableAttributeHelper);
    a4 = v194;
    *(v194 + 64) = v130;
    a1 = v196;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v185);

    a3 = v191;
LABEL_127:
    v33 = v189;
    v32 = v190;
    v34 = v188;
  }

  Counter = AGGraphGetAttributeGraph();
  v14 = AGGraphGetCounter();

  v156 = MEMORY[0x1E69E6870];
  *(v57 + 56) = MEMORY[0x1E69E6810];
  *(v57 + 64) = v156;
  *(v57 + 32) = v14;
  v157 = AGGraphGetCurrentAttribute();
  if (v157 == v50)
  {
    goto LABEL_194;
  }

  v14 = v57;
  v158 = MEMORY[0x1E69E76D0];
  *(v57 + 96) = MEMORY[0x1E69E7668];
  *(v57 + 104) = v158;
  *(v57 + 72) = v157;
  *(v57 + 136) = MEMORY[0x1E69E6158];
  *(v57 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v57 + 112) = 0x7465736E495FLL;
  *(v57 + 120) = 0xE600000000000000;
  if (v53)
  {
    LOBYTE(v208) = v207;
    v210 = v52;
    *&v211 = COERCE_DOUBLE(&dword_18D018000);
    v222 = v55;
    v223 = v152;
    LOBYTE(v224) = v54;
    v216 = "Animation: (%p) [%d] %{public}@ ended";
    v217 = 37;
    LOBYTE(v218) = 2;
    v209 = *&v57;
    v159 = v195;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v203 + 8))(v159, v206);
    goto LABEL_181;
  }

  v30 = v55;
  if (v55 == 20)
  {
    v162 = 3;
  }

  else
  {
    v162 = 4;
  }

  v102 = bswap32(v55) | (4 * WORD1(v55));
  LODWORD(v207) = v207;
  v163 = v203 + 16;
  v197 = *(v203 + 16);
  v164 = (v197)(v205, v195, v206);
  v104 = 0;
  LOBYTE(v216) = 1;
  v203 = v163;
  v201 = (16 * v162);
  v202 = (v163 - 8);
  v199 = v30;
  v200 = (v14 + 32);
  v198 = v162;
  do
  {
    v204 = &v181;
    MEMORY[0x1EEE9AC00](v164);
    v166 = &v181 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v166 + 8;
    v167 = v162;
    v168 = v166 + 8;
    do
    {
      *(v168 - 1) = 0;
      *v168 = 0;
      v168 += 16;
      --v167;
    }

    while (v167);
    Counter = &v200[5 * v104];
    while (1)
    {
      v169 = *(v14 + 2);
      if (v104 == v169)
      {
        break;
      }

      if (v104 >= v169)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v179 = v105;
        swift_once();
        v105 = v179;
LABEL_135:
        v150 = *(v102 + 616);
        if (*(v150 + 16) >= 0x43uLL)
        {
          if (*(v150 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v222) = v104;
            BYTE4(v222) = v105 == v50;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v151 = one-time initialization token for animationState;

          if (v151 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v180 = v105;
        swift_once();
        v105 = v180;
        goto LABEL_148;
      }

      ++v104;
      outlined init with copy of AnyTrackedValue(Counter, &v222);
      v30 = v14;
      v170 = v225;
      __swift_project_boxed_opaque_existential_1(&v222, v225);
      *(v50 - 1) = CVarArg.kdebugValue(_:)(v102 | v207, v170);
      *v50 = v171 & 1;
      v50 += 16;
      v105 = __swift_destroy_boxed_opaque_existential_1(&v222);
      Counter += 40;
      if (!--v162)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v216) = 0;
LABEL_166:
    v30 = v199;
    if (v199 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v162 = v198;
    if (v166[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v166[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v166[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v30 != 20 && v166[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v172 = v202->f64[0];
    v174 = v205;
    v173 = v206;
    (*&v202->f64[0])(v205, v206);
    v175 = __swift_project_value_buffer(v173, static OSSignpostID.continuation);
    v164 = (v197)(v174, v175, v173);
  }

  while ((v216 & 1) != 0);

  v176 = v206;
  (*&v172)(v205, v206);
  (*&v172)(v195, v176);
LABEL_181:

LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(v194 + 64) = 0;
  v161 = v196;
  v30 = &v228;
LABEL_183:
  v177 = v230;
  v178 = v30[1];
  *v161 = *v30;
  *(v161 + 16) = v178;
  *(v161 + 40) = v177;
  *(v161 + 48) = 1;
  return result;
}

{
  v254 = *MEMORY[0x1E69E9840];
  v219 = type metadata accessor for OSSignpostID();
  v215 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v216 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v200 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v217 = &v200 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v200 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v218 = &v200 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v209 = &v200 - v23;
  if (*(a4 + 48))
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

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  v28 = MEMORY[0x1E69E7DE0];
  if (result)
  {
    *(a1 + 56) = 1;
  }

  else if (*(a1 + 56) != 1)
  {
    goto LABEL_123;
  }

  v220 = a2;
  v214 = v14;
  v29 = *(a1 + 16);
  v30 = *(a1 + 24);
  v31 = *(a1 + 48);
  v237 = v30;
  v238 = v29;
  v236 = *&v31;
  v32 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v33 = *(v28 - 8);
  v34 = v33[1];
  v34(&v236, v28);
  v34(&v237, v28);
  result = (v34)(&v238, v28);
  if (*(a4 + 40))
  {
    goto LABEL_122;
  }

  v5 = *(a4 + 24);
  v4 = *(a4 + 32);
  v6 = *(a4 + 16);
  result = _s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_A2HQP_Tt1g5(v29, v30, v31, v6, v5, v4);
  if (result)
  {
    goto LABEL_122;
  }

  v212 = v32;
  v200 = v19;
  v202 = a3;
  v208 = a1;
  AGGraphClearUpdate();
  v35 = *(a4 + 16);
  v251 = *a4;
  v252 = v35;
  *v253 = *(a4 + 32);
  v207 = a4;
  *&v253[12] = *(a4 + 44);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v251, &v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
  v36 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v251, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v203 = v36;
  v37 = Transaction.effectiveAnimation.getter(v36);
  v204 = v37;
  if (!v37)
  {
    if (!v220)
    {

      a4 = v207;
      a1 = v208;
      goto LABEL_121;
    }

    v204 = v37;
  }

  v211 = &v200;
  v231 = v30;
  v232 = v29;
  v229 = v6;
  v230 = v31;
  v227 = v4;
  v228 = v5;
  v38 = v33[8];
  v39 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v200 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v33[2];
  v42 = MEMORY[0x1E69E7DE0];
  v43 = v41(v40, &v232, MEMORY[0x1E69E7DE0], v39);
  v210 = &v200;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v41(v40, &v229, v42, v44);
  v220 = v212[1];
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v34(v40, v42);
  v45 = (v34)(v40, v42);
  v212 = &v200;
  v46 = MEMORY[0x1EEE9AC00](v45);
  v47 = v213;
  v48 = (&v200 - v213);
  v49 = v41((&v200 - v213), &v231, v42, v46);
  v211 = &v200;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v41((&v200 - v47), &v228, v42, v50);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v34((&v200 - v47), v42);
  v51 = (v34)(v48, v42);
  v212 = &v200;
  v52 = MEMORY[0x1EEE9AC00](v51);
  v53 = v213;
  v54 = (&v200 - v213);
  v55 = v41((&v200 - v213), &v230, v42, v52);
  v211 = &v200;
  v56 = MEMORY[0x1EEE9AC00](v55);
  v41((&v200 - v53), &v227, v42, v56);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v34((&v200 - v53), v42);
  v34(v54, v42);
  v57 = v234;
  v58 = v235;
  v59 = v233;
  v34(&v233, v42);
  v34(&v234, v42);
  v34(&v235, v42);
  v60 = *&v253[16];
  v26 = *AGGraphGetValue();
  if (!v60)
  {
    v226 = COERCE_DOUBLE(&type metadata for CornerMaskingConfiguration.CornerStyle);
    type metadata accessor for CornerMaskingConfiguration.CornerStyle.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Type, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>);
    v75 = swift_dynamicCast();
    if (v75)
    {
      v76 = v225[0];
    }

    else
    {
      v76 = 0;
    }

    if (v75)
    {
      v77 = v225[1];
    }

    else
    {
      v77 = 0;
    }

    v83 = v203;

    v78 = v204;

    v80 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2YQPG_Tt4B5(v79, v83, v76, v77, v58, v57, v59, v26);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v82 = CurrentAttribute;
    LODWORD(v83) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v84 = 0;
    }

    else
    {
      v84 = CurrentAttribute;
    }

    LODWORD(v220) = v84;
    (*(*v78 + 96))(&v239);
    v86 = *&v239;
    v85 = v240;
    v88 = v241;
    v87 = v242;
    v89 = v243;
    v90 = v244;
    v223 = NAN;
    *&v224 = NAN;
    v221 = 0x7FF8000000000000;
    v222 = 1.0;
    v245 = v239;
    v246 = v240;
    v247 = *&v241;
    v248 = *&v242;
    v249 = v243;
    LOBYTE(v250) = v244;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v245, &v224, &v223, &v222, &v221);
    v5 = v223;
    v4 = *&v224;
    v91 = v221;
    v6 = v222;
    if (one-time initialization token for enabledCategories != -1)
    {
      v217 = v221;
      swift_once();
      v91 = v217;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_195;
    }

    v92 = *(static CustomEventTrace.enabledCategories + 98);
    v201 = v80;
    if (v92 == 1)
    {
      v217 = v89;
      v93 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        LODWORD(v213) = v90;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v94 = *(v93 + 16);
        LODWORD(v245) = v220;
        BYTE4(v245) = v82 == v83;
        *&v246 = COERCE_DOUBLE(&type metadata for CornerMaskingConfiguration.CornerStyle);
        v247 = v4;
        v248 = v5;
        v249 = *&v6;
        v250 = v91;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v95 = v94;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v86, v85, v88, v87, v217, v213);

        goto LABEL_83;
      }

      v101 = v86;
      v102 = v85;
      v103 = v88;
      v104 = v87;
      v105 = v217;
    }

    else
    {
      v101 = v86;
      v102 = v85;
      v103 = v88;
      v104 = v87;
      v105 = v89;
    }

    outlined consume of Animation.Function(v101, v102, v103, v104, v105, v90);
LABEL_83:
    v138 = one-time initialization token for animationState;

    if (v138 == -1)
    {
LABEL_84:
      v112 = *(&static Signpost.animationState + 1);
      v106 = *&static Signpost.animationState;
      LOBYTE(v66) = word_1ED5283E8;
      v108 = HIBYTE(word_1ED5283E8);
      v139 = byte_1ED5283EA;
      v140 = static os_signpost_type_t.begin.getter();
      v245 = *&v106;
      v246 = v112;
      LOBYTE(v247) = v66;
      BYTE1(v247) = v108;
      BYTE2(v247) = v139;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v150 = v201;

        goto LABEL_119;
      }

      LODWORD(v220) = v140;
      v141 = one-time initialization token for _signpostLog;

      if (v141 != -1)
      {
        goto LABEL_198;
      }

      goto LABEL_86;
    }

LABEL_195:
    swift_once();
    goto LABEL_84;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v251, &v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v245) = 0;
  v61 = v204;
  v201 = v60;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v204, v203, v58, v57, v59, v26);
  v62 = AGGraphGetCurrentAttribute();
  LODWORD(v28) = v62;
  LODWORD(v63) = *MEMORY[0x1E698D3F8];
  if (v62 == *MEMORY[0x1E698D3F8])
  {
    LODWORD(v64) = 0;
  }

  else
  {
    LODWORD(v64) = v62;
  }

  (*(*v61 + 96))(&v239);
  v66 = *&v239;
  v65 = *&v240;
  v67 = v241;
  v68 = v243;
  LODWORD(v61) = v244;
  v226 = NAN;
  *&v224 = 1.0;
  v225[0] = 0x7FF8000000000000;
  v223 = NAN;
  v245 = v239;
  v246 = v240;
  v247 = *&v241;
  v248 = *&v242;
  v69 = v242;
  v249 = v243;
  LOBYTE(v250) = v244;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v245, v225, &v226, &v224, &v223);
  v6 = *&v224;
  v4 = *v225;
  v5 = v226;
  v70 = *&v223;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_191;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v220 = v68;
        v71 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v72 = v28 == v63;
          LODWORD(v216) = v61;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v73 = *(v71 + 16);
          LODWORD(v245) = v64;
          BYTE4(v245) = v72;
          *&v246 = COERCE_DOUBLE(&type metadata for CornerMaskingConfiguration.CornerStyle);
          v247 = v4;
          v248 = v5;
          v249 = *&v6;
          v250 = v70;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v74 = v73;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v66, *&v65, v67, v69, v220, v216);

          goto LABEL_43;
        }

        v96 = v66;
        v97 = *&v65;
        v98 = v67;
        v99 = v69;
        v100 = v220;
      }

      else
      {
        v96 = v66;
        v97 = *&v65;
        v98 = v67;
        v99 = v69;
        v100 = v68;
      }

      outlined consume of Animation.Function(v96, v97, v98, v99, v100, v61);
LABEL_43:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v251, &v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_193;
    }

    __break(1u);
LABEL_193:
    swift_once();
LABEL_44:
    v106 = *(&static Signpost.animationState + 1);
    v83 = *&static Signpost.animationState;
    v107 = word_1ED5283E8;
    v108 = HIBYTE(word_1ED5283E8);
    v109 = byte_1ED5283EA;
    v110 = static os_signpost_type_t.event.getter();
    v245 = *&v83;
    v246 = v106;
    LOBYTE(v247) = v107;
    BYTE1(v247) = v108;
    BYTE2(v247) = v109;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v251, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v251, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
LABEL_80:
      a4 = v207;
      goto LABEL_120;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v251, &v245, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    LODWORD(v220) = v110;
    *&v111 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v112 = COERCE_DOUBLE(swift_allocObject());
    *(v112 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v63)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v66) = v63;
      v113 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v115 = MEMORY[0x1E69E6870];
      *(v112 + 56) = MEMORY[0x1E69E6810];
      *(v112 + 64) = v115;
      *(v112 + 32) = Counter;
      v116 = AGGraphGetCurrentAttribute();
      if (v116 != v66)
      {
        v117 = MEMORY[0x1E69E76D0];
        *(v112 + 96) = MEMORY[0x1E69E7668];
        *(v112 + 104) = v117;
        *(v112 + 72) = v116;
        *(v112 + 136) = MEMORY[0x1E69E6158];
        *(v112 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v112 + 112) = 0x745372656E726F43;
        *(v112 + 120) = 0xEB00000000656C79;
        if (v108)
        {
          LOBYTE(v223) = v220;
          v224 = v112;
          v225[0] = &dword_18D018000;
          v226 = *&v111;
          v245 = *&v83;
          v246 = v106;
          LOBYTE(v247) = v107;
          v239 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ updated");
          v240 = 39;
          LOBYTE(v241) = 2;
          v118 = v200;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v251, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v251, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
          (*(v215 + 8))(v118, v219);
        }

        else
        {
          v119 = v83;
          if (v83 == 20)
          {
            v120 = 3;
          }

          else
          {
            v120 = 4;
          }

          v121 = bswap32(v83) | (4 * (v83 >> 16));
          v122 = v220;
          v123 = v215 + 16;
          v205 = *(v215 + 16);
          v124 = v205(v217, v200, v219);
          v64 = 0;
          LOBYTE(v239) = 1;
          v216 = v120;
          v206 = v123;
          v212 = (16 * v120);
          v213 = (v123 - 8);
          v220 = v112;
          v210 = v119;
          v211 = (v112 + 32);
          do
          {
            v214 = &v200;
            MEMORY[0x1EEE9AC00](v124);
            v127 = &v200 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
            a1 = (v127 + 8);
            v128 = v216;
            v129 = v127 + 8;
            do
            {
              *(v129 - 1) = 0;
              *v129 = 0;
              v129 += 16;
              --v128;
            }

            while (v128);
            v28 = &v211[5 * v64];
            a4 = v216;
            while (1)
            {
              v130 = *(v220 + 2);
              if (v64 == v130)
              {
                break;
              }

              if (v64 >= v130)
              {
                goto LABEL_182;
              }

              ++v64;
              outlined init with copy of AnyTrackedValue(v28, &v245);
              v131 = *&v248;
              v123 = v249;
              __swift_project_boxed_opaque_existential_1(&v245, *&v248);
              *(a1 - 8) = CVarArg.kdebugValue(_:)(v121 | v122, v131);
              *a1 = v132 & 1;
              a1 += 16;
              v125 = __swift_destroy_boxed_opaque_existential_1(&v245);
              v28 += 40;
              if (!--a4)
              {
                goto LABEL_64;
              }
            }

            LOBYTE(v239) = 0;
LABEL_64:
            v133 = v210;
            if (v210 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v127[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v127[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v127[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v133 != 20 && v127[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v134 = *v213;
            v123 = v217;
            v135 = v219;
            (*v213)(v217, v219);
            v136 = __swift_project_value_buffer(v135, static OSSignpostID.continuation);
            v124 = v205(v123, v136, v135);
          }

          while ((LOBYTE(v239) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v251, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v251, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
          v137 = v219;
          v134(v217, v219);
          v134(v200, v137);
        }

        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_198:
    swift_once();
LABEL_86:
    v142 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v143 = COERCE_DOUBLE(swift_allocObject());
    *(v143 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v83)
    {
      __break(1u);
LABEL_200:
      __break(1u);
    }

    v144 = AGGraphGetAttributeGraph();
    v145 = AGGraphGetCounter();

    v146 = MEMORY[0x1E69E6870];
    *(v143 + 56) = MEMORY[0x1E69E6810];
    *(v143 + 64) = v146;
    *(v143 + 32) = v145;
    v147 = AGGraphGetCurrentAttribute();
    if (v147 == v83)
    {
      goto LABEL_200;
    }

    v148 = MEMORY[0x1E69E76D0];
    *(v143 + 96) = MEMORY[0x1E69E7668];
    *(v143 + 104) = v148;
    *(v143 + 72) = v147;
    *(v143 + 136) = MEMORY[0x1E69E6158];
    *(v143 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v143 + 112) = 0x745372656E726F43;
    *(v143 + 120) = 0xEB00000000656C79;
    if (v108)
    {
      LOBYTE(v221) = v220;
      v223 = v142;
      *&v224 = COERCE_DOUBLE(&dword_18D018000);
      v245 = *&v106;
      v246 = v112;
      LOBYTE(v247) = v66;
      v239 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ started");
      v240 = 39;
      LOBYTE(v241) = 2;
      v222 = *&v143;
      v149 = v214;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v150 = v201;

      (*(v215 + 8))(v149, v219);
    }

    else
    {
      v151 = v106;
      v152 = v106 == 20 ? 3 : 4;
      v127 = (bswap32(v106) | (4 * WORD1(v106)));
      v122 = v220;
      v123 = v215 + 16;
      v200 = *(v215 + 16);
      v153 = v200(v216, v214, v219);
      v64 = 0;
      LOBYTE(v239) = 1;
      v217 = v152;
      v205 = v123;
      v206 = v151;
      v211 = (16 * v152);
      v212 = (v123 - 8);
      v220 = v143;
      v210 = (v143 + 32);
      do
      {
        v213 = &v200;
        MEMORY[0x1EEE9AC00](v153);
        v155 = &v200 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = (v155 + 8);
        v156 = v217;
        v157 = v155 + 8;
        do
        {
          *(v157 - 1) = 0;
          *v157 = 0;
          v157 += 16;
          --v156;
        }

        while (v156);
        v28 = v210 + 40 * v64;
        a1 = v217;
        while (1)
        {
          v158 = *(v220 + 2);
          if (v64 == v158)
          {
            break;
          }

          if (v64 >= v158)
          {
            goto LABEL_183;
          }

          ++v64;
          outlined init with copy of AnyTrackedValue(v28, &v245);
          v159 = *&v248;
          v123 = v249;
          __swift_project_boxed_opaque_existential_1(&v245, *&v248);
          *(a4 - 8) = CVarArg.kdebugValue(_:)(v127 | v122, v159);
          *a4 = v160 & 1;
          a4 += 16;
          v125 = __swift_destroy_boxed_opaque_existential_1(&v245);
          v28 += 40;
          if (!--a1)
          {
            goto LABEL_103;
          }
        }

        LOBYTE(v239) = 0;
LABEL_103:
        v161 = v206;
        if (v206 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v155[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v155[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v155[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v161 != 20 && v155[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v162 = *v212;
        v163 = v216;
        v123 = v219;
        (*v212)(v216, v219);
        v164 = __swift_project_value_buffer(v123, static OSSignpostID.continuation);
        v153 = v200(v163, v164, v123);
      }

      while ((LOBYTE(v239) & 1) != 0);
      v150 = v201;

      v165 = v219;
      v162(v216, v219);
      v162(v214, v165);
    }

LABEL_119:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v251, &lazy cache variable for type metadata for AnimatableAttributeHelper<CornerMaskingConfiguration.CornerStyle>, lazy protocol witness table accessor for type CornerMaskingConfiguration.CornerStyle and conformance CornerMaskingConfiguration.CornerStyle, &type metadata for CornerMaskingConfiguration.CornerStyle, type metadata accessor for AnimatableAttributeHelper);
    a4 = v207;
    *(v207 + 48) = v150;
LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v203);

    a1 = v208;
LABEL_121:
    a3 = v202;
    v28 = MEMORY[0x1E69E7DE0];
LABEL_122:
    *(a4 + 16) = v29;
    *(a4 + 24) = v30;
    *(a4 + 32) = v31;
    *(a4 + 40) = 0;
LABEL_123:
    v127 = *(a4 + 48);
    if (!v127)
    {
      return result;
    }

    v30 = *(a1 + 24);
    v31 = *(a1 + 48);
    v225[0] = *(a1 + 16);
    v29 = *v225;
    v237 = v31;
    v238 = v30;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v166 = *(*(v28 - 8) + 8);

    v166(&v237, v28);
    v166(&v238, v28);
    v166(v225, v28);
    v245 = v29;
    *&v246 = v30;
    v247 = v31;
    LOBYTE(v251) = 0;
    v167 = specialized AnimatorState.update(_:at:environment:)(&v245, a3, v26);
    v125 = AGGraphGetCurrentAttribute();
    LODWORD(v64) = *MEMORY[0x1E698D3F8];
    if (v125 == *MEMORY[0x1E698D3F8])
    {
      v122 = 0;
    }

    else
    {
      v122 = v125;
    }

    v123 = &type metadata instantiation cache for TupleTypeDescription;
    if (v167)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_184;
      }

      goto LABEL_129;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_186;
    }

LABEL_142:
    v178 = *(v123 + 616);
    if (*(v178 + 16) >= 0x43uLL)
    {
      if (*(v178 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v251) = v122;
        BYTE4(v251) = v125 == v64;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_177;
    }

    __break(1u);
LABEL_188:
    swift_once();
LABEL_134:
    v63 = *(&static Signpost.animationState + 1);
    v69 = static Signpost.animationState;
    v68 = word_1ED5283E8;
    v66 = HIBYTE(word_1ED5283E8);
    v170 = byte_1ED5283EA;
    v171 = static os_signpost_type_t.end.getter();
    v251 = __PAIR128__(v63, v69);
    LOBYTE(v252) = v68;
    BYTE1(v252) = v66;
    BYTE2(v252) = v170;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    LODWORD(v220) = v171;
    v172 = one-time initialization token for _signpostLog;
    LODWORD(v61) = v206;

    if (v172 != -1)
    {
      swift_once();
    }

    v65 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v67 = COERCE_DOUBLE(swift_allocObject());
    *(v67 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v64)
    {
      break;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    v220 = v70;
    swift_once();
    v70 = v220;
  }

  v61 = AGGraphGetAttributeGraph();
  v28 = AGGraphGetCounter();

  v173 = MEMORY[0x1E69E6870];
  *(v67 + 56) = MEMORY[0x1E69E6810];
  *(v67 + 64) = v173;
  *(v67 + 32) = v28;
  v174 = AGGraphGetCurrentAttribute();
  if (v174 == v64)
  {
    goto LABEL_190;
  }

  v175 = v67;
  v176 = MEMORY[0x1E69E76D0];
  *(v67 + 96) = MEMORY[0x1E69E7668];
  *(v67 + 104) = v176;
  *(v67 + 72) = v174;
  *(v67 + 136) = MEMORY[0x1E69E6158];
  *(v67 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v67 + 112) = 0x745372656E726F43;
  *(v67 + 120) = 0xEB00000000656C79;
  if (v66)
  {
    LOBYTE(v233) = v220;
    v235 = v65;
    v236 = &dword_18D018000;
    *&v251 = v69;
    *(&v251 + 1) = v63;
    LOBYTE(v252) = v68;
    v239 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ ended");
    v240 = 37;
    LOBYTE(v241) = 2;
    v234 = *&v67;
    v177 = v209;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v215 + 8))(v177, v219);
    goto LABEL_175;
  }

  v179 = v69;
  if (v69 == 20)
  {
    v123 = 3;
  }

  else
  {
    v123 = 4;
  }

  v122 = bswap32(v69) | (4 * WORD1(v69));
  a1 = v220;
  v180 = v215 + 16;
  v210 = *(v215 + 16);
  v181 = v210(v218, v209, v219);
  v64 = 0;
  LOBYTE(v239) = 1;
  v217 = v123;
  v215 = v180;
  v213 = (16 * v123);
  v214 = (v180 - 8);
  v220 = v175;
  v211 = v179;
  v212 = (v175 + 32);
  do
  {
    v216 = &v200;
    MEMORY[0x1EEE9AC00](v181);
    v127 = &v200 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
    v183 = v127 + 8;
    v184 = v217;
    v185 = v127 + 8;
    do
    {
      *(v185 - 1) = 0;
      *v185 = 0;
      v185 += 16;
      --v184;
    }

    while (v184);
    v28 = &v212[5 * v64];
    a4 = v217;
    while (1)
    {
      v186 = *(v220 + 2);
      if (v64 == v186)
      {
        break;
      }

      if (v64 >= v186)
      {
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        v198 = v125;
        swift_once();
        v125 = v198;
LABEL_129:
        v168 = *(v123 + 616);
        if (*(v168 + 16) >= 0x43uLL)
        {
          if (*(v168 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v251) = v122;
            BYTE4(v251) = v125 == v64;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v207 = a4;
          v208 = a1;
          v169 = one-time initialization token for animationState;
          v206 = v127;

          if (v169 != -1)
          {
            goto LABEL_188;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_186:
        v199 = v125;
        swift_once();
        v125 = v199;
        goto LABEL_142;
      }

      ++v64;
      outlined init with copy of AnyTrackedValue(v28, &v251);
      v187 = *(&v252 + 1);
      v123 = *v253;
      __swift_project_boxed_opaque_existential_1(&v251, *(&v252 + 1));
      *(v183 - 1) = CVarArg.kdebugValue(_:)(v122 | a1, v187);
      *v183 = v188 & 1;
      v183 += 16;
      v125 = __swift_destroy_boxed_opaque_existential_1(&v251);
      v28 += 40;
      if (!--a4)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v239) = 0;
LABEL_160:
    v189 = v211;
    if (v211 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v127[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v127[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v127[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v189 != 20 && v127[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v190 = *v214;
    v191 = v218;
    v123 = v219;
    (*v214)(v218, v219);
    v192 = __swift_project_value_buffer(v123, static OSSignpostID.continuation);
    v181 = v210(v191, v192, v123);
  }

  while ((LOBYTE(v239) & 1) != 0);

  v193 = v219;
  v190(v218, v219);
  v190(v209, v193);
LABEL_175:

LABEL_176:
  specialized AnimatorState.removeListeners()();

  a1 = v208;
  *(v207 + 48) = 0;
LABEL_177:
  v194 = *&v245;
  v195 = *&v246;
  v196 = v247;
  *(a1 + 16) = v245;
  *(a1 + 24) = v195;
  *(a1 + 48) = v196;
  v197 = v194;
  if (v195 == 1.0)
  {
    v197 = 0;
  }

  *a1 = v197;
  *(a1 + 8) = v195 == 1.0;
  *(a1 + 32) = v196;
  *(a1 + 40) = 0;
  *(a1 + 56) = 1;
  return result;
}

{
  v271 = *MEMORY[0x1E69E9840];
  v199 = type metadata accessor for OSSignpostID();
  v195 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v9 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v179 - v11;
  MEMORY[0x1EEE9AC00](v13);
  Counter = (&v179 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v179 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v198 = &v179 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v188 = &v179 - v22;
  if (*(a4 + 152))
  {
    Value = AGGraphGetValue();
    if (v24)
    {
      v25 = *Value;
    }

    else
    {
      v25 = -INFINITY;
    }
  }

  else
  {
    v25 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 256) = 1;
  }

  else if (*(a1 + 256) != 1)
  {
    goto LABEL_119;
  }

  RoundedRectangularShapeCorners.animatableData.getter(&v214);
  v27 = *(a4 + 96);
  v28 = *(a4 + 128);
  v251 = *(a4 + 112);
  v252 = v28;
  v29 = *(a4 + 32);
  v30 = *(a4 + 64);
  v247 = *(a4 + 48);
  v248 = v30;
  v32 = *(a4 + 64);
  v31 = *(a4 + 80);
  v33 = v31;
  v250 = *(a4 + 96);
  v249 = v31;
  v34 = *(a4 + 32);
  v245 = *(a4 + 16);
  v246 = v34;
  v35 = *(a4 + 128);
  v260 = v251;
  v261 = v35;
  v256 = v247;
  v257 = v32;
  v259 = v27;
  v258 = v33;
  v253 = *(a4 + 144);
  v262 = *(a4 + 144);
  v255 = v29;
  v254 = v245;
  if (_s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOg(&v254) == 1)
  {
    goto LABEL_118;
  }

  v213[4] = v249;
  v213[5] = v250;
  v213[6] = v251;
  v213[7] = v252;
  v213[0] = v245;
  v213[1] = v246;
  v213[2] = v247;
  v213[3] = v248;
  if (specialized static RoundedRectangularShapeCorners.AnimatableData.== infix(_:_:)(&v214, v213))
  {
    goto LABEL_118;
  }

  v197 = v9;
  v194 = Counter;
  v179 = v12;
  v180 = v18;
  v183 = a3;
  AGGraphClearUpdate();
  v36 = *(a4 + 144);
  v242 = *(a4 + 128);
  v243 = v36;
  v244 = *(a4 + 160);
  v37 = *(a4 + 80);
  v238 = *(a4 + 64);
  v239 = v37;
  v38 = *(a4 + 112);
  v240 = *(a4 + 96);
  v241 = v38;
  v39 = *(a4 + 16);
  v234 = *a4;
  v235 = v39;
  v40 = *(a4 + 48);
  v236 = *(a4 + 32);
  v237 = v40;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v234, &v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
  Counter = &type metadata for RoundedRectangularShapeCorners;
  v41 = *AGGraphGetValue();

  LOBYTE(v9) = v41;
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v184 = Transaction.effectiveAnimation.getter(v41);
  if (!v184)
  {
    a3 = v183;
    if (!a2)
    {

      goto LABEL_118;
    }

    v184 = a2;
  }

  v189 = a1;
  v209 = v218;
  v210 = v219;
  v211 = v220;
  v212 = v221;
  v205 = v214;
  v206 = v215;
  v207 = v216;
  v208 = v217;
  v230 = v218;
  v231 = v219;
  v232 = v220;
  v233 = v221;
  v226 = v214;
  v227 = v215;
  v42 = *(&v243 + 1);
  v228 = v216;
  v229 = v217;
  static RoundedRectangularShapeCorners.AnimatableData.- infix(_:_:)(&v205, &v226, v213);
  v25 = *AGGraphGetValue();
  v187 = a4;
  v181 = v41;
  if (!v42)
  {
    v230 = v209;
    v231 = v210;
    v232 = v211;
    v233 = v212;
    v226 = v205;
    v227 = v206;
    v228 = v207;
    v229 = v208;
    *&v222 = &type metadata for RoundedRectangularShapeCorners;
    type metadata accessor for RoundedRectangularShapeCorners.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == RoundedRectangularShapeCorners.AnimatableData>.Type);
    v70 = swift_dynamicCast();
    if (v70)
    {
      v71 = v263;
    }

    else
    {
      v71 = 0;
    }

    if (v70)
    {
      v72 = *(&v263 + 1);
    }

    else
    {
      v72 = 0;
    }

    v73 = v184;

    v75 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA30RoundedRectangularShapeCornersV14AnimatableDataV_Tt4B5(v74, &v226, v41, v71, v72, v25);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v77 = CurrentAttribute;
    LODWORD(v200) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v200)
    {
      v78 = 0;
    }

    else
    {
      v78 = CurrentAttribute;
    }

    LODWORD(v194) = v78;
    (*(*v73 + 96))(&v222);
    v79 = v222;
    v80 = v224;
    v203 = NAN;
    v204 = 0x7FF8000000000000;
    v201 = NAN;
    v202 = 1.0;
    v263 = v222;
    v81 = v223;
    v264 = v223;
    v82 = *(&v223 + 1);
    *&v265 = v224;
    LODWORD(v196) = v225;
    BYTE8(v265) = v225;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v263, &v204, &v203, &v202, &v201);
    v83 = v203;
    v84 = v204;
    v85 = v201;
    v86 = v202;
    if (one-time initialization token for enabledCategories != -1)
    {
      *&v192 = v202;
      v193 = v204;
      v190 = v201;
      v191 = v203;
      swift_once();
      v85 = v190;
      v83 = v191;
      v86 = *&v192;
      v84 = v193;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v87 = *(static CustomEventTrace.enabledCategories + 98);
      v182 = v75;
      if (v87 == 1 && (v88 = static CustomEventTrace.recorder) != 0)
      {
        v89 = v77 == v200;
        v193 = v80;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v90 = *(v88 + 16);
        LODWORD(v263) = v194;
        BYTE4(v263) = v89;
        *(&v263 + 1) = &type metadata for RoundedRectangularShapeCorners;
        *&v264 = v84;
        *(&v264 + 1) = v83;
        *&v265 = v86;
        *(&v265 + 1) = v85;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v91 = v90;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v79, *(&v79 + 1), v81, v82, v193, v196);
      }

      else
      {
        outlined consume of Animation.Function(v79, *(&v79 + 1), v81, v82, v80, v196);
      }

      v111 = one-time initialization token for animationState;

      if (v111 == -1)
      {
        goto LABEL_81;
      }
    }

    swift_once();
LABEL_81:
    Counter = *(&static Signpost.animationState + 1);
    *&v60 = static Signpost.animationState;
    LOBYTE(v9) = word_1ED5283E8;
    LOBYTE(v58) = HIBYTE(word_1ED5283E8);
    v112 = byte_1ED5283EA;
    LODWORD(p_Description) = static os_signpost_type_t.begin.getter();
    v263 = __PAIR128__(Counter, *&v60);
    LOBYTE(v264) = v9;
    BYTE1(v264) = v58;
    BYTE2(v264) = v112;
    v113 = Signpost.isEnabled.getter();
    LODWORD(v59) = v200;
    if ((v113 & 1) == 0)
    {
      Counter = v182;

      goto LABEL_116;
    }

    v114 = one-time initialization token for _signpostLog;

    if (v114 != -1)
    {
      goto LABEL_192;
    }

    goto LABEL_83;
  }

  v267 = v209;
  v268 = v210;
  v269 = v211;
  v270 = v212;
  v263 = v205;
  v264 = v206;
  v265 = v207;
  v266 = v208;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v234, &v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v226) = 0;
  v43 = v184;
  v182 = v42;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v184, &v263, v41, v25);
  v44 = AGGraphGetCurrentAttribute();
  v45 = v44;
  LODWORD(p_Description) = *MEMORY[0x1E698D3F8];
  if (v44 == *MEMORY[0x1E698D3F8])
  {
    v47 = 0;
  }

  else
  {
    v47 = v44;
  }

  LODWORD(v197) = v47;
  (*(*v43 + 96))(&v222);
  Counter = *(&v222 + 1);
  v48 = v222;
  v49 = v223;
  v203 = NAN;
  v204 = 0x7FF8000000000000;
  v201 = NAN;
  v202 = 1.0;
  v226 = v222;
  v50 = *(&v223 + 1);
  v227 = v223;
  v51 = v224;
  *&v228 = v224;
  LODWORD(v200) = v225;
  BYTE8(v228) = v225;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v226, &v204, &v203, &v202, &v201);
  v52 = v203;
  v53 = v204;
  v54 = v201;
  v55 = v202;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_185;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_187:
      swift_once();
      goto LABEL_25;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v9 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v196) = p_Description;
      v56 = *(v9 + 16);
      LODWORD(v226) = v197;
      BYTE4(v226) = v45 == p_Description;
      *(&v226 + 1) = &type metadata for RoundedRectangularShapeCorners;
      *&v227 = v53;
      *(&v227 + 1) = v52;
      *&v228 = v55;
      *(&v228 + 1) = v54;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      v197 = v57;

      p_Description = v56;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v48, Counter, v49, v50, v51, v200);

      LODWORD(p_Description) = v196;
    }

    else
    {
      outlined consume of Animation.Function(v48, Counter, v49, v50, v51, v200);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v234, &v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
    Counter = v182;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_187;
    }

LABEL_25:
    v59 = *(&static Signpost.animationState + 1);
    v58 = static Signpost.animationState;
    *&v60 = word_1ED5283E8;
    v61 = HIBYTE(word_1ED5283E8);
    v62 = byte_1ED5283EA;
    v63 = static os_signpost_type_t.event.getter();
    v226 = __PAIR128__(v59, v58);
    LOBYTE(v227) = LOBYTE(v60);
    BYTE1(v227) = v61;
    BYTE2(v227) = v62;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v200) = v63;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v234, &v226, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for _signpostLog != -1)
      {
        swift_once();
      }

      v64 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == p_Description)
      {
        __break(1u);
      }

      else
      {
        LODWORD(v9) = p_Description;
        p_Description = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v66 = MEMORY[0x1E69E6870];
        *(v65 + 56) = MEMORY[0x1E69E6810];
        *(v65 + 64) = v66;
        *(v65 + 32) = Counter;
        v67 = AGGraphGetCurrentAttribute();
        if (v67 != v9)
        {
          p_Description = v65;
          v68 = MEMORY[0x1E69E76D0];
          *(v65 + 96) = MEMORY[0x1E69E7668];
          *(v65 + 104) = v68;
          *(v65 + 72) = v67;
          *(v65 + 136) = MEMORY[0x1E69E6158];
          *(v65 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(v65 + 112) = 0xD00000000000001ELL;
          *(v65 + 120) = 0x800000018DD7ECF0;
          if (v61)
          {
            LOBYTE(v201) = v200;
            v203 = *&v64;
            v204 = &dword_18D018000;
            *&v226 = v58;
            *(&v226 + 1) = v59;
            LOBYTE(v227) = LOBYTE(v60);
            *&v222 = "Animation: (%p) [%d] %{public}@ updated";
            *(&v222 + 1) = 39;
            LOBYTE(v223) = 2;
            v202 = *&v65;
            v69 = v180;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
            (*(v195 + 8))(v69, v199);
          }

          else
          {
            *&v60 = v58;
            if (v58 == 20)
            {
              v92 = 3;
            }

            else
            {
              v92 = 4;
            }

            v93 = bswap32(v58) | (4 * WORD1(v58));
            LODWORD(v200) = v200;
            v94 = (v195 + 16);
            v185 = *(v195 + 16);
            v95 = v185(v194, v180, v199);
            v51 = 0;
            LOBYTE(v222) = 1;
            v197 = v92;
            v186 = v94;
            v192 = 16 * v92;
            v193 = (v94 - 1);
            v190 = v60;
            *&v191 = p_Description + 4;
            do
            {
              v196 = &v179;
              MEMORY[0x1EEE9AC00](v95);
              v98 = &v179 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
              v99 = v98 + 8;
              v100 = v197;
              v101 = v98 + 8;
              do
              {
                *(v101 - 1) = 0;
                *v101 = 0;
                v101 += 16;
                --v100;
              }

              while (v100);
              Counter = (*&v191 + 40 * v51);
              v102 = v197;
              while (1)
              {
                v103 = p_Description[2];
                if (v51 == v103)
                {
                  break;
                }

                if (v51 >= v103)
                {
                  goto LABEL_176;
                }

                ++v51;
                outlined init with copy of AnyTrackedValue(Counter, &v226);
                v104 = *(&v227 + 1);
                LODWORD(v60) = p_Description;
                __swift_project_boxed_opaque_existential_1(&v226, *(&v227 + 1));
                *(v99 - 1) = CVarArg.kdebugValue(_:)(v93 | v200, v104);
                *v99 = v105 & 1;
                v99 += 16;
                v96 = __swift_destroy_boxed_opaque_existential_1(&v226);
                Counter = (Counter + 40);
                if (!--v102)
                {
                  goto LABEL_62;
                }
              }

              LOBYTE(v222) = 0;
LABEL_62:
              v60 = v190;
              if (*&v190 == 20)
              {
                v106 = v194;
                OSSignpostID.rawValue.getter();
                kdebug_trace();
              }

              else
              {
                kdebug_trace();
                v106 = v194;
              }

              if (v98[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v98[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v98[40] == 1)
              {
                kdebug_trace_string();
              }

              if (*&v60 != 20 && v98[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v107 = *v193;
              v108 = v199;
              (*v193)(v106, v199);
              v109 = __swift_project_value_buffer(v108, static OSSignpostID.continuation);
              v95 = v185(v106, v109, v108);
            }

            while ((v222 & 1) != 0);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
            outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
            v110 = v199;
            v107(v106, v199);
            v107(v180, v110);
          }

          a4 = v187;
          Counter = v182;
          goto LABEL_117;
        }
      }

      __break(1u);
LABEL_192:
      swift_once();
LABEL_83:
      LODWORD(v196) = p_Description;
      v115 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v59)
      {
        __break(1u);
LABEL_194:
        __break(1u);
      }

      v117 = AGGraphGetAttributeGraph();
      v118 = AGGraphGetCounter();

      v119 = MEMORY[0x1E69E6870];
      *(v116 + 56) = MEMORY[0x1E69E6810];
      *(v116 + 64) = v119;
      *(v116 + 32) = v118;
      v120 = AGGraphGetCurrentAttribute();
      if (v120 == v59)
      {
        goto LABEL_194;
      }

      v121 = MEMORY[0x1E69E76D0];
      *(v116 + 96) = MEMORY[0x1E69E7668];
      *(v116 + 104) = v121;
      *(v116 + 72) = v120;
      *(v116 + 136) = MEMORY[0x1E69E6158];
      *(v116 + 144) = lazy protocol witness table accessor for type String and conformance String();
      *(v116 + 112) = 0xD00000000000001ELL;
      *(v116 + 120) = 0x800000018DD7ECF0;
      v122 = v116;
      if (v58)
      {
        LOBYTE(v201) = v196;
        v203 = *&v115;
        v204 = &dword_18D018000;
        *&v263 = v60;
        *(&v263 + 1) = Counter;
        LOBYTE(v264) = v9;
        *&v222 = "Animation: (%p) [%d] %{public}@ started";
        *(&v222 + 1) = 39;
        LOBYTE(v223) = 2;
        v202 = *&v116;
        v123 = v179;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        Counter = v182;

        (*(v195 + 8))(v123, v199);
      }

      else
      {
        *&v124 = LOBYTE(v60);
        v125 = LOBYTE(v60) == 20 ? 3 : 4;
        v126 = bswap32(LOWORD(v60)) | (4 * HIWORD(LODWORD(v60)));
        LODWORD(v60) = v196;
        v127 = (v195 + 16);
        v185 = *(v195 + 16);
        v128 = v185(v197, v179, v199);
        v129 = v122;
        v51 = 0;
        LOBYTE(v222) = 1;
        v186 = v127;
        v193 = 16 * v125;
        v194 = (v127 - 1);
        v200 = v129;
        v191 = *&v125;
        v192 = v129 + 32;
        v190 = v124;
        do
        {
          v196 = &v179;
          MEMORY[0x1EEE9AC00](v128);
          Counter = (&v179 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
          p_Description = &Counter->Description;
          v131 = v125;
          v132 = &Counter->Description;
          do
          {
            *(v132 - 1) = 0;
            *v132 = 0;
            v132 += 2;
            --v131;
          }

          while (v131);
          v93 = v192 + 40 * v51;
          while (1)
          {
            v133 = *(v200 + 16);
            if (v51 == v133)
            {
              break;
            }

            if (v51 >= v133)
            {
              goto LABEL_177;
            }

            ++v51;
            outlined init with copy of AnyTrackedValue(v93, &v263);
            v134 = *(&v264 + 1);
            __swift_project_boxed_opaque_existential_1(&v263, *(&v264 + 1));
            *(p_Description - 1) = CVarArg.kdebugValue(_:)(v126 | LODWORD(v60), v134);
            *p_Description = v135 & 1;
            p_Description += 2;
            v96 = __swift_destroy_boxed_opaque_existential_1(&v263);
            v93 += 40;
            --v125;
            if (*&v125 == 0.0)
            {
              goto LABEL_100;
            }
          }

          LOBYTE(v222) = 0;
LABEL_100:
          v136 = v190;
          if (*&v190 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          *&v125 = v191;
          if (LOBYTE(Counter->Description) == 1)
          {
            kdebug_trace_string();
          }

          if (LOBYTE(Counter[1].Description) == 1)
          {
            kdebug_trace_string();
          }

          if (LOBYTE(Counter[2].Description) == 1)
          {
            kdebug_trace_string();
          }

          if (*&v136 != 20 && LOBYTE(Counter[3].Description) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          Kind = v194->Kind;
          v138 = v197;
          v139 = v199;
          (v194->Kind)(v197, v199);
          v140 = __swift_project_value_buffer(v139, static OSSignpostID.continuation);
          v128 = v185(v138, v140, v139);
        }

        while ((v222 & 1) != 0);
        Counter = v182;

        v141 = v199;
        Kind(v197, v199);
        Kind(v179, v141);
      }

LABEL_116:
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
      a4 = v187;
      *(v187 + 152) = Counter;
    }

    else
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v234, &lazy cache variable for type metadata for AnimatableAttributeHelper<RoundedRectangularShapeCorners>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners and conformance RoundedRectangularShapeCorners, &type metadata for RoundedRectangularShapeCorners, type metadata accessor for AnimatableAttributeHelper);
      a4 = v187;
    }

LABEL_117:
    specialized AnimatorState.addListeners(transaction:)(v181);

    a1 = v189;
    a3 = v183;
LABEL_118:
    v238 = v218;
    v239 = v219;
    v240 = v220;
    v241 = v221;
    v234 = v214;
    v235 = v215;
    v236 = v216;
    v237 = v217;
    result = _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOi_(&v234);
    v142 = v241;
    *(a4 + 112) = v240;
    *(a4 + 128) = v142;
    *(a4 + 144) = v242;
    v143 = v237;
    *(a4 + 48) = v236;
    *(a4 + 64) = v143;
    v144 = v239;
    *(a4 + 80) = v238;
    *(a4 + 96) = v144;
    v145 = v235;
    *(a4 + 16) = v234;
    *(a4 + 32) = v145;
LABEL_119:
    p_Description = *(a4 + 152);
    if (!p_Description)
    {
      return result;
    }

    v187 = a4;
    v189 = a1;
    RoundedRectangularShapeCorners.animatableData.getter(&v234);

    LOBYTE(v254) = 0;
    v146 = specialized AnimatorState.update(_:at:environment:)(&v234, a3, v25);
    v96 = AGGraphGetCurrentAttribute();
    v51 = *MEMORY[0x1E698D3F8];
    if (v96 == v51)
    {
      LODWORD(v60) = 0;
    }

    else
    {
      LODWORD(v60) = v96;
    }

    v93 = &type metadata instantiation cache for TupleTypeDescription;
    if (v146)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_178;
      }

      goto LABEL_125;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_180;
    }

LABEL_138:
    v157 = *(v93 + 616);
    if (*(v157 + 16) >= 0x43uLL)
    {
      if (*(v157 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v254) = LODWORD(v60);
        BYTE4(v254) = v96 == v51;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_173;
    }

    __break(1u);
LABEL_182:
    swift_once();
LABEL_130:
    v49 = *(&static Signpost.animationState + 1);
    v149 = static Signpost.animationState;
    v45 = word_1ED5283E8;
    LOBYTE(v9) = HIBYTE(word_1ED5283E8);
    v150 = byte_1ED5283EA;
    v151 = static os_signpost_type_t.end.getter();
    v254 = __PAIR128__(v49, v149);
    LOBYTE(v255) = v45;
    BYTE1(v255) = v9;
    BYTE2(v255) = v150;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_172;
    }

    LODWORD(v200) = v151;
    v152 = one-time initialization token for _signpostLog;

    if (v152 != -1)
    {
      swift_once();
    }

    v48 = _signpostLog;
    v186 = p_Description;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v51)
    {
      break;
    }

    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    v196 = v53;
    *&v192 = v52;
    *&v193 = v55;
    v191 = v54;
    swift_once();
    v54 = v191;
    v52 = *&v192;
    v55 = *&v193;
    v53 = v196;
  }

  p_Description = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v153 = MEMORY[0x1E69E6870];
  *(v50 + 56) = MEMORY[0x1E69E6810];
  *(v50 + 64) = v153;
  *(v50 + 32) = Counter;
  v154 = AGGraphGetCurrentAttribute();
  if (v154 == v51)
  {
    goto LABEL_184;
  }

  v155 = MEMORY[0x1E69E76D0];
  *(v50 + 96) = MEMORY[0x1E69E7668];
  *(v50 + 104) = v155;
  *(v50 + 72) = v154;
  *(v50 + 136) = MEMORY[0x1E69E6158];
  *(v50 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v50 + 112) = 0xD00000000000001ELL;
  *(v50 + 120) = 0x800000018DD7ECF0;
  if (v9)
  {
    LOBYTE(v204) = v200;
    *&v213[0] = &dword_18D018000;
    *&v205 = v48;
    *&v254 = v149;
    *(&v254 + 1) = v49;
    LOBYTE(v255) = v45;
    *&v214 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v214 + 1) = 37;
    LOBYTE(v215) = 2;
    *&v222 = v50;
    v156 = v188;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v195 + 8))(v156, v199);
    goto LABEL_171;
  }

  *&v158 = v149;
  if (v149 == 20)
  {
    v159 = 3;
  }

  else
  {
    v159 = 4;
  }

  v160 = bswap32(v149) | (4 * WORD1(v149));
  v51 = v200;
  v161 = v195 + 16;
  v190 = *(v195 + 16);
  v162 = (*&v190)(v198, v188, v199);
  v60 = 0.0;
  LOBYTE(v214) = 1;
  v197 = v159;
  v195 = v161;
  v193 = 16 * v159;
  v194 = (v161 - 8);
  v200 = v50;
  v191 = v158;
  v192 = v50 + 32;
  do
  {
    v196 = &v179;
    MEMORY[0x1EEE9AC00](v162);
    Counter = (&v179 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0));
    v93 = &Counter->Description;
    v164 = v197;
    v165 = &Counter->Description;
    do
    {
      *(v165 - 1) = 0;
      *v165 = 0;
      v165 += 2;
      --v164;
    }

    while (v164);
    v166 = v192 + 40 * *&v60;
    v167 = v197;
    while (1)
    {
      v168 = *(v200 + 16);
      if (*&v60 == v168)
      {
        break;
      }

      if (*&v60 >= v168)
      {
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        v177 = v96;
        swift_once();
        v96 = v177;
LABEL_125:
        v147 = *(v93 + 616);
        if (*(v147 + 16) >= 0x43uLL)
        {
          if (*(v147 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v254) = LODWORD(v60);
            BYTE4(v254) = v96 == v51;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v148 = one-time initialization token for animationState;

          if (v148 != -1)
          {
            goto LABEL_182;
          }

          goto LABEL_130;
        }

        __break(1u);
LABEL_180:
        v178 = v96;
        swift_once();
        v96 = v178;
        goto LABEL_138;
      }

      ++*&v60;
      outlined init with copy of AnyTrackedValue(v166, &v254);
      v169 = *(&v255 + 1);
      p_Description = v256;
      __swift_project_boxed_opaque_existential_1(&v254, *(&v255 + 1));
      *(v93 - 8) = CVarArg.kdebugValue(_:)(v160 | v51, v169);
      *v93 = v170 & 1;
      v93 += 16;
      v96 = __swift_destroy_boxed_opaque_existential_1(&v254);
      v166 += 40;
      if (!--v167)
      {
        goto LABEL_156;
      }
    }

    LOBYTE(v214) = 0;
LABEL_156:
    v171 = v191;
    if (*&v191 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (LOBYTE(Counter->Description) == 1)
    {
      kdebug_trace_string();
    }

    if (LOBYTE(Counter[1].Description) == 1)
    {
      kdebug_trace_string();
    }

    if (LOBYTE(Counter[2].Description) == 1)
    {
      kdebug_trace_string();
    }

    if (*&v171 != 20 && LOBYTE(Counter[3].Description) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v172 = v194->Kind;
    p_Description = v198;
    v173 = v199;
    (v194->Kind)(v198, v199);
    v174 = __swift_project_value_buffer(v173, static OSSignpostID.continuation);
    v162 = (*&v190)(p_Description, v174, v173);
  }

  while ((v214 & 1) != 0);

  v175 = v199;
  v172(v198, v199);
  v172(v188, v175);
LABEL_171:

LABEL_172:
  specialized AnimatorState.removeListeners()();

  *(v187 + 152) = 0;
LABEL_173:
  v176 = v189;
  v258 = v238;
  v259 = v239;
  v260 = v240;
  v261 = v241;
  v254 = v234;
  v255 = v235;
  v256 = v236;
  v257 = v237;
  RoundedRectangularShapeCorners.animatableData.setter(&v254);

  *(v176 + 256) = 1;
  return result;
}

{
  v194 = *MEMORY[0x1E69E9840];
  v175 = type metadata accessor for OSSignpostID();
  v172 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v14 = (&v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v156 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v156 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v156 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v174 = &v156 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v165 = &v156 - v27;
  if (*(a4 + 40))
  {
    Value = AGGraphGetValue();
    if (v29)
    {
      v30 = *Value;
    }

    else
    {
      v30 = -INFINITY;
    }
  }

  else
  {
    v30 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_124;
  }

  v7 = *a1;
  v8 = *(a1 + 8);
  if (*(a4 + 32))
  {
    goto LABEL_123;
  }

  v6 = *(a4 + 16);
  v5 = *(a4 + 24);
  if (v7 == v6 && v8 == v5)
  {
    goto LABEL_123;
  }

  v171 = v14;
  v170 = v20;
  v156 = v17;
  v162 = a1;
  AGGraphClearUpdate();
  v32 = *(a4 + 16);
  v190 = *a4;
  v191 = v32;
  v192 = *(a4 + 32);
  v193 = *(a4 + 48);
  v4 = &type metadata for ViewSize;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v190, &v185, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
  v33 = *AGGraphGetValue();

  v34 = v33;
  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v190, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v35 = Transaction.effectiveAnimation.getter(v33);
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_122;
    }

    v36 = a2;
  }

  v37 = *(&v192 + 1);
  v38 = v7 - v6;
  v39 = v8 - v5;
  v30 = *AGGraphGetValue();
  v161 = a4;
  v157 = a3;
  v159 = v34;
  v158 = v36;
  if (!v37)
  {
    *&v180.f64[0] = &type metadata for ViewSize;
    type metadata accessor for ViewSize.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = v185;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = *(&v185 + 1);
    }

    else
    {
      v69 = 0;
    }

    v160 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v70, v34, v68, v69, v38, v39, v30);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    a4 = CurrentAttribute;
    LODWORD(v52) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v72 = 0;
    }

    else
    {
      v72 = CurrentAttribute;
    }

    (*(*v36 + 96))(&v180);
    v73 = v180;
    v74 = v181;
    v75 = v182;
    v76 = v183;
    *&v179 = NAN;
    v178 = NAN;
    v177 = 1.0;
    v176 = NAN;
    v185 = v180;
    v186 = *&v181;
    v187 = *&v182;
    v188 = *&v183;
    LODWORD(v173) = v184;
    LOBYTE(v189) = v184;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v185, &v179, &v178, &v177, &v176);
    v5 = *&v179;
    v6 = v178;
    v77 = v177;
    v78 = *&v176;
    if (one-time initialization token for enabledCategories != -1)
    {
      *&v170 = v177;
      v169 = *&v176;
      swift_once();
      v78 = v169;
      v77 = *&v170;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v79 = static CustomEventTrace.recorder) != 0)
      {
        v80 = a4 == v52;
        v169 = v76;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v170) = v52;
        v52 = v74;
        v81 = *(v79 + 16);
        LODWORD(v185) = v72;
        BYTE4(v185) = v80;
        *(&v185 + 1) = &type metadata for ViewSize;
        v186 = v5;
        v187 = v6;
        v188 = v77;
        v189 = *&v78;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v82 = v81;
        AGGraphAddTraceEvent();
        v83 = v52;
        LODWORD(v52) = v170;
        outlined consume of Animation.Function(*&v73.f64[0], *&v73.f64[1], v83, v75, v169, v173);
      }

      else
      {
        outlined consume of Animation.Function(*&v73.f64[0], *&v73.f64[1], v74, v75, v76, v173);
      }

      v84 = one-time initialization token for animationState;

      a4 = v161;
      if (v84 == -1)
      {
        goto LABEL_53;
      }
    }

    swift_once();
LABEL_53:
    v57 = *(&static Signpost.animationState + 1);
    v53 = static Signpost.animationState;
    LODWORD(v4) = word_1ED5283E8;
    v54 = HIBYTE(word_1ED5283E8);
    v85 = byte_1ED5283EA;
    LOBYTE(v59) = static os_signpost_type_t.begin.getter();
    v185 = __PAIR128__(v57, v53);
    LOBYTE(v186) = v4;
    BYTE1(v186) = v54;
    BYTE2(v186) = v85;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v94 = v160;

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v190, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_60;
    }

    v86 = one-time initialization token for _signpostLog;

    if (v86 != -1)
    {
      goto LABEL_197;
    }

    goto LABEL_55;
  }

  v156 = v23;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v190, &v185, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v185) = 0;
  v160 = v37;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v36, v34, v38, v39, v30);
  v40 = AGGraphGetCurrentAttribute();
  LODWORD(v4) = v40;
  v41 = *MEMORY[0x1E698D3F8];
  if (v40 == *MEMORY[0x1E698D3F8])
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  (*(*v36 + 96))(&v180);
  v43 = v180.f64[1];
  v44 = *&v180.f64[0];
  v45 = v181;
  *&v179 = NAN;
  v178 = NAN;
  v177 = 1.0;
  v176 = NAN;
  v185 = v180;
  v186 = *&v181;
  v46 = v182;
  v187 = *&v182;
  v188 = *&v183;
  v171 = v183;
  LODWORD(v173) = v184;
  LOBYTE(v189) = v184;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v185, &v179, &v178, &v177, &v176);
  v5 = *&v179;
  v6 = v178;
  v47 = v177;
  v48 = v176;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_190;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_192:
      swift_once();
      goto LABEL_28;
    }

    v49 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v169) = v41;
    if (v49 && (v50 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v51 = *(v50 + 16);
      LODWORD(v185) = v42;
      BYTE4(v185) = v4 == v41;
      *(&v185 + 1) = &type metadata for ViewSize;
      v186 = v5;
      v187 = v6;
      v188 = v47;
      v189 = v48;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v4 = v51;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v44, *&v43, v45, v46, v171, v173);
    }

    else
    {
      outlined consume of Animation.Function(v44, *&v43, v45, v46, v171, v173);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v190, &v185, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_192;
    }

LABEL_28:
    v53 = *(&static Signpost.animationState + 1);
    v52 = static Signpost.animationState;
    v54 = word_1ED5283E8;
    v55 = HIBYTE(word_1ED5283E8);
    v56 = byte_1ED5283EA;
    v57 = static os_signpost_type_t.event.getter();
    v185 = __PAIR128__(v53, v52);
    LOBYTE(v186) = v54;
    BYTE1(v186) = v55;
    BYTE2(v186) = v56;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v190, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v190, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
LABEL_91:
      a4 = v161;
      a3 = v157;
      goto LABEL_121;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v190, &v185, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v58 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_18DDAF080;
    v60 = AGGraphGetCurrentAttribute();
    LODWORD(v4) = v169;
    if (v60 == v169)
    {
      __break(1u);
    }

    else
    {
      v61 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v63 = MEMORY[0x1E69E6870];
      *(v59 + 56) = MEMORY[0x1E69E6810];
      *(v59 + 64) = v63;
      *(v59 + 32) = Counter;
      v64 = AGGraphGetCurrentAttribute();
      if (v64 != v4)
      {
        v65 = MEMORY[0x1E69E76D0];
        *(v59 + 96) = MEMORY[0x1E69E7668];
        *(v59 + 104) = v65;
        *(v59 + 72) = v64;
        *(v59 + 136) = MEMORY[0x1E69E6158];
        *(v59 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v59 + 112) = 0x657A695377656956;
        *(v59 + 120) = 0xE800000000000000;
        if (v55)
        {
          LOBYTE(v176) = v57;
          *&v179 = COERCE_DOUBLE(&dword_18D018000);
          v178 = v58;
          *&v185 = v52;
          *(&v185 + 1) = v53;
          LOBYTE(v186) = v54;
          *&v180.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v180.f64[1] = 39;
          LOBYTE(v181) = 2;
          v177 = *&v59;
          v66 = v156;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v190, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v190, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
          (*(v172 + 8))(v66, v175);
        }

        else
        {
          if (v52 == 20)
          {
            v95 = 3;
          }

          else
          {
            v95 = 4;
          }

          v96 = bswap32(v52) | (4 * WORD1(v52));
          a4 = v57;
          v97 = v172 + 16;
          v163 = *(v172 + 16);
          v98 = v163(v170, v156, v175);
          v99 = 0;
          LOBYTE(v180.f64[0]) = 1;
          v173 = v95;
          v168 = 16 * v95;
          v164 = v97;
          v169 = v97 - 8;
          *&v167 = v59 + 32;
          v166 = v52;
          do
          {
            v171 = &v156;
            MEMORY[0x1EEE9AC00](v98);
            a1 = &v156 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
            v46 = a1 + 8;
            v102 = v173;
            v103 = (a1 + 8);
            do
            {
              *(v103 - 1) = 0;
              *v103 = 0;
              v103 += 16;
              v102 = (v102 - 1);
            }

            while (v102);
            v4 = (*&v167 + 40 * v99);
            p_Description = v173;
            while (1)
            {
              v105 = *(v59 + 16);
              if (v99 == v105)
              {
                break;
              }

              if (v99 >= v105)
              {
                goto LABEL_181;
              }

              ++v99;
              outlined init with copy of AnyTrackedValue(v4, &v185);
              v95 = *&v187;
              __swift_project_boxed_opaque_existential_1(&v185, *&v187);
              *(v46 - 8) = CVarArg.kdebugValue(_:)(v96 | a4, v95);
              *v46 = v106 & 1;
              v46 += 16;
              v100 = __swift_destroy_boxed_opaque_existential_1(&v185);
              v4 = (v4 + 40);
              if (!--p_Description)
              {
                goto LABEL_74;
              }
            }

            LOBYTE(v180.f64[0]) = 0;
LABEL_74:
            v4 = v166;
            if (v166 == 20)
            {
              v107 = v170;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v107 = v170;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v108 = *v169;
            v95 = v175;
            (*v169)(v107, v175);
            v109 = __swift_project_value_buffer(v95, static OSSignpostID.continuation);
            v98 = v163(v107, v109, v95);
          }

          while ((LOBYTE(v180.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v190, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v190, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
          v110 = v175;
          v108(v107, v175);
          v108(v156, v110);
        }

        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_55:
    v87 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v52)
    {
      __break(1u);
LABEL_199:
      __break(1u);
    }

    v88 = AGGraphGetAttributeGraph();
    v89 = AGGraphGetCounter();

    v90 = MEMORY[0x1E69E6870];
    *(a4 + 56) = MEMORY[0x1E69E6810];
    *(a4 + 64) = v90;
    *(a4 + 32) = v89;
    v91 = AGGraphGetCurrentAttribute();
    if (v91 == v52)
    {
      goto LABEL_199;
    }

    v92 = MEMORY[0x1E69E76D0];
    *(a4 + 96) = MEMORY[0x1E69E7668];
    *(a4 + 104) = v92;
    *(a4 + 72) = v91;
    *(a4 + 136) = MEMORY[0x1E69E6158];
    *(a4 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 112) = 0x657A695377656956;
    *(a4 + 120) = 0xE800000000000000;
    if (v54)
    {
      LOBYTE(v176) = v59;
      *&v179 = COERCE_DOUBLE(&dword_18D018000);
      v178 = v87;
      *&v185 = v53;
      *(&v185 + 1) = v57;
      LOBYTE(v186) = v4;
      *&v180.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v180.f64[1] = 39;
      LOBYTE(v181) = 2;
      v177 = *&a4;
      v93 = v156;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v94 = v160;

      (*(v172 + 8))(v93, v175);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v190, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
      a4 = v161;
LABEL_60:
      *(a4 + 40) = v94;
    }

    else
    {
      v111 = v53;
      v112 = v59;
      v113 = v53 == 20 ? 3 : 4;
      a1 = bswap32(v53) | (4 * WORD1(v53));
      v46 = v112;
      v95 = v172 + 16;
      v163 = *(v172 + 16);
      v114 = v163(v171, v156, v175);
      v99 = 0;
      LOBYTE(v180.f64[0]) = 1;
      v169 = 16 * v113;
      v164 = v95;
      v170 = v95 - 8;
      v168 = a4 + 32;
      v166 = v111;
      v167 = *&v113;
      do
      {
        v173 = &v156;
        MEMORY[0x1EEE9AC00](v114);
        v4 = (&v156 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
        p_Description = &v4->Description;
        v116 = v113;
        v117 = &v4->Description;
        do
        {
          *(v117 - 1) = 0;
          *v117 = 0;
          v117 += 2;
          --v116;
        }

        while (v116);
        v118 = v168 + 40 * v99;
        while (1)
        {
          v119 = *(a4 + 16);
          if (v99 == v119)
          {
            break;
          }

          if (v99 >= v119)
          {
            goto LABEL_182;
          }

          ++v99;
          outlined init with copy of AnyTrackedValue(v118, &v185);
          v95 = *&v187;
          __swift_project_boxed_opaque_existential_1(&v185, *&v187);
          *(p_Description - 8) = CVarArg.kdebugValue(_:)(a1 | v46, v95);
          *p_Description = v120 & 1;
          p_Description += 16;
          v100 = __swift_destroy_boxed_opaque_existential_1(&v185);
          v118 += 40;
          if (!--v113)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v180.f64[0]) = 0;
LABEL_104:
        v121 = v166;
        if (v166 == 20)
        {
          v122 = v171;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v122 = v171;
        }

        v113 = *&v167;
        if (LOBYTE(v4->Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[1].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (LOBYTE(v4[2].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (v121 != 20 && LOBYTE(v4[3].Description) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v95 = *v170;
        v123 = v175;
        (*v170)(v122, v175);
        v124 = __swift_project_value_buffer(v123, static OSSignpostID.continuation);
        v114 = v163(v122, v124, v123);
      }

      while ((LOBYTE(v180.f64[0]) & 1) != 0);
      v125 = v160;

      v126 = v175;
      (v95)(v122, v175);
      (v95)(v156, v126);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v190, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewSize>, lazy protocol witness table accessor for type ViewSize and conformance ViewSize, &type metadata for ViewSize, type metadata accessor for AnimatableAttributeHelper);
      a4 = v161;
      *(v161 + 40) = v125;
    }

    a3 = v157;
LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v159);

LABEL_122:

    a1 = v162;
LABEL_123:
    *(a4 + 16) = v7;
    *(a4 + 24) = v8;
    *(a4 + 32) = 0;
LABEL_124:
    p_Description = *(a4 + 40);
    if (!p_Description)
    {
      return result;
    }

    v180 = *a1;

    LOBYTE(v190) = 0;
    v127 = specialized AnimatorState.update(_:at:environment:)(&v180, a3, v30);
    v100 = AGGraphGetCurrentAttribute();
    v46 = *MEMORY[0x1E698D3F8];
    if (v100 == v46)
    {
      LODWORD(v99) = 0;
    }

    else
    {
      LODWORD(v99) = v100;
    }

    v95 = &type metadata instantiation cache for TupleTypeDescription;
    if (v127)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_183;
      }

      goto LABEL_130;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_185;
    }

LABEL_143:
    v137 = *(v95 + 616);
    if (*(v137 + 16) >= 0x43uLL)
    {
      if (*(v137 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v190) = v99;
        BYTE4(v190) = v100 == v46;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_178;
    }

    __break(1u);
LABEL_187:
    swift_once();
LABEL_135:
    v45 = *(&static Signpost.animationState + 1);
    v99 = static Signpost.animationState;
    v42 = word_1ED5283E8;
    v44 = HIBYTE(word_1ED5283E8);
    v130 = byte_1ED5283EA;
    v41 = static os_signpost_type_t.end.getter();
    v190 = __PAIR128__(v45, v99);
    LOBYTE(v191) = v42;
    BYTE1(v191) = v44;
    BYTE2(v191) = v130;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    v162 = a1;
    v131 = one-time initialization token for _signpostLog;

    if (v131 != -1)
    {
      swift_once();
    }

    v161 = a4;
    v43 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v46)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    *&v168 = v47;
    v167 = v48;
    swift_once();
    v48 = v167;
    v47 = *&v168;
  }

  v132 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v133 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v133;
  *(a1 + 32) = v4;
  v134 = AGGraphGetCurrentAttribute();
  if (v134 == v46)
  {
    goto LABEL_189;
  }

  v135 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v135;
  *(a1 + 72) = v134;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0x657A695377656956;
  *(a1 + 120) = 0xE800000000000000;
  if (v44)
  {
    LOBYTE(v176) = v41;
    *&v179 = COERCE_DOUBLE(&dword_18D018000);
    v178 = v43;
    *&v190 = v99;
    *(&v190 + 1) = v45;
    LOBYTE(v191) = v42;
    *&v185 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v185 + 1) = 37;
    LOBYTE(v186) = 2;
    v177 = *&a1;
    v136 = v165;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v172 + 8))(v136, v175);
    goto LABEL_176;
  }

  v138 = v99;
  if (v99 == 20)
  {
    p_Description = 3;
  }

  else
  {
    p_Description = 4;
  }

  v46 = bswap32(v99) | (4 * WORD1(v99));
  LODWORD(v99) = v41;
  v95 = v172 + 16;
  v166 = *(v172 + 16);
  v139 = (v166)(v174, v165, v175);
  v140 = 0;
  LOBYTE(v185) = 1;
  v170 = 16 * p_Description;
  v172 = v95;
  v171 = (v95 - 8);
  v169 = a1 + 32;
  v168 = v138;
  v167 = *&p_Description;
  do
  {
    v173 = &v156;
    MEMORY[0x1EEE9AC00](v139);
    a4 = &v156 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
    v142 = (a4 + 8);
    v143 = p_Description;
    v144 = (a4 + 8);
    do
    {
      *(v144 - 1) = 0;
      *v144 = 0;
      v144 += 16;
      --v143;
    }

    while (v143);
    v4 = (v169 + 40 * v140);
    while (1)
    {
      v145 = *(a1 + 16);
      if (v140 == v145)
      {
        break;
      }

      if (v140 >= v145)
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        v154 = v100;
        swift_once();
        v100 = v154;
LABEL_130:
        v128 = *(v95 + 616);
        if (*(v128 + 16) >= 0x43uLL)
        {
          if (*(v128 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v190) = v99;
            BYTE4(v190) = v100 == v46;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v129 = one-time initialization token for animationState;
          v164 = p_Description;

          if (v129 != -1)
          {
            goto LABEL_187;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_185:
        v155 = v100;
        swift_once();
        v100 = v155;
        goto LABEL_143;
      }

      ++v140;
      outlined init with copy of AnyTrackedValue(v4, &v190);
      v146 = *(&v191 + 1);
      v95 = v192;
      __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
      *(v142 - 1) = CVarArg.kdebugValue(_:)(v46 | v99, v146);
      *v142 = v147 & 1;
      v142 += 16;
      v100 = __swift_destroy_boxed_opaque_existential_1(&v190);
      v4 = (v4 + 40);
      if (!--p_Description)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v185) = 0;
LABEL_161:
    v148 = v168;
    if (v168 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(a4 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(a4 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v148 != 20 && *(a4 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v95 = *v171;
    v149 = v174;
    v150 = v175;
    (*v171)(v174, v175);
    v151 = __swift_project_value_buffer(v150, static OSSignpostID.continuation);
    v139 = (v166)(v149, v151, v150);
    p_Description = *&v167;
  }

  while ((v185 & 1) != 0);

  v152 = v175;
  (v95)(v174, v175);
  (v95)(v165, v152);
LABEL_176:

  a1 = v162;
  a4 = v161;
LABEL_177:
  specialized AnimatorState.removeListeners()();

  *(a4 + 40) = 0;
LABEL_178:
  v153 = v180;
  *a1 = v180;
  *(a1 + 16) = v153;
  *(a1 + 32) = 1;
  return result;
}