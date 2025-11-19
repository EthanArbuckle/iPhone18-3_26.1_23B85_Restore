uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void *a5, double a6)
{
  v7 = v6;
  v14 = HIDWORD(a3);
  if (*(v6 + 105))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v47 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v47)
  {
LABEL_25:
    swift_beginAccess();
    *(v6 + 16) = a1;

    swift_beginAccess();
    *(v6 + 32) = a2;
    *(v6 + 40) = a3;
    *(v6 + 44) = v14;
    *(v6 + 48) = a4 & 1;

    goto LABEL_8;
  }

LABEL_2:
  v48 = v14;
  v49 = a2;
  v15 = a4;
  v50 = a5;
  v16 = a6 - *(v6 + 56);
  swift_beginAccess();
  v17 = *(v6 + 24);
  v18 = *(v6 + 128);

  v60[0] = v17;
  v60[1] = AGCreateWeakAttribute();
  v61 = 0;
  v62 = v18;
  v19 = *(v6 + 136);
  if (v19)
  {
    v20 = *(v6 + 144);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimationFinishingDefinitionKey);
    v22 = v21;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
    v51[3] = v23;
    v51[0] = v19;
    v51[1] = v20;
    specialized Dictionary.subscript.setter(v51, v22);
  }

  swift_beginAccess();
  v24 = *(v6 + 16);
  v25 = *(v6 + 24);
  swift_beginAccess();
  v26 = *(v6 + 32);
  v27 = *(v6 + 40);
  v28 = *(v6 + 48);
  v29 = *(v7 + 44);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v24, v25, v26, v27 | (v29 << 32), v28);

  *(v7 + 128) = 0;
  v30 = *(v7 + 16);
  v31 = *(v7 + 40);
  v32 = *(v7 + 44);
  v33 = *(v7 + 48);
  v56 = *(v7 + 32);
  v57 = v31;
  v58 = v32;
  v59 = v33;
  v34 = *(*a1 + 136);
  v35 = lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector();

  LOBYTE(v35) = v34(v30, &v56, v60, &type metadata for ResolvedGradientVector, v35, v16);

  if (v35)
  {
    *(v7 + 24) = v60[0];

    *(v7 + 16) = a1;

    v36 = v49;
    a5 = v50;
  }

  else
  {

    v37 = *(v7 + 32);
    v38 = *(v7 + 40);
    v39 = *(v7 + 48);
    v40 = *(v7 + 44);
    swift_beginAccess();
    swift_beginAccess();

    v41 = v38 | (v40 << 32);
    v36 = v49;
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v7 + 16), (v7 + 24), v37, v41, v39, a1, v49, a3 & 0xFFFFFFFF000000FFLL, v16, v15 & 1);
    swift_endAccess();
    swift_endAccess();

    a5 = v50;
  }

  swift_beginAccess();
  v52 = v36;
  v53 = a3;
  v54 = v48;
  v55 = v15 & 1;
  ResolvedGradientVector.add(_:scaledBy:)(&v52, 1.0);
  swift_endAccess();
  *(v7 + 72) = a6;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a5));
  if ((v43 & 1) == 0)
  {
    v44 = 0.0;
    if (*&result > 0.0)
    {
      v45 = log2(*&result * 240.0);
      v44 = exp2(floor(v45 + 0.01)) * 0.00416666667;
    }

    if (v44 >= *(v7 + 64))
    {
      v44 = *(v7 + 64);
    }

    *(v7 + 64) = v44;
    if (v44 >= 0.0166666667)
    {
      *&result = 0.0;
      v46 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a5));
      if ((result & 0x100000000) != 0)
      {
        result = *(v7 + 100);
        v46 = *(v7 + 104);
      }

      else
      {
        v46 = 0;
      }
    }

    *(v7 + 100) = result;
    *(v7 + 104) = v46;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, __int128 *a2, void *a3, double a4)
{
  v5 = v4;
  v9 = a2[1];
  v40 = *a2;
  *v41 = v9;
  *&v41[9] = *(a2 + 25);
  if (*(v4 + 153))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v33 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v33)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v34 = *&v41[16];
    v35 = v41[24];
    v36 = *v41;
    *(v4 + 32) = v40;
    *(v4 + 48) = v36;
    *(v4 + 64) = v34;
    *(v4 + 72) = v35;
    goto LABEL_8;
  }

LABEL_2:
  v10 = a4 - *(v4 + 80);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 176);

  v37[0] = v11;
  v37[1] = AGCreateWeakAttribute();
  v38 = 0;
  v39 = v12;
  v13 = *(v4 + 184);
  if (v13)
  {
    v14 = *(v4 + 192);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v16 = v15;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
    *&v47[8] = v17;
    *&v46 = v13;
    *(&v46 + 1) = v14;
    specialized Dictionary.subscript.setter(&v46, v16);
  }

  swift_beginAccess();
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);
  swift_beginAccess();
  v20 = *(v4 + 48);
  v46 = *(v4 + 32);
  *v47 = v20;
  *&v47[9] = *(v4 + 57);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v46);

  *(v4 + 176) = 0;
  v21 = *(v4 + 64);
  v22 = *(v4 + 72);
  v23 = *(v4 + 48);
  v44 = *(v4 + 32);
  *v45 = v23;
  *&v45[16] = v21;
  v45[24] = v22;
  v24 = *(*a1 + 136);
  v25 = lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData();

  LOBYTE(v25) = v24(v26, &v44, v37, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v25, v10);

  if (v25)
  {
    *(v5 + 24) = v37[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v27 = *(v5 + 48);
    v42 = *(v5 + 32);
    v43[0] = v27;
    *(v43 + 9) = *(v5 + 57);
    swift_beginAccess();
    swift_beginAccess();
    v44 = v40;
    *v45 = *v41;
    *&v45[9] = *&v41[9];
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), &v42, a1, &v44, v10);
    swift_endAccess();
    swift_endAccess();
  }

  specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)(v5 + 32, &v40);
  *(v5 + 96) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v29 & 1) == 0)
  {
    v30 = 0.0;
    if (*&result > 0.0)
    {
      v31 = log2(*&result * 240.0);
      v30 = exp2(floor(v31 + 0.01)) * 0.00416666667;
    }

    if (v30 >= *(v5 + 88))
    {
      v30 = *(v5 + 88);
    }

    *(v5 + 88) = v30;
    if (v30 >= 0.0166666667)
    {
      *&result = 0.0;
      v32 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 148);
        v32 = *(v5 + 152);
      }

      else
      {
        v32 = 0;
      }
    }

    *(v5 + 148) = result;
    *(v5 + 152) = v32;
  }

  return result;
}

{
  v5 = v4;
  v9 = a2[5];
  v61 = a2[4];
  v62 = v9;
  v10 = a2[7];
  v63 = a2[6];
  v64 = v10;
  v11 = a2[1];
  v57 = *a2;
  v58 = v11;
  v12 = a2[3];
  v59 = a2[2];
  v60 = v12;
  if (*(v4 + 317))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v48 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v48)
  {
LABEL_25:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    v49 = a2[5];
    *(v5 + 96) = a2[4];
    *(v5 + 112) = v49;
    v50 = a2[7];
    *(v5 + 128) = a2[6];
    *(v5 + 144) = v50;
    v51 = a2[1];
    *(v5 + 32) = *a2;
    *(v5 + 48) = v51;
    v52 = a2[3];
    *(v5 + 64) = a2[2];
    *(v5 + 80) = v52;
    goto LABEL_8;
  }

LABEL_2:
  v13 = a4 - *(v5 + 160);
  swift_beginAccess();
  v14 = *(v5 + 24);
  v15 = *(v5 + 336);

  v54[0] = v14;
  v54[1] = AGCreateWeakAttribute();
  v55 = 0;
  v56 = v15;
  v16 = *(v5 + 344);
  if (v16)
  {
    v17 = *(v5 + 352);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
    *(&v75 + 1) = v20;
    *&v74 = v16;
    *(&v74 + 1) = v17;
    specialized Dictionary.subscript.setter(&v74, v19);
  }

  swift_beginAccess();
  v21 = *(v5 + 16);
  v22 = *(v5 + 24);
  swift_beginAccess();
  v23 = *(v5 + 112);
  v78 = *(v5 + 96);
  v79 = v23;
  v24 = *(v5 + 144);
  v80 = *(v5 + 128);
  v81 = v24;
  v25 = *(v5 + 48);
  v74 = *(v5 + 32);
  v75 = v25;
  v26 = *(v5 + 80);
  v76 = *(v5 + 64);
  v77 = v26;

  specialized AnimatorState.forkListeners(animation:state:interval:)(v21, v22, &v74);

  *(v5 + 336) = 0;
  v27 = *(v5 + 112);
  v70 = *(v5 + 96);
  v71 = v27;
  v28 = *(v5 + 144);
  v72 = *(v5 + 128);
  v73 = v28;
  v29 = *(v5 + 48);
  v66 = *(v5 + 32);
  v67 = v29;
  v30 = *(v5 + 80);
  v68 = *(v5 + 64);
  v69 = v30;
  v31 = *(*a1 + 136);
  v32 = lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData();

  LOBYTE(v32) = v31(v33, &v66, v54, &type metadata for RoundedRectangularShapeCorners.AnimatableData, v32, v13);

  if (v32)
  {
    *(v5 + 24) = v54[0];

    *(v5 + 16) = a1;
  }

  else
  {

    v34 = *(v5 + 112);
    v65[4] = *(v5 + 96);
    v65[5] = v34;
    v35 = *(v5 + 144);
    v65[6] = *(v5 + 128);
    v65[7] = v35;
    v36 = *(v5 + 48);
    v65[0] = *(v5 + 32);
    v65[1] = v36;
    v37 = *(v5 + 80);
    v65[2] = *(v5 + 64);
    v65[3] = v37;
    swift_beginAccess();
    swift_beginAccess();
    v70 = v61;
    v71 = v62;
    v72 = v63;
    v73 = v64;
    v66 = v57;
    v67 = v58;
    v68 = v59;
    v69 = v60;
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v5 + 16), (v5 + 24), v65, a1, &v66, v13);
    swift_endAccess();
    swift_endAccess();
  }

  v38 = *(v5 + 112);
  v53[4] = *(v5 + 96);
  v53[5] = v38;
  v39 = *(v5 + 144);
  v53[6] = *(v5 + 128);
  v53[7] = v39;
  v40 = *(v5 + 48);
  v53[0] = *(v5 + 32);
  v53[1] = v40;
  v41 = *(v5 + 80);
  v53[2] = *(v5 + 64);
  v53[3] = v41;
  static RoundedRectangularShapeCorners.AnimatableData.+ infix(_:_:)((v5 + 32), v53, &v57);
  *(v5 + 176) = a4;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v43 & 1) == 0)
  {
    v44 = 0.0;
    if (*&result > 0.0)
    {
      v45 = log2(*&result * 240.0);
      v44 = exp2(floor(v45 + 0.01)) * 0.00416666667;
    }

    if (v44 >= *(v5 + 168))
    {
      v44 = *(v5 + 168);
    }

    *(v5 + 168) = v44;
    if (v44 >= 0.0166666667)
    {
      *&result = 0.0;
      v46 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v5 + 312);
        v46 = *(v5 + 316);
      }

      else
      {
        v46 = 0;
      }
    }

    *(v5 + 312) = result;
    *(v5 + 316) = v46;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, float a3, float a4, float a5, float a6, double a7)
{
  v8 = v7;
  if (*(v7 + 93))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v44 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v44)
  {
LABEL_25:
    swift_beginAccess();
    *(v7 + 16) = a1;

    swift_beginAccess();
    *(v7 + 32) = a3;
    *(v7 + 36) = a4;
    *(v7 + 40) = a5;
    *(v7 + 44) = a6;
    goto LABEL_8;
  }

LABEL_2:
  v12 = a7 - *(v7 + 48);
  swift_beginAccess();
  v13 = *(v7 + 24);
  v14 = *(v7 + 112);

  v51[0] = v13;
  v51[1] = AGCreateWeakAttribute();
  v52 = 0;
  v53 = v14;
  v15 = *(v7 + 120);
  if (v15)
  {
    v16 = *(v8 + 128);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
    v18 = v17;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
    v49[3] = v19;
    v49[0] = v15;
    v49[1] = v16;
    specialized Dictionary.subscript.setter(v49, v18);
  }

  swift_beginAccess();
  v20 = *(v8 + 16);
  v21 = *(v8 + 24);
  swift_beginAccess();
  v22 = *(v8 + 32);
  v23 = *(v8 + 36);
  v24 = *(v8 + 40);
  v25 = *(v8 + 44);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v20, v21, v22, v23, v24, v25);

  *(v8 + 112) = 0;
  v50 = *(v8 + 32);
  v26 = *(*a1 + 136);
  type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>();
  v28 = v27;
  v29 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);

  LOBYTE(v28) = v26(v30, &v50, v51, v28, v29, v12);

  if (v28)
  {
    *(v8 + 24) = v51[0];

    *(v8 + 16) = a1;

    v32.f32[0] = a3;
    v31 = a6;
    v34 = a4;
    v33 = a5;
  }

  else
  {

    v35 = *(v8 + 32);
    v36 = *(v8 + 36);
    v37 = *(v8 + 40);
    v38 = *(v8 + 44);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v8 + 16), (v8 + 24), a1, v35, v36, v37, v38, v12, a3, a4, a5, a6);
    swift_endAccess();
    swift_endAccess();
    v34 = a4;
    v33 = a5;
    v32.f32[0] = a3;
    v31 = a6;
  }

  v32.f32[1] = v34;
  v32.i64[1] = __PAIR64__(LODWORD(v31), LODWORD(v33));
  *(v8 + 32) = vaddq_f32(*(v8 + 32), v32);
  *(v8 + 64) = a7;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v40 & 1) == 0)
  {
    v41 = 0.0;
    if (*&result > 0.0)
    {
      v42 = log2(*&result * 240.0);
      v41 = exp2(floor(v42 + 0.01)) * 0.00416666667;
    }

    if (v41 >= *(v8 + 56))
    {
      v41 = *(v8 + 56);
    }

    *(v8 + 56) = v41;
    if (v41 >= 0.0166666667)
    {
      *&result = 0.0;
      v43 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
      if ((result & 0x100000000) != 0)
      {
        result = *(v8 + 88);
        v43 = *(v8 + 92);
      }

      else
      {
        v43 = 0;
      }
    }

    *(v8 + 88) = result;
    *(v8 + 92) = v43;
  }

  return result;
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, double *a2, void *a3, double a4)
{
  v9 = v4;
  if (*(v4 + 253))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v139 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v139)
  {
LABEL_25:
    swift_beginAccess();
    *(v4 + 16) = a1;

    swift_beginAccess();
    v140 = *(a2 + 3);
    *(v4 + 64) = *(a2 + 2);
    *(v4 + 80) = v140;
    v141 = *(a2 + 5);
    *(v4 + 96) = *(a2 + 4);
    *(v4 + 112) = v141;
    v142 = *(a2 + 1);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v142;
    goto LABEL_8;
  }

LABEL_2:
  v147 = a3;
  v10 = a4 - *(v4 + 128);
  swift_beginAccess();
  v11 = *(v4 + 24);
  v12 = *(v4 + 272);

  v182[0] = v11;
  v182[1] = AGCreateWeakAttribute();
  v183 = 0;
  v184 = v12;
  v13 = *(v4 + 280);
  if (v13)
  {
    v14 = *(v9 + 288);
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
    v16 = v15;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
    *(&v187 + 1) = v17;
    *&v186 = v13;
    *(&v186 + 1) = v14;
    specialized Dictionary.subscript.setter(&v186, v16);
  }

  swift_beginAccess();
  v18 = *(v9 + 16);
  v19 = *(v9 + 24);
  swift_beginAccess();
  v20 = *(v9 + 80);
  v188 = *(v9 + 64);
  v189 = v20;
  v21 = *(v9 + 112);
  v190 = *(v9 + 96);
  v191 = v21;
  v22 = *(v9 + 48);
  v186 = *(v9 + 32);
  v187 = v22;

  specialized AnimatorState.forkListeners(animation:state:interval:)(v18, v19, &v186);

  *(v9 + 272) = 0;
  v23 = *(v9 + 80);
  v181[2] = *(v9 + 64);
  v181[3] = v23;
  v24 = *(v9 + 112);
  v181[4] = *(v9 + 96);
  v181[5] = v24;
  v25 = *(v9 + 48);
  v181[0] = *(v9 + 32);
  v181[1] = v25;
  v26 = *(*a1 + 136);
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>();
  v28 = v27;
  v29 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);

  LOBYTE(v28) = v26(v30, v181, v182, v28, v29, v10);

  if (v28)
  {
    *(v9 + 24) = v182[0];

    *(v9 + 16) = a1;
  }

  else
  {

    v31 = *(v9 + 80);
    v185[2] = *(v9 + 64);
    v185[3] = v31;
    v32 = *(v9 + 112);
    v185[4] = *(v9 + 96);
    v185[5] = v32;
    v33 = *(v9 + 48);
    v185[0] = *(v9 + 32);
    v185[1] = v33;
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v9 + 16), (v9 + 24), v185, a1, a2, v10);
    swift_endAccess();
    swift_endAccess();
  }

  v146 = v9;
  swift_beginAccess();
  v34 = *(v9 + 80);
  v163 = *(v9 + 64);
  v164 = v34;
  v35 = *(v9 + 112);
  v165 = *(v9 + 96);
  v166 = v35;
  v36 = *(v9 + 48);
  v161 = *(v9 + 32);
  v162 = v36;
  v37 = *(a2 + 3);
  v157 = *(a2 + 2);
  v158 = v37;
  v38 = *(a2 + 5);
  v159 = *(a2 + 4);
  v160 = v38;
  v39 = *(a2 + 1);
  v155 = *a2;
  v156 = v39;
  v40 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v145 = &v143;
  v41 = MEMORY[0x1E69E7DE0];
  v42 = *(MEMORY[0x1E69E7DE0] - 8);
  v43 = v42[8];
  v44 = MEMORY[0x1EEE9AC00](v40);
  v152 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v42[2];
  v46 = v45(&v143 - v152, &v161, v41, v44);
  v153 = v45;
  v47 = MEMORY[0x1EEE9AC00](v46);
  v48 = &v143 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49(v48, &v155, v41, v47);
  v151 = *(v40 + 8);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v50 = v42[1];
  v50(v48, v41);
  v51 = (v50)(v48, v41);
  v145 = &v143;
  v179[0] = &v167;
  v150 = v43;
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = v152;
  v53 = v153;
  v55 = (v153)(&v143 - v152, &v161 + 8, v41, v52);
  v144 = &v143;
  v56 = MEMORY[0x1EEE9AC00](v55);
  v53(&v143 - v54, &v155 + 8, v41, v56);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v154 = v50;
  v50(&v143 - v54, v41);
  v57 = (v50)(&v143 - v54, v41);
  v145 = &v143;
  v179[1] = &v168;
  v58 = MEMORY[0x1EEE9AC00](v57);
  v59 = v153;
  v60 = (v153)(&v143 - v54, &v162, v41, v58);
  v144 = &v143;
  v61 = MEMORY[0x1EEE9AC00](v60);
  v59(&v143 - v54, &v156, v41, v61);
  v148 = v42 + 2;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v62 = v154;
  v154(&v143 - v54, v41);
  v63 = v62(&v143 - v54, v41);
  v145 = &v143;
  v179[2] = &v169;
  v64 = MEMORY[0x1EEE9AC00](v63);
  v65 = v54;
  v66 = &v143 - v54;
  v67 = &v143 - v54;
  v68 = v153;
  v69 = (v153)(v67, &v162 + 8, v41, v64);
  v144 = &v143;
  v70 = MEMORY[0x1EEE9AC00](v69);
  v68(&v143 - v65, &v156 + 8, v41, v70);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v71 = v154;
  v154(&v143 - v65, v41);
  v72 = v71(v66, v41);
  v145 = &v143;
  v179[3] = &v170;
  v73 = MEMORY[0x1EEE9AC00](v72);
  v74 = v152;
  v75 = &v143 - v152;
  v76 = (v68)(&v143 - v152, &v163, v41, v73);
  v144 = &v143;
  v77 = MEMORY[0x1EEE9AC00](v76);
  v68(&v143 - v74, &v157, v41, v77);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v78 = v154;
  v149 = v42 + 1;
  v154(&v143 - v74, v41);
  v79 = v78(v75, v41);
  v145 = &v143;
  v179[4] = &v171;
  v80 = MEMORY[0x1EEE9AC00](v79);
  v82 = v152;
  v81 = v153;
  v83 = &v143 - v152;
  v84 = (v153)(&v143 - v152, &v163 + 8, v41, v80);
  v144 = &v143;
  v85 = MEMORY[0x1EEE9AC00](v84);
  v81(&v143 - v82, &v157 + 8, v41, v85);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v86 = &v143 - v82;
  v87 = v154;
  v154(v86, v41);
  v88 = v87(v83, v41);
  v145 = &v143;
  v179[5] = &v172;
  v89 = MEMORY[0x1EEE9AC00](v88);
  v90 = v152;
  v91 = v153;
  v92 = (v153)(&v143 - v152, &v164, v41, v89);
  v144 = &v143;
  v93 = MEMORY[0x1EEE9AC00](v92);
  v91(&v143 - v90, &v158, v41, v93);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v94 = v154;
  v154(&v143 - v90, v41);
  v95 = v94(&v143 - v90, v41);
  v145 = &v143;
  v179[6] = &v173;
  v96 = MEMORY[0x1EEE9AC00](v95);
  v97 = v152;
  v98 = &v143 - v152;
  v99 = (v91)(&v143 - v152, &v164 + 8, v41, v96);
  v144 = &v143;
  v100 = MEMORY[0x1EEE9AC00](v99);
  v91(&v143 - v97, (&v158 + 8), v41, v100);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v101 = v154;
  v154(&v143 - v97, v41);
  v102 = v101(v98, v41);
  v145 = &v143;
  v179[7] = &v174;
  v103 = MEMORY[0x1EEE9AC00](v102);
  v105 = v152;
  v104 = v153;
  v106 = &v143 - v152;
  v107 = (v153)(&v143 - v152, &v165, v41, v103);
  v144 = &v143;
  v108 = MEMORY[0x1EEE9AC00](v107);
  v104(&v143 - v105, &v159, v41, v108);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v109 = &v143 - v105;
  v110 = v154;
  v154(v109, v41);
  v111 = v110(v106, v41);
  v145 = &v143;
  v179[8] = &v175;
  v112 = MEMORY[0x1EEE9AC00](v111);
  v114 = v152;
  v113 = v153;
  v115 = &v143 - v152;
  v116 = (v153)(&v143 - v152, &v165 + 8, v41, v112);
  v144 = &v143;
  v117 = MEMORY[0x1EEE9AC00](v116);
  v118 = &v143 - v114;
  v113(v118, &v159 + 8, v41, v117);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v110(v118, v41);
  v119 = v110(v115, v41);
  v145 = &v143;
  v179[9] = &v176;
  v120 = MEMORY[0x1EEE9AC00](v119);
  v121 = v152;
  v122 = (v113)(&v143 - v152, &v166, v41, v120);
  v144 = &v143;
  v123 = MEMORY[0x1EEE9AC00](v122);
  v113(&v143 - v121, &v160, v41, v123);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v124 = v154;
  v154(&v143 - v121, v41);
  v125 = v124(&v143 - v121, v41);
  v145 = &v143;
  v179[10] = &v177;
  v126 = MEMORY[0x1EEE9AC00](v125);
  v127 = v153;
  v128 = (v153)(&v143 - v121, &v166 + 8, v41, v126);
  v144 = &v143;
  v129 = MEMORY[0x1EEE9AC00](v128);
  v127(&v143 - v121, &v160 + 8, v41, v129);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v124(&v143 - v121, v41);
  v124(&v143 - v121, v41);
  v179[11] = &v178;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v179, v180);
  v130 = v180[3];
  v131 = v146;
  *(v146 + 64) = v180[2];
  *(v131 + 80) = v130;
  v132 = v180[5];
  *(v131 + 96) = v180[4];
  *(v131 + 112) = v132;
  v133 = v180[1];
  *(v131 + 32) = v180[0];
  *(v131 + 48) = v133;
  swift_endAccess();
  v9 = v131;
  *(v131 + 144) = a4;
  a3 = v147;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v135 & 1) == 0)
  {
    v136 = 0.0;
    if (*&result > 0.0)
    {
      v137 = log2(*&result * 240.0);
      v136 = exp2(floor(v137 + 0.01)) * 0.00416666667;
    }

    if (v136 >= *(v9 + 136))
    {
      v136 = *(v9 + 136);
    }

    *(v9 + 136) = v136;
    if (v136 >= 0.0166666667)
    {
      *&result = 0.0;
      v138 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v9 + 248);
        v138 = *(v9 + 252);
      }

      else
      {
        v138 = 0;
      }
    }

    *(v9 + 248) = result;
    *(v9 + 252) = v138;
  }

  return result;
}

uint64_t AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, double *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = *(*v4 + 80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = (&v40 - v11);
  v14 = *v13;
  v16 = *(v4 + *(v15 + 160));
  v47 = *(v15 + 88);
  if (v16)
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v36 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (static Semantics.forced < v36)
  {
LABEL_25:
    swift_beginAccess();
    v4[2] = a1;

    v37 = *(*v4 + 112);
    swift_beginAccess();
    (*(v10 + 24))(v5 + v37, a2, v9);
    swift_endAccess();
    goto LABEL_8;
  }

LABEL_2:
  v44 = a1;
  v45 = a2;
  v46 = a4;
  v17 = v14 - *(v4 + *(*v4 + 120));
  swift_beginAccess();
  v49[0] = v4[3];
  v43 = *(*v4 + 184);
  v18 = *(v4 + v43);

  AnimationContext.init(state:environment:isLogicallyComplete:)(v49, v18, v50);
  v19 = (v4 + *(*v4 + 192));
  v20 = *v19;
  if (*v19)
  {
    v21 = v19[1];
    v22 = type metadata accessor for AnimationContext();
    AnimationContext.finishingDefinition.setter(v20, v21, v22);
  }

  swift_beginAccess();
  v23 = v4[2];
  v48[0] = v4[3];
  v24 = *(*v4 + 112);
  swift_beginAccess();
  v25 = *(v10 + 16);
  v25(v12, v4 + v24, v9);

  AnimatorState.forkListeners(animation:state:interval:)(v23, v48, v12);

  v26 = *(v10 + 8);
  v26(v12, v9);

  *(v4 + v43) = 0;
  v43 = v24;
  v41 = v25;
  v25(v12, v4 + v24, v9);

  v28 = v44;
  LOBYTE(v23) = Animation.shouldMerge<A>(previous:value:time:context:)(v27, v12, v50, v44, v9, v47);

  v42 = v26;
  v26(v12, v9);
  if (v23)
  {
    v4[3] = v50[0];

    v4[2] = v28;
  }

  else
  {

    v41(v12, v4 + v43, v9);
    swift_beginAccess();
    swift_beginAccess();
    combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)(v4 + 2, v4 + 3, v12, v28, v45, v9, v17);
    swift_endAccess();
    swift_endAccess();
    v42(v12, v9);
  }

  a4 = v46;
  swift_beginAccess();
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  swift_endAccess();
  *(v4 + *(*v4 + 136)) = v14;
LABEL_8:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v30 & 1) == 0)
  {
    v31 = 0.0;
    if (*&result > 0.0)
    {
      v32 = log2(*&result * 240.0);
      v31 = exp2(floor(v32 + 0.01)) * 0.00416666667;
    }

    v33 = *(*v5 + 128);
    if (v31 >= *(v5 + v33))
    {
      v31 = *(v5 + v33);
    }

    *(v5 + v33) = v31;
    if (v31 >= 0.0166666667)
    {
      *&result = 0.0;
      v34 = *v5;
      v35 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
      v34 = *v5;
      if ((result & 0x100000000) != 0)
      {
        v38 = *(v34 + 152);
        result = *(v5 + v38);
        v35 = *(v5 + v38 + 4);
      }

      else
      {
        v35 = 0;
      }
    }

    v39 = v5 + *(v34 + 152);
    *v39 = result;
    v39[4] = v35;
  }

  return result;
}

BOOL _s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_AA0C4PairVyA2HGQP_Tt1g5(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *v34 = a1;
  *&v34[1] = a2;
  *&v34[2] = a3;
  *v33 = a4;
  *&v33[1] = a5;
  *&v33[2] = a6;
  v6 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v7 = MEMORY[0x1E69E7DE0];
  v8 = *(MEMORY[0x1E69E7DE0] - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  type metadata accessor for (CGFloat, AnimatablePair<CGFloat, CGFloat>)();
  v15 = v14;
  v16 = *(v8 + 16);
  v16(v10, v34 + *(v14 + 32), v7);
  v16(v13, v33 + *(v15 + 32), v7);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v8 + 8);
  v18(v13, v7);
  v18(v10, v7);
  result = 0;
  if (v17)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
    v20 = v19;
    v21 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v22 = *(v20 - 8);
    MEMORY[0x1EEE9AC00](v21);
    v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = MEMORY[0x1EEE9AC00](v25);
    v28 = v33 - v27;
    v29 = *(v22 + 16);
    v29(v24, v34 + *(v15 + 48), v20, v26);
    (v29)(v28, v33 + *(v15 + 48), v20);
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
    v31 = *(v22 + 8);
    v31(v28, v20);
    v31(v24, v20);
    if (v30)
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_A2HQP_Tt1g5(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *v43 = a1;
  *&v43[1] = a2;
  *&v43[2] = a3;
  *v42 = a4;
  *&v42[1] = a5;
  *&v42[2] = a6;
  v6 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v7 = MEMORY[0x1E69E7DE0];
  v8 = *(MEMORY[0x1E69E7DE0] - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  type metadata accessor for (CGFloat, CGFloat, CGFloat)();
  v15 = v14;
  v16 = *(v8 + 16);
  v16(v10, v43 + *(v14 + 32), v7);
  v16(v13, v42 + *(v15 + 32), v7);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v8 + 8);
  v18(v13, v7);
  v18(v10, v7);
  if (v17)
  {
    v19 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v20 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v19);
    v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v23);
    v25 = v42 - v24;
    type metadata accessor for (CGFloat, CGFloat, CGFloat)();
    v27 = v26;
    v28 = *(v20 + 16);
    v28(v22, v43 + *(v26 + 48), v7);
    v28(v25, v42 + *(v27 + 48), v7);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v29 = *(v20 + 8);
    v29(v25, v7);
    v29(v22, v7);
    if (v17)
    {
      v30 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      v31 = *(v7 - 8);
      MEMORY[0x1EEE9AC00](v30);
      v33 = v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v34);
      v36 = v42 - v35;
      type metadata accessor for (CGFloat, CGFloat, CGFloat)();
      v38 = v37;
      v39 = *(v31 + 16);
      v39(v33, v43 + *(v37 + 64), v7);
      v39(v36, v42 + *(v38 + 64), v7);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v31 + 8);
      v40(v36, v7);
      v40(v33, v7);
    }
  }

  return v17 & 1;
}

uint64_t _s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_A11HQP_Tt1g5(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v30[2] = a1[2];
  v30[3] = v2;
  v3 = a1[5];
  v30[4] = a1[4];
  v30[5] = v3;
  v4 = a1[1];
  v30[0] = *a1;
  v30[1] = v4;
  v5 = a2[3];
  v29[2] = a2[2];
  v29[3] = v5;
  v6 = a2[5];
  v29[4] = a2[4];
  v29[5] = v6;
  v7 = a2[1];
  v29[0] = *a2;
  v29[1] = v7;
  v28 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v8 = *(MEMORY[0x1E69E7DE0] - 8);
  v24[1] = *(v8 + 64);
  type metadata accessor for (CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat)();
  v26 = v9;
  v25 = *(v8 + 16);
  v27 = v8 + 16;
  v10 = (v8 + 8);
  for (i = 32; i != 224; i += 16)
  {
    MEMORY[0x1EEE9AC00](v9);
    v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = MEMORY[0x1EEE9AC00](v14);
    v17 = v24 - v16;
    v18 = v26;
    v19 = MEMORY[0x1E69E7DE0];
    v20 = v25;
    (v25)(v13, v30 + *(v26 + i), MEMORY[0x1E69E7DE0], v15);
    v20(v17, v29 + *(v18 + i), v19);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v10;
    (*v10)(v17, v19);
    v9 = (v22)(v13, v19);
    if ((v21 & 1) == 0)
    {
      break;
    }
  }

  return v21 & 1;
}

Swift::Void __swiftcall AnimatableAttributeHelper.removeListeners()()
{
  if (*(v1 + *(v0 + 48)))
  {
    AnimatorState.removeListeners()();
  }
}

double AnimatableFrameAttributeVFD.init(position:size:pixelLength:environment:phase:time:transaction:animationsDisabled:)@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  result = 0.0;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 1;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 145) = a8;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0u;
  *(a9 + 136) = 0;
  *(a9 + 144) = 1;
  return result;
}

double AnimatableFrameAttribute.init(position:size:pixelLength:environment:phase:time:transaction:animationsDisabled:)@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  result = 0.0;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 1;
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  *(a9 + 84) = a8;
  return result;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVySdGTt0B5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for CombinedAnimationState<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for CombinedAnimationState);
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if ((v4 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v6);
  outlined init with take of Any(v6, v7);
  outlined init with take of Any(v7, v6);
  swift_dynamicCast();
  return v8;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16ShaderVectorDataV_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAHGTt0B5Tm(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, a2, a3, a4, type metadata accessor for CombinedAnimationState);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  if ((v7 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v6, v9);
  outlined init with take of Any(v9, v10);
  outlined init with take of Any(v10, v9);
  swift_dynamicCast();
  return v11;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_AA0G4PairVyA2KGQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyAOGTt0B5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CombinedAnimationState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>();
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if ((v4 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v7);
  outlined init with take of Any(v7, v8);
  outlined init with take of Any(v8, &v6);
  swift_dynamicCast();
  return v9;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigSd_AA0c19FinishingDefinitionF033_2DFC163B2FD0FA7B91FDE1127AAEDE04LLVySdGTt0B5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimationFinishingDefinitionKey);
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v6);
  outlined init with take of Any(v6, v7);
  outlined init with take of Any(v7, v6);
  type metadata accessor for AnimationFinishingDefinitionKey<Double>?();
  swift_dynamicCast();
  return v8;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVyAHy12CoreGraphics7CGFloatVAKGALG_AA0c19FinishingDefinitionF033_2DFC163B2FD0FA7B91FDE1127AAEDE04LLVyAMGTt0B5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>();
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v6);
  outlined init with take of Any(v6, v7);
  outlined init with take of Any(v7, v6);
  type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
  swift_dynamicCast();
  return v8;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVy12CoreGraphics7CGFloatVAHyAkHyA2KGGG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyANGTt0B5Tm(uint64_t a1, uint64_t (*a2)(void))
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2(0);
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v7);
  outlined init with take of Any(v7, v8);
  outlined init with take of Any(v8, v7);
  swift_dynamicCast();
  return v9;
}

uint64_t _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2KQPG_AA08CombinedcD033_0E899C244938BDADF95265D65460D266LLVyALGTt0B5Tm(uint64_t a1, uint64_t (*a2)(void))
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2(0);
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v8);
  outlined init with take of Any(v8, v9);
  outlined init with take of Any(v9, &v7);
  swift_dynamicCast();
  return v10;
}

Swift::Void __swiftcall AnimatableFrameAttribute.destroy()()
{
  if (*(v0 + 72))
  {
    specialized AnimatorState.removeListeners()();
  }
}

uint64_t protocol witness for ObservedAttribute.destroy() in conformance AnimatableFrameAttribute()
{
  if (*(v0 + 72))
  {
    return specialized AnimatorState.removeListeners()();
  }

  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v224 = *MEMORY[0x1E69E9840];
  v203 = type metadata accessor for OSSignpostID();
  v200 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v9 = v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v184 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v201 = v184 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v184 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v202 = v184 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v192 = v184 - v21;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 16) = 1;
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_128;
  }

  GlassContainerCache.UnwrappedMaterial.animatableData.getter(&v221);
  outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(a4 + 16, &v215, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData, type metadata accessor for HitTestableEvent?);
  if (!v215)
  {
    outlined destroy of HitTestableEvent?(&v215, &lazy cache variable for type metadata for _AnyAnimatableData?);
    goto LABEL_127;
  }

  v187 = v17;
  v219[0] = v215;
  v219[1] = v216;
  v220 = v217;
  v26 = v215;
  if (v221 == v215 && ((*(v221 + 88))(&v221 + 8, v219 + 8) & 1) != 0)
  {
    outlined destroy of _AnyAnimatableData(v219);
    goto LABEL_127;
  }

  v204 = *&a2;
  v193 = a1;
  v198 = v9;
  v184[0] = v12;
  AGGraphClearUpdate();
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(a4, &v215, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassContainerCache.UnwrappedMaterial>, lazy protocol witness table accessor for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial, &type metadata for GlassContainerCache.UnwrappedMaterial, type metadata accessor for AnimatableAttributeHelper);
  v27 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v215, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassContainerCache.UnwrappedMaterial>, lazy protocol witness table accessor for type GlassContainerCache.UnwrappedMaterial and conformance GlassContainerCache.UnwrappedMaterial, &type metadata for GlassContainerCache.UnwrappedMaterial, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v28 = Transaction.effectiveAnimation.getter(*&v27);
  if (v28)
  {
    v29 = v28;
    goto LABEL_18;
  }

  v29 = *&v204;
  if (v204 != 0.0)
  {

LABEL_18:
    v30 = v193;
    outlined init with copy of _AnyAnimatableData(&v221, &v213);
    v31 = v213;
    if (v213 == v26)
    {
      v213[13](v214, v219 + 8);
    }

    else if (v31 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(&v213);
      outlined init with copy of _AnyAnimatableData(v219, &v213);
      (v213[14])(v214);
    }

    v24 = *AGGraphGetValue();
    v189 = a4;
    v32 = *(a4 + 56);
    v186 = a3;
    v184[1] = v29;
    v185 = v27;
    if (!v32)
    {
      outlined init with copy of _AnyAnimatableData(&v213, &v215);
      *&v208 = COERCE_DOUBLE(&type metadata for GlassContainerCache.UnwrappedMaterial);
      type metadata accessor for GlassContainerCache.UnwrappedMaterial.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _AnyAnimatableData>.Type);
      v54 = swift_dynamicCast();
      if (v54)
      {
        v55 = v209;
      }

      else
      {
        v55 = 0;
      }

      if (v54)
      {
        v56 = *(&v209 + 1);
      }

      else
      {
        v56 = 0;
      }

      v188 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA18_AnyAnimatableDataV_Tt4B5(v57, &v215, *&v27, v55, v56, v24);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v59) = CurrentAttribute;
      LODWORD(v27) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v60) = 0;
      }

      else
      {
        LODWORD(v60) = CurrentAttribute;
      }

      v61 = *v30;
      v62 = v30[1];
      outlined copy of Material?(*v30, v62);
      v63 = outlined consume of Material?(v61, v62);
      (*(*v29 + 96))(&v209, v63);
      v65 = *(&v209 + 1);
      v64 = v209;
      v66 = *(&v210 + 1);
      v67 = v210;
      v68 = v211;
      v207 = NAN;
      *&v208 = NAN;
      v205 = NAN;
      v206 = 1.0;
      v215 = v209;
      v216 = v210;
      v217 = *&v211;
      LODWORD(v204) = v212;
      LOBYTE(v218) = v212;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v215, &v208, &v207, &v206, &v205);
      v69 = v207;
      v70 = v208;
      v71 = v205;
      v72 = v206;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_42;
    }

    LOBYTE(v215) = 0;
    v188 = v32;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v29, &v213, *&v27, v24);
    v33 = AGGraphGetCurrentAttribute();
    LODWORD(v27) = v33;
    v34 = *MEMORY[0x1E698D3F8];
    if (v33 == *MEMORY[0x1E698D3F8])
    {
      v35 = 0;
    }

    else
    {
      v35 = v33;
    }

    v36 = *v30;
    v37 = v30[1];
    outlined copy of Material?(*v30, v37);
    v38 = outlined consume of Material?(v36, v37);
    (*(*v29 + 96))(&v209, v38);
    v39 = v209;
    v41 = *(&v210 + 1);
    v40 = v210;
    v42 = v211;
    v43 = v212;
    v207 = NAN;
    *&v208 = NAN;
    v205 = NAN;
    v206 = 1.0;
    v215 = v209;
    v216 = v210;
    v217 = *&v211;
    LOBYTE(v218) = v212;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v215, &v208, &v207, &v206, &v205);
    v44 = v207;
    v45 = *&v208;
    v46 = v205;
    v47 = v206;
    if (one-time initialization token for enabledCategories != -1)
    {
      v204 = *&v208;
      *&v198 = v207;
      v199 = v206;
      v197 = v205;
      swift_once();
      v46 = v197;
      v44 = *&v198;
      v47 = v199;
      v45 = v204;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_199:
      swift_once();
LABEL_52:
      v86 = *(&static Signpost.animationState + 1);
      v60 = static Signpost.animationState;
      v87 = word_1ED5283E8;
      v88 = HIBYTE(word_1ED5283E8);
      v89 = byte_1ED5283EA;
      v90 = static os_signpost_type_t.event.getter();
      v215 = __PAIR128__(v86, v60);
      LOBYTE(v216) = v87;
      BYTE1(v216) = v88;
      BYTE2(v216) = v89;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        a4 = v189;
        goto LABEL_126;
      }

      LODWORD(v199) = v90;
      v91 = one-time initialization token for _signpostLog;

      if (v91 != -1)
      {
        swift_once();
      }

      v92 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v41)
      {
        __break(1u);
      }

      else
      {
        v94 = AGGraphGetAttributeGraph();
        v27 = COERCE_DOUBLE(AGGraphGetCounter());

        v95 = MEMORY[0x1E69E6870];
        *(v93 + 56) = MEMORY[0x1E69E6810];
        *(v93 + 64) = v95;
        *(v93 + 32) = v27;
        v96 = AGGraphGetCurrentAttribute();
        if (v96 != v41)
        {
          v97 = MEMORY[0x1E69E76D0];
          *(v93 + 96) = MEMORY[0x1E69E7668];
          *(v93 + 104) = v97;
          *(v93 + 72) = v96;
          v204 = *&v93;
          *(v93 + 136) = MEMORY[0x1E69E6158];
          *(*&v204 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(*&v204 + 112) = 0xD000000000000011;
          *(*&v204 + 120) = 0x800000018DD7EDF0;
          v27 = v204;
          if (v88)
          {
            LOBYTE(v205) = LOBYTE(v199);
            v207 = v92;
            *&v208 = COERCE_DOUBLE(&dword_18D018000);
            *&v215 = v60;
            *(&v215 + 1) = v86;
            LOBYTE(v216) = v87;
            *&v209 = "Animation: (%p) [%d] %{public}@ updated";
            *(&v209 + 1) = 39;
            LOBYTE(v210) = 2;
            v206 = v204;
            v98 = v187;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v200 + 8))(v98, v203);
          }

          else
          {
            v99 = v60;
            if (v60 == 20)
            {
              v100 = 3;
            }

            else
            {
              v100 = 4;
            }

            a4 = bswap32(v60) | (4 * WORD1(v60));
            v101 = LOBYTE(v199);
            v102 = (v200 + 16);
            v190 = *(v200 + 16);
            v103 = v190(v201, v187, v203);
            v60 = 0;
            LOBYTE(v209) = 1;
            v199 = *&v100;
            v191 = *&v102;
            v196 = 16 * v100;
            *&v197 = v102 - 8;
            v194 = v99;
            v195 = (*&v27 + 32);
            do
            {
              *&v198 = COERCE_DOUBLE(v184);
              MEMORY[0x1EEE9AC00](v103);
              a1 = (v184 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
              v106 = a1 + 1;
              v107 = v199;
              v108 = a1 + 1;
              do
              {
                *(v108 - 1) = 0;
                *v108 = 0;
                v108 += 16;
                --*&v107;
              }

              while (v107 != 0.0);
              v109 = &v195[5 * v60];
              v110 = v199;
              while (1)
              {
                v111 = *(*&v204 + 16);
                if (v60 == v111)
                {
                  break;
                }

                if (v60 >= v111)
                {
                  goto LABEL_191;
                }

                ++v60;
                outlined init with copy of AnyTrackedValue(v109, &v215);
                v112 = *(&v216 + 1);
                LODWORD(v27) = LODWORD(v217);
                __swift_project_boxed_opaque_existential_1(&v215, *(&v216 + 1));
                *(v106 - 1) = CVarArg.kdebugValue(_:)(a4 | v101, v112);
                *v106 = v113 & 1;
                v106 += 16;
                v104 = __swift_destroy_boxed_opaque_existential_1(&v215);
                v109 += 5;
                --*&v110;
                if (v110 == 0.0)
                {
                  goto LABEL_72;
                }
              }

              LOBYTE(v209) = 0;
LABEL_72:
              v114 = v194;
              if (v194 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
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

              if (v114 != 20 && *(a1 + 56) == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v27 = **&v197;
              v115 = v201;
              v116 = v203;
              (**&v197)(v201, v203);
              v117 = __swift_project_value_buffer(v116, static OSSignpostID.continuation);
              v103 = v190(v115, v117, v116);
            }

            while ((v209 & 1) != 0);

            v118 = v203;
            (*&v27)(v201, v203);
            (*&v27)(v187, v118);
          }

          a4 = v189;
          goto LABEL_126;
        }
      }

      __break(1u);
      goto LABEL_207;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v48 = v35;
      v49 = v43;
      v50 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v51 = LODWORD(v27) == v34;
        v204 = *(static CustomEventTrace.recorder + 24);
        *(*&v204 + 4) = 1602;
        v52 = *(v50 + 16);
        LODWORD(v215) = v48;
        BYTE4(v215) = v51;
        *(&v215 + 1) = &type metadata for GlassContainerCache.UnwrappedMaterial;
        *&v216 = v45;
        *(&v216 + 1) = v44;
        v217 = v47;
        v218 = v46;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v199 = v53;

        v27 = COERCE_DOUBLE(v52);
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v39, *(&v39 + 1), v40, v41, v42, v49);

        goto LABEL_51;
      }

      v80 = *(&v39 + 1);
      v79 = v39;
      v81 = v40;
      v82 = v41;
      v83 = v42;
      v84 = v49;
    }

    else
    {
      v80 = *(&v39 + 1);
      v79 = v39;
      v81 = v40;
      v82 = v41;
      v83 = v42;
      v84 = v43;
    }

    outlined consume of Animation.Function(v79, v80, v81, v82, v83, v84);
LABEL_51:
    LODWORD(v41) = v34;
    v85 = one-time initialization token for animationState;

    if (v85 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_199;
  }

  outlined destroy of _AnyAnimatableData(v219);

  a1 = v193;
LABEL_127:
  while (1)
  {
    result = outlined destroy of HitTestableEvent?(a4 + 16, &lazy cache variable for type metadata for _AnyAnimatableData?);
    v150 = v222;
    *(a4 + 16) = v221;
    *(a4 + 32) = v150;
    *(a4 + 48) = v223;
LABEL_128:
    v110 = *(a4 + 56);
    if (v110 == 0.0)
    {
      return result;
    }

    GlassContainerCache.UnwrappedMaterial.animatableData.getter(&v215);
    LOBYTE(v209) = 0;
    v151 = specialized AnimatorState.update(_:at:environment:)(&v215, a3, v24);
    v104 = AGGraphGetCurrentAttribute();
    LODWORD(v60) = *MEMORY[0x1E698D3F8];
    if (v104 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v27) = 0;
    }

    else
    {
      LODWORD(v27) = v104;
    }

    v109 = &type metadata instantiation cache for TupleTypeDescription;
    if (v151)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_193;
      }

      goto LABEL_134;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_195;
    }

LABEL_147:
    v162 = v109[77];
    if (*(v162 + 16) >= 0x43uLL)
    {
      if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v209) = LODWORD(v27);
        BYTE4(v209) = v104 == v60;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_182;
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_139:
    v59 = *(&static Signpost.animationState + 1);
    v68 = static Signpost.animationState;
    v67 = word_1ED5283E8;
    v154 = HIBYTE(word_1ED5283E8);
    v155 = byte_1ED5283EA;
    v156 = static os_signpost_type_t.end.getter();
    v209 = __PAIR128__(v59, v68);
    LOBYTE(v210) = v67;
    BYTE1(v210) = v154;
    BYTE2(v210) = v155;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_181;
    }

    LODWORD(v201) = v156;
    v157 = one-time initialization token for _signpostLog;
    v65 = v191;

    if (v157 != -1)
    {
      swift_once();
    }

    v64 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v66 = COERCE_DOUBLE(swift_allocObject());
    *(v66 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v60)
    {
      break;
    }

    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    v201 = v70;
    *&v196 = v71;
    v197 = v69;
    v199 = v72;
    swift_once();
    v71 = *&v196;
    v69 = v197;
    v72 = v199;
    v70 = v201;
LABEL_42:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_204:
      swift_once();
      goto LABEL_90;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v73 = v60;
      v74 = LODWORD(v27);
      v27 = *&static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v75 = v59 == v74;
        v201 = *(static CustomEventTrace.recorder + 24);
        *(v201 + 2) = 322;
        v76 = *(*&v27 + 16);
        LODWORD(v215) = v73;
        BYTE4(v215) = v75;
        *(&v215 + 1) = &type metadata for GlassContainerCache.UnwrappedMaterial;
        *&v216 = v70;
        *(&v216 + 1) = v69;
        v217 = v72;
        v218 = v71;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v199 = v77;

        v78 = v76;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v64, *&v65, v67, v66, v68, LOBYTE(v204));
        LODWORD(v27) = v74;
      }

      else
      {
        outlined consume of Animation.Function(v64, *&v65, v67, v66, v68, LOBYTE(v204));
        LODWORD(v27) = v74;
      }
    }

    else
    {
      outlined consume of Animation.Function(v64, *&v65, v67, v66, v68, LOBYTE(v204));
    }

    v119 = one-time initialization token for animationState;
    v65 = *&v188;

    if (v119 != -1)
    {
      goto LABEL_204;
    }

LABEL_90:
    v93 = *(&static Signpost.animationState + 1);
    v60 = static Signpost.animationState;
    LOBYTE(v86) = word_1ED5283E8;
    LOBYTE(v41) = HIBYTE(word_1ED5283E8);
    v120 = byte_1ED5283EA;
    v121 = static os_signpost_type_t.begin.getter();
    v215 = __PAIR128__(v93, v60);
    LOBYTE(v216) = v86;
    BYTE1(v216) = v41;
    BYTE2(v216) = v120;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v201) = v121;
      v122 = one-time initialization token for _signpostLog;

      if (v122 != -1)
      {
LABEL_207:
        swift_once();
      }

      v123 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v124 = COERCE_DOUBLE(swift_allocObject());
      *(v124 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == LODWORD(v27))
      {
        __break(1u);
LABEL_209:
        __break(1u);
      }

      v125 = LODWORD(v27);
      v126 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v128 = MEMORY[0x1E69E6870];
      *(v124 + 56) = MEMORY[0x1E69E6810];
      *(v124 + 64) = v128;
      *(v124 + 32) = Counter;
      v129 = AGGraphGetCurrentAttribute();
      if (v129 == v125)
      {
        goto LABEL_209;
      }

      v130 = MEMORY[0x1E69E76D0];
      *(v124 + 96) = MEMORY[0x1E69E7668];
      *(v124 + 104) = v130;
      *(v124 + 72) = v129;
      v204 = *&v124;
      *(v124 + 136) = MEMORY[0x1E69E6158];
      *(*&v204 + 144) = lazy protocol witness table accessor for type String and conformance String();
      *(*&v204 + 112) = 0xD000000000000011;
      *(*&v204 + 120) = 0x800000018DD7EDF0;
      v27 = v204;
      if (v41)
      {
        LOBYTE(v205) = v201;
        v207 = v123;
        *&v208 = COERCE_DOUBLE(&dword_18D018000);
        *&v215 = v60;
        *(&v215 + 1) = v93;
        LOBYTE(v216) = v86;
        *&v209 = "Animation: (%p) [%d] %{public}@ started";
        *(&v209 + 1) = 39;
        LOBYTE(v210) = 2;
        v206 = v204;
        v131 = v184[0];
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v132 = v188;

        (*(v200 + 8))(v131, v203);
      }

      else
      {
        v133 = v60;
        if (v60 == 20)
        {
          v134 = 3;
        }

        else
        {
          v134 = 4;
        }

        a1 = (bswap32(v60) | (4 * WORD1(v60)));
        LODWORD(v60) = v201;
        v135 = (v200 + 16);
        v190 = *(v200 + 16);
        v136 = v190(v198, v184[0], v203);
        v110 = 0.0;
        LOBYTE(v209) = 1;
        v201 = v134;
        v191 = *&v135;
        v196 = 16 * v134;
        *&v197 = v135 - 8;
        v194 = v133;
        v195 = (*&v27 + 32);
        do
        {
          v199 = COERCE_DOUBLE(v184);
          MEMORY[0x1EEE9AC00](v136);
          v138 = v184 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
          v139 = v138 + 8;
          v140 = v201;
          v141 = v138 + 8;
          do
          {
            *(v141 - 1) = 0;
            *v141 = 0;
            v141 += 16;
            --v140;
          }

          while (v140);
          v109 = &v195[5 * *&v110];
          a4 = v201;
          while (1)
          {
            v142 = *(*&v204 + 16);
            if (*&v110 == v142)
            {
              break;
            }

            if (*&v110 >= v142)
            {
              goto LABEL_192;
            }

            ++*&v110;
            outlined init with copy of AnyTrackedValue(v109, &v215);
            v143 = *(&v216 + 1);
            LODWORD(v27) = LODWORD(v217);
            __swift_project_boxed_opaque_existential_1(&v215, *(&v216 + 1));
            *(v139 - 1) = CVarArg.kdebugValue(_:)(a1 | v60, v143);
            *v139 = v144 & 1;
            v139 += 16;
            v104 = __swift_destroy_boxed_opaque_existential_1(&v215);
            v109 += 5;
            if (!--a4)
            {
              goto LABEL_109;
            }
          }

          LOBYTE(v209) = 0;
LABEL_109:
          v145 = v194;
          if (v194 == 20)
          {
            v146 = v198;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v146 = v198;
          }

          if (v138[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v138[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v138[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v145 != 20 && v138[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v27 = **&v197;
          v147 = v203;
          (**&v197)(v146, v203);
          v148 = __swift_project_value_buffer(v147, static OSSignpostID.continuation);
          v136 = v190(v146, v148, v147);
        }

        while ((v209 & 1) != 0);
        v132 = v188;

        v149 = v203;
        (*&v27)(v146, v203);
        (*&v27)(v184[0], v149);
      }

      a4 = v189;
      *(v189 + 56) = v132;
    }

    else
    {

      a4 = v189;
      *(v189 + 56) = v65;
    }

LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(*&v185);

    outlined destroy of _AnyAnimatableData(&v213);
    outlined destroy of _AnyAnimatableData(v219);
    a1 = v193;
    a3 = v186;
  }

  v65 = COERCE_DOUBLE(AGGraphGetAttributeGraph());
  v27 = COERCE_DOUBLE(AGGraphGetCounter());

  v158 = MEMORY[0x1E69E6870];
  *(v66 + 56) = MEMORY[0x1E69E6810];
  *(v66 + 64) = v158;
  *(v66 + 32) = v27;
  v159 = AGGraphGetCurrentAttribute();
  if (v159 == v60)
  {
    goto LABEL_201;
  }

  v160 = MEMORY[0x1E69E76D0];
  *(v66 + 96) = MEMORY[0x1E69E7668];
  *(v66 + 104) = v160;
  *(v66 + 72) = v159;
  v204 = *&v66;
  *(v66 + 136) = MEMORY[0x1E69E6158];
  *(*&v204 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(*&v204 + 112) = 0xD000000000000011;
  *(*&v204 + 120) = 0x800000018DD7EDF0;
  v27 = v204;
  if (v154)
  {
    LOBYTE(v207) = v201;
    *&v219[0] = &dword_18D018000;
    v213 = v64;
    *&v209 = v68;
    *(&v209 + 1) = v59;
    LOBYTE(v210) = v67;
    *&v221 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v221 + 1) = 37;
    LOBYTE(v222) = 2;
    *&v208 = v204;
    v161 = v192;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v200 + 8))(v161, v203);
    goto LABEL_180;
  }

  v163 = v68;
  if (v68 == 20)
  {
    a4 = 3;
  }

  else
  {
    a4 = 4;
  }

  LODWORD(v60) = bswap32(v68) | (4 * WORD1(v68));
  *&v110 = v201;
  v164 = v200 + 16;
  v194 = *(v200 + 16);
  v165 = v194(v202, v192, v203);
  v166 = 0;
  LOBYTE(v221) = 1;
  v200 = v164;
  v198 = 16 * a4;
  *&v199 = v164 - 8;
  v196 = v163;
  *&v197 = *&v27 + 32;
  v195 = a4;
  do
  {
    v201 = v184;
    MEMORY[0x1EEE9AC00](v165);
    a1 = (v184 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0));
    v168 = a1 + 1;
    v169 = a4;
    v170 = a1 + 1;
    do
    {
      *(v170 - 1) = 0;
      *v170 = 0;
      v170 += 16;
      --v169;
    }

    while (v169);
    v109 = (*&v197 + 40 * v166);
    while (1)
    {
      v171 = *(*&v204 + 16);
      if (v166 == v171)
      {
        break;
      }

      if (v166 >= v171)
      {
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        v182 = v104;
        swift_once();
        v104 = v182;
LABEL_134:
        v152 = v109[77];
        if (*(v152 + 16) >= 0x43uLL)
        {
          if (*(v152 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v209) = LODWORD(v27);
            BYTE4(v209) = v104 == v60;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v189 = a4;
          v193 = a1;
          v153 = one-time initialization token for animationState;
          v191 = v110;

          if (v153 != -1)
          {
            goto LABEL_197;
          }

          goto LABEL_139;
        }

        __break(1u);
LABEL_195:
        v183 = v104;
        swift_once();
        v104 = v183;
        goto LABEL_147;
      }

      ++v166;
      outlined init with copy of AnyTrackedValue(v109, &v209);
      v172 = *(&v210 + 1);
      LODWORD(v27) = v211;
      __swift_project_boxed_opaque_existential_1(&v209, *(&v210 + 1));
      *(v168 - 1) = CVarArg.kdebugValue(_:)(v60 | LODWORD(v110), v172);
      *v168 = v173 & 1;
      v168 += 16;
      v104 = __swift_destroy_boxed_opaque_existential_1(&v209);
      v109 += 5;
      if (!--a4)
      {
        goto LABEL_165;
      }
    }

    LOBYTE(v221) = 0;
LABEL_165:
    v174 = v196;
    if (v196 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    a4 = v195;
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

    if (v174 != 20 && *(a1 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v175 = **&v199;
    v27 = *&v202;
    v176 = v203;
    (**&v199)(v202, v203);
    v177 = __swift_project_value_buffer(v176, static OSSignpostID.continuation);
    v165 = v194(*&v27, v177, v176);
  }

  while ((v221 & 1) != 0);

  v178 = v203;
  v175(v202, v203);
  v175(v192, v178);
LABEL_180:

LABEL_181:
  specialized AnimatorState.removeListeners()();

  *(v189 + 56) = 0;
  a1 = v193;
LABEL_182:
  outlined init with copy of _AnyAnimatableData(&v215, &v209);
  if (*(a1 + 8) == 0xFF)
  {

    goto LABEL_187;
  }

  outlined init with copy of _AnyAnimatableData(&v209, &v221);
  if (*(a1 + 8) == 1)
  {
    v179 = *a1;
    v180 = *(**a1 + 152);

    v181 = v180(&v221);
    outlined consume of Material.ID(v179, 1u);

    outlined destroy of _AnyAnimatableData(&v221);
    outlined destroy of _AnyAnimatableData(&v209);
    outlined destroy of _AnyAnimatableData(&v215);
    result = outlined consume of Material.ID(*a1, *(a1 + 8));
    *a1 = v181;
    *(a1 + 8) = 1;
  }

  else
  {

    outlined destroy of _AnyAnimatableData(&v221);
LABEL_187:
    outlined destroy of _AnyAnimatableData(&v209);
    result = outlined destroy of _AnyAnimatableData(&v215);
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v228 = *MEMORY[0x1E69E9840];
  v202 = type metadata accessor for OSSignpostID();
  v198 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v9 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v182 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v200 = &v182 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v182 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v201 = &v182 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v191 = &v182 - v21;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    a1[340] = 1;
  }

  else if (a1[340] != 1)
  {
    goto LABEL_130;
  }

  (*(**(a1 + 15) + 96))(v226);
  outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(a4 + 16, v221, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData, type metadata accessor for HitTestableEvent?);
  if (!*v221)
  {
    outlined destroy of HitTestableEvent?(v221, &lazy cache variable for type metadata for _AnyAnimatableData?);
    goto LABEL_129;
  }

  v185 = v17;
  v224[0] = *v221;
  v224[1] = *&v221[16];
  v225 = *&v221[32];
  v26 = *v221;
  if (*&v226[0] == *v221 && ((*(*&v226[0] + 88))(v226 + 8, v224 + 8) & 1) != 0)
  {
    goto LABEL_128;
  }

  v203 = *&a2;
  v192 = a1;
  v199 = *&v9;
  v182 = v12;
  AGGraphClearUpdate();
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(a4, v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for AnimatableAttributeHelper);
  v27 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v221, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassEffectShapeModifier>, lazy protocol witness table accessor for type GlassEffectShapeModifier and conformance GlassEffectShapeModifier, &type metadata for GlassEffectShapeModifier, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v186 = v27;
  v187 = Transaction.effectiveAnimation.getter(v27);
  if (!v187)
  {
    if (v203 == 0.0)
    {
      outlined destroy of _AnyAnimatableData(v224);

      a1 = v192;
      goto LABEL_129;
    }
  }

  v28 = v192;
  outlined init with copy of _AnyAnimatableData(v226, &v222);
  v29 = v222;
  if (v222 == v26)
  {
    (*(v222 + 104))(v223, v224 + 8);
  }

  else if (v29 == type metadata accessor for ZeroVTable())
  {
    outlined destroy of _AnyAnimatableData(&v222);
    outlined init with copy of _AnyAnimatableData(v224, &v222);
    (*(v222 + 112))(v223);
  }

  v24 = *AGGraphGetValue();
  v188 = a4;
  v30 = *(a4 + 56);
  v184 = a3;
  if (!v30)
  {
    outlined init with copy of _AnyAnimatableData(&v222, v221);
    v214 = &type metadata for GlassEffectShapeModifier;
    type metadata accessor for GlassEffectShapeModifier.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _AnyAnimatableData>.Type);
    v54 = swift_dynamicCast();
    if (v54)
    {
      v55 = v220[0];
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = v220[1];
    }

    else
    {
      v56 = 0;
    }

    v57 = v186;

    v58 = v187;

    v33 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA18_AnyAnimatableDataV_Tt4B5(v59, v221, v57, v55, v56, v24);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    LODWORD(v56) = CurrentAttribute;
    LODWORD(v61) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v62 = 0;
    }

    else
    {
      v62 = CurrentAttribute;
    }

    LODWORD(v197) = v62;
    memcpy(v220, v28, 0x154uLL);
    memcpy(v221, v28, sizeof(v221));
    outlined init with copy of GlassEffectShapeModifier(v220, &v214);
    v63 = outlined destroy of GlassEffectShapeModifier(v221);
    (*(*v58 + 96))(&v208, v63);
    v64 = v208;
    v65 = v209;
    v67 = v210;
    v66 = v211;
    a3 = v212;
    v206 = NAN;
    *&v207 = NAN;
    v204 = NAN;
    v205 = 1.0;
    v214 = v208;
    v215 = v209;
    v216 = v210;
    v217 = v211;
    v218 = v212;
    LODWORD(v203) = v213;
    LOBYTE(v219) = v213;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v214, &v207, &v206, &v205, &v204);
    v68 = *&v206;
    v69 = v207;
    v70 = v204;
    v71 = v205;
    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_201;
    }

    goto LABEL_40;
  }

  v221[0] = 0;
  v31 = v187;
  v183 = v30;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v187, &v222, v186, v24);
  v32 = AGGraphGetCurrentAttribute();
  v33 = v32;
  v34 = *MEMORY[0x1E698D3F8];
  if (v32 == *MEMORY[0x1E698D3F8])
  {
    v35 = 0;
  }

  else
  {
    v35 = v32;
  }

  memcpy(v220, v28, 0x154uLL);
  memcpy(v221, v28, sizeof(v221));
  outlined init with copy of GlassEffectShapeModifier(v220, &v214);
  v36 = outlined destroy of GlassEffectShapeModifier(v221);
  (*(*v31 + 96))(&v208, v36);
  Counter = v208;
  v38 = v209;
  v40 = v210;
  v39 = v211;
  v41 = v212;
  v42 = v213;
  v206 = NAN;
  *&v207 = NAN;
  v204 = NAN;
  v205 = 1.0;
  v214 = v208;
  v215 = v209;
  v216 = v210;
  v217 = v211;
  v218 = v212;
  LOBYTE(v219) = v213;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v214, &v207, &v206, &v205, &v204);
  v43 = *&v206;
  v44 = *&v207;
  v45 = *&v204;
  v46 = v205;
  if (one-time initialization token for enabledCategories != -1)
  {
    v203 = *&v207;
    v196 = *&v204;
    v197 = v206;
    v199 = v205;
    swift_once();
    v45 = v196;
    v43 = *&v197;
    v46 = v199;
    v44 = v203;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v47 = v35;
      v48 = v42;
      v49 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v50 = v33 == v34;
        v203 = *(static CustomEventTrace.recorder + 24);
        *(*&v203 + 4) = 1602;
        v51 = *(v49 + 16);
        LODWORD(v214) = v47;
        BYTE4(v214) = v50;
        v215 = &type metadata for GlassEffectShapeModifier;
        v216 = *&v44;
        v217 = v43;
        v218 = *&v46;
        v219 = *&v45;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v199 = v52;

        v53 = v51;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(Counter, v38, v40, v39, v41, v48);

        goto LABEL_49;
      }

      v79 = Counter;
      v80 = v38;
      v81 = v40;
      v82 = v39;
      v83 = v41;
      v84 = v48;
    }

    else
    {
      v79 = Counter;
      v80 = v38;
      v81 = v40;
      v82 = v39;
      v83 = v41;
      v84 = v42;
    }

    outlined consume of Animation.Function(v79, v80, v81, v82, v83, v84);
LABEL_49:
    LODWORD(v40) = v34;
    v85 = one-time initialization token for animationState;
    v33 = v183;

    if (v85 == -1)
    {
      goto LABEL_50;
    }

    goto LABEL_198;
  }

  __break(1u);
LABEL_198:
  swift_once();
LABEL_50:
  v87 = *(&static Signpost.animationState + 1);
  v86 = static Signpost.animationState;
  v88 = word_1ED5283E8;
  v89 = HIBYTE(word_1ED5283E8);
  v90 = byte_1ED5283EA;
  v91 = static os_signpost_type_t.event.getter();
  v214 = v86;
  v215 = v87;
  LOBYTE(v216) = v88;
  BYTE1(v216) = v89;
  BYTE2(v216) = v90;
  if (Signpost.isEnabled.getter())
  {
    LODWORD(v203) = v91;
    v92 = one-time initialization token for _signpostLog;

    if (v92 != -1)
    {
      swift_once();
    }

    v93 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v40)
    {
      __break(1u);
    }

    else
    {
      v33 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v95 = MEMORY[0x1E69E6870];
      *(v94 + 56) = MEMORY[0x1E69E6810];
      *(v94 + 64) = v95;
      *(v94 + 32) = Counter;
      v96 = AGGraphGetCurrentAttribute();
      if (v96 != v40)
      {
        a3 = v94;
        v97 = MEMORY[0x1E69E76D0];
        *(v94 + 96) = MEMORY[0x1E69E7668];
        *(v94 + 104) = v97;
        *(v94 + 72) = v96;
        *(v94 + 136) = MEMORY[0x1E69E6158];
        *(v94 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v94 + 112) = 0xD00000000000003FLL;
        *(v94 + 120) = 0x800000018DD7EE50;
        if (v89)
        {
          LOBYTE(v204) = LOBYTE(v203);
          v206 = *&v93;
          *&v207 = COERCE_DOUBLE(&dword_18D018000);
          v214 = v86;
          v215 = v87;
          LOBYTE(v216) = v88;
          v208 = "Animation: (%p) [%d] %{public}@ updated";
          v209 = 39;
          LOBYTE(v210) = 2;
          v205 = *&v94;
          v98 = v185;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

          (*(v198 + 8))(v98, v202);
        }

        else
        {
          v61 = v86;
          if (v86 == 20)
          {
            v99 = 3;
          }

          else
          {
            v99 = 4;
          }

          a4 = bswap32(v86) | (4 * (v86 >> 16));
          LODWORD(v203) = LOBYTE(v203);
          v100 = (v198 + 16);
          v189 = *(v198 + 16);
          v101 = v189(v200, v185, v202);
          v102 = 0;
          LOBYTE(v208) = 1;
          v190 = v100;
          v196 = 16 * v99;
          *&v197 = v100 - 8;
          v194 = v61;
          *&v195 = a3 + 32;
          v193 = *&v99;
          do
          {
            v199 = COERCE_DOUBLE(&v182);
            MEMORY[0x1EEE9AC00](v101);
            a1 = &v182 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
            v105 = a1 + 8;
            v106 = v99;
            v107 = a1 + 8;
            do
            {
              *(v107 - 1) = 0;
              *v107 = 0;
              v107 += 16;
              --v106;
            }

            while (v106);
            v108 = *&v195 + 40 * v102;
            while (1)
            {
              v109 = *(a3 + 16);
              if (v102 == v109)
              {
                break;
              }

              if (v102 >= v109)
              {
                goto LABEL_190;
              }

              ++v102;
              outlined init with copy of AnyTrackedValue(v108, &v214);
              LODWORD(v61) = a3;
              v110 = v217;
              __swift_project_boxed_opaque_existential_1(&v214, v217);
              *(v105 - 1) = CVarArg.kdebugValue(_:)(a4 | LODWORD(v203), v110);
              *v105 = v111 & 1;
              v105 += 16;
              v103 = __swift_destroy_boxed_opaque_existential_1(&v214);
              v108 += 40;
              if (!--v99)
              {
                goto LABEL_70;
              }
            }

            LOBYTE(v208) = 0;
LABEL_70:
            v61 = v194;
            if (v194 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (a1[8] == 1)
            {
              kdebug_trace_string();
            }

            if (a1[24] == 1)
            {
              kdebug_trace_string();
            }

            if (a1[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v61 != 20 && a1[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v112 = **&v197;
            v113 = v200;
            v114 = v202;
            (**&v197)(v200, v202);
            v115 = __swift_project_value_buffer(v114, static OSSignpostID.continuation);
            v101 = v189(v113, v115, v114);
            v99 = *&v193;
          }

          while ((v208 & 1) != 0);

          v116 = v202;
          v112(v200, v202);
          v112(v185, v116);
        }

        goto LABEL_86;
      }
    }

    __break(1u);
    goto LABEL_206;
  }

LABEL_86:
  a1 = v192;
  a4 = v188;
  while (1)
  {
    a3 = v184;
    specialized AnimatorState.addListeners(transaction:)(v186);

    outlined destroy of _AnyAnimatableData(&v222);
LABEL_128:
    outlined destroy of _AnyAnimatableData(v224);
LABEL_129:
    result = outlined destroy of HitTestableEvent?(a4 + 16, &lazy cache variable for type metadata for _AnyAnimatableData?);
    v146 = v226[1];
    *(a4 + 16) = v226[0];
    *(a4 + 32) = v146;
    *(a4 + 48) = v227;
LABEL_130:
    v99 = *(a4 + 56);
    if (!v99)
    {
      return result;
    }

    v147 = *(**(a1 + 15) + 96);

    v147(v221, v148);
    LOBYTE(v220[0]) = 0;
    v149 = specialized AnimatorState.update(_:at:environment:)(v221, a3, v24);
    v103 = AGGraphGetCurrentAttribute();
    LODWORD(v61) = *MEMORY[0x1E698D3F8];
    if (v103 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v108) = 0;
    }

    else
    {
      LODWORD(v108) = v103;
    }

    v102 = &type metadata instantiation cache for TupleTypeDescription;
    if (v149)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_192;
      }

      goto LABEL_136;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_194;
    }

LABEL_149:
    v161 = *(v102 + 616);
    if (*(v161 + 16) >= 0x43uLL)
    {
      if (*(v161 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v220[0]) = v108;
        BYTE4(v220[0]) = v103 == v61;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_184;
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_141:
    v65 = *(&static Signpost.animationState + 1);
    v56 = static Signpost.animationState;
    v67 = word_1ED5283E8;
    v152 = HIBYTE(word_1ED5283E8);
    v153 = byte_1ED5283EA;
    v154 = static os_signpost_type_t.end.getter();
    v220[0] = v56;
    v220[1] = v65;
    LOBYTE(v220[2]) = v67;
    BYTE1(v220[2]) = v152;
    BYTE2(v220[2]) = v153;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_183;
    }

    LODWORD(v200) = v154;
    v155 = one-time initialization token for _signpostLog;
    v33 = v190;

    if (v155 != -1)
    {
      swift_once();
    }

    v64 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v66 = COERCE_DOUBLE(swift_allocObject());
    *(v66 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v61)
    {
      break;
    }

    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    v195 = v71;
    v196 = v69;
    v193 = v70;
    v194 = v68;
    swift_once();
    v70 = v193;
    v68 = v194;
    v71 = v195;
    v69 = v196;
LABEL_40:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_203:
      swift_once();
      goto LABEL_90;
    }

    v72 = *(static CustomEventTrace.enabledCategories + 98);
    LODWORD(v200) = v61;
    if (v72 == 1)
    {
      v73 = v33;
      v74 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v75 = v56 == v200;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v196 = a3;
        v76 = *(v74 + 16);
        LODWORD(v214) = LODWORD(v197);
        BYTE4(v214) = v75;
        v215 = &type metadata for GlassEffectShapeModifier;
        v216 = v69;
        v217 = v68;
        v218 = *&v71;
        v219 = v70;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v197 = v77;

        v78 = v76;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v64, v65, v67, v66, v196, LOBYTE(v203));
      }

      else
      {
        outlined consume of Animation.Function(v64, v65, v67, v66, a3, LOBYTE(v203));
      }

      v33 = v73;
    }

    else
    {
      outlined consume of Animation.Function(v64, v65, v67, v66, a3, LOBYTE(v203));
    }

    v117 = one-time initialization token for animationState;

    if (v117 != -1)
    {
      goto LABEL_203;
    }

LABEL_90:
    v87 = *(&static Signpost.animationState + 1);
    v86 = static Signpost.animationState;
    LOBYTE(Counter) = word_1ED5283E8;
    LOBYTE(v40) = HIBYTE(word_1ED5283E8);
    v118 = byte_1ED5283EA;
    v119 = static os_signpost_type_t.begin.getter();
    v214 = v86;
    v215 = v87;
    LOBYTE(v216) = Counter;
    BYTE1(v216) = v40;
    BYTE2(v216) = v118;
    if (Signpost.isEnabled.getter())
    {
      LODWORD(v197) = v119;
      v120 = one-time initialization token for _signpostLog;

      if (v120 != -1)
      {
LABEL_206:
        swift_once();
      }

      v121 = _signpostLog;
      v183 = v33;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      *&v122 = COERCE_DOUBLE(swift_allocObject());
      *(v122 + 16) = xmmword_18DDAF080;
      v123 = AGGraphGetCurrentAttribute();
      v124 = v200;
      if (v123 == v200)
      {
        __break(1u);
LABEL_208:
        __break(1u);
      }

      v125 = AGGraphGetAttributeGraph();
      v99 = AGGraphGetCounter();

      v126 = MEMORY[0x1E69E6870];
      *(v122 + 56) = MEMORY[0x1E69E6810];
      *(v122 + 64) = v126;
      *(v122 + 32) = v99;
      v127 = AGGraphGetCurrentAttribute();
      if (v127 == v124)
      {
        goto LABEL_208;
      }

      v128 = MEMORY[0x1E69E76D0];
      *(v122 + 96) = MEMORY[0x1E69E7668];
      *(v122 + 104) = v128;
      *(v122 + 72) = v127;
      v203 = *&v122;
      *(v122 + 136) = MEMORY[0x1E69E6158];
      *(*&v203 + 144) = lazy protocol witness table accessor for type String and conformance String();
      *(*&v203 + 112) = 0xD00000000000003FLL;
      *(*&v203 + 120) = 0x800000018DD7EE50;
      v129 = v203;
      if (v40)
      {
        LOBYTE(v204) = LOBYTE(v197);
        v206 = *&v121;
        *&v207 = COERCE_DOUBLE(&dword_18D018000);
        v214 = v86;
        v215 = v87;
        LOBYTE(v216) = Counter;
        v208 = "Animation: (%p) [%d] %{public}@ started";
        v209 = 39;
        LOBYTE(v210) = 2;
        v205 = v203;
        v130 = v182;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v33 = v183;

        (*(v198 + 8))(v130, v202);
      }

      else
      {
        v131 = v86;
        if (v86 == 20)
        {
          a4 = 3;
        }

        else
        {
          a4 = 4;
        }

        a1 = (bswap32(v86) | (4 * (v86 >> 16)));
        LODWORD(v61) = LOBYTE(v197);
        v132 = (v198 + 16);
        v189 = *(v198 + 16);
        v133 = v189(*&v199, v182, v202);
        v102 = 0;
        LOBYTE(v208) = 1;
        v190 = v132;
        v196 = 16 * a4;
        *&v197 = v132 - 8;
        v194 = v131;
        *&v195 = *&v129 + 32;
        v193 = *&a4;
        do
        {
          v200 = &v182;
          MEMORY[0x1EEE9AC00](v133);
          v135 = &v182 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
          a3 = (v135 + 8);
          v136 = a4;
          v137 = v135 + 8;
          do
          {
            *(v137 - 1) = 0;
            *v137 = 0;
            v137 += 16;
            --v136;
          }

          while (v136);
          v108 = *&v195 + 40 * v102;
          while (1)
          {
            v138 = *(*&v203 + 16);
            if (v102 == v138)
            {
              break;
            }

            if (v102 >= v138)
            {
              goto LABEL_191;
            }

            ++v102;
            outlined init with copy of AnyTrackedValue(v108, &v214);
            v139 = v217;
            v99 = v218;
            __swift_project_boxed_opaque_existential_1(&v214, v217);
            *(a3 - 8) = CVarArg.kdebugValue(_:)(a1 | v61, v139);
            *a3 = v140 & 1;
            a3 += 16;
            v103 = __swift_destroy_boxed_opaque_existential_1(&v214);
            v108 += 40;
            if (!--a4)
            {
              goto LABEL_109;
            }
          }

          LOBYTE(v208) = 0;
LABEL_109:
          v141 = v194;
          if (v194 == 20)
          {
            v99 = *&v199;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v99 = *&v199;
          }

          a4 = *&v193;
          if (v135[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v135[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v135[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v141 != 20 && v135[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v142 = **&v197;
          v143 = v202;
          (**&v197)(v99, v202);
          v144 = __swift_project_value_buffer(v143, static OSSignpostID.continuation);
          v133 = v189(v99, v144, v143);
        }

        while ((v208 & 1) != 0);
        v33 = v183;

        v145 = v202;
        v142(v99, v202);
        v142(v182, v145);
      }
    }

    else
    {
    }

    a4 = v188;
    *(v188 + 56) = v33;
    a1 = v192;
  }

  v33 = AGGraphGetAttributeGraph();
  a3 = AGGraphGetCounter();

  v156 = MEMORY[0x1E69E6870];
  *(v66 + 56) = MEMORY[0x1E69E6810];
  *(v66 + 64) = v156;
  *(v66 + 32) = a3;
  v157 = AGGraphGetCurrentAttribute();
  if (v157 == v61)
  {
    goto LABEL_200;
  }

  v158 = MEMORY[0x1E69E76D0];
  *(v66 + 96) = MEMORY[0x1E69E7668];
  *(v66 + 104) = v158;
  *(v66 + 72) = v157;
  v203 = *&v66;
  *(v66 + 136) = MEMORY[0x1E69E6158];
  *(*&v203 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(*&v203 + 112) = 0xD00000000000003FLL;
  *(*&v203 + 120) = 0x800000018DD7EE50;
  v159 = v203;
  if (v152)
  {
    LOBYTE(v222) = v200;
    v208 = &dword_18D018000;
    *&v226[0] = v64;
    v220[0] = v56;
    v220[1] = v65;
    LOBYTE(v220[2]) = v67;
    v214 = "Animation: (%p) [%d] %{public}@ ended";
    v215 = 37;
    LOBYTE(v216) = 2;
    *v224 = v203;
    v160 = v191;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v198 + 8))(v160, v202);
    goto LABEL_182;
  }

  v162 = v56;
  if (v56 == 20)
  {
    a3 = 3;
  }

  else
  {
    a3 = 4;
  }

  LODWORD(v61) = bswap32(v56) | (4 * WORD1(v56));
  v99 = v200;
  v163 = v198 + 16;
  v193 = *(v198 + 16);
  v164 = (*&v193)(v201, v191, v202);
  v102 = 0;
  LOBYTE(v214) = 1;
  v200 = a3;
  v198 = v163;
  v196 = 16 * a3;
  *&v197 = v163 - 8;
  v194 = v162;
  *&v195 = *&v159 + 32;
  do
  {
    v199 = COERCE_DOUBLE(&v182);
    MEMORY[0x1EEE9AC00](v164);
    a1 = &v182 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
    v166 = a1 + 8;
    v167 = v200;
    v168 = a1 + 8;
    do
    {
      *(v168 - 1) = 0;
      *v168 = 0;
      v168 += 16;
      --v167;
    }

    while (v167);
    v108 = *&v195 + 40 * v102;
    a4 = v200;
    while (1)
    {
      v169 = *(*&v203 + 16);
      if (v102 == v169)
      {
        break;
      }

      if (v102 >= v169)
      {
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        v180 = v103;
        swift_once();
        v103 = v180;
LABEL_136:
        v150 = *(v102 + 616);
        if (*(v150 + 16) >= 0x43uLL)
        {
          if (*(v150 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v220[0]) = v108;
            BYTE4(v220[0]) = v103 == v61;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v188 = a4;
          v192 = a1;
          v151 = one-time initialization token for animationState;
          v190 = v99;

          if (v151 != -1)
          {
            goto LABEL_196;
          }

          goto LABEL_141;
        }

        __break(1u);
LABEL_194:
        v181 = v103;
        swift_once();
        v103 = v181;
        goto LABEL_149;
      }

      ++v102;
      outlined init with copy of AnyTrackedValue(v108, v220);
      v170 = v220[3];
      a3 = v220[4];
      __swift_project_boxed_opaque_existential_1(v220, v220[3]);
      *(v166 - 1) = CVarArg.kdebugValue(_:)(v61 | v99, v170);
      *v166 = v171 & 1;
      v166 += 16;
      v103 = __swift_destroy_boxed_opaque_existential_1(v220);
      v108 += 40;
      if (!--a4)
      {
        goto LABEL_167;
      }
    }

    LOBYTE(v214) = 0;
LABEL_167:
    v172 = v194;
    if (v194 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a1[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a1[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v172 != 20 && a1[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v173 = **&v197;
    a3 = v201;
    v174 = v202;
    (**&v197)(v201, v202);
    v175 = __swift_project_value_buffer(v174, static OSSignpostID.continuation);
    v164 = (*&v193)(a3, v175, v174);
  }

  while ((v214 & 1) != 0);

  v176 = v202;
  v173(v201, v202);
  v173(v191, v176);
LABEL_182:

LABEL_183:
  specialized AnimatorState.removeListeners()();

  *(v188 + 56) = 0;
  a1 = v192;
LABEL_184:
  outlined init with copy of _AnyAnimatableData(v221, v220);
  outlined init with copy of _AnyAnimatableData(v220, &v214);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v178 = *(a1 + 15);
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(&v214, &v208);
    (*(*v178 + 104))(&v208);

    outlined destroy of _AnyAnimatableData(&v214);
    outlined destroy of _AnyAnimatableData(v220);
    result = outlined destroy of _AnyAnimatableData(v221);
  }

  else
  {
    v179 = (*(*v178 + 120))(&v214);

    outlined destroy of _AnyAnimatableData(&v214);
    outlined destroy of _AnyAnimatableData(v220);
    outlined destroy of _AnyAnimatableData(v221);

    *(a1 + 15) = v179;
  }

  a1[340] = 1;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(unint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4)
{
  v276 = *MEMORY[0x1E69E9840];
  v238 = type metadata accessor for OSSignpostID();
  v234 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v15 = (&v218 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v218 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v236 = &v218 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v218 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v237 = &v218 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v228 = &v218 - v27;
  if (*(a4 + 6))
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

  v31 = &v260;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 48) = 1;
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_129;
  }

  v32 = *(a1 + 16);
  v257 = *a1;
  v258 = v32;
  v259 = *(a1 + 32);
  v33 = GlassAppearanceScaleEffect.$s7SwiftUI26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLL10AnimatablefMm_15_animatableDatafMu_.getter();
  v4 = *&v33;
  v5 = v34;
  v6 = v35;
  if (*(a4 + 40))
  {
    goto LABEL_128;
  }

  v8 = *(a4 + 3);
  v7 = *(a4 + 4);
  v9 = *(a4 + 2);
  if (_s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_AA0C4PairVyA2HGQP_Tt1g5(v33, v34, v35, v9, v8, v7))
  {
    goto LABEL_128;
  }

  v218 = v18;
  v219 = v23;
  v233 = v15;
  v221 = a3;
  AGGraphClearUpdate();
  v36 = a4[1];
  v273 = *a4;
  v274 = v36;
  *v275 = a4[2];
  *&v275[12] = *(a4 + 44);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v273, &v267, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
  v37 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v273, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v223 = v37;
  v38 = Transaction.effectiveAnimation.getter(v37);
  if (v38)
  {
    v222 = v38;
    v226 = a1;
    v227 = a4;
  }

  else
  {
    if (!a2)
    {

      a3 = v221;
      v31 = &v260;
      goto LABEL_128;
    }

    v226 = a1;
    v227 = a4;

    v222 = a2;
  }

  *&v251[1] = v6;
  v252 = v4;
  v250 = v9;
  *v251 = v5;
  *v249 = v8;
  *&v249[1] = v7;
  v39 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v235 = COERCE_DOUBLE(&v218);
  v40 = MEMORY[0x1E69E7DE0];
  v41 = *(MEMORY[0x1E69E7DE0] - 8);
  v42 = v41[8];
  v43 = MEMORY[0x1EEE9AC00](v39);
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v41[2];
  v46 = v45(&v218 - v44, &v252, v40, v43);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v45(&v218 - v44, &v250, v40, v47);
  v231 = *(v39 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v48 = v41[1];
  v239 = *&v48;
  v48(&v218 - v44, v40);
  v48(&v218 - v44, v40);
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v50 = v49;
  v51 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
  v235 = COERCE_DOUBLE(&v218);
  v52 = *(v50 - 8);
  v53 = v52[8];
  v54 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v218 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v52[2];
  v57 = v56(v55, v251, v50, v54);
  v232 = &v218;
  v58 = MEMORY[0x1EEE9AC00](v57);
  v56(v55, v249, v50, v58);
  v59 = *(v51 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v60 = v52[1];
  v60(v55, v50);
  v60(v55, v50);
  v61 = v253[0];
  v63 = v254;
  v62 = *&v255;
  v60(&v254, v50);
  (*&v239)(v253, MEMORY[0x1E69E7DE0]);
  v64 = *&v275[16];
  v30 = *AGGraphGetValue();
  if (!v64)
  {
    v235 = v5;
    v236 = v4;
    *&v248[2] = &type metadata for GlassAppearanceScaleEffect;
    type metadata accessor for GlassAppearanceScaleEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Type, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>);
    LODWORD(v230) = swift_dynamicCast();
    v229 = v248[0];
    v232 = *&v248[1];
    type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>();
    v83 = swift_allocObject();
    *(v83 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    v84 = MEMORY[0x1E69E7DE0];
    v225 = v59;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v85 = v246[1];
    v86 = v247;
    v87 = v246[0];
    v60(v246, v50);
    v88 = v84;
    v89 = v239;
    (*&v239)(&v247, v88);
    *(v83 + 32) = v86;
    *(v83 + 40) = v87;
    *(v83 + 48) = v85;
    *(v83 + 72) = 0;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v91 = v244[1];
    v90 = v245;
    v92 = v244[0];
    v93 = v50;
    v94 = v222;
    v95 = v83;
    v60(v244, v93);
    (*&v89)(&v245, MEMORY[0x1E69E7DE0]);
    if (v230)
    {
      v96 = v229;
    }

    else
    {
      v96 = 0.0;
    }

    if (v230)
    {
      v97 = v232;
    }

    else
    {
      v97 = 0;
    }

    *(v83 + 80) = v90;
    *(v83 + 88) = v92;
    *(v83 + 96) = v91;
    *(v83 + 104) = 0;
    *(v83 + 108) = 1;
    v98 = MEMORY[0x1E69E7CC0];
    *(v83 + 112) = MEMORY[0x1E69E7CC0];
    *(v83 + 120) = v98;
    *(v83 + 128) = 0;
    *(v83 + 136) = 0;
    *(v83 + 144) = 0;
    *(v83 + 152) = v98;
    *(v83 + 16) = v94;
    swift_beginAccess();
    *(v83 + 32) = v61;
    *(v83 + 40) = v63;
    *(v83 + 48) = v62;
    *(v83 + 136) = v96;
    *(v83 + 144) = v97;
    v99 = v223;
    *(v83 + 56) = v30;
    *(v83 + 72) = v30;

    v100 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v99));
    if (v101)
    {

      v102 = 0;
      *(v83 + 64) = 0;
      LOBYTE(v83) = 1;
      v5 = v235;
      v4 = v236;
      goto LABEL_79;
    }

    if (v100 <= 0.0)
    {
      *(v83 + 64) = 0;
      v5 = v235;
      v4 = v236;
    }

    else
    {
      v108 = log2(v100 * 240.0);
      v109 = exp2(floor(v108 + 0.01)) * 0.00416666667;
      *(v83 + 64) = v109;
      v5 = v235;
      v4 = v236;
      if (v109 >= 0.0166666667)
      {

        v102 = 0;
        LOBYTE(v83) = 1;
        goto LABEL_79;
      }
    }

    v143 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v99);
    v102 = v143;
    v83 = HIDWORD(v143) & 1;

LABEL_79:
    *(v95 + 104) = v102;
    v220 = v95;
    *(v95 + 108) = v83;
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v145 = CurrentAttribute;
    LODWORD(v110) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v146 = 0;
    }

    else
    {
      v146 = CurrentAttribute;
    }

    (*(*v94 + 96))(&v260);
    v148 = v260;
    v147 = v261;
    v31 = v262;
    v149 = v263;
    v150 = v264;
    v242 = NAN;
    *&v243 = NAN;
    v240 = 0x7FF8000000000000;
    v241 = 1.0;
    v267 = v260;
    v268 = v261;
    v269 = *&v262;
    v270 = *&v263;
    v271 = v264;
    LODWORD(v239) = v265;
    LOBYTE(v272) = v265;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v267, &v243, &v242, &v241, &v240);
    v8 = v242;
    v7 = *&v243;
    v151 = v240;
    v9 = v241;
    if (one-time initialization token for enabledCategories != -1)
    {
      v236 = v240;
      swift_once();
      v151 = v236;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v152 = static CustomEventTrace.recorder) != 0)
      {
        v153 = v145 == v110;
        v236 = v150;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v154 = *(v152 + 16);
        LODWORD(v267) = v146;
        BYTE4(v267) = v153;
        v268 = &type metadata for GlassAppearanceScaleEffect;
        v269 = v7;
        v270 = v8;
        v271 = *&v9;
        v272 = v151;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v155 = v154;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v148, v147, v31, v149, v236, LOBYTE(v239));
      }

      else
      {
        outlined consume of Animation.Function(v148, v147, v31, v149, v150, LOBYTE(v239));
      }

      v156 = one-time initialization token for animationState;

      v31 = &v260;
      if (v156 == -1)
      {
        goto LABEL_90;
      }
    }

    swift_once();
LABEL_90:
    v116 = *(&static Signpost.animationState + 1);
    v111 = static Signpost.animationState;
    LOBYTE(v75) = word_1ED5283E8;
    v112 = HIBYTE(word_1ED5283E8);
    v157 = byte_1ED5283EA;
    v158 = static os_signpost_type_t.begin.getter();
    v267 = v111;
    v268 = v116;
    LOBYTE(v269) = v75;
    BYTE1(v269) = v112;
    BYTE2(v269) = v157;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v167 = v220;

      goto LABEL_126;
    }

    LODWORD(v236) = v158;
    v159 = one-time initialization token for _signpostLog;

    if (v159 != -1)
    {
      goto LABEL_202;
    }

    goto LABEL_92;
  }

  v65 = &type metadata for GlassAppearanceScaleEffect;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v273, &v267, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v267) = 0;
  v66 = v222;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v222, v223, v61, v63, v62, v30);
  v67 = AGGraphGetCurrentAttribute();
  LODWORD(v68) = v67;
  v69 = *MEMORY[0x1E698D3F8];
  if (v67 == *MEMORY[0x1E698D3F8])
  {
    v70 = 0;
  }

  else
  {
    v70 = v67;
  }

  LODWORD(v235) = v70;
  (*(*v66 + 96))(&v260);
  v71 = v260;
  v72 = v261;
  v74 = v262;
  v73 = v263;
  v75 = v264;
  v266[0] = NAN;
  v248[0] = NAN;
  v246[0] = 1.0;
  v244[0] = NAN;
  v267 = v260;
  v268 = v261;
  v269 = *&v262;
  v270 = *&v263;
  v271 = v264;
  LODWORD(v239) = v265;
  LOBYTE(v272) = v265;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v267, v266, v248, v246, v244);
  v7 = v266[0];
  v8 = v248[0];
  v9 = v246[0];
  v76 = *&v244[0];
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_195;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      v77 = *(static CustomEventTrace.enabledCategories + 98);
      v220 = v64;
      if (v77 == 1)
      {
        v233 = v75;
        v78 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v79 = v65;
          v80 = *(v78 + 16);
          LODWORD(v267) = LODWORD(v235);
          BYTE4(v267) = v68 == v69;
          v268 = v79;
          v269 = v7;
          v270 = v8;
          v271 = *&v9;
          v272 = v76;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v235 = *&v81;

          v82 = v80;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v71, v72, v74, v73, v233, LOBYTE(v239));

          goto LABEL_39;
        }

        v103 = v71;
        v104 = v72;
        v105 = v74;
        v106 = v73;
        v107 = v233;
      }

      else
      {
        v103 = v71;
        v104 = v72;
        v105 = v74;
        v106 = v73;
        v107 = v75;
      }

      outlined consume of Animation.Function(v103, v104, v105, v106, v107, LOBYTE(v239));
LABEL_39:
      LODWORD(v75) = v69;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v273, &v267, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_40;
      }

      goto LABEL_197;
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_40:
    v110 = *(&static Signpost.animationState + 1);
    v111 = static Signpost.animationState;
    v112 = word_1ED5283E8;
    v31 = HIBYTE(word_1ED5283E8);
    v113 = byte_1ED5283EA;
    v114 = static os_signpost_type_t.event.getter();
    v267 = v111;
    v268 = v110;
    LOBYTE(v269) = v112;
    BYTE1(v269) = v31;
    BYTE2(v269) = v113;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v273, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v273, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
LABEL_76:
      a4 = v227;
      v31 = &v260;
      goto LABEL_127;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v273, &v267, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    LODWORD(v239) = v114;
    v115 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v75)
    {
      __break(1u);
    }

    else
    {
      v117 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v119 = MEMORY[0x1E69E6870];
      *(v116 + 56) = MEMORY[0x1E69E6810];
      *(v116 + 64) = v119;
      *(v116 + 32) = Counter;
      v120 = AGGraphGetCurrentAttribute();
      if (v120 != v75)
      {
        v64 = v116;
        v121 = MEMORY[0x1E69E76D0];
        *(v116 + 96) = MEMORY[0x1E69E7668];
        *(v116 + 104) = v121;
        *(v116 + 72) = v120;
        *(v116 + 136) = MEMORY[0x1E69E6158];
        *(v116 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v116 + 112) = 0xD000000000000041;
        *(v116 + 120) = 0x800000018DD7EC20;
        if (v31)
        {
          LOBYTE(v244[0]) = LOBYTE(v239);
          v266[0] = COERCE_DOUBLE(&dword_18D018000);
          *&v248[0] = v115;
          v267 = v111;
          v268 = v110;
          LOBYTE(v269) = v112;
          v260 = "Animation: (%p) [%d] %{public}@ updated";
          v261 = 39;
          LOBYTE(v262) = 2;
          *&v246[0] = v116;
          v122 = v219;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v273, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v273, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
          (*(v234 + 8))(v122, v238);
        }

        else
        {
          *&v123 = v111;
          if (v111 == 20)
          {
            v124 = 3;
          }

          else
          {
            v124 = 4;
          }

          v31 = bswap32(v111) | (4 * (v111 >> 16));
          LODWORD(v239) = LOBYTE(v239);
          v125 = (v234 + 16);
          v224 = *(v234 + 16);
          v126 = v224(v236, v219, v238);
          a1 = 0;
          LOBYTE(v260) = 1;
          v235 = *&v124;
          v225 = v125;
          v231 = 16 * v124;
          v232 = (v125 - 8);
          v229 = v123;
          v230 = v64 + 32;
          do
          {
            v233 = &v218;
            MEMORY[0x1EEE9AC00](v126);
            v129 = &v218 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
            v73 = (v129 + 8);
            v130 = v235;
            v131 = v129 + 8;
            do
            {
              *(v131 - 1) = 0;
              *v131 = 0;
              v131 += 16;
              --*&v130;
            }

            while (v130 != 0.0);
            v132 = (v230 + 40 * a1);
            v133 = *&v235;
            while (1)
            {
              v134 = *(v64 + 16);
              if (a1 == v134)
              {
                break;
              }

              if (a1 >= v134)
              {
                goto LABEL_186;
              }

              ++a1;
              outlined init with copy of AnyTrackedValue(v132, &v267);
              v135 = *&v270;
              __swift_project_boxed_opaque_existential_1(&v267, *&v270);
              *(v73 - 8) = CVarArg.kdebugValue(_:)(v31 | LODWORD(v239), v135);
              *v73 = v136 & 1;
              v73 += 16;
              v127 = __swift_destroy_boxed_opaque_existential_1(&v267);
              v132 += 5;
              if (!--v133)
              {
                goto LABEL_60;
              }
            }

            LOBYTE(v260) = 0;
LABEL_60:
            v137 = v229;
            if (*&v229 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v129[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v129[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v129[40] == 1)
            {
              kdebug_trace_string();
            }

            if (*&v137 != 20 && v129[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v138 = *v232;
            v139 = v236;
            v140 = v238;
            (*v232)(v236, v238);
            v141 = __swift_project_value_buffer(v140, static OSSignpostID.continuation);
            v126 = v224(v139, v141, v140);
          }

          while ((v260 & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v273, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v273, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
          v142 = v238;
          v138(v236, v238);
          v138(v219, v142);
        }

        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_92:
    v235 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v160 = COERCE_DOUBLE(swift_allocObject());
    *(v160 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v110)
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v161 = AGGraphGetAttributeGraph();
    v162 = AGGraphGetCounter();

    v163 = MEMORY[0x1E69E6870];
    *(v160 + 56) = MEMORY[0x1E69E6810];
    *(v160 + 64) = v163;
    *(v160 + 32) = v162;
    v164 = AGGraphGetCurrentAttribute();
    if (v164 == v110)
    {
      goto LABEL_204;
    }

    v165 = MEMORY[0x1E69E76D0];
    *(v160 + 96) = MEMORY[0x1E69E7668];
    *(v160 + 104) = v165;
    *(v160 + 72) = v164;
    v239 = *&v160;
    *(v160 + 136) = MEMORY[0x1E69E6158];
    *(*&v239 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(*&v239 + 112) = 0xD000000000000041;
    *(*&v239 + 120) = 0x800000018DD7EC20;
    v64 = *&v239;
    if (v112)
    {
      LOBYTE(v240) = v236;
      v242 = v235;
      *&v243 = COERCE_DOUBLE(&dword_18D018000);
      v267 = v111;
      v268 = v116;
      LOBYTE(v269) = v75;
      v260 = "Animation: (%p) [%d] %{public}@ started";
      v261 = 39;
      LOBYTE(v262) = 2;
      v241 = v239;
      v166 = v218;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v167 = v220;

      (*(v234 + 8))(v166, v238);
    }

    else
    {
      *&v229 = v111;
      v168 = v111 == 20 ? 3 : 4;
      v169 = bswap32(v111) | (4 * (v111 >> 16));
      a1 = v236;
      v170 = (v234 + 16);
      v224 = *(v234 + 16);
      v171 = v224(v233, v218, v238);
      v73 = 0;
      LOBYTE(v260) = 1;
      v236 = v168;
      v225 = v170;
      v231 = 16 * v168;
      v232 = (v170 - 8);
      v230 = v64 + 32;
      do
      {
        v235 = COERCE_DOUBLE(&v218);
        MEMORY[0x1EEE9AC00](v171);
        v133 = &v218 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
        v173 = (v133 + 8);
        v174 = v236;
        v175 = (v133 + 8);
        do
        {
          *(v175 - 1) = 0;
          *v175 = 0;
          v175 += 16;
          --v174;
        }

        while (v174);
        v132 = (v230 + 40 * v73);
        v31 = v236;
        while (1)
        {
          v176 = *(*&v239 + 16);
          if (v73 == v176)
          {
            break;
          }

          if (v73 >= v176)
          {
            goto LABEL_187;
          }

          ++v73;
          outlined init with copy of AnyTrackedValue(v132, &v267);
          v177 = *&v270;
          v64 = v271;
          __swift_project_boxed_opaque_existential_1(&v267, *&v270);
          *(v173 - 1) = CVarArg.kdebugValue(_:)(v169 | a1, v177);
          *v173 = v178 & 1;
          v173 += 16;
          v127 = __swift_destroy_boxed_opaque_existential_1(&v267);
          v132 += 5;
          if (!--v31)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v260) = 0;
LABEL_109:
        v179 = v229;
        if (*&v229 == 20)
        {
          v180 = v233;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
          v31 = &v260;
        }

        else
        {
          kdebug_trace();
          v31 = &v260;
          v180 = v233;
        }

        if (*(v133 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v133 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v133 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (*&v179 != 20 && *(v133 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v64 = *v232;
        v181 = v238;
        (*v232)(v180, v238);
        v182 = __swift_project_value_buffer(v181, static OSSignpostID.continuation);
        v171 = v224(v180, v182, v181);
      }

      while ((v260 & 1) != 0);
      v167 = v220;

      v183 = v238;
      (v64)(v180, v238);
      (v64)(v218, v183);
    }

LABEL_126:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v273, &lazy cache variable for type metadata for AnimatableAttributeHelper<GlassAppearanceScaleEffect>, lazy protocol witness table accessor for type GlassAppearanceScaleEffect and conformance GlassAppearanceScaleEffect, &type metadata for GlassAppearanceScaleEffect, type metadata accessor for AnimatableAttributeHelper);
    a4 = v227;
    *(v227 + 6) = v167;
LABEL_127:
    specialized AnimatorState.addListeners(transaction:)(v223);

    a1 = v226;
    a3 = v221;
LABEL_128:
    *(a4 + 2) = v4;
    *(a4 + 3) = v5;
    *(a4 + 4) = v6;
    *(a4 + 40) = 0;
LABEL_129:
    v133 = *(a4 + 6);
    if (!v133)
    {
      return;
    }

    v227 = a4;
    v184 = *(a1 + 16);
    v273 = *a1;
    v274 = v184;
    *v275 = *(a1 + 32);

    v260 = COERCE_CONST_CHAR_(GlassAppearanceScaleEffect.$s7SwiftUI26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLL10AnimatablefMm_15_animatableDatafMu_.getter());
    v261 = v185;
    v262 = v186;
    LOBYTE(v267) = 0;
    v187 = specialized AnimatorState.update(_:at:environment:)(&v260, a3, v30);
    v127 = AGGraphGetCurrentAttribute();
    v73 = *MEMORY[0x1E698D3F8];
    if (v127 == v73)
    {
      v64 = 0;
    }

    else
    {
      v64 = v127;
    }

    v132 = &type metadata instantiation cache for TupleTypeDescription;
    if (v187)
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
    v198 = v132[77];
    if (*(v198 + 16) >= 0x43uLL)
    {
      if (*(v198 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v267) = v64;
        BYTE4(v267) = v127 == v73;
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
    v68 = *(&static Signpost.animationState + 1);
    v65 = static Signpost.animationState;
    v75 = word_1ED5283E8;
    v69 = HIBYTE(word_1ED5283E8);
    v190 = byte_1ED5283EA;
    v191 = static os_signpost_type_t.end.getter();
    v267 = v65;
    v268 = v68;
    LOBYTE(v269) = v75;
    BYTE1(v269) = v69;
    BYTE2(v269) = v190;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    LODWORD(v236) = v191;
    v192 = one-time initialization token for _signpostLog;
    v72 = v225;

    if (v192 != -1)
    {
      swift_once();
    }

    v71 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v74 = COERCE_DOUBLE(swift_allocObject());
    *(v74 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v73)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    v233 = v76;
    swift_once();
    v76 = v233;
  }

  v72 = AGGraphGetAttributeGraph();
  v64 = AGGraphGetCounter();

  v193 = MEMORY[0x1E69E6870];
  *(v74 + 56) = MEMORY[0x1E69E6810];
  *(v74 + 64) = v193;
  *(v74 + 32) = v64;
  v194 = AGGraphGetCurrentAttribute();
  if (v194 == v73)
  {
    goto LABEL_194;
  }

  v195 = MEMORY[0x1E69E76D0];
  *(v74 + 96) = MEMORY[0x1E69E7668];
  *(v74 + 104) = v195;
  *(v74 + 72) = v194;
  v239 = *&v74;
  *(v74 + 136) = MEMORY[0x1E69E6158];
  *(*&v239 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(*&v239 + 112) = 0xD000000000000041;
  *(*&v239 + 120) = 0x800000018DD7EC20;
  v196 = v239;
  if (v69)
  {
    LOBYTE(v246[0]) = v236;
    v251[0] = &dword_18D018000;
    v249[0] = v71;
    v267 = v65;
    v268 = v68;
    LOBYTE(v269) = v75;
    v254 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ ended");
    v255 = 37;
    v256 = 2;
    v248[0] = v239;
    v197 = v228;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v234 + 8))(v197, v238);
    goto LABEL_181;
  }

  v199 = v65;
  if (v65 == 20)
  {
    v64 = 3;
  }

  else
  {
    v64 = 4;
  }

  a1 = bswap32(v65) | (4 * (v65 >> 16));
  v133 = v236;
  v200 = v234 + 16;
  v229 = *(v234 + 16);
  v201 = (*&v229)(v237, v228, v238);
  v73 = 0;
  LOBYTE(v254) = 1;
  v236 = v64;
  v234 = v200;
  v232 = 16 * v64;
  v233 = (v200 - 8);
  v230 = v199;
  v231 = *&v196 + 32;
  do
  {
    v235 = COERCE_DOUBLE(&v218);
    MEMORY[0x1EEE9AC00](v201);
    v203 = &v218 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = (v203 + 8);
    v204 = v236;
    v205 = v203 + 8;
    do
    {
      *(v205 - 1) = 0;
      *v205 = 0;
      v205 += 16;
      --v204;
    }

    while (v204);
    v132 = (v231 + 40 * v73);
    v206 = v236;
    while (1)
    {
      v207 = *(*&v239 + 16);
      if (v73 == v207)
      {
        break;
      }

      if (v73 >= v207)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v216 = v127;
        swift_once();
        v127 = v216;
LABEL_135:
        v188 = v132[77];
        if (*(v188 + 16) >= 0x43uLL)
        {
          if (*(v188 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v267) = v64;
            BYTE4(v267) = v127 == v73;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v225 = v133;
          v226 = a1;
          v189 = one-time initialization token for animationState;

          if (v189 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v217 = v127;
        swift_once();
        v127 = v217;
        goto LABEL_148;
      }

      ++v73;
      outlined init with copy of AnyTrackedValue(v132, &v267);
      v208 = *&v270;
      v64 = v271;
      __swift_project_boxed_opaque_existential_1(&v267, *&v270);
      *(v31 - 8) = CVarArg.kdebugValue(_:)(a1 | v133, v208);
      *v31 = v209 & 1;
      v31 += 16;
      v127 = __swift_destroy_boxed_opaque_existential_1(&v267);
      v132 += 5;
      if (!--v206)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v254) = 0;
LABEL_166:
    v210 = v230;
    if (v230 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v203[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v203[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v203[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v210 != 20 && v203[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v211 = *v233;
    v64 = v237;
    v212 = v238;
    (*v233)(v237, v238);
    v213 = __swift_project_value_buffer(v212, static OSSignpostID.continuation);
    v201 = (*&v229)(v64, v213, v212);
  }

  while ((LOBYTE(v254) & 1) != 0);

  v214 = v238;
  v211(v237, v238);
  v211(v228, v214);
LABEL_181:

LABEL_182:
  v215 = v227;
  specialized AnimatorState.removeListeners()();

  *(v215 + 6) = 0;
  a1 = v226;
  v31 = &v260;
LABEL_183:
  *a1 = v260;
  *(a1 + 8) = vmulq_f64(*(v31 + 8), vdupq_n_s64(0x3F80000000000000uLL));
  *(a1 + 48) = 1;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(float64x2_t *a1, char *a2, unsigned int a3, uint64_t a4)
{
  v262 = *MEMORY[0x1E69E9840];
  v222 = type metadata accessor for OSSignpostID();
  v219 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v13 = v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v197 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v220 = v197 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v197 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v221 = v197 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v211 = v197 - v25;
  if (*(a4 + 88))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    LOBYTE(a1[4].f64[0]) = 1;
  }

  else if (LOBYTE(a1[4].f64[0]) != 1)
  {
    goto LABEL_124;
  }

  v6 = a1[3].f64[0];
  v30 = vdupq_n_s64(0x4060000000000000uLL);
  v31 = vmulq_f64(*a1, v30);
  v32 = vmulq_f64(a1[1], v30);
  v33 = vmulq_f64(a1[2], v30);
  v34 = a1[3].f64[1] * 128.0;
  v230 = v31;
  v231 = v32;
  v232 = v33;
  v233 = v6;
  v234 = v34;
  if (*(a4 + 80))
  {
    goto LABEL_123;
  }

  v214 = v33;
  v215 = v32;
  v216 = v31;
  v7 = *(a4 + 16);
  v35 = *(a4 + 24);
  v37 = *(a4 + 32);
  v36 = *(a4 + 40);
  v38 = *(a4 + 48);
  v4 = *(a4 + 56);
  v5 = *(a4 + 64);
  v39 = *(a4 + 72);
  v235[0] = v7;
  v235[1] = v35;
  v235[2] = v37;
  v235[3] = v36;
  v223 = v36;
  v218 = v38;
  v235[4] = v38;
  v235[5] = v4;
  v235[6] = v5;
  *&v235[7] = v39;
  v209 = v39;
  result = _s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZSd_ACy12CoreGraphics7CGFloatVACyAhCyAhCyACyA2HGAIGGGGTt1g5(v230.f64, v235);
  if (result)
  {
    goto LABEL_122;
  }

  v213 = v13;
  v217 = v16;
  v201 = v21;
  v204 = a3;
  v212 = AGGraphClearUpdate();
  v40 = *(a4 + 80);
  v252 = *(a4 + 64);
  v253 = v40;
  v254 = *(a4 + 96);
  v41 = *(a4 + 16);
  v248 = *a4;
  v249 = v41;
  v42 = *(a4 + 48);
  v250 = *(a4 + 32);
  v251 = v42;
  v13 = &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v248, &v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
  v43 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v203 = v43;
  v44 = Transaction.effectiveAnimation.getter(v43);
  if (v44)
  {
    v13 = v44;
    v200 = v34;
    v198 = v6;
  }

  else
  {
    a3 = v204;
    if (!a2)
    {

      goto LABEL_122;
    }

    v200 = v34;
    v198 = v6;

    v13 = a2;
  }

  v212 = a1;
  v45 = *(&v253 + 1);
  v46 = v230.f64[0] - v7;
  v47 = v230.f64[1] - v35;
  v48 = v231.f64[0] - v37;
  v49 = v231.f64[1] - v223;
  v50 = v232.f64[0] - v218;
  v51 = v232.f64[1] - v4;
  v52 = v233 - v5;
  v53 = v234 - *&v209;
  v199 = *AGGraphGetValue();
  v210 = a4;
  v197[1] = v13;
  if (!v45)
  {
    *&v241 = v46;
    *(&v241 + 1) = v47;
    v242 = v48;
    v243 = *&v49;
    v244 = v50;
    v245 = v51;
    v246 = v52;
    v247 = v53;
    *&v236 = &type metadata for _Rotation3DEffect;
    type metadata accessor for _Rotation3DEffect.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>.Type, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>);
    v68 = swift_dynamicCast();
    if (v68)
    {
      v69 = v255;
    }

    else
    {
      v69 = 0;
    }

    if (v68)
    {
      v70 = *(&v255 + 1);
    }

    else
    {
      v70 = 0;
    }

    v74 = v203;

    v28 = v199;
    v202 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAVyAyVyAyVyAVyA2YGAZGGGGG_Tt4B5(v71, &v241, v74, v69, v70, v199);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v73 = CurrentAttribute;
    LODWORD(v74) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v75 = 0;
    }

    else
    {
      v75 = CurrentAttribute;
    }

    LODWORD(v220) = v75;
    (*(*v13 + 96))(&v236);
    v76 = v236;
    v77 = v237;
    v78 = v238;
    v79 = v239;
    v224 = NAN;
    v225[0] = 0x7FF8000000000000;
    v227 = 1.0;
    v228 = NAN;
    v255 = v236;
    v256 = *&v237;
    v257 = v238;
    v258 = *&v239;
    LODWORD(v223) = v240;
    LOBYTE(v259) = v240;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v255, v225, &v228, &v227, &v224);
    v7 = v224;
    v4 = *v225;
    v6 = v227;
    v5 = v228;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    v34 = v200;
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_194;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v218 = *&v78;
      v80 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v209 = v79;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v81 = *(v80 + 16);
        LODWORD(v255) = v220;
        BYTE4(v255) = v73 == v74;
        *(&v255 + 1) = &type metadata for _Rotation3DEffect;
        v256 = v4;
        v257 = *&v5;
        v258 = v6;
        v259 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v82 = v81;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v76, *(&v76 + 1), v77, *&v218, v209, LOBYTE(v223));

        goto LABEL_84;
      }

      v90 = *(&v76 + 1);
      v89 = v76;
      v91 = v77;
      v92 = *&v218;
    }

    else
    {
      v90 = *(&v76 + 1);
      v89 = v76;
      v91 = v77;
      v92 = v78;
    }

    outlined consume of Animation.Function(v89, v90, v91, v92, v79, LOBYTE(v223));
LABEL_84:
    v126 = one-time initialization token for animationState;

    v6 = v198;
    if (v126 == -1)
    {
LABEL_85:
      v94 = *(&static Signpost.animationState + 1);
      *&v93 = static Signpost.animationState;
      LODWORD(v13) = word_1ED5283E8;
      v95 = HIBYTE(word_1ED5283E8);
      v127 = byte_1ED5283EA;
      v128 = static os_signpost_type_t.begin.getter();
      v255 = __PAIR128__(*&v94, *&v93);
      LOBYTE(v256) = v13;
      BYTE1(v256) = v95;
      BYTE2(v256) = v127;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v138 = v202;

        goto LABEL_92;
      }

      LODWORD(v223) = v128;
      v129 = one-time initialization token for _signpostLog;

      if (v129 != -1)
      {
        goto LABEL_197;
      }

      goto LABEL_87;
    }

LABEL_194:
    swift_once();
    goto LABEL_85;
  }

  *&v255 = v46;
  *(&v255 + 1) = v47;
  v256 = v48;
  v257 = *&v49;
  v258 = v50;
  v259 = v51;
  v260 = v52;
  v261 = v53;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v248, &v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v241) = 0;
  v28 = v199;
  v202 = v45;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v13, &v255, v203, v199);
  v54 = AGGraphGetCurrentAttribute();
  v55 = v13;
  LODWORD(v13) = v54;
  LODWORD(v56) = *MEMORY[0x1E698D3F8];
  if (v54 == *MEMORY[0x1E698D3F8])
  {
    v57 = 0;
  }

  else
  {
    v57 = v54;
  }

  LODWORD(v223) = v57;
  (*(*v55 + 96))(&v236);
  v58 = *(&v236 + 1);
  v59 = v236;
  v60 = v237;
  v61 = v239;
  LODWORD(v62) = v240;
  v224 = NAN;
  v225[0] = 0x7FF8000000000000;
  v227 = 1.0;
  v228 = NAN;
  v241 = v236;
  v242 = *&v237;
  v243 = v238;
  v63 = v238;
  v244 = *&v239;
  LOBYTE(v245) = v240;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v241, v225, &v228, &v227, &v224);
  v7 = v224;
  v4 = *v225;
  v6 = v227;
  v5 = v228;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_190;
  }

  while (1)
  {
    v34 = v200;
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        LODWORD(v218) = LODWORD(v62);
        v64 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v65 = v13 == v56;
          LODWORD(v217) = v56;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v66 = *(v64 + 16);
          LODWORD(v241) = LODWORD(v223);
          BYTE4(v241) = v65;
          *(&v241 + 1) = &type metadata for _Rotation3DEffect;
          v242 = v4;
          v243 = *&v5;
          v244 = v6;
          v245 = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v223 = v67;

          v13 = v66;
          LODWORD(v56) = v217;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v59, *&v58, v60, v63, v61, LOBYTE(v218));

          goto LABEL_44;
        }

        v83 = v59;
        v84 = *&v58;
        v85 = v60;
        v86 = v63;
        v87 = v61;
        v88 = LOBYTE(v218);
      }

      else
      {
        v83 = v59;
        v84 = *&v58;
        v85 = v60;
        v86 = v63;
        v87 = v61;
        v88 = LOBYTE(v62);
      }

      outlined consume of Animation.Function(v83, v84, v85, v86, v87, v88);
LABEL_44:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v248, &v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
      v6 = v198;
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_192;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_45:
    v93 = *(&static Signpost.animationState + 1);
    v74 = static Signpost.animationState;
    *&v94 = word_1ED5283E8;
    v95 = HIBYTE(word_1ED5283E8);
    v96 = byte_1ED5283EA;
    v97 = static os_signpost_type_t.event.getter();
    v241 = __PAIR128__(*&v93, v74);
    LOBYTE(v242) = LOBYTE(v94);
    BYTE1(v242) = v95;
    BYTE2(v242) = v96;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
LABEL_81:
      a4 = v210;
      goto LABEL_121;
    }

    LODWORD(v223) = v97;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v248, &v241, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    *&v98 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v99 = COERCE_DOUBLE(swift_allocObject());
    *(v99 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v56)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v13) = v56;
      v100 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v102 = MEMORY[0x1E69E6870];
      *(v99 + 56) = MEMORY[0x1E69E6810];
      *(v99 + 64) = v102;
      *(v99 + 32) = Counter;
      v103 = AGGraphGetCurrentAttribute();
      if (v103 != v13)
      {
        v104 = v99;
        v105 = MEMORY[0x1E69E76D0];
        *(v99 + 96) = MEMORY[0x1E69E7668];
        *(v99 + 104) = v105;
        *(v99 + 72) = v103;
        *(v99 + 136) = MEMORY[0x1E69E6158];
        *(v99 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v99 + 112) = 0xD000000000000011;
        *(v99 + 120) = 0x800000018DD7ED50;
        if (v95)
        {
          LOBYTE(v224) = LOBYTE(v223);
          v225[0] = &dword_18D018000;
          v227 = *&v99;
          v228 = *&v98;
          *&v241 = v74;
          *(&v241 + 1) = v93;
          LOBYTE(v242) = LOBYTE(v94);
          *&v236 = "Animation: (%p) [%d] %{public}@ updated";
          *(&v236 + 1) = 39;
          LOBYTE(v237) = 2;
          v106 = v201;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
          (*(v219 + 8))(v106, v222);
        }

        else
        {
          v107 = v74;
          if (v74 == 20)
          {
            v108 = 3;
          }

          else
          {
            v108 = 4;
          }

          LODWORD(v109) = bswap32(v74) | (4 * (v74 >> 16));
          LODWORD(v223) = LOBYTE(v223);
          v110 = (v219 + 16);
          v205 = *(v219 + 16);
          v111 = v205(v220, v201, v222);
          v61 = 0;
          LOBYTE(v236) = 1;
          v218 = *&v108;
          v206 = v110;
          v207 = v107;
          v213 = v110 - 8;
          v208 = (v104 + 4);
          v209 = 16 * v108;
          do
          {
            v217 = v197;
            MEMORY[0x1EEE9AC00](v111);
            v13 = v197 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
            v114 = v13 + 8;
            v115 = v218;
            v116 = v13 + 8;
            do
            {
              *(v116 - 1) = 0;
              *v116 = 0;
              v116 += 16;
              --*&v115;
            }

            while (v115 != 0.0);
            *&v62 = v208 + 40 * v61;
            v117 = v218;
            while (1)
            {
              v118 = v104[2];
              if (v61 == v118)
              {
                break;
              }

              if (v61 >= v118)
              {
                goto LABEL_181;
              }

              ++v61;
              outlined init with copy of AnyTrackedValue(*&v62, &v241);
              v119 = v243;
              v107 = v104;
              __swift_project_boxed_opaque_existential_1(&v241, v243);
              *(v114 - 1) = CVarArg.kdebugValue(_:)(v109 | LODWORD(v223), v119);
              *v114 = v120 & 1;
              v114 += 16;
              v112 = __swift_destroy_boxed_opaque_existential_1(&v241);
              *&v62 += 40;
              --*&v117;
              if (v117 == 0.0)
              {
                goto LABEL_65;
              }
            }

            LOBYTE(v236) = 0;
LABEL_65:
            v107 = v207;
            if (v207 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v13[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v13[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v13[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v107 != 20 && v13[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v121 = *v213;
            v122 = v220;
            v123 = v222;
            (*v213)(v220, v222);
            v124 = __swift_project_value_buffer(v123, static OSSignpostID.continuation);
            v111 = v205(v122, v124, v123);
          }

          while ((v236 & 1) != 0);
          v13 = type metadata accessor for AnimatableAttributeHelper;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
          v125 = v222;
          v121(v220, v222);
          v121(v201, v125);
        }

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_87:
    *&v130 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v131 = COERCE_DOUBLE(swift_allocObject());
    *(*&v131 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v74)
    {
      __break(1u);
LABEL_199:
      __break(1u);
    }

    v132 = AGGraphGetAttributeGraph();
    v133 = AGGraphGetCounter();

    v134 = MEMORY[0x1E69E6870];
    *(*&v131 + 56) = MEMORY[0x1E69E6810];
    *(*&v131 + 64) = v134;
    *(*&v131 + 32) = v133;
    v135 = AGGraphGetCurrentAttribute();
    if (v135 == v74)
    {
      goto LABEL_199;
    }

    v136 = MEMORY[0x1E69E76D0];
    *(*&v131 + 96) = MEMORY[0x1E69E7668];
    *(*&v131 + 104) = v136;
    *(*&v131 + 72) = v135;
    *(*&v131 + 136) = MEMORY[0x1E69E6158];
    *(*&v131 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(*&v131 + 112) = 0xD000000000000011;
    *(*&v131 + 120) = 0x800000018DD7ED50;
    if (v95)
    {
      LOBYTE(v224) = LOBYTE(v223);
      v225[0] = &dword_18D018000;
      v227 = v131;
      v228 = *&v130;
      *&v255 = v93;
      *(&v255 + 1) = v94;
      LOBYTE(v256) = v13;
      *&v236 = "Animation: (%p) [%d] %{public}@ started";
      *(&v236 + 1) = 39;
      LOBYTE(v237) = 2;
      v137 = v217;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v138 = v202;

      (*(v219 + 8))(v137, v222);

LABEL_92:
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v210;
      *(v210 + 88) = v138;
    }

    else
    {
      v139 = LOBYTE(v93);
      v140 = LOBYTE(v93) == 20 ? 3 : 4;
      LODWORD(v109) = bswap32(LOWORD(v93)) | (4 * HIWORD(LODWORD(v93)));
      v107 = LOBYTE(v223);
      v141 = (v219 + 16);
      v201 = *(v219 + 16);
      v142 = v201(v213, v217, v222);
      v61 = 0;
      LOBYTE(v236) = 1;
      v220 = v140;
      v205 = v141;
      v206 = v139;
      v208 = 16 * v140;
      v209 = (v141 - 8);
      v223 = v131;
      v207 = (*&v131 + 32);
      do
      {
        v218 = COERCE_DOUBLE(v197);
        MEMORY[0x1EEE9AC00](v142);
        v144 = v197 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = v144 + 8;
        v145 = v220;
        v146 = v144 + 8;
        do
        {
          *(v146 - 1) = 0;
          *v146 = 0;
          v146 += 16;
          --v145;
        }

        while (v145);
        *&v62 = &v207[40 * v61];
        v147 = v220;
        while (1)
        {
          v148 = *(*&v223 + 16);
          if (v61 == v148)
          {
            break;
          }

          if (v61 >= v148)
          {
            goto LABEL_182;
          }

          ++v61;
          outlined init with copy of AnyTrackedValue(*&v62, &v255);
          v149 = v257;
          __swift_project_boxed_opaque_existential_1(&v255, v257);
          *(v13 - 1) = CVarArg.kdebugValue(_:)(v109 | v107, v149);
          *v13 = v150 & 1;
          v13 += 16;
          v112 = __swift_destroy_boxed_opaque_existential_1(&v255);
          *&v62 += 40;
          if (!--v147)
          {
            goto LABEL_105;
          }
        }

        LOBYTE(v236) = 0;
LABEL_105:
        v13 = v206;
        if (v206 == 20)
        {
          v151 = v213;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
          v152 = v217;
        }

        else
        {
          kdebug_trace();
          v152 = v217;
          v151 = v213;
        }

        if (v144[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v144[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v144[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v13 != 20 && v144[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v153 = *v209;
        v154 = v222;
        (*v209)(v151, v222);
        v155 = __swift_project_value_buffer(v154, static OSSignpostID.continuation);
        v142 = v201(v151, v155, v154);
      }

      while ((v236 & 1) != 0);
      v156 = v202;

      v157 = v222;
      v153(v151, v222);
      v153(v152, v157);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v248, &lazy cache variable for type metadata for AnimatableAttributeHelper<_Rotation3DEffect>, lazy protocol witness table accessor for type _Rotation3DEffect and conformance _Rotation3DEffect, &type metadata for _Rotation3DEffect, type metadata accessor for AnimatableAttributeHelper);
      a4 = v210;
      *(v210 + 88) = v156;
    }

LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v203);

    a1 = v212;
    a3 = v204;
LABEL_122:
    v32 = v215;
    v31 = v216;
    v33 = v214;
LABEL_123:
    LOBYTE(v248.f64[0]) = 0;
    *(a4 + 16) = v31;
    *(a4 + 32) = v32;
    *(a4 + 48) = v33;
    *(a4 + 64) = v6;
    *(a4 + 72) = v34;
    *(a4 + 80) = 0;
LABEL_124:
    v62 = *(a4 + 88);
    if (v62 == 0.0)
    {
      return result;
    }

    v210 = a4;
    v158 = a1[3].f64[0];
    v159 = vdupq_n_s64(0x4060000000000000uLL);
    v160 = a1[3].f64[1] * 128.0;
    v161 = vmulq_f64(a1[1], v159);
    v248 = vmulq_f64(*a1, v159);
    v249 = v161;
    v212 = a1;
    v250 = vmulq_f64(a1[2], v159);
    *&v251 = v158;
    *(&v251 + 1) = v160;

    LOBYTE(v236) = 0;
    v162 = specialized AnimatorState.update(_:at:environment:)(&v248, a3, v28);
    v112 = AGGraphGetCurrentAttribute();
    v61 = *MEMORY[0x1E698D3F8];
    if (v112 == v61)
    {
      LODWORD(v109) = 0;
    }

    else
    {
      LODWORD(v109) = v112;
    }

    v107 = &type metadata instantiation cache for TupleTypeDescription;
    if (v162)
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
    v173 = *(v107 + 616);
    if (*(v173 + 16) >= 0x43uLL)
    {
      if (*(v173 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v236) = v109;
        BYTE4(v236) = v112 == v61;
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
    v165 = *(&static Signpost.animationState + 1);
    v63 = static Signpost.animationState;
    v60 = word_1ED5283E8;
    v59 = HIBYTE(word_1ED5283E8);
    v166 = byte_1ED5283EA;
    v167 = static os_signpost_type_t.end.getter();
    v236 = __PAIR128__(v165, v63);
    LOBYTE(v237) = v60;
    BYTE1(v237) = v59;
    BYTE2(v237) = v166;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    LODWORD(v223) = v167;
    v168 = one-time initialization token for _signpostLog;

    if (v168 != -1)
    {
      swift_once();
    }

    v58 = COERCE_DOUBLE(_signpostLog);
    *&v209 = v62;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v56 = COERCE_DOUBLE(swift_allocObject());
    *(v56 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v61)
    {
      break;
    }

    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    swift_once();
  }

  v62 = COERCE_DOUBLE(AGGraphGetAttributeGraph());
  v13 = AGGraphGetCounter();

  v169 = MEMORY[0x1E69E6870];
  *(v56 + 56) = MEMORY[0x1E69E6810];
  *(v56 + 64) = v169;
  *(v56 + 32) = v13;
  v170 = AGGraphGetCurrentAttribute();
  if (v170 == v61)
  {
    goto LABEL_189;
  }

  v13 = v56;
  v171 = MEMORY[0x1E69E76D0];
  *(v56 + 96) = MEMORY[0x1E69E7668];
  *(v56 + 104) = v171;
  *(v56 + 72) = v170;
  *(v56 + 136) = MEMORY[0x1E69E6158];
  *(v56 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v56 + 112) = 0xD000000000000011;
  *(v56 + 120) = 0x800000018DD7ED50;
  if (v59)
  {
    v229 = LOBYTE(v223);
    v227 = v58;
    v228 = COERCE_DOUBLE(&dword_18D018000);
    *&v236 = v63;
    *(&v236 + 1) = v165;
    LOBYTE(v237) = v60;
    v225[0] = "Animation: (%p) [%d] %{public}@ ended";
    v225[1] = 37;
    v226 = 2;
    v224 = *&v56;
    v172 = v211;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v219 + 8))(v172, v222);
    goto LABEL_176;
  }

  *&v174 = v63;
  if (v63 == 20)
  {
    v175 = 3;
  }

  else
  {
    v175 = 4;
  }

  v107 = bswap32(v63) | (4 * WORD1(v63));
  LODWORD(v223) = LOBYTE(v223);
  v176 = v219 + 16;
  v213 = *(v219 + 16);
  v177 = (v213)(v221, v211, v222);
  v61 = 0;
  LOBYTE(v225[0]) = 1;
  v219 = v176;
  v217 = (16 * v175);
  *&v218 = v176 - 8;
  *&v216.f64[0] = v13 + 32;
  v215.f64[0] = v174;
  *&v214.f64[0] = v175;
  do
  {
    v220 = v197;
    MEMORY[0x1EEE9AC00](v177);
    v179 = v197 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
    v109 = v179 + 8;
    v180 = v175;
    v181 = v179 + 8;
    do
    {
      *(v181 - 1) = 0;
      *v181 = 0;
      v181 += 16;
      --v180;
    }

    while (v180);
    *&v62 = *&v216.f64[0] + 40 * v61;
    while (1)
    {
      v182 = *(v13 + 2);
      if (v61 == v182)
      {
        break;
      }

      if (v61 >= v182)
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        v195 = v112;
        swift_once();
        v112 = v195;
LABEL_130:
        v163 = *(v107 + 616);
        if (*(v163 + 16) >= 0x43uLL)
        {
          if (*(v163 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v236) = v109;
            BYTE4(v236) = v112 == v61;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v164 = one-time initialization token for animationState;

          if (v164 != -1)
          {
            goto LABEL_187;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_185:
        v196 = v112;
        swift_once();
        v112 = v196;
        goto LABEL_143;
      }

      ++v61;
      outlined init with copy of AnyTrackedValue(*&v62, &v236);
      v183 = v238;
      __swift_project_boxed_opaque_existential_1(&v236, v238);
      *(v109 - 1) = CVarArg.kdebugValue(_:)(v107 | LODWORD(v223), v183);
      *v109 = v184 & 1;
      v109 += 16;
      v112 = __swift_destroy_boxed_opaque_existential_1(&v236);
      *&v62 += 40;
      if (!--v175)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v225[0]) = 0;
LABEL_161:
    v185 = v215.f64[0];
    if (*&v215.f64[0] == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v175 = *&v214.f64[0];
    if (v179[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v179[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v179[40] == 1)
    {
      kdebug_trace_string();
    }

    if (*&v185 != 20 && v179[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v186 = **&v218;
    v188 = v221;
    v187 = v222;
    (**&v218)(v221, v222);
    v189 = __swift_project_value_buffer(v187, static OSSignpostID.continuation);
    v177 = (v213)(v188, v189, v187);
  }

  while ((v225[0] & 1) != 0);

  v190 = v222;
  v186(v221, v222);
  v186(v211, v190);
LABEL_176:

LABEL_177:
  specialized AnimatorState.removeListeners()();

  *(v210 + 88) = 0;
LABEL_178:
  v191 = v212;
  v192 = v251;
  v193 = vdupq_n_s64(0x3F80000000000000uLL);
  v194 = vmulq_f64(v249, v193);
  *v212 = vmulq_f64(v248, v193);
  v191[1] = v194;
  v191[2] = vmulq_f64(v250, v193);
  *&v191[3].f64[0] = v192;
  v191[3].f64[1] = *(&v192 + 1) * 0.0078125;
  LOBYTE(v191[4].f64[0]) = 1;
  return result;
}

_DWORD *specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v211 = *MEMORY[0x1E69E9840];
  v191 = type metadata accessor for OSSignpostID();
  v188 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v9 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v171 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v189 = &v171 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v171 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v190 = &v171 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v181 = &v171 - v21;
  if (*(a4 + 24))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  result = AGGraphGetValue();
  if (*(a4 + 32) != *result >> 1)
  {
    specialized AnimatableAttributeHelper.reset()();
    a1[28] = 1;
    goto LABEL_11;
  }

  if (a1[28] == 1)
  {
LABEL_11:
    v27 = *a1;
    v28 = *a1;
    ShaderVectorData.init(rbShader:)(v27, &v198);
    v29 = *(a4 + 16);
    v30 = v198;
    if (!v29)
    {
      goto LABEL_121;
    }

    v197 = *(a4 + 16);
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI16ShaderVectorDataV7ElementO_Tt1g5(v198, v29))
    {
      goto LABEL_121;
    }

    v172 = v17;
    v186 = v9;
    v171 = v12;

    AGGraphClearUpdate();
    LODWORD(v187) = *(a4 + 4);
    v31 = *(a4 + 24);

    v32 = *AGGraphGetValue();

    v176 = v31;

    v33 = v32;
    AGGraphSetUpdate();
    v175 = Transaction.effectiveAnimation.getter(v32);
    if (!v175)
    {
      if (!a2)
      {

        goto LABEL_121;
      }

      v175 = a2;
    }

    v180 = a4;
    v196 = v30;

    specialized static ShaderVectorData.-= infix(_:_:)(&v196, &v197);
    v24 = *AGGraphGetValue();
    v34 = v196;
    v179 = a1;
    v174 = a3;
    v173 = v32;
    if (v176)
    {

      LOBYTE(v199) = 0;
      v35 = v175;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v175, v34, v33, v24);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v37 = CurrentAttribute;
      v38 = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v39) = 0;
      }

      else
      {
        LODWORD(v39) = CurrentAttribute;
      }

      (*(*v35 + 96))(&v205);
      v41 = v205;
      v40 = v206;
      v43 = v207;
      v42 = v208;
      v26 = v209;
      v194 = 0x7FF8000000000000;
      v195 = 0x7FF8000000000000;
      v193 = 0x3FF0000000000000;
      v192 = NAN;
      v199 = v205;
      v200 = v206;
      v201 = v207;
      v202 = v208;
      v203 = v209;
      LODWORD(v187) = v210;
      LOBYTE(v204) = v210;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v199, &v195, &v194, &v193, &v192);
      v44 = v194;
      v45 = v195;
      v46 = v193;
      v47 = v192;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_187;
      }

      goto LABEL_21;
    }

    v205 = &type metadata for Shader.ResolvedShader;
    type metadata accessor for Shader.ResolvedShader.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == ShaderVectorData>.Type);

    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = v199;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = v200;
    }

    else
    {
      v69 = 0;
    }

    v70 = v175;

    v72 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16ShaderVectorDataV_Tt4B5(v71, v34, v32, v68, v69, v24);
    v73 = AGGraphGetCurrentAttribute();
    v74 = v73;
    LODWORD(v189) = *MEMORY[0x1E698D3F8];
    if (v73 == v189)
    {
      v75 = 0;
    }

    else
    {
      v75 = v73;
    }

    (*(*v70 + 96))(&v205);
    v77 = v205;
    v76 = v206;
    v78 = v207;
    v79 = v210;
    v194 = 0x7FF8000000000000;
    v195 = 0x7FF8000000000000;
    v193 = 0x3FF0000000000000;
    v192 = NAN;
    v199 = v205;
    v200 = v206;
    v201 = v207;
    v202 = v208;
    v80 = v208;
    v81 = v209;
    v203 = v209;
    LOBYTE(v204) = v210;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v199, &v195, &v194, &v193, &v192);
    v82 = v194;
    v83 = v195;
    v84 = v193;
    v85 = v192;
    if (one-time initialization token for enabledCategories != -1)
    {
      v187 = v195;
      v184 = v194;
      v185 = v193;
      v183 = v192;
      swift_once();
      v85 = v183;
      v84 = v185;
      v82 = v184;
      v83 = v187;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      v86 = *(static CustomEventTrace.enabledCategories + 98) == 1;
      v172 = v72;
      if (v86)
      {
        v87 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v88 = v74 == v189;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
          LODWORD(v187) = v79;
          v89 = *(v87 + 16);
          LODWORD(v199) = v75;
          BYTE4(v199) = v88;
          v200 = &type metadata for Shader.ResolvedShader;
          v201 = v83;
          v202 = v82;
          v203 = v84;
          v204 = v85;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v90 = v89;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v77, v76, v78, v80, v81, v187);
        }

        else
        {
          outlined consume of Animation.Function(v77, v76, v78, v80, v81, v79);
        }

        v72 = v172;
      }

      else
      {
        outlined consume of Animation.Function(v77, v76, v78, v80, v81, v79);
      }

      v110 = one-time initialization token for animationState;

      if (v110 == -1)
      {
        goto LABEL_84;
      }
    }

    swift_once();
LABEL_84:
    v60 = *(&static Signpost.animationState + 1);
    v52 = static Signpost.animationState;
    v57 = word_1ED5283E8;
    v55 = HIBYTE(word_1ED5283E8);
    v111 = byte_1ED5283EA;
    LOBYTE(v53) = static os_signpost_type_t.begin.getter();
    v199 = v52;
    v200 = v60;
    LOBYTE(v201) = v57;
    BYTE1(v201) = v55;
    BYTE2(v201) = v111;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_119;
    }

    v112 = one-time initialization token for _signpostLog;

    if (v112 != -1)
    {
      goto LABEL_194;
    }

    goto LABEL_86;
  }

  v26 = *(a4 + 24);
  if (*&v26 == 0.0)
  {
    return result;
  }

  while (1)
  {
    v180 = a4;
    v60 = *a1;
    v41 = *a1;

    ShaderVectorData.init(rbShader:)(v60, &v198);
    LOBYTE(v199) = 0;
    v139 = specialized AnimatorState.update(_:at:environment:)(&v198, a3, v24);
    v95 = AGGraphGetCurrentAttribute();
    v38 = *MEMORY[0x1E698D3F8];
    if (v95 == *MEMORY[0x1E698D3F8])
    {
      v91 = 0;
    }

    else
    {
      v91 = v95;
    }

    v61 = &type metadata instantiation cache for TupleTypeDescription;
    if (v139)
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
    v149 = v61[77];
    if (*(v149 + 16) >= 0x43uLL)
    {
      if (*(v149 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v199) = v91;
        BYTE4(v199) = v95 == v38;
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
    v142 = *(&static Signpost.animationState + 1);
    v39 = static Signpost.animationState;
    v37 = word_1ED5283E8;
    v42 = HIBYTE(word_1ED5283E8);
    v143 = byte_1ED5283EA;
    v43 = static os_signpost_type_t.end.getter();
    v199 = v39;
    v200 = v142;
    LOBYTE(v201) = v37;
    BYTE1(v201) = v42;
    BYTE2(v201) = v143;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      v150 = v180;
      goto LABEL_174;
    }

    v176 = v41;
    v144 = one-time initialization token for _signpostLog;

    if (v144 != -1)
    {
      swift_once();
    }

    v40 = _signpostLog;
    v177 = v26;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v38)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v186 = v45;
    v184 = v44;
    v185 = v46;
    v183 = v47;
    swift_once();
    v47 = v183;
    v46 = v185;
    v44 = v184;
    v45 = v186;
LABEL_21:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_189:
      swift_once();
      goto LABEL_27;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v48 = static CustomEventTrace.recorder) != 0)
    {
      v186 = v26;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v49 = *(v48 + 16);
      LODWORD(v199) = v39;
      BYTE4(v199) = v37 == v38;
      v200 = &type metadata for Shader.ResolvedShader;
      v201 = v45;
      v202 = v44;
      v203 = v46;
      v204 = v47;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

      v50 = v49;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v41, v40, v43, v42, v186, v187);
    }

    else
    {
      outlined consume of Animation.Function(v41, v40, v43, v42, v26, v187);
    }

    v51 = one-time initialization token for animationState;

    if (v51 != -1)
    {
      goto LABEL_189;
    }

LABEL_27:
    v53 = *(&static Signpost.animationState + 1);
    v52 = static Signpost.animationState;
    v54 = word_1ED5283E8;
    v55 = HIBYTE(word_1ED5283E8);
    v56 = byte_1ED5283EA;
    v57 = static os_signpost_type_t.event.getter();
    v199 = v52;
    v200 = v53;
    LOBYTE(v201) = v54;
    BYTE1(v201) = v55;
    BYTE2(v201) = v56;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

LABEL_80:
      a4 = v180;
      goto LABEL_120;
    }

    v58 = one-time initialization token for _signpostLog;

    if (v58 != -1)
    {
      swift_once();
    }

    v59 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v38)
    {
      __break(1u);
    }

    else
    {
      v61 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v63 = MEMORY[0x1E69E6870];
      *(v60 + 56) = MEMORY[0x1E69E6810];
      *(v60 + 64) = v63;
      *(v60 + 32) = Counter;
      v64 = AGGraphGetCurrentAttribute();
      if (v64 != v38)
      {
        v65 = MEMORY[0x1E69E76D0];
        *(v60 + 96) = MEMORY[0x1E69E7668];
        *(v60 + 104) = v65;
        *(v60 + 72) = v64;
        *(v60 + 136) = MEMORY[0x1E69E6158];
        *(v60 + 144) = lazy protocol witness table accessor for type String and conformance String();
        strcpy((v60 + 112), "ResolvedShader");
        *(v60 + 127) = -18;
        if (v55)
        {
          LOBYTE(v192) = v57;
          v194 = v59;
          v195 = &dword_18D018000;
          v199 = v52;
          v200 = v53;
          LOBYTE(v201) = v54;
          v205 = "Animation: (%p) [%d] %{public}@ updated";
          v206 = 39;
          LOBYTE(v207) = 2;
          v193 = v60;
          v66 = v172;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

          (*(v188 + 8))(v66, v191);
        }

        else
        {
          v26 = v52;
          if (v52 == 20)
          {
            v41 = 3;
          }

          else
          {
            v41 = 4;
          }

          v38 = bswap32(v52) | (4 * (v52 >> 16));
          v91 = v57;
          v92 = (v188 + 16);
          v177 = *(v188 + 16);
          v93 = v177(v189, v172, v191);
          v94 = 0;
          LOBYTE(v205) = 1;
          v185 = (16 * v41);
          v178 = v92;
          v186 = v92 - 1;
          v184 = v60 + 32;
          v183 = *&v26;
          v182 = v41;
          do
          {
            v187 = &v171;
            MEMORY[0x1EEE9AC00](v93);
            v97 = &v171 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
            a1 = v97 + 8;
            v98 = v41;
            v99 = v97 + 8;
            do
            {
              *(v99 - 1) = 0;
              *v99 = 0;
              v99 += 16;
              --v98;
            }

            while (v98);
            v100 = v184 + 40 * v94;
            while (1)
            {
              v101 = *(v60 + 16);
              if (v94 == v101)
              {
                break;
              }

              if (v94 >= v101)
              {
                goto LABEL_178;
              }

              ++v94;
              outlined init with copy of AnyTrackedValue(v100, &v199);
              v102 = v202;
              v26 = v203;
              v103 = __swift_project_boxed_opaque_existential_1(&v199, v202);
              v104 = v102;
              v61 = v103;
              *(a1 - 1) = CVarArg.kdebugValue(_:)(v38 | v91, v104);
              *a1 = v105 & 1;
              a1 += 16;
              v95 = __swift_destroy_boxed_opaque_existential_1(&v199);
              v100 += 40;
              if (!--v41)
              {
                goto LABEL_64;
              }
            }

            LOBYTE(v205) = 0;
LABEL_64:
            *&v26 = v183;
            if (*&v183 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            v41 = v182;
            if (v97[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v97[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v97[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v26 != 20 && v97[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v106 = *v186;
            v107 = v189;
            v61 = v191;
            (*v186)(v189, v191);
            v108 = __swift_project_value_buffer(v61, static OSSignpostID.continuation);
            v93 = v177(v107, v108, v61);
          }

          while ((v205 & 1) != 0);

          v109 = v191;
          v106(v189, v191);
          v106(v172, v109);
        }

        goto LABEL_80;
      }
    }

    __break(1u);
LABEL_194:
    swift_once();
LABEL_86:
    v113 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v189)
    {
      __break(1u);
LABEL_196:
      __break(1u);
    }

    v114 = AGGraphGetAttributeGraph();
    *&v26 = COERCE_DOUBLE(AGGraphGetCounter());

    v115 = MEMORY[0x1E69E6870];
    *(v41 + 56) = MEMORY[0x1E69E6810];
    *(v41 + 64) = v115;
    *(v41 + 32) = *&v26;
    v116 = AGGraphGetCurrentAttribute();
    if (v116 == v189)
    {
      goto LABEL_196;
    }

    v117 = MEMORY[0x1E69E76D0];
    *(v41 + 96) = MEMORY[0x1E69E7668];
    *(v41 + 104) = v117;
    *(v41 + 72) = v116;
    *(v41 + 136) = MEMORY[0x1E69E6158];
    *(v41 + 144) = lazy protocol witness table accessor for type String and conformance String();
    strcpy((v41 + 112), "ResolvedShader");
    *(v41 + 127) = -18;
    if (v55)
    {
      LOBYTE(v192) = v53;
      v194 = v113;
      v195 = &dword_18D018000;
      v199 = v52;
      v200 = v60;
      LOBYTE(v201) = v57;
      v205 = "Animation: (%p) [%d] %{public}@ started";
      v206 = 39;
      LOBYTE(v207) = 2;
      v193 = v41;
      v118 = v171;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v119 = v172;

      (*(v188 + 8))(v118, v191);

      a4 = v180;
      *(v180 + 24) = v119;
    }

    else
    {
      v120 = v52;
      if (v52 == 20)
      {
        v121 = 3;
      }

      else
      {
        v121 = 4;
      }

      v38 = bswap32(v52) | (4 * (v52 >> 16));
      v91 = v53;
      v61 = (v188 + 16);
      v177 = *(v188 + 16);
      v122 = v177(v186, v171, v191);
      v123 = 0;
      LOBYTE(v205) = 1;
      v189 = v121;
      v184 = 16 * v121;
      v178 = v61;
      v185 = v61 - 1;
      *&v183 = v41 + 32;
      v182 = v120;
      do
      {
        v187 = &v171;
        MEMORY[0x1EEE9AC00](v122);
        a1 = &v171 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        v125 = a1 + 8;
        v126 = v189;
        v127 = a1 + 8;
        do
        {
          *(v127 - 1) = 0;
          *v127 = 0;
          v127 += 16;
          --v126;
        }

        while (v126);
        v128 = *&v183 + 40 * v123;
        v60 = v189;
        while (1)
        {
          v129 = *(v41 + 16);
          if (v123 == v129)
          {
            break;
          }

          if (v123 >= v129)
          {
            goto LABEL_179;
          }

          ++v123;
          outlined init with copy of AnyTrackedValue(v128, &v199);
          v130 = v202;
          v26 = v203;
          v131 = __swift_project_boxed_opaque_existential_1(&v199, v202);
          v132 = v130;
          v61 = v131;
          *(v125 - 1) = CVarArg.kdebugValue(_:)(v38 | v91, v132);
          *v125 = v133 & 1;
          v125 += 16;
          v95 = __swift_destroy_boxed_opaque_existential_1(&v199);
          v128 += 40;
          if (!--v60)
          {
            goto LABEL_103;
          }
        }

        LOBYTE(v205) = 0;
LABEL_103:
        v134 = v182;
        if (v182 == 20)
        {
          v26 = v186;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v26 = v186;
        }

        if (a1[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v134 != 20 && a1[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v135 = *v185;
        v61 = v191;
        (*v185)(v26, v191);
        v136 = __swift_project_value_buffer(v61, static OSSignpostID.continuation);
        v122 = v177(v26, v136, v61);
      }

      while ((v205 & 1) != 0);
      v137 = v172;

      v138 = v191;
      v135(v26, v191);
      v135(v171, v138);

      v72 = v137;

LABEL_119:
      a4 = v180;
      *(v180 + 24) = v72;
    }

LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v173);

    v30 = v198;
    a1 = v179;
    a3 = v174;
LABEL_121:

    *(a4 + 16) = v30;
    v26 = *(a4 + 24);
    if (*&v26 == 0.0)
    {
      return result;
    }
  }

  v61 = AGGraphGetAttributeGraph();
  *&v26 = COERCE_DOUBLE(AGGraphGetCounter());

  v145 = MEMORY[0x1E69E6870];
  *(v41 + 56) = MEMORY[0x1E69E6810];
  *(v41 + 64) = v145;
  *(v41 + 32) = *&v26;
  v146 = AGGraphGetCurrentAttribute();
  if (v146 == v38)
  {
    goto LABEL_186;
  }

  v147 = MEMORY[0x1E69E76D0];
  *(v41 + 96) = MEMORY[0x1E69E7668];
  *(v41 + 104) = v147;
  *(v41 + 72) = v146;
  *(v41 + 136) = MEMORY[0x1E69E6158];
  *(v41 + 144) = lazy protocol witness table accessor for type String and conformance String();
  strcpy((v41 + 112), "ResolvedShader");
  *(v41 + 127) = -18;
  if (v42)
  {
    LOBYTE(v194) = v43;
    v196 = v40;
    v197 = &dword_18D018000;
    v199 = v39;
    v200 = v142;
    LOBYTE(v201) = v37;
    v205 = "Animation: (%p) [%d] %{public}@ ended";
    v206 = 37;
    LOBYTE(v207) = 2;
    v195 = v41;
    v148 = v181;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v188 + 8))(v148, v191);
    goto LABEL_173;
  }

  v26 = v39;
  if (v39 == 20)
  {
    v151 = 3;
  }

  else
  {
    v151 = 4;
  }

  v38 = bswap32(v39) | (4 * (v39 >> 16));
  v91 = v43;
  v152 = v188 + 16;
  v182 = *(v188 + 16);
  v153 = v182(v190, v181, v191);
  v60 = 0;
  LOBYTE(v205) = 1;
  v186 = (16 * v151);
  v188 = v152;
  v187 = (v152 - 8);
  v185 = (v41 + 32);
  v183 = *&v26;
  v184 = v151;
  do
  {
    v189 = &v171;
    MEMORY[0x1EEE9AC00](v153);
    v155 = &v171 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
    a1 = v155 + 8;
    v156 = v151;
    v157 = v155 + 8;
    do
    {
      *(v157 - 1) = 0;
      *v157 = 0;
      v157 += 16;
      --v156;
    }

    while (v156);
    v158 = &v185[5 * v60];
    while (1)
    {
      v159 = *(v41 + 16);
      if (v60 == v159)
      {
        break;
      }

      if (v60 >= v159)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v169 = v95;
        swift_once();
        v95 = v169;
LABEL_127:
        v140 = v61[77];
        if (*(v140 + 16) >= 0x43uLL)
        {
          if (*(v140 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v199) = v91;
            BYTE4(v199) = v95 == v38;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v178 = v60;
          v179 = a1;
          v141 = one-time initialization token for animationState;

          if (v141 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v170 = v95;
        swift_once();
        v95 = v170;
        goto LABEL_140;
      }

      ++v60;
      outlined init with copy of AnyTrackedValue(v158, &v199);
      v160 = v202;
      v26 = v203;
      v161 = __swift_project_boxed_opaque_existential_1(&v199, v202);
      v162 = v160;
      v61 = v161;
      *(a1 - 1) = CVarArg.kdebugValue(_:)(v38 | v91, v162);
      *a1 = v163 & 1;
      a1 += 16;
      v95 = __swift_destroy_boxed_opaque_existential_1(&v199);
      v158 += 40;
      if (!--v151)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v205) = 0;
LABEL_158:
    *&v26 = v183;
    if (*&v183 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v151 = v184;
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

    if (v26 != 20 && v155[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v164 = *v187;
    v165 = v190;
    v61 = v191;
    (*v187)(v190, v191);
    v166 = __swift_project_value_buffer(v61, static OSSignpostID.continuation);
    v153 = v182(v165, v166, v61);
  }

  while ((v205 & 1) != 0);

  v167 = v191;
  v164(v190, v191);
  v164(v181, v167);
LABEL_173:

  v150 = v180;
  v41 = v176;
LABEL_174:
  specialized AnimatorState.removeListeners()();

  *(v150 + 24) = 0;
  a1 = v179;
  v60 = v178;
LABEL_175:
  v199 = v198;

  v168 = ShaderVectorData.updating(rbShader:)(v60);

  swift_bridgeObjectRelease_n();

  *a1 = v168;
  a1[28] = 1;
  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, char **a2, unsigned int a3, uint64_t a4)
{
  v234 = *MEMORY[0x1E69E9840];
  v207 = type metadata accessor for OSSignpostID();
  v203 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v13 = (&v185 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v185 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v205 = (&v185 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v185 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v206 = &v185 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v197 = &v185 - v25;
  if (*(a4 + 56))
  {
    Value = AGGraphGetValue();
    if (v27)
    {
      v28 = *Value;
    }

    else
    {
      v28 = -INFINITY;
    }
  }

  else
  {
    v28 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    a1[64] = 1;
  }

  else if (a1[64] != 1)
  {
    goto LABEL_122;
  }

  v30 = *a1;
  v31 = *(a1 + 2);
  if (*(a4 + 48))
  {
    goto LABEL_121;
  }

  v32 = *(a4 + 32);
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v30, *(a4 + 16)), vceqq_f64(v31, v32)))))
  {
    goto LABEL_121;
  }

  v202 = *(a4 + 16);
  v208 = v32;
  v201 = a2;
  v204 = v13;
  v185 = v16;
  v186 = v21;
  v191 = v31;
  v192 = v30;
  v189 = a3;
  AGGraphClearUpdate();
  v33 = *(a4 + 16);
  v229 = *a4;
  v230 = v33;
  v34 = *(a4 + 48);
  v231 = *(a4 + 32);
  v232 = v34;
  v233 = *(a4 + 64);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v229, &v225, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
  v35 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v229, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v190 = v35;
  v36 = Transaction.effectiveAnimation.getter(v35);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    a3 = v189;
    v37 = v201;
    if (!v201)
    {
      goto LABEL_120;
    }
  }

  v196 = a4;
  v38 = *(&v232 + 1);
  v39 = v192.f64[0] - *&v202;
  v40 = v192.f64[1] - *(&v202 + 1);
  v41 = v191.f64[0] - v208.f64[0];
  v42 = v191.f64[1] - v208.f64[1];
  v28 = *AGGraphGetValue();
  v193 = a1;
  v187 = v37;
  if (!v38)
  {
    *&v212.f64[0] = &type metadata for ViewGeometry;
    type metadata accessor for ViewGeometry.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v59 = swift_dynamicCast();
    if (v59)
    {
      v60 = *&v225.f64[0];
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = *&v225.f64[1];
    }

    else
    {
      v61 = 0;
    }

    v62 = v190;

    v64 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v63, v62, v60, v61, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, v39, v40, v41, v42, v28);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v66 = CurrentAttribute;
    v67 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v68 = 0;
    }

    else
    {
      v68 = CurrentAttribute;
    }

    v69 = *(a1 + 1);
    v212 = *a1;
    v213 = v69;
    v70 = *(a1 + 3);
    v214 = *(a1 + 2);
    v215 = v70;
    v225 = v212;
    v226 = v69;
    v227 = v214;
    v228 = v70;
    outlined init with copy of ViewGeometry(&v212, &v221);
    v71 = outlined destroy of ViewGeometry(&v225);
    (*(*v37 + 96))(&v217, v71);
    v72 = v217;
    v73 = v219;
    v216 = 0x7FF8000000000000;
    v210 = 1.0;
    v211 = NAN;
    v209 = NAN;
    v221 = v217;
    *&v202 = v218;
    v222 = v218;
    v205 = *(&v218 + 1);
    *&v223 = v219;
    LODWORD(v208.f64[0]) = v220;
    BYTE8(v223) = v220;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v221, &v216, &v211, &v210, &v209);
    v4 = v216;
    v6 = v210;
    v5 = v211;
    v7 = v209;
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
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v74 = static CustomEventTrace.recorder) != 0)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v201 = v73;
        v75 = *(v74 + 16);
        LODWORD(v221) = v68;
        BYTE4(v221) = v66 == v67;
        *(&v221 + 1) = &type metadata for ViewGeometry;
        *&v222 = v4;
        *(&v222 + 1) = v5;
        *&v223 = v6;
        *(&v223 + 1) = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v76 = v75;
        v77 = v64;
        v78 = v76;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v72.f64[0], *&v72.f64[1], v202, v205, v201, LOBYTE(v208.f64[0]));

        v64 = v77;
      }

      else
      {
        outlined consume of Animation.Function(*&v72.f64[0], *&v72.f64[1], v202, v205, v73, LOBYTE(v208.f64[0]));
      }

      v84 = one-time initialization token for animationState;
      v188 = v64;

      if (v84 == -1)
      {
        goto LABEL_42;
      }
    }

    swift_once();
LABEL_42:
    v85 = *(&static Signpost.animationState + 1);
    *&v86 = static Signpost.animationState;
    LOBYTE(Counter) = word_1ED5283E8;
    LOBYTE(v51) = HIBYTE(word_1ED5283E8);
    v87 = byte_1ED5283EA;
    v88 = static os_signpost_type_t.begin.getter();
    v221 = __PAIR128__(*&v85, *&v86);
    LOBYTE(v222) = Counter;
    BYTE1(v222) = v51;
    BYTE2(v222) = v87;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v99 = v188;

      goto LABEL_118;
    }

    LODWORD(v208.f64[0]) = v88;
    v89 = v67;
    v90 = one-time initialization token for _signpostLog;

    if (v90 != -1)
    {
      goto LABEL_195;
    }

    goto LABEL_44;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v229, &v225, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v225.f64[0]) = 0;
  v188 = v38;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v37, v190, v39, v40, v41, v42, v28);
  v43 = AGGraphGetCurrentAttribute();
  v44 = v43;
  LODWORD(v45) = *MEMORY[0x1E698D3F8];
  if (v43 == *MEMORY[0x1E698D3F8])
  {
    v46 = 0;
  }

  else
  {
    v46 = v43;
  }

  LODWORD(v208.f64[0]) = v46;
  v47 = *(a1 + 1);
  v221 = *a1;
  v222 = v47;
  v48 = *(a1 + 3);
  v223 = *(a1 + 2);
  v224 = v48;
  v212 = v221;
  v213 = v47;
  v214 = v223;
  v215 = v48;
  outlined init with copy of ViewGeometry(&v221, &v225);
  v49 = outlined destroy of ViewGeometry(&v212);
  (*(*v37 + 96))(&v217, v49);
  v50 = *&v217.f64[1];
  v51 = *&v217.f64[0];
  v52 = *(&v218 + 1);
  v53 = v218;
  Counter = v219;
  LODWORD(v55) = v220;
  v216 = 0x7FF8000000000000;
  v210 = 1.0;
  v211 = NAN;
  v209 = NAN;
  v225 = v217;
  v226 = v218;
  *&v227 = v219;
  BYTE8(v227) = v220;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v225, &v216, &v211, &v210, &v209);
  v4 = v216;
  v6 = v210;
  v5 = v211;
  v7 = v209;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v204 = Counter;
        Counter = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          LODWORD(v202) = v45;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          LODWORD(v201) = v55;
          v56 = Counter[2];
          LODWORD(v225.f64[0]) = LODWORD(v208.f64[0]);
          BYTE4(v225.f64[0]) = v44 == v45;
          *&v225.f64[1] = &type metadata for ViewGeometry;
          *&v226 = v4;
          *(&v226 + 1) = v5;
          *&v227 = v6;
          *(&v227 + 1) = v7;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v208.f64[0] = v57;

          v58 = v56;
          LODWORD(v45) = v202;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(v51, v50, v53, v52, v204, v201);

          goto LABEL_52;
        }

        v79 = v51;
        v80 = v50;
        v81 = v53;
        v82 = v52;
        v83 = v204;
      }

      else
      {
        v79 = v51;
        v80 = v50;
        v81 = v53;
        v82 = v52;
        v83 = Counter;
      }

      outlined consume of Animation.Function(v79, v80, v81, v82, v83, v55);
LABEL_52:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v229, &v225, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_53;
      }

      goto LABEL_190;
    }

    __break(1u);
LABEL_190:
    swift_once();
LABEL_53:
    v85 = *(&static Signpost.animationState + 1);
    *&v86 = static Signpost.animationState;
    v100 = word_1ED5283E8;
    v89 = HIBYTE(word_1ED5283E8);
    v101 = byte_1ED5283EA;
    v102 = static os_signpost_type_t.event.getter();
    v225 = __PAIR128__(*&v85, *&v86);
    LOBYTE(v226) = v100;
    BYTE1(v226) = v89;
    BYTE2(v226) = v101;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v229, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v229, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
LABEL_89:
      a1 = v193;
      a4 = v196;
      a3 = v189;
      goto LABEL_119;
    }

    LODWORD(v208.f64[0]) = v102;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v229, &v225, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v103 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v45)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v51) = v45;
      v105 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v106 = MEMORY[0x1E69E6870];
      *(v104 + 56) = MEMORY[0x1E69E6810];
      *(v104 + 64) = v106;
      *(v104 + 32) = Counter;
      v107 = AGGraphGetCurrentAttribute();
      if (v107 != v51)
      {
        v45 = v104;
        v108 = MEMORY[0x1E69E76D0];
        *(v104 + 96) = MEMORY[0x1E69E7668];
        *(v104 + 104) = v108;
        *(v104 + 72) = v107;
        *(v104 + 136) = MEMORY[0x1E69E6158];
        *(v104 + 144) = lazy protocol witness table accessor for type String and conformance String();
        strcpy((v104 + 112), "ViewGeometry");
        *(v104 + 125) = 0;
        *(v104 + 126) = -5120;
        if (v89)
        {
          LOBYTE(v209) = LOBYTE(v208.f64[0]);
          v210 = *&v104;
          v211 = *&v103;
          v225.f64[0] = v86;
          v225.f64[1] = v85;
          LOBYTE(v226) = v100;
          v216 = &dword_18D018000;
          *&v217.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v217.f64[1] = 39;
          LOBYTE(v218) = 2;
          v109 = v186;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v229, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v229, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
          (*(v203 + 8))(v109, v207);
        }

        else
        {
          v110 = LOBYTE(v86);
          if (LOBYTE(v86) == 20)
          {
            v111 = 3;
          }

          else
          {
            v111 = 4;
          }

          v112 = (bswap32(LOWORD(v86)) | (4 * HIWORD(LODWORD(v86))));
          LODWORD(v208.f64[0]) = LOBYTE(v208.f64[0]);
          v113 = (v203 + 16);
          v194 = *(v203 + 16);
          v114 = v194(v205, v186, v207);
          a1 = 0;
          LOBYTE(v217.f64[0]) = 1;
          v204 = v111;
          v195 = v113;
          v200 = 16 * v111;
          v201 = v113 - 1;
          v198 = v110;
          v199 = v45 + 32;
          v115 = v45;
          do
          {
            *&v202 = &v185;
            MEMORY[0x1EEE9AC00](v114);
            v118 = &v185 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
            v119 = v118 + 8;
            v120 = v204;
            v121 = v118 + 8;
            do
            {
              *(v121 - 1) = 0;
              *v121 = 0;
              v121 += 16;
              --v120;
            }

            while (v120);
            v122 = v199 + 40 * a1;
            v123 = v204;
            while (1)
            {
              v124 = *(v45 + 16);
              if (a1 == v124)
              {
                break;
              }

              if (a1 >= v124)
              {
                goto LABEL_179;
              }

              ++a1;
              outlined init with copy of AnyTrackedValue(v122, &v225);
              v125 = *(&v226 + 1);
              __swift_project_boxed_opaque_existential_1(&v225, *(&v226 + 1));
              v45 = v115;
              *(v119 - 1) = CVarArg.kdebugValue(_:)(v112 | LODWORD(v208.f64[0]), v125);
              *v119 = v126 & 1;
              v119 += 16;
              v116 = __swift_destroy_boxed_opaque_existential_1(&v225);
              v122 += 40;
              if (!--v123)
              {
                goto LABEL_73;
              }
            }

            LOBYTE(v217.f64[0]) = 0;
LABEL_73:
            v127 = v198;
            if (v198 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v118[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v118[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v118[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v127 != 20 && v118[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v128 = *v201;
            v129 = v205;
            v130 = v207;
            (*v201)(v205, v207);
            v131 = __swift_project_value_buffer(v130, static OSSignpostID.continuation);
            v114 = v194(v129, v131, v130);
            v45 = v115;
          }

          while ((LOBYTE(v217.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v229, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v229, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
          v132 = v207;
          (v128)(v205, v207);
          (v128)(v186, v132);
        }

        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_195:
    swift_once();
LABEL_44:
    v91 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v89)
    {
      __break(1u);
LABEL_197:
      __break(1u);
    }

    v45 = AGGraphGetAttributeGraph();
    v93 = AGGraphGetCounter();

    v94 = MEMORY[0x1E69E6870];
    *(v92 + 56) = MEMORY[0x1E69E6810];
    *(v92 + 64) = v94;
    *(v92 + 32) = v93;
    v95 = AGGraphGetCurrentAttribute();
    if (v95 == v89)
    {
      goto LABEL_197;
    }

    v96 = v92;
    v97 = MEMORY[0x1E69E76D0];
    *(v92 + 96) = MEMORY[0x1E69E7668];
    *(v92 + 104) = v97;
    *(v92 + 72) = v95;
    *(v92 + 136) = MEMORY[0x1E69E6158];
    *(v92 + 144) = lazy protocol witness table accessor for type String and conformance String();
    strcpy((v92 + 112), "ViewGeometry");
    *(v92 + 125) = 0;
    *(v92 + 126) = -5120;
    if (v51)
    {
      LOBYTE(v209) = LOBYTE(v208.f64[0]);
      v210 = *&v92;
      v211 = *&v91;
      *&v221 = v86;
      *(&v221 + 1) = v85;
      LOBYTE(v222) = Counter;
      v216 = &dword_18D018000;
      *&v217.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v217.f64[1] = 39;
      LOBYTE(v218) = 2;
      v98 = v185;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v99 = v188;

      (*(v203 + 8))(v98, v207);
    }

    else
    {
      v133 = LOBYTE(v86);
      v134 = LOBYTE(v86) == 20 ? 3 : 4;
      v112 = (bswap32(LOWORD(v86)) | (4 * HIWORD(LODWORD(v86))));
      v135 = LOBYTE(v208.f64[0]);
      v136 = (v203 + 16);
      v194 = *(v203 + 16);
      v137 = v194(v204, v185, v207);
      v138 = v96;
      v123 = 0;
      LOBYTE(v217.f64[0]) = 1;
      v195 = v136;
      v201 = (16 * v134);
      *&v202 = v136 - 1;
      *&v208.f64[0] = v138;
      v199 = v133;
      v200 = v138 + 32;
      v198 = v134;
      do
      {
        v205 = &v185;
        MEMORY[0x1EEE9AC00](v137);
        a1 = &v185 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
        v119 = a1 + 8;
        v140 = v134;
        v141 = a1 + 8;
        do
        {
          *(v141 - 1) = 0;
          *v141 = 0;
          v141 += 16;
          --v140;
        }

        while (v140);
        v142 = v200 + 40 * v123;
        while (1)
        {
          v143 = *(*&v208.f64[0] + 16);
          if (v123 == v143)
          {
            break;
          }

          if (v123 >= v143)
          {
            goto LABEL_180;
          }

          ++v123;
          outlined init with copy of AnyTrackedValue(v142, &v221);
          v144 = *(&v222 + 1);
          LODWORD(v45) = v223;
          __swift_project_boxed_opaque_existential_1(&v221, *(&v222 + 1));
          *(v119 - 1) = CVarArg.kdebugValue(_:)(v112 | v135, v144);
          *v119 = v145 & 1;
          v119 += 16;
          v116 = __swift_destroy_boxed_opaque_existential_1(&v221);
          v142 += 40;
          if (!--v134)
          {
            goto LABEL_102;
          }
        }

        LOBYTE(v217.f64[0]) = 0;
LABEL_102:
        v146 = v199;
        if (v199 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v134 = v198;
        if (a1[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a1[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v146 != 20 && a1[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v147 = *v202;
        v148 = v204;
        v45 = v207;
        (*v202)(v204, v207);
        v149 = __swift_project_value_buffer(v45, static OSSignpostID.continuation);
        v137 = v194(v148, v149, v45);
      }

      while ((LOBYTE(v217.f64[0]) & 1) != 0);
      v99 = v188;

      v150 = v207;
      v147(v204, v207);
      v147(v185, v150);
    }

LABEL_118:
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v229, &lazy cache variable for type metadata for AnimatableAttributeHelper<ViewGeometry>, lazy protocol witness table accessor for type ViewGeometry and conformance ViewGeometry, &type metadata for ViewGeometry, type metadata accessor for AnimatableAttributeHelper);
    a4 = v196;
    *(v196 + 56) = v99;
    a1 = v193;
    a3 = v189;
LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v190);

LABEL_120:

    v31 = v191;
    v30 = v192;
LABEL_121:
    *(a4 + 16) = v30;
    *(a4 + 32) = v31;
    *(a4 + 48) = 0;
LABEL_122:
    v123 = *(a4 + 56);
    if (!v123)
    {
      return result;
    }

    v196 = a4;
    v151 = *(a1 + 2);
    v225 = *a1;
    v226 = v151;

    LOBYTE(v229) = 0;
    v152 = specialized AnimatorState.update(_:at:environment:)(&v225, a3, v28);
    v116 = AGGraphGetCurrentAttribute();
    LODWORD(v45) = *MEMORY[0x1E698D3F8];
    if (v116 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v119) = 0;
    }

    else
    {
      LODWORD(v119) = v116;
    }

    v112 = &type metadata instantiation cache for TupleTypeDescription;
    if (v152)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v164 = v112[77];
    if (*(v164 + 16) >= 0x43uLL)
    {
      if (*(v164 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v229) = v119;
        BYTE4(v229) = v116 == v45;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v52 = *(&static Signpost.animationState + 1);
    v55 = static Signpost.animationState;
    v53 = word_1ED5283E8;
    v44 = HIBYTE(word_1ED5283E8);
    v155 = byte_1ED5283EA;
    v156 = static os_signpost_type_t.end.getter();
    v229 = __PAIR128__(v52, v55);
    LOBYTE(v230) = v53;
    BYTE1(v230) = v44;
    BYTE2(v230) = v155;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    LODWORD(v208.f64[0]) = v156;
    v157 = one-time initialization token for _signpostLog;
    Counter = v195;

    if (v157 != -1)
    {
      swift_once();
    }

    v193 = a1;
    v50 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v45)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    swift_once();
  }

  Counter = AGGraphGetAttributeGraph();
  v158 = AGGraphGetCounter();

  v159 = MEMORY[0x1E69E6870];
  *(v51 + 56) = MEMORY[0x1E69E6810];
  *(v51 + 64) = v159;
  *(v51 + 32) = v158;
  v160 = AGGraphGetCurrentAttribute();
  if (v160 == v45)
  {
    goto LABEL_187;
  }

  v161 = v51;
  v162 = MEMORY[0x1E69E76D0];
  *(v51 + 96) = MEMORY[0x1E69E7668];
  *(v51 + 104) = v162;
  *(v51 + 72) = v160;
  *(v51 + 136) = MEMORY[0x1E69E6158];
  *(v51 + 144) = lazy protocol witness table accessor for type String and conformance String();
  strcpy((v51 + 112), "ViewGeometry");
  *(v51 + 125) = 0;
  *(v51 + 126) = -5120;
  if (v44)
  {
    LOBYTE(v211) = LOBYTE(v208.f64[0]);
    *&v221 = &dword_18D018000;
    v216 = v51;
    *&v217.f64[0] = v50;
    *&v229 = v55;
    *(&v229 + 1) = v52;
    LOBYTE(v230) = v53;
    *&v212.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v212.f64[1] = 37;
    LOBYTE(v213) = 2;
    v163 = v197;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v203 + 8))(v163, v207);
    goto LABEL_174;
  }

  v165 = v55;
  if (v55 == 20)
  {
    v45 = 3;
  }

  else
  {
    v45 = 4;
  }

  v112 = (bswap32(v55) | (4 * WORD1(v55)));
  v123 = LOBYTE(v208.f64[0]);
  v166 = v203 + 16;
  v198 = *(v203 + 16);
  v167 = v198(v206, v197, v207);
  a1 = 0;
  LOBYTE(v212.f64[0]) = 1;
  v205 = v45;
  v203 = v166;
  v201 = (16 * v45);
  *&v202 = v166 - 8;
  *&v208.f64[0] = v161;
  v199 = v165;
  v200 = v161 + 32;
  do
  {
    v204 = &v185;
    MEMORY[0x1EEE9AC00](v167);
    v169 = &v185 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
    v119 = v169 + 8;
    v170 = v205;
    v171 = v169 + 8;
    do
    {
      *(v171 - 1) = 0;
      *v171 = 0;
      v171 += 16;
      --v170;
    }

    while (v170);
    v172 = v200 + 40 * a1;
    v173 = v205;
    while (1)
    {
      v174 = *(*&v208.f64[0] + 16);
      if (a1 == v174)
      {
        break;
      }

      if (a1 >= v174)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v183 = v116;
        swift_once();
        v116 = v183;
LABEL_128:
        v153 = v112[77];
        if (*(v153 + 16) >= 0x43uLL)
        {
          if (*(v153 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v229) = v119;
            BYTE4(v229) = v116 == v45;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v154 = one-time initialization token for animationState;
          v195 = v123;

          if (v154 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v184 = v116;
        swift_once();
        v116 = v184;
        goto LABEL_141;
      }

      ++a1;
      outlined init with copy of AnyTrackedValue(v172, &v229);
      v175 = *(&v230 + 1);
      LODWORD(v45) = v231;
      __swift_project_boxed_opaque_existential_1(&v229, *(&v230 + 1));
      *(v119 - 1) = CVarArg.kdebugValue(_:)(v112 | v123, v175);
      *v119 = v176 & 1;
      v119 += 16;
      v116 = __swift_destroy_boxed_opaque_existential_1(&v229);
      v172 += 40;
      if (!--v173)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v212.f64[0]) = 0;
LABEL_159:
    v177 = v199;
    if (v199 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v169[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v169[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v169[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v177 != 20 && v169[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v178 = *v202;
    v179 = v206;
    v45 = v207;
    (*v202)(v206, v207);
    v180 = __swift_project_value_buffer(v45, static OSSignpostID.continuation);
    v167 = v198(v179, v180, v45);
  }

  while ((LOBYTE(v212.f64[0]) & 1) != 0);

  v181 = v207;
  v178(v206, v207);
  v178(v197, v181);
LABEL_174:

  a1 = v193;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(v196 + 56) = 0;
LABEL_176:
  v182 = v226;
  *a1 = v225;
  *(a1 + 2) = v182;
  *(a1 + 3) = v182;
  a1[64] = 1;
  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(_BYTE *a1, uint64_t a2, unsigned int a3, char *a4)
{
  v259 = *MEMORY[0x1E69E9840];
  v215 = type metadata accessor for OSSignpostID();
  v211 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v213 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v191 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v191 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v191 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v214 = &v191 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v204 = &v191 - v21;
  if (*(a4 + 7))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  v25 = &v227;
  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    a1[72] = 1;
  }

  else if (a1[72] != 1)
  {
    goto LABEL_96;
  }

  MeshGradient._Paint.animatableData.getter(&v224);
  v27 = *(a4 + 2);
  if (!v27)
  {
    goto LABEL_95;
  }

  v212 = a2;
  v205 = a1;
  v28 = a3;
  v209 = v11;
  v210 = v14;
  v193 = v17;
  v30 = *(a4 + 3);
  v29 = *(a4 + 4);
  v31 = *(a4 + 5);
  v32 = *(a4 + 12);
  v232[0] = v27;
  v232[1] = v30;
  v232[2] = v29;
  v232[3] = v31;
  v216 = HIDWORD(v31);
  v233 = v32;
  v230[0] = v224;
  v230[1] = v225;
  v231 = v226;
  if (_s7SwiftUI14AnimatablePairV2eeoiySbACyxq_G_AEtFZAA0C5ArrayVySfG_ACyAGyACySfACySfACyS2fGGGGAA5ColorVAAE11ResolvedHDRV01_C0VGTt1B5(v230, v232))
  {
    a3 = v28;
    a1 = v205;
    goto LABEL_95;
  }

  v195 = v28;
  v196 = v32;
  v197 = v31;
  v198 = v27;
  v194 = v30;
  v200 = v29;
  outlined copy of AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>?(v27);
  AGGraphClearUpdate();
  v33 = *(a4 + 1);
  v256[0] = *a4;
  v256[1] = v33;
  v34 = *(a4 + 3);
  v256[2] = *(a4 + 2);
  v257 = v34;
  v203 = a4;
  v258 = *(a4 + 16);
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v256, &v251, &lazy cache variable for type metadata for AnimatableAttributeHelper<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
  v35 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v256, &lazy cache variable for type metadata for AnimatableAttributeHelper<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v36 = Transaction.effectiveAnimation.getter(v35);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    a3 = v195;
    v37 = v212;
    if (!v212)
    {
      outlined consume of ScrapeableContent?(v198);

      a1 = v205;
      a4 = v203;
      v25 = &v227;
      goto LABEL_95;
    }
  }

  v38 = v194;
  v39 = *&v200;
  LODWORD(v208) = HIDWORD(v29);
  LODWORD(v212) = v197;
  v40 = *&v216;
  v41 = v196;
  v42 = v225;
  v43 = v226;
  v221 = v224;
  v222 = v225;
  v223 = v226;

  _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(&v221, v198);
  _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v221.i64[1], v38);
  *&v222 = *&v42 - v39;
  *(&v222 + 1) = *(&v42 + 1) - *&v208;
  *(&v222 + 2) = *(&v42 + 2) - *&v212;
  *(&v222 + 3) = *(&v42 + 3) - v40;
  if (v43 > v41)
  {
    v44 = v43;
  }

  else
  {
    v44 = v41;
  }

  v45 = *(&v257 + 1);
  v223 = v44;
  v24 = *AGGraphGetValue();
  v191 = v37;
  v192 = v35;
  if (!v45)
  {
    v227 = v221;
    v228 = v222;
    v229 = v223;
    *&v246 = &type metadata for MeshGradient._Paint;
    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v227, &v251, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    type metadata accessor for MeshGradient._Paint.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Type, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
    v80 = swift_dynamicCast();
    if (v80)
    {
      v81 = v251;
    }

    else
    {
      v81 = 0;
    }

    if (v80)
    {
      v82 = *(&v251 + 1);
    }

    else
    {
      v82 = 0;
    }

    type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>();
    swift_allocObject();

    v199 = specialized AnimatorState.init(animation:interval:at:in:finishingDefinition:)(v83, &v227, v35, v81, v82, v24);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v85 = CurrentAttribute;
    LODWORD(a1) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v86 = 0;
    }

    else
    {
      v86 = CurrentAttribute;
    }

    v87 = *(v205 + 3);
    v248 = *(v205 + 2);
    v249 = v87;
    v250 = *(v205 + 8);
    v88 = *(v205 + 1);
    v246 = *v205;
    v247 = v88;
    v253 = v248;
    v254 = v87;
    v255 = v250;
    v251 = v246;
    v252 = v88;
    outlined init with copy of MeshGradient._Paint(&v246, &v240);
    v89 = outlined destroy of MeshGradient._Paint(&v251);
    (*(*v37 + 96))(&v234, v89);
    v91 = v234;
    v90 = v235;
    v92 = v236;
    v93 = v238;
    v219 = 0x7FF8000000000000;
    v220 = 0x7FF8000000000000;
    v217 = NAN;
    v218 = 0x3FF0000000000000;
    v240 = v234;
    v241 = v235;
    v242 = v236;
    v212 = v237;
    v243 = v237;
    v244 = v238;
    LODWORD(v216) = v239;
    LOBYTE(v245) = v239;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v240, &v220, &v219, &v218, &v217);
    v94 = v219;
    v95 = v220;
    v96 = v217;
    v97 = v218;
    if (one-time initialization token for enabledCategories != -1)
    {
      v210 = v220;
      v207 = v219;
      v208 = v218;
      v206 = v217;
      swift_once();
      v96 = v206;
      v94 = v207;
      v97 = v208;
      v95 = v210;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v98 = static CustomEventTrace.recorder) != 0)
      {
        LODWORD(v210) = a1;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v208 = v93;
        v99 = *(v98 + 16);
        LODWORD(v240) = v86;
        BYTE4(v240) = v85 == a1;
        v241 = &type metadata for MeshGradient._Paint;
        v242 = v95;
        v243 = v94;
        v244 = v97;
        v245 = v96;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v100 = v99;
        LODWORD(a1) = v210;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v91, v90, v92, v212, v208, v216);
      }

      else
      {
        outlined consume of Animation.Function(v91, v90, v92, v212, v93, v216);
      }

      v101 = one-time initialization token for animationState;

      if (v101 == -1)
      {
LABEL_55:
        v67 = *(&static Signpost.animationState + 1);
        v66 = static Signpost.animationState;
        LOBYTE(v37) = word_1ED5283E8;
        v69 = HIBYTE(word_1ED5283E8);
        v102 = byte_1ED5283EA;
        v103 = static os_signpost_type_t.begin.getter();
        v240 = v66;
        v241 = v67;
        LOBYTE(v242) = v37;
        BYTE1(v242) = v69;
        BYTE2(v242) = v102;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v116 = v199;

          a4 = v203;
          *(v203 + 7) = v116;
          a1 = v205;
          goto LABEL_93;
        }

        LODWORD(v216) = v103;
        v104 = one-time initialization token for _signpostLog;

        if (v104 != -1)
        {
          goto LABEL_198;
        }

        goto LABEL_57;
      }
    }

    swift_once();
    goto LABEL_55;
  }

  v227 = v221;
  v228 = v222;
  v229 = v223;

  LOBYTE(v251) = 0;
  v199 = v45;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v37, &v227, v35, v24);
  v46 = AGGraphGetCurrentAttribute();
  v47 = v46;
  LODWORD(a1) = *MEMORY[0x1E698D3F8];
  if (v46 == *MEMORY[0x1E698D3F8])
  {
    v48 = 0;
  }

  else
  {
    v48 = v46;
  }

  LODWORD(v216) = v48;
  v49 = *(v205 + 3);
  v248 = *(v205 + 2);
  v249 = v49;
  v250 = *(v205 + 8);
  v50 = *(v205 + 1);
  v246 = *v205;
  v247 = v50;
  v253 = v248;
  v254 = v49;
  v255 = v250;
  v251 = v246;
  v252 = v50;
  outlined init with copy of MeshGradient._Paint(&v246, &v240);
  v51 = outlined destroy of MeshGradient._Paint(&v251);
  (*(*v37 + 96))(&v234, v51);
  v53 = v234;
  v52 = v235;
  v54 = v236;
  v55 = v238;
  LODWORD(v56) = v239;
  v219 = 0x7FF8000000000000;
  v220 = 0x7FF8000000000000;
  v217 = NAN;
  v218 = 0x3FF0000000000000;
  v240 = v234;
  v241 = v235;
  v242 = v236;
  v57 = v237;
  v243 = v237;
  v244 = v238;
  LOBYTE(v245) = v239;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v240, &v220, &v219, &v218, &v217);
  v58 = v219;
  v59 = v220;
  *&v60 = v217;
  v61 = v218;
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
      goto LABEL_30;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v37 = static CustomEventTrace.recorder) != 0)
    {
      LODWORD(v213) = a1;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      LODWORD(v212) = v56;
      v62 = *(v37 + 16);
      LODWORD(v240) = v216;
      BYTE4(v240) = v47 == a1;
      v241 = &type metadata for MeshGradient._Paint;
      v242 = v59;
      v243 = v58;
      v244 = v61;
      v245 = *&v60;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
      v216 = v63;

      v64 = v62;
      LODWORD(a1) = v213;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v53, v52, v54, v57, v55, v212);
    }

    else
    {
      outlined consume of Animation.Function(v53, v52, v54, v57, v55, v56);
    }

    v65 = one-time initialization token for animationState;

    if (v65 != -1)
    {
      goto LABEL_193;
    }

LABEL_30:
    v67 = *(&static Signpost.animationState + 1);
    v66 = static Signpost.animationState;
    v68 = word_1ED5283E8;
    v69 = HIBYTE(word_1ED5283E8);
    v70 = byte_1ED5283EA;
    v71 = static os_signpost_type_t.event.getter();
    v240 = v66;
    v241 = v67;
    LOBYTE(v242) = v68;
    BYTE1(v242) = v69;
    BYTE2(v242) = v70;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_92;
    }

    LODWORD(v216) = v71;
    v72 = one-time initialization token for _signpostLog;

    if (v72 != -1)
    {
      swift_once();
    }

    v73 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == a1)
    {
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      swift_once();
LABEL_57:
      v105 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == a1)
      {
        __break(1u);
      }

      else
      {
        v107 = a1;
        v108 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v110 = MEMORY[0x1E69E6870];
        *(v106 + 56) = MEMORY[0x1E69E6810];
        *(v106 + 64) = v110;
        *(v106 + 32) = Counter;
        v111 = AGGraphGetCurrentAttribute();
        if (v111 != v107)
        {
          v112 = MEMORY[0x1E69E76D0];
          *(v106 + 96) = MEMORY[0x1E69E7668];
          *(v106 + 104) = v112;
          *(v106 + 72) = v111;
          *(v106 + 136) = MEMORY[0x1E69E6158];
          *(v106 + 144) = lazy protocol witness table accessor for type String and conformance String();
          *(v106 + 112) = 0x746E6961505FLL;
          *(v106 + 120) = 0xE600000000000000;
          v113 = v106;
          v114 = v209;
          if (v69)
          {
            LOBYTE(v217) = v216;
            v219 = v105;
            v220 = &dword_18D018000;
            v240 = v66;
            v241 = v67;
            LOBYTE(v242) = v37;
            v234 = "Animation: (%p) [%d] %{public}@ started";
            v235 = 39;
            LOBYTE(v236) = 2;
            v218 = v106;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
            v115 = v199;

            (*(v211 + 1))(v114, v215);
          }

          else
          {
            v175 = v66;
            if (v66 == 20)
            {
              v176 = 3;
            }

            else
            {
              v176 = 4;
            }

            a4 = (bswap32(v66) | (4 * (v66 >> 16)));
            v55 = v216;
            v128 = v211 + 16;
            v193 = *(v211 + 2);
            v177 = v193(v213, v209, v215);
            v121 = 0;
            LOBYTE(v234) = 1;
            v212 = v176;
            v201 = v128;
            v202 = v175;
            v207 = 16 * v176;
            v208 = (v128 - 8);
            v216 = v113;
            *&v206 = v113 + 32;
            do
            {
              v210 = &v191;
              MEMORY[0x1EEE9AC00](v177);
              v179 = &v191 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
              a1 = v179 + 8;
              v180 = v212;
              v181 = v179 + 8;
              do
              {
                *(v181 - 1) = 0;
                *v181 = 0;
                v181 += 16;
                --v180;
              }

              while (v180);
              v127 = (*&v206 + 40 * v121);
              v25 = v212;
              while (1)
              {
                v182 = *(v216 + 16);
                if (v121 == v182)
                {
                  break;
                }

                if (v121 >= v182)
                {
                  goto LABEL_183;
                }

                ++v121;
                outlined init with copy of AnyTrackedValue(v127, &v240);
                v183 = v243;
                v128 = v244;
                __swift_project_boxed_opaque_existential_1(&v240, v243);
                *(a1 - 1) = CVarArg.kdebugValue(_:)(a4 | v55, v183);
                *a1 = v184 & 1;
                a1 += 16;
                v122 = __swift_destroy_boxed_opaque_existential_1(&v240);
                v127 += 5;
                if (!--v25)
                {
                  goto LABEL_164;
                }
              }

              LOBYTE(v234) = 0;
LABEL_164:
              v185 = v202;
              if (v202 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              if (v179[8] == 1)
              {
                kdebug_trace_string();
              }

              if (v179[24] == 1)
              {
                kdebug_trace_string();
              }

              if (v179[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v185 != 20 && v179[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v154 = *v208;
              v128 = v213;
              v186 = v215;
              (*v208)(v213, v215);
              v187 = __swift_project_value_buffer(v186, static OSSignpostID.continuation);
              v177 = v193(v128, v187, v186);
            }

            while ((v234 & 1) != 0);
LABEL_180:
            v115 = v199;

            v188 = v215;
            v154(v213, v215);
            v154(v209, v188);
          }

          a4 = v203;
          *(v203 + 7) = v115;
          a1 = v205;
          v25 = &v227;
          a3 = v195;
          goto LABEL_94;
        }
      }

      __break(1u);
    }

    LODWORD(v37) = a1;
    v75 = AGGraphGetAttributeGraph();
    a1 = AGGraphGetCounter();

    v76 = MEMORY[0x1E69E6870];
    *(v74 + 56) = MEMORY[0x1E69E6810];
    *(v74 + 64) = v76;
    *(v74 + 32) = a1;
    v77 = AGGraphGetCurrentAttribute();
    if (v77 == v37)
    {
      goto LABEL_197;
    }

    v78 = MEMORY[0x1E69E76D0];
    *(v74 + 96) = MEMORY[0x1E69E7668];
    *(v74 + 104) = v78;
    *(v74 + 72) = v77;
    *(v74 + 136) = MEMORY[0x1E69E6158];
    *(v74 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v74 + 112) = 0x746E6961505FLL;
    *(v74 + 120) = 0xE600000000000000;
    if (v69)
    {
      LOBYTE(v217) = v216;
      v219 = v73;
      v220 = &dword_18D018000;
      v240 = v66;
      v241 = v67;
      LOBYTE(v242) = v68;
      v234 = "Animation: (%p) [%d] %{public}@ updated";
      v235 = 39;
      LOBYTE(v236) = 2;
      v218 = v74;
      v79 = v193;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

      (*(v211 + 1))(v79, v215);
      goto LABEL_91;
    }

    *&v117 = v66;
    if (v66 == 20)
    {
      v118 = 3;
    }

    else
    {
      v118 = 4;
    }

    v25 = bswap32(v66) | (4 * (v66 >> 16));
    v55 = v216;
    v119 = v211 + 16;
    v201 = *(v211 + 2);
    v120 = (v201)(v210, v193, v215);
    v121 = 0;
    LOBYTE(v234) = 1;
    v213 = v118;
    v202 = v119;
    v208 = (16 * v118);
    v209 = v119 - 8;
    v216 = v74;
    v206 = v117;
    v207 = v74 + 32;
LABEL_67:
    v212 = &v191;
    MEMORY[0x1EEE9AC00](v120);
    a4 = &v191 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
    v124 = a4 + 8;
    v125 = v213;
    v126 = a4 + 8;
    do
    {
      *(v126 - 1) = 0;
      *v126 = 0;
      v126 += 16;
      --v125;
    }

    while (v125);
    v127 = (v207 + 40 * v121);
    v128 = v213;
    while (1)
    {
      v129 = *(v216 + 16);
      if (v121 == v129)
      {
        LOBYTE(v234) = 0;
LABEL_75:
        v132 = v206;
        if (*&v206 == 20)
        {
          a1 = v210;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          a1 = v210;
        }

        if (a4[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a4[40] == 1)
        {
          kdebug_trace_string();
        }

        if (*&v132 != 20 && a4[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v133 = *v209;
        v134 = v215;
        (*v209)(a1, v215);
        v135 = __swift_project_value_buffer(v134, static OSSignpostID.continuation);
        v120 = (v201)(a1, v135, v134);
        if ((v234 & 1) == 0)
        {

          v136 = v215;
          v133(a1, v215);
          v133(v193, v136);
LABEL_91:

LABEL_92:
          a1 = v205;
          a4 = v203;
LABEL_93:
          v25 = &v227;
          a3 = v195;
LABEL_94:
          specialized AnimatorState.addListeners(transaction:)(v192);

          outlined consume of ScrapeableContent?(v198);
LABEL_95:
          result = outlined consume of ScrapeableContent?(*(a4 + 2));
          v137 = v226;
          v138 = v225;
          *(a4 + 1) = v224;
          *(a4 + 2) = v138;
          *(a4 + 12) = v137;
LABEL_96:
          v128 = *(a4 + 7);
          if (!v128)
          {
            return result;
          }

          MeshGradient._Paint.animatableData.getter(&v246);
          LOBYTE(v251) = 0;
          v139 = specialized AnimatorState.update(_:at:environment:)(&v246, a3, v24);
          v122 = AGGraphGetCurrentAttribute();
          v55 = *MEMORY[0x1E698D3F8];
          if (v122 == v55)
          {
            LODWORD(v121) = 0;
          }

          else
          {
            LODWORD(v121) = v122;
          }

          v127 = &type metadata instantiation cache for TupleTypeDescription;
          if (v139)
          {
            if (one-time initialization token for enabledCategories != -1)
            {
              goto LABEL_184;
            }

            goto LABEL_102;
          }

          if (one-time initialization token for enabledCategories == -1)
          {
LABEL_115:
            v149 = v127[77];
            if (*(v149 + 16) >= 0x43uLL)
            {
              if (*(v149 + 98) == 1 && static CustomEventTrace.recorder)
              {
                *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
                LODWORD(v251) = v121;
                BYTE4(v251) = v122 == v55;
                type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
                AGGraphAddTraceEvent();
              }

              specialized AnimatorState.nextUpdate()();
              goto LABEL_150;
            }

            __break(1u);
LABEL_188:
            swift_once();
            goto LABEL_107;
          }

LABEL_186:
          v190 = v122;
          swift_once();
          v122 = v190;
          goto LABEL_115;
        }

        goto LABEL_67;
      }

      if (v121 >= v129)
      {
        break;
      }

      ++v121;
      outlined init with copy of AnyTrackedValue(v127, &v240);
      v130 = v243;
      a1 = v244;
      __swift_project_boxed_opaque_existential_1(&v240, v243);
      *(v124 - 1) = CVarArg.kdebugValue(_:)(v25 | v55, v130);
      *v124 = v131 & 1;
      v124 += 16;
      v122 = __swift_destroy_boxed_opaque_existential_1(&v240);
      v127 += 5;
      if (!--v128)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v189 = v122;
    swift_once();
    v122 = v189;
LABEL_102:
    v140 = v127[77];
    if (*(v140 + 16) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_186;
    }

    if (*(v140 + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v251) = v121;
      BYTE4(v251) = v122 == v55;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v202 = v128;
    v203 = a4;
    v205 = a1;
    v141 = one-time initialization token for animationState;

    if (v141 != -1)
    {
      goto LABEL_188;
    }

LABEL_107:
    v53 = *(&static Signpost.animationState + 1);
    v56 = static Signpost.animationState;
    v47 = word_1ED5283E8;
    v57 = HIBYTE(word_1ED5283E8);
    v142 = byte_1ED5283EA;
    v143 = static os_signpost_type_t.end.getter();
    v251 = __PAIR128__(v53, v56);
    LOBYTE(v252) = v47;
    BYTE1(v252) = v57;
    BYTE2(v252) = v142;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_149;
    }

    LODWORD(v216) = v143;
    v144 = one-time initialization token for _signpostLog;
    v54 = v202;

    if (v144 != -1)
    {
      swift_once();
    }

    v52 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v55)
    {
      __break(1u);
      goto LABEL_190;
    }

    v54 = AGGraphGetAttributeGraph();
    a1 = AGGraphGetCounter();

    v145 = MEMORY[0x1E69E6870];
    *(v37 + 56) = MEMORY[0x1E69E6810];
    *(v37 + 64) = v145;
    *(v37 + 32) = a1;
    v146 = AGGraphGetCurrentAttribute();
    if (v146 != v55)
    {
      break;
    }

LABEL_190:
    __break(1u);
LABEL_191:
    v212 = v61;
    v213 = v59;
    v208 = v60;
    v209 = v58;
    swift_once();
    v60 = v208;
    v58 = v209;
    v61 = v212;
    v59 = v213;
  }

  v147 = MEMORY[0x1E69E76D0];
  *(v37 + 96) = MEMORY[0x1E69E7668];
  *(v37 + 104) = v147;
  *(v37 + 72) = v146;
  *(v37 + 136) = MEMORY[0x1E69E6158];
  *(v37 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v37 + 112) = 0x746E6961505FLL;
  *(v37 + 120) = 0xE600000000000000;
  if (v57)
  {
    v221.i8[0] = v216;
    *&v256[0] = &dword_18D018000;
    v234 = v52;
    *&v251 = v56;
    *(&v251 + 1) = v53;
    LOBYTE(v252) = v47;
    v240 = "Animation: (%p) [%d] %{public}@ ended";
    v241 = 37;
    LOBYTE(v242) = 2;
    v224.i64[0] = v37;
    v148 = v204;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v211 + 1))(v148, v215);
  }

  else
  {
    v150 = v56;
    if (v56 == 20)
    {
      v151 = 3;
    }

    else
    {
      v151 = 4;
    }

    v152 = bswap32(v56) | (4 * WORD1(v56));
    v153 = v216;
    v154 = (v211 + 16);
    v206 = *(v211 + 2);
    v155 = (*&v206)(v214, v204, v215);
    v156 = 0;
    LOBYTE(v240) = 1;
    v213 = v151;
    v211 = v154;
    v209 = (16 * v151);
    v210 = v154 - 8;
    v216 = v37;
    v207 = v150;
    v208 = (v37 + 32);
    do
    {
      v212 = &v191;
      MEMORY[0x1EEE9AC00](v155);
      v158 = &v191 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
      v159 = v158 + 8;
      v160 = v213;
      v161 = v158 + 8;
      do
      {
        *(v161 - 1) = 0;
        *v161 = 0;
        v161 += 16;
        --v160;
      }

      while (v160);
      v162 = &v208[5 * v156];
      v163 = v213;
      while (1)
      {
        v164 = *(v216 + 16);
        if (v156 == v164)
        {
          break;
        }

        if (v156 >= v164)
        {
          __break(1u);
          goto LABEL_180;
        }

        ++v156;
        outlined init with copy of AnyTrackedValue(v162, &v251);
        v165 = *(&v252 + 1);
        v166 = __swift_project_boxed_opaque_existential_1(&v251, *(&v252 + 1));
        v167 = v165;
        v154 = v166;
        *(v159 - 1) = CVarArg.kdebugValue(_:)(v152 | v153, v167);
        *v159 = v168 & 1;
        v159 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v251);
        v162 += 40;
        if (!--v163)
        {
          goto LABEL_133;
        }
      }

      LOBYTE(v240) = 0;
LABEL_133:
      v169 = v207;
      if (v207 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v158[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v158[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v158[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v169 != 20 && v158[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v154 = *v210;
      v171 = v214;
      v170 = v215;
      (*v210)(v214, v215);
      v172 = __swift_project_value_buffer(v170, static OSSignpostID.continuation);
      v155 = (*&v206)(v171, v172, v170);
    }

    while ((v240 & 1) != 0);

    v173 = v215;
    v154(v214, v215);
    v154(v204, v173);
  }

LABEL_149:
  specialized AnimatorState.removeListeners()();

  *(v203 + 7) = 0;
  a1 = v205;
  v25 = &v227;
LABEL_150:
  v174 = v248;
  v251 = v246;
  *(v25 + 352) = *(v25 + 272);
  LODWORD(v253) = v174;

  MeshGradient._Paint.animatableData.setter(&v251);

  a1[72] = 1;
  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(char *a1, uint64_t a2, int a3, unint64_t a4, char *a5, uint64_t a6, uint64_t *a7, void (*a8)(void))
{
  v202 = a7;
  LODWORD(v14) = a3;
  v225 = *MEMORY[0x1E69E9840];
  v206 = type metadata accessor for OSSignpostID();
  v204 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v18 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v185 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v205 = (&v185 - v23);
  MEMORY[0x1EEE9AC00](v24);
  *&v203 = &v185 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v207 = &v185 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v197 = &v185 - v29;
  if (*(a4 + 32))
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
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_121;
  }

  v9 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_120;
  }

  v8 = *(a4 + 16);
  if (v9 == v8)
  {
    goto LABEL_120;
  }

  v200 = a6;
  v198 = v18;
  v189 = v21;
  v195 = a1;
  AGGraphClearUpdate();
  v34 = *(a4 + 32);

  v18 = *AGGraphGetValue();

  v188 = v34;

  v35 = v18;
  AGGraphSetUpdate();
  v187 = Transaction.effectiveAnimation.getter(v18);
  if (!v187)
  {
    a6 = v200;
    if (!a2)
    {

      a1 = v195;
      goto LABEL_120;
    }

    v187 = a2;
  }

  v201 = a5;
  v196 = a4;
  v36 = v9 - v8;
  v32 = *AGGraphGetValue();
  LODWORD(v199) = v14;
  v186 = v18;
  if (!v188)
  {
    v219 = v202;
    a8(0);
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Double>.Type);
    v54 = swift_dynamicCast();
    if (v54)
    {
      v55 = v213;
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = v214;
    }

    else
    {
      v56 = 0;
    }

    v57 = v187;

    v185 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(v58, v35, v55, v56, v36, v32);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v60 = CurrentAttribute;
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v61 = 0;
    }

    else
    {
      v61 = CurrentAttribute;
    }

    (*(*v57 + 96))(&v219);
    v62 = v219;
    v63 = v220;
    v65 = v221;
    v64 = v222;
    v66 = v224;
    v212 = NAN;
    v213 = v219;
    *&v209 = 1.0;
    v210 = NAN;
    v208 = NAN;
    v214 = v220;
    v215 = *&v221;
    v216 = v222;
    v217 = v223;
    v205 = v223;
    LOBYTE(v218) = v224;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v213, &v212, &v210, &v209, &v208);
    v8 = v212;
    v67 = v209;
    v68 = *&v210;
    *&v69 = v208;
    a1 = v195;
    if (one-time initialization token for enabledCategories != -1)
    {
      v203 = v210;
      v193 = v209;
      v194 = *&v208;
      swift_once();
      v69 = v194;
      v67 = v193;
      v68 = *&v203;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_191:
      swift_once();
LABEL_83:
      v90 = *(&static Signpost.animationState + 1);
      v89 = static Signpost.animationState;
      v18 = word_1ED5283E8;
      v91 = HIBYTE(word_1ED5283E8);
      v122 = byte_1ED5283EA;
      v123 = static os_signpost_type_t.begin.getter();
      v213 = v89;
      v214 = v90;
      LOBYTE(v215) = v18;
      BYTE1(v215) = v91;
      BYTE2(v215) = v122;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        a4 = v196;
        *(v196 + 32) = v60;
        goto LABEL_119;
      }

      LODWORD(v205) = v123;
      v124 = one-time initialization token for _signpostLog;

      if (v124 != -1)
      {
        goto LABEL_194;
      }

      goto LABEL_85;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v70 = v61;
      v71 = v64;
      v72 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v73 = v60 == a4;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v203) = a4;
        v74 = v66;
        v75 = *(v72 + 16);
        LODWORD(v213) = v70;
        BYTE4(v213) = v73;
        v214 = v202;
        v215 = v8;
        v216 = v68;
        v217 = v67;
        v218 = *&v69;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v202 = v76;

        v77 = v75;
        LODWORD(v14) = v199;
        v78 = v77;
        a1 = v195;
        AGGraphAddTraceEvent();
        v79 = v74;
        LODWORD(a4) = LODWORD(v203);
        outlined consume of Animation.Function(v62, v63, v65, v71, v205, v79);

        goto LABEL_82;
      }

      v84 = v62;
      v85 = v63;
      v86 = v65;
      v87 = v71;
    }

    else
    {
      v84 = v62;
      v85 = v63;
      v86 = v65;
      v87 = v64;
    }

    outlined consume of Animation.Function(v84, v85, v86, v87, v205, v66);
LABEL_82:
    v121 = one-time initialization token for animationState;
    v60 = v185;

    if (v121 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_191;
  }

  LOBYTE(v213) = 0;
  v37 = v187;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v187, v18, v36, v32);
  v38 = AGGraphGetCurrentAttribute();
  LODWORD(v14) = v38;
  LODWORD(a4) = *MEMORY[0x1E698D3F8];
  if (v38 == *MEMORY[0x1E698D3F8])
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  LODWORD(v198) = v39;
  (*(*v37 + 96))(&v219);
  v41 = v219;
  v40 = v220;
  v42 = v221;
  v43 = v222;
  v18 = v223;
  LOBYTE(v44) = v224;
  v212 = NAN;
  v213 = v219;
  *&v209 = 1.0;
  v210 = NAN;
  v208 = NAN;
  v214 = v220;
  v215 = *&v221;
  v216 = v222;
  v217 = v223;
  LOBYTE(v218) = v224;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v213, &v212, &v210, &v209, &v208);
  v8 = v212;
  v45 = v209;
  v46 = *&v210;
  v47 = v208;
  a1 = v195;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v194 = v43;
        v48 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v49 = v14 == a4;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v192 = v18;
          LODWORD(v193) = a4;
          v50 = v44;
          v51 = *(v48 + 16);
          LODWORD(v213) = v198;
          BYTE4(v213) = v49;
          v214 = v202;
          v215 = v8;
          v216 = v46;
          v217 = v45;
          v218 = v47;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v52 = v51;
          a1 = v195;
          AGGraphAddTraceEvent();
          v53 = v50;
          LODWORD(a4) = v193;
          outlined consume of Animation.Function(v41, v40, v42, v194, v192, v53);

          goto LABEL_43;
        }

        v80 = v41;
        v81 = v40;
        v82 = v42;
        v83 = v194;
      }

      else
      {
        v80 = v41;
        v81 = v40;
        v82 = v42;
        v83 = v43;
      }

      outlined consume of Animation.Function(v80, v81, v82, v83, v18, v44);
LABEL_43:
      v88 = one-time initialization token for animationState;

      LODWORD(v14) = v199;
      if (v88 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_189;
    }

    __break(1u);
LABEL_189:
    swift_once();
LABEL_44:
    v90 = *(&static Signpost.animationState + 1);
    v89 = static Signpost.animationState;
    a6 = word_1ED5283E8;
    v91 = HIBYTE(word_1ED5283E8);
    v92 = byte_1ED5283EA;
    v18 = static os_signpost_type_t.event.getter();
    v213 = v89;
    v214 = v90;
    LOBYTE(v215) = a6;
    BYTE1(v215) = v91;
    BYTE2(v215) = v92;
    if (Signpost.isEnabled.getter())
    {
      v93 = one-time initialization token for _signpostLog;

      if (v93 != -1)
      {
        swift_once();
      }

      *&v41 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == a4)
      {
        __break(1u);
      }

      else
      {
        v94 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v96 = MEMORY[0x1E69E6870];
        *(v14 + 56) = MEMORY[0x1E69E6810];
        *(v14 + 64) = v96;
        *(v14 + 32) = Counter;
        v97 = AGGraphGetCurrentAttribute();
        if (v97 != a4)
        {
          v98 = MEMORY[0x1E69E76D0];
          *(v14 + 96) = MEMORY[0x1E69E7668];
          *(v14 + 104) = v98;
          *(v14 + 72) = v97;
          *(v14 + 136) = MEMORY[0x1E69E6158];
          *(v14 + 144) = lazy protocol witness table accessor for type String and conformance String();
          v99 = v200;
          *(v14 + 112) = v201;
          *(v14 + 120) = v99;
          if (v91)
          {
            LOBYTE(v208) = v18;
            v212 = COERCE_DOUBLE(&dword_18D018000);
            v213 = v89;
            v209 = v14;
            v210 = *&v41;
            v214 = v90;
            LOBYTE(v215) = a6;
            v219 = "Animation: (%p) [%d] %{public}@ updated";
            v220 = 39;
            LOBYTE(v221) = 2;
            v100 = v203;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v204 + 8))(COERCE_DOUBLE(*&v100), v206);
          }

          else
          {
            v101 = v89;
            v102 = v18;
            if (v89 == 20)
            {
              v18 = 3;
            }

            else
            {
              v18 = 4;
            }

            v103 = bswap32(v89) | (4 * (v89 >> 16));
            LODWORD(a4) = v102;
            v104 = (v204 + 16);
            v189 = *(v204 + 16);
            v105 = v189(v205, *&v203, v206);
            v42 = 0;
            LOBYTE(v219) = 1;
            v194 = 16 * v18;
            v190 = v104;
            v198 = v104 - 8;
            v193 = v14 + 32;
            v192 = v101;
            v191 = v18;
            do
            {
              v202 = &v185;
              MEMORY[0x1EEE9AC00](v105);
              a1 = &v185 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
              v43 = a1 + 8;
              v108 = v18;
              v109 = a1 + 8;
              do
              {
                *(v109 - 1) = 0;
                *v109 = 0;
                v109 += 16;
                --v108;
              }

              while (v108);
              v110 = v193 + 40 * v42;
              while (1)
              {
                v111 = *(v14 + 16);
                if (v42 == v111)
                {
                  break;
                }

                if (v42 >= v111)
                {
                  goto LABEL_178;
                }

                ++v42;
                outlined init with copy of AnyTrackedValue(v110, &v213);
                v112 = v216;
                a6 = v217;
                v113 = __swift_project_boxed_opaque_existential_1(&v213, v216);
                v114 = v112;
                v41 = v113;
                *(v43 - 1) = CVarArg.kdebugValue(_:)(v103 | a4, v114);
                *v43 = v115 & 1;
                v43 += 16;
                v106 = __swift_destroy_boxed_opaque_existential_1(&v213);
                v110 += 40;
                if (!--v18)
                {
                  goto LABEL_64;
                }
              }

              LOBYTE(v219) = 0;
LABEL_64:
              v116 = v192;
              if (v192 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v18 = v191;
              if (a1[8] == 1)
              {
                kdebug_trace_string();
              }

              if (a1[24] == 1)
              {
                kdebug_trace_string();
              }

              if (a1[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v116 != 20 && a1[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v117 = *v198;
              v118 = v205;
              v41 = v206;
              (*v198)(v205, v206);
              v119 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
              v105 = v189(v118, v119, v41);
            }

            while ((v219 & 1) != 0);

            v120 = v206;
            v117(v205, v206);
            v117(*&v203, v120);
          }

          a1 = v195;
          a4 = v196;
          LODWORD(v14) = v199;
          goto LABEL_119;
        }
      }

      __break(1u);
LABEL_194:
      swift_once();
LABEL_85:
      *&v125 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a6 = swift_allocObject();
      *(a6 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == a4)
      {
        __break(1u);
LABEL_196:
        __break(1u);
      }

      v126 = AGGraphGetAttributeGraph();
      v43 = AGGraphGetCounter();

      v127 = MEMORY[0x1E69E6870];
      *(a6 + 56) = MEMORY[0x1E69E6810];
      *(a6 + 64) = v127;
      *(a6 + 32) = v43;
      v128 = AGGraphGetCurrentAttribute();
      if (v128 == a4)
      {
        goto LABEL_196;
      }

      v129 = MEMORY[0x1E69E76D0];
      *(a6 + 96) = MEMORY[0x1E69E7668];
      *(a6 + 104) = v129;
      *(a6 + 72) = v128;
      *(a6 + 136) = MEMORY[0x1E69E6158];
      *(a6 + 144) = lazy protocol witness table accessor for type String and conformance String();
      v130 = v200;
      *(a6 + 112) = v201;
      *(a6 + 120) = v130;
      if (v91)
      {
        LOBYTE(v208) = v205;
        v212 = COERCE_DOUBLE(&dword_18D018000);
        v213 = v89;
        v209 = a6;
        v210 = *&v125;
        v214 = v90;
        LOBYTE(v215) = v18;
        v219 = "Animation: (%p) [%d] %{public}@ started";
        v220 = 39;
        LOBYTE(v221) = 2;
        v131 = v189;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v132 = v185;

        (*(v204 + 8))(v131, v206);
      }

      else
      {
        v133 = v89;
        v134 = v89 == 20 ? 3 : 4;
        v135 = bswap32(v89) | (4 * (v89 >> 16));
        LODWORD(a4) = v205;
        v41 = (v204 + 16);
        v190 = *(v204 + 16);
        v136 = v190(v198, v189, v206);
        v42 = 0;
        LOBYTE(v219) = 1;
        v205 = v134;
        v194 = 16 * v134;
        v191 = v41;
        v202 = (v41 - 2);
        v193 = a6 + 32;
        v192 = v133;
        do
        {
          v203 = COERCE_DOUBLE(&v185);
          MEMORY[0x1EEE9AC00](v136);
          a1 = &v185 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
          v18 = (a1 + 8);
          v138 = v205;
          v139 = a1 + 8;
          do
          {
            *(v139 - 1) = 0;
            *v139 = 0;
            v139 += 16;
            --v138;
          }

          while (v138);
          v140 = v193 + 40 * v42;
          v141 = v205;
          while (1)
          {
            v142 = *(a6 + 16);
            if (v42 == v142)
            {
              break;
            }

            if (v42 >= v142)
            {
              goto LABEL_179;
            }

            ++v42;
            outlined init with copy of AnyTrackedValue(v140, &v213);
            v143 = v216;
            v43 = v217;
            v144 = __swift_project_boxed_opaque_existential_1(&v213, v216);
            v145 = v143;
            v41 = v144;
            *(v18 - 8) = CVarArg.kdebugValue(_:)(v135 | a4, v145);
            *v18 = v146 & 1;
            v18 += 16;
            v106 = __swift_destroy_boxed_opaque_existential_1(&v213);
            v140 += 40;
            if (!--v141)
            {
              goto LABEL_102;
            }
          }

          LOBYTE(v219) = 0;
LABEL_102:
          v18 = v192;
          if (v192 == 20)
          {
            v43 = v198;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
            LODWORD(v14) = v199;
          }

          else
          {
            kdebug_trace();
            LODWORD(v14) = v199;
            v43 = v198;
          }

          if (a1[8] == 1)
          {
            kdebug_trace_string();
          }

          if (a1[24] == 1)
          {
            kdebug_trace_string();
          }

          if (a1[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v18 != 20 && a1[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v147 = *v202;
          v41 = v206;
          (*v202)(v43, v206);
          v148 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
          v136 = v190(v43, v148, v41);
        }

        while ((v219 & 1) != 0);
        v149 = v185;

        v150 = v43;
        v132 = v149;
        v151 = v206;
        v147(v150, v206);
        v147(v189, v151);
      }

      a4 = v196;
      *(v196 + 32) = v132;
      a1 = v195;
    }

    else
    {

      a4 = v196;
    }

LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v186);

    a6 = v200;
    a5 = v201;
LABEL_120:
    *(a4 + 16) = v9;
    *(a4 + 24) = 0;
LABEL_121:
    v43 = *(a4 + 32);
    if (!v43)
    {
      return result;
    }

    v201 = a5;
    v196 = a4;
    v212 = *a1;

    LOBYTE(v213) = 0;
    v152 = specialized AnimatorState.update(_:at:environment:)(&v212, v14, v32);
    v106 = AGGraphGetCurrentAttribute();
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (v106 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v42) = 0;
    }

    else
    {
      LODWORD(v42) = v106;
    }

    *&v41 = COERCE_DOUBLE(&type metadata instantiation cache for TupleTypeDescription);
    if (v152)
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
    v162 = *(v41 + 77);
    if (*(v162 + 16) >= 0x43uLL)
    {
      if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v213) = v42;
        BYTE4(v213) = v106 == a4;
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
    v44 = *(&static Signpost.animationState + 1);
    v42 = static Signpost.animationState;
    LODWORD(v14) = word_1ED5283E8;
    a6 = HIBYTE(word_1ED5283E8);
    v155 = byte_1ED5283EA;
    v40 = static os_signpost_type_t.end.getter();
    v213 = v42;
    v214 = v44;
    LOBYTE(v215) = v14;
    BYTE1(v215) = a6;
    BYTE2(v215) = v155;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v195 = a1;
    v156 = one-time initialization token for _signpostLog;

    if (v156 != -1)
    {
      swift_once();
    }

    *&v41 = COERCE_DOUBLE(_signpostLog);
    v194 = v43;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != a4)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v194 = v46;
    v192 = v45;
    *&v193 = v47;
    swift_once();
    v47 = *&v193;
    v45 = v192;
    v46 = v194;
  }

  v43 = AGGraphGetAttributeGraph();
  v18 = AGGraphGetCounter();

  v157 = MEMORY[0x1E69E6870];
  *(a1 + 7) = MEMORY[0x1E69E6810];
  *(a1 + 8) = v157;
  *(a1 + 4) = v18;
  v158 = AGGraphGetCurrentAttribute();
  if (v158 == a4)
  {
    goto LABEL_186;
  }

  v159 = MEMORY[0x1E69E76D0];
  *(a1 + 12) = MEMORY[0x1E69E7668];
  *(a1 + 13) = v159;
  *(a1 + 18) = v158;
  *(a1 + 17) = MEMORY[0x1E69E6158];
  *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
  v160 = v200;
  *(a1 + 14) = v201;
  *(a1 + 15) = v160;
  if (a6)
  {
    v211 = v40;
    v209 = v41;
    v210 = COERCE_DOUBLE(&dword_18D018000);
    v213 = v42;
    v214 = v44;
    LOBYTE(v215) = v14;
    v219 = "Animation: (%p) [%d] %{public}@ ended";
    v220 = 37;
    LOBYTE(v221) = 2;
    v208 = *&a1;
    v161 = v197;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v204 + 8))(v161, v206);
    goto LABEL_173;
  }

  v163 = v42;
  if (v42 == 20)
  {
    v164 = 3;
  }

  else
  {
    v164 = 4;
  }

  v18 = bswap32(v42) | (4 * WORD1(v42));
  LODWORD(v42) = v40;
  v165 = v204 + 16;
  v198 = *(v204 + 16);
  v166 = (v198)(v207, v197, v206);
  a4 = 0;
  LOBYTE(v219) = 1;
  v202 = (16 * v164);
  v204 = v165;
  *&v203 = v165 - 8;
  v201 = a1 + 32;
  v200 = v163;
  v199 = v164;
  do
  {
    v205 = &v185;
    MEMORY[0x1EEE9AC00](v166);
    v43 = &v185 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
    v168 = v43 + 8;
    v169 = v164;
    v170 = v43 + 8;
    do
    {
      *(v170 - 1) = 0;
      *v170 = 0;
      v170 += 16;
      --v169;
    }

    while (v169);
    v171 = &v201[40 * a4];
    while (1)
    {
      v172 = *(a1 + 2);
      if (a4 == v172)
      {
        break;
      }

      if (a4 >= v172)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v183 = v106;
        swift_once();
        v106 = v183;
LABEL_127:
        v153 = *(v41 + 77);
        if (*(v153 + 16) >= 0x43uLL)
        {
          if (*(v153 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v213) = v42;
            BYTE4(v213) = v106 == a4;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v200 = a6;
          v154 = one-time initialization token for animationState;

          if (v154 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v184 = v106;
        swift_once();
        v106 = v184;
        goto LABEL_140;
      }

      ++a4;
      outlined init with copy of AnyTrackedValue(v171, &v213);
      v173 = v216;
      a6 = v217;
      v174 = __swift_project_boxed_opaque_existential_1(&v213, v216);
      v175 = v173;
      v41 = v174;
      *(v168 - 1) = CVarArg.kdebugValue(_:)(v18 | v42, v175);
      *v168 = v176 & 1;
      v168 += 16;
      v106 = __swift_destroy_boxed_opaque_existential_1(&v213);
      v171 += 40;
      if (!--v164)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v219) = 0;
LABEL_158:
    v177 = v200;
    if (v200 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v43[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v43[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v43[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v177 != 20 && v43[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v178 = **&v203;
    v179 = v207;
    v41 = v206;
    (**&v203)(v207, v206);
    v180 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
    v166 = (v198)(v179, v180, v41);
    v164 = v199;
  }

  while ((v219 & 1) != 0);

  v181 = v206;
  v178(v207, v206);
  v178(v197, v181);
LABEL_173:

  a1 = v195;
LABEL_174:
  v182 = v196;
  specialized AnimatorState.removeListeners()();

  *(v182 + 32) = 0;
LABEL_175:
  *a1 = v212;
  a1[8] = 1;
  return result;
}

{
  v202 = a7;
  LODWORD(v14) = a3;
  v225 = *MEMORY[0x1E69E9840];
  v206 = type metadata accessor for OSSignpostID();
  v204 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v18 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v185 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v205 = (&v185 - v23);
  MEMORY[0x1EEE9AC00](v24);
  *&v203 = &v185 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v207 = &v185 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v197 = &v185 - v29;
  if (*(a4 + 32))
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
    a1[8] = 1;
  }

  else if (a1[8] != 1)
  {
    goto LABEL_121;
  }

  v9 = *a1;
  if (*(a4 + 24))
  {
    goto LABEL_120;
  }

  v8 = *(a4 + 16);
  if (v9 == v8)
  {
    goto LABEL_120;
  }

  v200 = a6;
  v198 = v18;
  v189 = v21;
  v195 = a1;
  AGGraphClearUpdate();
  v34 = *(a4 + 32);

  v18 = *AGGraphGetValue();

  v188 = v34;

  v35 = v18;
  AGGraphSetUpdate();
  v187 = Transaction.effectiveAnimation.getter(v18);
  if (!v187)
  {
    a6 = v200;
    if (!a2)
    {

      a1 = v195;
      goto LABEL_120;
    }

    v187 = a2;
  }

  v201 = a5;
  v196 = a4;
  v36 = v9 - v8;
  v32 = *AGGraphGetValue();
  LODWORD(v199) = v14;
  v186 = v18;
  if (!v188)
  {
    v219 = v202;
    a8(0);
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type);
    v54 = swift_dynamicCast();
    if (v54)
    {
      v55 = v213;
    }

    else
    {
      v55 = 0;
    }

    if (v54)
    {
      v56 = v214;
    }

    else
    {
      v56 = 0;
    }

    v57 = v187;

    v185 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(v58, v35, v55, v56, v36, v32);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v60 = CurrentAttribute;
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v61 = 0;
    }

    else
    {
      v61 = CurrentAttribute;
    }

    (*(*v57 + 96))(&v219);
    v62 = v219;
    v63 = v220;
    v65 = v221;
    v64 = v222;
    v66 = v224;
    v212 = NAN;
    v213 = v219;
    *&v209 = 1.0;
    v210 = NAN;
    v208 = NAN;
    v214 = v220;
    v215 = *&v221;
    v216 = v222;
    v217 = v223;
    v205 = v223;
    LOBYTE(v218) = v224;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v213, &v212, &v210, &v209, &v208);
    v8 = v212;
    v67 = v209;
    v68 = *&v210;
    *&v69 = v208;
    a1 = v195;
    if (one-time initialization token for enabledCategories != -1)
    {
      v203 = v210;
      v193 = v209;
      v194 = *&v208;
      swift_once();
      v69 = v194;
      v67 = v193;
      v68 = *&v203;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_191:
      swift_once();
LABEL_83:
      v90 = *(&static Signpost.animationState + 1);
      v89 = static Signpost.animationState;
      v18 = word_1ED5283E8;
      v91 = HIBYTE(word_1ED5283E8);
      v122 = byte_1ED5283EA;
      v123 = static os_signpost_type_t.begin.getter();
      v213 = v89;
      v214 = v90;
      LOBYTE(v215) = v18;
      BYTE1(v215) = v91;
      BYTE2(v215) = v122;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        a4 = v196;
        *(v196 + 32) = v60;
        goto LABEL_119;
      }

      LODWORD(v205) = v123;
      v124 = one-time initialization token for _signpostLog;

      if (v124 != -1)
      {
        goto LABEL_194;
      }

      goto LABEL_85;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v70 = v61;
      v71 = v64;
      v72 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v73 = v60 == a4;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v203) = a4;
        v74 = v66;
        v75 = *(v72 + 16);
        LODWORD(v213) = v70;
        BYTE4(v213) = v73;
        v214 = v202;
        v215 = v8;
        v216 = v68;
        v217 = v67;
        v218 = *&v69;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v202 = v76;

        v77 = v75;
        LODWORD(v14) = v199;
        v78 = v77;
        a1 = v195;
        AGGraphAddTraceEvent();
        v79 = v74;
        LODWORD(a4) = LODWORD(v203);
        outlined consume of Animation.Function(v62, v63, v65, v71, v205, v79);

        goto LABEL_82;
      }

      v84 = v62;
      v85 = v63;
      v86 = v65;
      v87 = v71;
    }

    else
    {
      v84 = v62;
      v85 = v63;
      v86 = v65;
      v87 = v64;
    }

    outlined consume of Animation.Function(v84, v85, v86, v87, v205, v66);
LABEL_82:
    v121 = one-time initialization token for animationState;
    v60 = v185;

    if (v121 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_191;
  }

  LOBYTE(v213) = 0;
  v37 = v187;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v187, v18, v36, v32);
  v38 = AGGraphGetCurrentAttribute();
  LODWORD(v14) = v38;
  LODWORD(a4) = *MEMORY[0x1E698D3F8];
  if (v38 == *MEMORY[0x1E698D3F8])
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  LODWORD(v198) = v39;
  (*(*v37 + 96))(&v219);
  v41 = v219;
  v40 = v220;
  v42 = v221;
  v43 = v222;
  v18 = v223;
  LOBYTE(v44) = v224;
  v212 = NAN;
  v213 = v219;
  *&v209 = 1.0;
  v210 = NAN;
  v208 = NAN;
  v214 = v220;
  v215 = *&v221;
  v216 = v222;
  v217 = v223;
  LOBYTE(v218) = v224;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v213, &v212, &v210, &v209, &v208);
  v8 = v212;
  v45 = v209;
  v46 = *&v210;
  v47 = v208;
  a1 = v195;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_187;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v194 = v43;
        v48 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v49 = v14 == a4;
          *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
          v192 = v18;
          LODWORD(v193) = a4;
          v50 = v44;
          v51 = *(v48 + 16);
          LODWORD(v213) = v198;
          BYTE4(v213) = v49;
          v214 = v202;
          v215 = v8;
          v216 = v46;
          v217 = v45;
          v218 = v47;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

          v52 = v51;
          a1 = v195;
          AGGraphAddTraceEvent();
          v53 = v50;
          LODWORD(a4) = v193;
          outlined consume of Animation.Function(v41, v40, v42, v194, v192, v53);

          goto LABEL_43;
        }

        v80 = v41;
        v81 = v40;
        v82 = v42;
        v83 = v194;
      }

      else
      {
        v80 = v41;
        v81 = v40;
        v82 = v42;
        v83 = v43;
      }

      outlined consume of Animation.Function(v80, v81, v82, v83, v18, v44);
LABEL_43:
      v88 = one-time initialization token for animationState;

      LODWORD(v14) = v199;
      if (v88 == -1)
      {
        goto LABEL_44;
      }

      goto LABEL_189;
    }

    __break(1u);
LABEL_189:
    swift_once();
LABEL_44:
    v90 = *(&static Signpost.animationState + 1);
    v89 = static Signpost.animationState;
    a6 = word_1ED5283E8;
    v91 = HIBYTE(word_1ED5283E8);
    v92 = byte_1ED5283EA;
    v18 = static os_signpost_type_t.event.getter();
    v213 = v89;
    v214 = v90;
    LOBYTE(v215) = a6;
    BYTE1(v215) = v91;
    BYTE2(v215) = v92;
    if (Signpost.isEnabled.getter())
    {
      v93 = one-time initialization token for _signpostLog;

      if (v93 != -1)
      {
        swift_once();
      }

      *&v41 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == a4)
      {
        __break(1u);
      }

      else
      {
        v94 = AGGraphGetAttributeGraph();
        Counter = AGGraphGetCounter();

        v96 = MEMORY[0x1E69E6870];
        *(v14 + 56) = MEMORY[0x1E69E6810];
        *(v14 + 64) = v96;
        *(v14 + 32) = Counter;
        v97 = AGGraphGetCurrentAttribute();
        if (v97 != a4)
        {
          v98 = MEMORY[0x1E69E76D0];
          *(v14 + 96) = MEMORY[0x1E69E7668];
          *(v14 + 104) = v98;
          *(v14 + 72) = v97;
          *(v14 + 136) = MEMORY[0x1E69E6158];
          *(v14 + 144) = lazy protocol witness table accessor for type String and conformance String();
          v99 = v200;
          *(v14 + 112) = v201;
          *(v14 + 120) = v99;
          if (v91)
          {
            LOBYTE(v208) = v18;
            v212 = COERCE_DOUBLE(&dword_18D018000);
            v213 = v89;
            v209 = v14;
            v210 = *&v41;
            v214 = v90;
            LOBYTE(v215) = a6;
            v219 = "Animation: (%p) [%d] %{public}@ updated";
            v220 = 39;
            LOBYTE(v221) = 2;
            v100 = v203;
            specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

            (*(v204 + 8))(COERCE_DOUBLE(*&v100), v206);
          }

          else
          {
            v101 = v89;
            v102 = v18;
            if (v89 == 20)
            {
              v18 = 3;
            }

            else
            {
              v18 = 4;
            }

            v103 = bswap32(v89) | (4 * (v89 >> 16));
            LODWORD(a4) = v102;
            v104 = (v204 + 16);
            v189 = *(v204 + 16);
            v105 = v189(v205, *&v203, v206);
            v42 = 0;
            LOBYTE(v219) = 1;
            v194 = 16 * v18;
            v190 = v104;
            v198 = v104 - 8;
            v193 = v14 + 32;
            v192 = v101;
            v191 = v18;
            do
            {
              v202 = &v185;
              MEMORY[0x1EEE9AC00](v105);
              a1 = &v185 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
              v43 = a1 + 8;
              v108 = v18;
              v109 = a1 + 8;
              do
              {
                *(v109 - 1) = 0;
                *v109 = 0;
                v109 += 16;
                --v108;
              }

              while (v108);
              v110 = v193 + 40 * v42;
              while (1)
              {
                v111 = *(v14 + 16);
                if (v42 == v111)
                {
                  break;
                }

                if (v42 >= v111)
                {
                  goto LABEL_178;
                }

                ++v42;
                outlined init with copy of AnyTrackedValue(v110, &v213);
                v112 = v216;
                a6 = v217;
                v113 = __swift_project_boxed_opaque_existential_1(&v213, v216);
                v114 = v112;
                v41 = v113;
                *(v43 - 1) = CVarArg.kdebugValue(_:)(v103 | a4, v114);
                *v43 = v115 & 1;
                v43 += 16;
                v106 = __swift_destroy_boxed_opaque_existential_1(&v213);
                v110 += 40;
                if (!--v18)
                {
                  goto LABEL_64;
                }
              }

              LOBYTE(v219) = 0;
LABEL_64:
              v116 = v192;
              if (v192 == 20)
              {
                OSSignpostID.rawValue.getter();
              }

              kdebug_trace();
              v18 = v191;
              if (a1[8] == 1)
              {
                kdebug_trace_string();
              }

              if (a1[24] == 1)
              {
                kdebug_trace_string();
              }

              if (a1[40] == 1)
              {
                kdebug_trace_string();
              }

              if (v116 != 20 && a1[56] == 1)
              {
                kdebug_trace_string();
              }

              if (one-time initialization token for continuation != -1)
              {
                swift_once();
              }

              v117 = *v198;
              v118 = v205;
              v41 = v206;
              (*v198)(v205, v206);
              v119 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
              v105 = v189(v118, v119, v41);
            }

            while ((v219 & 1) != 0);

            v120 = v206;
            v117(v205, v206);
            v117(*&v203, v120);
          }

          a1 = v195;
          a4 = v196;
          LODWORD(v14) = v199;
          goto LABEL_119;
        }
      }

      __break(1u);
LABEL_194:
      swift_once();
LABEL_85:
      *&v125 = COERCE_DOUBLE(_signpostLog);
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      a6 = swift_allocObject();
      *(a6 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == a4)
      {
        __break(1u);
LABEL_196:
        __break(1u);
      }

      v126 = AGGraphGetAttributeGraph();
      v43 = AGGraphGetCounter();

      v127 = MEMORY[0x1E69E6870];
      *(a6 + 56) = MEMORY[0x1E69E6810];
      *(a6 + 64) = v127;
      *(a6 + 32) = v43;
      v128 = AGGraphGetCurrentAttribute();
      if (v128 == a4)
      {
        goto LABEL_196;
      }

      v129 = MEMORY[0x1E69E76D0];
      *(a6 + 96) = MEMORY[0x1E69E7668];
      *(a6 + 104) = v129;
      *(a6 + 72) = v128;
      *(a6 + 136) = MEMORY[0x1E69E6158];
      *(a6 + 144) = lazy protocol witness table accessor for type String and conformance String();
      v130 = v200;
      *(a6 + 112) = v201;
      *(a6 + 120) = v130;
      if (v91)
      {
        LOBYTE(v208) = v205;
        v212 = COERCE_DOUBLE(&dword_18D018000);
        v213 = v89;
        v209 = a6;
        v210 = *&v125;
        v214 = v90;
        LOBYTE(v215) = v18;
        v219 = "Animation: (%p) [%d] %{public}@ started";
        v220 = 39;
        LOBYTE(v221) = 2;
        v131 = v189;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
        v132 = v185;

        (*(v204 + 8))(v131, v206);
      }

      else
      {
        v133 = v89;
        v134 = v89 == 20 ? 3 : 4;
        v135 = bswap32(v89) | (4 * (v89 >> 16));
        LODWORD(a4) = v205;
        v41 = (v204 + 16);
        v190 = *(v204 + 16);
        v136 = v190(v198, v189, v206);
        v42 = 0;
        LOBYTE(v219) = 1;
        v205 = v134;
        v194 = 16 * v134;
        v191 = v41;
        v202 = (v41 - 2);
        v193 = a6 + 32;
        v192 = v133;
        do
        {
          v203 = COERCE_DOUBLE(&v185);
          MEMORY[0x1EEE9AC00](v136);
          a1 = &v185 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
          v18 = (a1 + 8);
          v138 = v205;
          v139 = a1 + 8;
          do
          {
            *(v139 - 1) = 0;
            *v139 = 0;
            v139 += 16;
            --v138;
          }

          while (v138);
          v140 = v193 + 40 * v42;
          v141 = v205;
          while (1)
          {
            v142 = *(a6 + 16);
            if (v42 == v142)
            {
              break;
            }

            if (v42 >= v142)
            {
              goto LABEL_179;
            }

            ++v42;
            outlined init with copy of AnyTrackedValue(v140, &v213);
            v143 = v216;
            v43 = v217;
            v144 = __swift_project_boxed_opaque_existential_1(&v213, v216);
            v145 = v143;
            v41 = v144;
            *(v18 - 8) = CVarArg.kdebugValue(_:)(v135 | a4, v145);
            *v18 = v146 & 1;
            v18 += 16;
            v106 = __swift_destroy_boxed_opaque_existential_1(&v213);
            v140 += 40;
            if (!--v141)
            {
              goto LABEL_102;
            }
          }

          LOBYTE(v219) = 0;
LABEL_102:
          v18 = v192;
          if (v192 == 20)
          {
            v43 = v198;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
            LODWORD(v14) = v199;
          }

          else
          {
            kdebug_trace();
            LODWORD(v14) = v199;
            v43 = v198;
          }

          if (a1[8] == 1)
          {
            kdebug_trace_string();
          }

          if (a1[24] == 1)
          {
            kdebug_trace_string();
          }

          if (a1[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v18 != 20 && a1[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v147 = *v202;
          v41 = v206;
          (*v202)(v43, v206);
          v148 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
          v136 = v190(v43, v148, v41);
        }

        while ((v219 & 1) != 0);
        v149 = v185;

        v150 = v43;
        v132 = v149;
        v151 = v206;
        v147(v150, v206);
        v147(v189, v151);
      }

      a4 = v196;
      *(v196 + 32) = v132;
      a1 = v195;
    }

    else
    {

      a4 = v196;
    }

LABEL_119:
    specialized AnimatorState.addListeners(transaction:)(v186);

    a6 = v200;
    a5 = v201;
LABEL_120:
    *(a4 + 16) = v9;
    *(a4 + 24) = 0;
LABEL_121:
    v43 = *(a4 + 32);
    if (!v43)
    {
      return result;
    }

    v201 = a5;
    v196 = a4;
    v212 = *a1;

    LOBYTE(v213) = 0;
    v152 = specialized AnimatorState.update(_:at:environment:)(&v212, v14, v32);
    v106 = AGGraphGetCurrentAttribute();
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (v106 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v42) = 0;
    }

    else
    {
      LODWORD(v42) = v106;
    }

    *&v41 = COERCE_DOUBLE(&type metadata instantiation cache for TupleTypeDescription);
    if (v152)
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
    v162 = *(v41 + 77);
    if (*(v162 + 16) >= 0x43uLL)
    {
      if (*(v162 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v213) = v42;
        BYTE4(v213) = v106 == a4;
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
    v44 = *(&static Signpost.animationState + 1);
    v42 = static Signpost.animationState;
    LODWORD(v14) = word_1ED5283E8;
    a6 = HIBYTE(word_1ED5283E8);
    v155 = byte_1ED5283EA;
    v40 = static os_signpost_type_t.end.getter();
    v213 = v42;
    v214 = v44;
    LOBYTE(v215) = v14;
    BYTE1(v215) = a6;
    BYTE2(v215) = v155;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_174;
    }

    v195 = a1;
    v156 = one-time initialization token for _signpostLog;

    if (v156 != -1)
    {
      swift_once();
    }

    *&v41 = COERCE_DOUBLE(_signpostLog);
    v194 = v43;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != a4)
    {
      break;
    }

    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    v194 = v46;
    v192 = v45;
    *&v193 = v47;
    swift_once();
    v47 = *&v193;
    v45 = v192;
    v46 = v194;
  }

  v43 = AGGraphGetAttributeGraph();
  v18 = AGGraphGetCounter();

  v157 = MEMORY[0x1E69E6870];
  *(a1 + 7) = MEMORY[0x1E69E6810];
  *(a1 + 8) = v157;
  *(a1 + 4) = v18;
  v158 = AGGraphGetCurrentAttribute();
  if (v158 == a4)
  {
    goto LABEL_186;
  }

  v159 = MEMORY[0x1E69E76D0];
  *(a1 + 12) = MEMORY[0x1E69E7668];
  *(a1 + 13) = v159;
  *(a1 + 18) = v158;
  *(a1 + 17) = MEMORY[0x1E69E6158];
  *(a1 + 18) = lazy protocol witness table accessor for type String and conformance String();
  v160 = v200;
  *(a1 + 14) = v201;
  *(a1 + 15) = v160;
  if (a6)
  {
    v211 = v40;
    v209 = v41;
    v210 = COERCE_DOUBLE(&dword_18D018000);
    v213 = v42;
    v214 = v44;
    LOBYTE(v215) = v14;
    v219 = "Animation: (%p) [%d] %{public}@ ended";
    v220 = 37;
    LOBYTE(v221) = 2;
    v208 = *&a1;
    v161 = v197;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v204 + 8))(v161, v206);
    goto LABEL_173;
  }

  v163 = v42;
  if (v42 == 20)
  {
    v164 = 3;
  }

  else
  {
    v164 = 4;
  }

  v18 = bswap32(v42) | (4 * WORD1(v42));
  LODWORD(v42) = v40;
  v165 = v204 + 16;
  v198 = *(v204 + 16);
  v166 = (v198)(v207, v197, v206);
  a4 = 0;
  LOBYTE(v219) = 1;
  v202 = (16 * v164);
  v204 = v165;
  *&v203 = v165 - 8;
  v201 = a1 + 32;
  v200 = v163;
  v199 = v164;
  do
  {
    v205 = &v185;
    MEMORY[0x1EEE9AC00](v166);
    v43 = &v185 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
    v168 = v43 + 8;
    v169 = v164;
    v170 = v43 + 8;
    do
    {
      *(v170 - 1) = 0;
      *v170 = 0;
      v170 += 16;
      --v169;
    }

    while (v169);
    v171 = &v201[40 * a4];
    while (1)
    {
      v172 = *(a1 + 2);
      if (a4 == v172)
      {
        break;
      }

      if (a4 >= v172)
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        v183 = v106;
        swift_once();
        v106 = v183;
LABEL_127:
        v153 = *(v41 + 77);
        if (*(v153 + 16) >= 0x43uLL)
        {
          if (*(v153 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v213) = v42;
            BYTE4(v213) = v106 == a4;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v200 = a6;
          v154 = one-time initialization token for animationState;

          if (v154 != -1)
          {
            goto LABEL_184;
          }

          goto LABEL_132;
        }

        __break(1u);
LABEL_182:
        v184 = v106;
        swift_once();
        v106 = v184;
        goto LABEL_140;
      }

      ++a4;
      outlined init with copy of AnyTrackedValue(v171, &v213);
      v173 = v216;
      a6 = v217;
      v174 = __swift_project_boxed_opaque_existential_1(&v213, v216);
      v175 = v173;
      v41 = v174;
      *(v168 - 1) = CVarArg.kdebugValue(_:)(v18 | v42, v175);
      *v168 = v176 & 1;
      v168 += 16;
      v106 = __swift_destroy_boxed_opaque_existential_1(&v213);
      v171 += 40;
      if (!--v164)
      {
        goto LABEL_158;
      }
    }

    LOBYTE(v219) = 0;
LABEL_158:
    v177 = v200;
    if (v200 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (v43[8] == 1)
    {
      kdebug_trace_string();
    }

    if (v43[24] == 1)
    {
      kdebug_trace_string();
    }

    if (v43[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v177 != 20 && v43[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v178 = **&v203;
    v179 = v207;
    v41 = v206;
    (**&v203)(v207, v206);
    v180 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
    v166 = (v198)(v179, v180, v41);
    v164 = v199;
  }

  while ((v219 & 1) != 0);

  v181 = v206;
  v178(v207, v206);
  v178(v197, v181);
LABEL_173:

  a1 = v195;
LABEL_174:
  v182 = v196;
  specialized AnimatorState.removeListeners()();

  *(v182 + 32) = 0;
LABEL_175:
  *a1 = v212;
  a1[8] = 1;
  return result;
}