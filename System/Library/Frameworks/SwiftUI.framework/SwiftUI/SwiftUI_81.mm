uint64_t static AnimatedValueTrack<A>.VectorPath.== infix(_:_:)()
{
  type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  swift_getWitnessTable();

  return static Array<A>.== infix(_:_:)();
}

uint64_t AnimatedValueTrack<A>.VectorPath.update(value:mix:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, double), double a6, double a7)
{
  v33 = a2;
  v34 = a5;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = type metadata accessor for Optional();
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v32 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v32 - v26;
  v34(v33, a3, a4, a7);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v12 + 8))(v14, v32);
  }

  (*(v15 + 32))(v27, v14, AssociatedTypeWitness);
  (*(a4 + 24))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = *(AssociatedConformanceWitness + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v33 = a3;
  v30 = *(v15 + 8);
  v30(v18, AssociatedTypeWitness);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v24, a6);
  v30(v21, AssociatedTypeWitness);
  v31 = (*(a4 + 40))(v36, v33, a4);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v30(v24, AssociatedTypeWitness);
  v31(v36, 0);
  return (v30)(v27, AssociatedTypeWitness);
}

uint64_t AnimatedValueTrack<A>.VectorPath.duration.getter(uint64_t a1)
{
  v2 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - v6;
  result = MEMORY[0x18D00CDE0](a1, v2, v5);
  if (result)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v3 + 16))(v7, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v4 != 8)
        {
          __break(1u);
          return result;
        }

        v16 = result;
        (*(v3 + 16))(v7, &v16, v2);
        result = swift_unknownObjectRelease();
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      AnimatedValueTrack<A>.VectorPath.Element.duration.getter(v2);
      v14 = v13;
      (*(v3 + 8))(v7, v2);
      v10 = v10 + v14;
      result = MEMORY[0x18D00CDE0](a1, v2);
      ++v9;
    }

    while (v12 != result);
  }

  return result;
}

uint64_t static AnimatedValueTrack<A>.VectorPath.Element.CurveSegment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(), (dispatch thunk of static Equatable.== infix(_:_:)()) && (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && *(a1 + *(v4 + 44)) == *(a2 + *(v4 + 44)))
  {
    v5 = static UnitCurve.== infix(_:_:)();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t instantiation function for generic protocol witness table for AnimatedValueTrack<A><A>.VectorPath(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t Curve.value(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[3] = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - v15;
  v17 = v14 * v14 * v14;
  v19 = *(v18 + 44);
  v27[1] = *(v18 + 40);
  v27[2] = v19;
  v20 = v14 * v14 * 3.0;
  v21 = v20 - (v17 + v17);
  v22 = v17 - (v14 * v14 + v14 * v14) + v14;
  v23 = v17 - v14 * v14;
  v24 = *(v18 + 24);
  v27[0] = v2;
  VectorArithmetic.scaled(by:)(v3, v24, v9, v17 + v17 - v20 + 1.0);
  VectorArithmetic.scaled(by:)(v3, v24, v6, v21);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v25 = *(v4 + 8);
  v25(v6, v3);
  v25(v9, v3);
  VectorArithmetic.scaled(by:)(v3, v24, v9, v22);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v25(v9, v3);
  v25(v12, v3);
  VectorArithmetic.scaled(by:)(v3, v24, v12, v23);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v25(v12, v3);
  return (v25)(v16, v3);
}

uint64_t Curve.velocity(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[3] = a2;
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v26[0] = v26 - v14;
  v16 = *(v15 + 44);
  v26[1] = *(v15 + 40);
  v26[2] = v16;
  v17 = v13 * v13 * 6.0;
  v18 = v13 * 6.0 - v17;
  v19 = v13 * v13 * 3.0;
  v20 = v19 + v13 * -4.0 + 1.0;
  v21 = v19 - (v13 + v13);
  v22 = *(v15 + 24);
  VectorArithmetic.scaled(by:)(v2, v22, v8, v17 - v13 * 6.0);
  VectorArithmetic.scaled(by:)(v2, v22, v5, v18);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v23 = *(v3 + 8);
  v23(v5, v2);
  v23(v8, v2);
  VectorArithmetic.scaled(by:)(v2, v22, v8, v20);
  v24 = v26[0];
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v23(v8, v2);
  v23(v11, v2);
  VectorArithmetic.scaled(by:)(v2, v22, v11, v21);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v23(v11, v2);
  return (v23)(v24, v2);
}

uint64_t static AnimatedValueTrack<A>.VectorPath.Element.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a1;
  v51 = a2;
  v6 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v40 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v47 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v40 - v9;
  v42 = a3;
  v43 = a4;
  v11 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v40 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v23 = &v40 - v22;
  v25 = *(v24 + 48);
  v26 = *(v12 + 16);
  v26(&v40 - v22, v50, v11, v21);
  (v26)(&v23[v25], v51, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = v46;
    v34 = v47;
    (v26)(v49, v23, v11);
    if (!swift_getEnumCaseMultiPayload())
    {
      v37 = v10;
      (*(v35 + 32))(v10, &v23[v25], v34);
      swift_getAssociatedConformanceWitness();
      v38 = v49;
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v35 + 8);
      v39(v37, v34);
      v39(v38, v34);
      goto LABEL_11;
    }

    (*(v35 + 8))(v49, v34);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (v26)(v14, v23, v11);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = *v14 == *&v23[v25];
      goto LABEL_11;
    }

LABEL_10:
    v32 = 0;
    v12 = v48;
    v11 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  (v26)(v17, v23, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v44 + 8))(v17, v45);
    goto LABEL_10;
  }

  v28 = v44;
  v29 = &v23[v25];
  v30 = v41;
  v31 = v45;
  (*(v44 + 32))(v41, v29, v45);
  v32 = static AnimatedValueTrack<A>.VectorPath.Element.CurveSegment.== infix(_:_:)(v17, v30);
  v33 = *(v28 + 8);
  v33(v30, v31);
  v33(v17, v31);
LABEL_11:
  (*(v12 + 8))(v23, v11);
  return v32 & 1;
}

void closure #1 in AnimatedValueTrack<A>.VectorPath<>.init(path:)(uint64_t a1, double *a2, char **a3, float64x2_t *a4)
{
  v6 = *a1;
  v7 = *(a1 + 48);
  if (v7 > 1)
  {
    v8 = *(a1 + 16);
    if (v7 == 2)
    {
      v26 = vdupq_n_s64(0x3FD5555555555555uLL);
      v27 = vmulq_f64(v8, vdupq_n_s64(0x3FE5555555555555uLL));
      v28 = vmulq_f64(v6, v26);
      v29 = vsubq_f64(vaddq_f64(v27, vmulq_f64(*a4, v26)), *a4);
      __asm { FMOV            V2.2D, #3.0 }

      v50 = _Q2;
      v52 = v29;
      v14 = vaddq_f64(v28, v27);
      goto LABEL_12;
    }

    if (v7 == 3)
    {
      __asm { FMOV            V1.2D, #3.0 }

      v50 = _Q1;
      v52 = vsubq_f64(v8, *a4);
      v14 = *(a1 + 32);
LABEL_12:
      v55 = *a1;
      v48 = vsubq_f64(v6, v14);
      LOBYTE(v56) = 1;
      v31 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        *a3 = v31;
      }

      v33 = vmulq_f64(v52, v50);
      v34 = vmulq_f64(v48, v50);
      v35 = *(v31 + 2);
      v36 = *(v31 + 3);
      v37 = v35 + 1;
      v38 = v55;
      if (v35 >= v36 >> 1)
      {
        v53 = v35 + 1;
        v44 = v31;
        v45 = *(v31 + 2);
        v49 = v34;
        v51 = v33;
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v35 + 1, 1, v44);
        v34 = v49;
        v33 = v51;
        v38 = v55;
        v35 = v45;
        v37 = v53;
        v31 = v46;
        *a3 = v46;
      }

      *(v31 + 2) = v37;
      v39 = &v31[96 * v35];
      *(v39 + 2) = v38;
      *(v39 + 3) = v33;
      *(v39 + 4) = v34;
      *(v39 + 10) = 0x3FF0000000000000;
      *(v39 + 88) = 0u;
      *(v39 + 104) = 0u;
      v39[120] = 1;
      v39[121] = 1;
      *a4 = v38;
      return;
    }

    v40 = *a2;
    v41 = a2[1];
    v56 = 0u;
    v57 = 0u;
    LOBYTE(v58) = 1;
    specialized AnimatedValueTrack<A>.VectorPath.addLine(to:duration:timingCurve:)(&v56, v40, v41, 1.0);
    v43 = *a2;
LABEL_19:
    *a4 = v43;
    return;
  }

  v54 = *a1;
  if (*(a1 + 48))
  {
    v56 = 0u;
    v57 = 0u;
    LOBYTE(v58) = 1;
    specialized AnimatedValueTrack<A>.VectorPath.addLine(to:duration:timingCurve:)(&v56, v6.f64[0], v6.f64[1], 1.0);
    v43 = v54;
    goto LABEL_19;
  }

  *a2 = v6;
  v15 = *a3;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v15;
  if ((v16 & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    *a3 = v15;
  }

  v17 = v54.f64[1];
  v18 = v54.f64[0];
  v20 = *(v15 + 2);
  v19 = *(v15 + 3);
  v21 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
    v17 = v54.f64[1];
    v18 = v54.f64[0];
    v21 = v20 + 1;
    v15 = v47;
    *a3 = v47;
  }

  *(v15 + 2) = v21;
  v22 = &v15[96 * v20];
  *(v22 + 4) = v18;
  *(v22 + 5) = v17;
  *(v22 + 3) = v56;
  v23 = v57;
  v24 = v58;
  v25 = v59[0];
  *(v22 + 105) = *(v59 + 9);
  *(v22 + 5) = v24;
  *(v22 + 6) = v25;
  *(v22 + 4) = v23;
  v22[121] = 0;
  a4->f64[0] = v18;
  a4->f64[1] = v17;
}

uint64_t AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  v17 = static Array._allocateUninitialized(_:)();
  v15[6] = a3;
  v15[7] = a4;
  type metadata accessor for AnimatedValueKeyframe();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  v7 = Sequence.sorted(by:)();

  v16 = v7;
  v15[2] = a3;
  v15[3] = a4;
  swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Array();
  v9 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe();
  WitnessTable = swift_getWitnessTable();
  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:), v15, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  LOBYTE(v16) = v6;
  v13 = type metadata accessor for AnimatedValueTrack<A>.VectorPath();
  AnimatedValueTrack<A>.VectorPath.addKeyframes(_:interpolation:)(v12, &v16, v13);

  return v17;
}

double closure #2 in AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:)@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v46 = a3;
  v44 = a4;
  *&v43 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters();
  *&v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v34 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v49 = &v34 - v7;
  v35 = *(a2 - 8);
  v8 = v35;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnimatedValueKeyframe();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v40 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v34 - v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v37 = *(v14 + 16);
  v37(&v34 - v20, v45, TupleTypeMetadata2, v19);
  v22 = *(TupleTypeMetadata2 + 48);
  (*(v8 + 16))(v11, &v21[v22], a2);
  v36 = *(*(v12 - 8) + 8);
  (v36)(&v21[v22], v12);
  v23 = *(v46 + 24);
  v39 = a2;
  v23(a2);
  (*(v35 + 8))(v11, a2);
  v25 = v37;
  v24 = v38;
  v26 = v45;
  (v37)(v38, v45, TupleTypeMetadata2);
  v27 = &v24[*(TupleTypeMetadata2 + 48)];
  v28 = v41;
  (*(v42 + 16))(v41, &v27[*(v12 + 28)], v43);
  v29 = v36;
  (v36)(v27, v12);
  v30 = v40;
  v25(v40, v26, TupleTypeMetadata2);
  v31 = &v30[*(TupleTypeMetadata2 + 48) + *(v12 + 32)];
  LOBYTE(v30) = v31[32];
  v32 = *v31;
  v42 = *(v31 + 1);
  v43 = v32;
  v29();
  v47[0] = v43;
  v47[1] = v42;
  v48 = v30;
  *&result = AnimatedValueTrack<A>.VectorPath.TimedKeyframe.init(value:interpolation:timingCurve:time:)(v49, v28, v47, v44, *v26).n128_u64[0];
  return result;
}

__n128 AnimatedValueTrack<A>.VectorPath.TimedKeyframe.init(value:interpolation:timingCurve:time:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(a3 + 16);
  v18 = *a3;
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v12 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe();
  v13 = v12[9];
  v14 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters();
  (*(*(v14 - 8) + 32))(a4 + v13, a2, v14);
  v15 = a4 + v12[10];
  result = v18;
  *v15 = v18;
  *(v15 + 16) = v17;
  *(v15 + 32) = v10;
  *(a4 + v12[11]) = a5;
  return result;
}

uint64_t AnimatedValueTrack<A>.VectorPath.addKeyframes(_:interpolation:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v74 = a3;
  v82 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v66 - v10;
  v76 = v5;
  v11 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v66 - v27;
  v73 = *a2;
  result = MEMORY[0x18D00CD40](a1, v11, v26);
  v72 = result;
  if (result >= 2)
  {
    Array.subscript.getter();
    v77 = a1;
    v71 = *(v7 + 16);
    v75 = v24;
    v30 = v83;
    v71(v83, v28, AssociatedTypeWitness);
    v69 = v12;
    v31 = (v12 + 8);
    v32 = *(v12 + 8);
    v32(v28, v11);
    AnimatedValueTrack<A>.VectorPath.move(to:)(v30);
    v85 = v7;
    v78 = v18;
    v33 = *(v7 + 8);
    v34 = AssociatedTypeWitness;
    v33(v30, AssociatedTypeWitness);
    Array.subscript.getter();
    v71(v30, v28, v34);
    v32(v28, v11);
    v35 = v75;
    Array.subscript.getter();
    v36 = *&v35[*(v11 + 44)];
    v71 = v31;
    v70 = v32;
    v32(v35, v11);
    v37 = v69;
    v38 = v7 + 8;
    v39 = v85;
    v91 = 0u;
    v92 = 0u;
    v93 = 1;
    AnimatedValueTrack<A>.VectorPath.addLine(to:duration:timingCurve:)(v30, &v91, v74, v36);
    v75 = v33;
    v33(v30, AssociatedTypeWitness);
    v40 = v78;
    v90 = v77;
    type metadata accessor for Array();
    swift_getWitnessTable();
    RandomAccessCollection<>.indices.getter();
    v89 = v91;
    v86 = 1;
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
    v68 = v41;
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>();
    result = Collection.subscript.getter();
    v42 = v87;
    if (v87 != v88)
    {
      if (v88 >= v87)
      {
        if (v87 >= v88)
        {
LABEL_17:
          __break(1u);
          return result;
        }

        v67 = (v37 + 16);
        v66 = (v39 + 40);
        v85 = v21;
        v69 = v38;
        v68 = v88;
        while (1)
        {
          result = v42 - 1;
          if (__OFSUB__(v42, 1))
          {
            break;
          }

          Array.subscript.getter();
          Array.subscript.getter();
          if (v42 >= 2)
          {
            Array.subscript.getter();
          }

          else
          {
            v62 = v81;
            (*v67)(v81, v21, v11);
            *(v62 + *(v11 + 44)) = *&v21[*(v11 + 44)] - (*(v40 + *(v11 + 44)) - *&v21[*(v11 + 44)]);
            v63 = AssociatedTypeWitness;
            swift_getAssociatedConformanceWitness();
            v64 = v79;
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            v65 = v83;
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            (v75)(v64, v63);
            (*v66)(v62, v65, v63);
          }

          v78 = (v42 + 1);
          if (v42 + 1 < v72)
          {
            Array.subscript.getter();
            v47 = v76;
            v48 = v75;
          }

          else
          {
            v43 = v80;
            (*v67)(v80, v40, v11);
            *(v43 + *(v11 + 44)) = *(v40 + *(v11 + 44)) + *(v40 + *(v11 + 44)) - *&v21[*(v11 + 44)];
            v44 = v79;
            v46 = v83;
            v45 = AssociatedTypeWitness;
            v47 = v76;
            swift_getAssociatedConformanceWitness();
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
            v21 = v85;
            v48 = v75;
            (v75)(v44, v45);
            (*v66)(v43, v46, v45);
          }

          v49 = v73;
          LOBYTE(v91) = v73;
          v50 = v82;
          v51 = v83;
          v52 = v81;
          static AnimatedValueTrack<A>.VectorPath.makeStartTangent(before:from:to:interpolation:)(v81, v21, v40, &v91, v82, v47, v83);
          LOBYTE(v91) = v49;
          v53 = v79;
          v54 = v80;
          static AnimatedValueTrack<A>.VectorPath.makeEndTangent(from:to:after:interpolation:)(v85, v40, v80, &v91, v50, v47, v79);
          v55 = *(v40 + *(v11 + 44)) - *&v85[*(v11 + 44)];
          v56 = v40 + *(v11 + 40);
          v57 = *(v56 + 32);
          v58 = *(v56 + 16);
          v91 = *v56;
          v92 = v58;
          v93 = v57;
          AnimatedValueTrack<A>.VectorPath.addCurve(to:startTangent:endTangent:duration:timingCurve:)(v40, v51, v53, &v91, v74, v55);
          v59 = v53;
          v60 = AssociatedTypeWitness;
          v21 = v85;
          (v48)(v59, AssociatedTypeWitness);
          (v48)(v51, v60);
          v61 = v70;
          v70(v40, v11);
          v61(v21, v11);
          v61(v54, v11);
          result = (v61)(v52, v11);
          v42 = v78;
          if (v68 == v78)
          {
            return result;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t AnimatedValueTrack<A>.VectorPath.init(duration:keyframes:interpolation:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = type metadata accessor for AnimatedValueKeyframe();
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - v12;
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = *a2;
  v64 = a1;
  v18 = type metadata accessor for Array();
  swift_getWitnessTable();
  if ((Collection.isEmpty.getter() & 1) != 0 || a5 <= 0.0)
  {

    type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
    return static Array._allocateUninitialized(_:)();
  }

  v55 = v17;
  v63 = a1;
  v64 = a1;
  *&v61 = 1;
  v59 = a1;

  Collection.suffix(from:)();
  v58 = *v60;
  v61 = *v60;
  v62 = *&v60[16];
  v19 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  zip<A, B>(_:_:)();
  v22 = swift_unknownObjectRelease();
  *&v58 = &v52;
  *v60 = v64;
  v54 = v65;
  *&v60[8] = v65;
  *&v60[24] = v66;
  MEMORY[0x1EEE9AC00](v22);
  *(&v52 - 2) = a3;
  *(&v52 - 1) = a4;
  MEMORY[0x1EEE9AC00](v23);
  v56 = a3;
  *(&v52 - 4) = a3;
  *(&v52 - 3) = a4;
  v53 = a4;
  *(&v52 - 2) = partial apply for closure #1 in AnimatedValueTrack<A>.VectorPath.init(duration:keyframes:interpolation:);
  *(&v52 - 1) = v24;
  *&v61 = v18;
  *(&v61 + 1) = v19;
  *&v62 = WitnessTable;
  *(&v62 + 1) = v21;
  v25 = type metadata accessor for Zip2Sequence();
  v26 = swift_getWitnessTable();
  v28 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed AnimatedValueKeyframe<A>, @in_guaranteed AnimatedValueKeyframe<A>) -> (@unowned Double), (&v52 - 6), v25, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  swift_unknownObjectRelease();

  v29 = *(v28 + 16);
  if (!v29)
  {
    v34 = 0.0;
    v30 = v56;
    v31 = v59;
    v32 = v55;
    goto LABEL_13;
  }

  v30 = v56;
  v31 = v59;
  v32 = v55;
  if (v29 < 4)
  {
    v33 = 0;
    v34 = 0.0;
LABEL_11:
    v38 = v29 - v33;
    v39 = (v28 + 8 * v33 + 32);
    do
    {
      v40 = *v39++;
      v34 = v34 + v40;
      --v38;
    }

    while (v38);
    goto LABEL_13;
  }

  v33 = v29 & 0x7FFFFFFFFFFFFFFCLL;
  v36 = (v28 + 48);
  v34 = 0.0;
  v37 = v29 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v34 = v34 + *(v36 - 2) + *(v36 - 1) + *v36 + v36[1];
    v36 += 4;
    v37 -= 4;
  }

  while (v37);
  if (v29 != v33)
  {
    goto LABEL_11;
  }

LABEL_13:
  *&v58 = v28;
  v41 = MEMORY[0x1E69E63B0];
  swift_getTupleTypeMetadata2();
  v42 = static Array._allocateUninitialized(_:)();
  v43 = specialized Dictionary.init(dictionaryLiteral:)(v42, v41, v10, MEMORY[0x1E69E63D0]);

  *v60 = v43;
  *&v61 = v31;
  swift_getWitnessTable();
  result = RandomAccessCollection<>.indices.getter();
  v45 = v64;
  v44 = v65;
  if (v64 == v65)
  {

LABEL_25:
    LOBYTE(v64) = v32;
    return AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:)(*v60, &v64, v30, v53);
  }

  else
  {
    if (v65 < v64)
    {
      goto LABEL_28;
    }

    if (v64 < v65)
    {
      v46 = *(v58 + 16);
      v47 = (v57 + 16);
      v48 = (v57 + 56);
      v49 = (v57 + 8);
      v50 = 0.0;
      while (1)
      {
        Array.subscript.getter();
        (*v47)(v13, v16, v10);
        (*v48)(v13, 0, 1, v10);
        v64 = *&v50;
        type metadata accessor for Dictionary();
        result = Dictionary.subscript.setter();
        if (v45 >= v46)
        {
          (*v49)(v16, v10);
        }

        else
        {
          if (v45 < 0)
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            break;
          }

          if (v45 >= *(v58 + 16))
          {
            goto LABEL_27;
          }

          v51 = *(v58 + 8 * v45 + 32);
          (*v49)(v16, v10);
          v50 = v50 + v51 / v34 * a5;
        }

        if (v44 == ++v45)
        {

          v30 = v56;
          v32 = v55;
          goto LABEL_25;
        }
      }
    }

    __break(1u);
  }

  return result;
}

double closure #1 in AnimatedValueTrack<A>.VectorPath.init(duration:keyframes:interpolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  v17 = *(a4 + 24);
  v17(a3, a4, v14);
  (v17)(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v19 = *(v7 + 8);
  v19(v9, AssociatedTypeWitness);
  v19(v12, AssociatedTypeWitness);
  v20 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v21 = sqrt(v20);
  v19(v16, AssociatedTypeWitness);
  return v21;
}

uint64_t static AnimatedValueTrack<A>.VectorPath.makeStartTangent(before:from:to:interpolation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a3;
  v41 = a1;
  v47 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v43 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v40 - v21);
  v23 = *a4;
  v24 = *(type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe() + 36);
  v46 = a2;
  v25 = a2 + v24;
  v26 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters();
  (*(v20 + 16))(v22, v25 + *(v26 + 28), v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v31 = v42;
    if (!EnumCaseMultiPayload)
    {
      v28 = *v22;
      v29 = v22[1];
      v30 = v22[2];
      return solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeStartTangent(before:from:to:interpolation:)(v46, v41, v45, a5, a6, v47, v28, v29, v30);
    }

    v34 = v15;
    v35 = v43;
    (*(v43 + 32))(v18, v22, a5);
    v36 = v12;
    (*(a6 + 24))(a5, a6);
    v37 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v39 = *(v31 + 8);
    v39(v36, v37);
    VectorArithmetic.scaled(by:)(v37, AssociatedConformanceWitness, v47, 3.0);
    v39(v34, v37);
    return (*(v35 + 8))(v18, a5);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v33 = v43;
    (*(v43 + 32))(v18, v22, a5);
    (*(a6 + 24))(a5, a6);
    return (*(v33 + 8))(v18, a5);
  }

  else
  {
    if (EnumCaseMultiPayload != 3 && (v23 & 1) != 0)
    {
      v28 = 0.0;
      v29 = 0.0;
      v30 = 0.0;
      return solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeStartTangent(before:from:to:interpolation:)(v46, v41, v45, a5, a6, v47, v28, v29, v30);
    }

    swift_getAssociatedConformanceWitness();
    return dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  }
}

uint64_t static AnimatedValueTrack<A>.VectorPath.makeEndTangent(from:to:after:interpolation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a3;
  v44 = a1;
  v46 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v42 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v39 - v21);
  v23 = *a4;
  v24 = *(type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe() + 36);
  v25 = *(v20 + 16);
  v45 = a2;
  v25(v22, a2 + v24, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v30 = v41;
    if (!EnumCaseMultiPayload)
    {
      v27 = *v22;
      v28 = v22[1];
      v29 = v22[2];
      return solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeEndTangent(from:to:after:interpolation:)(v45, v44, v40, a5, a6, v46, v27, v28, v29);
    }

    v33 = v15;
    v34 = v42;
    (*(v42 + 32))(v18, v22, a5);
    v35 = v12;
    (*(a6 + 24))(a5, a6);
    v36 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v38 = *(v30 + 8);
    v38(v35, v36);
    VectorArithmetic.scaled(by:)(v36, AssociatedConformanceWitness, v46, 3.0);
    v38(v33, v36);
    return (*(v34 + 8))(v18, a5);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v32 = v42;
    (*(v42 + 32))(v18, v22, a5);
    (*(a6 + 24))(a5, a6);
    return (*(v32 + 8))(v18, a5);
  }

  else
  {
    if (EnumCaseMultiPayload != 3 && v23)
    {
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      return solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeEndTangent(from:to:after:interpolation:)(v45, v44, v40, a5, a6, v46, v27, v28, v29);
    }

    swift_getAssociatedConformanceWitness();
    return dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  }
}

uint64_t solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeStartTangent(before:from:to:interpolation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v37 = a6;
  v38 = a3;
  v34 = a2;
  v35 = a4;
  v36 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  v23 = 1.0 - a7;
  v24 = (1.0 - a7) * (a8 + 1.0) * (a9 + 1.0) * 0.5;
  v25 = v23 * (1.0 - a8) * (1.0 - a9) * 0.5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v22, v24);
  v27 = *(v14 + 8);
  v27(v19, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v19, v25);
  v27(v16, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v27(v19, AssociatedTypeWitness);
  v27(v22, AssociatedTypeWitness);
  result = type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe();
  v29 = *(result + 44);
  v30 = *(a1 + v29);
  v31 = v30 - *(v34 + v29);
  if (v31 > 0.0)
  {
    v32 = *(v38 + v29) - v30;
    if (v32 > 0.0)
    {
      return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness, (v32 + v32) / (v31 + v32));
    }
  }

  return result;
}

uint64_t solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeEndTangent(from:to:after:interpolation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v37 = a6;
  v38 = a3;
  v34 = a2;
  v35 = a4;
  v36 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  v23 = 1.0 - a7;
  v24 = (1.0 - a7) * (1.0 - a8) * (a9 + 1.0) * 0.5;
  v25 = v23 * (a8 + 1.0) * (1.0 - a9) * 0.5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v22, v24);
  v27 = *(v14 + 8);
  v27(v19, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v19, v25);
  v27(v16, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v27(v19, AssociatedTypeWitness);
  v27(v22, AssociatedTypeWitness);
  result = type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe();
  v29 = *(result + 44);
  v30 = *(a1 + v29);
  v31 = v30 - *(v34 + v29);
  if (v31 > 0.0)
  {
    v32 = *(v38 + v29) - v30;
    if (v32 > 0.0)
    {
      return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness, (v31 + v31) / (v31 + v32));
    }
  }

  return result;
}

double Curve.parametricTime(forArcLength:)(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Curve.arcLength(at:)(v8);
  if (v9 <= 0.0)
  {
    return 0.0;
  }

  v10 = (v5 + 8);
  v11 = 10;
  v12 = a2 / v9;
  do
  {
    Curve.arcLength(at:)(a1);
    if (vabdd_f64(v13, a2) < 0.1)
    {
      break;
    }

    v14 = v13 - a2;
    Curve.velocity(at:)(a1, v7);
    v15 = (*(*(a1 + 24) + 24))(v4);
    v16 = sqrt(v15);
    (*v10)(v7, v4);
    v12 = v12 - v14 / v16;
    if ((~*&v12 & 0x7FF0000000000000) == 0 && (*&v12 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      return 0.0;
    }

    --v11;
  }

  while (v11);
  return v12;
}

void Curve.arcLength(at:)(uint64_t a1)
{
  v29 = a1;
  v1 = *(a1 + 16);
  v26 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Quadrature.Integrator();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Quadrature();
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v19;
  v28 = v18;
  v25 = v3;
  *v13 = 8;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E5A40], v10, v15);
  v20 = Quadrature.init(integrator:absoluteTolerance:relativeTolerance:)();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v30;
  v22 = *(v29 + 24);
  *(&v25 - 4) = v1;
  *(&v25 - 3) = v22;
  *(&v25 - 2) = v21;
  Quadrature.integrate(over:integrand:)();
  outlined init with copy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v9, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v25;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v24 = (*(v22 + 24))(v1, v22);
    (*(v26 + 8))(v23, v1);
    sqrt(v24);
    outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v9);
    (*(v27 + 8))(v17, v28);
    outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v6);
  }

  else
  {
    outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v9);
    (*(v27 + 8))(v17, v28);
  }
}

void closure #1 in Curve.arcLength(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Curve();
  Curve.velocity(at:)(v8, v7);
  v9 = (*(a3 + 24))(a2, a3);
  (*(v5 + 8))(v7, a2);
  sqrt(v9);
}

void type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>()
{
  if (!lazy cache variable for type metadata for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>)
  {
    type metadata accessor for (integralResult: Double, estimatedAbsoluteError: Double)();
    type metadata accessor for Quadrature.Error();
    lazy protocol witness table accessor for type Quadrature.Error and conformance Quadrature.Error();
    v0 = type metadata accessor for Result();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>);
    }
  }
}

void type metadata accessor for (integralResult: Double, estimatedAbsoluteError: Double)()
{
  if (!lazy cache variable for type metadata for (integralResult: Double, estimatedAbsoluteError: Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (integralResult: Double, estimatedAbsoluteError: Double));
    }
  }
}

unint64_t lazy protocol witness table accessor for type Quadrature.Error and conformance Quadrature.Error()
{
  result = lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error;
  if (!lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error)
  {
    type metadata accessor for Quadrature.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error);
  }

  return result;
}

uint64_t outlined init with copy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(uint64_t a1)
{
  type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>);
  }

  return result;
}

void partial apply for thunk for @callee_guaranteed (@in_guaranteed AnimatedValueKeyframe<A>, @in_guaranteed AnimatedValueKeyframe<A>) -> (@unowned Double)(uint64_t a1@<X0>, double *a2@<X8>)
{
  v5 = *(v2 + 32);
  type metadata accessor for AnimatedValueKeyframe();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a2 = v5(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t type metadata completion function for AnimatedValueTrack<A>.VectorPath.TimedKeyframe()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 64) <= 0x18uLL)
  {
    v11 = 24;
  }

  else
  {
    v11 = *(*(v5 - 8) + 64);
  }

  v12 = v11 + 1;
  v13 = v10 | *(v7 + 80);
  if ((v13 & 0x1000F8) != 0 || ((v11 + ((v11 + 1 + (v10 & 0xF8 | 7)) & ~(v10 & 0xF8 | 7)) + ((v8 + (v10 & 0xF8 | 7)) & ~(v10 & 0xF8 | 7)) + 48) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v13 & 0xF8 | 7u) + 16) & ~(v13 & 0xF8 | 7u)));

    return a1;
  }

  v16 = 8 * v11;
  (*(v7 + 16))(a1, a2, AssociatedTypeWitness);
  v17 = a1 + v8 + 7;
  v18 = v17 & 0xFFFFFFFFFFFFFFF8;
  v19 = a2 + v8 + 7;
  v20 = (v19 & 0xFFFFFFFFFFFFFFF8);
  v21 = *((v19 & 0xFFFFFFFFFFFFFFF8) + v11);
  v22 = v21 - 3;
  if (v21 >= 3)
  {
    if (v11 <= 3)
    {
      v23 = v11;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_24;
      }

      v24 = *v20;
    }

    else if (v23 == 2)
    {
      v24 = *v20;
    }

    else if (v23 == 3)
    {
      v24 = *v20 | (v20[2] << 16);
    }

    else
    {
      v24 = *v20;
    }

    v25 = (v24 | (v22 << v16)) + 3;
    v21 = v24 + 3;
    if (v11 < 4)
    {
      v21 = v25;
    }
  }

LABEL_24:
  if (v21 == 2)
  {
    (*(v9 + 16))(v17 & 0xFFFFFFFFFFFFFFF8, v19 & 0xFFFFFFFFFFFFFFF8, v5);
    *(v18 + v11) = 2;
  }

  else if (v21 == 1)
  {
    (*(v9 + 16))(v17 & 0xFFFFFFFFFFFFFFF8, v19 & 0xFFFFFFFFFFFFFFF8, v5);
    *(v18 + v11) = 1;
  }

  else if (v21)
  {
    memcpy((v17 & 0xFFFFFFFFFFFFFFF8), (v19 & 0xFFFFFFFFFFFFFFF8), v11 + 1);
  }

  else
  {
    v26 = *v20;
    *(v18 + 16) = *(v20 + 2);
    *v18 = v26;
    *(v18 + v11) = 0;
  }

  v27 = (v17 | 7) + v12;
  v28 = (((v19 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
  v29 = *(v28 + v11);
  v30 = v29 - 3;
  if (v29 >= 3)
  {
    if (v11 <= 3)
    {
      v31 = v11;
    }

    else
    {
      v31 = 4;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v32 = *v28;
      }

      else if (v31 == 3)
      {
        v32 = *v28 | (*(v28 + 2) << 16);
      }

      else
      {
        v32 = *v28;
      }

LABEL_43:
      v33 = (v32 | (v30 << v16)) + 3;
      v29 = v32 + 3;
      if (v11 < 4)
      {
        v29 = v33;
      }

      goto LABEL_45;
    }

    if (v31)
    {
      v32 = *v28;
      goto LABEL_43;
    }
  }

LABEL_45:
  v34 = v27 & 0xFFFFFFFFFFFFFFF8;
  if (v29 == 2)
  {
    (*(v9 + 16))(v34);
    *(v34 + v11) = 2;
  }

  else if (v29 == 1)
  {
    (*(v9 + 16))(v34);
    *(v34 + v11) = 1;
  }

  else if (v29)
  {
    memcpy((v27 & 0xFFFFFFFFFFFFFFF8), v28, v11 + 1);
  }

  else
  {
    v35 = *v28;
    *(v34 + 16) = v28[2];
    *v34 = v35;
    *(v34 + v11) = 0;
  }

  v36 = (v11 & 0xFFFFFFFFFFFFFFF8) + v12 + 8;
  v37 = v36 + v18;
  v38 = &v20[v36];
  v39 = (v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = *v40;
  v42 = *(v40 + 16);
  *(v39 + 32) = *(v40 + 32);
  *v39 = v41;
  *(v39 + 16) = v42;
  *((v37 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v38 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unsigned __int8 *destroy for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 8;
  (*v5)(a1, AssociatedTypeWitness);
  v6 = *(v3 - 8);
  v7 = *(v6 + 80) & 0xF8 | 7;
  v8 = ((*(v5 + 56) + a1 + v7) & ~v7);
  if (*(v6 + 64) <= 0x18uLL)
  {
    v9 = 24;
  }

  else
  {
    v9 = *(*(v3 - 8) + 64);
  }

  v10 = 8 * v9;
  v11 = v8[v9];
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_18;
      }

      v14 = *v8;
    }

    else if (v13 == 2)
    {
      v14 = *v8;
    }

    else if (v13 == 3)
    {
      v14 = *v8 | (v8[2] << 16);
    }

    else
    {
      v14 = *v8;
    }

    v15 = (v14 | (v12 << v10)) + 3;
    v11 = v14 + 3;
    if (v9 < 4)
    {
      v11 = v15;
    }
  }

LABEL_18:
  if (v11 - 1 <= 1)
  {
    v23 = *(v3 - 8);
    (*(v6 + 8))(v8, v3);
    v6 = v23;
  }

  result = (&v8[v9 + 1 + v7] & ~v7);
  v17 = result[v9];
  v18 = v17 - 3;
  if (v17 >= 3)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = *result;
    }

    else if (v19 == 2)
    {
      v20 = *result;
    }

    else if (v19 == 3)
    {
      v20 = *result | (*((&v8[v9 + 1 + v7] & ~v7) + 2) << 16);
    }

    else
    {
      v20 = *result;
    }

    v21 = (v20 | (v18 << v10)) + 3;
    v17 = v20 + 3;
    if (v9 < 4)
    {
      v17 = v21;
    }
  }

LABEL_34:
  if (v17 - 1 <= 1)
  {
    v22 = *(v6 + 8);

    return v22();
  }

  return result;
}

uint64_t initializeWithCopy for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 16;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = *(v7 + 48) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  if (*(v8 + 64) <= 0x18uLL)
  {
    v13 = 24;
  }

  else
  {
    v13 = *(*(v5 - 8) + 64);
  }

  v14 = *(v12 + v13);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_18;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = *v12;
  }

  else if (v16 == 2)
  {
    v17 = *v12;
  }

  else if (v16 == 3)
  {
    v17 = *v12 | (*(v12 + 2) << 16);
  }

  else
  {
    v17 = *v12;
  }

  v18 = (v17 | (v15 << (8 * v13))) + 3;
  v14 = v17 + 3;
  if (v13 < 4)
  {
    v14 = v18;
  }

LABEL_18:
  v19 = ~v9;
  if (v14 == 2)
  {
    (*(v8 + 16))(v11, v12, v5);
    *(v11 + v13) = 2;
  }

  else if (v14 == 1)
  {
    (*(v8 + 16))(v11, v12, v5);
    *(v11 + v13) = 1;
  }

  else if (v14)
  {
    memcpy(v11, v12, v13 + 1);
  }

  else
  {
    v20 = *v12;
    v11[2] = v12[2];
    *v11 = v20;
    *(v11 + v13) = 0;
  }

  v21 = v13 + 1 + v9;
  v22 = ((v11 + v21) & v19);
  v23 = ((v12 + v21) & v19);
  v24 = v23[v13];
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v13 <= 3)
    {
      v26 = v13;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_39;
      }

      v27 = *v23;
    }

    else if (v26 == 2)
    {
      v27 = *v23;
    }

    else if (v26 == 3)
    {
      v27 = *v23 | (*(((v12 + v21) & v19) + 2) << 16);
    }

    else
    {
      v27 = *v23;
    }

    v28 = (v27 | (v25 << (8 * v13))) + 3;
    v24 = v27 + 3;
    if (v13 < 4)
    {
      v24 = v28;
    }
  }

LABEL_39:
  if (v24 == 2)
  {
    (*(v8 + 16))((v11 + v21) & v19);
    *(v22 + v13) = 2;
  }

  else if (v24 == 1)
  {
    (*(v8 + 16))((v11 + v21) & v19);
    *(v22 + v13) = 1;
  }

  else if (v24)
  {
    memcpy(((v11 + v21) & v19), v23, v13 + 1);
  }

  else
  {
    v29 = *v23;
    *(((v11 + v21) & v19) + 0x10) = *(((v12 + v21) & v19) + 0x10);
    *v22 = v29;
    *(v22 + v13) = 0;
  }

  v30 = (v21 & v19) + v13 + 1;
  v31 = v11 + v30;
  v32 = v12 + v30;
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  v36 = *(v34 + 16);
  *(v33 + 32) = *(v34 + 32);
  *v33 = v35;
  *(v33 + 16) = v36;
  *((v31 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 24;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = *(v7 + 40) + v9;
  v49 = a1;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  if (*(v8 + 64) <= 0x18uLL)
  {
    v14 = 24;
  }

  else
  {
    v14 = *(*(v5 - 8) + 64);
  }

  if (v12 == v13)
  {
    v48 = 8 * v14;
    goto LABEL_6;
  }

  v25 = 8 * v14;
  v26 = *(v12 + v14);
  v27 = v26 - 3;
  if (v26 >= 3)
  {
    if (v14 <= 3)
    {
      v28 = v14;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_33;
      }

      v29 = *v12;
    }

    else if (v28 == 2)
    {
      v29 = *v12;
    }

    else if (v28 == 3)
    {
      v29 = *v12 | (*(v12 + 2) << 16);
    }

    else
    {
      v29 = *v12;
    }

    v34 = (v29 | (v27 << v25)) + 3;
    v26 = v29 + 3;
    if (v14 < 4)
    {
      v26 = v34;
    }
  }

LABEL_33:
  if (v26 - 1 <= 1)
  {
    (*(v8 + 8))(v12, v5);
  }

  v35 = *(v13 + v14);
  v36 = v35 - 3;
  if (v35 < 3)
  {
    goto LABEL_65;
  }

  if (v14 <= 3)
  {
    v37 = v14;
  }

  else
  {
    v37 = 4;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v38 = *v13;
    }

    else if (v37 == 3)
    {
      v38 = *v13 | (*(v13 + 2) << 16);
    }

    else
    {
      v38 = *v13;
    }

LABEL_63:
    v44 = (v38 | (v36 << v25)) + 3;
    v35 = v38 + 3;
    if (v14 < 4)
    {
      v35 = v44;
    }

    goto LABEL_65;
  }

  if (v37)
  {
    v38 = *v13;
    goto LABEL_63;
  }

LABEL_65:
  v48 = 8 * v14;
  if (v35 == 2)
  {
    (*(v8 + 16))(v12, v13, v5);
    *(v12 + v14) = 2;
  }

  else if (v35 == 1)
  {
    (*(v8 + 16))(v12, v13, v5);
    *(v12 + v14) = 1;
  }

  else if (v35)
  {
    memcpy(v12, v13, v14 + 1);
  }

  else
  {
    v45 = *v13;
    v12[2] = v13[2];
    *v12 = v45;
    *(v12 + v14) = 0;
  }

LABEL_6:
  v15 = ((v12 + v9 + v14 + 1) & v11);
  v16 = ((v13 + v9 + v14 + 1) & v11);
  if (v15 == v16)
  {
    goto LABEL_7;
  }

  v30 = v15[v14];
  v31 = v30 - 3;
  if (v30 >= 3)
  {
    if (v14 <= 3)
    {
      v32 = v14;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_49;
      }

      v33 = *v15;
    }

    else if (v32 == 2)
    {
      v33 = *v15;
    }

    else if (v32 == 3)
    {
      v33 = *v15 | (*(((v12 + v9 + v14 + 1) & v11) + 2) << 16);
    }

    else
    {
      v33 = *v15;
    }

    v39 = (v33 | (v31 << v48)) + 3;
    v30 = v33 + 3;
    if (v14 < 4)
    {
      v30 = v39;
    }
  }

LABEL_49:
  if (v30 - 1 <= 1)
  {
    (*(v8 + 8))((v12 + v9 + v14 + 1) & v11, v5);
  }

  v40 = v16[v14];
  v41 = v40 - 3;
  if (v40 < 3)
  {
    goto LABEL_75;
  }

  if (v14 <= 3)
  {
    v42 = v14;
  }

  else
  {
    v42 = 4;
  }

  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v43 = *v16;
    }

    else if (v42 == 3)
    {
      v43 = *v16 | (*(((v13 + v9 + v14 + 1) & v11) + 2) << 16);
    }

    else
    {
      v43 = *v16;
    }

LABEL_73:
    v46 = (v43 | (v41 << v48)) + 3;
    v40 = v43 + 3;
    if (v14 < 4)
    {
      v40 = v46;
    }

    goto LABEL_75;
  }

  if (v42)
  {
    v43 = *v16;
    goto LABEL_73;
  }

LABEL_75:
  if (v40 == 2)
  {
    (*(v8 + 16))((v12 + v9 + v14 + 1) & v11, (v13 + v9 + v14 + 1) & v11, v5);
    v15[v14] = 2;
  }

  else if (v40 == 1)
  {
    (*(v8 + 16))((v12 + v9 + v14 + 1) & v11, (v13 + v9 + v14 + 1) & v11, v5);
    v15[v14] = 1;
  }

  else if (v40)
  {
    memcpy(((v12 + v9 + v14 + 1) & v11), ((v13 + v9 + v14 + 1) & v11), v14 + 1);
  }

  else
  {
    v47 = *v16;
    *(((v12 + v9 + v14 + 1) & v11) + 0x10) = *(((v13 + v9 + v14 + 1) & v11) + 0x10);
    *v15 = v47;
    v15[v14] = 0;
  }

LABEL_7:
  v17 = ((v14 + 1 + v9) & v11) + v14 + 1;
  v18 = v12 + v17;
  v19 = v13 + v17;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v22;
  *(v20 + 16) = v23;
  *((v18 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
  return v49;
}

uint64_t initializeWithTake for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 32;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = *(v7 + 32) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  if (*(v8 + 64) <= 0x18uLL)
  {
    v13 = 24;
  }

  else
  {
    v13 = *(*(v5 - 8) + 64);
  }

  v14 = *(v12 + v13);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_18;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = *v12;
  }

  else if (v16 == 2)
  {
    v17 = *v12;
  }

  else if (v16 == 3)
  {
    v17 = *v12 | (*(v12 + 2) << 16);
  }

  else
  {
    v17 = *v12;
  }

  v18 = (v17 | (v15 << (8 * v13))) + 3;
  v14 = v17 + 3;
  if (v13 < 4)
  {
    v14 = v18;
  }

LABEL_18:
  v19 = ~v9;
  if (v14 == 2)
  {
    (*(v8 + 32))(v11, v12, v5);
    *(v11 + v13) = 2;
  }

  else if (v14 == 1)
  {
    (*(v8 + 32))(v11, v12, v5);
    *(v11 + v13) = 1;
  }

  else if (v14)
  {
    memcpy(v11, v12, v13 + 1);
  }

  else
  {
    v20 = *v12;
    v11[2] = v12[2];
    *v11 = v20;
    *(v11 + v13) = 0;
  }

  v21 = v13 + 1 + v9;
  v22 = ((v11 + v21) & v19);
  v23 = ((v12 + v21) & v19);
  v24 = v23[v13];
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v13 <= 3)
    {
      v26 = v13;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_39;
      }

      v27 = *v23;
    }

    else if (v26 == 2)
    {
      v27 = *v23;
    }

    else if (v26 == 3)
    {
      v27 = *v23 | (*(((v12 + v21) & v19) + 2) << 16);
    }

    else
    {
      v27 = *v23;
    }

    v28 = (v27 | (v25 << (8 * v13))) + 3;
    v24 = v27 + 3;
    if (v13 < 4)
    {
      v24 = v28;
    }
  }

LABEL_39:
  if (v24 == 2)
  {
    (*(v8 + 32))((v11 + v21) & v19);
    *(v22 + v13) = 2;
  }

  else if (v24 == 1)
  {
    (*(v8 + 32))((v11 + v21) & v19);
    *(v22 + v13) = 1;
  }

  else if (v24)
  {
    memcpy(((v11 + v21) & v19), v23, v13 + 1);
  }

  else
  {
    v29 = *v23;
    *(((v11 + v21) & v19) + 0x10) = *(((v12 + v21) & v19) + 0x10);
    *v22 = v29;
    *(v22 + v13) = 0;
  }

  v30 = (v21 & v19) + v13 + 1;
  v31 = v11 + v30;
  v32 = v12 + v30;
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  v36 = *(v34 + 16);
  *(v33 + 32) = *(v34 + 32);
  *v33 = v35;
  *(v33 + 16) = v36;
  *((v31 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 40;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = *(v7 + 24) + v9;
  v49 = a1;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  if (*(v8 + 64) <= 0x18uLL)
  {
    v14 = 24;
  }

  else
  {
    v14 = *(*(v5 - 8) + 64);
  }

  if (v12 == v13)
  {
    v48 = 8 * v14;
    goto LABEL_6;
  }

  v25 = 8 * v14;
  v26 = *(v12 + v14);
  v27 = v26 - 3;
  if (v26 >= 3)
  {
    if (v14 <= 3)
    {
      v28 = v14;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_33;
      }

      v29 = *v12;
    }

    else if (v28 == 2)
    {
      v29 = *v12;
    }

    else if (v28 == 3)
    {
      v29 = *v12 | (*(v12 + 2) << 16);
    }

    else
    {
      v29 = *v12;
    }

    v34 = (v29 | (v27 << v25)) + 3;
    v26 = v29 + 3;
    if (v14 < 4)
    {
      v26 = v34;
    }
  }

LABEL_33:
  if (v26 - 1 <= 1)
  {
    (*(v8 + 8))(v12, v5);
  }

  v35 = *(v13 + v14);
  v36 = v35 - 3;
  if (v35 < 3)
  {
    goto LABEL_65;
  }

  if (v14 <= 3)
  {
    v37 = v14;
  }

  else
  {
    v37 = 4;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v38 = *v13;
    }

    else if (v37 == 3)
    {
      v38 = *v13 | (*(v13 + 2) << 16);
    }

    else
    {
      v38 = *v13;
    }

LABEL_63:
    v44 = (v38 | (v36 << v25)) + 3;
    v35 = v38 + 3;
    if (v14 < 4)
    {
      v35 = v44;
    }

    goto LABEL_65;
  }

  if (v37)
  {
    v38 = *v13;
    goto LABEL_63;
  }

LABEL_65:
  v48 = 8 * v14;
  if (v35 == 2)
  {
    (*(v8 + 32))(v12, v13, v5);
    *(v12 + v14) = 2;
  }

  else if (v35 == 1)
  {
    (*(v8 + 32))(v12, v13, v5);
    *(v12 + v14) = 1;
  }

  else if (v35)
  {
    memcpy(v12, v13, v14 + 1);
  }

  else
  {
    v45 = *v13;
    v12[2] = v13[2];
    *v12 = v45;
    *(v12 + v14) = 0;
  }

LABEL_6:
  v15 = ((v12 + v9 + v14 + 1) & v11);
  v16 = ((v13 + v9 + v14 + 1) & v11);
  if (v15 == v16)
  {
    goto LABEL_7;
  }

  v30 = v15[v14];
  v31 = v30 - 3;
  if (v30 >= 3)
  {
    if (v14 <= 3)
    {
      v32 = v14;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_49;
      }

      v33 = *v15;
    }

    else if (v32 == 2)
    {
      v33 = *v15;
    }

    else if (v32 == 3)
    {
      v33 = *v15 | (*(((v12 + v9 + v14 + 1) & v11) + 2) << 16);
    }

    else
    {
      v33 = *v15;
    }

    v39 = (v33 | (v31 << v48)) + 3;
    v30 = v33 + 3;
    if (v14 < 4)
    {
      v30 = v39;
    }
  }

LABEL_49:
  if (v30 - 1 <= 1)
  {
    (*(v8 + 8))((v12 + v9 + v14 + 1) & v11, v5);
  }

  v40 = v16[v14];
  v41 = v40 - 3;
  if (v40 < 3)
  {
    goto LABEL_75;
  }

  if (v14 <= 3)
  {
    v42 = v14;
  }

  else
  {
    v42 = 4;
  }

  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v43 = *v16;
    }

    else if (v42 == 3)
    {
      v43 = *v16 | (*(((v13 + v9 + v14 + 1) & v11) + 2) << 16);
    }

    else
    {
      v43 = *v16;
    }

LABEL_73:
    v46 = (v43 | (v41 << v48)) + 3;
    v40 = v43 + 3;
    if (v14 < 4)
    {
      v40 = v46;
    }

    goto LABEL_75;
  }

  if (v42)
  {
    v43 = *v16;
    goto LABEL_73;
  }

LABEL_75:
  if (v40 == 2)
  {
    (*(v8 + 32))((v12 + v9 + v14 + 1) & v11, (v13 + v9 + v14 + 1) & v11, v5);
    v15[v14] = 2;
  }

  else if (v40 == 1)
  {
    (*(v8 + 32))((v12 + v9 + v14 + 1) & v11, (v13 + v9 + v14 + 1) & v11, v5);
    v15[v14] = 1;
  }

  else if (v40)
  {
    memcpy(((v12 + v9 + v14 + 1) & v11), ((v13 + v9 + v14 + 1) & v11), v14 + 1);
  }

  else
  {
    v47 = *v16;
    *(((v12 + v9 + v14 + 1) & v11) + 0x10) = *(((v13 + v9 + v14 + 1) & v11) + 0x10);
    *v15 = v47;
    v15[v14] = 0;
  }

LABEL_7:
  v17 = ((v14 + 1 + v9) & v11) + v14 + 1;
  v18 = v12 + v17;
  v19 = v13 + v17;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v22;
  *(v20 + 16) = v23;
  *((v18 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
  return v49;
}

uint64_t getEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = 24;
  if (*(*(v5 - 8) + 64) > 0x18uLL)
  {
    v9 = *(*(v5 - 8) + 64);
  }

  if (v9 >= 4)
  {
    v10 = 252;
  }

  else
  {
    v10 = 252 - (1u >> (8 * v9));
  }

  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 80) & 0xF8 | 7;
  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  if (v11 >= a2)
  {
    goto LABEL_32;
  }

  v14 = ((v9 + (v13 & ~v12) + ((v9 + v12 + 1) & ~v12) + 48) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v11 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  if (v8 >= v10)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v23 = *(((a1 + v13) & ~v12) + v9);
    if (v10 <= (v23 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v23);
    }
  }
}

void storeEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = 24;
  if (*(*(v7 - 8) + 64) > 0x18uLL)
  {
    v10 = *(*(v7 - 8) + 64);
  }

  v11 = 252 - (1u >> (8 * v10));
  if (v10 >= 4)
  {
    v11 = 252;
  }

  if (v11 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(v7 - 8) + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = ((v10 + 1 + v13) & ~v13) + v10 + 1;
  v16 = (((v14 & ~v13) + v15 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v19 = 0;
    v20 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((((v14 & ~v13) + v15 + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v12 + 1;
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

    v20 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_21:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_37;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v9 >= v11)
        {
          v25 = *(v8 + 56);

          v25(a1, a2);
        }

        else
        {
          v23 = ((a1 + v14) & ~v13);
          if (v11 >= a2)
          {
            v23[v10] = -a2;
          }

          else
          {
            v24 = ~v11 + a2;
            if (v15 < 4)
            {
              if (v15)
              {
                v26 = v24 & ~(-1 << (8 * v15));
                bzero(v23, v15);
                if (v15 == 3)
                {
                  *v23 = v26;
                  v23[2] = BYTE2(v26);
                }

                else if (v15 == 2)
                {
                  *v23 = v26;
                }

                else
                {
                  *v23 = v24;
                }
              }
            }

            else
            {
              bzero(v23, v15);
              *v23 = v24;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }
  }

  if ((((v14 & ~v13) + v15 + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (v16)
  {
    v22 = ~v12 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t type metadata completion function for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + 7;
  v10 = ((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v14 = AssociatedTypeWitness;
    v15 = ~v7;
    v16 = *(v5 + 16);
    v16(a1, a2, AssociatedTypeWitness);
    v17 = (a2 + v8) & v15;
    v16(((a1 + v8) & v15), v17, v14);
    v18 = (v8 + v17) & v15;
    v16(((v8 + ((a1 + v8) & v15)) & v15), v18, v14);
    v19 = ((v9 + ((v8 + ((a1 + v8) & v15)) & v15)) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v9 + v18) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = *v22;
    v23 = *(v22 + 16);
    *(v21 + 32) = *(v22 + 32);
    *v21 = v24;
    *(v21 + 16) = v23;
  }

  return a1;
}

uint64_t destroy for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v8 = *(v3 + 8);
  v9 = v3 + 8;
  v8(a1, AssociatedTypeWitness);
  v4 = *(v9 + 72);
  v5 = *(v9 + 56) + v4;
  v6 = (v5 + a1) & ~v4;
  v8(v6, AssociatedTypeWitness);

  return (v8)((v5 + v6) & ~v4, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 16);
  v7 = v5 + 16;
  v6(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  v10 = (v8 + v9 + a2) & ~v9;
  v6((v8 + v9 + a1) & ~v9, v10, AssociatedTypeWitness);
  v11 = (v8 + v9 + v10) & ~v9;
  v6((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, AssociatedTypeWitness);
  v12 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v15;
  v16 = *(v15 + 16);
  *(v14 + 32) = *(v15 + 32);
  *v14 = v17;
  *(v14 + 16) = v16;
  return a1;
}

uint64_t assignWithCopy for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 24);
  v7 = v5 + 24;
  v6(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 40);
  v9 = *(v7 + 56);
  v10 = (v8 + v9 + a2) & ~v9;
  v6((v8 + v9 + a1) & ~v9, v10, AssociatedTypeWitness);
  v11 = (v8 + v9 + v10) & ~v9;
  v6((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, AssociatedTypeWitness);
  v12 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v15;
  v16 = *(v15 + 16);
  *(v14 + 32) = *(v15 + 32);
  *v14 = v17;
  *(v14 + 16) = v16;
  return a1;
}

uint64_t initializeWithTake for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 32);
  v7 = v5 + 32;
  v6(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 32);
  v9 = *(v7 + 48);
  v10 = (v8 + v9 + a2) & ~v9;
  v6((v8 + v9 + a1) & ~v9, v10, AssociatedTypeWitness);
  v11 = (v8 + v9 + v10) & ~v9;
  v6((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, AssociatedTypeWitness);
  v12 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v15;
  v16 = *(v15 + 16);
  *(v14 + 32) = *(v15 + 32);
  *v14 = v17;
  *(v14 + 16) = v16;
  return a1;
}

uint64_t assignWithTake for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 40);
  v7 = v5 + 40;
  v6(a1, a2, AssociatedTypeWitness);
  v8 = *(v7 + 24);
  v9 = *(v7 + 40);
  v10 = (v8 + v9 + a2) & ~v9;
  v6((v8 + v9 + a1) & ~v9, v10, AssociatedTypeWitness);
  v11 = (v8 + v9 + v10) & ~v9;
  v6((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9, v11, AssociatedTypeWitness);
  v12 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + ((v8 + v9 + ((v8 + v9 + a1) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v15;
  v16 = *(v15 + 16);
  *(v14 + 32) = *(v15 + 32);
  *v14 = v17;
  *(v14 + 16) = v16;
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(unsigned __int8 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_28:
    v15 = *(v5 + 48);

    return v15(a1);
  }

  v7 = ((((*(*(AssociatedTypeWitness - 8) + 64) + ((*(*(AssociatedTypeWitness - 8) + 64) + *(v5 + 80) + ((*(*(AssociatedTypeWitness - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v7 <= 3)
  {
    v8 = ((a2 - v6 + 255) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v7];
      if (!*&a1[v7])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v11 = *&a1[v7];
      if (!v11)
      {
        goto LABEL_27;
      }
    }
  }

  else if (!v10 || (v11 = a1[v7]) == 0)
  {
LABEL_27:
    if (v6)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v7);
  v13 = v7 > 3;
  if (v7 <= 3)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v17 = *a1;
  }

  else
  {
    v17 = *a1;
  }

  return v6 + (v17 | v14) + 1;
}

void storeEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = ((((*(v6 + 64) + ((*(v6 + 64) + *(v6 + 80) + ((*(v6 + 64) + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v7 >= a3)
  {
    v11 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((a3 - v7 + 255) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v11)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v14 = *(v6 + 56);

      v14(a1, a2);
      return;
    }
  }

  v12 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v13 = (v12 >> 8) + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_24:
      if (v11 == 2)
      {
        *&a1[v8] = v13;
      }

      else
      {
        *&a1[v8] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v11)
  {
    a1[v8] = v13;
  }
}

uint64_t type metadata completion function for Curve()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Curve(uint64_t *a1, uint64_t *a2, uint64_t a3)
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

uint64_t destroy for Curve(uint64_t a1, uint64_t a2)
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

uint64_t initializeWithCopy for Curve(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t assignWithCopy for Curve(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t initializeWithTake for Curve(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t assignWithTake for Curve(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for Curve(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *storeEnumTagSinglePayload for Curve(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t type metadata completion function for AnimatedValueTrack<A>.VectorPath.Element()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnimatedValueTrack<A>.VectorPath.Element(void *a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v6 + v7;
  v10 = v6 + 7;
  if (((((v6 + 7 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v6)
  {
    v6 = ((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  }

  if (v6 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v6;
  }

  v12 = v7 <= 7u && (v7 & 0x100000) == 0;
  if (!v12 || (v11 + 1) > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + ((v7 & 0xF8 ^ 0x1F8u) & (v7 + 16)));

    return a1;
  }

  v13 = *(a2 + v11);
  v14 = v13 - 3;
  if (v13 < 3)
  {
    goto LABEL_27;
  }

  if (v11 <= 3)
  {
    v15 = v11;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
      if (v11 < 4)
      {
        goto LABEL_32;
      }
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
      if (v11 < 4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 = *a2;
      if (v11 < 4)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_26;
  }

  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = *a2;
  if (v11 >= 4)
  {
LABEL_26:
    v13 = v16 + 3;
LABEL_27:
    if (v13 == 2)
    {
LABEL_33:
      *a1 = *a2;
      v29 = 2;
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_32:
  v30 = v16 | (v14 << (8 * v11));
  v13 = v30 + 3;
  if (v30 == -1)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (v13 == 1)
  {
    v18 = ~v8;
    v19 = *(v5 + 16);
    v20 = AssociatedTypeWitness;
    v19(a1, a2, AssociatedTypeWitness);
    v21 = (a2 + v9) & v18;
    v19(((a1 + v9) & v18), v21, v20);
    v22 = (v9 + v21) & v18;
    v19(((v9 + ((a1 + v9) & v18)) & v18), v22, v20);
    v23 = ((v10 + ((v9 + ((a1 + v9) & v18)) & v18)) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v10 + v22) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    v25 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = *v26;
    v27 = *(v26 + 16);
    *(v25 + 32) = *(v26 + 32);
    *v25 = v28;
    *(v25 + 16) = v27;
    v29 = 1;
LABEL_34:
    *(a1 + v11) = v29;
    return a1;
  }

  (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  *(a1 + v11) = 0;
  return a1;
}

uint64_t destroy for AnimatedValueTrack<A>.VectorPath.Element(unsigned __int8 *a1)
{
  result = swift_getAssociatedTypeWitness();
  v3 = result;
  v4 = *(result - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  if (((((v5 + ((v5 + v6 + ((v5 + v6) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v5)
  {
    v5 = ((((v5 + ((v5 + v6 + ((v5 + v6) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v8 = a1[v5];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v5 <= 3)
    {
      v10 = v5;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v5))) + 3;
    v8 = v11 + 3;
    if (v5 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      v13 = ~v6;
      v18 = *(v4 + 8);
      v18(a1, result);
      v14 = &a1[v7] & v13;
      v18(v14, v3);
      v15 = ((v7 + v14) & v13);
      v16 = v3;
      v17 = v18;
    }

    else
    {
      v17 = *(v4 + 8);
      v15 = a1;
      v16 = v3;
    }

    return v17(v15, v16);
  }

  return result;
}

void *initializeWithCopy for AnimatedValueTrack<A>.VectorPath.Element(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + 7;
  if (((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v6)
  {
    v6 = ((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  }

  if (v6 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v6;
  }

  v11 = a2[v10];
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = *a2;
    }

    else if (v13 == 2)
    {
      v14 = *a2;
    }

    else if (v13 == 3)
    {
      v14 = *a2 | (a2[2] << 16);
    }

    else
    {
      v14 = *a2;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_20:
  if (v11 == 2)
  {
    *a1 = *a2;
    v26 = 2;
  }

  else if (v11 == 1)
  {
    v16 = ~v7;
    v17 = *(v5 + 16);
    v17(a1, a2, AssociatedTypeWitness);
    v18 = &a2[v8] & v16;
    v17(((a1 + v8) & v16), v18, AssociatedTypeWitness);
    v19 = (v8 + v18) & v16;
    v17(((v8 + ((a1 + v8) & v16)) & v16), v19, AssociatedTypeWitness);
    v20 = ((v9 + v19) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v9 + ((v8 + ((a1 + v8) & v16)) & v16)) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v20;
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v23;
    v24 = *(v23 + 16);
    *(v22 + 32) = *(v23 + 32);
    *v22 = v25;
    *(v22 + 16) = v24;
    v26 = 1;
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v26 = 0;
  }

  *(a1 + v10) = v26;
  return a1;
}

unsigned __int16 *assignWithCopy for AnimatedValueTrack<A>.VectorPath.Element(unsigned __int16 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    v6 = *(v5 + 64);
    v7 = *(v5 + 80);
    v8 = v6 + v7;
    v9 = v6 + 7;
    if (((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v6)
    {
      v6 = ((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    }

    if (v6 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = v6;
    }

    v11 = *(a1 + v10);
    v12 = v11 - 3;
    if (v11 < 3)
    {
LABEL_23:
      v15 = ~v7;
      if (v11 != 2)
      {
        if (v11 == 1)
        {
          v16 = *(v5 + 8);
          v16(a1, AssociatedTypeWitness);
          v16(((a1 + v8) & v15), AssociatedTypeWitness);
          v16(((v8 + ((a1 + v8) & v15)) & v15), AssociatedTypeWitness);
        }

        else
        {
          (*(v5 + 8))(a1, AssociatedTypeWitness);
        }
      }

      v17 = a2[v10];
      v18 = v17 - 3;
      if (v17 >= 3)
      {
        if (v10 <= 3)
        {
          v19 = v10;
        }

        else
        {
          v19 = 4;
        }

        if (v19 <= 1)
        {
          if (!v19)
          {
            goto LABEL_41;
          }

          v20 = *a2;
          if (v10 < 4)
          {
LABEL_46:
            v31 = v20 | (v18 << (8 * v10));
            v17 = v31 + 3;
            if (v31 == -1)
            {
              goto LABEL_47;
            }

            goto LABEL_42;
          }
        }

        else if (v19 == 2)
        {
          v20 = *a2;
          if (v10 < 4)
          {
            goto LABEL_46;
          }
        }

        else if (v19 == 3)
        {
          v20 = *a2 | (a2[2] << 16);
          if (v10 < 4)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v20 = *a2;
          if (v10 < 4)
          {
            goto LABEL_46;
          }
        }

        v17 = v20 + 3;
      }

LABEL_41:
      if (v17 == 2)
      {
LABEL_47:
        *a1 = *a2;
        v30 = 2;
LABEL_48:
        *(a1 + v10) = v30;
        return a1;
      }

LABEL_42:
      if (v17 == 1)
      {
        v21 = *(v5 + 16);
        v21(a1, a2, AssociatedTypeWitness);
        v22 = &a2[v8] & v15;
        v21(((a1 + v8) & v15), v22, AssociatedTypeWitness);
        v23 = (v8 + v22) & v15;
        v21(((v8 + ((a1 + v8) & v15)) & v15), v23, AssociatedTypeWitness);
        v24 = ((v9 + v23) & 0xFFFFFFFFFFFFFFF8);
        v25 = ((v9 + ((v8 + ((a1 + v8) & v15)) & v15)) & 0xFFFFFFFFFFFFFFF8);
        *v25 = *v24;
        v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
        v27 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
        v29 = *v27;
        v28 = *(v27 + 16);
        *(v26 + 32) = *(v27 + 32);
        *v26 = v29;
        *(v26 + 16) = v28;
        v30 = 1;
      }

      else
      {
        (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
        v30 = 0;
      }

      goto LABEL_48;
    }

    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a1;
        if (v10 >= 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = *a1 | (*(a1 + 2) << 16);
          if (v10 < 4)
          {
            goto LABEL_22;
          }

LABEL_20:
          v11 = v14 + 3;
          goto LABEL_23;
        }

        v14 = *a1;
        if (v10 >= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v11 = (v14 | (v12 << (8 * v10))) + 3;
      goto LABEL_23;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = *a1;
    if (v10 < 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  return a1;
}

void *initializeWithTake for AnimatedValueTrack<A>.VectorPath.Element(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + 7;
  if (((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v6)
  {
    v6 = ((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  }

  if (v6 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v6;
  }

  v11 = a2[v10];
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = *a2;
    }

    else if (v13 == 2)
    {
      v14 = *a2;
    }

    else if (v13 == 3)
    {
      v14 = *a2 | (a2[2] << 16);
    }

    else
    {
      v14 = *a2;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_20:
  if (v11 == 2)
  {
    *a1 = *a2;
    v26 = 2;
  }

  else if (v11 == 1)
  {
    v16 = ~v7;
    v17 = *(v5 + 32);
    v17(a1, a2, AssociatedTypeWitness);
    v18 = &a2[v8] & v16;
    v17(((a1 + v8) & v16), v18, AssociatedTypeWitness);
    v19 = (v8 + v18) & v16;
    v17(((v8 + ((a1 + v8) & v16)) & v16), v19, AssociatedTypeWitness);
    v20 = ((v9 + v19) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v9 + ((v8 + ((a1 + v8) & v16)) & v16)) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v20;
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v23;
    v24 = *(v23 + 16);
    *(v22 + 32) = *(v23 + 32);
    *v22 = v25;
    *(v22 + 16) = v24;
    v26 = 1;
  }

  else
  {
    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    v26 = 0;
  }

  *(a1 + v10) = v26;
  return a1;
}

unsigned __int16 *assignWithTake for AnimatedValueTrack<A>.VectorPath.Element(unsigned __int16 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    v6 = *(v5 + 64);
    v7 = *(v5 + 80);
    v8 = v6 + v7;
    v9 = v6 + 7;
    if (((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v6)
    {
      v6 = ((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    }

    if (v6 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = v6;
    }

    v11 = *(a1 + v10);
    v12 = v11 - 3;
    if (v11 < 3)
    {
LABEL_23:
      v15 = ~v7;
      if (v11 != 2)
      {
        if (v11 == 1)
        {
          v16 = *(v5 + 8);
          v16(a1, AssociatedTypeWitness);
          v16(((a1 + v8) & v15), AssociatedTypeWitness);
          v16(((v8 + ((a1 + v8) & v15)) & v15), AssociatedTypeWitness);
        }

        else
        {
          (*(v5 + 8))(a1, AssociatedTypeWitness);
        }
      }

      v17 = a2[v10];
      v18 = v17 - 3;
      if (v17 >= 3)
      {
        if (v10 <= 3)
        {
          v19 = v10;
        }

        else
        {
          v19 = 4;
        }

        if (v19 <= 1)
        {
          if (!v19)
          {
            goto LABEL_41;
          }

          v20 = *a2;
          if (v10 < 4)
          {
LABEL_46:
            v31 = v20 | (v18 << (8 * v10));
            v17 = v31 + 3;
            if (v31 == -1)
            {
              goto LABEL_47;
            }

            goto LABEL_42;
          }
        }

        else if (v19 == 2)
        {
          v20 = *a2;
          if (v10 < 4)
          {
            goto LABEL_46;
          }
        }

        else if (v19 == 3)
        {
          v20 = *a2 | (a2[2] << 16);
          if (v10 < 4)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v20 = *a2;
          if (v10 < 4)
          {
            goto LABEL_46;
          }
        }

        v17 = v20 + 3;
      }

LABEL_41:
      if (v17 == 2)
      {
LABEL_47:
        *a1 = *a2;
        v30 = 2;
LABEL_48:
        *(a1 + v10) = v30;
        return a1;
      }

LABEL_42:
      if (v17 == 1)
      {
        v21 = *(v5 + 32);
        v21(a1, a2, AssociatedTypeWitness);
        v22 = &a2[v8] & v15;
        v21(((a1 + v8) & v15), v22, AssociatedTypeWitness);
        v23 = (v8 + v22) & v15;
        v21(((v8 + ((a1 + v8) & v15)) & v15), v23, AssociatedTypeWitness);
        v24 = ((v9 + v23) & 0xFFFFFFFFFFFFFFF8);
        v25 = ((v9 + ((v8 + ((a1 + v8) & v15)) & v15)) & 0xFFFFFFFFFFFFFFF8);
        *v25 = *v24;
        v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
        v27 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
        v29 = *v27;
        v28 = *(v27 + 16);
        *(v26 + 32) = *(v27 + 32);
        *v26 = v29;
        *(v26 + 16) = v28;
        v30 = 1;
      }

      else
      {
        (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
        v30 = 0;
      }

      goto LABEL_48;
    }

    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a1;
        if (v10 >= 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = *a1 | (*(a1 + 2) << 16);
          if (v10 < 4)
          {
            goto LABEL_22;
          }

LABEL_20:
          v11 = v14 + 3;
          goto LABEL_23;
        }

        v14 = *a1;
        if (v10 >= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v11 = (v14 | (v12 << (8 * v10))) + 3;
      goto LABEL_23;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = *a1;
    if (v10 < 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.Element(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  v6 = ((((v5 + ((v5 + *(v4 + 80) + ((v5 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v6 > v5)
  {
    v5 = v6;
  }

  v7 = 8;
  if (v5 > 8)
  {
    v7 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v12 < 2)
    {
LABEL_27:
      v14 = *(a1 + v7);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_27;
  }

LABEL_16:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 254;
}

void storeEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.Element(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  v8 = ((((v7 + ((v7 + *(v6 + 80) + ((v7 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 > v7)
  {
    v7 = v8;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v9 = v7 + 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v9 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v7 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_41:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v7] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_26;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t getEnumTag for AnimatedValueTrack<A>.VectorPath.Element(unsigned __int8 *a1)
{
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = *(v2 + 64);
  v4 = ((((v3 + ((v3 + *(v2 + 80) + ((v3 + *(v2 + 80)) & ~*(v2 + 80))) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v4 > v3)
  {
    v3 = v4;
  }

  if (v3 <= 8)
  {
    v3 = 8;
  }

  result = a1[v3];
  if (result >= 3)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return result;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | ((result - 3) << (8 * v3))) + 3;
    v9 = v7 + 3;
    if (v3 >= 4)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

void destructiveInjectEnumTag for AnimatedValueTrack<A>.VectorPath.Element(_BYTE *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 64);
  v6 = ((((v5 + 7 + ((v5 + *(v4 + 80) + ((v5 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (a2 > 2)
  {
    if (v6 > v5)
    {
      v5 = v6;
    }

    if (v5 <= 8)
    {
      v7 = 8;
    }

    else
    {
      v7 = v5;
    }

    v8 = a2 - 3;
    if (v7 < 4)
    {
      a1[v7] = (v8 >> (8 * v7)) + 3;
      if (v7)
      {
        v9 = v8 & ~(-1 << (8 * v7));
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v7 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v8;
        }
      }
    }

    else
    {
      a1[v7] = 3;
      bzero(a1, v7);
      *a1 = v8;
    }
  }

  else
  {
    if (v6 > v5)
    {
      v5 = v6;
    }

    if (v5 <= 8)
    {
      v5 = 8;
    }

    a1[v5] = a2;
  }
}

uint64_t ScrollTargetVisibilityChangeModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = *(v2 + 24);
  v46 = *(v2 + 24);
  _s7SwiftUI5StateVySbGMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(&v40 + 1) = *v2;
  *&v41 = v5;
  *(&v41 + 1) = v6;

  swift_getWitnessTable();
  v9 = type metadata accessor for _ViewModifier_Content();
  v10 = type metadata accessor for PrimitiveTargetVisibilityModifier();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v46, &v40, v9, v10, WitnessTable);

  LOBYTE(v32) = v46;
  *(&v32 + 1) = *(&v46 + 1);
  v33 = v47;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  v13 = *(v3 + 16);
  *(v12 + 32) = *v3;
  *(v12 + 48) = v13;
  *(v12 + 64) = *(v3 + 32);

  outlined init with copy of State<Bool>(&v38, &v40);
  type metadata accessor for ModifiedContent();
  v30 = WitnessTable;
  v31 = &protocol witness table for PrimitiveTargetVisibilityModifier<A>;
  v14 = swift_getWitnessTable();
  View.onAppear(perform:)();

  v32 = v40;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v8;
  v16 = *(v3 + 16);
  *(v15 + 32) = *v3;
  *(v15 + 48) = v16;
  *(v15 + 64) = *(v3 + 32);

  outlined init with copy of State<Bool>(&v38, &v46);
  v17 = type metadata accessor for ModifiedContent();
  v28 = v14;
  v29 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  View.onDisappear(perform:)();

  v39[0] = v32;
  v39[1] = v33;
  v39[2] = v34;
  v39[3] = v35;
  (*(*(v17 - 8) + 8))(v39, v17);
  v24 = v48;
  v25 = v49;
  v26 = v50;
  v27 = v51;
  v22 = v46;
  v23 = v47;
  v18 = type metadata accessor for ModifiedContent();
  v19 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v22, v18, v19);
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v45 = v27;
  v40 = v22;
  v41 = v23;
  v20 = *(*(v18 - 8) + 8);
  v20(&v40, v18);
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v22 = v32;
  v23 = v33;
  static ViewBuilder.buildExpression<A>(_:)(&v22, v18, v19);
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v51 = v27;
  v46 = v22;
  v47 = v23;
  return (v20)(&v46, v18);
}

double static PrimitiveTargetVisibilityModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v26 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v42 = *(a2 + 32);
  v43 = v5;
  v7 = *(a2 + 48);
  v44 = *(a2 + 64);
  v8 = *(a2 + 16);
  v41[0] = *a2;
  v41[1] = v8;
  v37 = v42;
  v38 = v7;
  v39 = *(a2 + 64);
  v9 = *a1;
  v45 = *(a2 + 80);
  v40 = *(a2 + 80);
  v35 = v41[0];
  v36 = v6;
  outlined init with copy of _ViewInputs(v41, v48);
  PreferenceKeys.add(_:)();
  v46[2] = v37;
  v46[3] = v38;
  v46[4] = v39;
  v47 = v40;
  v46[0] = v35;
  v46[1] = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v29 = v35;
  v30 = v36;
  v10 = outlined init with copy of _ViewInputs(v46, v48);
  a3(v27, v10, &v29);
  v48[2] = v31;
  v48[3] = v32;
  v48[4] = v33;
  v49 = v34;
  v48[0] = v29;
  v48[1] = v30;
  outlined destroy of _ViewInputs(v48);
  v11 = *v27;
  *&v12 = *&v27[8];
  *&v29 = *v27;
  v25 = v12;
  DWORD2(v29) = *&v27[8];
  v13 = PreferencesOutputs.subscript.getter();
  if ((v13 & 0x100000000) == 0)
  {
    v14 = v13;
    *v27 = v9;
    type metadata accessor for PrimitiveTargetVisibilityModifier();
    type metadata accessor for _GraphValue();
    v15 = _GraphValue.value.getter();
    default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v29);
    v16 = DWORD2(v29);
    v17 = BYTE12(v29);
    v18 = static Array._allocateUninitialized(_:)();
    *v27 = v15;
    *&v27[4] = v14;
    v27[8] = 0;
    *&v27[12] = v29;
    *&v27[20] = v16;
    v27[24] = v17;
    *&v27[28] = -1;
    v28 = v18;
    MEMORY[0x1EEE9AC00](v18);
    v19 = type metadata accessor for PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher();
    v24[2] = v19;
    v24[3] = swift_getWitnessTable();
    _s7SwiftUI5StateVySbGMaTm_0(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v24, v19, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
    v29 = *v27;
    v30 = *&v27[16];
    *&v31 = v28;
    (*(*(v19 - 8) + 8))(&v29, v19);
    AGGraphSetFlags();
  }

  v31 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v29 = v35;
  v30 = v36;
  outlined destroy of _ViewInputs(&v29);
  v22 = v26;
  *v26 = v11;
  result = *&v25;
  v22[1] = v25;
  return result;
}

uint64_t PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.updateValue()(uint64_t a1)
{
  v2 = v1;
  v4 = v1[1];
  v25[0] = *v1;
  v25[1] = v4;
  v26 = *(v1 + 4);
  v5 = v1[1];
  v22 = *v1;
  v23 = v5;
  v24 = *(v1 + 4);
  result = specialized PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.modifier.getter();
  if (result)
  {
    result = PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.updatedVisibleIDs()();
    if (result)
    {
      if (UpdateCycleDetector.dispatch(label:isDebug:)())
      {
        v7 = v1[1];
        v19 = *v1;
        v20 = v7;
        v21 = *(v1 + 4);
        v14 = *v1;
        v16 = v1[1];
        v18 = *(v1 + 4);
        v8 = *(a1 - 8);
        (*(v8 + 16))(&v22, &v19, a1);
        PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.enqueueAction(ids:)();

        v22 = v14;
        v23 = v16;
        v24 = v18;
        result = (*(v8 + 8))(&v22, a1);
      }

      else
      {
      }
    }

    v13 = 1;
  }

  else
  {
    if (BYTE8(v25[0]) == 1)
    {
      v9 = static Array._allocateUninitialized(_:)();
      v10 = *(a1 - 8);
      v11 = *(v10 + 8);
      v11(v25, a1);
      *(v2 + 4) = v9;
      v21 = v9;
      v12 = v2[1];
      v19 = *v2;
      v20 = v12;
      v15 = *v2;
      v17 = v2[1];
      (*(v10 + 16))(&v22, &v19, a1);
      PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.enqueueAction(ids:)();
      v22 = v15;
      v23 = v17;
      v24 = v9;
      result = v11(&v22, a1);
    }

    v13 = 0;
  }

  *(v2 + 8) = v13;
  return result;
}

uint64_t PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.updatedVisibleIDs()()
{
  v26 = static Array._allocateUninitialized(_:)();
  type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
  v1 = *AGGraphGetValue();
  v2 = v0[1];
  v23 = *v0;
  v24 = v2;
  v19 = v0;
  v25 = *(v0 + 4);

  specialized PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.modifier.getter();
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v21 = v1 + 64;
  v22 = v1;
  v20 = v7;
  while (v6)
  {
LABEL_10:
    result = *(*(v1 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
    v11 = *(result + 16);
    if (v11)
    {
      v12 = result + 32;

      do
      {
        outlined init with copy of _Benchmark(v12, &v23);
        v13 = v25;
        v14 = __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
        v15 = MEMORY[0x1EEE9AC00](v14);
        (*(v13 + 24))(partial apply for closure #1 in PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.updatedVisibleIDs(), v15);
        __swift_destroy_boxed_opaque_existential_1(&v23);
        v12 += 40;
        --v11;
      }

      while (v11);

      v3 = v21;
      v1 = v22;
      v7 = v20;
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v16 = v26;
  v17 = static Array<A>.== infix(_:_:)();

  if (v17)
  {
    v18 = 0;
  }

  else
  {

    v18 = v16;
  }

  *(v19 + 4) = v26;

  return v18;
}

uint64_t closure #1 in PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.updatedVisibleIDs()(unsigned int *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = *&a6;
  v48[1] = a4;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v48 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v48[0] = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = v48 - v17;
  v18 = *a1;
  v19 = a1[1];
  v20 = *(a1 + 1);
  v21 = *(a1 + 11);
  v50 = *(a1 + 10);
  v49 = v21;
  v22 = *(a1 + 12);
  v23 = *(a1 + 13);
  v25 = *(a1 + 14);
  v24 = *(a1 + 15);
  v57 = __PAIR64__(v19, v18);
  v58 = v20;

  _ViewList_ID.explicitID<A>(for:)();

  v26 = v13;
  if ((*(v13 + 48))(v12, 1, a5) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v28 = v51;
  (*(v26 + 32))(v51, v12, a5);
  v57 = __PAIR64__(v19, v18);
  v58 = v20;
  v29 = *(a1 + 2);
  v59 = *(a1 + 1);
  v60 = v29;
  v30 = *(a1 + 4);
  v61 = *(a1 + 3);
  v62 = v30;
  v31 = v50;
  v32 = v49;
  v63 = v50;
  v64 = v49;
  v65 = v22;
  v66 = v23;
  v67 = v25;
  v68 = v24;
  ScrollableCollectionSubview.frame.getter();
  v52 = a2;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v56.origin.x = v33;
  v56.origin.y = v35;
  v56.size.width = v37;
  v56.size.height = v39;
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v55 = 2;
  v57 = v31;
  v58 = v32;
  *&v59 = v22;
  *(&v59 + 1) = v23;
  *&v60 = v25;
  *(&v60 + 1) = v24;

  CGRect.convertAndClipToScrollView(to:transform:)();

  outlined destroy of CoordinateSpace(v53);
  v69.origin.x = v34;
  v69.origin.y = v36;
  v69.size.width = v38;
  v69.size.height = v40;
  Width = CGRectGetWidth(v69);
  v70.origin.x = v34;
  v70.origin.y = v36;
  v70.size.width = v38;
  v70.size.height = v40;
  v42 = Width * CGRectGetHeight(v70);
  x = v56.origin.x;
  y = v56.origin.y;
  v45 = v56.size.width;
  height = v56.size.height;
  v47 = CGRectGetWidth(v56);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = v45;
  v71.size.height = height;
  if (v47 * CGRectGetHeight(v71) / v42 >= v52)
  {
    (*(v26 + 16))(v48[0], v28, a5);
    type metadata accessor for Array();
    Array.append(_:)();
  }

  return (*(v26 + 8))(v28, a5);
}

uint64_t closure #1 in PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher.enqueueAction(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = v7;
  v9[6] = a2;

  static Update.enqueueAction(reason:_:)();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PrimitiveTargetVisibilityModifier<A>.VisibilityActionDispatcher(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PrimitiveTargetVisibilityModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t View.onScrollTargetVisibilityChange<A>(idType:threshold:_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  v14[0] = 0;
  v15 = 0;
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  *v11 = a1;
  v11[1] = a3;
  v11[2] = a4;
  v12 = 0;
  v13 = 0;
  v9 = type metadata accessor for ScrollTargetVisibilityChangeModifier();

  MEMORY[0x18D00A570](v11, a5, v9, a7);

  return outlined destroy of State<Bool>(v14);
}

uint64_t outlined destroy of State<Bool>(uint64_t a1)
{
  _s7SwiftUI5StateVySbGMaTm_0(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithCopy for OnScrollVisibilityChangeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for OnScrollVisibilityChangeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for OnScrollVisibilityChangeModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for OnScrollVisibilityChangeModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in ScrollTargetVisibilityChangeModifier.body(content:)()
{
  return partial apply for closure #1 in ScrollTargetVisibilityChangeModifier.body(content:)();
}

{
  if (*(v0 + 64))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t initializeWithCopy for PrimitiveTargetVisibilityModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;

  return a1;
}

uint64_t assignWithCopy for PrimitiveTargetVisibilityModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithTake for PrimitiveTargetVisibilityModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for OnScrollVisibilityGeometryAction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 53))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OnScrollVisibilityGeometryAction.OnScrollVisibilityGeometryActionBinder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for PrimitiveTargetVisibilityModifier.VisibilityActionDispatcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t CircularProgressViewStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t CircularProgressViewStyle.init(tint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  result = swift_getKeyPath();
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + 32) = a1;
  return result;
}

uint64_t CircularProgressViewStyle.makeBody(configuration:)(uint64_t a1)
{
  type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v9[1] = *v1;
  v9[2] = v6;
  v10 = *(v1 + 32);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>();
  closure #1 in CircularProgressViewStyle.makeBody(configuration:)(a1, &v5[*(v7 + 44)]);
  Spacing.init()();
  lazy protocol witness table accessor for type TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>);
  View.spacing(_:)();

  return outlined destroy of VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>(v5, type metadata accessor for VStack<TupleView<(StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableCircularProgressView, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, CircularUIKitProgressView, CircularUIKitProgressView>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>??, ModifiedContent<VStack<TupleView<(HStack<ProgressViewStyleConfiguration.Label?>, ModifiedContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, _EnvironmentKeyWritingModifier<Font?>>)>>, _EnvironmentKeyWritingModifier<Color?>>?>)>>);
}

unint64_t lazy protocol witness table accessor for type CircularProgressViewStyle.Size and conformance CircularProgressViewStyle.Size()
{
  result = lazy protocol witness table cache variable for type CircularProgressViewStyle.Size and conformance CircularProgressViewStyle.Size;
  if (!lazy protocol witness table cache variable for type CircularProgressViewStyle.Size and conformance CircularProgressViewStyle.Size)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CircularProgressViewStyle.Size and conformance CircularProgressViewStyle.Size);
  }

  return result;
}

void Toggle<>.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  if (v8)
  {
    v11 = *(a1 + 48);
  }

  else
  {
    v11 = 0;
  }

  *a2 = *(a1 + 24);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  if (v8)
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  if (v8)
  {
    v13 = v7 & 1;
  }

  else
  {
    v13 = 0;
  }

  if (v8)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  v17 = v14;
  v18 = v11;
  if (v8)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  outlined copy of ToggleStyleConfiguration.Effect(v5, v6, v7, v8);

  outlined consume of ToggleStyleConfiguration.Effect(v5, v6, v7, v8);
  *(a2 + 24) = v18;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v8;
  *(a2 + 56) = v17;
  *(a2 + 64) = v16;
}

uint64_t Toggle.init<A>(isOn:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18, v15);
  Toggle.init<A>(toggledOn:label:)(v17, a2, a3, a4, a5, *(*(a6 + 8) + 8), a7);
  return (*(v14 + 8))(a1, a4);
}

uint64_t closure #2 in Toggle.init<A>(toggledOn:label:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v19[-v15];
  v17 = *a1;
  (*(v9 + 16))(v11, a4, a6, v14);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  while (v20)
  {
    v19[8] = v17 == 0;
    dispatch thunk of AnyLocation.set(_:transaction:)();

    dispatch thunk of IteratorProtocol.next()();
  }

  return (*(v13 + 8))(v16, AssociatedTypeWitness);
}

double Toggle<>.init(_:isOn:)@<D0>(uint64_t a1@<X4>, uint64_t a2@<X5>, char a3@<W6>, uint64_t a4@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18CD63400;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;

  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  v21 = v14 & 1;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v8;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v8;

  Binding.init(get:set:)();

  *a4 = v18;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  *(a4 + 24) = v9;
  *(a4 + 32) = v11;
  *(a4 + 40) = v21;
  *(a4 + 48) = v13;
  result = 0.0;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  return result;
}

uint64_t Toggle<>.init<A>(_:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18CD63400;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  memset(&v22[8], 0, 48);

  closure #1 in Toggle<>.init<A>(_:isOn:)(a1, v21 + 8);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;

  Binding.init(get:set:)();

  LOBYTE(v21[0]) = v20;
  v15 = *&v22[32];
  *(a6 + 64) = *&v22[16];
  *(a6 + 80) = v15;
  *(a6 + 96) = *&v22[48];
  v16 = v21[0];
  *a6 = v19;
  *(a6 + 16) = v16;
  v17 = *v22;
  *(a6 + 32) = v21[1];
  *(a6 + 48) = v17;
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t closure #1 in Toggle<>.init<A>(_:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

__n128 Toggle<>.init<A>(_:isOn:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a6 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v19, v20, v21, v17);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  Toggle.init<A>(isOn:label:)(v19, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), MEMORY[0x1E6981148], a6, MEMORY[0x1E6981138], a7, v30);

  (*(v16 + 8))(a5, a6);
  v22 = v30[5];
  *(a8 + 64) = v30[4];
  *(a8 + 80) = v22;
  *(a8 + 96) = v31;
  v23 = v30[1];
  *a8 = v30[0];
  *(a8 + 16) = v23;
  result = v30[3];
  *(a8 + 32) = v30[2];
  *(a8 + 48) = result;
  return result;
}

__n128 Toggle<>.init<A>(_:sources:isOn:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a8;
  v17 = *(a7 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v21, v22, v18);
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  Toggle.init<A>(sources:isOn:label:)(v20, a6, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v28, MEMORY[0x1E6981148], a7, MEMORY[0x1E6981138], v27, v33);

  (*(v17 + 8))(a5, a7);
  v23 = v33[5];
  *(a9 + 64) = v33[4];
  *(a9 + 80) = v23;
  *(a9 + 96) = v34;
  v24 = v33[1];
  *a9 = v33[0];
  *(a9 + 16) = v24;
  result = v33[3];
  *(a9 + 32) = v33[2];
  *(a9 + 48) = result;
  return result;
}

uint64_t Toggle<>.init<A, B>(_:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v17, v15);
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a1;
  Toggle.init<A>(isOn:label:)(v17, partial apply for closure #1 in Toggle<>.init<A, B>(_:isOn:), MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138], a6, v28);
  (*(v14 + 8))(a2, a4);
  v18 = v28[5];
  *(a7 + 64) = v28[4];
  *(a7 + 80) = v18;
  *(a7 + 96) = v29;
  v19 = v28[1];
  *a7 = v28[0];
  *(a7 + 16) = v19;
  v20 = v28[3];
  *(a7 + 32) = v28[2];
  *(a7 + 48) = v20;
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t Toggle<>.init<A, B>(_:sources:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v19, v17);
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a1;
  Toggle.init<A>(sources:isOn:label:)(v19, a3, partial apply for closure #1 in Toggle<>.init<A, B>(_:sources:isOn:), v24, MEMORY[0x1E6981148], a5, MEMORY[0x1E6981138], a7, v30);
  (*(v16 + 8))(a2, a5);
  v20 = v30[5];
  *(a8 + 64) = v30[4];
  *(a8 + 80) = v20;
  *(a8 + 96) = v31;
  v21 = v30[1];
  *a8 = v30[0];
  *(a8 + 16) = v21;
  v22 = v30[3];
  *(a8 + 32) = v30[2];
  *(a8 + 48) = v22;
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t closure #1 in Toggle<>.init<A, B>(_:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t Toggle<>.init(_:image:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v45 = a5;
  v38 = a2;
  v39 = a4;
  LODWORD(v42) = a3;
  v41 = a1;
  v14 = type metadata accessor for ImageResource();
  v37 = *(v14 - 8);
  v15 = v37;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  v43 = a7;
  v44 = a6;
  *(v21 + 32) = a6;
  *(v21 + 40) = a7;
  *(v21 + 48) = a8;
  v22 = *(v15 + 16);
  v22(v20, a5, v14);

  v23 = Text.init(_:tableName:bundle:comment:)();
  v41 = v24;
  v42 = v23;
  v40 = v25;
  v49 = v26 & 1;
  v22(v17, v20, v14);
  v27 = Image.init(_:)();
  v28 = *(v37 + 8);
  v28(v20, v14);

  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v21;
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v21;

  Binding.init(get:set:)();

  v31 = v47;
  v32 = v48;
  v33 = v49;
  *a9 = v46;
  *(a9 + 8) = v31;
  *(a9 + 16) = v32;
  v34 = v41;
  *(a9 + 24) = v42;
  *(a9 + 32) = v34;
  *(a9 + 40) = v33;
  *(a9 + 48) = v40;
  *(a9 + 56) = v27;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  return (v28)(v45, v14);
}

uint64_t Toggle<>.init<A>(_:image:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;

  closure #1 in Toggle<>.init<A>(_:image:isOn:)(a1, a2, a6, v24 + 8);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;

  Binding.init(get:set:)();

  LOBYTE(v24[0]) = v23;
  v17 = v26;
  a7[4] = v25;
  a7[5] = v17;
  a7[6] = v27;
  v18 = v24[0];
  *a7 = v22;
  a7[1] = v18;
  v19 = v24[2];
  a7[2] = v24[1];
  a7[3] = v19;
  v20 = type metadata accessor for ImageResource();
  (*(*(v20 - 8) + 8))(a2, v20);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

double closure #1 in Toggle<>.init<A>(_:image:isOn:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, a3, v13);
  (*(v9 + 16))(v11, a2, v8);
  Label<>.init<A>(_:image:)(v15, v11, a3, &v20);
  v17 = v21;
  result = *&v20;
  v19 = v22;
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v19;
  return result;
}

uint64_t Toggle<>.init<A>(_:image:sources:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v33 = a7;
  v18 = *(a8 - 8);
  v32 = a10;
  v19 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v22, v23, v19);
  v35 = a1;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  type metadata accessor for Label<Text, Image>();
  v25 = v24;
  v26 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  Toggle.init<A>(sources:isOn:label:)(v21, v33, partial apply for closure #1 in Toggle<>.init<A>(_:image:sources:isOn:), v34, v25, a8, v26, v32, v40);

  (*(v18 + 8))(a6, a8);
  v27 = v40[5];
  a9[4] = v40[4];
  a9[5] = v27;
  a9[6] = v40[6];
  v28 = v40[1];
  *a9 = v40[0];
  a9[1] = v28;
  v29 = v40[3];
  a9[2] = v40[2];
  a9[3] = v29;
  v30 = type metadata accessor for ImageResource();
  return (*(*(v30 - 8) + 8))(a5, v30);
}

uint64_t closure #1 in Toggle<>.init<A>(_:image:sources:isOn:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v25 = a2;
  v24[1] = a1;
  v6 = type metadata accessor for ImageResource();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  v14 = *(v7 + 16);
  v14(v24 - v12, a3, v6, v11);

  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  v26 = v20 & 1;
  (v14)(v9, v13, v6);
  v21 = Image.init(_:)();
  result = (*(v7 + 8))(v13, v6);
  v23 = v26;
  *a4 = v15;
  *(a4 + 8) = v17;
  *(a4 + 16) = v23;
  *(a4 + 24) = v19;
  *(a4 + 32) = v21;
  return result;
}

uint64_t Toggle<>.init<A, B>(_:image:sources:isOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v31 = a4;
  v32 = a1;
  v17 = *(a6 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v21, v22, v18);
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a1;
  v39 = a2;
  type metadata accessor for Label<Text, Image>();
  v24 = v23;
  v25 = lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>();
  Toggle.init<A>(sources:isOn:label:)(v20, v31, partial apply for closure #1 in Toggle<>.init<A, B>(_:image:sources:isOn:), v33, v24, a6, v25, a8, v40);
  (*(v17 + 8))(a3, a6);
  v26 = v40[5];
  a9[4] = v40[4];
  a9[5] = v26;
  a9[6] = v40[6];
  v27 = v40[1];
  *a9 = v40[0];
  a9[1] = v27;
  v28 = v40[3];
  a9[2] = v40[2];
  a9[3] = v28;
  v29 = type metadata accessor for ImageResource();
  (*(*(v29 - 8) + 8))(a2, v29);
  return (*(*(a5 - 8) + 8))(v32, a5);
}

double closure #1 in Toggle<>.init<A, B>(_:image:sources:isOn:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ImageResource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, a3, v13);
  (*(v9 + 16))(v11, a2, v8);
  Label<>.init<A>(_:image:)(v15, v11, a3, &v20);
  v17 = v21;
  result = *&v20;
  v19 = v22;
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v19;
  return result;
}

void Toggle.init(isOn:lnAction:perform:label:)(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v12 = (a6 + *(type metadata accessor for Toggle() + 40));
  KeyPath = swift_getKeyPath();
  a5();
  *v12 = KeyPath;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  type metadata accessor for LocationBox<AppIntentExecutingLocation<ToggleState>>();
  swift_allocObject();

  v14 = a2;

  outlined copy of Environment<AppIntentExecutor?>.Content(KeyPath, 0, 0);
  v15 = v14;

  v16 = LocationBox.init(_:)();
  outlined consume of Environment<AppIntentExecutor?>.Content(KeyPath, 0, 0);

  *a6 = 0;
  *(a6 + 8) = v16;
  *(a6 + 16) = (a1 & 1) == 0;
}

uint64_t specialized closure #1 in Toggle.init<A>(toggledOn:label:)()
{
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for [Binding<Bool>], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A]();
  return static ToggleState.stateFor<A, B>(item:in:)();
}

void type metadata accessor for Label<Text, Image>()
{
  if (!lazy cache variable for type metadata for Label<Text, Image>)
  {
    v0 = type metadata accessor for Label();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Label<Text, Image>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Label<Text, Image> and conformance Label<A, B>()
{
  result = lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>;
  if (!lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>)
  {
    type metadata accessor for Label<Text, Image>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>);
  }

  return result;
}

void type metadata accessor for LocationBox<AppIntentExecutingLocation<ToggleState>>()
{
  if (!lazy cache variable for type metadata for LocationBox<AppIntentExecutingLocation<ToggleState>>)
  {
    _s7SwiftUI7BindingVySbGMaTm_4(255, &lazy cache variable for type metadata for AppIntentExecutingLocation<ToggleState>, MEMORY[0x1E697DD58], type metadata accessor for AppIntentExecutingLocation);
    lazy protocol witness table accessor for type AppIntentExecutingLocation<ToggleState> and conformance AppIntentExecutingLocation<A>();
    v0 = type metadata accessor for LocationBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LocationBox<AppIntentExecutingLocation<ToggleState>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AppIntentExecutingLocation<ToggleState> and conformance AppIntentExecutingLocation<A>()
{
  result = lazy protocol witness table cache variable for type AppIntentExecutingLocation<ToggleState> and conformance AppIntentExecutingLocation<A>;
  if (!lazy protocol witness table cache variable for type AppIntentExecutingLocation<ToggleState> and conformance AppIntentExecutingLocation<A>)
  {
    _s7SwiftUI7BindingVySbGMaTm_4(255, &lazy cache variable for type metadata for AppIntentExecutingLocation<ToggleState>, MEMORY[0x1E697DD58], type metadata accessor for AppIntentExecutingLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentExecutingLocation<ToggleState> and conformance AppIntentExecutingLocation<A>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Toggle(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
  {
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v12 = (a1 + v6 + 17) & ~v6;
    v13 = (a2 + v6 + 17) & ~v6;
    v14 = *(v5 + 16);

    v14(v12, v13, v4);
    v15 = (v7 + v12) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v7 + v13) & 0xFFFFFFFFFFFFFFF8;
    if (*(v16 + 24) < 0xFFFFFFFFuLL)
    {
      v23 = *v16;
      v24 = *(v16 + 32);
      *(v15 + 16) = *(v16 + 16);
      *(v15 + 32) = v24;
      *v15 = v23;
      return a1;
    }

    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v16, v18, v19);
    *v15 = v17;
    *(v15 + 8) = v18;
    *(v15 + 16) = v19;
    v20 = *(v16 + 24);
    *(v15 + 24) = v20;
    v21 = *(v16 + 40);
    *(v15 + 32) = *(v16 + 32);
    *(v15 + 40) = v21;
    v22 = v20;
  }

  return a1;
}

uint64_t initializeWithTake for Toggle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (v6 + 17 + a1) & ~v6;
  v8 = (v6 + 17 + a2) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  v13 = v11[1];
  v12 = v11[2];
  *v10 = *v11;
  v10[1] = v13;
  v10[2] = v12;
  return a1;
}

uint64_t assignWithTake for Toggle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  if (*(v12 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v12, *(v12 + 8), *(v12 + 16));

LABEL_5:
    v19 = *v13;
    v20 = *(v13 + 32);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 32) = v20;
    *v12 = v19;
    return a1;
  }

  v14 = *(v13 + 16);
  v15 = *v12;
  v16 = *(v12 + 8);
  v17 = *(v12 + 16);
  *v12 = *v13;
  *(v12 + 16) = v14;
  outlined consume of Environment<AppIntentExecutor?>.Content(v15, v16, v17);
  v18 = *(v12 + 24);
  *(v12 + 24) = *(v13 + 24);

  *(v12 + 32) = *(v13 + 32);

  return a1;
}

_BYTE *storeEnumTagSinglePayload for Toggle(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
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
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 17] & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[16] = 0;
        *result = a2 & 0x7FFFFFFF;
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t specialized closure #2 in Toggle.init<A>(toggledOn:label:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a2 + 40;
    do
    {

      dispatch thunk of AnyLocation.set(_:transaction:)();

      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t TableColumn<>.init<A>(_:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = a9;
  v31 = a7;
  v26 = a2;
  v27 = a6;
  v29 = a4;
  v28 = a3;
  v25 = a1;
  v13 = (*a5 + *MEMORY[0x1E69E77B0]);
  v14 = *v13;
  v15 = type metadata accessor for KeyPathComparator();
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v24 - v17;
  v19 = v13[1];

  KeyPathComparator.init<A>(_:order:)();
  (*(*(v15 - 8) + 56))(v18, 0, 1, v15);
  v20 = swift_allocObject();
  v20[2] = v14;
  v20[3] = a8;
  v20[4] = v19;
  v20[5] = a10;
  v20[6] = a11;
  v20[7] = a12;
  v21 = v26;
  v20[8] = v27;
  v20[9] = v31;
  v32 = v25;
  v33 = v21;
  v34 = v28;
  v35 = v29;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v18, partial apply for closure #1 in TableColumn<>.init<A>(_:value:content:), v20, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v14, v15, a8, v30, MEMORY[0x1E6981148], a10, WitnessTable, a11, MEMORY[0x1E6981138]);
}

{
  v27 = a8;
  v28 = a1;
  v34 = a9;
  v35 = a7;
  v30 = a2;
  v31 = a6;
  v33 = a4;
  v32 = a3;
  v29 = a11;
  v14 = (*a5 + *MEMORY[0x1E69E77B0]);
  v15 = *v14;
  v16 = type metadata accessor for KeyPathComparator();
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - v18;
  v20 = v14[1];

  KeyPathComparator.init<A>(_:order:)();
  (*(*(v16 - 8) + 56))(v19, 0, 1, v16);
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = a8;
  v21[4] = v20;
  v21[5] = a10;
  v22 = v29;
  v21[6] = v29;
  v21[7] = a12;
  v21[8] = v31;
  v21[9] = v35;
  v36 = a1;
  v23 = v30;
  v37 = v30;
  LOBYTE(v20) = v32 & 1;
  v38 = v32 & 1;
  v39 = v33;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v19, partial apply for closure #1 in TableColumn<>.init<A>(_:value:content:), v21, partial apply for closure #2 in TableColumn<>.init<A>(_:value:content:), v15, v16, v27, v34, MEMORY[0x1E6981148], a10, WitnessTable, v22, MEMORY[0x1E6981138]);

  outlined consume of Text.Storage(v28, v23, v20);
}

uint64_t TableColumn<>.init<A, B>(_:value:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a6;
  v32 = a3;
  v33 = a4;
  v34 = a1;
  v35 = a9;
  v30 = a10;
  v14 = (*a2 + *MEMORY[0x1E69E77B0]);
  v15 = *v14;
  v16 = type metadata accessor for KeyPathComparator();
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v28 - v18;
  v20 = v14[1];

  KeyPathComparator.init<A>(_:order:)();
  (*(*(v16 - 8) + 56))(v19, 0, 1, v16);
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = a5;
  v29 = a5;
  v23 = v30;
  v22 = v31;
  v21[4] = v31;
  v21[5] = v20;
  v21[6] = a7;
  v21[7] = a8;
  v21[8] = v23;
  v21[9] = a11;
  v21[10] = v32;
  v21[11] = v33;
  v36 = v15;
  v37 = a5;
  v38 = v22;
  v39 = v20;
  v24 = v22;
  v40 = a7;
  v41 = a8;
  v42 = v23;
  v43 = a11;
  v25 = v34;
  v44 = v34;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v19, partial apply for closure #1 in TableColumn<>.init<A, B>(_:value:content:), v21, partial apply for closure #2 in TableColumn<>.init<A, B>(_:value:content:), v15, v16, v29, v35, MEMORY[0x1E6981148], a7, WitnessTable, a8, MEMORY[0x1E6981138]);

  return (*(*(v24 - 8) + 8))(v25, v24);
}

uint64_t closure #1 in TableColumn<>.init<A, B>(_:value:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17(v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a5, a9);
  v18 = *(v10 + 8);
  v18(v12, a5);
  static ViewBuilder.buildExpression<A>(_:)(v16, a5, a9);
  return (v18)(v16, a5);
}

uint64_t closure #2 in TableColumn<>.init<A, B>(_:value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t closure #1 in TableColumn<>.init<A>(_:value:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17(v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a5, a8);
  v18 = *(v10 + 8);
  v18(v12, a5);
  static ViewBuilder.buildExpression<A>(_:)(v16, a5, a8);
  return (v18)(v16, a5);
}

{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v18(*v17, v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a5, a8);
  v19 = *(v10 + 8);
  v19(v12, a5);
  static ViewBuilder.buildExpression<A>(_:)(v16, a5, a8);
  return (v19)(v16, a5);
}

uint64_t partial apply for closure #1 in TableColumn<>.init<A>(_:value:content:)(uint64_t a1)
{
  return closure #1 in TableColumn<>.init<A>(_:value:content:)(a1, v1[8], v1[9], v1[2], v1[3], v1[4], v1[5], v1[6]);
}

{
  return closure #1 in TableColumn<>.init<A>(_:value:content:)(a1, v1[8], v1[9], v1[2], v1[3], v1[4], v1[5], v1[6]);
}

uint64_t TableColumn<>.init<A, B>(_:value:comparator:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v46 = a9;
  v47 = a8;
  v42 = a2;
  v43 = a7;
  v39 = a6;
  v40 = a1;
  v45 = a4;
  v44 = a3;
  v37 = a12;
  v38 = a13;
  v36 = a10;
  v15 = *a5;
  v41 = *(a11 - 8);
  v16 = v41;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v15 + *MEMORY[0x1E69E77B0]);
  v20 = type metadata accessor for KeyPathComparator();
  v21 = type metadata accessor for Optional();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v34 - v23;
  (*(v16 + 16))(v18, a6, a11, v22);
  v25 = *(v15 + *MEMORY[0x1E69E77B0] + 8);

  v35 = a11;
  KeyPathComparator.init<A, B>(_:comparator:)(v26, v18, v19, v25, a11);
  (*(*(v20 - 8) + 56))(v24, 0, 1, v20);
  v27 = swift_allocObject();
  v29 = v36;
  v28 = v37;
  v27[2] = v19;
  v27[3] = v29;
  v27[4] = v25;
  v27[5] = a11;
  v30 = v38;
  v27[6] = v28;
  v27[7] = v30;
  v31 = v43;
  v27[8] = a14;
  v27[9] = v31;
  v27[10] = v47;
  v48 = v40;
  v49 = v42;
  v50 = v44;
  v51 = v45;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v24, partial apply for closure #1 in TableColumn<>.init<A, B>(_:value:comparator:content:), v27, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v19, v20, v29, v46, MEMORY[0x1E6981148], v28, WitnessTable, v30, MEMORY[0x1E6981138]);

  return (*(v41 + 8))(v39, v35);
}

uint64_t KeyPathComparator.init<A, B>(_:comparator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  KeyPathComparator.init<A, B>(_:comparator:)();
  return (*(v7 + 8))(a2, a5);
}

uint64_t TableColumn<>.init<A, B>(_:value:comparator:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v50 = a8;
  v51 = a1;
  v46 = a7;
  v43 = a2;
  v44 = a6;
  v48 = a4;
  v49 = a9;
  v47 = a3;
  v41 = a12;
  v42 = a13;
  v39 = a10;
  v16 = *a5;
  v45 = *(a11 - 8);
  v17 = v45;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v16 + *MEMORY[0x1E69E77B0]);
  v21 = type metadata accessor for KeyPathComparator();
  v22 = type metadata accessor for Optional();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v38 - v24;
  (*(v17 + 16))(v19, a6, a11, v23);
  v26 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v40 = a5;

  v38 = a11;
  KeyPathComparator.init<A, B>(_:comparator:)(v27, v19, v20, v26, a11);
  (*(*(v21 - 8) + 56))(v25, 0, 1, v21);
  v28 = swift_allocObject();
  v29 = v39;
  v28[2] = v20;
  v28[3] = v29;
  v28[4] = v26;
  v28[5] = a11;
  v31 = v41;
  v30 = v42;
  v28[6] = v41;
  v28[7] = v30;
  v32 = v46;
  v28[8] = a14;
  v28[9] = v32;
  v33 = v51;
  v28[10] = v50;
  v34 = v43;
  v52 = v33;
  v53 = v43;
  v35 = v47 & 1;
  v54 = v47 & 1;
  v55 = v48;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v25, partial apply for closure #1 in TableColumn<>.init<A, B>(_:value:comparator:content:), v28, partial apply for closure #2 in TableColumn<>.init(_:sortUsing:content:), v20, v21, v29, v49, MEMORY[0x1E6981148], v31, WitnessTable, v30, MEMORY[0x1E6981138]);
  outlined consume of Text.Storage(v51, v34, v35);

  return (*(v45 + 8))(v44, v38);
}

uint64_t TableColumn<>.init<A, B, C>(_:value:comparator:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a7;
  v42 = a3;
  v47 = a9;
  v48 = a6;
  v44 = a4;
  v45 = a5;
  v46 = a1;
  v40 = a11;
  v39 = a10;
  v16 = *a2;
  v43 = *(a8 - 8);
  v17 = v43;
  v38[0] = a12;
  MEMORY[0x1EEE9AC00](a1);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v16 + *MEMORY[0x1E69E77B0]);
  v21 = type metadata accessor for KeyPathComparator();
  v22 = type metadata accessor for Optional();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = v38 - v24;
  (*(v17 + 16))(v19, a3, a8, v23);
  v26 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v38[1] = a2;

  KeyPathComparator.init<A, B>(_:comparator:)(v27, v19, v20, v26, a8);
  (*(*(v21 - 8) + 56))(v25, 0, 1, v21);
  v28 = swift_allocObject();
  v29 = v48;
  v28[2] = v20;
  v28[3] = v29;
  v30 = v41;
  v28[4] = v41;
  v28[5] = v26;
  v31 = v39;
  v28[6] = a8;
  v28[7] = v31;
  v32 = v40;
  v33 = v38[0];
  v28[8] = v40;
  v28[9] = v33;
  v34 = v44;
  v28[10] = a13;
  v28[11] = v34;
  v28[12] = v45;
  v49 = v20;
  v50 = v29;
  v51 = v30;
  v52 = v26;
  v53 = a8;
  v54 = v31;
  v55 = v32;
  v56 = v33;
  v35 = v46;
  v57 = a13;
  v58 = v46;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v25, partial apply for closure #1 in TableColumn<>.init<A, B, C>(_:value:comparator:content:), v28, partial apply for closure #2 in TableColumn<>.init<A, B, C>(_:value:comparator:content:), v20, v21, v48, v47, MEMORY[0x1E6981148], v31, WitnessTable, v32, MEMORY[0x1E6981138]);

  (*(v43 + 8))(v42, a8);
  return (*(*(v30 - 8) + 8))(v35, v30);
}

uint64_t closure #1 in TableColumn<>.init<A, B, C>(_:value:comparator:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v18(v15);
  static ViewBuilder.buildExpression<A>(_:)(v13, a5, a10);
  v19 = *(v11 + 8);
  v19(v13, a5);
  static ViewBuilder.buildExpression<A>(_:)(v17, a5, a10);
  return (v19)(v17, a5);
}

uint64_t closure #2 in TableColumn<>.init<A, B, C>(_:value:comparator:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t TableColumn<>.init<>(_:value:comparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a6;
  v29 = a1;
  v31 = a3;
  v30 = a2;
  v32 = a8;
  v12 = *a5;
  v13 = type metadata accessor for String.StandardComparator();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + *MEMORY[0x1E69E77B0]);
  v18 = type metadata accessor for KeyPathComparator();
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v27 - v21;
  (*(v14 + 16))(v16, a6, v13, v20);
  lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();

  KeyPathComparator.init<A, B>(_:comparator:)(v23, v16, v17, MEMORY[0x1E69E6158], v13);
  (*(*(v18 - 8) + 56))(v22, 0, 1, v18);
  v24 = swift_allocObject();
  *(v24 + 16) = a7;
  *(v24 + 24) = a5;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = a4;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v22, partial apply for closure #1 in TableColumn<>.init<>(_:value:), v24, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v17, v18, MEMORY[0x1E6981148], v32, MEMORY[0x1E6981148], a7, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  return (*(v14 + 8))(v28, v13);
}

{
  v34 = a7;
  v35 = a4;
  v8 = a6;
  v31 = a6;
  v33 = a3;
  v36 = a8;
  v12 = *a5;
  v13 = type metadata accessor for String.StandardComparator();
  v32 = *(v13 - 8);
  v14 = v32;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + *MEMORY[0x1E69E77B0]);
  v18 = type metadata accessor for KeyPathComparator();
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v29 - v21;
  v23 = *(v14 + 16);
  v30 = v13;
  v23(v16, v8, v13, v20);
  lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();

  KeyPathComparator.init<A, B>(_:comparator:)(v24, v16, v17, MEMORY[0x1E69E6158], v13);
  (*(*(v18 - 8) + 56))(v22, 0, 1, v18);
  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 16) = v34;
  *(v25 + 24) = a5;
  v37 = a1;
  v38 = a2;
  LOBYTE(v8) = v33 & 1;
  v39 = v33 & 1;
  v40 = v35;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v22, partial apply for closure #1 in TableColumn<>.init<>(_:value:), v25, partial apply for closure #2 in TableColumn<>.init<A>(_:value:content:), v17, v18, MEMORY[0x1E6981148], v36, MEMORY[0x1E6981148], v26, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);
  outlined consume of Text.Storage(a1, a2, v8);

  return (*(v32 + 8))(v31, v30);
}

{
  v28 = a6;
  v29 = a1;
  v31 = a3;
  v30 = a2;
  v32 = a8;
  v12 = *a5;
  v13 = type metadata accessor for String.StandardComparator();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + *MEMORY[0x1E69E77B0]);
  v18 = type metadata accessor for SortDescriptor();
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v27 - v21;
  (*(v14 + 16))(v16, a6, v13, v20);

  SortDescriptor.init<A>(_:comparator:)(v23, v16, v17, MEMORY[0x1E69682C0]);
  (*(*(v18 - 8) + 56))(v22, 0, 1, v18);
  v24 = swift_allocObject();
  *(v24 + 16) = a7;
  *(v24 + 24) = a5;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = a4;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v22, partial apply for closure #1 in TableColumn<>.init<>(_:value:comparator:), v24, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v17, v18, MEMORY[0x1E6981148], v32, MEMORY[0x1E6981148], a7, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  return (*(v14 + 8))(v28, v13);
}

{
  v33 = a7;
  v34 = a4;
  v8 = a6;
  v31 = a6;
  v32 = a3;
  v29 = a1;
  v35 = a8;
  v12 = *a5;
  v13 = type metadata accessor for String.StandardComparator();
  v30 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v12 + *MEMORY[0x1E69E77B0]);
  v18 = type metadata accessor for SortDescriptor();
  v19 = type metadata accessor for Optional();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v28 - v21;
  (*(v14 + 16))(v16, v8, v13, v20);

  SortDescriptor.init<A>(_:comparator:)(v23, v16, v17, MEMORY[0x1E69682C0]);
  (*(*(v18 - 8) + 56))(v22, 0, 1, v18);
  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 16) = v33;
  *(v24 + 24) = a5;
  v36 = a1;
  v37 = a2;
  LOBYTE(v8) = v32 & 1;
  v38 = v32 & 1;
  v39 = v34;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v22, partial apply for closure #1 in TableColumn<>.init<>(_:value:comparator:), v24, partial apply for closure #2 in TableColumn<>.init(_:value:content:), v17, v18, MEMORY[0x1E6981148], v35, MEMORY[0x1E6981148], v25, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);
  outlined consume of Text.Storage(v29, a2, v8);

  return (*(v14 + 8))(v31, v30);
}

unint64_t lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator()
{
  result = lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator;
  if (!lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator)
  {
    type metadata accessor for String.StandardComparator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator);
  }

  return result;
}

uint64_t TableColumn<>.init<A>(_:value:comparator:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a3;
  v29 = a6;
  v30 = a1;
  v31 = a7;
  v11 = *a2;
  v12 = type metadata accessor for String.StandardComparator();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v11 + *MEMORY[0x1E69E77B0]);
  v17 = type metadata accessor for KeyPathComparator();
  v18 = type metadata accessor for Optional();
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v28 - v20;
  (*(v13 + 16))(v15, a3, v12, v19);
  lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();

  KeyPathComparator.init<A, B>(_:comparator:)(v22, v15, v16, MEMORY[0x1E69E6158], v12);
  (*(*(v17 - 8) + 56))(v21, 0, 1, v17);
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v24 = v29;
  v25 = v30;
  v23[4] = v29;
  v23[5] = a2;
  v32 = v16;
  v33 = a4;
  v34 = a5;
  v35 = v24;
  v36 = v25;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v21, partial apply for closure #1 in TableColumn<>.init<A>(_:value:), v23, partial apply for closure #2 in TableColumn<>.init<A>(_:value:comparator:), v16, v17, MEMORY[0x1E6981148], v31, MEMORY[0x1E6981148], a5, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  (*(v13 + 8))(v28, v12);
  return (*(*(a4 - 8) + 8))(v25, a4);
}

{
  v28 = a3;
  v29 = a6;
  v30 = a1;
  v31 = a7;
  v11 = *a2;
  v12 = type metadata accessor for String.StandardComparator();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v11 + *MEMORY[0x1E69E77B0]);
  v17 = type metadata accessor for SortDescriptor();
  v18 = type metadata accessor for Optional();
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v28 - v20;
  (*(v13 + 16))(v15, a3, v12, v19);

  SortDescriptor.init<A>(_:comparator:)(v22, v15, v16, MEMORY[0x1E69682C0]);
  (*(*(v17 - 8) + 56))(v21, 0, 1, v17);
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v24 = v29;
  v25 = v30;
  v23[4] = v29;
  v23[5] = a2;
  v32 = v16;
  v33 = a4;
  v34 = a5;
  v35 = v24;
  v36 = v25;

  WitnessTable = swift_getWitnessTable();
  TableColumn.init(comparator:content:label:)(v21, partial apply for closure #1 in TableColumn<>.init<A>(_:value:comparator:), v23, partial apply for closure #2 in TableColumn<>.init<A>(_:value:comparator:), v16, v17, MEMORY[0x1E6981148], v31, MEMORY[0x1E6981148], a5, WitnessTable, MEMORY[0x1E6981138], MEMORY[0x1E6981138]);

  (*(v13 + 8))(v28, v12);
  return (*(*(a4 - 8) + 8))(v25, a4);
}

uint64_t closure #2 in TableColumn<>.init<A>(_:value:comparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t partial apply for closure #2 in TableColumn<>.init<A>(_:value:comparator:)@<X0>(uint64_t a1@<X8>)
{
  return closure #2 in TableColumn<>.init<A>(_:value:comparator:)(*(v1 + 48), a1);
}

{
  return closure #2 in TableColumn<>.init<A>(_:value:comparator:)(*(v1 + 48), a1);
}

uint64_t _s7SwiftUI4ViewPAAE4task2id4name8priority4file4line_Qrqd___SSSgScPSSSiyyYaYAcntSQRd__lF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v50 = a6;
  v51 = a7;
  v49 = a5;
  v59 = a2;
  v60 = a1;
  v61 = a14;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v53 = a4;
    v54 = a10;
    v55 = a8;
    v56 = a11;
    v57 = a9;
    v18 = type metadata accessor for _TaskValueModifier2();
    v19 = *(v18 - 8);
    MEMORY[0x1EEE9AC00](v18);
    v21 = &v49 - v20;
    v52 = &v49;
    v23 = MEMORY[0x1EEE9AC00](v22);
    v25 = &v49 - v24;
    (*(v26 + 16))(&v49 - v24, v60, a12, v23);
    v58 = a13;
    if (a3)
    {
      v27 = a3;
      v28 = v59;
    }

    else
    {
      v63[0] = 0;
      v63[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v63, "View.task @ ");
      BYTE5(v63[1]) = 0;
      HIWORD(v63[1]) = -5120;
      MEMORY[0x18D00C9B0](v49, v50);
      MEMORY[0x18D00C9B0](58, 0xE100000000000000);
      v62 = v51;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x18D00C9B0](v43);

      v28 = v63[0];
      v27 = v63[1];
    }

    v44 = type metadata accessor for TaskPriority();
    v45 = MEMORY[0x1EEE9AC00](v44);
    v47 = &v49 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v47, v53, v45);
    _s7SwiftUI19_TaskValueModifier2V2id4name18executorPreference8priority6actionACyxGx_SSSch_pSgScPyyYaYAcntcfC(v25, v28, v27, 0, 0, v47, v55, v54, v21, a12);

    MEMORY[0x18D00A570](v21, v56, v18, v58);
    return (*(v19 + 8))(v21, v18);
  }

  else
  {
    v57 = type metadata accessor for _TaskValueModifier();
    v59 = *(v57 - 8);
    MEMORY[0x1EEE9AC00](v57);
    v30 = &v49 - v29;
    v56 = &v49;
    v32 = MEMORY[0x1EEE9AC00](v31);
    v34 = &v49 - v33;
    (*(v35 + 16))(&v49 - v33, v60, a12, v32);
    v36 = type metadata accessor for TaskPriority();
    v60 = &v49;
    v37 = MEMORY[0x1EEE9AC00](v36);
    v39 = &v49 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39, a4, v37);
    _TaskValueModifier.init(value:priority:action:)(v34, v39, a8, a10, a12, v30);
    v41 = v57;
    MEMORY[0x18D00A570](v30, a11, v57, a13);
    return (*(v59 + 8))(v30, v41);
  }
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _TaskModifier.InnerModifier(a3, v11, type metadata accessor for TaskPriority?);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of _TaskModifier(v11, type metadata accessor for TaskPriority?);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _TaskModifier.init(priority:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for _TaskModifier(0) + 20);
  v9 = type metadata accessor for TaskPriority();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a1, v9);
  *a4 = a2;
  *(a4 + 1) = a3;
  return result;
}

uint64_t _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for _TaskModifier2(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for TaskPriority();
  result = (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  v16 = &a8[*(v12 + 28)];
  *v16 = a6;
  *(v16 + 1) = a7;
  return result;
}

uint64_t _s7SwiftUI4ViewPAAE4task4name18executorPreference8priority4file4line6actionQrSSSg_Sch_pScPSSSiyyYaYAcntF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = a5;
  v33 = a4;
  v35 = a9;
  v36 = a13;
  v34 = a12;
  v31 = a10;
  v20 = type metadata accessor for _TaskModifier2(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    v23 = a2;
  }

  else
  {
    v38[0] = 0;
    v38[1] = 0xE000000000000000;

    v30 = v13;
    _StringGuts.grow(_:)(17);

    strcpy(v38, "View.task @ ");
    BYTE5(v38[1]) = 0;
    HIWORD(v38[1]) = -5120;
    MEMORY[0x18D00C9B0](a6, a7);
    MEMORY[0x18D00C9B0](58, 0xE100000000000000);
    v37 = a8;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v24);

    a1 = v38[0];
    v23 = v38[1];
  }

  v25 = *(v20 + 24);
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 16))(&v22[v25], v32, v26);
  *v22 = a1;
  *(v22 + 1) = v23;
  v27 = v33;
  *(v22 + 2) = a3;
  *(v22 + 3) = v27;
  v28 = &v22[*(v20 + 28)];
  *v28 = v31;
  *(v28 + 1) = a11;

  swift_unknownObjectRetain();
  MEMORY[0x18D00A570](v22, v34, v20, v36);

  return outlined destroy of _TaskModifier(v22, type metadata accessor for _TaskModifier2);
}

uint64_t _s7SwiftUI19_TaskValueModifier2V2id4name18executorPreference8priority6actionACyxGx_SSSch_pSgScPyyYaYAcntcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for _TaskValueModifier2();
  v18 = (a9 + v17[10]);
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v19 = (a9 + v17[9]);
  *v19 = a2;
  v19[1] = a3;
  *v18 = a4;
  v18[1] = a5;
  v20 = v17[11];
  v21 = type metadata accessor for TaskPriority();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a6, v21);
  v23 = (a9 + v17[12]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t _s7SwiftUI4ViewPAAE4task2id4name18executorPreference8priority4file4line_Qrqd___SSSgSch_pScPSSSiyyYaYAcntSQRd__lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v34 = a7;
  v35 = a8;
  v40 = a6;
  v41 = a5;
  v43 = a4;
  v44 = a9;
  v36 = a2;
  v45 = a15;
  v42 = a13;
  v46 = a12;
  v38 = a11;
  v37 = type metadata accessor for TaskPriority();
  v18 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a14 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a16;
  v25 = type metadata accessor for _TaskValueModifier2();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v34 - v28;
  (*(v21 + 16))(v24, a1, a14, v27);
  if (a3)
  {

    v30 = a3;
    v31 = v36;
  }

  else
  {
    v48[0] = 0;
    v48[1] = 0xE000000000000000;

    _StringGuts.grow(_:)(17);

    strcpy(v48, "View.task @ ");
    BYTE5(v48[1]) = 0;
    HIWORD(v48[1]) = -5120;
    MEMORY[0x18D00C9B0](v34, v35);
    MEMORY[0x18D00C9B0](58, 0xE100000000000000);
    v47 = a10;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v32);

    v31 = v48[0];
    v30 = v48[1];
  }

  (*(v18 + 16))(v20, v40, v37);
  _s7SwiftUI19_TaskValueModifier2V2id4name18executorPreference8priority6actionACyxGx_SSSch_pSgScPyyYaYAcntcfC(v24, v31, v30, v43, v41, v20, v38, v46, v29, a14);

  swift_unknownObjectRetain();
  MEMORY[0x18D00A570](v29, v42, v25, v45);

  return (*(v26 + 8))(v29, v25);
}

uint64_t _TaskModifier.action.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _TaskModifier.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _TaskModifier.priority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _TaskModifier(0) + 20);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _TaskModifier.priority.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _TaskModifier(0) + 20);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static _TaskModifier._makeView(modifier:inputs:body:)()
{
  type metadata accessor for _TaskModifier.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier.Child and conformance _TaskModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier, type metadata accessor for _TaskModifier.InnerModifier);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t static _TaskModifier._makeViewList(modifier:inputs:body:)()
{
  type metadata accessor for _TaskModifier.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier.Child and conformance _TaskModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier, type metadata accessor for _TaskModifier.InnerModifier);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t key path setter for _TaskModifier.action : _TaskModifier(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  *a2 = a6;
  a2[1] = v10;
  return result;
}

uint64_t _TaskValueModifier.action.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _TaskValueModifier.action.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _TaskValueModifier.priority.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _TaskValueModifier.priority.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t _TaskModifier2.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _TaskModifier2.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _s7SwiftUI14_TaskModifier2V12taskExecutorSch_pSgvs(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t _TaskModifier2.priority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _TaskModifier2(0) + 24);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _TaskModifier2.priority.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _TaskModifier2(0) + 24);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t _s7SwiftUI14_TaskModifier2V6actionyyYaYAcvpACTK@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for _TaskModifier2(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v5;
  v8[5] = v4;
  *a2 = &_sIeAgH_ytIeAgHr_TRTA_137Tu;
  a2[1] = v8;
  swift_unknownObjectRetain();
}

uint64_t _s7SwiftUI14_TaskModifier2V6actionyyYaYAcvpACTk(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v4;
  v7[5] = v3;
  v8 = (a2 + *(type metadata accessor for _TaskModifier2(0) + 28));
  swift_unknownObjectRetain();

  *v8 = &_sytIeAgHr_IeAgH_TRTA_132Tu;
  v8[1] = v7;
  return result;
}

uint64_t _sytIeAgHr_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return v6();
}

uint64_t _s7SwiftUI14_TaskModifier2V6actionyyYaYAcvg()
{
  v1 = *(v0 + *(type metadata accessor for _TaskModifier2(0) + 28));

  return v1;
}

uint64_t _s7SwiftUI14_TaskModifier2V6actionyyYaYAcvs(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for _TaskModifier2(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t static _TaskModifier2._makeView(modifier:inputs:body:)()
{
  type metadata accessor for _TaskModifier2.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier2.Child and conformance _TaskModifier2.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier2.InnerModifier and conformance _TaskModifier2.InnerModifier, type metadata accessor for _TaskModifier2.InnerModifier);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t static _TaskModifier2._makeViewList(modifier:inputs:body:)()
{
  type metadata accessor for _TaskModifier2.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier2.Child and conformance _TaskModifier2.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier2.InnerModifier and conformance _TaskModifier2.InnerModifier, type metadata accessor for _TaskModifier2.InnerModifier);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t static _TaskModifier._viewListCount(inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(0);
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(a5, a6);
  return static ViewModifier.viewListCount(inputs:body:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance _TaskModifier.Child@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t protocol witness for Rule.value.getter in conformance _TaskModifier.Child@<X0>(void (*a1)(void)@<X2>, void (*a2)(uint64_t, uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  a1(0);
  Value = AGGraphGetValue();
  a2(Value, a4);
  result = a3(0);
  v9 = (a4 + *(result + 20));
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t closure #1 in _TaskModifier2.InnerModifier.body(content:)(uint64_t a1)
{
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  v8 = (a1 + *(type metadata accessor for _TaskModifier2.InnerModifier(0) + 20));
  v9 = v8[1];
  v24 = *v8;
  v25 = v9;
  type metadata accessor for State<Task<(), Never>?>(0, &lazy cache variable for type metadata for State<Task<(), Never>?>, type metadata accessor for Task<(), Never>?, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (!v23[5])
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = type metadata accessor for _TaskModifier2(0);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for TaskPriority();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v7, a1 + v13, v14);
    (*(v15 + 56))(v7, 0, 1, v14);
    v16 = (a1 + *(v12 + 28));
    v18 = *v16;
    v17 = v16[1];
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    outlined init with copy of _TaskModifier.InnerModifier(v7, v4, type metadata accessor for TaskPriority?);
    LODWORD(v18) = (*(v15 + 48))(v4, 1, v14);
    swift_unknownObjectRetain();

    if (v18 == 1)
    {
      outlined destroy of _TaskModifier(v4, type metadata accessor for TaskPriority?);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v15 + 8))(v4, v14);
    }

    v20 = swift_allocObject();
    *(v20 + 16) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async () -> ();
    *(v20 + 24) = v19;
    swift_unknownObjectRetain();

    if (v10 != 1)
    {
      v23[1] = 6;
      v23[2] = 0;
      v23[3] = v10;
      v23[4] = v11;
    }

    v21 = swift_task_create();
    outlined destroy of _TaskModifier(v7, type metadata accessor for TaskPriority?);
    swift_unknownObjectRelease();

    v24 = v21;
    if (v9)
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @async () -> ()(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return v5();
}

uint64_t closure #2 in _TaskModifier.InnerModifier.body(content:)(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + *(a2(0) + 20) + 8);
  type metadata accessor for State<Task<(), Never>?>(0, &lazy cache variable for type metadata for State<Task<(), Never>?>, type metadata accessor for Task<(), Never>?, MEMORY[0x1E6981790]);
  result = State.wrappedValue.getter();
  if (v4)
  {
    MEMORY[0x18D00D010](v4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (v2)
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance _TaskModifier2.InnerModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  outlined init with copy of _TaskModifier.InnerModifier(v3, &v15 - v9, type metadata accessor for _TaskModifier2.InnerModifier);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  outlined init with take of _TaskModifier2(v10, v12 + v11, type metadata accessor for _TaskModifier2.InnerModifier);
  outlined init with copy of _TaskModifier.InnerModifier(v3, v7, type metadata accessor for _TaskModifier2.InnerModifier);
  v13 = swift_allocObject();
  result = outlined init with take of _TaskModifier2(v7, v13 + v11, type metadata accessor for _TaskModifier2.InnerModifier);
  *a3 = partial apply for closure #1 in _TaskModifier2.InnerModifier.body(content:);
  a3[1] = v12;
  a3[2] = partial apply for closure #2 in _TaskModifier2.InnerModifier.body(content:);
  a3[3] = v13;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _TaskModifier2()
{
  type metadata accessor for _TaskModifier2.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier2.Child and conformance _TaskModifier2.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier2.InnerModifier and conformance _TaskModifier2.InnerModifier, type metadata accessor for _TaskModifier2.InnerModifier);
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _TaskModifier2()
{
  type metadata accessor for _TaskModifier2.InnerModifier(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _TaskModifier2.Child and conformance _TaskModifier2.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(&lazy protocol witness table cache variable for type _TaskModifier2.InnerModifier and conformance _TaskModifier2.InnerModifier, type metadata accessor for _TaskModifier2.InnerModifier);
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t protocol witness for static ViewModifier._viewListCount(inputs:body:) in conformance _TaskModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), unint64_t *a7, void (*a8)(uint64_t))
{
  a6(0);
  lazy protocol witness table accessor for type _TaskModifier.InnerModifier and conformance _TaskModifier.InnerModifier(a7, a8);
  return static ViewModifier.viewListCount(inputs:body:)();
}

uint64_t _TaskValueModifier2.name.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t _TaskValueModifier2.name.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t _s7SwiftUI19_TaskValueModifier2V12taskExecutorSch_pSgvs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));
  result = swift_unknownObjectRelease();
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t _TaskValueModifier2.priority.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _TaskValueModifier2.priority.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t _s7SwiftUI19_TaskValueModifier2V6actionyyYaYAcvpSQRzlACyxGTK@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for _TaskValueModifier2() + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v5;
  v8[5] = v4;
  *a2 = &_sIeAgH_ytIeAgHr_TRTATu;
  a2[1] = v8;
  swift_unknownObjectRetain();
}

uint64_t _s7SwiftUI19_TaskValueModifier2V6actionyyYaYAcvpSQRzlACyxGTk(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v4;
  v7[5] = v3;
  v8 = (a2 + *(type metadata accessor for _TaskValueModifier2() + 48));
  swift_unknownObjectRetain();

  *v8 = &_sytIeAgHr_IeAgH_TRTATu;
  v8[1] = v7;
  return result;
}

uint64_t _s7SwiftUI19_TaskValueModifier2V6actionyyYaYAcvg(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t _s7SwiftUI19_TaskValueModifier2V6actionyyYaYAcvs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 48));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t static _TaskValueModifier2._makeView(modifier:inputs:body:)()
{
  type metadata accessor for _TaskValueModifier2();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for _TaskValueModifier2.InnerModifier();
  type metadata accessor for _TaskValueModifier2.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

uint64_t static _TaskValueModifier2._makeViewList(modifier:inputs:body:)()
{
  type metadata accessor for _TaskValueModifier2();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for _TaskValueModifier2.InnerModifier();
  type metadata accessor for _TaskValueModifier2.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
}

uint64_t static _TaskValueModifier._viewListCount(inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t))
{
  a6(0, a4, a5);
  swift_getWitnessTable();
  return static ViewModifier._viewListCount(inputs:body:)();
}

uint64_t _TaskValueModifier.Child.modifier.getter@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

uint64_t _TaskValueModifier2.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState();
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _TaskValueModifier2();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  _TaskValueModifier.Child.modifier.getter(type metadata accessor for _TaskValueModifier2, &v14 - v11);
  (*(*(v6 - 8) + 56))(v9, 1, 1, v6);
  return _TaskValueModifier.InnerModifier.init(base:taskState:)(v12, v9, a1, a2, type metadata accessor for _TaskValueModifier2, type metadata accessor for _TaskValueModifier2.InnerModifier, type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState, a3);
}

uint64_t _TaskValueModifier.InnerModifier.init(base:taskState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, void (*a6)(void, uint64_t, uint64_t)@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v15 = a5(0, a3, a4);
  (*(*(v15 - 8) + 32))(a8, a1, v15);
  a6(0, a3, a4);
  return property wrapper backing initializer of _TaskValueModifier.InnerModifier.taskState(a2, a3, a4, a7);
}

uint64_t property wrapper backing initializer of _TaskValueModifier.InnerModifier.taskState(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(255);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  (*(v6 + 16))(&v10 - v8, a1, v5, v7);
  State.init(wrappedValue:)();
  return (*(v6 + 8))(a1, v5);
}

uint64_t _TaskValueModifier.InnerModifier.taskState.getter(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 16), *(a1 + 24));
  type metadata accessor for Optional();
  type metadata accessor for State();
  return State.wrappedValue.getter();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance _TaskValueModifier<A>.Child@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t a3@<X8>)
{
  v4 = a2(0, *(a1 + 16), *(a1 + 24));
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _TaskValueModifier2<A>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t _TaskValueModifier2.InnerModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  swift_getWitnessTable();
  v44 = type metadata accessor for _ViewModifier_Content();
  v46 = type metadata accessor for ModifiedContent();
  v10 = *(a2 + 16);
  v38 = *(a2 + 24);
  v11 = v38;
  v48 = type metadata accessor for _ValueActionModifier2();
  v49 = type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  v50 = v12;
  v51 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v47 = &v38 - v17;
  v54 = *(v5 + 16);
  v42 = v9;
  v55 = v3;
  v54(v9, v3, a2, v16);
  v39 = *(v5 + 80);
  v18 = (v39 + 32) & ~v39;
  v41 = v6;
  v19 = swift_allocObject();
  v40 = v10;
  *(v19 + 16) = v10;
  *(v19 + 24) = v11;
  v53 = *(v5 + 32);
  v53(v19 + v18, v9, a2);
  v20 = v43;
  (v54)(v43, v3, a2);
  v21 = v18;
  v22 = swift_allocObject();
  v23 = v38;
  *(v22 + 16) = v10;
  *(v22 + 24) = v23;
  v53(v22 + v21, v20, a2);
  *&v62 = partial apply for closure #1 in _TaskValueModifier2.InnerModifier.body(content:);
  *(&v62 + 1) = v19;
  *&v63 = partial apply for closure #2 in _TaskValueModifier2.InnerModifier.body(content:);
  *(&v63 + 1) = v22;
  v24 = v44;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](v64, &v62, v24, MEMORY[0x1E69805D8], WitnessTable);

  v62 = v64[0];
  v63 = v64[1];
  v26 = v42;
  (v54)(v42, v55, a2);
  v27 = swift_allocObject();
  *(v27 + 16) = v40;
  *(v27 + 24) = v23;
  v53(v27 + v21, v26, a2);
  v28 = MEMORY[0x1E69805D0];
  v60 = WitnessTable;
  v61 = MEMORY[0x1E69805D0];
  v29 = swift_getWitnessTable();
  v30 = v45;
  View.onChange<A>(of:initial:_:)();

  v31 = v63;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v62);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v31);
  v32 = swift_getWitnessTable();
  v58 = v29;
  v59 = v32;
  v56 = swift_getWitnessTable();
  v57 = v28;
  v33 = v50;
  v34 = swift_getWitnessTable();
  v35 = v47;
  static ViewBuilder.buildExpression<A>(_:)(v30, v33, v34);
  v36 = *(v51 + 8);
  v36(v30, v33);
  static ViewBuilder.buildExpression<A>(_:)(v35, v33, v34);
  return (v36)(v35, v33);
}

uint64_t closure #1 in _TaskValueModifier2.InnerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v46 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v48 = type metadata accessor for _TaskValueModifier2.InnerModifier();
  _TaskValueModifier.InnerModifier.taskState.getter(v48, type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState);
  v45 = *(v13 - 8);
  v20 = *(v45 + 48);
  v47 = v13;
  v21 = v20(v19, 1, v13);
  v22 = *(v15 + 8);
  v49 = v15 + 8;
  v50 = v14;
  result = v22(v19, v14);
  if (v21 == 1)
  {
    v43 = a3;
    v24 = type metadata accessor for _TaskValueModifier2();
    v25 = v24[11];
    v26 = (a1 + v24[10]);
    v27 = *v26;
    v42 = v26[1];
    v28 = type metadata accessor for TaskPriority();
    v29 = *(v28 - 8);
    (*(v29 + 16))(v12, a1 + v25, v28);
    (*(v29 + 56))(v12, 0, 1, v28);
    v30 = v24[12];
    v44 = a1;
    v31 = (a1 + v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = v33;
    outlined init with copy of _TaskModifier.InnerModifier(v12, v9, type metadata accessor for TaskPriority?);
    LODWORD(v32) = (*(v29 + 48))(v9, 1, v28);
    swift_unknownObjectRetain();

    if (v32 == 1)
    {
      outlined destroy of _TaskModifier(v9, type metadata accessor for TaskPriority?);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v29 + 8))(v9, v28);
    }

    v35 = swift_allocObject();
    *(v35 + 16) = &thunk for @escaping @callee_guaranteed @async () -> ()partial apply;
    *(v35 + 24) = v34;
    swift_unknownObjectRetain();

    if (v27 != 1)
    {
      v53 = 6;
      v54 = 0;
      v55 = v27;
      v56 = v42;
    }

    v36 = swift_task_create();
    outlined destroy of _TaskModifier(v12, type metadata accessor for TaskPriority?);
    swift_unknownObjectRelease();

    v38 = v51;
    v37 = v52;
    (*(v52 + 16))(v51, v44, a2);
    v39 = v46;
    *v46 = v36;
    v40 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState();
    (*(v37 + 32))(v39 + *(v40 + 36), v38, a2);
    (*(v45 + 56))(v39, 0, 1, v47);
    specialized _TaskValueModifier.InnerModifier.taskState.setter(v39, v48, type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState);
    return v22(v39, v50);
  }

  return result;
}

uint64_t closure #2 in _TaskValueModifier.InnerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, double), void (*a6)(uint64_t, void, void))
{
  v25 = a6;
  v9 = a4(255);
  v26 = type metadata accessor for Optional();
  v10 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = *(v9 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v25 - v19);
  v21 = a3;
  v22 = v25;
  v23 = a5(0, a2, v21, v18);
  _TaskValueModifier.InnerModifier.taskState.getter(v23, v22);
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
    return (*(v10 + 8))(v15, v26);
  }

  (*(v16 + 32))(v20, v15, v9);
  MEMORY[0x18D00D010](*v20, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  (*(v16 + 56))(v12, 1, 1, v9);
  specialized _TaskValueModifier.InnerModifier.taskState.setter(v12, v23, v22);
  (*(v10 + 8))(v12, v26);
  return (*(v16 + 8))(v20, v9);
}

uint64_t closure #3 in _TaskValueModifier2.InnerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TaskPriority?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v45 - v10;
  v11 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v56 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v45 - v20);
  v54 = type metadata accessor for _TaskValueModifier2.InnerModifier();
  _TaskValueModifier.InnerModifier.taskState.getter(v54, type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState);
  if ((*(v18 + 48))(v17, 1, v11) == 1)
  {
    return (*(v13 + 8))(v17, v12);
  }

  v51 = v13;
  v52 = v12;
  (*(v18 + 32))(v21, v17, v11);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return (*(v18 + 8))(v21, v11);
  }

  v47 = v21;
  MEMORY[0x18D00D010](*v21, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  v48 = a3;
  v23 = type metadata accessor for _TaskValueModifier2();
  v24 = v23[11];
  v25 = (a1 + v23[10]);
  v26 = *v25;
  v46 = v25[1];
  v27 = type metadata accessor for TaskPriority();
  v28 = *(v27 - 8);
  v29 = v55;
  (*(v28 + 16))(v55, a1 + v24, v27);
  (*(v28 + 56))(v29, 0, 1, v27);
  v30 = v23[12];
  v49 = a1;
  v31 = (a1 + v30);
  v32 = v26;
  v34 = *v31;
  v33 = v31[1];
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;
  v50 = v35;
  v36 = v53;
  outlined init with copy of _TaskModifier.InnerModifier(v29, v53, type metadata accessor for TaskPriority?);
  LODWORD(v34) = (*(v28 + 48))(v36, 1, v27);
  swift_unknownObjectRetain();

  if (v34 == 1)
  {
    outlined destroy of _TaskModifier(v36, type metadata accessor for TaskPriority?);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v28 + 8))(v36, v27);
  }

  v37 = swift_allocObject();
  v38 = v50;
  *(v37 + 16) = &thunk for @escaping @callee_guaranteed @async () -> ()partial apply;
  *(v37 + 24) = v38;
  swift_unknownObjectRetain();

  v39 = v49;
  v40 = v58;
  if (v32 != 1)
  {
    v59 = 6;
    v60 = 0;
    v61 = v32;
    v62 = v46;
  }

  v41 = swift_task_create();
  outlined destroy of _TaskModifier(v29, type metadata accessor for TaskPriority?);
  swift_unknownObjectRelease();

  v42 = v57;
  (*(v40 + 16))(v57, v39, a2);
  v43 = v56;
  *v56 = v41;
  v44 = type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState();
  (*(v40 + 32))(v43 + *(v44 + 36), v42, a2);
  (*(v18 + 56))(v43, 0, 1, v11);
  specialized _TaskValueModifier.InnerModifier.taskState.setter(v43, v54, type metadata accessor for _TaskValueModifier2.InnerModifier.TaskState);
  (*(v51 + 8))(v43, v52);
  return (*(v18 + 8))(v47, v11);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScSy7SwiftUI22TextEditorModificationVG_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type _TaskModifier2.Child and conformance _TaskModifier2.Child()
{
  result = lazy protocol witness table cache variable for type _TaskModifier2.Child and conformance _TaskModifier2.Child;
  if (!lazy protocol witness table cache variable for type _TaskModifier2.Child and conformance _TaskModifier2.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TaskModifier2.Child and conformance _TaskModifier2.Child);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *a3 = a2;
  a3[1] = v7;
}

char *initializeBufferWithCopyOfBuffer for _TaskModifier(char *a1, char *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    *a1 = v5;
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = v5;
    *(a1 + 1) = v6;
    v7 = *(a3 + 20);
    v9 = type metadata accessor for TaskPriority();
    v10 = *(*(v9 - 8) + 16);

    v10(&a1[v7], &a2[v7], v9);
  }

  return a1;
}

char *initializeWithTake for _TaskModifier(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithTake for _TaskModifier(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for _TaskValueModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if ((v12 | v8) <= 7 && ((*(v11 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((((-17 - v8) | v8) - v9 - v12) | v12) - *(*(v10 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v16 = v6;
    v17 = a2[1];
    *a1 = *a2;
    a1[1] = v17;
    v18 = a2 + v8;
    v19 = (a1 + v8 + 16) & ~v8;
    v20 = (v18 + 16) & ~v8;
    v21 = *(v7 + 16);

    v21(v19, v20, v16);
    (*(v11 + 16))((v19 + v9 + v12) & ~v12, (v20 + v9 + v12) & ~v12, v10);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)));
  }

  return a1;
}

_OWORD *initializeWithTake for _TaskValueModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (a1 + v9 + 16) & ~v9;
  v11 = (a2 + v9 + 16) & ~v9;
  (*(v7 + 32))(v10, v11, v6);
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 32))((*(v8 + 32) + *(v12 + 80) + v10) & ~*(v12 + 80), (*(v8 + 32) + *(v12 + 80) + v11) & ~*(v12 + 80));
  return a1;
}

_OWORD *assignWithTake for _TaskValueModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (a1 + v9 + 16) & ~v9;
  v11 = (a2 + v9 + 16) & ~v9;
  (*(v7 + 40))(v10, v11, v6);
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 40))((*(v8 + 24) + *(v12 + 80) + v10) & ~*(v12 + 80), (*(v8 + 24) + *(v12 + 80) + v11) & ~*(v12 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _TaskValueModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for TaskPriority() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + ((v10 + 16) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((a1 + v10 + 16) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((a1 + v10 + 16) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = ((v11 + ((v10 + 16) & ~v10) + v12) & ~v12) + *(v8 + 64);
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for _TaskValueModifier(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for TaskPriority() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + ((v12 + 16) & ~v12) + v14) & ~v14) + *(v10 + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v24 = *(v8 + 56);

      v24((a1 + v12 + 16) & ~v12, a2);
    }

    else
    {
      v25 = *(v10 + 56);

      v25((((a1 + v12 + 16) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

char *initializeBufferWithCopyOfBuffer for _TaskModifier2(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 1);
    v6 = *(a3 + 24);
    v9 = type metadata accessor for TaskPriority();
    v10 = *(*(v9 - 8) + 16);

    swift_unknownObjectRetain();
    v10(&v3[v6], a2 + v6, v9);
    v11 = *(a3 + 28);
    v12 = &v3[v11];
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    *(v12 + 1) = v14;
  }

  return v3;
}

uint64_t destroy for _TaskModifier2(uint64_t a1, uint64_t a2)
{

  swift_unknownObjectRelease();
  v4 = *(a2 + 24);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
}

uint64_t initializeWithCopy for _TaskModifier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(*(v8 - 8) + 16);

  swift_unknownObjectRetain();
  v9(a1 + v7, a2 + v7, v8);
  v10 = *(a3 + 28);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  return a1;
}

char *assignWithCopy for _TaskModifier2(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 3) = v6;
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 28);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;

  return a1;
}

char *initializeWithTake for _TaskModifier2(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];
  return a1;
}

char *assignWithTake for _TaskModifier2(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  swift_unknownObjectRelease();
  *(a1 + 3) = v7;
  v8 = *(a3 + 24);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];

  return a1;
}

uint64_t type metadata completion function for _TaskModifier2()
{
  result = type metadata accessor for TaskPriority();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _TaskValueModifier2()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TaskPriority();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _TaskValueModifier2(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((v11 + ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v10 | *(v6 + 80) & 0xF8;
  if (v13 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v18 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v18[1] = v19[1];
    v20 = ((v19 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v20;
    v22 = *(v9 + 16);

    swift_unknownObjectRetain();
    v22(v21 + 1, v20 + 1, v17);
    v23 = ((v20 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[1];
    v25 = ((v21 + v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v23;
    v25[1] = v24;
  }

  return a1;
}

uint64_t destroy for _TaskValueModifier2(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 8))((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + *(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80), v5);
}

uint64_t initializeWithCopy for _TaskValueModifier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v14 = v12 + 16;
  v15 = *(v12 + 80);
  v16 = (v9 + v15 + 16) & ~v15;
  v17 = (v10 + v15 + 16) & ~v15;

  swift_unknownObjectRetain();
  v13(v16, v17, v11);
  v18 = *(v14 + 48) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

uint64_t assignWithCopy for _TaskValueModifier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v9[1] = v11;
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v9 + v15 + 16) & ~v15;
  v17 = (v10 + v15 + 16) & ~v15;
  (*(v13 + 24))(v16, v17, v12);
  v18 = *(v14 + 40) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;

  return a1;
}

uint64_t initializeWithTake for _TaskValueModifier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = (v9 + v14 + 16) & ~v14;
  v16 = (v10 + v14 + 16) & ~v14;
  (*(v12 + 32))(v15, v16, v11);
  *((*(v13 + 32) + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 32) + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _TaskValueModifier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = v10[1];
  *v9 = *v10;
  swift_unknownObjectRelease();
  v9[1] = v11;
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = v13 + 40;
  v15 = *(v13 + 80);
  v16 = (v9 + v15 + 16) & ~v15;
  v17 = (v10 + v15 + 16) & ~v15;
  (*(v13 + 40))(v16, v17, v12);
  *((*(v14 + 24) + 7 + v16) & 0xFFFFFFFFFFFFFFF8) = *((*(v14 + 24) + 7 + v17) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for _TaskValueModifier2(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + 16;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + ((v14 + ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
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
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 == v13)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v12 & 0x80000000) != 0)
    {
      v27 = *(v9 + 48);

      return v27((v14 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
    }

    else
    {
      v26 = *(v25 + 8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}