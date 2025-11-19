uint64_t AnimatedValueTrack<A>.PacedPathSource.update(value:mix:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v39 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = type metadata accessor for Optional();
  v14 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v16 = &v36 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v38 = &v36 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v36 - v27;
  AnimatedValueTrack<A>.VectorPath.arcLength.getter(a2);
  AnimatedValueTrack<A>.VectorPath.value(atArcLength:)(a2, a3, a4, v16, a6 / a7 * v29);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v14 + 8))(v16, v37);
  }

  v31 = *(v17 + 32);
  v36 = v28;
  v31(v28, v16, AssociatedTypeWitness);
  (*(a4 + 24))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = *(AssociatedConformanceWitness + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v33 = *(v17 + 8);
  v33(v20, AssociatedTypeWitness);
  v34 = v38;
  (*(v17 + 16))(v38, v23, AssociatedTypeWitness);
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness, a5);
  v33(v23, AssociatedTypeWitness);
  v35 = (*(a4 + 40))(v40, a3, a4);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v33(v34, AssociatedTypeWitness);
  v35(v40, 0);
  return (v33)(v36, AssociatedTypeWitness);
}

uint64_t AnimatedValueTrack<A>.PacedPathSource.update(velocity:mix:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v53 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = type metadata accessor for Optional();
  v14 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v16 = &v44 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v44 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v52 = &v44 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v44 - v29;
  v31 = a6 / a7;
  AnimatedValueTrack<A>.VectorPath.arcLength.getter(a2);
  v33 = v32;
  AnimatedValueTrack<A>.VectorPath.unitVelocityTangent(atArcLength:)(a2, a3, a4, v16, v31 * v32);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v14 + 8))(v16, v50);
  }

  v35 = *(v17 + 32);
  v36 = v30;
  v48 = v30;
  v35(v30, v16, AssociatedTypeWitness);
  v49 = a3;
  v37 = v17;
  v38 = v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = *(v37 + 16);
  v46(v27, v36, AssociatedTypeWitness);
  v45 = *(AssociatedConformanceWitness + 16);
  v47 = v27;
  v45(AssociatedTypeWitness, AssociatedConformanceWitness, v33 / a7);
  v44 = a4;
  (*(a4 + 24))(v49, a4);
  v50 = *(AssociatedConformanceWitness + 8);
  v40 = v51;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v41 = *(v37 + 8);
  v41(v38, AssociatedTypeWitness);
  v42 = v52;
  v46(v52, v40, AssociatedTypeWitness);
  v45(AssociatedTypeWitness, AssociatedConformanceWitness, a5);
  v41(v40, AssociatedTypeWitness);
  v43 = (*(v44 + 40))(v54, v49);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v41(v42, AssociatedTypeWitness);
  v43(v54, 0);
  v41(v47, AssociatedTypeWitness);
  return (v41)(v48, AssociatedTypeWitness);
}

uint64_t instantiation function for generic protocol witness table for AnimatedValueTrack<A><A>.PacedPathSource(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static CombinedSource.== infix(_:_:)()
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for CombinedSource();
    v0 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t CombinedSource.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1, a3);
  v8 = type metadata accessor for CombinedSource();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 60), a2, a4);
}

uint64_t AnimatedValueTrackSource.combined<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  v23[1] = swift_getAssociatedTypeWitness();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = a4;
  v23[5] = a5;
  a6[3] = type metadata accessor for CombinedSource();
  a6[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  return CombinedSource.init(first:second:)(v18, v14, a2, a3, boxed_opaque_existential_1);
}

uint64_t type metadata completion function for PrependingKeyPathSource()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PrependingKeyPathSource(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for PrependingKeyPathSource(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 24) - 8) + 8))();
}

uint64_t initializeWithCopy for PrependingKeyPathSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for PrependingKeyPathSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for PrependingKeyPathSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for PrependingKeyPathSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for PrependingKeyPathSource(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

_DWORD *storeEnumTagSinglePayload for PrependingKeyPathSource(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
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

uint64_t instantiation function for generic protocol witness table for CombinedSource<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for EmptyAnimatedValueTrackSource<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PrependingKeyPathSource<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t View.contentToolbar<A>(for:content:)(_BYTE *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v19 = a4;
  v8 = a1;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContentToolbarModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  LOBYTE(v8) = *v8;
  a2(v14);
  *v16 = v8;
  (*(v9 + 32))(&v16[*(v12 + 36)], v11, a5);
  MEMORY[0x18D00A570](v16, v19, v12, v20);
  return (*(v13 + 8))(v16, v12);
}

uint64_t View.contentToolbar<A>(for:content:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a7;
  v11[6] = a2;
  v11[7] = a3;
  type metadata accessor for ToolbarItemGroup();
  v9 = type metadata accessor for TupleToolbarContent();
  return View.contentToolbar<A>(for:content:)(&v12, partial apply for closure #1 in View.contentToolbar<A>(for:content:), v11, a4, v9, a6);
}

uint64_t closure #1 in View.contentToolbar<A>(for:content:)(void (*a1)(void))
{
  v2 = type metadata accessor for ToolbarItemGroup();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  default argument 0 of ToolbarItemGroup.init(placement:content:)(v11);
  ToolbarItemGroup.init(placement:content:)(v11, a1, v5);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v5, v2, &protocol witness table for ToolbarItemGroup<A>);
  v9 = *(v3 + 8);
  v9(v5, v2);
  static ToolbarContentBuilder.buildBlock<A>(_:)(v8, v2, &protocol witness table for ToolbarItemGroup<A>);
  return (v9)(v8, v2);
}

Swift::Int ContentToolbarPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ContentToolbarPlacement and conformance ContentToolbarPlacement()
{
  result = lazy protocol witness table cache variable for type ContentToolbarPlacement and conformance ContentToolbarPlacement;
  if (!lazy protocol witness table cache variable for type ContentToolbarPlacement and conformance ContentToolbarPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentToolbarPlacement and conformance ContentToolbarPlacement);
  }

  return result;
}

uint64_t type metadata completion function for ContentToolbarModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentToolbarModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFD)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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
        LODWORD(v9) = *a1 | (a1[2] << 16);
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

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for ContentToolbarModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFD)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 2;
  }
}

void ContentToolbarPlacement.Placement.adjustPlacements(storage:)(uint64_t a1, int a2)
{
  v37 = a1;
  v36 = a2;
  v2 = a2;
  v3 = type metadata accessor for ToolbarStorage.GroupItem(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35[-v10];
  v12 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v2)
  {
    v15 = *(v37 + 48);
    v16 = v15[2];
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v17 = 0;
        while (v17 < v15[2])
        {
          v22 = *(type metadata accessor for ToolbarStorage.Entry(0) - 8);
          v23 = v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17;
          _s7SwiftUI14ToolbarStorageV5EntryV4KindOWOcTm_0(v23, v11, type metadata accessor for ToolbarStorage.Entry.Kind);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of ToolbarStorage.Entry.Kind(v11, type metadata accessor for ToolbarStorage.Entry.Kind);
            _s7SwiftUI14ToolbarStorageV5EntryV4KindOWOcTm_0(v23, v8, type metadata accessor for ToolbarStorage.Entry.Kind);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v21 = type metadata accessor for ToolbarStorage.Entry.Kind;
              v20 = v8;
              goto LABEL_8;
            }

            v24 = v36;
            _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_1(v8, v5, type metadata accessor for ToolbarStorage.GroupItem);
            v25 = (v5 + 80);
            if (v24 == 1)
            {
              outlined init with copy of ToolbarItemPlacement.Role(v25, &v38);
              if (v41 == 2 && v38 == 13 && (v26 = vorrq_s8(v39, v40), !*&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL))))
              {
                v27 = 31;
              }

              else
              {
                outlined destroy of ToolbarItemPlacement.Role(&v38);
                v27 = 30;
              }

              goto LABEL_40;
            }

            outlined init with copy of ToolbarItemPlacement.Role(v25, &v38);
            if (v41 != 2)
            {
              goto LABEL_38;
            }

            v33 = vorrq_s8(v39, v40);
            v34 = vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
            if (v38 == 9 && !*&v34)
            {
              v27 = 27;
LABEL_40:
              v42 = v27;
              v43 = 0u;
              v44 = 0u;
              v45 = 2;
              outlined assign with take of ToolbarItemPlacement.Role(&v42, (v5 + 80));
              outlined destroy of ToolbarStorage.Entry.Kind(v23, type metadata accessor for ToolbarStorage.Entry.Kind);
              v19 = type metadata accessor for ToolbarStorage.GroupItem;
              _s7SwiftUI14ToolbarStorageV5EntryV4KindOWOcTm_0(v5, v23, type metadata accessor for ToolbarStorage.GroupItem);
              swift_storeEnumTagMultiPayload();
              v20 = v5;
              goto LABEL_7;
            }

            if (v38 != 10 || *&v34)
            {
LABEL_38:
              outlined destroy of ToolbarItemPlacement.Role(&v38);
            }

            v27 = 28;
            goto LABEL_40;
          }

          v28 = v36;
          _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_1(v11, v14, type metadata accessor for ToolbarStorage.Item);
          v29 = (v14 + 112);
          if (v28 == 1)
          {
            outlined init with copy of ToolbarItemPlacement.Role(v29, &v38);
            if (v41 == 2 && v38 == 13 && (v30 = vorrq_s8(v39, v40), !*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL))))
            {
              v18 = 31;
            }

            else
            {
              outlined destroy of ToolbarItemPlacement.Role(&v38);
              v18 = 30;
            }

            goto LABEL_6;
          }

          outlined init with copy of ToolbarItemPlacement.Role(v29, &v38);
          if (v41 != 2)
          {
            goto LABEL_34;
          }

          v31 = vorrq_s8(v39, v40);
          v32 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
          if (v38 != 9 || *&v32)
          {
            if (v38 != 10 || *&v32)
            {
LABEL_34:
              outlined destroy of ToolbarItemPlacement.Role(&v38);
            }

            v18 = 28;
            goto LABEL_6;
          }

          v18 = 27;
LABEL_6:
          v42 = v18;
          v43 = 0u;
          v44 = 0u;
          v45 = 2;
          outlined assign with take of ToolbarItemPlacement.Role(&v42, (v14 + 112));
          outlined destroy of ToolbarStorage.Entry.Kind(v23, type metadata accessor for ToolbarStorage.Entry.Kind);
          v19 = type metadata accessor for ToolbarStorage.Item;
          _s7SwiftUI14ToolbarStorageV5EntryV4KindOWOcTm_0(v14, v23, type metadata accessor for ToolbarStorage.Item);
          swift_storeEnumTagMultiPayload();
          v20 = v14;
LABEL_7:
          v21 = v19;
LABEL_8:
          outlined destroy of ToolbarStorage.Entry.Kind(v20, v21);
          ++v17;
          *(v37 + 48) = v15;
          if (v16 == v17)
          {
            return;
          }
        }

        __break(1u);
LABEL_43:
        v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      }
    }
  }
}

uint64_t static ContentToolbarModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v102 = *MEMORY[0x1E69E9840];
  v9 = a2[3];
  v10 = a2[1];
  v94 = a2[2];
  v95 = v9;
  v11 = a2[3];
  v96 = a2[4];
  v12 = a2[1];
  v92 = *a2;
  v93 = v12;
  v88 = v94;
  v89 = v11;
  v90 = a2[4];
  v40 = *a1;
  v97 = *(a2 + 20);
  v91 = *(a2 + 20);
  v86 = v92;
  v87 = v10;
  outlined init with copy of _ViewInputs(&v92, v100);
  PreferenceKeys.add(_:)();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  *&v100[0] = MEMORY[0x1E69E7CC8];
  LOBYTE(v98[0]) = 0;
  type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription]();
  GraphHost.intern<A>(_:for:id:)();

  AGGraphCreateIndirectAttribute2();
  *&v100[0] = AGCreateWeakAttribute();
  lazy protocol witness table accessor for type ToolbarContentInput and conformance ToolbarContentInput();
  PropertyList.subscript.setter();
  LOBYTE(v100[0]) = 1;
  lazy protocol witness table accessor for type HasContentToolbar and conformance HasContentToolbar();
  PropertyList.subscript.setter();
  v98[2] = v88;
  v98[3] = v89;
  v98[4] = v90;
  v99 = v91;
  v98[0] = v86;
  v98[1] = v87;
  v83 = v88;
  *v84 = v89;
  *&v84[16] = v90;
  v85 = v91;
  v81 = v86;
  v82 = v87;
  v13 = outlined init with copy of _ViewInputs(v98, v100);
  a3(&v46, v13, &v81);
  v100[2] = v83;
  v100[3] = *v84;
  v100[4] = *&v84[16];
  v101 = v85;
  v100[0] = v81;
  v100[1] = v82;
  outlined destroy of _ViewInputs(v100);
  *&v81 = v46;
  DWORD2(v81) = v47;

  v14 = PreferencesOutputs.subscript.getter();

  v78 = v92;
  v79 = v93;
  v80 = v94;
  LOBYTE(v71[0]) = 1;
  outlined init with copy of _GraphInputs(&v92, &v81);
  outlined init with copy of _GraphInputs(&v92, &v81);
  PropertyList.subscript.setter();
  _GraphInputs.pushStyleContext<A>(_:)();
  outlined destroy of _GraphInputs(&v92);
  v15 = v93;
  swift_beginAccess();
  v16 = *MEMORY[0x1E698D3F8];
  if ((v14 & 0x100000000) != 0)
  {
    v17 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v17 = v14;
  }

  *&v81 = __PAIR64__(v17, *(v15 + 16));
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.MakeToolbarEnvironment and conformance ToolbarGraphUtilities.MakeToolbarEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  static ToolbarGraphUtilities.makePreferenceInputs()();
  v18 = v81;
  v19 = DWORD2(v81);
  type metadata accessor for PreferenceBridge();
  swift_allocObject();
  *&v81 = PreferenceBridge.init()();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.InvalidateBridge and conformance ToolbarGraphUtilities.InvalidateBridge();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *v77 = v18;
  v73[0] = v78;
  v73[1] = v79;
  v73[2] = v80;
  v74 = v78;
  v75 = v79;
  v76 = v80;
  *&v77[8] = v19;
  *&v77[16] = 0;
  *&v77[24] = v20;
  v54 = a4;
  v55 = a5;
  LODWORD(v65) = v40;
  outlined init with copy of _GraphInputs(v73, &v81);
  type metadata accessor for ContentToolbarModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v83 = v76;
  *v84 = *v77;
  *&v84[12] = *&v77[12];
  v81 = v74;
  v82 = v75;
  (*(a5 + 32))(v71, &v59, &v81, a4, a5);
  v21 = *&v71[0];
  LODWORD(v18) = DWORD2(v71[0]);
  *&v81 = *&v71[0];
  DWORD2(v81) = DWORD2(v71[0]);
  v22 = PreferencesOutputs.subscript.getter();
  *&v81 = v21;
  DWORD2(v81) = v18;
  v23 = PreferencesOutputs.subscript.getter();

  v52 = a4;
  v53 = a5;
  LODWORD(v81) = v40;
  _GraphValue.subscript.getter();
  v24 = v71[0];
  if ((v22 & 0x100000000) != 0)
  {
    v25 = v16;
  }

  else
  {
    v25 = v22;
  }

  *&v81 = __PAIR64__(HIDWORD(v93), v71[0]);
  DWORD2(v81) = v25;
  v26 = type metadata accessor for ContentToolbarModifier.AdjustedItemStorage();
  v50 = v26;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<ToolbarStorage?>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v81, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_32, v49, v26, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
  v29 = v71[0];
  AGGraphGetFlags();
  AGGraphSetFlags();
  if ((v23 & 0x100000000) != 0)
  {
    v30 = v16;
  }

  else
  {
    v30 = v23;
  }

  PropertyList.subscript.getter();
  v31 = v81;
  *&v81 = __PAIR64__(v16, v24);
  *(&v81 + 1) = __PAIR64__(v29, v30);
  *&v82 = v31;
  DWORD2(v82) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type WriteToolbarDescriptionInput and conformance WriteToolbarDescriptionInput();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetIndirectAttribute();
  v67 = v94;
  v68 = v95;
  v69 = v96;
  v70 = v97;
  v65 = v92;
  v66 = v93;
  outlined init with copy of _ViewInputs(&v92, &v81);
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferencesOutputs.init()();
  v32 = v95;
  LODWORD(v81) = DWORD2(v95);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ToolbarGraphUtilities.HostKeys and conformance ToolbarGraphUtilities.HostKeys();
  DWORD2(v68) = Attribute.init<A>(body:value:flags:update:)();
  v71[3] = v68;
  v71[4] = v69;
  v72 = v70;
  v71[0] = v65;
  v71[1] = v66;
  v71[2] = v67;
  v61 = v67;
  v62 = v68;
  v63 = v69;
  v64 = v70;
  v59 = v65;
  v60 = v66;
  outlined init with copy of _ViewInputs(v71, &v81);
  PreferenceBridge.wrapOutputs(_:inputs:)();
  v83 = v61;
  *v84 = v62;
  *&v84[16] = v63;
  v85 = v64;
  v81 = v59;
  v82 = v60;
  outlined destroy of _ViewInputs(&v81);
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>, MEMORY[0x1E697F450], MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_18CD63410;
  v34 = v47;
  *(v33 + 32) = v46;
  *(v33 + 40) = v34;
  *(v33 + 48) = v44;
  *(v33 + 56) = v45;

  PreferencesOutputs.init()();
  v42 = v59;
  v43 = DWORD2(v59);
  v35 = *(v32 + 16);
  if (v35)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v36 = 1;
    do
    {
      v37 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v37(&v59, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v36;
    }

    while (v36 - v35 != 1);
    outlined destroy of _ToolbarInputs(&v74);
  }

  else
  {

    outlined destroy of _ToolbarInputs(&v74);
  }

  v56[2] = v67;
  v56[3] = v68;
  v56[4] = v69;
  v57 = v70;
  v56[0] = v65;
  v56[1] = v66;
  outlined destroy of _ViewInputs(v56);
  v58[0] = v78;
  v58[1] = v79;
  v58[2] = v80;
  outlined destroy of _GraphInputs(v58);
  v61 = v88;
  v62 = v89;
  v63 = v90;
  v64 = v91;
  v59 = v86;
  v60 = v87;
  outlined destroy of _ViewInputs(&v59);

  v39 = v48;
  *a6 = v42;
  *(a6 + 8) = v43;
  *(a6 + 12) = v39;
  return result;
}

uint64_t closure #1 in static ContentToolbarModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentToolbarModifier();
  v5 = *(v4 + 36);
  v9[2] = v4;
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v5, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #2 in static ContentToolbarModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v5[2] = type metadata accessor for ContentToolbarModifier();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_22, v5, &type metadata for ContentToolbarPlacement, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

void ContentToolbarModifier.AdjustedItemStorage.storage.getter(int a1@<W1>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v3 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    Value = AGGraphGetValue();
    v17 = *Value;
    v9 = *(Value + 64);
    v11 = *(Value + 32);
    v10 = *(Value + 48);
    v18 = *(Value + 16);
    v19 = v11;
    v20 = v10;
    v21 = v9;
    v14 = v18;
    v15 = v17;
    v12 = v10;
    v13 = v11;
    v3 = v9;
    outlined init with copy of ToolbarStorage(&v17, v16);
    v7 = v12;
    v6 = v13;
    v5 = v14;
    v4 = v15;
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
}

__n128 ContentToolbarModifier.AdjustedItemStorage.value.getter@<Q0>(int a1@<W1>, uint64_t a2@<X8>)
{
  ContentToolbarModifier.AdjustedItemStorage.storage.getter(a1, &v12);
  if (*v15)
  {
    v3 = BYTE8(v14);
    v8 = v12;
    v9 = v13;
    *&v10 = v14;
    *(&v10 + 9) = *(&v14 + 9);
    HIDWORD(v10) = HIDWORD(v14);
    *&v11[8] = *&v15[8];
    BYTE8(v10) = BYTE8(v14);
    *v11 = *v15;
    Value = AGGraphGetValue();
    ContentToolbarPlacement.Placement.adjustPlacements(storage:)(&v8, *Value);
    AGGraphClearUpdate();
    closure #1 in ContentToolbarModifier.AdjustedItemStorage.value.getter(&v7);
    AGGraphSetUpdate();
    BYTE8(v10) = (v7 | v3) & 1;
  }

  else
  {
    v10 = v14;
    *v11 = *v15;
    *&v11[16] = *&v15[16];
    v8 = v12;
    v9 = v13;
  }

  v5 = *v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v5;
  *(a2 + 64) = *&v11[16];
  result = v9;
  *a2 = v8;
  *(a2 + 16) = result;
  return result;
}

uint64_t closure #1 in ContentToolbarModifier.AdjustedItemStorage.value.getter@<X0>(_BYTE *a1@<X8>)
{
  AGGraphGetValue();

  v2 = Transaction.isAnimated.getter();

  *a1 = v2 & 1;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ContentToolbarModifier<A>.AdjustedItemStorage@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 1;
  return result;
}

__n128 protocol witness for Rule.value.getter in conformance ContentToolbarModifier<A>.AdjustedItemStorage@<Q0>(uint64_t a1@<X8>)
{
  ContentToolbarModifier.AdjustedItemStorage.value.getter(*(v1 + 8), v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContentToolbarModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasContentToolbar()
{
  lazy protocol witness table accessor for type HasContentToolbar and conformance HasContentToolbar();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContentToolbarPlacement.Placement()
{
  v1 = 0x5377656956626154;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656D75636F44;
  }
}

void type metadata accessor for Attribute<ToolbarStorage?>()
{
  if (!lazy cache variable for type metadata for Attribute<ToolbarStorage?>)
  {
    type metadata accessor for SceneList.Item?(255, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<ToolbarStorage?>);
    }
  }
}

uint64_t outlined destroy of ToolbarStorage.Entry.Kind(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int PencilPreferredAction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PencilPreferredAction and conformance PencilPreferredAction()
{
  result = lazy protocol witness table cache variable for type PencilPreferredAction and conformance PencilPreferredAction;
  if (!lazy protocol witness table cache variable for type PencilPreferredAction and conformance PencilPreferredAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilPreferredAction and conformance PencilPreferredAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PencilPreferredAction.Guts and conformance PencilPreferredAction.Guts()
{
  result = lazy protocol witness table cache variable for type PencilPreferredAction.Guts and conformance PencilPreferredAction.Guts;
  if (!lazy protocol witness table cache variable for type PencilPreferredAction.Guts and conformance PencilPreferredAction.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PencilPreferredAction.Guts and conformance PencilPreferredAction.Guts);
  }

  return result;
}

uint64_t key path setter for _PreviewHost.environment : _PreviewHost(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v7[0] = v3;
  v7[1] = v2;
  v5 = *(*v4 + 112);

  return v5(v7);
}

uint64_t _PreviewHost.environment.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v3;
}

uint64_t _PreviewHost.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
}

uint64_t key path setter for _PreviewHost.focusedValues : _PreviewHost(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v6 = *a1;
  v7 = v2;
  v8 = *(a1 + 1);
  v4 = *(*v3 + 136);

  return v4(&v6);
}

uint64_t _PreviewHost.focusedValues.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 56);
}

uint64_t _PreviewHost.focusedValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
}

uint64_t static _PreviewHost.makeHost(providerType:)()
{
  lazy protocol witness table accessor for type PreviewDescriptor and conformance PreviewDescriptor();
  v0 = static ProtocolDescriptor.conformance(of:)();
  if (!v3)
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for _PreviewHost?(0, &lazy cache variable for type metadata for _PreviewHost?, v1, type metadata accessor for _PreviewHost, MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  return v3;
}

unint64_t lazy protocol witness table accessor for type PreviewDescriptor and conformance PreviewDescriptor()
{
  result = lazy protocol witness table cache variable for type PreviewDescriptor and conformance PreviewDescriptor;
  if (!lazy protocol witness table cache variable for type PreviewDescriptor and conformance PreviewDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewDescriptor and conformance PreviewDescriptor);
  }

  return result;
}

uint64_t *partial apply for closure #1 in static _PreviewHost.makeHost(providerType:)@<X0>(uint64_t **a1@<X8>)
{
  type metadata accessor for PreviewProviderHost();
  swift_allocObject();
  result = PreviewProviderHost.init()();
  *a1 = result;
  return result;
}

uint64_t static _PreviewHost.makeHost<A>(content:)()
{
  type metadata accessor for PreviewHost<AnyView>(0, &lazy cache variable for type metadata for PreviewHost<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PreviewHost);
  static Update.ensure<A>(_:)();
  return v1;
}

uint64_t closure #1 in static _PreviewHost.makeHost<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v6 = AnyView.init<A>(_:)();
  type metadata accessor for PreviewHost<AnyView>(0, &lazy cache variable for type metadata for PreviewHost<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PreviewHost);
  swift_allocObject();
  result = specialized PreviewHost.init(content:)(v6);
  *a2 = result;
  return result;
}

uint64_t _PreviewHost.updateContent<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewHost<AnyView>(0, &lazy cache variable for type metadata for PreviewHost<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PreviewHost);
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = result;
    (*(v4 + 16))(v6, a1, a2);

    v9 = AnyView.init<A>(_:)();
    swift_beginAccess();
    *(v8 + 136) = v9;

    mainThreadPrecondition()();
    lazy protocol witness table accessor for type PreviewHost<AnyView> and conformance PreviewHost<A>();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreviewHost<AnyView> and conformance PreviewHost<A>()
{
  result = lazy protocol witness table cache variable for type PreviewHost<AnyView> and conformance PreviewHost<A>;
  if (!lazy protocol witness table cache variable for type PreviewHost<AnyView> and conformance PreviewHost<A>)
  {
    type metadata accessor for PreviewHost<AnyView>(255, &lazy cache variable for type metadata for PreviewHost<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PreviewHost);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewHost<AnyView> and conformance PreviewHost<A>);
  }

  return result;
}

uint64_t _PreviewHost.deinit()
{

  return v0;
}

uint64_t _PreviewHost.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PassthroughSubject<(), Never>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for PassthroughSubject<(), Never>()
{
  if (!lazy cache variable for type metadata for PassthroughSubject<(), Never>)
  {
    v0 = type metadata accessor for PassthroughSubject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PassthroughSubject<(), Never>);
    }
  }
}

uint64_t type metadata completion function for PreviewHost()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t PreviewHost.content.didset()
{
  mainThreadPrecondition()();
  type metadata accessor for PreviewHost();
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t PreviewHost.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;

  return PreviewHost.environment.didset();
}

void (*PreviewHost.environment.modify(uint64_t *a1))(void *a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance TypeSelectHost<A>();
  return PreviewHost.environment.modify;
}

void PreviewHost.environment.modify(void *a1, char a2)
{
  PreviewHost.environment.modify(a1, a2);
}

{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    PreviewHost.environment.didset();
  }

  free(v3);
}

uint64_t PreviewHost.environment.didset()
{
  type metadata accessor for PreviewHost();
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t PreviewHost.focusedValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;

  return PreviewHost.environment.didset();
}

void (*PreviewHost.focusedValues.modify(uint64_t *a1))(void *a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance TypeSelectHost<A>();
  return PreviewHost.focusedValues.modify;
}

uint64_t specialized PreviewHost.init(content:)(unint64_t a1)
{
  v2 = v1;
  v32 = *MEMORY[0x1E69E9840];
  type metadata accessor for EventBindingManager();
  *(v1 + 88) = EventBindingManager.__allocating_init()();
  *(v1 + 96) = 0;
  *(v1 + 98) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for SceneStorageValues();
  v6 = swift_allocObject();
  v6[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18SceneStorageValuesC5Entry33_1700ED20D4EA891B02973E899ABDB425LLCTt0g5Tf4g_n(v4);
  v6[6] = 0;
  swift_unknownObjectWeakInit();
  v6[2] = v5;
  v6[4] = *(v5 + 16);
  *(v2 + 120) = v6;
  *(v2 + 128) = 0;
  *(v2 + 148) = *MEMORY[0x1E698D3F8];
  type metadata accessor for ViewGraph();
  swift_allocObject();
  *(v2 + 72) = ViewGraph.init<A>(rootViewType:requestedOutputs:)();
  v7 = swift_retain_n();
  v24 = specialized FocusViewGraph.init(graph:)(v7);
  v25 = v8;
  v26 = v9;
  v27 = v10 & 1;
  v28 = v11 & 1;
  v29 = v12 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();

  AGGraphSetValue();
  v13 = AGSubgraphGetCurrent();
  swift_beginAccess();
  AGSubgraphSetCurrent();
  v14 = *(v2 + 72);
  swift_beginAccess();
  v15 = *(v14 + 32);
  type metadata accessor for _ViewList_Subgraph();
  v16 = swift_allocObject();
  *(v16 + 24) = 1;
  *(v16 + 16) = v15;
  *(v2 + 80) = v16;
  *(v2 + 136) = a1;
  v24 = a1;
  v17 = v15;

  v18 = MEMORY[0x1E6981910];
  LODWORD(v15) = Attribute.init<A>(body:value:flags:update:)();

  *(v2 + 144) = v15;
  type metadata accessor for PassthroughSubject<(), Never>();
  swift_allocObject();
  *(v2 + 16) = PassthroughSubject.init()();
  EnvironmentValues.init()();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = xmmword_18CD76350;
  type metadata accessor for PreviewHost<AnyView>(0, &lazy cache variable for type metadata for PreviewHost<AnyView>, v18, MEMORY[0x1E6981900], type metadata accessor for PreviewHost);
  lazy protocol witness table accessor for type PreviewHost<AnyView> and conformance PreviewHost<A>();

  ViewGraphRootValueUpdater.initializeViewGraph()();
  v19 = *(v2 + 72);
  swift_beginAccess();
  v31[0] = *(v19 + 72);
  v31[1] = *(v19 + 88);
  v31[2] = *(v19 + 104);
  v20 = *(v19 + 88);
  v23[0] = *(v19 + 72);
  v23[1] = v20;
  v23[2] = *(v19 + 104);
  outlined init with copy of _GraphInputs(v31, &v24);
  _ViewListInputs.init(_:)();
  if ((v30 & 0x400) == 0)
  {
    v30 |= 0x400uLL;
  }

  static View.makeDebuggableViewList(view:inputs:)();
  v21 = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of _ViewListOutputs(v23);
  outlined destroy of _ViewListInputs(&v24);
  *(v2 + 148) = v21;
  AGSubgraphSetCurrent();

  return v2;
}

uint64_t PreviewHost.invalidateEverything()()
{
  mainThreadPrecondition()();
  static Update.ensure<A>(_:)();
  v1 = *(v0 + 72);
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    return AGGraphInvalidateAllValues();
  }

  __break(1u);
  return result;
}

uint64_t PreviewHost.previews.getter()
{
  mainThreadPrecondition()();
  MEMORY[0x18D00ABE0]();
  if (*(v0 + *(*v0 + 296)) == *MEMORY[0x1E698D3F8])
  {
    *&v28 = MEMORY[0x1E697E118];
    *(&v28 + 1) = lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList();
  }

  else
  {
    type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for ViewList);
    Value = AGGraphGetValue();
    outlined init with copy of _Benchmark(Value, v34);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v34, &v26);
  }

  _ViewList_Subgraph.wrapping(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  v2 = v0[9];
  swift_beginAccess();
  v3 = *(v2 + 32);
  default argument 2 of _VariadicView_Children.init(_:contentSubgraph:transform:)();
  v4 = v26;
  v5 = v27;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v34, v39);
  v40 = v3;
  v41 = v4;
  v42 = v5;
  PreviewHost.renderUntilStable()();
  outlined init with copy of _VariadicView_Children(v39, v38);
  v6 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  result = _VariadicView_Children.endIndex.getter();
  if (v6 < 0 || result < v6)
  {
    goto LABEL_20;
  }

  if (v6)
  {
    v37 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = 0;
    v9 = v37;
    while (1)
    {
      result = _VariadicView_Children.endIndex.getter();
      if (v8 >= result)
      {
        break;
      }

      _VariadicView_Children.subscript.getter();
      v23 = v8;
      v24[3] = v30;
      v24[4] = v31;
      v24[5] = v32;
      v25 = v33;
      v24[0] = v27;
      v24[1] = v28;
      v24[2] = v29;
      outlined init with copy of _VariadicView_Children.Element(v24, v22);
      outlined init with copy of _VariadicView_Children.Element(v22, v34);
      *(&v35 + 1) = v8;
      type metadata accessor for _VariadicView_Children.Element.Type();
      v10 = String.init<A>(describing:)();
      v12 = v11;
      outlined destroy of _VariadicView_Children.Element(v22);
      *&v36 = v10;
      *(&v36 + 1) = v12;
      _s7SwiftUI7WeakBoxVyAA18SceneStorageValuesCGSgWOhTm_0(&v23, type metadata accessor for (offset: Int, element: _VariadicView_Children.Element));
      v37 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v9 = v37;
      }

      *(v9 + 16) = v14 + 1;
      v15 = (v9 + (v14 << 7));
      v16 = v34[0];
      v17 = v34[1];
      v18 = v34[3];
      v15[4] = v34[2];
      v15[5] = v18;
      v15[2] = v16;
      v15[3] = v17;
      v19 = v34[4];
      v20 = v34[5];
      v21 = v36;
      v15[8] = v35;
      v15[9] = v21;
      v15[6] = v19;
      v15[7] = v20;
      result = _VariadicView_Children.endIndex.getter();
      if (v8 >= result)
      {
        goto LABEL_18;
      }

      if (v6 == ++v8)
      {
        _s7SwiftUI7WeakBoxVyAA18SceneStorageValuesCGSgWOhTm_0(v38, type metadata accessor for EnumeratedSequence<_VariadicView_Children>);
        outlined destroy of _VariadicView_Children(v39);
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  _s7SwiftUI7WeakBoxVyAA18SceneStorageValuesCGSgWOhTm_0(v38, type metadata accessor for EnumeratedSequence<_VariadicView_Children>);
  outlined destroy of _VariadicView_Children(v39);
  v9 = MEMORY[0x1E69E7CC0];
LABEL_16:
  static Update.end()();
  return v9;
}

uint64_t PreviewHost.renderUntilStable()()
{
  v1 = 32;
  while (1)
  {
    *(v0 + 128) = 1;
    AGGraphClearUpdate();
    closure #1 in PreviewHost.renderUntilStable()();
    result = AGGraphSetUpdate();
    if (*(v0 + 129) != 1)
    {
      break;
    }

    *(v0 + 128) = 0;
    if (!--v1)
    {
      return result;
    }
  }

  *(v0 + 128) = 0;
  return result;
}

uint64_t closure #1 in PreviewHost.renderUntilStable()()
{
  type metadata accessor for PreviewHost();
  swift_getWitnessTable();
  return ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
}

uint64_t PreviewHost.updateRootView()(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 184);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12[-v4];
  v7 = *(v6 + 280);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  v8 = *(v1 + *(*v1 + 288));
  v13 = v2;
  v14 = v8;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in Attribute.setValue(_:), v12, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v9);
  return (*(v3 + 8))(v5, v2);
}

uint64_t PreviewHost.updateEnvironment()()
{
  _PreviewHost.environment.getter(&v5);
  swift_weakInit();
  swift_weakAssign();
  LOBYTE(v3) = 0;
  outlined init with copy of WeakBox<SceneStorageValues>?(&v2, v4);
  type metadata accessor for PreviewHost<AnyView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>, &type metadata for SceneStorageValuesKey, &protocol witness table for SceneStorageValuesKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v6)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    v0 = v6;
  }

  else
  {

    v0 = 0;
  }

  _s7SwiftUI7WeakBoxVyAA18SceneStorageValuesCGSgWOhTm_0(&v2, type metadata accessor for WeakBox<SceneStorageValues>?);
  v2 = v5;
  v3 = v0;

  GraphHost.setEnvironment(_:)();
}

uint64_t PreviewHost.updateFocusedValues()()
{
  swift_beginAccess();

  ViewGraph.setFocusedValues(_:)();
}

uint64_t PreviewHost.__ivar_destroyer()
{
  v1 = *v0;

  v2 = *(*(*(v1 + 184) - 8) + 8);
  v3 = v0 + *(*v0 + 280);

  return v2(v3);
}

uint64_t *PreviewHost.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 184) - 8) + 8))(v0 + *(*v0 + 280));
  return v0;
}

uint64_t protocol witness for ViewRendererHost.responderNode.getter in conformance PreviewHost<A1>()
{
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.responderNode.getter();
}

double protocol witness for ViewGraphOwner.currentTimestamp.getter in conformance PreviewHost<A>@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 104);
  *a1 = result;
  return result;
}

uint64_t protocol witness for ViewGraphOwner.currentTimestamp.setter in conformance PreviewHost<A>(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 104) = v2;
  return result;
}

uint64_t protocol witness for ViewGraphOwner.valuesNeedingUpdate.setter in conformance PreviewHost<A>(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t protocol witness for ViewGraphOwner.renderingPhase.getter in conformance PreviewHost<A>@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 98);
  return result;
}

uint64_t protocol witness for ViewGraphOwner.renderingPhase.setter in conformance PreviewHost<A>(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 98) = v2;
  return result;
}

uint64_t protocol witness for ViewGraphOwner.externalUpdateCount.setter in conformance PreviewHost<A>(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t protocol witness for ViewGraphDelegate.as<A>(_:) in conformance PreviewHost<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDF960](a1, a3, a2, WitnessTable);
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance PreviewHost<A1>()
{
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

void protocol witness for GraphDelegate.graphDidChange() in conformance PreviewHost<A1>()
{
  swift_getWitnessTable();

  ViewGraphRootValueUpdater.graphDidChange()();
}

uint64_t *PreviewProviderHost.init()()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v1 + 32))(v2, v1, v5);
  v8 = specialized PreviewHost.init(content:)(v7);
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v8;
}

uint64_t PreviewProviderHost.invalidatePreviews()()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(v1 + 32))(v2, v1, v5);
  specialized PreviewHost.content.setter(v7);
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t PreviewHost.__deallocating_deinit()
{
  PreviewHost.deinit();

  return swift_deallocClassInstance();
}

void type metadata accessor for _PreviewHost?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
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

void type metadata accessor for PreviewHost<AnyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for PreviewHost<AnyView>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneStorageValuesKey>, &type metadata for SceneStorageValuesKey, &protocol witness table for SceneStorageValuesKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneStorageValuesKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized PreviewHost.requestUpdate(after:)()
{
  if (*(v0 + 128))
  {
    *(v0 + 129) = 1;
  }

  else
  {

    static Update.enqueueAction(reason:_:)();
  }

  return result;
}

uint64_t partial apply for closure #1 in PreviewHost.requestUpdate(after:)()
{
  v1 = *v0;
  v2 = lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>);

  return MEMORY[0x1EEDB5E18](v1, v2);
}

uint64_t *specialized PreviewHost.init(content:)(uint64_t a1)
{
  v2 = v1;
  v36 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  type metadata accessor for EventBindingManager();
  v1[11] = EventBindingManager.__allocating_init()();
  *(v1 + 48) = 0;
  *(v1 + 98) = 0;
  v1[13] = 0;
  v1[14] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for SceneStorageValues();
  v7 = swift_allocObject();
  v7[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI18SceneStorageValuesC5Entry33_1700ED20D4EA891B02973E899ABDB425LLCTt0g5Tf4g_n(v5);
  v7[6] = 0;
  swift_unknownObjectWeakInit();
  v7[2] = v6;
  v7[4] = *(v6 + 16);
  v2[15] = v7;
  *(v2 + 64) = 0;
  *(v2 + *(*v2 + 296)) = *MEMORY[0x1E698D3F8];
  type metadata accessor for ViewGraph();
  swift_allocObject();
  v2[9] = ViewGraph.init<A>(rootViewType:requestedOutputs:)();
  v8 = swift_retain_n();
  v28 = specialized FocusViewGraph.init(graph:)(v8);
  v29 = v9;
  v30 = v10;
  v31 = v11 & 1;
  v32 = v12 & 1;
  v33 = v13 & 1;
  lazy protocol witness table accessor for type FocusViewGraph and conformance FocusViewGraph();
  ViewGraph.append<A>(feature:)();

  AGGraphSetValue();
  v14 = AGSubgraphGetCurrent();
  swift_beginAccess();
  AGSubgraphSetCurrent();
  v15 = v2[9];
  swift_beginAccess();
  v16 = *(v15 + 32);
  type metadata accessor for _ViewList_Subgraph();
  v17 = swift_allocObject();
  *(v17 + 24) = 1;
  *(v17 + 16) = v16;
  v2[10] = v17;
  v18 = *(v4 + 184);
  (*(*(v18 - 8) + 16))(v2 + *(*v2 + 280), a1, v18);
  v26 = v18;
  v19 = type metadata accessor for Attribute();
  v20 = v16;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in Attribute.init(value:), v25, v18, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v21);
  *(v2 + *(*v2 + 288)) = v28;
  type metadata accessor for PassthroughSubject<(), Never>();
  swift_allocObject();
  v2[2] = PassthroughSubject.init()();
  EnvironmentValues.init()();
  v2[5] = 0;
  *(v2 + 48) = 0;
  *(v2 + 7) = xmmword_18CD76350;
  type metadata accessor for PreviewHost();

  swift_getWitnessTable();
  ViewGraphRootValueUpdater.initializeViewGraph()();
  v22 = v2[9];
  swift_beginAccess();
  v35[0] = *(v22 + 72);
  v35[1] = *(v22 + 88);
  v35[2] = *(v22 + 104);
  v23 = *(v22 + 88);
  v27[0] = *(v22 + 72);
  v27[1] = v23;
  v27[2] = *(v22 + 104);
  outlined init with copy of _GraphInputs(v35, &v28);
  _ViewListInputs.init(_:)();
  if ((v34 & 0x400) == 0)
  {
    v34 |= 0x400uLL;
  }

  _GraphValue.init(_:)();
  static View.makeDebuggableViewList(view:inputs:)();
  *(v2 + *(*v2 + 296)) = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of _ViewListOutputs(v27);
  outlined destroy of _ViewListInputs(&v28);
  AGSubgraphSetCurrent();

  return v2;
}

uint64_t specialized PreviewHost.content.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  swift_beginAccess();
  (*(*(*(v3 + 184) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  return PreviewHost.content.didset();
}

unint64_t lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList()
{
  result = lazy protocol witness table cache variable for type EmptyViewList and conformance EmptyViewList;
  if (!lazy protocol witness table cache variable for type EmptyViewList and conformance EmptyViewList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyViewList and conformance EmptyViewList);
  }

  return result;
}

double ToolbarControlGroupStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t static ToolbarControlGroupStyle.CollapsedViewModifier._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _DWORD *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v27 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v31 = a5;
  v32 = a6;
  v33[0] = v7;
  type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  static View.makeDebuggableViewList(view:inputs:)();
  v8 = _ViewListOutputs.makeAttribute(inputs:)();
  v9 = _ViewListInputs.traits.getter();
  v10 = AGSubgraphGetCurrent();
  if (!v10)
  {
    __break(1u);
  }

  v11 = v10;
  v12 = *MEMORY[0x1E698D3F8];
  v13 = outlined init with copy of _ViewListInputs(a2, v33);
  if (v34)
  {
    v29 = v34;
    LOBYTE(v30) = v35 & 1;
    v34 = 0;
    v35 = 0;
    specialized Set._Variant.insert(_:)(&v28, &type metadata for ControlGroupCollapsedViewKey);
    v14 = v29;
    v15 = v30;

    v34 = v14;
    v35 = v15;
  }

  if ((v9 & 0x100000000) != 0)
  {
    v16 = v12;
  }

  else
  {
    v16 = v9;
  }

  v29 = __PAIR64__(v16, v8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v24 = type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier.AddTrait();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>, MEMORY[0x1E697F890], MEMORY[0x1E698D388]);
  v18 = v17;
  v19 = v11;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_21, &v23, v24, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v20);

  LOBYTE(v29) = 0;
  v21 = _ViewListInputs.traits.setter();
  v27(v21, v33);

  outlined destroy of _ViewListOutputs(v36);
  return outlined destroy of _ViewListInputs(v33);
}

uint64_t closure #1 in static ToolbarControlGroupStyle.CollapsedViewModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t ToolbarControlGroupStyle.CollapsedViewModifier.AddTrait.value.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  TableRow.MakeList.traits.getter(a1, v8);
  if (v8[0])
  {
    v14 = v8[0];
  }

  else
  {
    ViewTraitCollection.init()();
  }

  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v10);
  v6 = a2;
  default argument 2 of _VariadicView_Children.init(_:contentSubgraph:transform:)();
  v11 = v6;
  v12 = v8[0];
  v13 = v8[1];
  if (_VariadicView_Children.endIndex.getter())
  {
    _VariadicView_Children.subscript.getter();
    outlined init with copy of _ViewList_View(v8, v9);
    outlined destroy of _VariadicView_Children.Element(v8);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  outlined init with copy of _ViewList_View?(v9, v8);
  ViewTraitCollection.subscript.setter();
  outlined destroy of _ViewList_View?(v9);
  result = outlined destroy of _VariadicView_Children(v10);
  *a3 = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>>();
    lazy protocol witness table accessor for type Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>>)
  {
    type metadata accessor for Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>();
    type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>, ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>>);
    }
  }
}

void type metadata accessor for Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>()
{
  if (!lazy cache variable for type metadata for Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>)
  {
    v0 = type metadata accessor for Section();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>);
    }
  }
}

void type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>()
{
  if (!lazy cache variable for type metadata for ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>)
  {
    type metadata accessor for Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>();
    lazy protocol witness table accessor for type Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>();
    v0 = type metadata accessor for ToolbarControlGroupStyle.CollapsedViewModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ToolbarControlGroupStyle.CollapsedViewModifier<Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>>);
    }
  }
}

void type metadata accessor for Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for Menu();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>()
{
  result = lazy protocol witness table cache variable for type Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>;
  if (!lazy protocol witness table cache variable for type Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>)
  {
    type metadata accessor for Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Menu<ControlGroupStyleConfiguration.Label, ControlGroupStyleConfiguration.Content> and conformance Menu<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>)
  {
    type metadata accessor for Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, ControlGroupStyleConfiguration.Content, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance ControlGroupCollapsedViewKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of _ViewList_View?(&static ControlGroupCollapsedViewKey.defaultValue, v2);
}

uint64_t outlined init with copy of _ViewList_View?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t assignWithCopy for ToolbarControlGroupStyle.CollapsedViewModifier.AddTrait(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v5 = v3;

  return a1;
}

void *assignWithTake for ToolbarControlGroupStyle.CollapsedViewModifier.AddTrait(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

uint64_t outlined destroy of _ViewList_View?(uint64_t a1)
{
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Gesture<>.callbacks(pressing:pressed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[5] = a7;
  v19[1] = a5;
  v19[2] = a6;
  swift_getAssociatedTypeWitness();
  type metadata accessor for PressableGestureCallbacks();
  v19[3] = swift_getWitnessTable();
  v20 = type metadata accessor for CallbacksGesture();
  v21 = a5;
  WitnessTable = swift_getWitnessTable();
  v23 = a6;
  v13 = type metadata accessor for ModifierGesture();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v20 = a1;
  v21 = a2;
  WitnessTable = partial apply for closure #1 in static UIView.animate(_:changes:completion:);
  v23 = v17;
  outlined copy of AppIntentExecutor?(a1);
  outlined copy of AppIntentExecutor?(a3);
  Gesture.callbacks<A>(_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(partial apply for closure #1 in static UIView.animate(_:changes:completion:));
  swift_getWitnessTable();
  Gesture.cancellable()();
  return (*(v14 + 8))(v16, v13);
}

uint64_t (*PressableGestureCallbacks.dispatch(phase:state:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v60 = a4;
  v61 = a8;
  v58 = a6;
  v59 = a5;
  v62 = a3;
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = type metadata accessor for GesturePhase();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - v20;
  (*(v18 + 16))(&v56 - v20, a1, v17, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = *a2;
      *a2 = 0;
      if (v23 == 1)
      {
        v24 = v62;
        if (v62)
        {
          v25 = swift_allocObject();
          v26 = v60;
          *(v25 + 16) = v24;
          *(v25 + 24) = v26;
          v27 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
        }

        else
        {
          v27 = 0;
        }

        LOBYTE(v63) = 0;
        outlined copy of AppIntentExecutor?(v24);
        v47 = bind<A>(_:_:)();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27);
        return v47;
      }
    }

    else
    {
      v37 = (*(v61 + 24))(a1, a7) & 1;
      if (v37 != *a2)
      {
        *a2 = v37;
        v38 = v62;
        if (v62)
        {
          v39 = swift_allocObject();
          v40 = v60;
          *(v39 + 16) = v38;
          *(v39 + 24) = v40;
          v41 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
        }

        else
        {
          v41 = 0;
        }

        LOBYTE(v63) = v37;
        outlined copy of AppIntentExecutor?(v38);
        v47 = bind<A>(_:_:)();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v41);
        (*(v18 + 8))(v21, v17);
        return v47;
      }

      (*(v18 + 8))(v21, v17);
    }

    return 0;
  }

  v28 = v59;
  v57 = v11;
  v29 = *(v11 + 32);
  v29(v16, v21, a7);
  v30 = *a2;
  *a2 = 0;
  v31 = v62;
  if (v30 == 1 && v62)
  {
    if (v28)
    {
      v29(v13, v16, a7);
      v32 = (*(v57 + 80) + 64) & ~*(v57 + 80);
      v33 = swift_allocObject();
      v35 = v60;
      v34 = v61;
      *(v33 + 2) = a7;
      *(v33 + 3) = v34;
      *(v33 + 4) = v31;
      *(v33 + 5) = v35;
      *(v33 + 6) = v28;
      *(v33 + 7) = v58;
      v29(&v33[v32], v13, a7);
      outlined copy of AppIntentExecutor?(v31);
      outlined copy of AppIntentExecutor?(v28);
      return partial apply for closure #1 in PressableGestureCallbacks.dispatch(phase:state:);
    }

    else
    {
      v53 = *(v57 + 8);
      v54 = v60;

      v53(v16, a7);
      v55 = swift_allocObject();
      *(v55 + 16) = v31;
      *(v55 + 24) = v54;
      return partial apply for closure #1 in OnFocusObserver.lostFocus();
    }
  }

  else
  {
    v42 = v28;
    if (v28)
    {
      v43 = swift_allocObject();
      v45 = v57;
      v44 = v58;
      *(v43 + 16) = v28;
      *(v43 + 24) = v44;
      v46 = partial apply for thunk for @escaping @callee_guaranteed (@unowned CGPoint?) -> ();
    }

    else
    {
      v46 = 0;
      v45 = v57;
    }

    v48 = v61;
    v49 = *(v61 + 16);
    outlined copy of AppIntentExecutor?(v42);
    v63 = v49(a7, v48);
    v64 = v50;
    v65 = v51 & 1;
    type metadata accessor for CGPoint?();
    v52 = bind<A>(_:_:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v46);
    (*(v45 + 8))(v16, a7);
    return v52;
  }
}

uint64_t PressableGestureCallbacks.cancel(state:)(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    v3 = a2;
    v5 = swift_allocObject();
    a2 = v3;
    *(v5 + 16) = v3;
    *(v5 + 24) = a3;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  }

  else
  {
    v6 = 0;
  }

  outlined copy of AppIntentExecutor?(a2);
  v8 = bind<A>(_:_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);
  return v8;
}

unint64_t instantiation function for generic protocol witness table for CGPoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CGPoint and conformance CGPoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CGPoint and conformance CGPoint()
{
  result = lazy protocol witness table cache variable for type CGPoint and conformance CGPoint;
  if (!lazy protocol witness table cache variable for type CGPoint and conformance CGPoint)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGPoint and conformance CGPoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicalButtonEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicalButtonEvent and conformance PhysicalButtonEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicalButtonEvent and conformance PhysicalButtonEvent()
{
  result = lazy protocol witness table cache variable for type PhysicalButtonEvent and conformance PhysicalButtonEvent;
  if (!lazy protocol witness table cache variable for type PhysicalButtonEvent and conformance PhysicalButtonEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicalButtonEvent and conformance PhysicalButtonEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SpatialEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpatialEvent and conformance SpatialEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEvent and conformance SpatialEvent()
{
  result = lazy protocol witness table cache variable for type SpatialEvent and conformance SpatialEvent;
  if (!lazy protocol witness table cache variable for type SpatialEvent and conformance SpatialEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEvent and conformance SpatialEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TappableEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TappableEvent and conformance TappableEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TappableEvent and conformance TappableEvent()
{
  result = lazy protocol witness table cache variable for type TappableEvent and conformance TappableEvent;
  if (!lazy protocol witness table cache variable for type TappableEvent and conformance TappableEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TappableEvent and conformance TappableEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TappableSpatialEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TappableSpatialEvent and conformance TappableSpatialEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TappableSpatialEvent and conformance TappableSpatialEvent()
{
  result = lazy protocol witness table cache variable for type TappableSpatialEvent and conformance TappableSpatialEvent;
  if (!lazy protocol witness table cache variable for type TappableSpatialEvent and conformance TappableSpatialEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TappableSpatialEvent and conformance TappableSpatialEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SpatialLongPressGesture.Value(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for CGPoint?()
{
  if (!lazy cache variable for type metadata for CGPoint?)
  {
    type metadata accessor for CGPoint(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CGPoint?);
    }
  }
}

uint64_t partial apply for closure #1 in PressableGestureCallbacks.dispatch(phase:state:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  (*(v0 + 32))(0);
  v4 = (*(v2 + 16))(v1, v2);
  return v3(v4);
}

uint64_t closure #1 in Gesture<>.callbacks(pressing:pressed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a4)
  {
    return a4();
  }

  return result;
}

uint64_t closure #1 in DoubleColumnNavigationView.body(children:)@<X0>(uint64_t a1@<X8>)
{
  v2 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = _VariadicView_Children.endIndex.getter();
  if (v2 < 0 || result < v2)
  {
    goto LABEL_13;
  }

  if (v2 >= 2)
  {
    result = _VariadicView_Children.endIndex.getter();
    if (result)
    {
      result = _VariadicView_Children.endIndex.getter();
      v4 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        result = _VariadicView_Children.endIndex.getter();
        if ((v4 & 0x8000000000000000) == 0 && v4 < result)
        {
          result = _VariadicView_Children.subscript.getter();
          *(a1 + 64) = v9;
          *(a1 + 80) = v10;
          *(a1 + 96) = v11;
          *a1 = v5;
          *(a1 + 16) = v6;
          *(a1 + 32) = v7;
          *(a1 + 48) = v8;
          *(a1 + 104) = 0;
          return result;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(a1 + 104) = 1;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance DoubleColumnNavigationView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for _VariadicView_ViewRoot.body(children:) in conformance DoubleColumnNavigationView@<X0>(uint64_t a1@<X8>)
{
  result = _VariadicView_Children.endIndex.getter();
  if (result)
  {
    _VariadicView_Children.subscript.getter();
    closure #1 in DoubleColumnNavigationView.body(children:)(a1 + 104);
    result = static Edge.Set.all.getter();
    *(a1 + 216) = -1;
    *(a1 + 224) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id BridgedSplitView.makeCoordinator()(uint64_t a1)
{
  v3 = type metadata accessor for BridgedSplitView.Coordinator();
  type metadata accessor for UIHostingController();
  v4 = specialized UIHostingController.__allocating_init(rootView:)(v1 + *(a1 + 52));
  v5 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];

  v6 = objc_allocWithZone(v3);
  return BridgedSplitView.Coordinator.init(_:)(v5);
}

id BridgedSplitView.makeUIViewController(context:)(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for UIHostingController();
  v3 = specialized UIHostingController.__allocating_init(rootView:)(v1);
  v4 = [objc_allocWithZone(type metadata accessor for UIKitNavigationController()) initWithRootViewController_];
  v5 = specialized UIHostingController.host.getter();
  _UIHostingView.renderForPreferences(updateDisplayList:)(0);

  v6 = [objc_allocWithZone(type metadata accessor for NotificationSendingSplitViewController()) initWithNibName:0 bundle:0];
  [v6 setDelegate_];
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18CDDAC20;
  *(v7 + 32) = v4;
  v8 = *(v2 + direct field offset for BridgedSplitView.Coordinator.placeholderNavController);
  *(v7 + 40) = v8;
  type metadata accessor for UIViewController();
  v9 = v8;
  v10 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setViewControllers_];

  [v6 setPreferredDisplayMode_];
  BridgedSplitView.Coordinator.placeholderHost.getter();
  v13 = v12;
  v14 = [v12 navigationItem];

  v15 = [v6 displayModeButtonItem];
  [v14 setLeftBarButtonItem_];

  return v6;
}

void BridgedSplitView.updateUIViewController(_:context:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = [a1 viewControllers];
  type metadata accessor for UIViewController();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:

    __break(1u);
    goto LABEL_12;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v11 = MEMORY[0x18D00E9C0](0, v10);
    goto LABEL_6;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v10 + 32);
LABEL_6:
  v9 = v11;

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_14:

    __break(1u);
    return;
  }

  v14[0] = v8;
  v14[1] = v7;

  UINavigationController.updateRootHost<A>(root:environment:transaction:)(v4, v14, v6);

  BridgedSplitView.Coordinator.placeholderHost.getter();
  v13 = v12;
  specialized UIHostingController.rootView.setter(v4 + *(a3 + 52));
}

void BridgedSplitView.Coordinator.placeholderHost.getter()
{
  v1 = [*(v0 + direct field offset for BridgedSplitView.Coordinator.placeholderNavController) viewControllers];
  type metadata accessor for UIViewController();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x18D00E9C0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  type metadata accessor for UIHostingController();

  swift_dynamicCastClassUnconditional();
}

id BridgedSplitView.Coordinator.init(_:)(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E7D40] & *v1;
  *(v1 + direct field offset for BridgedSplitView.Coordinator.placeholderNavController) = a1;
  v4 = *(v2 + 80);
  v5 = *(v2 + 96);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BridgedSplitView.Coordinator();
  return objc_msgSendSuper2(&v6, sel_init, v4, v5);
}

id @objc BridgedSplitView.Coordinator.splitViewController(_:separateSecondaryFrom:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = specialized BridgedSplitView.Coordinator.splitViewController(_:separateSecondaryFrom:)();

  return v9;
}

id BridgedSplitView.Coordinator.__deallocating_deinit()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BridgedSplitView.Coordinator();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance BridgedSplitView<A, B>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = BridgedSplitView.makeCoordinator()(a1);
  *a2 = result;
  return result;
}

uint64_t NotificationSendingSplitViewController.showDetailViewController(_:sender:)(void *a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willShowDetailNotification != -1)
  {
    swift_once();
  }

  v6 = static DoubleColumnNavigationViewStyle.willShowDetailNotification;
  type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AnyHashable, Any)>, type metadata accessor for (AnyHashable, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v21[0] = 0xD000000000000017;
  v21[1] = 0x800000018CD3F000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = type metadata accessor for UIViewController();
  *(inited + 72) = a1;
  v8 = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (AnyHashable, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 postNotificationName:v6 object:v2 userInfo:isa];

  outlined init with copy of Any?(a2, v21);
  v10 = v22;
  if (v22)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for NotificationSendingSplitViewController();
  v20.receiver = v2;
  v20.super_class = v17;
  objc_msgSendSuper2(&v20, sel_showDetailViewController_sender_, v8, v16);
  return swift_unknownObjectRelease();
}

id NotificationSendingSplitViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSendingSplitViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, NavigationViewStyleModifier<ColumnNavigationViewStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, NavigationViewStyleModifier<ColumnNavigationViewStyle>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_3(255, &lazy cache variable for type metadata for NavigationView<_NavigationViewStyleConfiguration.Content>, &type metadata for _NavigationViewStyleConfiguration.Content, &protocol witness table for _NavigationViewStyleConfiguration.Content, type metadata accessor for NavigationView);
    type metadata accessor for NavigationViewStyleModifier<ColumnNavigationViewStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, NavigationViewStyleModifier<ColumnNavigationViewStyle>>);
    }
  }
}

void type metadata accessor for NavigationViewStyleModifier<ColumnNavigationViewStyle>()
{
  if (!lazy cache variable for type metadata for NavigationViewStyleModifier<ColumnNavigationViewStyle>)
  {
    lazy protocol witness table accessor for type ColumnNavigationViewStyle and conformance ColumnNavigationViewStyle();
    v0 = type metadata accessor for NavigationViewStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationViewStyleModifier<ColumnNavigationViewStyle>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for DoubleColumnNavigationView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DoubleColumnNavigationView and conformance DoubleColumnNavigationView();
  *(a1 + 8) = result;
  return result;
}

void *specialized BridgedSplitView.Coordinator.splitViewController(_:separateSecondaryFrom:)()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 topViewController];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(v0 + direct field offset for BridgedSplitView.Coordinator.placeholderNavController);
  v6 = v5;
  return v5;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationView<_NavigationViewStyleConfiguration.Content>, NavigationViewStyleModifier<ColumnNavigationViewStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ModifiedContent<BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>, _SafeAreaRegionsIgnoringLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>, _SafeAreaRegionsIgnoringLayout>)
  {
    type metadata accessor for BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>, _SafeAreaRegionsIgnoringLayout>);
    }
  }
}

void type metadata accessor for BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>()
{
  if (!lazy cache variable for type metadata for BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>)
  {
    type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>(255, &lazy cache variable for type metadata for Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>, type metadata accessor for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>, MEMORY[0x1E69815F8]);
    lazy protocol witness table accessor for type Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>> and conformance <A> Group<A>();
    v0 = type metadata accessor for BridgedSplitView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BridgedSplitView<_VariadicView_Children.Element, Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_3(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F378]);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>);
    }
  }
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>> and conformance <A> Group<A>)
  {
    type metadata accessor for _ContiguousArrayStorage<(AnyHashable, Any)>(255, &lazy cache variable for type metadata for Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>>, type metadata accessor for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>, MEMORY[0x1E69815F8]);
    lazy protocol witness table accessor for type _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>>();
    lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_VariadicView_Children.Element, _UnaryViewAdaptor<EmptyView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t Optional<A>.apply<A>(as:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v26 = a7;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 16))(&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v8, a4, v19);
  v22 = swift_dynamicCast();
  (*(*(a5 - 8) + 56))(v17, v22 ^ 1u, 1, a5);
  v28 = *(a4 + 16);
  v29 = a5;
  v30 = a6;
  v31 = v26;
  v32 = a2;
  v33 = a3;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(_sqd__Ign_qd__yts5NeverOIegnrzr_SHRzSHRd__r__lTRTA_0, v27, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v23, &v34);
  return (*(v15 + 8))(v17, v14);
}

uint64_t Set.apply<A>(as:operation:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a2;
  v30 = a3;
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  result = _setDownCastConditional<A, B>(_:)();
  if (!result)
  {
    v15 = static Array._allocateUninitialized(_:)();
    if (MEMORY[0x18D00CDF0](v15, a6))
    {
      v14 = specialized Set.init(_nonEmptyArrayLiteral:)(v15, a6, a8);

      if ((v14 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {

      v14 = MEMORY[0x1E69E7CD0];
      if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v18 = 0;
    v20 = -1 << *(v14 + 32);
    v16 = v14 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v14 + 56);
    goto LABEL_12;
  }

  v14 = result;
  if ((result & 0xC000000000000001) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  __CocoaSet.makeIterator()();
  result = Set.Iterator.init(_cocoa:)();
  v14 = v31;
  v16 = v32;
  v17 = v33;
  v18 = v34;
  v19 = v35;
LABEL_12:
  v28 = v17;
  v23 = (v17 + 64) >> 6;
  while (v14 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_25:
      (*(*(a6 - 8) + 56))(v12, 1, 1, a6);
      return outlined consume of Set<UIPress>.Iterator._Variant();
    }

    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v26 = *(a6 - 8);
LABEL_15:
    (*(v26 + 56))(v12, 0, 1, a6);
    v29(v12);
    result = (*(v26 + 8))(v12, a6);
  }

  if (v19)
  {
    v24 = v18;
LABEL_14:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = *(a6 - 8);
    (*(v26 + 16))(v12, *(v14 + 48) + *(v26 + 72) * (v25 | (v24 << 6)), a6);
    goto LABEL_15;
  }

  v27 = v18;
  while (1)
  {
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
      goto LABEL_25;
    }

    v19 = *(v16 + 8 * v24);
    ++v27;
    if (v19)
    {
      v18 = v24;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t Optional<A>.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29[1] = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29[0] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = v29 - v9;
  v11 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v33 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - v16;
  (*(v6 + 56))(v29 - v16, 1, 1, v5, v15);
  v31 = TupleTypeMetadata2;
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = *(v11 + 16);
  v19(v10, v3, a1);
  v19(&v10[v18], v17, a1);
  v32 = v6;
  v20 = *(v6 + 48);
  if (v20(v10, 1, v5) != 1)
  {
    v19(v33, v10, a1);
    if (v20(&v10[v18], 1, v5) != 1)
    {
      v23 = v32;
      v24 = v29[0];
      (*(v32 + 32))(v29[0], &v10[v18], v5);
      v25 = v33;
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v23 + 8);
      v26(v24, v5);
      v27 = *(v11 + 8);
      v27(v17, a1);
      v26(v25, v5);
      v27(v10, a1);
      return v22 & 1;
    }

    (*(v11 + 8))(v17, a1);
    (*(v32 + 8))(v33, v5);
    goto LABEL_6;
  }

  v21 = *(v11 + 8);
  v21(v17, a1);
  if (v20(&v10[v18], 1, v5) != 1)
  {
LABEL_6:
    (*(v30 + 8))(v10, v31);
    v22 = 0;
    return v22 & 1;
  }

  v21(v10, a1);
  v22 = 1;
  return v22 & 1;
}

uint64_t Optional<A>.contains<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a1;
  v44[1] = a5;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44[0] = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v48 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v44 - v11;
  v50 = *(v9 - 8);
  v13 = v50;
  MEMORY[0x1EEE9AC00](v14);
  v49 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v44 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v44 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v25 + 16))(v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v51, a2, v23);
  v26 = swift_dynamicCast();
  v27 = *(v7 + 56);
  v27(v21, v26 ^ 1u, 1, a3);
  (*(v7 + 16))(v18, v52, a3);
  v27(v18, 0, 1, a3);
  v46 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v51 = v21;
  v52 = v13;
  v29 = *(v13 + 16);
  v30 = v21;
  v31 = v18;
  v32 = v48;
  v29(v12, v30, v48);
  v29(&v12[v28], v31, v32);
  v33 = v7;
  v34 = v12;
  v47 = v33;
  v35 = *(v33 + 48);
  if (v35(v12, 1, a3) != 1)
  {
    v29(v49, v12, v32);
    if (v35(&v12[v28], 1, a3) != 1)
    {
      v38 = v31;
      v39 = v47;
      v40 = v44[0];
      (*(v47 + 32))(v44[0], &v34[v28], a3);
      v41 = v49;
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v39 + 8);
      v42(v40, a3);
      v36 = *(v50 + 8);
      v36(v38, v32);
      v42(v41, a3);
      v36(v34, v32);
      goto LABEL_8;
    }

    v36 = *(v50 + 8);
    v36(v31, v32);
    (*(v47 + 8))(v49, a3);
    goto LABEL_6;
  }

  v36 = *(v50 + 8);
  v36(v31, v32);
  if (v35(&v12[v28], 1, a3) != 1)
  {
LABEL_6:
    (*(v45 + 8))(v12, v46);
    v37 = 0;
    goto LABEL_8;
  }

  v36(v12, v32);
  v37 = 1;
LABEL_8:
  v36(v51, v32);
  return v37 & 1;
}

uint64_t Set.contains<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = _setDownCastConditional<A, B>(_:)();
  if (result)
  {
    v10 = MEMORY[0x18D00D1E0](a1, result, a4, a6);

    return v10 & 1;
  }

  return result;
}

uint64_t specialized AsAnySelection.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  outlined init with copy of _Benchmark(a2, v19);
  type metadata accessor for Selection();
  v12 = swift_dynamicCast();
  (*(*(a3 - 8) + 56))(v11, v12 ^ 1u, 1, a3);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AsAnySelection.set(base:newValue:), v15, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v13, &v20);
  return (*(v9 + 8))(v11, v8);
}

unint64_t type metadata accessor for Selection()
{
  result = lazy cache variable for type metadata for Selection;
  if (!lazy cache variable for type metadata for Selection)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Selection);
  }

  return result;
}

void HelpLink.init(action:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void HelpButton.init(action:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t *initializeBufferWithCopyOfBuffer for HelpLink(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for HelpLink.Payload(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    else
    {
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
    }

    swift_storeEnumTagMultiPayload();
    v10 = *(a3 + 20);
    v11 = a1 + v10;
    v12 = a2 + v10;
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
    v16 = *(v12 + 3);
    v17 = v12[34];
    v18 = *(v12 + 16);
    outlined copy of Environment<OpenURLAction>.Content(*v12, v14, v15, v16, v18, v17);
    *v11 = v13;
    *(v11 + 1) = v14;
    *(v11 + 2) = v15;
    *(v11 + 3) = v16;
    *(v11 + 16) = v18;
    v11[34] = v17;
  }

  return a1;
}

uint64_t destroy for HelpLink(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HelpLink.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for URL();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  else
  {
  }

  v5 = a1 + *(a2 + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 34);
  v11 = *(v5 + 32);

  return outlined consume of Environment<OpenURLAction>.Content(v6, v7, v8, v9, v11, v10);
}

void *initializeWithCopy for HelpLink(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for HelpLink.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;
  }

  swift_storeEnumTagMultiPayload();
  v8 = *(a3 + 20);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = *(v10 + 3);
  v15 = v10[34];
  v16 = *(v10 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v10, v12, v13, v14, v16, v15);
  *v9 = v11;
  *(v9 + 1) = v12;
  *(v9 + 2) = v13;
  *(v9 + 3) = v14;
  *(v9 + 16) = v16;
  v9[34] = v15;
  return a1;
}

void *assignWithCopy for HelpLink(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of HelpLink.Payload(a1);
    type metadata accessor for HelpLink.Payload(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      v7 = a2[1];
      *a1 = *a2;
      a1[1] = v7;
    }

    swift_storeEnumTagMultiPayload();
  }

  v8 = *(a3 + 20);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = *(v10 + 3);
  v15 = v10[34];
  v16 = *(v10 + 16);
  outlined copy of Environment<OpenURLAction>.Content(*v10, v12, v13, v14, v16, v15);
  v17 = *v9;
  v18 = *(v9 + 1);
  v19 = *(v9 + 2);
  v20 = *(v9 + 3);
  v21 = v9[34];
  *v9 = v11;
  *(v9 + 1) = v12;
  *(v9 + 2) = v13;
  *(v9 + 3) = v14;
  v22 = *(v9 + 16);
  *(v9 + 16) = v16;
  v9[34] = v15;
  outlined consume of Environment<OpenURLAction>.Content(v17, v18, v19, v20, v22, v21);
  return a1;
}

uint64_t outlined destroy of HelpLink.Payload(uint64_t a1)
{
  v2 = type metadata accessor for HelpLink.Payload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeWithTake for HelpLink(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for HelpLink.Payload(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  v8 = *(a3 + 20);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *(v10 + 1);
  *v9 = *v10;
  *(v9 + 1) = v11;
  *(v9 + 31) = *(v10 + 31);
  return a1;
}

char *assignWithTake for HelpLink(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of HelpLink.Payload(a1);
    v6 = type metadata accessor for HelpLink.Payload(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v8 = *(a3 + 20);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *(v10 + 16);
  v12 = v10[34];
  v13 = *v9;
  v14 = *(v9 + 1);
  v15 = *(v9 + 2);
  v16 = *(v9 + 3);
  v17 = v9[34];
  v18 = *(v10 + 1);
  *v9 = *v10;
  *(v9 + 1) = v18;
  v19 = *(v9 + 16);
  *(v9 + 16) = v11;
  v9[34] = v12;
  outlined consume of Environment<OpenURLAction>.Content(v13, v14, v15, v16, v19, v17);
  return a1;
}

uint64_t type metadata completion function for HelpLink()
{
  result = type metadata accessor for HelpLink.Payload(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HelpLink and conformance HelpLink()
{
  result = lazy protocol witness table cache variable for type HelpLink and conformance HelpLink;
  if (!lazy protocol witness table cache variable for type HelpLink and conformance HelpLink)
  {
    type metadata accessor for HelpLink(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HelpLink and conformance HelpLink);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for HelpLink.Payload(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    else
    {
      v8 = a2[1];
      *a1 = *a2;
      a1[1] = v8;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for HelpLink.Payload(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = type metadata accessor for URL();
    v3 = *(*(v2 - 8) + 8);

    return v3(a1, v2);
  }

  else
  {
  }
}

void *initializeWithCopy for HelpLink.Payload(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for URL();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for HelpLink.Payload(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of HelpLink.Payload(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for URL();
      (*(*(v4 - 8) + 16))(a1, a2, v4);
    }

    else
    {
      v5 = a2[1];
      *a1 = *a2;
      a1[1] = v5;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for HelpLink.Payload(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for HelpLink.Payload(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of HelpLink.Payload(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for HelpLink.Payload()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = v9 + ((v5 + 16) & ~v5);
  }

  else
  {
    *a1 = *a2;
    v7 = a2[1];
    if (v7)
    {
      v8 = a2[2];
      *(v4 + 8) = v7;
      *(v4 + 16) = v8;
    }

    else
    {
      *(a1 + 8) = *(a2 + 1);
    }

    v10 = a2[7];
    *(v4 + 24) = *(a2 + 12);
    *(v4 + 28) = *(a2 + 28);
    *(v4 + 36) = *(a2 + 36);
    *(v4 + 37) = *(a2 + 37);
    *(v4 + 40) = a2[5];
    *(v4 + 48) = *(a2 + 24);
    if (v10)
    {
      v11 = a2[8];
      *(v4 + 56) = v10;
      *(v4 + 64) = v11;
    }

    else
    {
      *(v4 + 56) = *(a2 + 7);
    }

    *(v4 + 72) = a2[9];
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 88) = *(a2 + 11);
    v12 = a3[7];
    v13 = type metadata accessor for UIButton.Configuration();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
      memcpy((v4 + v12), a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(v4 + v12, a2 + v12, v13);
      (*(v14 + 56))(v4 + v12, 0, 1, v13);
    }

    v16 = a3[8];
    v17 = v4 + v16;
    v18 = a2 + v16;
    v19 = *(v18 + 8);
    if (v19)
    {
      *v17 = *v18;
      *(v17 + 8) = v19;
      *(v17 + 16) = *(v18 + 16);
    }

    else
    {
      *v17 = *v18;
      *(v17 + 16) = *(v18 + 16);
    }

    v20 = a3[9];
    v21 = v4 + v20;
    v22 = a2 + v20;
    v23 = *(v22 + 8);
    if (v23)
    {
      *v21 = *v22;
      *(v21 + 8) = v23;
      *(v21 + 16) = *(v22 + 16);
    }

    else
    {
      *v21 = *v22;
      *(v21 + 16) = *(v22 + 16);
    }
  }

  return v4;
}

uint64_t assignWithCopy for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  v8 = (a2 + 8);
  v7 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v7)
    {
      v9 = *(a2 + 16);
      *(a1 + 8) = v7;
      *(a1 + 16) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 16);
    *(a1 + 8) = v7;
    *(a1 + 16) = v10;

    goto LABEL_8;
  }

  *v6 = *v8;
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v11 = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 28) = v11;
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = *(a2 + 38);
  v12 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v12;
  *(a1 + 49) = *(a2 + 49);
  v13 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v13)
    {
      v14 = *(a2 + 64);
      *(a1 + 56) = v13;
      *(a1 + 64) = v14;

      goto LABEL_15;
    }
  }

  else if (v13)
  {
    v15 = *(a2 + 64);
    *(a1 + 56) = v13;
    *(a1 + 64) = v15;

    goto LABEL_15;
  }

  *(a1 + 56) = *(a2 + 56);
LABEL_15:
  v16 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v16;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v17 = a3[7];
  v18 = type metadata accessor for UIButton.Configuration();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(a1 + v17, 1, v18);
  v22 = v20(a2 + v17, 1, v18);
  if (v21)
  {
    if (!v22)
    {
      (*(v19 + 16))(a1 + v17, a2 + v17, v18);
      (*(v19 + 56))(a1 + v17, 0, 1, v18);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v22)
  {
    (*(v19 + 8))(a1 + v17, v18);
LABEL_20:
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    memcpy((a1 + v17), (a2 + v17), *(*(v23 - 8) + 64));
    goto LABEL_21;
  }

  (*(v19 + 24))(a1 + v17, a2 + v17, v18);
LABEL_21:
  v24 = a3[8];
  v25 = a1 + v24;
  v26 = (a2 + v24);
  v27 = *(a1 + v24 + 8);
  v28 = *(a2 + v24 + 8);
  if (v27)
  {
    if (v28)
    {
      *v25 = *v26;

      *(v25 + 8) = *(v26 + 1);

      *(v25 + 16) = *(v26 + 16);
    }

    else
    {
      _s7SwiftUI7BindingVySbGWOhTm_2(v25, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      v29 = *(v26 + 16);
      *v25 = *v26;
      *(v25 + 16) = v29;
    }
  }

  else if (v28)
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 1);
    *(v25 + 16) = *(v26 + 16);
  }

  else
  {
    v30 = *v26;
    *(v25 + 16) = *(v26 + 16);
    *v25 = v30;
  }

  v31 = a3[9];
  v32 = a1 + v31;
  v33 = (a2 + v31);
  v34 = *(a1 + v31 + 8);
  v35 = *(a2 + v31 + 8);
  if (v34)
  {
    if (v35)
    {
      *v32 = *v33;

      *(v32 + 8) = *(v33 + 1);

      *(v32 + 16) = *(v33 + 16);
    }

    else
    {
      _s7SwiftUI7BindingVySbGWOhTm_2(v32, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      v36 = *(v33 + 16);
      *v32 = *v33;
      *(v32 + 16) = v36;
    }
  }

  else if (v35)
  {
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 1);
    *(v32 + 16) = *(v33 + 16);
  }

  else
  {
    v37 = *v33;
    *(v32 + 16) = *(v33 + 16);
    *v32 = v37;
  }

  return a1;
}

uint64_t initializeWithTake for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 88) = *(a2 + 88);
  v8 = a3[7];
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2 + v8, 1, v9))
  {
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a1 + v8, a2 + v8, v9);
    (*(v10 + 56))(a1 + v8, 0, 1, v9);
  }

  v12 = a3[8];
  v13 = a3[9];
  v14 = a1 + v12;
  v15 = a2 + v12;
  *v14 = *v15;
  *(v14 + 16) = *(v15 + 16);
  v16 = a1 + v13;
  v17 = a2 + v13;
  *v16 = *v17;
  *(v16 + 16) = *(v17 + 16);
  return a1;
}

uint64_t assignWithTake for UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  v8 = (a2 + 8);
  v7 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v7)
    {
      v9 = *(a2 + 16);
      *(a1 + 8) = v7;
      *(a1 + 16) = v9;

      goto LABEL_8;
    }
  }

  else if (v7)
  {
    v10 = *(a2 + 16);
    *(a1 + 8) = v7;
    *(a1 + 16) = v10;
    goto LABEL_8;
  }

  *v6 = *v8;
LABEL_8:
  v11 = *(a2 + 56);
  v12 = *(a1 + 56);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  if (v12)
  {
    if (v11)
    {
      v13 = *(a2 + 64);
      *(a1 + 56) = v11;
      *(a1 + 64) = v13;

      goto LABEL_15;
    }
  }

  else if (v11)
  {
    v14 = *(a2 + 64);
    *(a1 + 56) = v11;
    *(a1 + 64) = v14;
    goto LABEL_15;
  }

  *(a1 + 56) = *(a2 + 56);
LABEL_15:
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v15 = a3[7];
  v16 = type metadata accessor for UIButton.Configuration();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(a1 + v15, 1, v16);
  v20 = v18(a2 + v15, 1, v16);
  if (v19)
  {
    if (!v20)
    {
      (*(v17 + 32))(a1 + v15, a2 + v15, v16);
      (*(v17 + 56))(a1 + v15, 0, 1, v16);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v20)
  {
    (*(v17 + 8))(a1 + v15, v16);
LABEL_20:
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    memcpy((a1 + v15), (a2 + v15), *(*(v21 - 8) + 64));
    goto LABEL_21;
  }

  (*(v17 + 40))(a1 + v15, a2 + v15, v16);
LABEL_21:
  v22 = a3[8];
  v23 = a1 + v22;
  v24 = a2 + v22;
  if (*(a1 + v22 + 8))
  {
    if (*(v24 + 8))
    {
      *v23 = *v24;

      *(v23 + 8) = *(v24 + 8);

      goto LABEL_26;
    }

    _s7SwiftUI7BindingVySbGWOhTm_2(v23, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  }

  *v23 = *v24;
LABEL_26:
  *(v23 + 16) = *(v24 + 16);
  v25 = a3[9];
  v26 = a1 + v25;
  v27 = a2 + v25;
  if (!*(a1 + v25 + 8))
  {
LABEL_30:
    *v26 = *v27;
    goto LABEL_31;
  }

  if (!*(v27 + 8))
  {
    _s7SwiftUI7BindingVySbGWOhTm_2(v26, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    goto LABEL_30;
  }

  *v26 = *v27;

  *(v26 + 8) = *(v27 + 8);

LABEL_31:
  *(v26 + 16) = *(v27 + 16);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for UIKitFlattenedButtonAdaptor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 84))
  {
    v11 = *(v9 + 64);
  }

  else
  {
    v11 = *(v9 + 64) + 1;
  }

  v12 = v10 | 7 | *(v6 + 80);
  if (v12 == 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((((-105 - v10) | v10) - v11 - 31) | 7) - (((v10 | 7) + v7) & ~(v10 | 7)) - 17 >= 0xFFFFFFFFFFFFFFE7)
  {
    v16 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v17 = a1 + v7;
    v18 = a2 + v7;
    v19 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    v21 = *(v20 + 8);
    if (v21)
    {
      v22 = *(v20 + 16);
      *(v19 + 8) = v21;
      *(v19 + 16) = v22;
    }

    else
    {
      *(v19 + 8) = *(v20 + 8);
    }

    v23 = ~v10;
    *(v19 + 24) = *(v20 + 24);
    *(v19 + 25) = *(v20 + 25);
    v24 = *(v20 + 28);
    *(v19 + 36) = *(v20 + 36);
    *(v19 + 28) = v24;
    *(v19 + 37) = *(v20 + 37);
    *(v19 + 38) = *(v20 + 38);
    v25 = *(v20 + 40);
    *(v19 + 48) = *(v20 + 48);
    *(v19 + 40) = v25;
    *(v19 + 49) = *(v20 + 49);
    v26 = *(v20 + 56);
    if (v26)
    {
      v27 = *(v20 + 64);
      *(v19 + 56) = v26;
      *(v19 + 64) = v27;
    }

    else
    {
      *(v19 + 56) = *(v20 + 56);
    }

    v28 = *(v20 + 72);
    *(v19 + 80) = *(v20 + 80);
    *(v19 + 72) = v28;
    v29 = ((v17 + 95) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((v18 + 95) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v30;
    v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v31 + v10 + 8) & v23);
    v34 = ((v32 + v10 + 8) & v23);
    if ((*(v9 + 48))(v34, 1, v16))
    {
      memcpy(v33, v34, v11);
    }

    else
    {
      (*(v9 + 16))(v33, v34, v16);
      (*(v9 + 56))(v33, 0, 1, v16);
    }

    v35 = &v33[v11];
    v36 = &v34[v11];
    v37 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*(v38 + 8) < 0xFFFFFFFFuLL)
    {
      v39 = *v38;
      *(v37 + 16) = *(v38 + 16);
      *v37 = v39;
    }

    else
    {
      *v37 = *v38;
      *(v37 + 8) = *(v38 + 8);
      *(v37 + 16) = *(v38 + 16);
    }

    v40 = (v35 + 31) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v36 + 31) & 0xFFFFFFFFFFFFFFF8;
    if (*(v41 + 8) < 0xFFFFFFFFuLL)
    {
      v42 = *v41;
      *(v40 + 16) = *(v41 + 16);
      *v40 = v42;
      return a1;
    }

    *v40 = *v41;
    *(v40 + 8) = *(v41 + 8);
    *(v40 + 16) = *(v41 + 16);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  return a1;
}

uint64_t assignWithCopy for UIKitFlattenedButtonAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  *v11 = *v12;
  v13 = *(v12 + 8);
  if (*(v11 + 8))
  {
    if (v13)
    {
      v14 = *(((v10 + a2) & ~(v9 | 7)) + 0x10);
      *(((v10 + a1) & ~(v9 | 7)) + 8) = v13;
      *(((v10 + a1) & ~(v9 | 7)) + 0x10) = v14;

      goto LABEL_8;
    }
  }

  else if (v13)
  {
    v15 = *(((v10 + a2) & ~(v9 | 7)) + 0x10);
    *(((v10 + a1) & ~(v9 | 7)) + 8) = v13;
    *(((v10 + a1) & ~(v9 | 7)) + 0x10) = v15;

    goto LABEL_8;
  }

  *(v11 + 8) = *(v12 + 8);
LABEL_8:
  *(v11 + 24) = *(v12 + 24);
  *(v11 + 25) = *(v12 + 25);
  v16 = *(v12 + 28);
  *(v11 + 36) = *(v12 + 36);
  *(v11 + 28) = v16;
  *(v11 + 37) = *(v12 + 37);
  *(v11 + 38) = *(v12 + 38);
  v17 = *(v12 + 40);
  *(v11 + 48) = *(v12 + 48);
  *(v11 + 40) = v17;
  *(v11 + 49) = *(v12 + 49);
  v18 = *(v12 + 56);
  if (*(v11 + 56))
  {
    if (v18)
    {
      v19 = *(v12 + 64);
      *(v11 + 56) = v18;
      *(v11 + 64) = v19;

      goto LABEL_15;
    }
  }

  else if (v18)
  {
    v20 = *(v12 + 64);
    *(v11 + 56) = v18;
    *(v11 + 64) = v20;

    goto LABEL_15;
  }

  *(v11 + 56) = *(v12 + 56);
LABEL_15:
  v21 = *(v12 + 72);
  *(v11 + 80) = *(v12 + 80);
  *(v11 + 72) = v21;
  *(v11 + 88) = *(v12 + 88);
  v22 = ((v11 + 103) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v12 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + v9 + 8) & ~v9);
  v25 = ((v23 + v9 + 8) & ~v9);
  v26 = *(v8 + 48);
  v27 = v26(v24, 1, v7);
  v28 = v26(v25, 1, v7);
  if (v27)
  {
    if (!v28)
    {
      (*(v8 + 16))(v24, v25, v7);
      (*(v8 + 56))(v24, 0, 1, v7);
      goto LABEL_26;
    }

    v29 = *(v8 + 84);
    v30 = *(v8 + 64);
  }

  else
  {
    if (!v28)
    {
      (*(v8 + 24))(v24, v25, v7);
      goto LABEL_26;
    }

    (*(v8 + 8))(v24, v7);
    v29 = *(v8 + 84);
    v30 = *(v8 + 64);
  }

  if (v29)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 + 1;
  }

  memcpy(v24, v25, v31);
LABEL_26:
  if (*(v8 + 84))
  {
    v32 = *(v8 + 64);
  }

  else
  {
    v32 = *(v8 + 64) + 1;
  }

  v33 = &v24[v32];
  v34 = &v25[v32];
  v35 = (v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v36 + 8);
  if (*(v35 + 8) < 0xFFFFFFFFuLL)
  {
    if (v37 >= 0xFFFFFFFF)
    {
      *v35 = *v36;
      *(v35 + 8) = *(v36 + 8);
      *(v35 + 16) = *(v36 + 16);

      goto LABEL_36;
    }
  }

  else
  {
    if (v37 >= 0xFFFFFFFF)
    {
      *v35 = *v36;

      *(v35 + 8) = *(v36 + 8);

      *(v35 + 16) = *(v36 + 16);
      goto LABEL_36;
    }
  }

  v38 = *v36;
  *(v35 + 16) = *(v36 + 16);
  *v35 = v38;
LABEL_36:
  v39 = (v33 + 31) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v34 + 31) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(v40 + 8);
  if (*(v39 + 8) < 0xFFFFFFFFuLL)
  {
    if (v41 >= 0xFFFFFFFF)
    {
      *v39 = *v40;
      *(v39 + 8) = *(v40 + 8);
      *(v39 + 16) = *(v40 + 16);

      return a1;
    }

LABEL_42:
    v42 = *v40;
    *(v39 + 16) = *(v40 + 16);
    *v39 = v42;
    return a1;
  }

  if (v41 < 0xFFFFFFFF)
  {

    goto LABEL_42;
  }

  *v39 = *v40;

  *(v39 + 8) = *(v40 + 8);

  *(v39 + 16) = *(v40 + 16);
  return a1;
}

uint64_t initializeWithTake for UIKitFlattenedButtonAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  v13 = *(v12 + 0x10);
  *v11 = *v12;
  *(v11 + 16) = v13;
  v15 = *(v12 + 0x30);
  v14 = *(v12 + 0x40);
  v16 = *(v12 + 0x20);
  *(v11 + 80) = *(v12 + 0x50);
  *(v11 + 48) = v15;
  *(v11 + 64) = v14;
  *(v11 + 32) = v16;
  *(v11 + 88) = *(v12 + 0x58);
  v17 = ((v11 + 103) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v12 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = ((v17 + v9 + 8) & ~v9);
  v20 = ((v18 + v9 + 8) & ~v9);
  if ((*(v8 + 48))(v20, 1, v7))
  {
    v21 = *(v8 + 84);
    v22 = *(v8 + 64);
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 + 1;
    }

    memcpy(v19, v20, v23);
  }

  else
  {
    (*(v8 + 32))(v19, v20, v7);
    v25 = *(v8 + 56);
    v24 = v8 + 56;
    v25(v19, 0, 1, v7);
    v21 = *(v24 + 28);
    v22 = *(v24 + 8);
  }

  if (v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = &v19[v26];
  v28 = &v20[v26];
  v29 = (v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  *(v29 + 16) = *(v30 + 16);
  *v29 = v31;
  v32 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
  *(v34 + 16) = *(v32 + 16);
  *v34 = v33;
  return a1;
}

uint64_t assignWithTake for UIKitFlattenedButtonAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + v6;
  v11 = (v10 + a1) & ~(v9 | 7);
  v12 = (v10 + a2) & ~(v9 | 7);
  *v11 = *v12;
  v13 = *(v12 + 8);
  if (*(v11 + 8))
  {
    if (v13)
    {
      v14 = *(v12 + 16);
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;

      goto LABEL_8;
    }
  }

  else if (v13)
  {
    v15 = *(v12 + 16);
    *(v11 + 8) = v13;
    *(v11 + 16) = v15;
    goto LABEL_8;
  }

  *(v11 + 8) = *(v12 + 8);
LABEL_8:
  *(v11 + 24) = *(v12 + 24);
  *(v11 + 25) = *(v12 + 25);
  v16 = *(v12 + 28);
  *(v11 + 36) = *(v12 + 36);
  *(v11 + 28) = v16;
  *(v11 + 37) = *(v12 + 37);
  *(v11 + 38) = *(v12 + 38);
  v17 = *(v12 + 40);
  *(v11 + 48) = *(v12 + 48);
  *(v11 + 40) = v17;
  *(v11 + 49) = *(v12 + 49);
  v18 = *(v12 + 56);
  if (*(v11 + 56))
  {
    if (v18)
    {
      v19 = *(v12 + 64);
      *(v11 + 56) = v18;
      *(v11 + 64) = v19;

      goto LABEL_15;
    }
  }

  else if (v18)
  {
    v20 = *(v12 + 64);
    *(v11 + 56) = v18;
    *(v11 + 64) = v20;
    goto LABEL_15;
  }

  *(v11 + 56) = *(v12 + 56);
LABEL_15:
  v21 = *(v12 + 72);
  *(v11 + 80) = *(v12 + 80);
  *(v11 + 72) = v21;
  *(v11 + 88) = *(v12 + 88);
  v22 = ((v11 + 103) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v12 + 103) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + v9 + 8) & ~v9);
  v25 = ((v23 + v9 + 8) & ~v9);
  v26 = *(v8 + 48);
  v27 = v26(v24, 1, v7);
  v28 = v26(v25, 1, v7);
  if (v27)
  {
    if (!v28)
    {
      (*(v8 + 32))(v24, v25, v7);
      (*(v8 + 56))(v24, 0, 1, v7);
      goto LABEL_26;
    }

    v29 = *(v8 + 84);
    v30 = *(v8 + 64);
  }

  else
  {
    if (!v28)
    {
      (*(v8 + 40))(v24, v25, v7);
      goto LABEL_26;
    }

    (*(v8 + 8))(v24, v7);
    v29 = *(v8 + 84);
    v30 = *(v8 + 64);
  }

  if (v29)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 + 1;
  }

  memcpy(v24, v25, v31);
LABEL_26:
  if (*(v8 + 84))
  {
    v32 = *(v8 + 64);
  }

  else
  {
    v32 = *(v8 + 64) + 1;
  }

  v33 = &v24[v32];
  v34 = &v25[v32];
  v35 = &v24[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
  v36 = &v25[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
  if (*(v35 + 8) >= 0xFFFFFFFFuLL)
  {
    if (*(v36 + 8) >= 0xFFFFFFFFuLL)
    {
      *v35 = *v36;

      *(v35 + 8) = *(v36 + 8);

      *(v35 + 16) = *(v36 + 16);
      goto LABEL_34;
    }
  }

  v37 = *v36;
  *(v35 + 16) = *(v36 + 16);
  *v35 = v37;
LABEL_34:
  v38 = (v33 + 31) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v34 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v38 + 8) < 0xFFFFFFFFuLL)
  {
LABEL_38:
    v40 = *v39;
    *(v38 + 16) = *(v39 + 16);
    *v38 = v40;
    return a1;
  }

  if (*(v39 + 8) < 0xFFFFFFFFuLL)
  {

    goto LABEL_38;
  }

  *v38 = *v39;

  *(v38 + 8) = *(v39 + 8);

  *(v38 + 16) = *(v39 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitFlattenedButtonAdaptor(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v9 + 80);
  if (v11)
  {
    v16 = 31;
  }

  else
  {
    v16 = 32;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = (v15 | 7) + *(v6 + 64);
  if (v14 < a2)
  {
    v19 = (v18 & ~v17) + ((v16 + *(*(v8 - 8) + 64) + ((v15 + 104) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v19 <= 3)
    {
      v20 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *&a1[v19];
        if (*&a1[v19])
        {
          goto LABEL_29;
        }
      }

      else
      {
        v23 = *&a1[v19];
        if (v23)
        {
          goto LABEL_29;
        }
      }
    }

    else if (v22)
    {
      v23 = a1[v19];
      if (a1[v19])
      {
LABEL_29:
        v24 = (v23 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v25 = *a1;
        }

        else
        {
          v24 = 0;
          v25 = *a1;
        }

        v29 = v14 + (v25 | v24);
        return (v29 + 1);
      }
    }
  }

  if (v7 >= v13)
  {
    v30 = *(v6 + 48);

    return v30(a1, v7, v5);
  }

  else
  {
    v27 = &a1[v18] & ~v17;
    if (v12 <= 0x7FFFFFFE)
    {
      v28 = *(v27 + 8);
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      v29 = v28 - 1;
      if (v29 < 0)
      {
        v29 = -1;
      }

      return (v29 + 1);
    }

    v31 = (*(v10 + 48))((v15 + ((v27 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15);
    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for UIKitFlattenedButtonAdaptor(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v33 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(type metadata accessor for UIButton.Configuration() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  v15 = *(v11 + 80);
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v15 | 7) + *(v8 + 64);
  if (v13)
  {
    v19 = *(v11 + 64);
  }

  else
  {
    v19 = *(v11 + 64) + 1;
  }

  v20 = ((v15 + 104) & ~v15) + v19;
  v21 = (v18 & ~(v15 | 7)) + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v17 < a3)
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v17 + 255) >> 8) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }
  }

  if (v17 >= a2)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_42;
      }

      *&a1[v21] = 0;
    }

    else if (v10)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    if (!a2)
    {
      return;
    }

LABEL_42:
    if (v9 >= v16)
    {
      v29 = *(v33 + 56);

      v29(a1, a2, v9, v7);
      return;
    }

    v26 = (&a1[v18] & ~(v15 | 7));
    if (v16 >= a2)
    {
      if (v14 <= 0x7FFFFFFE)
      {
        if (a2 > 0x7FFFFFFE)
        {
          *(v26 + 9) = 0;
          *(v26 + 56) = 0u;
          *(v26 + 40) = 0u;
          *(v26 + 24) = 0u;
          *(v26 + 8) = 0u;
          v26[80] = 0;
          *v26 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          *(v26 + 1) = a2;
        }

        return;
      }

      v26 = ((v15 + ((v26 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15);
      if (v14 >= a2)
      {
        v32 = *(v12 + 56);

        v32(v26, (a2 + 1));
        return;
      }

      if (v19 <= 3)
      {
        v30 = ~(-1 << (8 * v19));
      }

      else
      {
        v30 = -1;
      }

      if (!v19)
      {
        return;
      }

      v28 = v30 & (~v14 + a2);
      if (v19 <= 3)
      {
        v31 = v19;
      }

      else
      {
        v31 = 4;
      }

      bzero(v26, v19);
      if (v31 > 2)
      {
        if (v31 == 3)
        {
          *v26 = v28;
          v26[2] = BYTE2(v28);
          return;
        }

LABEL_45:
        *v26 = v28;
        return;
      }

      if (v31 != 1)
      {
        *v26 = v28;
        return;
      }
    }

    else
    {
      v27 = ((v20 + 31) & 0xFFFFFFF8) + 17;
      v28 = ~v16 + a2;
      bzero(v26, v27);
      if (v27 > 3)
      {
        goto LABEL_45;
      }
    }

    *v26 = v28;
    return;
  }

  v24 = ~v17 + a2;
  bzero(a1, (v18 & ~(v15 | 7)) + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v21 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v21 <= 3)
  {
    *a1 = v24;
    if (v10 > 1)
    {
LABEL_30:
      if (v10 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v10 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v10)
  {
    a1[v21] = v25;
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance UIKitFlattenedButtonAdaptor<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

void protocol witness for Rule.value.getter in conformance UIKitFlattenedButtonHostProvider()
{
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    type metadata accessor for HostingUIButton();
    v1 = *AGGraphGetValue();
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
}

uint64_t UIKitFlattenedButtonChildTransform.value.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
  type metadata accessor for CGPoint(0);

  v5 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v5);
  static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace.getter();
  return ViewTransform.appendCoordinateSpace(id:)();
}

uint64_t closure #1 in UpdateUIButton.updateButton(environment:)(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = type metadata accessor for UIKitFlattenedButtonAdaptorStorage();
  if (*(a2 + *(result + 36) + 8))
  {
    result = dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  if (a3)
  {
    return a3(a1 & 1);
  }

  return result;
}

uint64_t closure #2 in UpdateUIButton.updateButton(environment:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIPointerShape?, MEMORY[0x1E69DBEE0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v41 = type metadata accessor for UIPointerEffect();
  v9 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for UIPointerShape();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v42 = a4;
  ToolbarButtonHoverShape.adjustedRect(in:)(a4 & 0x1FF, v17, v18, v19, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  static _GraphInputs.defaultInterfaceIdiom.getter();
  v29 = static Solarium.isEnabled(for:)();
  v30 = 8.0;
  if (v29)
  {
    v43.origin.x = v22;
    v43.origin.y = v24;
    v43.size.width = v26;
    v43.size.height = v28;
    v30 = CGRectGetHeight(v43) * 0.5;
  }

  *v16 = v22;
  *(v16 + 1) = v24;
  *(v16 + 2) = v26;
  *(v16 + 3) = v28;
  *(v16 + 4) = v30;
  (*(v13 + 104))(v16, *MEMORY[0x1E69DBED0], v12);
  v31 = UIPointerEffect.preview.getter();
  v32 = [v31 view];

  v33 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v34 = UIPointerEffect.preview.getter();
  v35 = [v34 target];

  v36 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v32 parameters:v33 target:v35];
  v37 = *(v9 + 104);
  v38 = MEMORY[0x1E69DBF98];
  *v11 = v36;
  if ((v42 & 0x10100) != 0)
  {
    v38 = MEMORY[0x1E69DBF70];
  }

  v37(v11, *v38, v41);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerStyle);
  (*(v13 + 16))(v8, v16, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  v39 = UIPointerStyle.init(effect:shape:)();
  (*(v13 + 8))(v16, v12);
  return v39;
}

uint64_t ButtonDisplayList.contentList.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    result = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v5 = *(Value + 12);
    *(a1 + 8) = *(Value + 8);
    *(a1 + 12) = v5;
  }

  *a1 = result;
  return result;
}

uint64_t ButtonDisplayList.value.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  type metadata accessor for CGPoint(0);
  v18 = *(v1 + 2);
  AGGraphGetValue();
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v9 = Value[1];
  v37 = *Value;
  v38 = v9;
  MEMORY[0x18D00B390]();
  v10 = *(a1 + 16);
  [*AGGraphGetValue() alignmentRectInsets];
  AGGraphGetValue();
  CGRect.outset(by:)();
  v11 = swift_allocObject();
  v12 = *AGGraphGetValue();
  v11[5] = v10;
  v11[6] = swift_getWitnessTable();
  v11[2] = v12;
  v28 = v4;
  v29 = v3;
  v30 = v5;
  v31 = v6;
  v32 = v18;
  v33 = v7;
  v13 = v12;
  ButtonDisplayList.contentList.getter(&v25);
  v14 = v25;
  if (v25)
  {
    v15 = v26;
    v16 = v27;
  }

  else
  {
    DisplayList.init()();
    v14 = v34;
    v15 = v35;
    v16 = v36;
  }

  *&v21 = v11;
  *(&v21 + 1) = 0x300000000;
  *&v22 = v14;
  *(&v22 + 1) = v15 | (v16 << 32) | 0x40000000;
  DisplayList.Version.init(forUpdate:)();
  DisplayList.Item.init(_:frame:identity:version:)();
  LOBYTE(v21) = 0;
  DisplayList.Item.canonicalize(options:)();
  v19[2] = v39;
  v20[0] = v40[0];
  *(v20 + 12) = *(v40 + 12);
  v19[0] = v37;
  v19[1] = v38;
  outlined init with copy of DisplayList.Item(v19, &v21);
  DisplayList.init(_:)();
  v23 = v39;
  v24[0] = v40[0];
  *(v24 + 12) = *(v40 + 12);
  v21 = v37;
  v22 = v38;
  return outlined destroy of DisplayList.Item(&v21);
}

uint64_t protocol witness for Rule.value.getter in conformance ButtonAccessibilityModifier@<X0>(void *a1@<X8>)
{
  type metadata accessor for HostingUIButton();
  v4 = *AGGraphGetValue();
  lazy protocol witness table accessor for type AccessibilityProperties.BridgedElementKey and conformance AccessibilityProperties.BridgedElementKey();
  v2 = v4;
  result = AccessibilityProperties.init<A>(_:_:)();
  *a1 = v2;
  return result;
}

void type metadata accessor for WeakBox<UIView>()
{
  if (!lazy cache variable for type metadata for WeakBox<UIView>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView);
    v0 = type metadata accessor for WeakBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WeakBox<UIView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UIKitFlattenedButtonHostProvider and conformance UIKitFlattenedButtonHostProvider()
{
  result = lazy protocol witness table cache variable for type UIKitFlattenedButtonHostProvider and conformance UIKitFlattenedButtonHostProvider;
  if (!lazy protocol witness table cache variable for type UIKitFlattenedButtonHostProvider and conformance UIKitFlattenedButtonHostProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitFlattenedButtonHostProvider and conformance UIKitFlattenedButtonHostProvider);
  }

  return result;
}

uint64_t specialized static ViewGraph.eventGraphHost.getter()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  v0 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 208);

    ObjectType = swift_getObjectType();
    v3 = type metadata accessor for EventGraphHost();
    (*(v1 + 16))(&v5, v3, v3, ObjectType, v1);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {

    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type UIKitFlattenedButtonChildTransform and conformance UIKitFlattenedButtonChildTransform()
{
  result = lazy protocol witness table cache variable for type UIKitFlattenedButtonChildTransform and conformance UIKitFlattenedButtonChildTransform;
  if (!lazy protocol witness table cache variable for type UIKitFlattenedButtonChildTransform and conformance UIKitFlattenedButtonChildTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitFlattenedButtonChildTransform and conformance UIKitFlattenedButtonChildTransform);
  }

  return result;
}

uint64_t partial apply for closure #1 in UpdateUIButton.updateButton(environment:)(char a1)
{
  v3 = *(type metadata accessor for UIKitFlattenedButtonAdaptorStorage() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in UpdateUIButton.updateButton(environment:)(a1, v1 + v4, v5);
}

uint64_t outlined destroy of UIKitFlattenedButtonAdaptorStorage(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #2 in UpdateUIButton.updateButton(environment:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (v3[18])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v3[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return closure #2 in UpdateUIButton.updateButton(environment:)(a1, a2, a3, v5 | v3[16] | v4);
}

uint64_t outlined init with copy of UIButton.Configuration?(uint64_t a1, uint64_t a2)
{
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for ButtonResponder()
{
}

uint64_t assignWithCopy for ButtonResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for ButtonResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for UpdateUIButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  v4 = *(a1 + 64);
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  v6 = v5;

  v7 = *(a1 + 72);
  v8 = *(a2 + 72);
  *(a1 + 72) = v8;
  v9 = v8;

  return a1;
}

uint64_t initializeWithTake for UpdateUIButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectWeakTakeInit();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for UpdateUIButton(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  v5 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

unint64_t instantiation function for generic protocol witness table for ButtonAccessibilityModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ButtonAccessibilityModifier and conformance ButtonAccessibilityModifier();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for URLDocumentHostingController()
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(319, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *DocumentGroupsIntroRootViewHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  outlined init with copy of DocumentGroupsIntroRootView(a1, v6);
  v4 = specialized UIHostingController.init(rootView:)(v6);
  outlined destroy of DocumentGroupsIntroRootView(a1);
  *(*&v4[direct field offset for UIHostingController.host] + *((*MEMORY[0x1E69E7D40] & **&v4[direct field offset for UIHostingController.host]) + 0x1C0) + 8) = &protocol witness table for DocumentGroupsIntroRootViewHostingController;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t DocumentHostingController.updateRootView(with:rootModifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10 + 16;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13 + 16;
  outlined init with copy of RootModifier(a2, v24);
  v15 = direct field offset for DocumentHostingController.rootModifier;
  swift_beginAccess();
  outlined assign with copy of RootModifier(v24, v2 + v15);
  swift_endAccess();
  DocumentHostingController.scenesDidChange(phaseChanged:)(1);
  outlined destroy of RootModifier(v24);
  v16 = direct field offset for DocumentHostingController.configuration;
  swift_beginAccess();
  outlined assign with copy of IdentifiedDocumentGroupConfiguration(a1, v2 + v16);
  swift_endAccess();
  v17 = direct field offset for URLDocumentHostingController.navigationItemDescription;
  swift_beginAccess();
  outlined init with copy of NavigationItemDescription?(v2 + v17, &v14[*(v6 + 44)]);
  v18 = *(a1 + 64);
  v23 = *(*(v2 + direct field offset for DocumentHostingController.document) + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox);
  outlined init with copy of RootModifier(a2, (v14 + 8));
  *(v14 + 120) = v23;
  *v14 = v18;
  v19 = *(v2 + direct field offset for UIHostingController.host);
  outlined init with copy of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v14, v11);
  outlined init with copy of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v11, v8);
  v20 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x60);
  swift_beginAccess();
  swift_unknownObjectRetain();

  v21 = v19;
  outlined assign with take of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v8, v19 + v20);
  swift_endAccess();
  type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>(0);
  lazy protocol witness table accessor for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>);
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  _s7SwiftUI16CommandOperationVWOhTm_2(v11, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
  return _s7SwiftUI16CommandOperationVWOhTm_2(v14, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
}

uint64_t DocumentBaseModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v25 - v7);
  v26 = v1;
  outlined init with copy of NavigationItemDescription?(v1, &v25 - v7);
  v9 = type metadata accessor for NavigationItemDescription(0);
  v25 = *(*(v9 - 8) + 48);
  if (v25(v8, 1, v9) == 1)
  {
    outlined destroy of NavigationItemDescription?(v8);
LABEL_4:

    v11 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_5;
  }

  v11 = *v8;
  v10 = v8[1];

  _s7SwiftUI16CommandOperationVWOhTm_2(v8, type metadata accessor for NavigationItemDescription);
  if (!v10)
  {
    goto LABEL_4;
  }

LABEL_5:
  v27 = v11;
  v28 = v10;
  lazy protocol witness table accessor for type String and conformance String();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17 & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  *(v19 + 24) = v14;
  *(v19 + 32) = v18;
  *(v19 + 40) = v16;
  *(v19 + 48) = 1;
  *(v19 + 56) = 5;
  *(v19 + 64) = 0;
  *(v19 + 72) = 3;

  v20 = swift_allocObject();
  *(v20 + 16) = 3;
  v21 = v26;
  outlined init with copy of NavigationItemDescription?(v26, v5);
  v22 = v25(v5, 1, v9) != 1;
  outlined destroy of NavigationItemDescription?(v5);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier>, StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier>>();
  result = outlined init with copy of NavigationItemDescription?(v21, a1 + *(v23 + 36));
  *a1 = partial apply for closure #1 in View.navigationTitlePreferenceTransform(adding:);
  *(a1 + 8) = v19;
  *(a1 + 16) = closure #2 in View.navigationTitlePreferenceTransform(adding:);
  *(a1 + 24) = 0;
  *(a1 + 32) = partial apply for closure #1 in View.toolbarTitleDisplayMode(_:);
  *(a1 + 40) = v20;
  *(a1 + 48) = v22;
  *(a1 + 56) = closure #1 in variable initialization expression of DocumentToolbarTransformModifier.toolbarKindTransform;
  *(a1 + 64) = 0;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance DocumentSceneRootBoxModifier@<X0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 112);
  outlined init with copy of RootModifier(v1, (a1 + 1));
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t closure #1 in variable initialization expression of DocumentToolbarTransformModifier.toolbarKindTransform(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarStorage.Entry(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolbarStorage.Entry.Kind(0);
  swift_storeEnumTagMultiPayload();
  v6[*(v3 + 28)] = 2;
  v7 = *(a1 + 48);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1, v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  result = outlined init with take of ToolbarStorage.Entry(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9);
  *(a1 + 48) = v7;
  return result;
}

double static DocumentToolbarTransformModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a3@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = v5;
  v7 = *(a1 + 48);
  v29 = *(a1 + 64);
  v8 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v8;
  v22 = v27;
  v23 = v7;
  v24 = *(a1 + 64);
  v30 = *(a1 + 80);
  v25 = *(a1 + 80);
  v20 = v26[0];
  v21 = v6;
  outlined init with copy of _ViewInputs(v26, v33);
  PreferenceKeys.add(_:)();
  v31[2] = v22;
  v31[3] = v23;
  v31[4] = v24;
  v32 = v25;
  v31[0] = v20;
  v31[1] = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v12 = v20;
  v13 = v21;
  v9 = outlined init with copy of _ViewInputs(v31, v33);
  a2(&v18, v9, &v12);
  v33[2] = v14;
  v33[3] = v15;
  v33[4] = v16;
  v34 = v17;
  v33[0] = v12;
  v33[1] = v13;
  outlined destroy of _ViewInputs(v33);
  AGGraphCreateOffsetAttribute2();
  if (*AGGraphGetValue() == 1)
  {
    *&v12 = v28;
    DWORD2(v12) = DWORD2(v28);
    MEMORY[0x1EEE9AC00](v28);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_4>, MEMORY[0x1E697E528], MEMORY[0x1E697E520], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6_4> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {

    v10 = PreferencesOutputs.subscript.getter();

    if ((v10 & 0x100000000) == 0)
    {
      MEMORY[0x1EEE9AC00](v23);

      PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    }
  }

  v14 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v12 = v20;
  v13 = v21;
  outlined destroy of _ViewInputs(&v12);
  *a3 = v18;
  result = v19;
  a3[1] = v19;
  return result;
}

uint64_t implicit closure #1 in static DocumentToolbarTransformModifier._makeView(modifier:inputs:body:)()
{
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  type metadata accessor for Map<DocumentToolbarTransformModifier, (_:)>();
  lazy protocol witness table accessor for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>, type metadata accessor for Map<DocumentToolbarTransformModifier, (_:)>);

  v0 = Attribute.init<A>(body:value:flags:update:)();

  return v0;
}

uint64_t implicit closure #2 in static DocumentToolbarTransformModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type DocumentToolbarTransformModifier.HideNestedNavigationBar and conformance DocumentToolbarTransformModifier.HideNestedNavigationBar();
  return Attribute.init<A>(body:value:flags:update:)();
}

_BYTE *closure #1 in DocumentToolbarTransformModifier.HideNestedNavigationBar.value.getter(void *a1)
{
  result = AGGraphGetValue();
  if (*result == 1)
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    v3 = *a1;
    v28 = a1;
    if (*(*a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v45), (v5 & 1) != 0))
    {
      v6 = (*(v3 + 56) + 80 * v4);
      v55 = *v6;
      v8 = v6[2];
      v7 = v6[3];
      v9 = *(v6 + 57);
      v56 = v6[1];
      v57 = v8;
      *&v58[9] = v9;
      *v58 = v7;
      outlined init with copy of ToolbarAppearanceConfiguration(&v55, v31);
      outlined destroy of ToolbarPlacement.Role(v45);
      v10 = v55;
      v53 = *(&v55 + 2);
      v54 = WORD3(v55);
      v12 = *(&v55 + 1);
      v11 = v56;
      v13 = BYTE8(v56);
      v52[0] = *(&v56 + 9);
      *(v52 + 3) = HIDWORD(v56);
      v14 = v57;
      v15 = BYTE8(v57);
      v50[0] = *(&v57 + 9);
      *(v50 + 3) = HIDWORD(v57);
      v16 = *v58;
      v17 = v58[8];
      v18 = v58[9];
      v19 = v58[10];
      v48 = v58[15];
      v47 = *&v58[11];
      v20 = *&v58[16];
      v21 = v58[24];
    }

    else
    {
      outlined destroy of ToolbarPlacement.Role(v45);
      v21 = 0;
      v20 = 0;
      v19 = 0;
      v16 = 0;
      v14 = 0;
      v13 = 0;
      v11 = 0;
      v12 = 0;
      v17 = 1;
      v51 = 1;
      v49 = 1;
      v18 = 2;
      v15 = 1;
      v10 = 1;
    }

    v24 = v17;
    v25 = v20;
    v26 = v21;
    v27 = v14;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    LOBYTE(v55) = v10;
    BYTE1(v55) = 2;
    *(&v55 + 2) = v53;
    WORD3(v55) = v54;
    *(&v55 + 1) = v12;
    *&v56 = v11;
    BYTE8(v56) = v13;
    *(&v56 + 9) = v52[0];
    HIDWORD(v56) = *(v52 + 3);
    *&v57 = v14;
    BYTE8(v57) = v15;
    HIDWORD(v57) = *(v50 + 3);
    *(&v57 + 9) = v50[0];
    *v58 = v16;
    v58[8] = v17;
    v58[9] = v18;
    v58[10] = v19;
    v58[15] = v48;
    *&v58[11] = v47;
    *&v58[16] = v20;
    v58[24] = v21;
    v22 = v15;
    outlined init with copy of ToolbarAppearanceConfiguration(&v55, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *v28;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v55, v29, isUniquelyReferenced_nonNull_native);
    outlined destroy of ToolbarPlacement.Role(v29);
    *v28 = v31[0];
    LOBYTE(v31[0]) = v10;
    BYTE1(v31[0]) = 2;
    *(v31 + 2) = v53;
    HIWORD(v31[0]) = v54;
    v31[1] = v12;
    v31[2] = v11;
    v32 = v13;
    *v33 = v52[0];
    *&v33[3] = *(v52 + 3);
    v34 = v27;
    v35 = v22;
    *&v36[3] = *(v50 + 3);
    *v36 = v50[0];
    v37 = v16;
    v38 = v24;
    v39 = v18;
    v40 = v19;
    v42 = v48;
    v41 = v47;
    v43 = v25;
    v44 = v26;
    return outlined destroy of ToolbarAppearanceConfiguration(v31);
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance DocumentToolbarTransformModifier.HideNestedNavigationBar@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in DocumentToolbarTransformModifier.HideNestedNavigationBar.value.getter;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

uint64_t URLDocumentHostingController.navigationItemDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for URLDocumentHostingController.navigationItemDescription;
  swift_beginAccess();
  return outlined init with copy of NavigationItemDescription?(v1 + v3, a1);
}

uint64_t URLDocumentHostingController.navigationItemDescription.setter(uint64_t a1)
{
  v3 = direct field offset for URLDocumentHostingController.navigationItemDescription;
  swift_beginAccess();
  outlined assign with take of NavigationItemDescription?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t URLDocumentHostingController.presentationMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + direct field offset for URLDocumentHostingController.presentationMode + 8);
  v3 = *(v1 + direct field offset for URLDocumentHostingController.presentationMode + 16);
  *a1 = *(v1 + direct field offset for URLDocumentHostingController.presentationMode);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id @objc URLDocumentHostingController.undoManager.getter()
{
  v0 = specialized URLDocumentHostingController.undoManager.getter();

  return v0;
}

uint64_t static URLDocumentHostingController.makeRootView(navigationItemDescription:_:)(uint64_t a1, void (*a2)(double))
{
  v5 = type metadata accessor for DocumentBaseModifier(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 1000);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v11);
  outlined init with copy of NavigationItemDescription?(a1, v7);
  MEMORY[0x18D00A570](v7, v8, v5, *(v2 + 1008));
  _s7SwiftUI16CommandOperationVWOhTm_2(v7, type metadata accessor for DocumentBaseModifier);
  return (*(v9 + 8))(v13, v8);
}

id @objc URLDocumentHostingController.navigationItem.getter(void *a1)
{
  v1 = a1;
  v2 = URLDocumentHostingController.navigationItem.getter();

  return v2;
}

id URLDocumentHostingController.navigationItem.getter()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationItem];

    if (v3)
    {
      return v3;
    }
  }

  v5 = objc_allocWithZone(MEMORY[0x1E69DCCE0]);

  return [v5 init];
}

uint64_t URLDocumentHostingController.update(_:)(uint64_t a1)
{
  UIHostingController.update(_:)(a1);

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

Swift::Void __swiftcall URLDocumentHostingController.scenesDidChange(phaseChanged:)(Swift::Bool phaseChanged)
{
  swift_getObjectType();
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  type metadata accessor for DocumentBaseModifier(255);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  MEMORY[0x18D00ABE0](v7);
  v10 = direct field offset for URLDocumentHostingController.navigationItemDescription;
  swift_beginAccess();
  outlined init with copy of NavigationItemDescription?(v1 + v10, v4);
  v11 = *(v1 + direct field offset for URLDocumentHostingController.content);

  static URLDocumentHostingController.makeRootView(navigationItemDescription:_:)(v4, v11);
  outlined destroy of NavigationItemDescription?(v4);

  specialized UIHostingController.rootView.setter(v9);
  (*(v6 + 8))(v9, v5);
  static Update.end()();
}

void URLDocumentHostingController.__ivar_destroyer()
{
  outlined destroy of NavigationItemDescription?(v0 + direct field offset for URLDocumentHostingController.navigationItemDescription);

  v1 = *(v0 + direct field offset for URLDocumentHostingController._undoManager);
}

id URLDocumentHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLDocumentHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc URLDocumentHostingController.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of NavigationItemDescription?(a1 + direct field offset for URLDocumentHostingController.navigationItemDescription);

  v2 = *(a1 + direct field offset for URLDocumentHostingController._undoManager);
}

uint64_t protocol witness for UIHostingViewDelegate.hostingView<A>(_:willUpdate:) in conformance URLDocumentHostingController<A>(uint64_t a1, void *a2)
{
  a2[1] = *a2 & 0x95;
  v3 = a2[2];

  a2[3] = v3;
  return result;
}

Swift::Void __swiftcall DocumentHostingController.scenesDidChange(phaseChanged:)(Swift::Bool phaseChanged)
{
  v2 = v1;
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  MEMORY[0x18D00ABE0](v11);
  v14 = static AppGraph.shared;
  if (static AppGraph.shared)
  {

    v32 = v14;
    AppGraph.sceneList(namespace:)(0, 0, 2, v36);
    v33 = *&v36[0];
    v34 = *(v36 + 8);
    v15 = v2 + direct field offset for DocumentHostingController.configuration;
    swift_beginAccess();
    v17 = *(v15 + 104);
    v16 = *(v15 + 112);
    v18 = *(v15 + 120);
    outlined copy of SceneID(v17, v16, v18);
    SceneList.item(id:where:)(v17, v16, v18, 0, v38);
    outlined consume of SceneID(v17, v16, v18);

    if (*&v38[544])
    {
      memcpy(v39, v38, 0x231uLL);
      if (!phaseChanged && v39[20] == *(v2 + direct field offset for DocumentHostingController.lastVersion))
      {
        outlined destroy of SceneList.Item(v39);

LABEL_8:
        static Update.end()();
        return;
      }

      outlined init with copy of SceneList.Item.Value(v39, v38);
      if (v38[128] == 2)
      {
        v36[4] = *&v38[64];
        v36[5] = *&v38[80];
        v37[0] = *&v38[96];
        *(v37 + 9) = *&v38[105];
        v36[0] = *v38;
        v36[1] = *&v38[16];
        v36[2] = *&v38[32];
        v36[3] = *&v38[48];
        outlined init with copy of DocumentGroupConfiguration(v36, &v33);
        outlined destroy of IdentifiedDocumentGroupConfiguration(v36);
        v19 = v35;

        outlined destroy of DocumentGroupConfiguration(&v33);
        v20 = direct field offset for DocumentHostingController.rootModifier;
        swift_beginAccess();
        outlined init with copy of RootModifier(v2 + v20, (v13 + 8));
        v21 = direct field offset for URLDocumentHostingController.navigationItemDescription;
        swift_beginAccess();
        outlined init with copy of NavigationItemDescription?(v2 + v21, &v13[*(v5 + 36)]);
        v30 = *(*(v2 + direct field offset for DocumentHostingController.document) + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox);
        *(v13 + 120) = v30;
        *v13 = v19;
        v22 = direct field offset for UIHostingController.host;
        v23 = *(v2 + direct field offset for UIHostingController.host);
        outlined init with copy of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v13, v9);
        v24 = v31;
        outlined init with copy of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v9, v31);
        v25 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x60);
        swift_beginAccess();

        swift_unknownObjectRetain();
        v26 = v23;
        outlined assign with take of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(v24, v23 + v25);
        swift_endAccess();
        type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>(0);
        lazy protocol witness table accessor for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>>);
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

        _s7SwiftUI16CommandOperationVWOhTm_2(v9, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
        _s7SwiftUI16CommandOperationVWOhTm_2(v13, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>);
        v27 = *(v2 + v22);
        v33 = v39[21];
        *&v34 = v39[22];

        v28 = v27;

        UIHostingViewBase.inheritedEnvironment.setter();

        v29 = v39[20];
        outlined destroy of SceneList.Item(v39);
        *(v2 + direct field offset for DocumentHostingController.lastVersion) = v29;
        goto LABEL_8;
      }
    }

    else
    {

      _s7SwiftUI16CommandOperationVWOhTm_2(v38, type metadata accessor for SceneList.Item?);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t closure #1 in DocumentHostingController.init(document:configuration:rootModifier:navigationItemDescription:presentationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 64);
  outlined init with copy of RootModifier(a2, a4 + 8);
  *(a4 + 120) = *(a3 + OBJC_IVAR____TtC7SwiftUI16PlatformDocument_documentBox);
  *a4 = v6;
  swift_unknownObjectRetain();
}

void @objc DocumentHostingController.init(coder:)(uint64_t a1)
{
  *(a1 + direct field offset for DocumentHostingController.lastVersion) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id @objc DocumentHostingController.navigationItem.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 parentViewController];
  if (!v2 || (v3 = v2, v4 = [v2 navigationItem], v3, !v4))
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  }

  return v4;
}

uint64_t DocumentHostingController.__ivar_destroyer()
{
  outlined destroy of IdentifiedDocumentGroupConfiguration(v0 + direct field offset for DocumentHostingController.configuration);
  v1 = v0 + direct field offset for DocumentHostingController.rootModifier;

  return outlined destroy of RootModifier(v1);
}

uint64_t @objc DocumentHostingController.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of IdentifiedDocumentGroupConfiguration(a1 + direct field offset for DocumentHostingController.configuration);
  v2 = a1 + direct field offset for DocumentHostingController.rootModifier;

  return outlined destroy of RootModifier(v2);
}

id @objc DocumentGroupsIntroRootViewHostingController.navigationItem.getter(void *a1)
{
  v1 = a1;
  v2 = DocumentGroupsIntroRootViewHostingController.navigationItem.getter();

  return v2;
}

id DocumentGroupsIntroRootViewHostingController.navigationItem.getter()
{
  v1 = [v0 childViewControllers];
  type metadata accessor for UIViewController();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18D00E9C0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v6 = [v5 navigationItem];

  if (v6)
  {
    return v6;
  }

LABEL_10:
  v7 = objc_allocWithZone(MEMORY[0x1E69DCCE0]);

  return [v7 init];
}

id DocumentGroupsIntroRootViewHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentGroupsIntroRootViewHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t destroy for DocumentSceneRootBoxModifier(uint64_t a1)
{
  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }

  v2 = *(a1 + 88);
  if (v2 != 255)
  {
    outlined consume of SceneID(*(a1 + 72), *(a1 + 80), v2 & 1);
  }

  return swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for DocumentSceneRootBoxModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyInit();
  swift_weakCopyInit();
  swift_weakCopyInit();
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 88);
  if (v6 == 255)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v7 = *(a2 + 72);
    v8 = *(a2 + 80);
    v9 = v6 & 1;
    outlined copy of SceneID(v7, v8, v6 & 1);
    *(a1 + 72) = v7;
    *(a1 + 80) = v8;
    *(a1 + 88) = v9;
  }

  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  *(a1 + 112) = *(a2 + 112);
  v12 = v10;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for DocumentSceneRootBoxModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  v4 = *(a2 + 48);
  if (*(a1 + 48))
  {
    v5 = (a1 + 24);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 24));
    }

    else
    {
      outlined destroy of AnyHashable(v5);
      v6 = *(a2 + 56);
      v7 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v7;
      *(a1 + 56) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 48) = v4;
    *(a1 + 56) = *(a2 + 56);
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v9;
    *(a1 + 24) = v8;
  }

  *(a1 + 64) = *(a2 + 64);
  v10 = *(a2 + 88);
  if (*(a1 + 88) == 255)
  {
    if (v10 == 255)
    {
      v21 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v21;
    }

    else
    {
      v17 = *(a2 + 72);
      v18 = *(a2 + 80);
      v19 = v10 & 1;
      outlined copy of SceneID(v17, v18, v10 & 1);
      *(a1 + 72) = v17;
      *(a1 + 80) = v18;
      *(a1 + 88) = v19;
    }
  }

  else if (v10 == 255)
  {
    outlined destroy of SceneID(a1 + 72);
    v20 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v20;
  }

  else
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v13 = v10 & 1;
    outlined copy of SceneID(v11, v12, v10 & 1);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
    outlined consume of SceneID(v14, v15, v16);
  }

  v22 = *(a1 + 96);
  v23 = *(a2 + 96);
  *(a1 + 96) = v23;
  v24 = v23;

  *(a1 + 104) = *(a2 + 104);
  v25 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 120) = v25;
  return a1;
}

uint64_t initializeWithTake for DocumentSceneRootBoxModifier(uint64_t a1, uint64_t a2)
{
  swift_weakTakeInit();
  swift_weakTakeInit();
  swift_weakTakeInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  return a1;
}

uint64_t assignWithTake for DocumentSceneRootBoxModifier(uint64_t a1, uint64_t a2)
{
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  if (*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 24);
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 24);
    }
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 88);
  if (v4 == 255)
  {
    goto LABEL_9;
  }

  v5 = *(a2 + 88);
  if (v5 == 255)
  {
    outlined destroy of SceneID(a1 + 72);
LABEL_9:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_10;
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v5 & 1;
  outlined consume of SceneID(v6, v7, v4 & 1);
LABEL_10:
  v8 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  v9 = *(a2 + 104);
  v10 = *(a2 + 112);
  v11 = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a1 + 112) = v10;
  swift_unknownObjectRelease();
  *(a1 + 120) = v11;
  return a1;
}

uint64_t getEnumTagSinglePayload for DocumentSceneRootBoxModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DocumentSceneRootBoxModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DocumentBaseModifier(void *a1, char *a2)
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  v7 = type metadata accessor for NavigationItemDescription(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v12;
    v13 = *(a2 + 5);

    if (v13)
    {
      v14 = *(a2 + 2);
      v15 = *(a2 + 3);
      v16 = a2[32];
      outlined copy of Text.Storage(v14, v15, v16);
      a1[2] = v14;
      a1[3] = v15;
      *(a1 + 32) = v16;
      a1[5] = *(a2 + 5);
    }

    else
    {
      v17 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v17;
    }

    v18 = *(a2 + 6);
    if (v18 != 1)
    {
    }

    a1[6] = v18;
    *(a1 + 56) = a2[56];
    a1[8] = *(a2 + 8);
    *(a1 + 72) = a2[72];
    v19 = *(v7 + 24);
    v20 = a1 + v19;
    v21 = &a2[v19];
    v22 = a2[v19 + 8];

    if (v22 == 255)
    {
      *v20 = *v21;
      v20[8] = v21[8];
    }

    else
    {
      v23 = *v21;
      v24 = v22 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v21, v24);
      *v20 = v23;
      v20[8] = v24;
    }

    v25 = v21[24];
    v140 = a2;
    if (v25 == 254 || v25 == 255)
    {
      *(v20 + 2) = *(v21 + 2);
      v20[24] = v21[24];
    }

    else
    {
      v26 = *(v21 + 2);
      v27 = v25 & 1;
      outlined copy of PlatformItemCollection.Storage(v26, v25 & 1);
      *(v20 + 2) = v26;
      v20[24] = v27;
    }

    swift_unknownObjectWeakCopyInit();
    v28 = *(v21 + 6);
    *(v20 + 5) = *(v21 + 5);
    *(v20 + 6) = v28;
    v29 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v30 = &v20[v29];
    v31 = &v21[v29];
    v32 = type metadata accessor for PlatformItemList.Item();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    v35 = v28;
    if (v34(v31, 1, v32))
    {
      _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v30, v31, *(*(v36 - 8) + 64));
LABEL_79:
      *(a1 + *(v7 + 28)) = *&v140[*(v7 + 28)];
      (*(v8 + 56))(a1, 0, 1, v7);
      return a1;
    }

    v134 = v33;
    v135 = v8;
    v136 = v7;
    v37 = *v31;
    v38 = *(v31 + 1);
    *v30 = *v31;
    *(v30 + 1) = v38;
    v39 = *(v31 + 3);
    *(v30 + 2) = *(v31 + 2);
    *(v30 + 3) = v39;
    v30[32] = v31[32];
    v40 = *(v31 + 6);
    *(v30 + 5) = *(v31 + 5);
    *(v30 + 6) = v40;
    v30[56] = v31[56];
    v41 = *(v31 + 24);
    v42 = v37;
    v43 = v38;

    v139 = v32;
    if (v41 >> 1 == 4294967294)
    {
      v44 = *(v31 + 13);
      *(v30 + 12) = *(v31 + 12);
      *(v30 + 13) = v44;
      *(v30 + 14) = *(v31 + 14);
      *(v30 + 235) = *(v31 + 235);
      v45 = *(v31 + 9);
      *(v30 + 8) = *(v31 + 8);
      *(v30 + 9) = v45;
      v46 = *(v31 + 11);
      *(v30 + 10) = *(v31 + 10);
      *(v30 + 11) = v46;
      v47 = *(v31 + 5);
      *(v30 + 4) = *(v31 + 4);
      *(v30 + 5) = v47;
      v48 = *(v31 + 7);
      *(v30 + 6) = *(v31 + 6);
      *(v30 + 7) = v48;
      v49 = *(v31 + 33);
      if (v49)
      {
LABEL_23:
        *(v30 + 32) = *(v31 + 32);
        *(v30 + 33) = v49;
        v50 = *(v31 + 34);

        if (v50 >= 2)
        {
          v51 = v50;
        }

        *(v30 + 34) = v50;
        *(v30 + 70) = *(v31 + 70);
        v30[284] = v31[284];
        *(v30 + 285) = *(v31 + 285);
        v52 = *(v31 + 37);
        *(v30 + 36) = *(v31 + 36);
        *(v30 + 37) = v52;

LABEL_34:
        v63 = *(v31 + 42);
        if (v63 >> 2 == 0xFFFFFFFF)
        {
          v64 = *(v31 + 24);
          *(v30 + 23) = *(v31 + 23);
          *(v30 + 24) = v64;
          *(v30 + 50) = *(v31 + 50);
          v65 = *(v31 + 20);
          *(v30 + 19) = *(v31 + 19);
          *(v30 + 20) = v65;
          v66 = *(v31 + 22);
          *(v30 + 21) = *(v31 + 21);
          *(v30 + 22) = v66;
        }

        else
        {
          v67 = *(v31 + 38);
          v68 = *(v31 + 39);
          v69 = *(v31 + 41);
          v71 = *(v31 + 43);
          v70 = *(v31 + 44);
          v72 = *(v31 + 45);
          v124 = *(v31 + 40);
          v125 = *(v31 + 46);
          v127 = *(v31 + 47);
          v129 = *(v31 + 48);
          __dsta = *(v31 + 49);
          v137 = *(v31 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v67, v68, v124, v69, v63, v71, v70, v72, v125, v127, v129, __dsta, v137);
          *(v30 + 38) = v67;
          *(v30 + 39) = v68;
          *(v30 + 40) = v124;
          *(v30 + 41) = v69;
          *(v30 + 42) = v63;
          *(v30 + 43) = v71;
          *(v30 + 44) = v70;
          *(v30 + 45) = v72;
          *(v30 + 46) = v125;
          *(v30 + 47) = v127;
          *(v30 + 48) = v129;
          *(v30 + 49) = __dsta;
          *(v30 + 50) = v137;
        }

        v73 = *(v31 + 52);
        if (v73 == 1)
        {
          v74 = *(v31 + 456);
          *(v30 + 440) = *(v31 + 440);
          *(v30 + 456) = v74;
          v30[472] = v31[472];
          v75 = *(v31 + 424);
          *(v30 + 408) = *(v31 + 408);
          *(v30 + 424) = v75;
        }

        else
        {
          *(v30 + 102) = *(v31 + 102);
          v30[412] = v31[412];
          if (v73)
          {
            v76 = *(v31 + 53);
            *(v30 + 52) = v73;
            *(v30 + 53) = v76;
          }

          else
          {
            *(v30 + 26) = *(v31 + 26);
          }

          v77 = *(v31 + 54);
          if (v77)
          {
            v78 = *(v31 + 55);
            *(v30 + 54) = v77;
            *(v30 + 55) = v78;
          }

          else
          {
            *(v30 + 27) = *(v31 + 27);
          }

          v79 = *(v31 + 56);
          if (v79)
          {
            v80 = *(v31 + 57);
            *(v30 + 56) = v79;
            *(v30 + 57) = v80;
          }

          else
          {
            *(v30 + 28) = *(v31 + 28);
          }

          *(v30 + 58) = *(v31 + 58);
          v30[472] = v31[472];
        }

        v81 = *(v31 + 61);
        *(v30 + 60) = *(v31 + 60);
        *(v30 + 61) = v81;
        *(v30 + 62) = *(v31 + 62);
        v30[504] = v31[504];
        v82 = *(v31 + 64);

        if (v82)
        {
          v83 = *(v31 + 65);
          *(v30 + 64) = v82;
          *(v30 + 65) = v83;
        }

        else
        {
          *(v30 + 32) = *(v31 + 32);
        }

        v30[528] = v31[528];
        if (!*(v31 + 102))
        {
          memcpy(v30 + 536, v31 + 536, 0x130uLL);
          goto LABEL_64;
        }

        *(v30 + 67) = *(v31 + 67);
        *(v30 + 68) = *(v31 + 68);
        v30[552] = v31[552];
        *(v30 + 70) = *(v31 + 70);
        v30[568] = v31[568];
        *(v30 + 36) = *(v31 + 36);
        v30[592] = v31[592];
        v84 = v30 + 600;
        v85 = v31 + 600;
        v86 = *(v31 + 78);

        if (v86)
        {
          if (v86 == 1)
          {
            v87 = *(v31 + 616);
            *v84 = *v85;
            *(v30 + 616) = v87;
            *(v30 + 632) = *(v31 + 632);
LABEL_60:
            *(v30 + 81) = *(v31 + 81);
            v30[656] = v31[656];
            v89 = v30 + 664;
            v90 = v31 + 664;
            v91 = *(v31 + 97);
            if (v91 == 1)
            {
              v92 = *(v31 + 776);
              *(v30 + 760) = *(v31 + 760);
              *(v30 + 776) = v92;
              *(v30 + 792) = *(v31 + 792);
              v30[808] = v31[808];
              v93 = *(v31 + 712);
              *(v30 + 696) = *(v31 + 696);
              *(v30 + 712) = v93;
              v94 = *(v31 + 744);
              *(v30 + 728) = *(v31 + 728);
              *(v30 + 744) = v94;
              v95 = *(v31 + 680);
              *v89 = *v90;
              *(v30 + 680) = v95;
            }

            else
            {
              *v89 = *v90;
              v30[672] = v31[672];
              *(v30 + 85) = *(v31 + 85);
              v30[688] = v31[688];
              *(v30 + 689) = *(v31 + 689);
              v30[691] = v31[691];
              v30[692] = v31[692];
              *(v30 + 87) = *(v31 + 87);
              v96 = *(v31 + 45);
              *(v30 + 44) = *(v31 + 44);
              *(v30 + 45) = v96;
              *(v30 + 92) = *(v31 + 92);
              *(v30 + 372) = *(v31 + 372);
              *(v30 + 47) = *(v31 + 47);
              v30[768] = v31[768];
              *(v30 + 97) = v91;
              *(v30 + 49) = *(v31 + 49);
              *(v30 + 100) = *(v31 + 100);
              v30[808] = v31[808];
            }

            *(v30 + 102) = *(v31 + 102);
            *(v30 + 103) = *(v31 + 103);
            *(v30 + 104) = *(v31 + 104);

LABEL_64:
            v97 = v30 + 840;
            v98 = v31 + 840;
            v99 = *(v31 + 108);
            if (v99)
            {
              if (v99 == 1)
              {
                v100 = *(v31 + 856);
                *v97 = *v98;
                *(v30 + 856) = v100;
                *(v30 + 872) = *(v31 + 872);
                *(v30 + 111) = *(v31 + 111);
LABEL_72:
                v104 = *(v31 + 112);
                *(v30 + 112) = v104;
                *(v30 + 113) = *(v31 + 113);
                *(v30 + 114) = *(v31 + 114);
                *(v30 + 115) = *(v31 + 115);
                *(v30 + 116) = *(v31 + 116);
                *(v30 + 117) = *(v31 + 117);
                *(v30 + 118) = *(v31 + 118);
                *(v30 + 476) = *(v31 + 476);
                v30[954] = v31[954];
                v105 = v139[28];
                __dst = &v30[v105];
                v138 = &v31[v105];
                v106 = type metadata accessor for CommandOperation();
                v128 = *(v106 - 8);
                v130 = *(v128 + 48);
                v107 = v104;

                if (v130(v138, 1, v106))
                {
                  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                  memcpy(__dst, v138, *(*(v108 - 8) + 64));
                  v8 = v135;
                  v7 = v136;
                  v109 = v139;
                  v110 = v134;
                }

                else
                {
                  *__dst = *v138;
                  v111 = *(v106 + 20);
                  v112 = &__dst[v111];
                  v113 = &v138[v111];
                  v114 = *&v138[v111];
                  v115 = *&v138[v111 + 8];
                  v131 = v106;
                  v116 = v138[v111 + 16];
                  outlined copy of Text.Storage(v114, *(v113 + 1), v113[16]);
                  *v112 = v114;
                  *(v112 + 1) = v115;
                  v112[16] = v116;
                  *(v112 + 3) = *(v113 + 3);
                  v117 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                  v118 = type metadata accessor for UUID();
                  v126 = *(*(v118 - 8) + 16);

                  v126(&v112[v117], &v113[v117], v118);
                  v119 = *(v131 + 24);
                  v120 = &__dst[v119];
                  v121 = &v138[v119];
                  if (*v121)
                  {
                    v122 = *(v121 + 1);
                    *v120 = *v121;
                    *(v120 + 1) = v122;
                  }

                  else
                  {
                    *v120 = *v121;
                  }

                  v8 = v135;
                  v7 = v136;
                  v109 = v139;
                  v110 = v134;
                  (*(v128 + 56))(__dst, 0, 1, v131);
                }

                v30[v109[29]] = v31[v109[29]];
                v30[v109[30]] = v31[v109[30]];
                v30[v109[31]] = v31[v109[31]];
                v30[v109[32]] = v31[v109[32]];
                v30[v109[33]] = v31[v109[33]];
                *&v30[v109[34]] = *&v31[v109[34]];
                v123 = *(v110 + 56);

                v123(v30, 0, 1, v109);
                goto LABEL_79;
              }

              *(v30 + 108) = v99;
              *(v30 + 109) = *(v31 + 109);
              (**(v99 - 8))(v97, v98);
            }

            else
            {
              v101 = *(v31 + 856);
              *v97 = *v98;
              *(v30 + 856) = v101;
              *(v30 + 109) = *(v31 + 109);
            }

            v102 = *(v31 + 110);
            if (v102)
            {
              v103 = *(v31 + 111);
              *(v30 + 110) = v102;
              *(v30 + 111) = v103;
            }

            else
            {
              *(v30 + 55) = *(v31 + 55);
            }

            goto LABEL_72;
          }

          *(v30 + 78) = v86;
          *(v30 + 79) = *(v31 + 79);
          (**(v86 - 8))((v30 + 600), (v31 + 600), v86);
        }

        else
        {
          v88 = *(v31 + 616);
          *v84 = *v85;
          *(v30 + 616) = v88;
          *(v30 + 79) = *(v31 + 79);
        }

        *(v30 + 80) = *(v31 + 80);

        goto LABEL_60;
      }
    }

    else
    {
      v53 = v31[72];
      if (v53 == 255)
      {
        *(v30 + 8) = *(v31 + 8);
        v30[72] = v31[72];
      }

      else
      {
        v54 = *(v31 + 8);
        outlined copy of GraphicsImage.Contents(v54, v31[72]);
        *(v30 + 8) = v54;
        v30[72] = v53;
        v41 = *(v31 + 24);
      }

      *(v30 + 10) = *(v31 + 10);
      *(v30 + 88) = *(v31 + 88);
      v30[104] = v31[104];
      *(v30 + 108) = *(v31 + 108);
      *(v30 + 121) = *(v31 + 121);
      *(v30 + 136) = *(v31 + 136);
      *(v30 + 152) = *(v31 + 152);
      *(v30 + 84) = *(v31 + 84);
      v30[170] = v31[170];
      v30[171] = v31[171];
      if (v41 >> 1 == 0xFFFFFFFF)
      {
        v55 = *(v31 + 12);
        *(v30 + 11) = *(v31 + 11);
        *(v30 + 12) = v55;
      }

      else
      {
        v56 = *(v31 + 22);
        v57 = *(v31 + 23);
        v58 = *(v31 + 25);
        outlined copy of AccessibilityImageLabel(v56, v57, v41);
        *(v30 + 22) = v56;
        *(v30 + 23) = v57;
        *(v30 + 24) = v41;
        *(v30 + 25) = v58;
      }

      v59 = *(v31 + 27);
      *(v30 + 26) = *(v31 + 26);
      *(v30 + 27) = v59;
      *(v30 + 112) = *(v31 + 112);
      *(v30 + 57) = *(v31 + 57);
      v30[232] = v31[232];
      v60 = *(v31 + 30);
      *(v30 + 30) = v60;
      *(v30 + 124) = *(v31 + 124);
      v30[250] = v31[250];
      swift_unknownObjectRetain();

      v61 = v60;
      v49 = *(v31 + 33);
      if (v49)
      {
        goto LABEL_23;
      }
    }

    v62 = *(v31 + 17);
    *(v30 + 16) = *(v31 + 16);
    *(v30 + 17) = v62;
    *(v30 + 18) = *(v31 + 18);
    goto LABEL_34;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

void _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void *initializeWithCopy for DocumentBaseModifier(void *a1, char *a2)
{
  v4 = type metadata accessor for NavigationItemDescription(0);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a2, 1, v4))
  {
    v9 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v9;
    v10 = *(a2 + 5);

    if (v10)
    {
      v11 = *(a2 + 2);
      v12 = *(a2 + 3);
      v13 = a2[32];
      outlined copy of Text.Storage(v11, v12, v13);
      a1[2] = v11;
      a1[3] = v12;
      *(a1 + 32) = v13;
      a1[5] = *(a2 + 5);
    }

    else
    {
      v14 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v14;
    }

    v15 = *(a2 + 6);
    if (v15 != 1)
    {
    }

    a1[6] = v15;
    *(a1 + 56) = a2[56];
    a1[8] = *(a2 + 8);
    *(a1 + 72) = a2[72];
    v16 = *(v4 + 24);
    v17 = a1 + v16;
    v18 = &a2[v16];
    v19 = a2[v16 + 8];

    if (v19 == 255)
    {
      *v17 = *v18;
      v17[8] = v18[8];
    }

    else
    {
      v20 = *v18;
      v21 = v19 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v18, v21);
      *v17 = v20;
      v17[8] = v21;
    }

    v22 = v18[24];
    v137 = a1;
    if (v22 == 254 || v22 == 255)
    {
      *(v17 + 2) = *(v18 + 2);
      v17[24] = v18[24];
    }

    else
    {
      v23 = *(v18 + 2);
      v24 = v22 & 1;
      outlined copy of PlatformItemCollection.Storage(v23, v22 & 1);
      *(v17 + 2) = v23;
      v17[24] = v24;
    }

    swift_unknownObjectWeakCopyInit();
    v25 = *(v18 + 6);
    *(v17 + 5) = *(v18 + 5);
    *(v17 + 6) = v25;
    v26 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v27 = &v17[v26];
    v28 = &v18[v26];
    v29 = type metadata accessor for PlatformItemList.Item();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    v32 = v25;
    if (v31(v28, 1, v29))
    {
      _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v27, v28, *(*(v33 - 8) + 64));
LABEL_74:
      *(v137 + *(v4 + 28)) = *&a2[*(v4 + 28)];
      (*(v5 + 56))(v137, 0, 1, v4);
      return v137;
    }

    v131 = v30;
    v132 = v5;
    v133 = v4;
    v34 = *v28;
    v35 = *(v28 + 1);
    *v27 = *v28;
    *(v27 + 1) = v35;
    v36 = *(v28 + 3);
    *(v27 + 2) = *(v28 + 2);
    *(v27 + 3) = v36;
    v27[32] = v28[32];
    v37 = *(v28 + 6);
    *(v27 + 5) = *(v28 + 5);
    *(v27 + 6) = v37;
    v27[56] = v28[56];
    v38 = *(v28 + 24);
    v39 = v34;
    v40 = v35;

    v136 = v29;
    if (v38 >> 1 == 4294967294)
    {
      v41 = *(v28 + 13);
      *(v27 + 12) = *(v28 + 12);
      *(v27 + 13) = v41;
      *(v27 + 14) = *(v28 + 14);
      *(v27 + 235) = *(v28 + 235);
      v42 = *(v28 + 9);
      *(v27 + 8) = *(v28 + 8);
      *(v27 + 9) = v42;
      v43 = *(v28 + 11);
      *(v27 + 10) = *(v28 + 10);
      *(v27 + 11) = v43;
      v44 = *(v28 + 5);
      *(v27 + 4) = *(v28 + 4);
      *(v27 + 5) = v44;
      v45 = *(v28 + 7);
      *(v27 + 6) = *(v28 + 6);
      *(v27 + 7) = v45;
      v46 = *(v28 + 33);
      if (v46)
      {
LABEL_21:
        *(v27 + 32) = *(v28 + 32);
        *(v27 + 33) = v46;
        v47 = *(v28 + 34);

        if (v47 >= 2)
        {
          v48 = v47;
        }

        *(v27 + 34) = v47;
        *(v27 + 70) = *(v28 + 70);
        v27[284] = v28[284];
        *(v27 + 285) = *(v28 + 285);
        v49 = *(v28 + 37);
        *(v27 + 36) = *(v28 + 36);
        *(v27 + 37) = v49;

LABEL_32:
        v60 = *(v28 + 42);
        if (v60 >> 2 == 0xFFFFFFFF)
        {
          v61 = *(v28 + 24);
          *(v27 + 23) = *(v28 + 23);
          *(v27 + 24) = v61;
          *(v27 + 50) = *(v28 + 50);
          v62 = *(v28 + 20);
          *(v27 + 19) = *(v28 + 19);
          *(v27 + 20) = v62;
          v63 = *(v28 + 22);
          *(v27 + 21) = *(v28 + 21);
          *(v27 + 22) = v63;
        }

        else
        {
          v64 = *(v28 + 38);
          v65 = *(v28 + 39);
          v66 = *(v28 + 41);
          v68 = *(v28 + 43);
          v67 = *(v28 + 44);
          v69 = *(v28 + 45);
          v121 = *(v28 + 40);
          v122 = *(v28 + 46);
          v124 = *(v28 + 47);
          v126 = *(v28 + 48);
          __dsta = *(v28 + 49);
          v134 = *(v28 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v64, v65, v121, v66, v60, v68, v67, v69, v122, v124, v126, __dsta, v134);
          *(v27 + 38) = v64;
          *(v27 + 39) = v65;
          *(v27 + 40) = v121;
          *(v27 + 41) = v66;
          *(v27 + 42) = v60;
          *(v27 + 43) = v68;
          *(v27 + 44) = v67;
          *(v27 + 45) = v69;
          *(v27 + 46) = v122;
          *(v27 + 47) = v124;
          *(v27 + 48) = v126;
          *(v27 + 49) = __dsta;
          *(v27 + 50) = v134;
        }

        v70 = *(v28 + 52);
        if (v70 == 1)
        {
          v71 = *(v28 + 456);
          *(v27 + 440) = *(v28 + 440);
          *(v27 + 456) = v71;
          v27[472] = v28[472];
          v72 = *(v28 + 424);
          *(v27 + 408) = *(v28 + 408);
          *(v27 + 424) = v72;
          goto LABEL_45;
        }

        *(v27 + 102) = *(v28 + 102);
        v27[412] = v28[412];
        if (v70)
        {
          v73 = *(v28 + 53);
          *(v27 + 52) = v70;
          *(v27 + 53) = v73;

          v74 = *(v28 + 54);
          if (v74)
          {
            goto LABEL_39;
          }
        }

        else
        {
          *(v27 + 26) = *(v28 + 26);
          v74 = *(v28 + 54);
          if (v74)
          {
LABEL_39:
            v75 = *(v28 + 55);
            *(v27 + 54) = v74;
            *(v27 + 55) = v75;

            v76 = *(v28 + 56);
            if (v76)
            {
LABEL_40:
              v77 = *(v28 + 57);
              *(v27 + 56) = v76;
              *(v27 + 57) = v77;

LABEL_44:
              *(v27 + 58) = *(v28 + 58);
              v27[472] = v28[472];
LABEL_45:
              v78 = *(v28 + 61);
              *(v27 + 60) = *(v28 + 60);
              *(v27 + 61) = v78;
              *(v27 + 62) = *(v28 + 62);
              v27[504] = v28[504];
              v79 = *(v28 + 64);

              if (v79)
              {
                v80 = *(v28 + 65);
                *(v27 + 64) = v79;
                *(v27 + 65) = v80;
              }

              else
              {
                *(v27 + 32) = *(v28 + 32);
              }

              v27[528] = v28[528];
              if (!*(v28 + 102))
              {
                memcpy(v27 + 536, v28 + 536, 0x130uLL);
                goto LABEL_60;
              }

              *(v27 + 67) = *(v28 + 67);
              *(v27 + 68) = *(v28 + 68);
              v27[552] = v28[552];
              *(v27 + 70) = *(v28 + 70);
              v27[568] = v28[568];
              *(v27 + 36) = *(v28 + 36);
              v27[592] = v28[592];
              v81 = v27 + 600;
              v82 = v28 + 600;
              v83 = *(v28 + 78);

              if (v83)
              {
                if (v83 == 1)
                {
                  v84 = *(v28 + 616);
                  *v81 = *v82;
                  *(v27 + 616) = v84;
                  *(v27 + 632) = *(v28 + 632);
LABEL_56:
                  *(v27 + 81) = *(v28 + 81);
                  v27[656] = v28[656];
                  v86 = v27 + 664;
                  v87 = v28 + 664;
                  v88 = *(v28 + 97);
                  if (v88 == 1)
                  {
                    v89 = *(v28 + 776);
                    *(v27 + 760) = *(v28 + 760);
                    *(v27 + 776) = v89;
                    *(v27 + 792) = *(v28 + 792);
                    v27[808] = v28[808];
                    v90 = *(v28 + 712);
                    *(v27 + 696) = *(v28 + 696);
                    *(v27 + 712) = v90;
                    v91 = *(v28 + 744);
                    *(v27 + 728) = *(v28 + 728);
                    *(v27 + 744) = v91;
                    v92 = *(v28 + 680);
                    *v86 = *v87;
                    *(v27 + 680) = v92;
                  }

                  else
                  {
                    *v86 = *v87;
                    v27[672] = v28[672];
                    *(v27 + 85) = *(v28 + 85);
                    v27[688] = v28[688];
                    *(v27 + 689) = *(v28 + 689);
                    v27[691] = v28[691];
                    v27[692] = v28[692];
                    *(v27 + 87) = *(v28 + 87);
                    v93 = *(v28 + 45);
                    *(v27 + 44) = *(v28 + 44);
                    *(v27 + 45) = v93;
                    *(v27 + 92) = *(v28 + 92);
                    *(v27 + 372) = *(v28 + 372);
                    *(v27 + 47) = *(v28 + 47);
                    v27[768] = v28[768];
                    *(v27 + 97) = v88;
                    *(v27 + 49) = *(v28 + 49);
                    *(v27 + 100) = *(v28 + 100);
                    v27[808] = v28[808];
                  }

                  *(v27 + 102) = *(v28 + 102);
                  *(v27 + 103) = *(v28 + 103);
                  *(v27 + 104) = *(v28 + 104);

LABEL_60:
                  v94 = v27 + 840;
                  v95 = v28 + 840;
                  v96 = *(v28 + 108);
                  if (v96)
                  {
                    if (v96 == 1)
                    {
                      v97 = *(v28 + 856);
                      *v94 = *v95;
                      *(v27 + 856) = v97;
                      *(v27 + 872) = *(v28 + 872);
                      *(v27 + 111) = *(v28 + 111);
LABEL_67:
                      v101 = *(v28 + 112);
                      *(v27 + 112) = v101;
                      *(v27 + 113) = *(v28 + 113);
                      *(v27 + 114) = *(v28 + 114);
                      *(v27 + 115) = *(v28 + 115);
                      *(v27 + 116) = *(v28 + 116);
                      *(v27 + 117) = *(v28 + 117);
                      *(v27 + 118) = *(v28 + 118);
                      *(v27 + 476) = *(v28 + 476);
                      v27[954] = v28[954];
                      v102 = v136[28];
                      __dst = &v27[v102];
                      v135 = &v28[v102];
                      v103 = type metadata accessor for CommandOperation();
                      v125 = *(v103 - 8);
                      v127 = *(v125 + 48);
                      v104 = v101;

                      if (v127(v135, 1, v103))
                      {
                        _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v135, *(*(v105 - 8) + 64));
                        v5 = v132;
                        v4 = v133;
                        v106 = v136;
                        v107 = v131;
                      }

                      else
                      {
                        *__dst = *v135;
                        v108 = *(v103 + 20);
                        v109 = &__dst[v108];
                        v110 = &v135[v108];
                        v111 = *&v135[v108];
                        v112 = *&v135[v108 + 8];
                        v128 = v103;
                        v113 = v135[v108 + 16];
                        outlined copy of Text.Storage(v111, *(v110 + 1), v110[16]);
                        *v109 = v111;
                        *(v109 + 1) = v112;
                        v109[16] = v113;
                        *(v109 + 3) = *(v110 + 3);
                        v114 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v115 = type metadata accessor for UUID();
                        v123 = *(*(v115 - 8) + 16);

                        v123(&v109[v114], &v110[v114], v115);
                        v116 = *(v128 + 24);
                        v117 = &__dst[v116];
                        v118 = &v135[v116];
                        if (*v118)
                        {
                          v119 = *(v118 + 1);
                          *v117 = *v118;
                          *(v117 + 1) = v119;
                        }

                        else
                        {
                          *v117 = *v118;
                        }

                        v5 = v132;
                        v4 = v133;
                        v106 = v136;
                        v107 = v131;
                        (*(v125 + 56))(__dst, 0, 1, v128);
                      }

                      v27[v106[29]] = v28[v106[29]];
                      v27[v106[30]] = v28[v106[30]];
                      v27[v106[31]] = v28[v106[31]];
                      v27[v106[32]] = v28[v106[32]];
                      v27[v106[33]] = v28[v106[33]];
                      *&v27[v106[34]] = *&v28[v106[34]];
                      v120 = *(v107 + 56);

                      v120(v27, 0, 1, v106);
                      goto LABEL_74;
                    }

                    *(v27 + 108) = v96;
                    *(v27 + 109) = *(v28 + 109);
                    (**(v96 - 8))(v94, v95);
                    v99 = *(v28 + 110);
                    if (!v99)
                    {
LABEL_66:
                      *(v27 + 55) = *(v28 + 55);
                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    v98 = *(v28 + 856);
                    *v94 = *v95;
                    *(v27 + 856) = v98;
                    *(v27 + 109) = *(v28 + 109);
                    v99 = *(v28 + 110);
                    if (!v99)
                    {
                      goto LABEL_66;
                    }
                  }

                  v100 = *(v28 + 111);
                  *(v27 + 110) = v99;
                  *(v27 + 111) = v100;

                  goto LABEL_67;
                }

                *(v27 + 78) = v83;
                *(v27 + 79) = *(v28 + 79);
                (**(v83 - 8))((v27 + 600), (v28 + 600), v83);
              }

              else
              {
                v85 = *(v28 + 616);
                *v81 = *v82;
                *(v27 + 616) = v85;
                *(v27 + 79) = *(v28 + 79);
              }

              *(v27 + 80) = *(v28 + 80);

              goto LABEL_56;
            }

LABEL_43:
            *(v27 + 28) = *(v28 + 28);
            goto LABEL_44;
          }
        }

        *(v27 + 27) = *(v28 + 27);
        v76 = *(v28 + 56);
        if (v76)
        {
          goto LABEL_40;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v50 = v28[72];
      if (v50 == 255)
      {
        *(v27 + 8) = *(v28 + 8);
        v27[72] = v28[72];
      }

      else
      {
        v51 = *(v28 + 8);
        outlined copy of GraphicsImage.Contents(v51, v28[72]);
        *(v27 + 8) = v51;
        v27[72] = v50;
        v38 = *(v28 + 24);
      }

      *(v27 + 10) = *(v28 + 10);
      *(v27 + 88) = *(v28 + 88);
      v27[104] = v28[104];
      *(v27 + 108) = *(v28 + 108);
      *(v27 + 121) = *(v28 + 121);
      *(v27 + 136) = *(v28 + 136);
      *(v27 + 152) = *(v28 + 152);
      *(v27 + 84) = *(v28 + 84);
      v27[170] = v28[170];
      v27[171] = v28[171];
      if (v38 >> 1 == 0xFFFFFFFF)
      {
        v52 = *(v28 + 12);
        *(v27 + 11) = *(v28 + 11);
        *(v27 + 12) = v52;
      }

      else
      {
        v53 = *(v28 + 22);
        v54 = *(v28 + 23);
        v55 = *(v28 + 25);
        outlined copy of AccessibilityImageLabel(v53, v54, v38);
        *(v27 + 22) = v53;
        *(v27 + 23) = v54;
        *(v27 + 24) = v38;
        *(v27 + 25) = v55;
      }

      v56 = *(v28 + 27);
      *(v27 + 26) = *(v28 + 26);
      *(v27 + 27) = v56;
      *(v27 + 112) = *(v28 + 112);
      *(v27 + 57) = *(v28 + 57);
      v27[232] = v28[232];
      v57 = *(v28 + 30);
      *(v27 + 30) = v57;
      *(v27 + 124) = *(v28 + 124);
      v27[250] = v28[250];
      swift_unknownObjectRetain();

      v58 = v57;
      v46 = *(v28 + 33);
      if (v46)
      {
        goto LABEL_21;
      }
    }

    v59 = *(v28 + 17);
    *(v27 + 16) = *(v28 + 16);
    *(v27 + 17) = v59;
    *(v27 + 18) = *(v28 + 18);
    goto LABEL_32;
  }

  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  v7 = *(*(v6 - 8) + 64);

  return memcpy(a1, a2, v7);
}

char *assignWithCopy for DocumentBaseModifier(char *a1, char *a2)
{
  v4 = type metadata accessor for NavigationItemDescription(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      _s7SwiftUI16CommandOperationVWOhTm_2(a1, type metadata accessor for NavigationItemDescription);
      goto LABEL_7;
    }

    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    v16 = *(a2 + 5);
    if (*(a1 + 5))
    {
      if (v16)
      {
        v17 = *(a2 + 2);
        v18 = *(a2 + 3);
        v19 = a2[32];
        outlined copy of Text.Storage(v17, v18, v19);
        v20 = *(a1 + 2);
        v21 = *(a1 + 3);
        v22 = a1[32];
        *(a1 + 2) = v17;
        *(a1 + 3) = v18;
        a1[32] = v19;
        outlined consume of Text.Storage(v20, v21, v22);
        *(a1 + 5) = *(a2 + 5);
      }

      else
      {
        outlined destroy of Text((a1 + 16));
        v66 = *(a2 + 2);
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = v66;
      }
    }

    else if (v16)
    {
      v61 = *(a2 + 2);
      v62 = *(a2 + 3);
      v63 = a2[32];
      outlined copy of Text.Storage(v61, v62, v63);
      *(a1 + 2) = v61;
      *(a1 + 3) = v62;
      a1[32] = v63;
      *(a1 + 5) = *(a2 + 5);
    }

    else
    {
      v67 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v67;
    }

    v68 = (a1 + 48);
    v69 = *(a2 + 6);
    if (*(a1 + 6) == 1)
    {
      if (v69 == 1)
      {
        v70 = 1;
LABEL_41:
        *v68 = v70;
        goto LABEL_44;
      }

      *v68 = v69;
    }

    else
    {
      if (v69 == 1)
      {
        outlined destroy of Transaction((a1 + 48));
        v70 = *(a2 + 6);
        goto LABEL_41;
      }

      *v68 = v69;
    }

LABEL_44:
    a1[56] = a2[56];
    *(a1 + 8) = *(a2 + 8);

    a1[72] = a2[72];
    v71 = *(v4 + 24);
    v72 = &a1[v71];
    v73 = &a2[v71];
    v74 = a1[v71 + 8];
    v75 = a2[v71 + 8];
    if (v74 == 255)
    {
      if (v75 == 255)
      {
        v83 = *v73;
        *(v72 + 8) = v73[8];
        *v72 = v83;
      }

      else
      {
        v80 = *v73;
        v81 = v75 & 1;
        outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v73, v75 & 1);
        *v72 = v80;
        *(v72 + 8) = v81;
      }
    }

    else if (v75 == 255)
    {
      outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(v72);
      v82 = v73[8];
      *v72 = *v73;
      *(v72 + 8) = v82;
    }

    else
    {
      v76 = *v73;
      v77 = v75 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v73, v75 & 1);
      v78 = *v72;
      v79 = *(v72 + 8);
      *v72 = v76;
      *(v72 + 8) = v77;
      outlined consume of ResolvableCLKTextProvider.FontStorage(v78, v79);
    }

    v84 = *(v72 + 24);
    v85 = v73[24];
    if (v84 == 254)
    {
      if (v85 == 254)
      {
LABEL_60:
        v89 = *(v73 + 2);
        *(v72 + 24) = v73[24];
        *(v72 + 16) = v89;
        goto LABEL_61;
      }

LABEL_58:
      if (v85 != 255)
      {
        v87 = *(v73 + 2);
        v88 = v85 & 1;
        outlined copy of PlatformItemCollection.Storage(v87, v85 & 1);
        *(v72 + 16) = v87;
        *(v72 + 24) = v88;
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (v85 == 254)
    {
      outlined destroy of ToolbarStorage.NavigationProperties.Actions(v72 + 16);
    }

    else
    {
      if (v84 == 255)
      {
        goto LABEL_58;
      }

      if (v85 != 255)
      {
        v132 = *(v73 + 2);
        v133 = v85 & 1;
        outlined copy of PlatformItemCollection.Storage(v132, v85 & 1);
        v134 = *(v72 + 16);
        v135 = *(v72 + 24);
        *(v72 + 16) = v132;
        *(v72 + 24) = v133;
        outlined consume of PlatformItemCollection.Storage(v134, v135);
LABEL_61:
        swift_unknownObjectWeakCopyAssign();
        *(v72 + 40) = *(v73 + 5);
        v90 = *(v72 + 48);
        v91 = *(v73 + 6);
        *(v72 + 48) = v91;
        v92 = v91;

        v93 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
        v94 = v72 + v93;
        v95 = &v73[v93];
        v96 = type metadata accessor for PlatformItemList.Item();
        v97 = *(v96 - 8);
        v98 = *(v97 + 48);
        v99 = v98(v94, 1, v96);
        v100 = v98(v95, 1, v96);
        if (v99)
        {
          if (!v100)
          {
            v623 = v96;
            v101 = *v95;
            *v94 = *v95;
            v102 = *(v95 + 1);
            *(v94 + 8) = v102;
            *(v94 + 16) = *(v95 + 2);
            *(v94 + 24) = *(v95 + 3);
            *(v94 + 32) = v95[32];
            *(v94 + 40) = *(v95 + 5);
            *(v94 + 48) = *(v95 + 6);
            *(v94 + 56) = v95[56];
            v103 = *(v95 + 24);
            v104 = v101;
            v105 = v102;

            v619 = v97;
            if (v103 >> 1 == 4294967294)
            {
              v106 = *(v95 + 4);
              v107 = *(v95 + 5);
              v108 = *(v95 + 7);
              *(v94 + 96) = *(v95 + 6);
              *(v94 + 112) = v108;
              *(v94 + 64) = v106;
              *(v94 + 80) = v107;
              v109 = *(v95 + 8);
              v110 = *(v95 + 9);
              v111 = *(v95 + 11);
              *(v94 + 160) = *(v95 + 10);
              *(v94 + 176) = v111;
              *(v94 + 128) = v109;
              *(v94 + 144) = v110;
              v112 = *(v95 + 12);
              v113 = *(v95 + 13);
              v114 = *(v95 + 14);
              *(v94 + 235) = *(v95 + 235);
              *(v94 + 208) = v113;
              *(v94 + 224) = v114;
              *(v94 + 192) = v112;
            }

            else
            {
              v173 = v95[72];
              if (v173 == 255)
              {
                v240 = *(v95 + 8);
                *(v94 + 72) = v95[72];
                *(v94 + 64) = v240;
              }

              else
              {
                v174 = *(v95 + 8);
                outlined copy of GraphicsImage.Contents(v174, v95[72]);
                *(v94 + 64) = v174;
                *(v94 + 72) = v173;
              }

              *(v94 + 80) = *(v95 + 10);
              *(v94 + 88) = *(v95 + 88);
              *(v94 + 104) = v95[104];
              v241 = *(v95 + 108);
              *(v94 + 121) = *(v95 + 121);
              *(v94 + 108) = v241;
              v242 = *(v95 + 136);
              v243 = *(v95 + 152);
              *(v94 + 168) = v95[168];
              *(v94 + 152) = v243;
              *(v94 + 136) = v242;
              *(v94 + 169) = v95[169];
              *(v94 + 170) = v95[170];
              *(v94 + 171) = v95[171];
              v244 = *(v95 + 24);
              if (v244 >> 1 == 0xFFFFFFFF)
              {
                v245 = *(v95 + 12);
                *(v94 + 176) = *(v95 + 11);
                *(v94 + 192) = v245;
              }

              else
              {
                v246 = a1;
                v247 = *(v95 + 22);
                v248 = *(v95 + 23);
                v249 = v4;
                v250 = *(v95 + 25);
                outlined copy of AccessibilityImageLabel(v247, v248, *(v95 + 24));
                *(v94 + 176) = v247;
                *(v94 + 184) = v248;
                a1 = v246;
                *(v94 + 192) = v244;
                *(v94 + 200) = v250;
                v4 = v249;
              }

              *(v94 + 208) = *(v95 + 26);
              *(v94 + 216) = *(v95 + 27);
              *(v94 + 224) = v95[224];
              *(v94 + 225) = v95[225];
              v251 = *(v95 + 57);
              *(v94 + 232) = v95[232];
              *(v94 + 228) = v251;
              v252 = *(v95 + 30);
              *(v94 + 240) = v252;
              *(v94 + 248) = *(v95 + 124);
              *(v94 + 250) = v95[250];
              swift_unknownObjectRetain();

              v253 = v252;
            }

            if (*(v95 + 33))
            {
              *(v94 + 256) = *(v95 + 32);
              *(v94 + 264) = *(v95 + 33);
              v254 = *(v95 + 34);

              if (v254 >= 2)
              {
                v255 = v254;
              }

              *(v94 + 272) = v254;
              v256 = *(v95 + 70);
              *(v94 + 284) = v95[284];
              *(v94 + 280) = v256;
              *(v94 + 285) = v95[285];
              *(v94 + 286) = v95[286];
              *(v94 + 288) = *(v95 + 36);
              *(v94 + 296) = *(v95 + 37);
            }

            else
            {
              v257 = *(v95 + 16);
              v258 = *(v95 + 18);
              *(v94 + 272) = *(v95 + 17);
              *(v94 + 288) = v258;
              *(v94 + 256) = v257;
            }

            v259 = *(v95 + 42);
            v630 = a1;
            v627 = a2;
            v633 = v4;
            if (v259 >> 2 == 0xFFFFFFFF)
            {
              v260 = *(v95 + 19);
              v261 = *(v95 + 21);
              *(v94 + 320) = *(v95 + 20);
              *(v94 + 336) = v261;
              *(v94 + 304) = v260;
              v262 = *(v95 + 22);
              v263 = *(v95 + 23);
              v264 = *(v95 + 24);
              *(v94 + 400) = *(v95 + 50);
              *(v94 + 368) = v263;
              *(v94 + 384) = v264;
              *(v94 + 352) = v262;
            }

            else
            {
              v265 = *(v95 + 38);
              v266 = *(v95 + 39);
              v267 = *(v95 + 40);
              v268 = *(v95 + 41);
              v269 = *(v95 + 43);
              v270 = *(v95 + 44);
              v271 = *(v95 + 45);
              v590 = *(v95 + 46);
              v593 = *(v95 + 47);
              v600 = *(v95 + 48);
              __dstc = *(v95 + 49);
              v613 = *(v95 + 50);
              outlined copy of PlatformItemList.Item.SystemItem(v265, v266, v267, v268, v259, v269, v270, v271, v590, v593, v600, __dstc, v613);
              *(v94 + 304) = v265;
              *(v94 + 312) = v266;
              *(v94 + 320) = v267;
              *(v94 + 328) = v268;
              *(v94 + 336) = v259;
              *(v94 + 344) = v269;
              *(v94 + 352) = v270;
              *(v94 + 360) = v271;
              *(v94 + 368) = v590;
              *(v94 + 376) = v593;
              *(v94 + 384) = v600;
              *(v94 + 392) = __dstc;
              *(v94 + 400) = v613;
            }

            if (*(v95 + 52) == 1)
            {
              *(v94 + 408) = *(v95 + 408);
              v272 = *(v95 + 424);
              v273 = *(v95 + 440);
              v274 = *(v95 + 456);
              *(v94 + 472) = v95[472];
              *(v94 + 440) = v273;
              *(v94 + 456) = v274;
              *(v94 + 424) = v272;
            }

            else
            {
              *(v94 + 408) = v95[408];
              *(v94 + 409) = v95[409];
              *(v94 + 410) = v95[410];
              *(v94 + 411) = v95[411];
              *(v94 + 412) = v95[412];
              v275 = *(v95 + 52);
              if (v275)
              {
                v276 = *(v95 + 53);
                *(v94 + 416) = v275;
                *(v94 + 424) = v276;
              }

              else
              {
                *(v94 + 416) = *(v95 + 26);
              }

              v277 = *(v95 + 54);
              if (v277)
              {
                v278 = *(v95 + 55);
                *(v94 + 432) = v277;
                *(v94 + 440) = v278;
              }

              else
              {
                *(v94 + 432) = *(v95 + 27);
              }

              v279 = *(v95 + 56);
              if (v279)
              {
                v280 = *(v95 + 57);
                *(v94 + 448) = v279;
                *(v94 + 456) = v280;
              }

              else
              {
                *(v94 + 448) = *(v95 + 28);
              }

              *(v94 + 464) = *(v95 + 58);
              *(v94 + 472) = v95[472];
            }

            *(v94 + 480) = *(v95 + 60);
            *(v94 + 488) = *(v95 + 61);
            *(v94 + 496) = *(v95 + 62);
            *(v94 + 504) = v95[504];
            v281 = *(v95 + 64);

            if (v281)
            {
              v282 = *(v95 + 65);
              *(v94 + 512) = v281;
              *(v94 + 520) = v282;
            }

            else
            {
              *(v94 + 512) = *(v95 + 32);
            }

            *(v94 + 528) = v95[528];
            if (!*(v95 + 102))
            {
              memcpy((v94 + 536), v95 + 536, 0x130uLL);
              goto LABEL_167;
            }

            *(v94 + 536) = *(v95 + 67);
            *(v94 + 544) = *(v95 + 68);
            *(v94 + 552) = v95[552];
            *(v94 + 560) = *(v95 + 70);
            *(v94 + 568) = v95[568];
            v283 = *(v95 + 36);
            *(v94 + 592) = v95[592];
            *(v94 + 576) = v283;
            v284 = (v94 + 600);
            v285 = (v95 + 600);
            v286 = *(v95 + 78);

            if (v286)
            {
              if (v286 == 1)
              {
                v287 = *v285;
                v288 = *(v95 + 632);
                *(v94 + 616) = *(v95 + 616);
                *(v94 + 632) = v288;
                *v284 = v287;
LABEL_163:
                v291 = *(v95 + 81);
                *(v94 + 656) = v95[656];
                *(v94 + 648) = v291;
                v292 = (v94 + 664);
                v293 = v95 + 664;
                if (*(v95 + 97) == 1)
                {
                  v294 = *(v95 + 680);
                  *v292 = *v293;
                  *(v94 + 680) = v294;
                  v295 = *(v95 + 696);
                  v296 = *(v95 + 712);
                  v297 = *(v95 + 744);
                  *(v94 + 728) = *(v95 + 728);
                  *(v94 + 744) = v297;
                  *(v94 + 696) = v295;
                  *(v94 + 712) = v296;
                  v298 = *(v95 + 760);
                  v299 = *(v95 + 776);
                  v300 = *(v95 + 792);
                  *(v94 + 808) = v95[808];
                  *(v94 + 776) = v299;
                  *(v94 + 792) = v300;
                  *(v94 + 760) = v298;
                }

                else
                {
                  v301 = *v293;
                  *(v94 + 672) = v95[672];
                  *v292 = v301;
                  v302 = *(v95 + 85);
                  *(v94 + 688) = v95[688];
                  *(v94 + 680) = v302;
                  *(v94 + 689) = v95[689];
                  *(v94 + 690) = v95[690];
                  *(v94 + 691) = v95[691];
                  *(v94 + 692) = v95[692];
                  *(v94 + 696) = *(v95 + 87);
                  *(v94 + 704) = *(v95 + 88);
                  *(v94 + 712) = *(v95 + 89);
                  *(v94 + 720) = *(v95 + 90);
                  *(v94 + 728) = *(v95 + 91);
                  *(v94 + 736) = *(v95 + 92);
                  *(v94 + 744) = v95[744];
                  *(v94 + 745) = v95[745];
                  *(v94 + 752) = *(v95 + 94);
                  *(v94 + 760) = *(v95 + 95);
                  *(v94 + 768) = v95[768];
                  *(v94 + 776) = *(v95 + 97);
                  v303 = *(v95 + 49);
                  *(v94 + 800) = *(v95 + 100);
                  *(v94 + 784) = v303;
                  *(v94 + 808) = v95[808];
                }

                *(v94 + 816) = *(v95 + 102);
                *(v94 + 824) = *(v95 + 103);
                *(v94 + 832) = *(v95 + 104);

LABEL_167:
                v304 = (v94 + 840);
                v305 = (v95 + 840);
                v306 = *(v95 + 108);
                if (v306)
                {
                  if (v306 == 1)
                  {
                    v307 = *v305;
                    v308 = *(v95 + 856);
                    v309 = *(v95 + 872);
                    *(v94 + 888) = *(v95 + 111);
                    *(v94 + 856) = v308;
                    *(v94 + 872) = v309;
                    *v304 = v307;
LABEL_175:
                    v314 = *(v95 + 112);
                    *(v94 + 896) = v314;
                    *(v94 + 904) = *(v95 + 113);
                    *(v94 + 912) = *(v95 + 114);
                    *(v94 + 920) = *(v95 + 115);
                    *(v94 + 928) = *(v95 + 116);
                    *(v94 + 936) = *(v95 + 117);
                    *(v94 + 944) = *(v95 + 118);
                    *(v94 + 952) = v95[952];
                    *(v94 + 953) = v95[953];
                    *(v94 + 954) = v95[954];
                    v315 = v623[28];
                    v614 = (v94 + v315);
                    v316 = &v95[v315];
                    v317 = type metadata accessor for CommandOperation();
                    v601 = *(v317 - 8);
                    __dstd = *(v601 + 48);
                    v318 = v314;

                    if (__dstd(v316, 1, v317))
                    {
                      _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                      memcpy(v614, v316, *(*(v319 - 8) + 64));
                      a1 = v630;
                      v320 = v623;
                      a2 = v627;
                      v321 = v619;
                    }

                    else
                    {
                      *v614 = *v316;
                      v322 = *(v317 + 20);
                      v323 = v316;
                      v324 = &v614[v322];
                      v325 = &v323[v322];
                      __dsta = v317;
                      v326 = *&v323[v322];
                      v327 = *&v323[v322 + 8];
                      v328 = v323[v322 + 16];
                      outlined copy of Text.Storage(v326, v327, v328);
                      *v324 = v326;
                      *(v324 + 1) = v327;
                      v324[16] = v328;
                      *(v324 + 3) = *(v325 + 3);
                      v329 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v330 = type metadata accessor for UUID();
                      v594 = *(*(v330 - 8) + 16);

                      v594(&v324[v329], &v325[v329], v330);
                      v331 = __dsta[6];
                      v332 = &v614[v331];
                      v333 = &v323[v331];
                      if (*v333)
                      {
                        v334 = *(v333 + 1);
                        *v332 = *v333;
                        *(v332 + 1) = v334;
                      }

                      else
                      {
                        *v332 = *v333;
                      }

                      a1 = v630;
                      v320 = v623;
                      a2 = v627;
                      v321 = v619;
                      (*(v601 + 56))(v614, 0, 1, __dsta);
                    }

                    *(v94 + v320[29]) = v95[v320[29]];
                    *(v94 + v320[30]) = v95[v320[30]];
                    *(v94 + v320[31]) = v95[v320[31]];
                    *(v94 + v320[32]) = v95[v320[32]];
                    *(v94 + v320[33]) = v95[v320[33]];
                    *(v94 + v320[34]) = *&v95[v320[34]];
                    v343 = *(v321 + 56);

                    v343(v94, 0, 1, v320);
                    v4 = v633;
                    goto LABEL_349;
                  }

                  *(v94 + 864) = v306;
                  *(v94 + 872) = *(v95 + 109);
                  (**(v306 - 8))(v304, v305);
                }

                else
                {
                  v310 = *v305;
                  v311 = *(v95 + 856);
                  *(v94 + 872) = *(v95 + 109);
                  *v304 = v310;
                  *(v94 + 856) = v311;
                }

                v312 = *(v95 + 110);
                if (v312)
                {
                  v313 = *(v95 + 111);
                  *(v94 + 880) = v312;
                  *(v94 + 888) = v313;
                }

                else
                {
                  *(v94 + 880) = *(v95 + 55);
                }

                goto LABEL_175;
              }

              *(v94 + 624) = v286;
              *(v94 + 632) = *(v95 + 79);
              (**(v286 - 8))(v94 + 600, (v95 + 600), v286);
            }

            else
            {
              v289 = *v285;
              v290 = *(v95 + 616);
              *(v94 + 632) = *(v95 + 79);
              *v284 = v289;
              *(v94 + 616) = v290;
            }

            *(v94 + 640) = *(v95 + 80);

            goto LABEL_163;
          }

          goto LABEL_67;
        }

        if (v100)
        {
          _s7SwiftUI16CommandOperationVWOhTm_2(v94, type metadata accessor for PlatformItemList.Item);
LABEL_67:
          _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
          memcpy(v94, v95, *(*(v115 - 8) + 64));
LABEL_349:
          *&a1[*(v4 + 28)] = *&a2[*(v4 + 28)];
          return a1;
        }

        v116 = *v94;
        v117 = *v95;
        *v94 = *v95;
        v118 = v117;

        v119 = *(v94 + 8);
        v120 = *(v95 + 1);
        *(v94 + 8) = v120;
        v121 = v120;

        *(v94 + 16) = *(v95 + 2);
        *(v94 + 24) = *(v95 + 3);

        *(v94 + 32) = v95[32];
        *(v94 + 40) = *(v95 + 5);
        *(v94 + 48) = *(v95 + 6);

        *(v94 + 56) = v95[56];
        v122 = *(v95 + 24) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v94 + 192) >> 1 == 4294967294)
        {
          if (v122 == 0x1FFFFFFFCLL)
          {
            v123 = *(v95 + 4);
            v124 = *(v95 + 5);
            v125 = *(v95 + 7);
            *(v94 + 96) = *(v95 + 6);
            *(v94 + 112) = v125;
            *(v94 + 64) = v123;
            *(v94 + 80) = v124;
            v126 = *(v95 + 8);
            v127 = *(v95 + 9);
            v128 = *(v95 + 11);
            *(v94 + 160) = *(v95 + 10);
            *(v94 + 176) = v128;
            *(v94 + 128) = v126;
            *(v94 + 144) = v127;
            v129 = *(v95 + 12);
            v130 = *(v95 + 13);
            v131 = *(v95 + 14);
            *(v94 + 235) = *(v95 + 235);
            *(v94 + 208) = v130;
            *(v94 + 224) = v131;
            *(v94 + 192) = v129;
          }

          else
          {
            v335 = a1;
            v336 = v95[72];
            if (v336 == 255)
            {
              v344 = *(v95 + 8);
              *(v94 + 72) = v95[72];
              *(v94 + 64) = v344;
            }

            else
            {
              v337 = *(v95 + 8);
              outlined copy of GraphicsImage.Contents(v337, v95[72]);
              *(v94 + 64) = v337;
              *(v94 + 72) = v336;
            }

            *(v94 + 80) = *(v95 + 10);
            *(v94 + 88) = *(v95 + 88);
            *(v94 + 104) = v95[104];
            v345 = *(v95 + 108);
            *(v94 + 121) = *(v95 + 121);
            *(v94 + 108) = v345;
            v346 = *(v95 + 136);
            v347 = *(v95 + 152);
            *(v94 + 168) = v95[168];
            *(v94 + 152) = v347;
            *(v94 + 136) = v346;
            *(v94 + 169) = v95[169];
            *(v94 + 170) = v95[170];
            *(v94 + 171) = v95[171];
            v348 = *(v95 + 24);
            if (v348 >> 1 == 0xFFFFFFFF)
            {
              v349 = *(v95 + 12);
              *(v94 + 176) = *(v95 + 11);
              *(v94 + 192) = v349;
            }

            else
            {
              v350 = v4;
              v351 = *(v95 + 22);
              v352 = *(v95 + 23);
              v353 = a2;
              v354 = *(v95 + 25);
              outlined copy of AccessibilityImageLabel(v351, v352, *(v95 + 24));
              *(v94 + 176) = v351;
              *(v94 + 184) = v352;
              v4 = v350;
              *(v94 + 192) = v348;
              *(v94 + 200) = v354;
              a2 = v353;
            }

            a1 = v335;
            *(v94 + 208) = *(v95 + 26);
            *(v94 + 216) = *(v95 + 27);
            *(v94 + 224) = v95[224];
            *(v94 + 225) = v95[225];
            v355 = *(v95 + 57);
            *(v94 + 232) = v95[232];
            *(v94 + 228) = v355;
            v356 = *(v95 + 30);
            *(v94 + 240) = v356;
            *(v94 + 248) = *(v95 + 124);
            *(v94 + 250) = v95[250];
            swift_unknownObjectRetain();

            v357 = v356;
          }
        }

        else if (v122 == 0x1FFFFFFFCLL)
        {
          outlined destroy of Image.Resolved(v94 + 64);
          v231 = *(v95 + 7);
          v233 = *(v95 + 4);
          v232 = *(v95 + 5);
          *(v94 + 96) = *(v95 + 6);
          *(v94 + 112) = v231;
          *(v94 + 64) = v233;
          *(v94 + 80) = v232;
          v234 = *(v95 + 11);
          v236 = *(v95 + 8);
          v235 = *(v95 + 9);
          *(v94 + 160) = *(v95 + 10);
          *(v94 + 176) = v234;
          *(v94 + 128) = v236;
          *(v94 + 144) = v235;
          v238 = *(v95 + 13);
          v237 = *(v95 + 14);
          v239 = *(v95 + 12);
          *(v94 + 235) = *(v95 + 235);
          *(v94 + 208) = v238;
          *(v94 + 224) = v237;
          *(v94 + 192) = v239;
        }

        else
        {
          v338 = v95[72];
          v339 = a1;
          if (*(v94 + 72) == 255)
          {
            if (v338 == 255)
            {
              v360 = *(v95 + 8);
              *(v94 + 72) = v95[72];
              *(v94 + 64) = v360;
            }

            else
            {
              v358 = *(v95 + 8);
              outlined copy of GraphicsImage.Contents(v358, v95[72]);
              *(v94 + 64) = v358;
              *(v94 + 72) = v338;
            }
          }

          else if (v338 == 255)
          {
            outlined destroy of GraphicsImage.Contents(v94 + 64);
            v359 = v95[72];
            *(v94 + 64) = *(v95 + 8);
            *(v94 + 72) = v359;
          }

          else
          {
            v340 = *(v95 + 8);
            outlined copy of GraphicsImage.Contents(v340, v95[72]);
            v341 = *(v94 + 64);
            *(v94 + 64) = v340;
            v342 = *(v94 + 72);
            *(v94 + 72) = v338;
            outlined consume of GraphicsImage.Contents(v341, v342);
          }

          *(v94 + 80) = *(v95 + 10);
          *(v94 + 88) = *(v95 + 11);
          *(v94 + 96) = *(v95 + 12);
          *(v94 + 104) = v95[104];
          v361 = *(v95 + 108);
          *(v94 + 121) = *(v95 + 121);
          *(v94 + 108) = v361;
          v362 = *(v95 + 136);
          v363 = *(v95 + 152);
          *(v94 + 168) = v95[168];
          *(v94 + 152) = v363;
          *(v94 + 136) = v362;
          *(v94 + 169) = v95[169];
          *(v94 + 170) = v95[170];
          *(v94 + 171) = v95[171];
          v364 = *(v95 + 24);
          v365 = v364 & 0xFFFFFFFFFFFFFFFELL;
          if (*(v94 + 192) >> 1 == 0xFFFFFFFFLL)
          {
            if (v365 == 0x1FFFFFFFELL)
            {
              v366 = *(v95 + 12);
              *(v94 + 176) = *(v95 + 11);
              *(v94 + 192) = v366;
            }

            else
            {
              v368 = v4;
              v369 = *(v95 + 22);
              v370 = *(v95 + 23);
              v371 = a2;
              v372 = *(v95 + 25);
              outlined copy of AccessibilityImageLabel(v369, v370, *(v95 + 24));
              *(v94 + 176) = v369;
              *(v94 + 184) = v370;
              v4 = v368;
              *(v94 + 192) = v364;
              *(v94 + 200) = v372;
              a2 = v371;
            }
          }

          else if (v365 == 0x1FFFFFFFELL)
          {
            outlined destroy of AccessibilityImageLabel(v94 + 176);
            v367 = *(v95 + 12);
            *(v94 + 176) = *(v95 + 11);
            *(v94 + 192) = v367;
          }

          else
          {
            v373 = v4;
            v374 = *(v95 + 22);
            v375 = *(v95 + 23);
            v376 = a2;
            v377 = *(v95 + 25);
            outlined copy of AccessibilityImageLabel(v374, v375, *(v95 + 24));
            v378 = *(v94 + 176);
            v379 = *(v94 + 184);
            v380 = *(v94 + 192);
            *(v94 + 176) = v374;
            *(v94 + 184) = v375;
            v4 = v373;
            *(v94 + 192) = v364;
            *(v94 + 200) = v377;
            a2 = v376;
            outlined consume of AccessibilityImageLabel(v378, v379, v380);
          }

          a1 = v339;
          *(v94 + 208) = *(v95 + 26);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          *(v94 + 216) = *(v95 + 27);

          *(v94 + 224) = v95[224];
          *(v94 + 225) = v95[225];
          v381 = *(v95 + 57);
          *(v94 + 232) = v95[232];
          *(v94 + 228) = v381;
          v382 = *(v94 + 240);
          v383 = *(v95 + 30);
          *(v94 + 240) = v383;
          v384 = v383;

          *(v94 + 248) = *(v95 + 124);
          *(v94 + 250) = v95[250];
        }

        v385 = *(v95 + 33);
        if (!*(v94 + 264))
        {
          if (v385)
          {
            *(v94 + 256) = *(v95 + 32);
            *(v94 + 264) = *(v95 + 33);
            v389 = *(v95 + 34);

            if (v389 >= 2)
            {
              v390 = v389;
            }

            *(v94 + 272) = v389;
            v391 = *(v95 + 70);
            *(v94 + 284) = v95[284];
            *(v94 + 280) = v391;
            *(v94 + 285) = v95[285];
            *(v94 + 286) = v95[286];
            *(v94 + 288) = *(v95 + 36);
            *(v94 + 296) = *(v95 + 37);
          }

          else
          {
            v394 = *(v95 + 16);
            v395 = *(v95 + 18);
            *(v94 + 272) = *(v95 + 17);
            *(v94 + 288) = v395;
            *(v94 + 256) = v394;
          }

LABEL_220:
          v398 = *(v95 + 42);
          v399 = v398 & 0xFFFFFFFFFFFFFFFCLL;
          v631 = a1;
          v628 = a2;
          v634 = v4;
          v625 = v96;
          if (*(v94 + 336) >> 2 == 0xFFFFFFFFLL)
          {
            if (v399 == 0x3FFFFFFFCLL)
            {
              v400 = *(v95 + 19);
              v401 = *(v95 + 21);
              *(v94 + 320) = *(v95 + 20);
              *(v94 + 336) = v401;
              *(v94 + 304) = v400;
              v402 = *(v95 + 22);
              v403 = *(v95 + 23);
              v404 = *(v95 + 24);
              *(v94 + 400) = *(v95 + 50);
              *(v94 + 368) = v403;
              *(v94 + 384) = v404;
              *(v94 + 352) = v402;
            }

            else
            {
              v410 = *(v95 + 38);
              v411 = *(v95 + 39);
              v412 = *(v95 + 40);
              v413 = *(v95 + 43);
              v414 = *(v95 + 44);
              v415 = *(v95 + 45);
              v595 = *(v95 + 46);
              v602 = *(v95 + 47);
              __dste = *(v95 + 48);
              v615 = *(v95 + 49);
              v620 = *(v95 + 50);
              v416 = *(v95 + 41);
              outlined copy of PlatformItemList.Item.SystemItem(v410, v411, v412, v416, v398, v413, v414, v415, v595, v602, __dste, v615, v620);
              *(v94 + 304) = v410;
              *(v94 + 312) = v411;
              *(v94 + 320) = v412;
              *(v94 + 328) = v416;
              *(v94 + 336) = v398;
              *(v94 + 344) = v413;
              *(v94 + 352) = v414;
              *(v94 + 360) = v415;
              *(v94 + 368) = v595;
              *(v94 + 376) = v602;
              *(v94 + 384) = __dste;
              *(v94 + 392) = v615;
              v96 = v625;
              *(v94 + 400) = v620;
            }
          }

          else if (v399 == 0x3FFFFFFFCLL)
          {
            outlined destroy of PlatformItemList.Item.SystemItem(v94 + 304);
            v406 = *(v95 + 20);
            v405 = *(v95 + 21);
            *(v94 + 304) = *(v95 + 19);
            *(v94 + 320) = v406;
            *(v94 + 336) = v405;
            v408 = *(v95 + 23);
            v407 = *(v95 + 24);
            v409 = *(v95 + 22);
            *(v94 + 400) = *(v95 + 50);
            *(v94 + 368) = v408;
            *(v94 + 384) = v407;
            *(v94 + 352) = v409;
          }

          else
          {
            v417 = *(v95 + 38);
            v418 = *(v95 + 39);
            v419 = *(v95 + 40);
            __dstf = *(v95 + 44);
            v616 = *(v95 + 43);
            v420 = *(v95 + 46);
            v596 = *(v95 + 41);
            v603 = *(v95 + 45);
            v421 = *(v95 + 47);
            v422 = *(v95 + 48);
            v423 = *(v95 + 49);
            v621 = *(v95 + 50);
            outlined copy of PlatformItemList.Item.SystemItem(v417, v418, v419, v596, v398, v616, __dstf, v603, v420, v421, v422, v423, v621);
            v424 = *(v94 + 304);
            v425 = *(v94 + 312);
            v426 = *(v94 + 320);
            v427 = *(v94 + 328);
            v428 = *(v94 + 336);
            v429 = *(v94 + 344);
            v430 = *(v94 + 352);
            v431 = *(v94 + 360);
            v432 = *(v94 + 368);
            v433 = *(v94 + 384);
            v434 = *(v94 + 400);
            *(v94 + 304) = v417;
            *(v94 + 312) = v418;
            *(v94 + 320) = v419;
            *(v94 + 328) = v596;
            *(v94 + 336) = v398;
            *(v94 + 344) = v616;
            *(v94 + 352) = __dstf;
            *(v94 + 360) = v603;
            *(v94 + 368) = v420;
            *(v94 + 376) = v421;
            *(v94 + 384) = v422;
            *(v94 + 392) = v423;
            v96 = v625;
            *(v94 + 400) = v621;
            outlined consume of PlatformItemList.Item.SystemItem(v424, v425, v426, v427, v428, v429, v430, v431, v432, *(&v432 + 1), v433, SBYTE8(v433), v434);
          }

          v435 = (v94 + 408);
          v436 = v95 + 408;
          v437 = *(v94 + 416);
          v438 = *(v95 + 52);
          if (v437 == 1)
          {
            if (v438 == 1)
            {
              *v435 = *v436;
              v439 = *(v95 + 424);
              v440 = *(v95 + 440);
              v441 = *(v95 + 456);
              *(v94 + 472) = v95[472];
              *(v94 + 440) = v440;
              *(v94 + 456) = v441;
              *(v94 + 424) = v439;
              goto LABEL_262;
            }

            *(v94 + 408) = v95[408];
            *(v94 + 409) = v95[409];
            *(v94 + 410) = v95[410];
            *(v94 + 411) = v95[411];
            *(v94 + 412) = v95[412];
            v445 = *(v95 + 52);
            if (v445)
            {
              v446 = *(v95 + 53);
              *(v94 + 416) = v445;
              *(v94 + 424) = v446;
            }

            else
            {
              *(v94 + 416) = *(v95 + 26);
            }

            v449 = *(v95 + 54);
            if (v449)
            {
              v450 = *(v95 + 55);
              *(v94 + 432) = v449;
              *(v94 + 440) = v450;
            }

            else
            {
              *(v94 + 432) = *(v95 + 27);
            }

            v452 = *(v95 + 56);
            if (!v452)
            {
              goto LABEL_260;
            }

            goto LABEL_258;
          }

          if (v438 == 1)
          {
            outlined destroy of PlatformItemList.Item.SelectionBehavior(v94 + 408);
            *v435 = *v436;
            v443 = *(v95 + 440);
            v442 = *(v95 + 456);
            v444 = *(v95 + 424);
            *(v94 + 472) = v95[472];
            *(v94 + 440) = v443;
            *(v94 + 456) = v442;
            *(v94 + 424) = v444;
            goto LABEL_262;
          }

          *(v94 + 408) = *v436;
          *(v94 + 409) = v95[409];
          *(v94 + 410) = v95[410];
          *(v94 + 411) = v95[411];
          *(v94 + 412) = v95[412];
          v447 = *(v95 + 52);
          if (v437)
          {
            if (v447)
            {
              v448 = *(v95 + 53);
              *(v94 + 416) = v447;
              *(v94 + 424) = v448;

              goto LABEL_247;
            }
          }

          else if (v447)
          {
            v451 = *(v95 + 53);
            *(v94 + 416) = v447;
            *(v94 + 424) = v451;

            goto LABEL_247;
          }

          *(v94 + 416) = *(v95 + 26);
LABEL_247:
          v453 = *(v95 + 54);
          if (*(v94 + 432))
          {
            if (v453)
            {
              v454 = *(v95 + 55);
              *(v94 + 432) = v453;
              *(v94 + 440) = v454;

              goto LABEL_254;
            }
          }

          else if (v453)
          {
            v455 = *(v95 + 55);
            *(v94 + 432) = v453;
            *(v94 + 440) = v455;

            goto LABEL_254;
          }

          *(v94 + 432) = *(v95 + 27);
LABEL_254:
          v452 = *(v95 + 56);
          if (*(v94 + 448))
          {
            if (v452)
            {
              v456 = *(v95 + 57);
              *(v94 + 448) = v452;
              *(v94 + 456) = v456;

LABEL_261:
              *(v94 + 464) = *(v95 + 58);
              *(v94 + 472) = v95[472];
LABEL_262:
              *(v94 + 480) = *(v95 + 60);
              *(v94 + 488) = *(v95 + 61);

              *(v94 + 496) = *(v95 + 62);
              *(v94 + 504) = v95[504];
              v458 = *(v95 + 64);
              if (*(v94 + 512))
              {
                if (v458)
                {
                  v459 = *(v95 + 65);
                  *(v94 + 512) = v458;
                  *(v94 + 520) = v459;

                  goto LABEL_269;
                }
              }

              else if (v458)
              {
                v460 = *(v95 + 65);
                *(v94 + 512) = v458;
                *(v94 + 520) = v460;

                goto LABEL_269;
              }

              *(v94 + 512) = *(v95 + 32);
LABEL_269:
              *(v94 + 528) = v95[528];
              v461 = *(v95 + 102);
              if (*(v94 + 816))
              {
                if (v461)
                {
                  *(v94 + 536) = *(v95 + 67);
                  *(v94 + 544) = *(v95 + 68);

                  *(v94 + 552) = v95[552];
                  *(v94 + 560) = *(v95 + 70);

                  *(v94 + 568) = v95[568];
                  v462 = *(v95 + 36);
                  *(v94 + 592) = v95[592];
                  *(v94 + 576) = v462;
                  v463 = (v94 + 600);
                  v464 = v95 + 600;
                  v465 = *(v94 + 624);
                  v466 = *(v95 + 78);
                  if (v465 != 1)
                  {
                    if (v466 == 1)
                    {
                      outlined destroy of AccessibilityValueStorage(v94 + 600);
                      v476 = *(v95 + 616);
                      v475 = *(v95 + 632);
                      *v463 = *v464;
                      *(v94 + 616) = v476;
                      *(v94 + 632) = v475;
                    }

                    else
                    {
                      if (v465)
                      {
                        if (v466)
                        {
                          __swift_assign_boxed_opaque_existential_1((v94 + 600), v95 + 75);
                        }

                        else
                        {
                          outlined destroy of AnyAccessibilityValue(v94 + 600);
                          v494 = *(v95 + 79);
                          v495 = *(v95 + 616);
                          *v463 = *v464;
                          *(v94 + 616) = v495;
                          *(v94 + 632) = v494;
                        }
                      }

                      else if (v466)
                      {
                        *(v94 + 624) = v466;
                        *(v94 + 632) = *(v95 + 79);
                        (**(v466 - 8))(v94 + 600, (v95 + 600));
                      }

                      else
                      {
                        v496 = *v464;
                        v497 = *(v95 + 616);
                        *(v94 + 632) = *(v95 + 79);
                        *v463 = v496;
                        *(v94 + 616) = v497;
                      }

                      *(v94 + 640) = *(v95 + 80);
                    }

                    goto LABEL_301;
                  }

                  if (v466)
                  {
                    if (v466 == 1)
                    {
                      v467 = *v464;
                      v468 = *(v95 + 632);
                      *(v94 + 616) = *(v95 + 616);
                      *(v94 + 632) = v468;
                      *v463 = v467;
LABEL_301:
                      v498 = *(v95 + 81);
                      *(v94 + 656) = v95[656];
                      *(v94 + 648) = v498;
                      v499 = (v94 + 664);
                      v500 = v95 + 664;
                      v501 = *(v95 + 97);
                      if (*(v94 + 776) == 1)
                      {
                        if (v501 == 1)
                        {
                          v502 = *(v95 + 680);
                          *v499 = *v500;
                          *(v94 + 680) = v502;
                          v503 = *(v95 + 696);
                          v504 = *(v95 + 712);
                          v505 = *(v95 + 744);
                          *(v94 + 728) = *(v95 + 728);
                          *(v94 + 744) = v505;
                          *(v94 + 696) = v503;
                          *(v94 + 712) = v504;
                          v506 = *(v95 + 760);
                          v507 = *(v95 + 776);
                          v508 = *(v95 + 792);
                          *(v94 + 808) = v95[808];
                          *(v94 + 776) = v507;
                          *(v94 + 792) = v508;
                          *(v94 + 760) = v506;
                        }

                        else
                        {
                          v516 = *v500;
                          *(v94 + 672) = v95[672];
                          *v499 = v516;
                          v517 = *(v95 + 85);
                          *(v94 + 688) = v95[688];
                          *(v94 + 680) = v517;
                          *(v94 + 689) = v95[689];
                          *(v94 + 690) = v95[690];
                          *(v94 + 691) = v95[691];
                          *(v94 + 692) = v95[692];
                          *(v94 + 696) = *(v95 + 87);
                          *(v94 + 704) = *(v95 + 88);
                          *(v94 + 712) = *(v95 + 89);
                          *(v94 + 720) = *(v95 + 90);
                          *(v94 + 728) = *(v95 + 91);
                          *(v94 + 736) = *(v95 + 92);
                          *(v94 + 744) = v95[744];
                          *(v94 + 745) = v95[745];
                          *(v94 + 752) = *(v95 + 94);
                          *(v94 + 760) = *(v95 + 95);
                          *(v94 + 768) = v95[768];
                          *(v94 + 776) = *(v95 + 97);
                          v518 = *(v95 + 49);
                          *(v94 + 800) = *(v95 + 100);
                          *(v94 + 784) = v518;
                          *(v94 + 808) = v95[808];
                        }
                      }

                      else if (v501 == 1)
                      {
                        outlined destroy of AccessibilityTextLayoutProperties(v94 + 664);
                        v509 = *(v95 + 680);
                        *v499 = *v500;
                        *(v94 + 680) = v509;
                        v510 = *(v95 + 744);
                        v512 = *(v95 + 696);
                        v511 = *(v95 + 712);
                        *(v94 + 728) = *(v95 + 728);
                        *(v94 + 744) = v510;
                        *(v94 + 696) = v512;
                        *(v94 + 712) = v511;
                        v514 = *(v95 + 776);
                        v513 = *(v95 + 792);
                        v515 = *(v95 + 760);
                        *(v94 + 808) = v95[808];
                        *(v94 + 776) = v514;
                        *(v94 + 792) = v513;
                        *(v94 + 760) = v515;
                      }

                      else
                      {
                        v519 = *v500;
                        *(v94 + 672) = v95[672];
                        *v499 = v519;
                        v520 = *(v95 + 85);
                        *(v94 + 688) = v95[688];
                        *(v94 + 680) = v520;
                        *(v94 + 689) = v95[689];
                        *(v94 + 690) = v95[690];
                        *(v94 + 691) = v95[691];
                        *(v94 + 692) = v95[692];
                        *(v94 + 696) = *(v95 + 87);
                        *(v94 + 704) = *(v95 + 88);
                        *(v94 + 712) = *(v95 + 89);
                        *(v94 + 720) = *(v95 + 90);
                        *(v94 + 728) = *(v95 + 91);
                        *(v94 + 736) = *(v95 + 92);
                        *(v94 + 744) = v95[744];
                        *(v94 + 745) = v95[745];
                        *(v94 + 752) = *(v95 + 94);
                        *(v94 + 760) = *(v95 + 95);
                        *(v94 + 768) = v95[768];
                        *(v94 + 776) = *(v95 + 97);

                        v521 = *(v95 + 49);
                        *(v94 + 800) = *(v95 + 100);
                        *(v94 + 784) = v521;
                        *(v94 + 808) = v95[808];
                      }

                      *(v94 + 816) = *(v95 + 102);

                      *(v94 + 824) = *(v95 + 103);

                      *(v94 + 832) = *(v95 + 104);

                      goto LABEL_309;
                    }

                    *(v94 + 624) = v466;
                    *(v94 + 632) = *(v95 + 79);
                    (**(v466 - 8))(v94 + 600, (v95 + 600));
                  }

                  else
                  {
                    v492 = *v464;
                    v493 = *(v95 + 616);
                    *(v94 + 632) = *(v95 + 79);
                    *v463 = v492;
                    *(v94 + 616) = v493;
                  }

                  *(v94 + 640) = *(v95 + 80);

                  goto LABEL_301;
                }

                outlined destroy of PlatformItemList.Item.Accessibility(v94 + 536);
LABEL_280:
                memcpy((v94 + 536), v95 + 536, 0x130uLL);
                goto LABEL_309;
              }

              if (!v461)
              {
                goto LABEL_280;
              }

              *(v94 + 536) = *(v95 + 67);
              *(v94 + 544) = *(v95 + 68);
              *(v94 + 552) = v95[552];
              *(v94 + 560) = *(v95 + 70);
              *(v94 + 568) = v95[568];
              v469 = *(v95 + 36);
              *(v94 + 592) = v95[592];
              *(v94 + 576) = v469;
              v470 = (v94 + 600);
              v471 = (v95 + 600);
              v472 = *(v95 + 78);

              if (v472)
              {
                if (v472 == 1)
                {
                  v473 = *v471;
                  v474 = *(v95 + 632);
                  *(v94 + 616) = *(v95 + 616);
                  *(v94 + 632) = v474;
                  *v470 = v473;
LABEL_289:
                  v479 = *(v95 + 81);
                  *(v94 + 656) = v95[656];
                  *(v94 + 648) = v479;
                  v480 = (v94 + 664);
                  v481 = v95 + 664;
                  if (*(v95 + 97) == 1)
                  {
                    v482 = *(v95 + 680);
                    *v480 = *v481;
                    *(v94 + 680) = v482;
                    v483 = *(v95 + 696);
                    v484 = *(v95 + 712);
                    v485 = *(v95 + 744);
                    *(v94 + 728) = *(v95 + 728);
                    *(v94 + 744) = v485;
                    *(v94 + 696) = v483;
                    *(v94 + 712) = v484;
                    v486 = *(v95 + 760);
                    v487 = *(v95 + 776);
                    v488 = *(v95 + 792);
                    *(v94 + 808) = v95[808];
                    *(v94 + 776) = v487;
                    *(v94 + 792) = v488;
                    *(v94 + 760) = v486;
                  }

                  else
                  {
                    v489 = *v481;
                    *(v94 + 672) = v95[672];
                    *v480 = v489;
                    v490 = *(v95 + 85);
                    *(v94 + 688) = v95[688];
                    *(v94 + 680) = v490;
                    *(v94 + 689) = v95[689];
                    *(v94 + 690) = v95[690];
                    *(v94 + 691) = v95[691];
                    *(v94 + 692) = v95[692];
                    *(v94 + 696) = *(v95 + 87);
                    *(v94 + 704) = *(v95 + 88);
                    *(v94 + 712) = *(v95 + 89);
                    *(v94 + 720) = *(v95 + 90);
                    *(v94 + 728) = *(v95 + 91);
                    *(v94 + 736) = *(v95 + 92);
                    *(v94 + 744) = v95[744];
                    *(v94 + 745) = v95[745];
                    *(v94 + 752) = *(v95 + 94);
                    *(v94 + 760) = *(v95 + 95);
                    *(v94 + 768) = v95[768];
                    *(v94 + 776) = *(v95 + 97);
                    v491 = *(v95 + 49);
                    *(v94 + 800) = *(v95 + 100);
                    *(v94 + 784) = v491;
                    *(v94 + 808) = v95[808];
                  }

                  *(v94 + 816) = *(v95 + 102);
                  *(v94 + 824) = *(v95 + 103);
                  *(v94 + 832) = *(v95 + 104);

LABEL_309:
                  v522 = (v94 + 840);
                  v523 = (v95 + 840);
                  v524 = *(v94 + 864);
                  v525 = *(v95 + 108);
                  if (v524 == 1)
                  {
                    if (v525)
                    {
                      if (v525 == 1)
                      {
                        v526 = *v523;
                        v527 = *(v95 + 856);
                        v528 = *(v95 + 872);
                        *(v94 + 888) = *(v95 + 111);
                        *(v94 + 856) = v527;
                        *(v94 + 872) = v528;
                        *v522 = v526;
LABEL_315:
                        a1 = v631;
                        goto LABEL_334;
                      }

                      *(v94 + 864) = v525;
                      *(v94 + 872) = *(v95 + 109);
                      (**(v525 - 8))(v94 + 840, (v95 + 840));
                    }

                    else
                    {
                      v532 = *v523;
                      v533 = *(v95 + 856);
                      *(v94 + 872) = *(v95 + 109);
                      *v522 = v532;
                      *(v94 + 856) = v533;
                    }

                    v534 = *(v95 + 110);
                    a1 = v631;
                    if (!v534)
                    {
                      goto LABEL_333;
                    }
                  }

                  else
                  {
                    if (v525 == 1)
                    {
                      outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v94 + 840);
                      v530 = *(v95 + 856);
                      v529 = *(v95 + 872);
                      v531 = *v523;
                      *(v94 + 888) = *(v95 + 111);
                      *(v94 + 856) = v530;
                      *(v94 + 872) = v529;
                      *v522 = v531;
                      goto LABEL_315;
                    }

                    if (v524)
                    {
                      if (v525)
                      {
                        __swift_assign_boxed_opaque_existential_1((v94 + 840), v95 + 105);
                      }

                      else
                      {
                        outlined destroy of AnyNavigationLinkPresentedValue(v94 + 840);
                        v535 = *(v95 + 109);
                        v536 = *(v95 + 856);
                        *v522 = *v523;
                        *(v94 + 856) = v536;
                        *(v94 + 872) = v535;
                      }
                    }

                    else if (v525)
                    {
                      *(v94 + 864) = v525;
                      *(v94 + 872) = *(v95 + 109);
                      (**(v525 - 8))(v94 + 840, (v95 + 840));
                    }

                    else
                    {
                      v537 = *v523;
                      v538 = *(v95 + 856);
                      *(v94 + 872) = *(v95 + 109);
                      *v522 = v537;
                      *(v94 + 856) = v538;
                    }

                    v534 = *(v95 + 110);
                    a1 = v631;
                    if (*(v94 + 880))
                    {
                      if (v534)
                      {
                        v539 = *(v95 + 111);
                        *(v94 + 880) = v534;
                        *(v94 + 888) = v539;

                        goto LABEL_334;
                      }

                      goto LABEL_333;
                    }

                    if (!v534)
                    {
LABEL_333:
                      *(v94 + 880) = *(v95 + 55);
LABEL_334:
                      v541 = *(v94 + 896);
                      v542 = *(v95 + 112);
                      *(v94 + 896) = v542;
                      v543 = v542;

                      *(v94 + 904) = *(v95 + 113);
                      *(v94 + 912) = *(v95 + 114);

                      *(v94 + 920) = *(v95 + 115);
                      *(v94 + 928) = *(v95 + 116);

                      *(v94 + 936) = *(v95 + 117);

                      *(v94 + 944) = *(v95 + 118);

                      *(v94 + 952) = v95[952];
                      *(v94 + 953) = v95[953];
                      *(v94 + 954) = v95[954];
                      v544 = *(v96 + 112);
                      v545 = (v94 + v544);
                      v546 = &v95[v544];
                      v547 = type metadata accessor for CommandOperation();
                      v548 = *(v547 - 8);
                      v549 = *(v548 + 48);
                      v622 = v545;
                      v550 = v549(v545, 1, v547);
                      v551 = v549(v546, 1, v547);
                      if (v550)
                      {
                        if (!v551)
                        {
                          *v545 = *v546;
                          v557 = *(v547 + 20);
                          v558 = &v545[v557];
                          v559 = &v546[v557];
                          v561 = *&v546[v557];
                          v560 = *&v546[v557 + 8];
                          v562 = v546[v557 + 16];
                          outlined copy of Text.Storage(v561, v560, v562);
                          *v558 = v561;
                          *(v558 + 1) = v560;
                          v558[16] = v562;
                          *(v558 + 3) = *(v559 + 3);
                          v563 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v564 = type metadata accessor for UUID();
                          __dstg = *(*(v564 - 8) + 16);

                          __dstg(&v558[v563], &v559[v563], v564);
                          v565 = *(v547 + 24);
                          v566 = &v622[v565];
                          v567 = &v546[v565];
                          if (*v567)
                          {
                            v568 = *(v567 + 1);
                            *v566 = *v567;
                            *(v566 + 1) = v568;
                          }

                          else
                          {
                            *v566 = *v567;
                          }

                          a1 = v631;
                          v556 = v625;
                          a2 = v628;
                          (*(v548 + 56))(v622, 0, 1, v547);
                          goto LABEL_347;
                        }

                        _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        v553 = *(*(v552 - 8) + 64);
                        v554 = v545;
                      }

                      else
                      {
                        if (!v551)
                        {
                          v617 = v546;
                          *v545 = *v546;
                          v569 = *(v547 + 20);
                          v570 = &v545[v569];
                          v571 = &v546[v569];
                          v573 = *&v546[v569];
                          v572 = *&v546[v569 + 8];
                          v574 = v546[v569 + 16];
                          outlined copy of Text.Storage(*v571, *(v571 + 1), v571[16]);
                          v575 = *v570;
                          v576 = *(v570 + 1);
                          v577 = v570[16];
                          *v570 = v573;
                          *(v570 + 1) = v572;
                          v570[16] = v574;
                          outlined consume of Text.Storage(v575, v576, v577);
                          *(v570 + 3) = *(v571 + 3);

                          v578 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v579 = type metadata accessor for UUID();
                          (*(*(v579 - 8) + 24))(&v570[v578], &v571[v578], v579);
                          v580 = *(v547 + 24);
                          v581 = &v545[v580];
                          v582 = &v617[v580];
                          v583 = *&v545[v580];
                          v584 = *&v617[v580];
                          if (v583)
                          {
                            v556 = v625;
                            a2 = v628;
                            v4 = v634;
                            if (v584)
                            {
                              v585 = *(v582 + 1);
                              *v581 = v584;
                              *(v581 + 1) = v585;

LABEL_348:
                              *(v94 + v556[29]) = v95[v556[29]];
                              *(v94 + v556[30]) = v95[v556[30]];
                              *(v94 + v556[31]) = v95[v556[31]];
                              *(v94 + v556[32]) = v95[v556[32]];
                              *(v94 + v556[33]) = v95[v556[33]];
                              *(v94 + v556[34]) = *&v95[v556[34]];

                              goto LABEL_349;
                            }
                          }

                          else
                          {
                            v556 = v625;
                            a2 = v628;
                            v4 = v634;
                            if (v584)
                            {
                              v586 = *(v582 + 1);
                              *v581 = v584;
                              *(v581 + 1) = v586;

                              goto LABEL_348;
                            }
                          }

                          *v581 = *v582;
                          goto LABEL_348;
                        }

                        _s7SwiftUI16CommandOperationVWOhTm_2(v545, type metadata accessor for CommandOperation);
                        _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        v553 = *(*(v555 - 8) + 64);
                        v554 = v545;
                      }

                      memcpy(v554, v546, v553);
                      v556 = v625;
                      a2 = v628;
LABEL_347:
                      v4 = v634;
                      goto LABEL_348;
                    }
                  }

                  v540 = *(v95 + 111);
                  *(v94 + 880) = v534;
                  *(v94 + 888) = v540;

                  goto LABEL_334;
                }

                *(v94 + 624) = v472;
                *(v94 + 632) = *(v95 + 79);
                (**(v472 - 8))(v94 + 600, (v95 + 600), v472);
              }

              else
              {
                v477 = *v471;
                v478 = *(v95 + 616);
                *(v94 + 632) = *(v95 + 79);
                *v470 = v477;
                *(v94 + 616) = v478;
              }

              *(v94 + 640) = *(v95 + 80);

              goto LABEL_289;
            }
          }

          else if (v452)
          {
LABEL_258:
            v457 = *(v95 + 57);
            *(v94 + 448) = v452;
            *(v94 + 456) = v457;

            goto LABEL_261;
          }

LABEL_260:
          *(v94 + 448) = *(v95 + 28);
          goto LABEL_261;
        }

        if (!v385)
        {
          outlined destroy of Image.NamedResolved(v94 + 256);
          v393 = *(v95 + 17);
          v392 = *(v95 + 18);
          *(v94 + 256) = *(v95 + 16);
          *(v94 + 272) = v393;
          *(v94 + 288) = v392;
          goto LABEL_220;
        }

        *(v94 + 256) = *(v95 + 32);
        *(v94 + 264) = *(v95 + 33);

        v386 = *(v94 + 272);
        v387 = *(v95 + 34);
        if (v386 >= 2)
        {
          if (v387 >= 2)
          {
            *(v94 + 272) = v387;
            v396 = v387;

            goto LABEL_219;
          }

          v387 = *(v95 + 34);
        }

        else if (v387 >= 2)
        {
          *(v94 + 272) = v387;
          v388 = v387;
LABEL_219:
          v397 = *(v95 + 70);
          *(v94 + 284) = v95[284];
          *(v94 + 280) = v397;
          *(v94 + 285) = v95[285];
          *(v94 + 286) = v95[286];
          *(v94 + 288) = *(v95 + 36);

          *(v94 + 296) = *(v95 + 37);

          goto LABEL_220;
        }

        *(v94 + 272) = v387;
        goto LABEL_219;
      }

      outlined destroy of PlatformItemCollection(v72 + 16);
    }

    v86 = v73[24];
    *(v72 + 16) = *(v73 + 2);
    *(v72 + 24) = v86;
    goto LABEL_61;
  }

  if (!v8)
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v9 = *(a2 + 5);

    if (v9)
    {
      v10 = *(a2 + 2);
      v11 = *(a2 + 3);
      v12 = a2[32];
      outlined copy of Text.Storage(v10, v11, v12);
      *(a1 + 2) = v10;
      *(a1 + 3) = v11;
      a1[32] = v12;
      *(a1 + 5) = *(a2 + 5);
    }

    else
    {
      v23 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v23;
    }

    v24 = *(a2 + 6);
    if (v24 != 1)
    {
    }

    *(a1 + 6) = v24;
    a1[56] = a2[56];
    *(a1 + 8) = *(a2 + 8);
    a1[72] = a2[72];
    v25 = *(v4 + 24);
    v26 = &a1[v25];
    v27 = &a2[v25];
    v28 = a2[v25 + 8];

    if (v28 == 255)
    {
      v30 = *v27;
      v26[8] = v27[8];
      *v26 = v30;
    }

    else
    {
      v29 = *v27;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v27, v28 & 1);
      *v26 = v29;
      v26[8] = v28 & 1;
    }

    v31 = v27[24];
    v632 = v4;
    if (v31 == 254 || v31 == 255)
    {
      v32 = *(v27 + 2);
      v26[24] = v27[24];
      *(v26 + 2) = v32;
    }

    else
    {
      v33 = *(v27 + 2);
      v34 = v31 & 1;
      outlined copy of PlatformItemCollection.Storage(v33, v31 & 1);
      *(v26 + 2) = v33;
      v26[24] = v34;
    }

    swift_unknownObjectWeakCopyInit();
    *(v26 + 5) = *(v27 + 5);
    v35 = *(v27 + 6);
    *(v26 + 6) = v35;
    v36 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v37 = &v26[v36];
    v38 = &v27[v36];
    v39 = type metadata accessor for PlatformItemList.Item();
    v40 = *(v39 - 8);
    v41 = v40[6];
    v42 = v35;
    if (v41(v38, 1, v39))
    {
      _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v37, v38, *(*(v43 - 8) + 64));
LABEL_123:
      *&a1[*(v632 + 28)] = *&a2[*(v632 + 28)];
      (*(v5 + 56))(a1, 0, 1);
      return a1;
    }

    v612 = v40;
    v618 = v5;
    v629 = a1;
    v44 = *v38;
    *v37 = *v38;
    v45 = *(v38 + 1);
    *(v37 + 1) = v45;
    *(v37 + 2) = *(v38 + 2);
    *(v37 + 3) = *(v38 + 3);
    v37[32] = v38[32];
    *(v37 + 5) = *(v38 + 5);
    *(v37 + 6) = *(v38 + 6);
    v37[56] = v38[56];
    v46 = *(v38 + 24);
    v47 = v44;
    v48 = v45;

    if (v46 >> 1 == 4294967294)
    {
      v49 = *(v38 + 4);
      v50 = *(v38 + 5);
      v51 = *(v38 + 7);
      *(v37 + 6) = *(v38 + 6);
      *(v37 + 7) = v51;
      *(v37 + 4) = v49;
      *(v37 + 5) = v50;
      v52 = *(v38 + 8);
      v53 = *(v38 + 9);
      v54 = *(v38 + 11);
      *(v37 + 10) = *(v38 + 10);
      *(v37 + 11) = v54;
      *(v37 + 8) = v52;
      *(v37 + 9) = v53;
      v55 = *(v38 + 12);
      v56 = *(v38 + 13);
      v57 = *(v38 + 14);
      *(v37 + 235) = *(v38 + 235);
      *(v37 + 13) = v56;
      *(v37 + 14) = v57;
      *(v37 + 12) = v55;
      if (*(v38 + 33))
      {
LABEL_27:
        *(v37 + 32) = *(v38 + 32);
        *(v37 + 33) = *(v38 + 33);
        v58 = *(v38 + 34);

        if (v58 >= 2)
        {
          v59 = v58;
        }

        *(v37 + 34) = v58;
        v60 = *(v38 + 70);
        v37[284] = v38[284];
        *(v37 + 70) = v60;
        v37[285] = v38[285];
        v37[286] = v38[286];
        *(v37 + 36) = *(v38 + 36);
        *(v37 + 37) = *(v38 + 37);

LABEL_79:
        v151 = *(v38 + 42);
        v624 = v39;
        v626 = a2;
        if (v151 >> 2 == 0xFFFFFFFF)
        {
          v152 = *(v38 + 19);
          v153 = *(v38 + 21);
          *(v37 + 20) = *(v38 + 20);
          *(v37 + 21) = v153;
          *(v37 + 19) = v152;
          v154 = *(v38 + 22);
          v155 = *(v38 + 23);
          v156 = *(v38 + 24);
          *(v37 + 50) = *(v38 + 50);
          *(v37 + 23) = v155;
          *(v37 + 24) = v156;
          *(v37 + 22) = v154;
        }

        else
        {
          v157 = *(v38 + 38);
          v158 = *(v38 + 39);
          v160 = *(v38 + 40);
          v159 = *(v38 + 41);
          v161 = *(v38 + 43);
          v162 = *(v38 + 44);
          v163 = *(v38 + 45);
          v587 = *(v38 + 46);
          v588 = *(v38 + 47);
          v591 = *(v38 + 48);
          v597 = *(v38 + 49);
          __dstb = *(v38 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v157, v158, v160, v159, v151, v161, v162, v163, v587, v588, v591, v597, __dstb);
          *(v37 + 38) = v157;
          *(v37 + 39) = v158;
          *(v37 + 40) = v160;
          *(v37 + 41) = v159;
          *(v37 + 42) = v151;
          *(v37 + 43) = v161;
          *(v37 + 44) = v162;
          *(v37 + 45) = v163;
          *(v37 + 46) = v587;
          *(v37 + 47) = v588;
          *(v37 + 48) = v591;
          *(v37 + 49) = v597;
          *(v37 + 50) = __dstb;
        }

        if (*(v38 + 52) == 1)
        {
          *(v37 + 408) = *(v38 + 408);
          v164 = *(v38 + 424);
          v165 = *(v38 + 440);
          v166 = *(v38 + 456);
          v37[472] = v38[472];
          *(v37 + 440) = v165;
          *(v37 + 456) = v166;
          *(v37 + 424) = v164;
          goto LABEL_94;
        }

        v37[408] = v38[408];
        v37[409] = v38[409];
        v37[410] = v38[410];
        v37[411] = v38[411];
        v37[412] = v38[412];
        v167 = *(v38 + 52);
        if (v167)
        {
          v168 = *(v38 + 53);
          *(v37 + 52) = v167;
          *(v37 + 53) = v168;

          v169 = *(v38 + 54);
          if (v169)
          {
            goto LABEL_86;
          }
        }

        else
        {
          *(v37 + 26) = *(v38 + 26);
          v169 = *(v38 + 54);
          if (v169)
          {
LABEL_86:
            v170 = *(v38 + 55);
            *(v37 + 54) = v169;
            *(v37 + 55) = v170;

            v171 = *(v38 + 56);
            if (v171)
            {
LABEL_87:
              v172 = *(v38 + 57);
              *(v37 + 56) = v171;
              *(v37 + 57) = v172;

LABEL_93:
              *(v37 + 58) = *(v38 + 58);
              v37[472] = v38[472];
LABEL_94:
              *(v37 + 60) = *(v38 + 60);
              *(v37 + 61) = *(v38 + 61);
              *(v37 + 62) = *(v38 + 62);
              v37[504] = v38[504];
              v175 = *(v38 + 64);

              if (v175)
              {
                v176 = *(v38 + 65);
                *(v37 + 64) = v175;
                *(v37 + 65) = v176;
              }

              else
              {
                *(v37 + 32) = *(v38 + 32);
              }

              v37[528] = v38[528];
              if (!*(v38 + 102))
              {
                memcpy(v37 + 536, v38 + 536, 0x130uLL);
                goto LABEL_109;
              }

              *(v37 + 67) = *(v38 + 67);
              *(v37 + 68) = *(v38 + 68);
              v37[552] = v38[552];
              *(v37 + 70) = *(v38 + 70);
              v37[568] = v38[568];
              v177 = *(v38 + 36);
              v37[592] = v38[592];
              *(v37 + 36) = v177;
              v178 = v37 + 600;
              v179 = (v38 + 600);
              v180 = *(v38 + 78);

              if (v180)
              {
                if (v180 == 1)
                {
                  v181 = *v179;
                  v182 = *(v38 + 632);
                  *(v37 + 616) = *(v38 + 616);
                  *(v37 + 632) = v182;
                  *v178 = v181;
LABEL_105:
                  v185 = *(v38 + 81);
                  v37[656] = v38[656];
                  *(v37 + 81) = v185;
                  v186 = v37 + 664;
                  v187 = v38 + 664;
                  if (*(v38 + 97) == 1)
                  {
                    v188 = *(v38 + 680);
                    *v186 = *v187;
                    *(v37 + 680) = v188;
                    v189 = *(v38 + 696);
                    v190 = *(v38 + 712);
                    v191 = *(v38 + 744);
                    *(v37 + 728) = *(v38 + 728);
                    *(v37 + 744) = v191;
                    *(v37 + 696) = v189;
                    *(v37 + 712) = v190;
                    v192 = *(v38 + 760);
                    v193 = *(v38 + 776);
                    v194 = *(v38 + 792);
                    v37[808] = v38[808];
                    *(v37 + 776) = v193;
                    *(v37 + 792) = v194;
                    *(v37 + 760) = v192;
                  }

                  else
                  {
                    v195 = *v187;
                    v37[672] = v38[672];
                    *v186 = v195;
                    v196 = *(v38 + 85);
                    v37[688] = v38[688];
                    *(v37 + 85) = v196;
                    v37[689] = v38[689];
                    v37[690] = v38[690];
                    v37[691] = v38[691];
                    v37[692] = v38[692];
                    *(v37 + 87) = *(v38 + 87);
                    *(v37 + 88) = *(v38 + 88);
                    *(v37 + 89) = *(v38 + 89);
                    *(v37 + 90) = *(v38 + 90);
                    *(v37 + 91) = *(v38 + 91);
                    *(v37 + 92) = *(v38 + 92);
                    v37[744] = v38[744];
                    v37[745] = v38[745];
                    *(v37 + 94) = *(v38 + 94);
                    *(v37 + 95) = *(v38 + 95);
                    v37[768] = v38[768];
                    *(v37 + 97) = *(v38 + 97);
                    v197 = *(v38 + 49);
                    *(v37 + 100) = *(v38 + 100);
                    *(v37 + 49) = v197;
                    v37[808] = v38[808];
                  }

                  *(v37 + 102) = *(v38 + 102);
                  *(v37 + 103) = *(v38 + 103);
                  *(v37 + 104) = *(v38 + 104);

LABEL_109:
                  v198 = v37 + 840;
                  v199 = (v38 + 840);
                  v200 = *(v38 + 108);
                  if (v200)
                  {
                    if (v200 == 1)
                    {
                      v201 = *v199;
                      v202 = *(v38 + 856);
                      v203 = *(v38 + 872);
                      *(v37 + 111) = *(v38 + 111);
                      *(v37 + 856) = v202;
                      *(v37 + 872) = v203;
                      *v198 = v201;
LABEL_116:
                      v208 = *(v38 + 112);
                      *(v37 + 112) = v208;
                      *(v37 + 113) = *(v38 + 113);
                      *(v37 + 114) = *(v38 + 114);
                      *(v37 + 115) = *(v38 + 115);
                      *(v37 + 116) = *(v38 + 116);
                      *(v37 + 117) = *(v38 + 117);
                      *(v37 + 118) = *(v38 + 118);
                      v37[952] = v38[952];
                      v37[953] = v38[953];
                      v37[954] = v38[954];
                      v209 = v624[28];
                      __dst = &v37[v209];
                      v210 = &v38[v209];
                      v211 = type metadata accessor for CommandOperation();
                      v592 = *(v211 - 8);
                      v598 = *(v592 + 48);
                      v212 = v208;
                      v213 = v210;

                      if (v598(v210, 1, v211))
                      {
                        _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v210, *(*(v214 - 8) + 64));
                        a1 = v629;
                        v215 = v624;
                        a2 = v626;
                        v216 = v612;
                        v5 = v618;
                      }

                      else
                      {
                        *__dst = *v210;
                        v217 = *(v211 + 20);
                        v218 = v211;
                        v219 = &__dst[v217];
                        v220 = &v213[v217];
                        v599 = v213;
                        v221 = *&v213[v217];
                        v222 = *(v220 + 1);
                        v223 = v220[16];
                        outlined copy of Text.Storage(v221, v222, v223);
                        *v219 = v221;
                        *(v219 + 1) = v222;
                        v219[16] = v223;
                        *(v219 + 3) = *(v220 + 3);
                        v224 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v225 = type metadata accessor for UUID();
                        v589 = *(*(v225 - 8) + 16);

                        v589(&v219[v224], &v220[v224], v225);
                        v226 = *(v218 + 24);
                        v227 = &__dst[v226];
                        v228 = &v599[v226];
                        if (*v228)
                        {
                          v229 = *(v228 + 1);
                          *v227 = *v228;
                          *(v227 + 1) = v229;
                        }

                        else
                        {
                          *v227 = *v228;
                        }

                        a1 = v629;
                        v215 = v624;
                        a2 = v626;
                        v216 = v612;
                        v5 = v618;
                        (*(v592 + 56))(__dst, 0, 1, v218);
                      }

                      v37[v215[29]] = v38[v215[29]];
                      v37[v215[30]] = v38[v215[30]];
                      v37[v215[31]] = v38[v215[31]];
                      v37[v215[32]] = v38[v215[32]];
                      v37[v215[33]] = v38[v215[33]];
                      *&v37[v215[34]] = *&v38[v215[34]];
                      v230 = v216[7];

                      v230(v37, 0, 1, v215);
                      goto LABEL_123;
                    }

                    *(v37 + 108) = v200;
                    *(v37 + 109) = *(v38 + 109);
                    (**(v200 - 8))(v198, v199);
                    v206 = *(v38 + 110);
                    if (!v206)
                    {
LABEL_115:
                      *(v37 + 55) = *(v38 + 55);
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    v204 = *v199;
                    v205 = *(v38 + 856);
                    *(v37 + 109) = *(v38 + 109);
                    *v198 = v204;
                    *(v37 + 856) = v205;
                    v206 = *(v38 + 110);
                    if (!v206)
                    {
                      goto LABEL_115;
                    }
                  }

                  v207 = *(v38 + 111);
                  *(v37 + 110) = v206;
                  *(v37 + 111) = v207;

                  goto LABEL_116;
                }

                *(v37 + 78) = v180;
                *(v37 + 79) = *(v38 + 79);
                (**(v180 - 8))((v37 + 600), (v38 + 600), v180);
              }

              else
              {
                v183 = *v179;
                v184 = *(v38 + 616);
                *(v37 + 79) = *(v38 + 79);
                *v178 = v183;
                *(v37 + 616) = v184;
              }

              *(v37 + 80) = *(v38 + 80);

              goto LABEL_105;
            }

LABEL_92:
            *(v37 + 28) = *(v38 + 28);
            goto LABEL_93;
          }
        }

        *(v37 + 27) = *(v38 + 27);
        v171 = *(v38 + 56);
        if (v171)
        {
          goto LABEL_87;
        }

        goto LABEL_92;
      }
    }

    else
    {
      v64 = v38[72];
      if (v64 == 255)
      {
        v136 = *(v38 + 8);
        v37[72] = v38[72];
        *(v37 + 8) = v136;
      }

      else
      {
        v65 = *(v38 + 8);
        outlined copy of GraphicsImage.Contents(v65, v38[72]);
        *(v37 + 8) = v65;
        v37[72] = v64;
      }

      *(v37 + 10) = *(v38 + 10);
      *(v37 + 88) = *(v38 + 88);
      v37[104] = v38[104];
      v137 = *(v38 + 108);
      *(v37 + 121) = *(v38 + 121);
      *(v37 + 108) = v137;
      v138 = *(v38 + 136);
      v139 = *(v38 + 152);
      v37[168] = v38[168];
      *(v37 + 152) = v139;
      *(v37 + 136) = v138;
      v37[169] = v38[169];
      v37[170] = v38[170];
      v37[171] = v38[171];
      v140 = *(v38 + 24);
      if (v140 >> 1 == 0xFFFFFFFF)
      {
        v141 = *(v38 + 12);
        *(v37 + 11) = *(v38 + 11);
        *(v37 + 12) = v141;
      }

      else
      {
        v142 = *(v38 + 22);
        v143 = *(v38 + 23);
        v144 = a2;
        v145 = *(v38 + 25);
        outlined copy of AccessibilityImageLabel(v142, v143, *(v38 + 24));
        *(v37 + 22) = v142;
        *(v37 + 23) = v143;
        *(v37 + 24) = v140;
        *(v37 + 25) = v145;
        a2 = v144;
      }

      *(v37 + 26) = *(v38 + 26);
      *(v37 + 27) = *(v38 + 27);
      v37[224] = v38[224];
      v37[225] = v38[225];
      v146 = *(v38 + 57);
      v37[232] = v38[232];
      *(v37 + 57) = v146;
      v147 = *(v38 + 30);
      *(v37 + 30) = v147;
      *(v37 + 124) = *(v38 + 124);
      v37[250] = v38[250];
      swift_unknownObjectRetain();

      v148 = v147;
      if (*(v38 + 33))
      {
        goto LABEL_27;
      }
    }

    v149 = *(v38 + 16);
    v150 = *(v38 + 18);
    *(v37 + 17) = *(v38 + 17);
    *(v37 + 18) = v150;
    *(v37 + 16) = v149;
    goto LABEL_79;
  }

LABEL_7:
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  v14 = *(*(v13 - 8) + 64);

  return memcpy(a1, a2, v14);
}