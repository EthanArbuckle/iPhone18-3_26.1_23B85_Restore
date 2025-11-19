void (*protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice5<A, B, C, D, E>(uint64_t *a1, unint64_t a2, unint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  v8 = v7;
  *a1 = v7;
  swift_getAssociatedTypeWitness();
  *v8 = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[1] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[2] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[3] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[4] = type metadata accessor for Optional();
  v8[5] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8[10] = TupleTypeMetadata;
  v10 = *(TupleTypeMetadata - 1);
  v8[11] = v10;
  if (v6)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v12 = v11;
  v8[12] = v11;
  v13 = AttributedString.Runs.AttributesSlice5.subscript.read(v8 + 6, a2, a3);
  v15 = v14;
  v17 = v16;
  v8[13] = v13;
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[2];
  __src = v18[3];
  v22 = type metadata accessor for Optional();
  (*(*(v22 - 8) + 16))(v12, v15, v22);
  v23 = TupleTypeMetadata[12];
  v24 = type metadata accessor for Optional();
  (*(*(v24 - 8) + 16))(v12 + v23, v17, v24);
  v25 = TupleTypeMetadata[16];
  v26 = type metadata accessor for Optional();
  (*(*(v26 - 8) + 16))(v12 + v25, v20, v26);
  v27 = TupleTypeMetadata[20];
  v28 = type metadata accessor for Optional();
  (*(*(v28 - 8) + 16))(v12 + v27, v19, v28);
  v29 = TupleTypeMetadata[24];
  v30 = type metadata accessor for Optional();
  (*(*(v30 - 8) + 16))(v12 + v29, v21, v30);
  memmove((v12 + TupleTypeMetadata[28]), __src, 0x50uLL);
  return protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice5<A, B, C, D, E>;
}

void protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice5<A, B, C, D, E>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 48;
  (*(*(*a1 + 88) + 8))(*(*a1 + 96), *(*a1 + 80));
  v5 = *(v3 + 96);
  (*(v3 + 104))(v4, a2);
  free(v5);

  free(v3);
}

void (*AttributedString.Runs.AttributesSlice5.subscript.read(uint64_t *a1, unint64_t a2, unint64_t a3))(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  v8 = v7;
  *a1 = v7;
  swift_getAssociatedTypeWitness();
  *v8 = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[1] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[2] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[3] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[4] = type metadata accessor for Optional();
  v8[5] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8[10] = TupleTypeMetadata;
  v10 = *(TupleTypeMetadata - 1);
  v8[11] = v10;
  if (v6)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v8[12] = v11;
  v12 = TupleTypeMetadata[12];
  v13 = v11 + TupleTypeMetadata[16];
  v14 = v11 + TupleTypeMetadata[20];
  v15 = v11 + TupleTypeMetadata[24];
  v16 = v11 + TupleTypeMetadata[28];
  AttributedString.Runs.AttributesSlice5.subscript.getter(v11, v11 + v12, v13, v14, v15, v16, a2, a3);
  v8[6] = v13;
  v8[7] = v14;
  v17 = v8 + 6;
  v17[2] = v15;
  v17[3] = v16;
  return AttributedString.Runs.AttributesSlice5.subscript.read;
}

void AttributedString.Runs.AttributesSlice5.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  (*(*(*a1 + 88) + 8))(v2, *(*a1 + 80));
  free(v2);

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance AttributedString.Runs.AttributesSlice5<A, B, C, D, E>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AttributedString.Runs.AttributesSlice5<A, B, C, D, E>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:limitedBy:)();
}

void protocol witness for Collection.distance(from:to:) in conformance AttributedString.Runs.AttributesSlice5<A, B, C, D, E>()
{
  swift_getWitnessTable();

  JUMPOUT(0x1865CAD30);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance AttributedString.Runs.AttributesSlice1<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return a4(v7);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance AttributedString.Runs.AttributesSlice5<A, B, C, D, E>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

Swift::Int AttributedString.Runs.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t **a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v67 = a8;
  v71 = a9;
  v70 = a11;
  v69 = a10;
  v16 = *a1;
  v17 = *a2;
  v18 = *a3;
  v68 = *a4;
  v72 = *a5;
  v19 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v12, v21, type metadata accessor for AttributedString.Runs);
  v64 = v21;
  outlined init with copy of AttributedString.Runs(v21, a9, type metadata accessor for AttributedString.Runs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18121D6C0;
  v23 = MEMORY[0x1E69E77B0];
  v24 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v66 = a6;
  *(v22 + 32) = (*(a6 + 24))(v24, a6);
  *(v22 + 40) = v25;
  v26 = *(v17 + *v23 + 8);
  v27 = *(a7 + 24);
  v65 = a7;
  *(v22 + 48) = v27(v26, a7);
  *(v22 + 56) = v28;
  v29 = *(v18 + *v23 + 8);
  v30 = v67;
  *(v22 + 64) = (*(v67 + 24))(v29, v67);
  *(v22 + 72) = v31;
  v32 = *(v68 + *v23 + 8);
  v33 = v69;
  *(v22 + 80) = (*(v69 + 24))(v32, v69);
  *(v22 + 88) = v34;
  v35 = *(v72 + *v23 + 8);
  v74[8] = v24;
  v74[9] = v26;
  v74[10] = v29;
  v74[11] = v32;
  v36 = v66;
  v74[12] = v35;
  v74[13] = v66;
  v74[14] = a7;
  v74[15] = v30;
  v37 = v70;
  v74[16] = v33;
  v74[17] = v70;
  v68 = type metadata accessor for AttributedString.Runs.AttributesSlice5();
  *(v71 + *(v68 + 100)) = v22;
  v38 = *(v36 + 32);
  v72 = &v73;
  v38(v24, v36);
  (*(v65 + 32))(v74, v26);
  (*(v30 + 32))(v29, v30);
  (*(v33 + 32))(v32, v33);
  (*(v37 + 32))(v35, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v39 = static _SetStorage.allocate(capacity:)();
  v40 = 0;
  v41 = v39 + 56;
  while (1)
  {
    v44 = &v72[2 * v40];
    v45 = *v44;
    v46 = v44[1];
    Hasher.init(_seed:)();
    if (v46 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v46)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    result = Hasher._finalize()();
    v48 = ~(-1 << *(v39 + 32));
    v49 = result & v48;
    v50 = (result & v48) >> 6;
    v51 = *(v41 + 8 * v50);
    v52 = 1 << (result & v48);
    if ((v52 & v51) == 0)
    {
      break;
    }

    while (1)
    {
      v53 = (*(v39 + 48) + 16 * v49);
      v54 = *v53;
      v55 = v53[1];
      if (v55 == 1)
      {
        if (v46 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v53, 1);
          v42 = v54;
          v43 = 1;
          goto LABEL_2;
        }

LABEL_14:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v53, v53[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v45, v46);
        outlined consume of AttributedString.AttributeRunBoundaries?(v54, v55);
        v56 = v45;
        v57 = v46;
LABEL_15:
        result = outlined consume of AttributedString.AttributeRunBoundaries?(v56, v57);
        goto LABEL_16;
      }

      if (v46 == 1)
      {
        goto LABEL_14;
      }

      if (!v55)
      {
        break;
      }

      if (!v46)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v53, v53[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v45, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v54, v55);

        v56 = v54;
        v57 = v55;
        goto LABEL_15;
      }

      if (v54 == v45 && v55 == v46)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v45, v46);
        outlined copy of AttributedString.AttributeRunBoundaries?(v45, v46);

LABEL_33:
        v42 = v45;
        v43 = v46;
        goto LABEL_2;
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v54, v55);
      outlined copy of AttributedString.AttributeRunBoundaries?(v45, v46);
      outlined copy of AttributedString.AttributeRunBoundaries?(v54, v55);

      if (v59)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v45, v46);
        v45 = v54;
        v46 = v55;
        goto LABEL_33;
      }

      result = outlined consume of AttributedString.AttributeRunBoundaries?(v54, v55);
LABEL_16:
      v49 = (v49 + 1) & v48;
      v50 = v49 >> 6;
      v51 = *(v41 + 8 * (v49 >> 6));
      v52 = 1 << v49;
      if ((v51 & (1 << v49)) == 0)
      {
        goto LABEL_29;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v53, 0);
    if (v46)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v45, v46);

      v56 = v54;
      v57 = 0;
      goto LABEL_15;
    }

    swift_bridgeObjectRelease_n();
    v42 = v54;
    v43 = 0;
LABEL_2:
    outlined consume of AttributedString.AttributeRunBoundaries?(v42, v43);
LABEL_3:
    if (++v40 == 5)
    {
      outlined destroy of AttributedString.Runs(v64, type metadata accessor for AttributedString.Runs);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
      result = swift_arrayDestroy();
      *(v71 + *(v68 + 104)) = v39;
      return result;
    }
  }

LABEL_29:
  *(v41 + 8 * v50) = v51 | v52;
  v60 = (*(v39 + 48) + 16 * v49);
  *v60 = v45;
  v60[1] = v46;
  v61 = *(v39 + 16);
  v62 = __OFADD__(v61, 1);
  v63 = v61 + 1;
  if (!v62)
  {
    *(v39 + 16) = v63;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void AttributedString.Runs.NSAttributesSlice.startIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 88);
    v4 = *(*v1 + 16);
    *a1 = *(v1 + 72);
    *(a1 + 16) = v3;
    *(a1 + 24) = v2;
    *(a1 + 32) = v4;
  }
}

uint64_t AttributedString.Runs.NSAttributesSlice.Iterator.next()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = 0;
  v129 = *MEMORY[0x1E69E9840];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v108 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v6 = &v98 - v5;
  v7 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v7);
  v116 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v111 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v98 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v98 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v98 - v17;
  v110 = (v2 + *(v19 + 28));
  v20 = *v110;
  outlined init with copy of AttributedString.Runs(v2, &v98 - v17, type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator);
  if (*(v18 + 26) == 2)
  {
    __break(1u);
  }

  v21 = *(v18 + 23);
  result = outlined destroy of AttributedString.Runs(v18, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  v109 = v20;
  v23 = v20 >> 10;
  if (v23 == v21 >> 10)
  {
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    return result;
  }

  v112 = 0;
  v102 = a1;
  v103 = v2;
  outlined init with copy of AttributedString.Runs(v2, v15, type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator);
  outlined init with copy of AttributedString.Runs(v15, v116, type metadata accessor for AttributedString.Runs);
  outlined destroy of AttributedString.Runs(v15, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  v24 = v110[1];
  v105 = v110[2];
  *&v106 = v24;
  v104 = v110[3];
  v25 = *(v7 + 24);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  *&v114 = v25;
  RangeSet.ranges.getter();
  v26 = v115;
  v27 = RangeSet.Ranges.count.getter();
  v28 = *(v108 + 8);
  v28(v6, v26);
  if (v27 < 1)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v26 = 0;
  v2 = v115;
  while (1)
  {
    if (__OFADD__(v26, v27))
    {
      goto LABEL_57;
    }

    v4 = (v26 + v27) / 2;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v28(v6, v2);
    if (v23 >= v118 >> 10)
    {
      break;
    }

LABEL_7:
    v27 = v4;
    if (v26 >= v4)
    {
      goto LABEL_56;
    }
  }

  v26 = v120;
  if (v23 >= v120 >> 10)
  {
    v26 = v4 + 1;
    v4 = v27;
    goto LABEL_7;
  }

  v29 = *v116;
  AttributedString.Guts.findRun(at:)(v109, v104, &v118);
  v30 = *(&v118 + 1);
  v31 = v118;
  v32 = v119;
  v115 = *(&v120 + 1);
  v6 = *(v29 + 72);
  v33 = *(v29 + 80);
  v4 = *(v29 + 88);
  v34 = *(v29 + 96);
  swift_unknownObjectRetain();
  v35 = specialized Rope.subscript.getter(v31, v30, v32, v6, v33, v4, v34);
  v2 = v36;
  v27 = v37;
  swift_unknownObjectRelease();
  v38 = v35 + (v115 >> 11);
  if (__OFADD__(v35, v115 >> 11))
  {
    goto LABEL_61;
  }

  if ((v26 >> 11) < v38)
  {
    v38 = v26 >> 11;
  }

  v39 = *(v29 + 40);
  v126 = *(v29 + 24);
  v127 = v39;
  v128 = *(v29 + 56);
  if (__OFSUB__(v38, v109 >> 11))
  {
    goto LABEL_62;
  }

  v26 = v29;
  swift_unknownObjectRetain();
  BigString.UTF8View.index(_:offsetBy:)();
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.Runs(v116, type metadata accessor for AttributedString.Runs);
  v40 = v103;
  v41 = v107;
  outlined init with copy of AttributedString.Runs(v103, v107, type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator);
  v42 = v110;
  v43 = v110[4];
  v44 = *(v110 + 1);
  v123[0] = *v110;
  v123[1] = v44;
  v124 = v43;
  AttributedString.Runs.NSAttributesSlice.index(after:)(v123, &v118);
  outlined destroy of AttributedString.Runs(v41, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  v45 = v42;
  v6 = v118;
  if (v118 >> 10 < *v45 >> 10)
  {
    goto LABEL_63;
  }

  v114 = *v45;
  v4 = *(&v118 + 1);
  v47 = v119;
  v46 = v120;
  v106 = *(v45 + 1);
  v107 = v45[4];
  v108 = v120;
  *v45 = v118;
  v45[1] = v4;
  *(v45 + 1) = v47;
  v109 = *(&v47 + 1);
  v45[4] = v46;
  v48 = v111;
  v49 = outlined init with copy of AttributedString.Runs(v40, v111, type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator);
  v110 = &v98;
  MEMORY[0x1EEE9AC00](v49);
  *(&v98 - 2) = v48;
  MEMORY[0x1EEE9AC00](v50);
  *(&v98 - 2) = partial apply for closure #1 in AttributedString.Runs.NSAttributesSlice.buildContainer(from:);
  *(&v98 - 1) = v52;
  v53 = *(v2 + 32);
  v98 = ((1 << v53) + 63) >> 6;
  v113 = v47;
  if ((v53 & 0x3Fu) > 0xD)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v103 = v6;
    v104 = v27;
    v105 = v26;
    v100 = &v98;
    v101 = v4;
    MEMORY[0x1EEE9AC00](v51);
    v99 = (&v98 - ((v54 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v99, v54);
    v115 = 0;
    v116 = v2;
    v4 = 0;
    v26 = (v2 + 8);
    v55 = 1 << *(v2 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & v2[8];
    v58 = (v55 + 63) >> 6;
    while (1)
    {
      if (!v57)
      {
        v60 = v4;
        v27 = v123;
        v2 = v116;
        while (1)
        {
          v4 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_58;
          }

          if (v4 >= v58)
          {
            goto LABEL_31;
          }

          v61 = *(v26 + 8 * v4);
          ++v60;
          if (v61)
          {
            v57 = (v61 - 1) & v61;
            v27 = __clz(__rbit64(v61)) | (v4 << 6);
            goto LABEL_27;
          }
        }
      }

      v59 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v27 = v59 | (v4 << 6);
      v2 = v116;
LABEL_27:
      v62 = (v2[6] + 16 * v27);
      v64 = *v62;
      v63 = v62[1];
      outlined init with copy of AttributedString._AttributeValue(v2[7] + 72 * v27, v123);
      *&v118 = v64;
      *(&v118 + 1) = v63;
      outlined init with copy of AttributedString._AttributeValue(v123, &v119);
      v65 = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
      v2 = &v98;
      v66 = *(v111 + *(v65 + 20));
      v117[0] = v64;
      v117[1] = v63;
      MEMORY[0x1EEE9AC00](v65);
      *(&v98 - 2) = v117;
      swift_bridgeObjectRetain_n();
      v67 = v66;
      v68 = v112;
      v6 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v98 - 4), v67);
      v112 = v68;
      outlined destroy of TermOfAddress?(&v118, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
      outlined destroy of AttributedString._AttributeValue(v123);

      if (v6)
      {
        *(v99 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        if (__OFADD__(v115++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_31:
    if (!v115)
    {
      v70 = MEMORY[0x1E69E7CC8];
      goto LABEL_35;
    }

    if (v115 == v2[2])
    {

      v70 = v2;
LABEL_35:
      v27 = v104;
      v6 = v103;
      v4 = v101;
      goto LABEL_36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v70 = static _DictionaryStorage.allocate(capacity:)();
    v4 = 0;
    v26 = *v99;
    v75 = v70 + 64;
    while (v26)
    {
      v79 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_47:
      v82 = v79 | (v4 << 6);
      v83 = (v2[6] + 16 * v82);
      v6 = *v83;
      v84 = v83[1];
      outlined init with copy of AttributedString._AttributeValue(v2[7] + 72 * v82, &v118);
      v85 = v121;
      *(v27 + 32) = v120;
      *(v27 + 48) = v85;
      v125 = v122;
      v86 = v119;
      *v27 = v118;
      *(v27 + 16) = v86;
      Hasher.init(_seed:)();

      String.hash(into:)();
      v87 = Hasher._finalize()();
      v88 = -1 << *(v70 + 32);
      v89 = v87 & ~v88;
      v90 = v89 >> 6;
      if (((-1 << v89) & ~*(v75 + 8 * (v89 >> 6))) == 0)
      {
        v91 = 0;
        v92 = (63 - v88) >> 6;
        while (++v90 != v92 || (v91 & 1) == 0)
        {
          v93 = v90 == v92;
          if (v90 == v92)
          {
            v90 = 0;
          }

          v91 |= v93;
          v94 = *(v75 + 8 * v90);
          if (v94 != -1)
          {
            v76 = __clz(__rbit64(~v94)) + (v90 << 6);
            goto LABEL_39;
          }
        }

        goto LABEL_60;
      }

      v76 = __clz(__rbit64((-1 << v89) & ~*(v75 + 8 * (v89 >> 6)))) | v89 & 0x7FFFFFFFFFFFFFC0;
LABEL_39:
      *(v75 + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v76;
      v77 = (*(v70 + 48) + 16 * v76);
      *v77 = v6;
      v77[1] = v84;
      v78 = *(v70 + 56) + 72 * v76;
      *(v78 + 16) = *(v27 + 16);
      *(v78 + 32) = *(v27 + 32);
      *(v78 + 48) = *(v27 + 48);
      *(v78 + 64) = v125;
      *v78 = *v27;
      ++*(v70 + 16);
      if (!--v115)
      {
        goto LABEL_35;
      }
    }

    v80 = v4;
    while (1)
    {
      v4 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v4 >= v98)
      {
        goto LABEL_35;
      }

      v81 = v99[v4];
      ++v80;
      if (v81)
      {
        v79 = __clz(__rbit64(v81));
        v26 = (v81 - 1) & v81;
        goto LABEL_47;
      }
    }

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

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v95 = swift_slowAlloc();

  v96 = v112;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v95, v98, v2, _sSS10Foundation16AttributedStringV15_AttributeValueVSbs5Error_pIggndzo_SSAESbsAF_pIegnndzo_TRTA_0);
  if (v96)
  {

    result = MEMORY[0x1865D2690](v95, -1, -1);
    __break(1u);
  }

  else
  {
    v70 = v97;

    MEMORY[0x1865D2690](v95, -1, -1);
LABEL_36:

    result = outlined destroy of AttributedString.Runs(v111, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
    v71 = v102;
    *v102 = v70;
    v71[1] = v27;
    v72 = v106;
    *(v71 + 1) = v114;
    *(v71 + 2) = v72;
    v71[6] = v107;
    v71[7] = v6;
    v73 = v113;
    v71[8] = v4;
    v71[9] = v73;
    v74 = v108;
    v71[10] = v109;
    v71[11] = v74;
  }

  return result;
}

void AttributedString.Runs.NSAttributesSlice.endIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 200);
    v4 = *(*v1 + 16);
    *a1 = *(v1 + 184);
    *(a1 + 16) = v3;
    *(a1 + 24) = v2;
    *(a1 + 32) = v4;
  }
}

uint64_t AttributedString.Runs.NSAttributesSlice.index(after:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v168 - v8;
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  result = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  v204 = *(v3 + *(result + 20));
  v202 = *(v204 + 16);
  if (!v202)
  {
    goto LABEL_143;
  }

  v182 = a2;
  v183 = v10;
  v15 = *v3;
  v197 = v11;
  v184 = v13;
  v194 = v12;
  AttributedString.Guts.findRun(at:)(v11, v12, &v232);
  v198 = v234;
  v199 = v233;
  v209 = v235;
  v195 = v232;
  v196 = v236;
  v187 = v238;
  v188 = v237;
  v185 = v240;
  v186 = v239;
  v16 = *(type metadata accessor for AttributedString.Runs() + 24);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v213 = v16;
  v214 = v3;
  v212 = v17;
  RangeSet.ranges.getter();
  v18 = RangeSet.Ranges.count.getter();
  v20 = *(v7 + 8);
  v19 = v7 + 8;
  v210 = v9;
  v211 = v20;
  result = v20(v9, v6);
  if (v18 < 1)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v21 = 0;
  v22 = v197 >> 10;
  while (1)
  {
    if (__OFADD__(v21, v18))
    {
      goto LABEL_139;
    }

    v23 = v210;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    result = v211(v23, v6);
    v24 = (v21 + v18) / 2;
    if (v22 >= v232 >> 10)
    {
      break;
    }

LABEL_4:
    v18 = v24;
    if (v21 >= v24)
    {
      goto LABEL_138;
    }
  }

  v25 = v236 >> 10;
  if (v22 >= v236 >> 10)
  {
    v21 = v24 + 1;
    v24 = v18;
    goto LABEL_4;
  }

  v179 = v238;
  v180 = v237;
  v178 = v239;
  v26 = v214[15];
  v201 = v15;
  v189 = v22;
  v170 = v19;
  v171 = v6;
  v169 = (v21 + v18) / 2;
  v175 = v236;
  v192 = v236 >> 10;
  if (v209 == v26)
  {
    v27 = v214[22];
    if (v214[26] == 2)
    {
      if (v27 != 2)
      {
        goto LABEL_70;
      }
    }

    else if (v27 == 2 || (v214[19] ^ v214[23]) >= 1024)
    {
      goto LABEL_70;
    }
  }

  if (v209 >= v26)
  {
    goto LABEL_150;
  }

  v177 = v26;
  v28 = *(v15 + 72);
  v208 = *(v15 + 80);
  v29 = *(v15 + 88);
  v30 = *(v15 + 96);
  swift_unknownObjectRetain();
  v31 = v195;
  v32 = v15;
  v15 = v198;
  specialized Rope.subscript.getter(v195, v199, v198, v28, v208, v29, v30);
  v200 = v33;
  v174 = v34;
  result = swift_unknownObjectRelease();
  v35 = v32[9];
  v36 = v32[10];
  v37 = v209 + 1;
  v176 = (v204 + 40);
  v39 = v32[11];
  v38 = v32[12];
  v232 = v31;
  v233 = v199;
  v234 = v15;
  while (2)
  {
    if (v31 != v38)
    {
      goto LABEL_144;
    }

    v191 = v37;
    v193 = v38;
    v198 = v15;
    v208 = v39;
    v209 = v36;
    if (v15)
    {
      v40 = *(v15 + 24 * ((v199 >> ((4 * *(v15 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v40 = specialized Rope._Node.subscript.getter(v199, v35);
    }

    v15 = v201;

    v41 = v196 + v40;
    if (__OFADD__(v196, v40))
    {
      goto LABEL_145;
    }

    if (v35)
    {
      v42 = ((-15 << ((4 * *(v35 + 18) + 8) & 0x3C)) - 1) & *(v35 + 18) | (*(v35 + 16) << ((4 * *(v35 + 18) + 8) & 0x3C));
    }

    else
    {
      v42 = 0;
    }

    if (v199 >= v42)
    {
      goto LABEL_146;
    }

    if (v198)
    {
      v43 = (4 * *(v198 + 18) + 8) & 0x3C;
      v44 = ((v199 >> v43) & 0xF) + 1;
      if (v44 < *(v198 + 16))
      {
        v190 = (v44 << v43) | ((-15 << v43) - 1) & v199;
        result = swift_unknownObjectRelease();
        goto LABEL_31;
      }
    }

    result = specialized Rope._Node.formSuccessor(of:)(&v232, v35);
    if (result)
    {
      result = swift_unknownObjectRelease();
      v190 = v233;
LABEL_31:
      v45 = v234;
      v46 = v232;
    }

    else
    {
      if (v35)
      {
        v47 = *(v35 + 18);
        v48 = *(v35 + 16);
        result = swift_unknownObjectRelease();
        v45 = 0;
        v190 = ((-15 << ((4 * v47 + 8) & 0x3C)) - 1) & v47 | (v48 << ((4 * v47 + 8) & 0x3C));
      }

      else
      {
        v190 = 0;
        v45 = 0;
      }

      v46 = v193;
    }

    if (v177 < v191)
    {
LABEL_137:

      goto LABEL_75;
    }

    if (v191 == v177)
    {
      v49 = v214[22];
      if (v214[26] == 2)
      {
        if (v49 == 2)
        {
          goto LABEL_137;
        }
      }

      else if (v49 != 2 && (v214[19] ^ v214[23]) < 1024)
      {
        goto LABEL_137;
      }
    }

    if (v46 != *(v15 + 96))
    {
      goto LABEL_147;
    }

    v172 = v45;
    v173 = v41;
    v195 = v46;
    if (v45)
    {
      v50 = v45 + 24 * ((v190 >> ((4 * *(v45 + 18) + 8) & 0x3C)) & 0xF);
      v52 = *(v50 + 32);
      v51 = *(v50 + 40);

      v181 = v51;
    }

    else
    {
      v53 = *(v15 + 72);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v190, v53);
      v52 = v54;
      v181 = v55;
      result = swift_unknownObjectRelease();
    }

    v56 = v200;
    v57 = 0;
    v58 = v176;
    v203 = v52;
    do
    {
      if (v57 >= *(v204 + 16))
      {
        goto LABEL_140;
      }

      v208 = v58;
      v209 = v57;
      v60 = *(v58 - 1);
      v59 = *v58;
      if (*(v56 + 16))
      {

        v61 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
        if (v62)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v56 + 56) + 72 * v61, &v251);
          if (!*(v52 + 16))
          {
            goto LABEL_58;
          }
        }

        else
        {
          v255 = 0;
          v253 = 0u;
          v254 = 0u;
          v251 = 0u;
          v252 = 0u;
          if (!*(v52 + 16))
          {
LABEL_58:

            goto LABEL_59;
          }
        }
      }

      else
      {
        v255 = 0;
        v253 = 0u;
        v254 = 0u;
        v251 = 0u;
        v252 = 0u;

        if (!*(v52 + 16))
        {
          goto LABEL_58;
        }
      }

      v63 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
      v65 = v64;

      if (v65)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v52 + 56) + 72 * v63, &v246);
        goto LABEL_60;
      }

LABEL_59:
      v250 = 0;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
LABEL_60:
      outlined init with copy of AttributedString._AttributeValue?(&v251, &v232);
      outlined init with copy of AttributedString._AttributeValue?(&v246, &v241);
      if (v235)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v232, &v220);
        if (!*(&v242 + 1))
        {
          outlined destroy of TermOfAddress?(&v246, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v251, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v220);
LABEL_72:
          outlined destroy of TermOfAddress?(&v232, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_74:

          v22 = v189;
          v25 = v192;
          goto LABEL_75;
        }

        v217 = v243;
        v218 = v244;
        v219 = v245;
        v215 = v241;
        v216 = v242;
        v66 = v223;
        *&v206 = v224;
        v205 = __swift_project_boxed_opaque_existential_1(&v220, v223);
        v67 = __swift_project_boxed_opaque_existential_1(&v215, *(&v216 + 1));
        v207 = &v168;
        v68 = *(v66 - 8);
        MEMORY[0x1EEE9AC00](v67);
        v70 = &v168 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
        *(&v206 + 1) = &v168;
        v72 = MEMORY[0x1EEE9AC00](v71);
        (*(v74 + 16))(&v168 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0), v72);
        v75 = type metadata accessor for Optional();
        v76 = *(v75 - 8);
        MEMORY[0x1EEE9AC00](v75);
        v78 = &v168 - v77;
        v79 = swift_dynamicCast();
        v80 = *(v68 + 56);
        if (!v79)
        {
          v80(v78, 1, 1, v66);
          outlined destroy of TermOfAddress?(&v246, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v251, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v76 + 8))(v78, v75);
          outlined destroy of AttributedString._AttributeValue(&v215);
          outlined destroy of AttributedString._AttributeValue(&v220);
          outlined destroy of TermOfAddress?(&v232, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v15 = v201;
          goto LABEL_74;
        }

        v80(v78, 0, 1, v66);
        (*(v68 + 32))(v70, v78, v66);
        v81 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v68 + 8))(v70, v66);
        outlined destroy of TermOfAddress?(&v246, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v251, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v215);
        outlined destroy of AttributedString._AttributeValue(&v220);
        result = outlined destroy of TermOfAddress?(&v232, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v56 = v200;
        v15 = v201;
        if ((v81 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v246, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v251, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v242 + 1))
        {
          goto LABEL_72;
        }

        result = outlined destroy of TermOfAddress?(&v232, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v57 = v209 + 1;
      v58 = (v208 + 16);
      v52 = v203;
    }

    while (v202 != v209 + 1);

    v35 = *(v15 + 72);
    v36 = *(v15 + 80);
    v39 = *(v15 + 88);
    v38 = *(v15 + 96);
    v196 = v173;
    v31 = v195;
    v232 = v195;
    v233 = v190;
    v15 = v172;
    v199 = v190;
    v234 = v172;
    v37 = v191 + 1;
    v22 = v189;
    v25 = v192;
    if (!__OFADD__(v191, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  v193 = v195;
LABEL_75:
  v82 = *(v15 + 72);
  v83 = *(v15 + 80);
  v84 = *(v15 + 88);
  v85 = *(v15 + 96);
  swift_unknownObjectRetain();
  v86 = specialized Rope.subscript.getter(v193, v199, v198, v82, v83, v84, v85);
  swift_unknownObjectRelease();

  if (__OFADD__(v196, v86))
  {
    goto LABEL_148;
  }

  v87 = *(v15 + 40);
  v266 = *(v15 + 24);
  v267 = v87;
  v268 = *(v15 + 56);
  if (__OFSUB__(v196 + v86, v188 >> 11))
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  swift_unknownObjectRetain();
  v88 = BigString.UTF8View.index(_:offsetBy:)();
  v209 = v89;
  v91 = v90;
  v93 = v92;
  swift_unknownObjectRelease();
  v94 = v88 >> 10;
  result = *(v15 + 24);
  v96 = *(v15 + 40);
  v95 = *(v15 + 48);
  v205 = *(v15 + 32);
  *&v206 = v96;
  *(&v206 + 1) = v95;
  v97 = *(v15 + 64);
  v207 = *(v15 + 56);
  v208 = v97;
  if (v88 >> 10 >= v25)
  {
    v118 = v197;
    *&v246 = v197;
    v120 = v183;
    v119 = v184;
    *(&v246 + 1) = v183;
    *&v247 = v184;
    v121 = v194;
    *(&v247 + 1) = v194;
    v122 = v175;
    *&v248 = v175;
    v123 = v179;
    v124 = v180;
    *(&v248 + 1) = v180;
    *&v249 = v179;
    v125 = v178;
    *(&v249 + 1) = v178;
    v204 = result;
    swift_unknownObjectRetain();
    v126 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
    v127 = v122;
    if (v126)
    {
      v261 = v204;
      v262 = v205;
      v263 = v206;
      v264 = v207;
      v265 = v208;
      BigString.UTF8View.subscript.getter();
      v220 = v118;
      v221 = v120;
      v222 = v119;
      v223 = v194;
      v224 = v118;
      v225 = v120;
      v226 = v119;
      v227 = v194;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v220, &v232);
      v121 = v194;
      result = outlined destroy of BigSubstring.UTF8View(&v251);
      v127 = v122;
      v123 = v179;
      v124 = v180;
      v125 = v178;
      if (v239 != 2)
      {
        v127 = v236;
        if (v189 > v236 >> 10)
        {
          goto LABEL_153;
        }

        v124 = v237;
        v123 = v238;
        v125 = v239;
        v118 = v197;
      }
    }

    *&v215 = v118;
    *(&v215 + 1) = v120;
    *&v216 = v119;
    *(&v216 + 1) = v121;
    v209 = v127;
    *&v217 = v127;
    *(&v217 + 1) = v124;
    *&v218 = v123;
    *(&v218 + 1) = v125;
    v128 = MEMORY[0x1E69E7CD0];
    result = specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]);
    if ((result & 1) == 0)
    {
      result = swift_unknownObjectRelease();
      v143 = v209;
LABEL_124:
      if (v192 == v143 >> 10)
      {
        v150 = v210;
        RangeSet.ranges.getter();
        v151 = v171;
        v152 = RangeSet.Ranges.count.getter();
        result = v211(v150, v151);
        v153 = v182;
        if (!__OFSUB__(v152, 1))
        {
          if (v169 == v152 - 1)
          {
            v154 = *(v15 + 16);
            v155 = v179;
            v156 = v180;
            *v182 = v175;
            v153[1] = v156;
            v153[2] = v155;
            v153[3] = v178;
          }

          else
          {
            RangeSet.ranges.getter();
            RangeSet.Ranges.subscript.getter();
            result = v211(v150, v151);
            v154 = *(v15 + 16);
            v159 = v229;
            *v153 = v228;
            *(v153 + 1) = v159;
          }

          v153[4] = v154;
          return result;
        }

        goto LABEL_152;
      }

      v157 = *(v15 + 16);
      v158 = v182;
      *v182 = v143;
      v158[1] = v124;
      v158[2] = v123;
      v158[3] = v125;
LABEL_136:
      v158[4] = v157;
      return result;
    }

    v129 = 0;
    v130 = 1 << *(v128 + 32);
    v131 = -1;
    if (v130 < 64)
    {
      v131 = ~(-1 << v130);
    }

    v132 = v131 & *(v128 + 56);
    v133 = (v130 + 63) >> 6;
    v134 = MEMORY[0x1E69E7CC0];
    while (v132)
    {
LABEL_113:
      v136 = __clz(__rbit64(v132));
      v132 &= v132 - 1;
      v137 = (*(v128 + 48) + ((v129 << 10) | (16 * v136)));
      v138 = v137[1];
      if (v138 >= 2)
      {
        result = specialized Collection.first.getter(*v137, v138);
        if ((result & 0x100000000) == 0)
        {
          v203 = result;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v134 + 16) + 1, 1, v134);
            v134 = result;
          }

          v140 = *(v134 + 16);
          v139 = *(v134 + 24);
          v141 = v140 + 1;
          v142 = v203;
          if (v140 >= v139 >> 1)
          {
            v202 = v140 + 1;
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v134);
            v141 = v202;
            v142 = v203;
            v134 = result;
          }

          *(v134 + 16) = v141;
          *(v134 + 4 * v140 + 32) = v142;
          v15 = v201;
        }
      }
    }

    while (1)
    {
      v135 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v135 >= v133)
      {

        v256 = v204;
        v257 = v205;
        v258 = v206;
        v259 = v207;
        v260 = v208;
        BigString.UnicodeScalarView.subscript.getter();
        v144 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v134);
        v208 = v145;
        v147 = v146;
        v149 = v148;

        swift_unknownObjectRelease();
        result = outlined destroy of BigSubstring.UnicodeScalarView(&v232);
        v143 = v209;
        if (v149 == 2)
        {
          goto LABEL_124;
        }

        if (v189 <= v144 >> 10)
        {
          v143 = v144;
          v124 = v208;
          v123 = v147;
          v125 = v149;
          goto LABEL_124;
        }

        goto LABEL_154;
      }

      v132 = *(v128 + 8 * v135 + 56);
      ++v129;
      if (v132)
      {
        v129 = v135;
        goto LABEL_113;
      }
    }

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
    goto LABEL_149;
  }

  v98 = v194;
  if (v94 < v22)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  *&v246 = v197;
  v100 = v183;
  v99 = v184;
  *(&v246 + 1) = v183;
  *&v247 = v184;
  *(&v247 + 1) = v194;
  *&v248 = v88;
  *(&v248 + 1) = v209;
  *&v249 = v91;
  *(&v249 + 1) = v93;
  if (v22 == v94)
  {
LABEL_135:
    v157 = *(v15 + 16);
    v158 = v182;
    v167 = v209;
    *v182 = v88;
    v158[1] = v167;
    v158[2] = v91;
    v158[3] = v93;
    goto LABEL_136;
  }

  v101 = result;
  swift_unknownObjectRetain();
  v102 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
  v204 = v101;
  if ((v102 & 1) == 0 || (*&v228 = v101, *(&v228 + 1) = v205, v229 = v206, v230 = v207, v231 = v208, BigString.UTF8View.subscript.getter(), v220 = v197, v221 = v100, v222 = v99, v223 = v194, v224 = v197, v225 = v100, v226 = v99, v227 = v194, specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v220, &v232), v98 = v194, result = outlined destroy of BigSubstring.UTF8View(&v251), v239 == 2))
  {
LABEL_84:
    *&v215 = v197;
    *(&v215 + 1) = v100;
    *&v216 = v99;
    *(&v216 + 1) = v98;
    *&v217 = v88;
    *(&v217 + 1) = v209;
    *&v218 = v91;
    *(&v218 + 1) = v93;
    v103 = MEMORY[0x1E69E7CD0];
    result = specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]);
    if (result)
    {
      v104 = 0;
      v105 = 1 << *(v103 + 32);
      v106 = -1;
      if (v105 < 64)
      {
        v106 = ~(-1 << v105);
      }

      v107 = v106 & *(v103 + 56);
      v108 = (v105 + 63) >> 6;
      v109 = MEMORY[0x1E69E7CC0];
      while (v107)
      {
LABEL_93:
        v111 = __clz(__rbit64(v107));
        v107 &= v107 - 1;
        v112 = (*(v103 + 48) + ((v104 << 10) | (16 * v111)));
        v113 = v112[1];
        if (v113 >= 2)
        {
          result = specialized Collection.first.getter(*v112, v113);
          if ((result & 0x100000000) == 0)
          {
            v214 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v109 + 16) + 1, 1, v109);
              v109 = result;
            }

            v115 = *(v109 + 16);
            v114 = *(v109 + 24);
            v116 = v115 + 1;
            v117 = v214;
            if (v115 >= v114 >> 1)
            {
              v213 = v115 + 1;
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v109);
              v116 = v213;
              v117 = v214;
              v109 = result;
            }

            *(v109 + 16) = v116;
            *(v109 + 4 * v115 + 32) = v117;
          }
        }
      }

      while (1)
      {
        v110 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          goto LABEL_142;
        }

        if (v110 >= v108)
        {

          v261 = v204;
          v262 = v205;
          v263 = v206;
          v264 = v207;
          v265 = v208;
          BigString.UnicodeScalarView.subscript.getter();
          v160 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v109);
          v162 = v161;
          v164 = v163;
          v166 = v165;

          swift_unknownObjectRelease();
          result = outlined destroy of BigSubstring.UnicodeScalarView(&v232);
          v15 = v201;
          if (v166 == 2)
          {
            goto LABEL_135;
          }

          if (v189 <= v160 >> 10)
          {
            v88 = v160;
            v209 = v162;
            v91 = v164;
            v93 = v166;
            goto LABEL_135;
          }

          goto LABEL_156;
        }

        v107 = *(v103 + 8 * v110 + 56);
        ++v104;
        if (v107)
        {
          v104 = v110;
          goto LABEL_93;
        }
      }
    }

    result = swift_unknownObjectRelease();
    goto LABEL_135;
  }

  v88 = v236;
  if (v22 <= v236 >> 10)
  {
    v209 = v237;
    v91 = v238;
    v93 = v239;
    goto LABEL_84;
  }

LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.NSAttributesSlice.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v2, v6, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  result = outlined init with copy of AttributedString.Runs(v6, a1, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  v8 = *(v6 + 12);
  if (v8 == 2)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v6 + 11);
    v12 = *(v6 + 72);
    v10 = *(*v6 + 16);
    outlined destroy of AttributedString.Runs(v6, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
    result = type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator(0);
    v11 = a1 + *(result + 20);
    *v11 = v12;
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
    *(v11 + 32) = v10;
  }

  return result;
}

uint64_t AttributedString.Runs.NSAttributesSlice.index(before:)@<X0>(__int128 *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v236 - v8;
  v10 = *a1;
  v258 = a1[1];
  v263 = v10;
  v269 = *(v3 + *(type metadata accessor for AttributedString.Runs.NSAttributesSlice(0) + 20));
  v264 = *(v269 + 2);
  if (!v264)
  {
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  v250 = a2;
  v11 = v3[23];
  v12 = v3[26];
  v13 = v263;
  v14 = *(type metadata accessor for AttributedString.Runs() + 24);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v271 = v14;
  RangeSet.ranges.getter();
  v15 = v9;
  v16 = RangeSet.Ranges.count.getter();
  v18 = *(v7 + 8);
  v17 = (v7 + 8);
  v272 = v18;
  (v18)(v9, v6);
  if (v12 == 2 || (v11 ^ v13) >= 0x400)
  {
    v268 = v13;
    if (v16 >= 1)
    {
      v17 = v3;
      v20 = 0;
      v21 = v268 >> 10;
      while (!__OFADD__(v20, v16))
      {
        v12 = (v20 + v16) / 2;
        RangeSet.ranges.getter();
        v15 = v9;
        RangeSet.Ranges.subscript.getter();
        (v272)(v9, v6);
        v19 = v284;
        if (v21 < v284 >> 10)
        {
          v16 = (v20 + v16) / 2;
          if (v20 >= v12)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (v21 < v287 >> 10)
          {
            goto LABEL_13;
          }

          v20 = v12 + 1;
          if (v12 + 1 >= v16)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v3 = v17;
    if ((v19 ^ v268) > 0x3FF)
    {
      *&v254 = v19;
      *(&v254 + 1) = *(&v284 + 1);
      v252 = v286;
      v253 = v285;
      goto LABEL_17;
    }
  }

  else
  {
    v12 = v16;
  }

  if (v12 < 1)
  {
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  type metadata accessor for AttributedString.Runs();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  (v272)(v9, v6);
  v254 = v284;
  v252 = v286;
  v253 = v285;
  v258 = v288;
  v263 = v287;
LABEL_17:
  v22 = *v3;
  v23 = *(*v3 + 24);
  v249 = (*v3 + 24);
  v24 = *(v22 + 40);
  v320 = v23;
  v321 = v24;
  v322 = *(v22 + 56);
  swift_unknownObjectRetain();
  v239 = *(&v263 + 1);
  v251 = v263;
  v240 = v258;
  v25 = BigString.UTF8View.index(before:)();
  v246 = v27;
  v247 = v26;
  v245 = v28;
  swift_unknownObjectRelease();
  v29 = *(v22 + 72);
  v30 = *(v22 + 88);
  v31 = v25 >> 11;
  if (v29)
  {
    v32 = *(v22 + 88);
  }

  else
  {
    v32 = 0;
  }

  if (v32 < v31)
  {
    goto LABEL_209;
  }

  v33 = v22;
  v244 = v25;
  v34 = *(v22 + 80);
  v259 = v33;
  v262 = *(v33 + 96);
  v248 = v25 >> 11;
  if (v29)
  {
    if (v31 < v30)
    {
      v15 = (v29 + 16);
      LODWORD(v35) = *(v29 + 16);
      if (*(v29 + 16))
      {
        v271 = v34;
        v272 = v3;
        v36 = *(v29 + 18);
        swift_unknownObjectRetain_n();
        if (!v36)
        {
          v38 = 0;
          v31 = v248;
          v37 = v248;
          v42 = v29;
          goto LABEL_43;
        }

        v37 = v248;
        v38 = v36;
        v39 = v29;
        while (1)
        {
          v40 = *v15;
          if (*v15)
          {
            break;
          }

          v46 = v37;
LABEL_36:
          if (v46)
          {
            goto LABEL_207;
          }

          v37 = 0;
LABEL_27:
          v38 = (v40 << ((4 * v36 + 8) & 0x3C)) | ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v38;
          v41 = *(v39 + 24 + 24 * v40);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v42 = v41;
          v15 = (v41 + 16);
          LOBYTE(v36) = *(v42 + 18);
          v39 = v42;
          if (!v36)
          {
            LODWORD(v35) = *v15;
            if (*v15)
            {
              v31 = v248;
LABEL_43:
              v3 = v272;
              v51 = 0;
              v52 = 24;
              v50 = v37;
              v35 = v35;
              while (1)
              {
                v53 = *(v42 + v52);
                v54 = v50 - v53;
                if (__OFSUB__(v50, v53))
                {
                  goto LABEL_205;
                }

                if (__OFADD__(v54, 1))
                {
                  goto LABEL_206;
                }

                if (v54 + 1 < 1)
                {
                  break;
                }

                ++v51;
                v52 += 24;
                v50 -= v53;
                if (v35 == v51)
                {
                  if (!v54)
                  {
                    goto LABEL_49;
                  }

LABEL_197:
                  __break(1u);
LABEL_198:
                  __break(1u);
                  goto LABEL_199;
                }
              }

              v35 = v51;
            }

            else
            {
              v35 = 0;
              v31 = v248;
              v3 = v272;
              if (v37)
              {
                goto LABEL_197;
              }

LABEL_49:
              v50 = 0;
            }

            v55 = v42;
            swift_unknownObjectRelease();
            v49 = v55;
            v48 = v38 & 0xFFFFFFFFFFFFF0FFLL | (v35 << 8);
            v34 = v271;
            v256 = v55;
            v257 = v48;
LABEL_39:
            v255 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v262, v48, v49, v29, v34);
            swift_unknownObjectRelease();
            goto LABEL_53;
          }
        }

        v43 = 0;
        v44 = (v39 + 40);
        while (1)
        {
          v45 = *v44;
          v44 += 3;
          v46 = v37 - v45;
          if (__OFSUB__(v37, v45))
          {
            goto LABEL_198;
          }

          if (__OFADD__(v46, 1))
          {
            break;
          }

          if ((v46 + 1) < 1)
          {
            v40 = v43;
            goto LABEL_27;
          }

          ++v43;
          v37 = v46;
          if (v40 == v43)
          {
            goto LABEL_36;
          }
        }

LABEL_199:
        __break(1u);
        goto LABEL_200;
      }
    }
  }

  v47 = swift_unknownObjectRetain();
  v48 = specialized Rope._endPath.getter(v47);
  v49 = 0;
  v50 = 0;
  v256 = 0;
  v257 = v48;
  if (v29)
  {
    goto LABEL_39;
  }

  v255 = 0;
LABEL_53:
  v56 = v31 - v50;
  if (__OFSUB__(v31, v50))
  {
    goto LABEL_210;
  }

  v57 = *(v259 + 72);
  v58 = *(v259 + 80);
  v59 = *(v259 + 88);
  v60 = *(v259 + 96);
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v262, v257, v256, v57, v58, v59, v60);
  v62 = v61;
  v64 = v63;
  result = swift_unknownObjectRelease();
  v66 = v3[1];
  if (v66 >= v255)
  {

    goto LABEL_134;
  }

  v242 = (v269 + 40);
  v260 = v64;
  v261 = v62;
  v237 = v66;
  while (2)
  {
    v67 = *(v259 + 72);
    v68 = *(v259 + 96);
    v69 = v256;
    v70 = v257;
    *&v284 = v262;
    *(&v284 + 1) = v257;
    v285 = v256;
    if (v262 != v68)
    {
      goto LABEL_212;
    }

    if (v67)
    {
      v71 = *(v67 + 18);
      result = swift_unknownObjectRetain();
      v69 = v256;
      v70 = v257;
      if (v71 >= v257)
      {
        goto LABEL_213;
      }
    }

    else if (!v257)
    {
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

    if (v69)
    {
      v72 = (4 * *(v69 + 18) + 8) & 0x3C;
      if (((v70 >> v72) & 0xF) != 0)
      {
        v73 = ((((v70 >> v72) & 0xF) - 1) << v72) | ((-15 << v72) - 1) & v70;
        *(&v284 + 1) = v73;
LABEL_96:
        v96 = (4 * *(v69 + 18) + 8) & 0x3C;
        v256 = v69;
        v257 = v73;
        v88 = *(v69 + 24 * ((v73 >> v96) & 0xF) + 24);

        swift_unknownObjectRelease();
        v89 = 0;
        goto LABEL_97;
      }
    }

    v74 = v56;
    v75 = (4 * *(v67 + 18) + 8) & 0x3C;
    v76 = (v70 >> v75) & 0xF;
    if (*(v67 + 18))
    {
      if (v76 >= *(v67 + 16))
      {
        swift_unknownObjectRetain();
        if (!v76)
        {
          goto LABEL_219;
        }

LABEL_93:
        *(&v284 + 1) = *(&v284 + 1) & ((-15 << v75) - 1) | ((v76 - 1) << v75);
        v94 = *(v67 + 24 * v76);
        swift_unknownObjectRetain();
        v95 = specialized Rope._Node.descendToLastItem(under:)(&v284 + 1, v94);
        swift_unknownObjectRelease();
        v77 = v95;
        v285 = v95;
        v56 = v74;
        goto LABEL_94;
      }

      v77 = *(v67 + 24 * ((v70 >> v75) & 0xF) + 24);
      v78 = (4 * v77[18] + 8) & 0x3C;
      v79 = (v70 >> v78) & 0xF;
      if (!v77[18])
      {
        if (!v79)
        {
          swift_unknownObjectRetain();
          goto LABEL_92;
        }

        *(&v284 + 1) = ((v79 - 1) << v78) | v70 & 0xFFFFFFFFFFFFF0FFLL;
        v285 = v77;
        swift_unknownObjectRetain();
LABEL_83:
        v56 = v74;
        v62 = v261;
        goto LABEL_94;
      }

      if (v79 >= *(v77 + 8))
      {
        swift_unknownObjectRetain();
      }

      else
      {
        v272 = *(v67 + 24 * ((v70 >> v75) & 0xF) + 24);
        v77 = *&v77[24 * ((v70 >> v78) & 0xF) + 24];
        v80 = (4 * v77[18] + 8) & 0x3C;
        v81 = (v70 >> v80) & 0xF;
        if (v77[18])
        {
          v82 = *(v77 + 8);
          v271 = v77;
          if (v81 < v82)
          {
            v83 = *&v77[24 * ((v70 >> v80) & 0xF) + 24];
            v84 = *(v83 + 18);
            v85 = (4 * v84 + 8) & 0x3C;
            v86 = (v70 >> v85) & 0xF;
            *&v299 = v86;
            if (v84)
            {
              v268 = v80;
              v270 = ((v70 >> v80) & 0xF);
              v87 = v83;
              LODWORD(v267) = v84;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              LODWORD(v267) = specialized closure #1 in Rope._Node.formPredecessor(of:)((v87 + 16), v87 + 24, &v299, &v284, v267);
              swift_unknownObjectRelease();
              if (v267)
              {
                v77 = v285;
LABEL_127:
                swift_unknownObjectRelease();
                v56 = v74;
                v62 = v261;
                swift_unknownObjectRelease();
LABEL_94:
                swift_unknownObjectRelease();
                if (v284 != v262)
                {
LABEL_214:
                  __break(1u);
                  goto LABEL_215;
                }

                v73 = *(&v284 + 1);
                v69 = v77;
                if (v77)
                {
                  goto LABEL_96;
                }

                goto LABEL_75;
              }

LABEL_88:
              if (v270)
              {
                *(&v284 + 1) = *(&v284 + 1) & ((-15 << v268) - 1) | ((v270 - 1) << v268);
                v92 = *(v271 + 24 * v270);
                swift_unknownObjectRetain();
                v93 = specialized Rope._Node.descendToLastItem(under:)(&v284 + 1, v92);
                swift_unknownObjectRelease();
                v77 = v93;
                v285 = v93;
                goto LABEL_127;
              }

              swift_unknownObjectRelease();
              v77 = v272;
              if (!v79)
              {
                goto LABEL_91;
              }

LABEL_82:
              *(&v284 + 1) = *(&v284 + 1) & ((-15 << v78) - 1) | ((v79 - 1) << v78);
              v90 = *&v77[24 * v79];
              swift_unknownObjectRetain();
              v91 = specialized Rope._Node.descendToLastItem(under:)(&v284 + 1, v90);
              swift_unknownObjectRelease();
              v77 = v91;
              v285 = v91;
              swift_unknownObjectRelease();
              goto LABEL_83;
            }

            if (v86)
            {
              *(&v284 + 1) = ((v86 - 1) << v85) | v70 & 0xFFFFFFFFFFFFF0FFLL;
              v285 = v83;
              v77 = v83;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              goto LABEL_127;
            }
          }

          v268 = v80;
          v270 = ((v70 >> v80) & 0xF);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          goto LABEL_88;
        }

        if (v81)
        {
          *(&v284 + 1) = ((v81 - 1) << v80) | v70 & 0xFFFFFFFFFFFFF0FFLL;
          v285 = v77;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v56 = v74;
          v62 = v261;
          swift_unknownObjectRelease();
          goto LABEL_94;
        }

        swift_unknownObjectRetain();
        v77 = v272;
      }

      swift_unknownObjectRetain();
      if (!v79)
      {
LABEL_91:
        swift_unknownObjectRelease();
LABEL_92:
        v62 = v261;
        if (!v76)
        {
LABEL_219:
          result = swift_unknownObjectRelease();
          __break(1u);
          goto LABEL_220;
        }

        goto LABEL_93;
      }

      goto LABEL_82;
    }

    if (!v76)
    {
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    v73 = ((v76 - 1) << v75) | v70 & 0xFFFFFFFFFFFFF0FFLL;
    *(&v284 + 1) = v73;
    v285 = v67;
    v69 = v67;
    v56 = v74;
    if (v67)
    {
      goto LABEL_96;
    }

LABEL_75:
    v257 = v73;
    v88 = specialized Rope._Node.subscript.getter(v73, v67);
    swift_unknownObjectRelease();
    v256 = 0;
    v89 = 1;
LABEL_97:

    if (__OFSUB__(v56, v88))
    {
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }

    if (v262 != *(v259 + 96))
    {
LABEL_216:
      __break(1u);
      goto LABEL_217;
    }

    v238 = (v56 - v88);
    v241 = v56;
    if (v89)
    {
      v97 = *(v259 + 72);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v257, v97);
      v99 = v98;
      v243 = v100;
      swift_unknownObjectRelease();
    }

    else
    {
      v101 = v256 + 24 * ((v257 >> ((4 * *(v256 + 18) + 8) & 0x3C)) & 0xF);
      v99 = *(v101 + 32);
      v102 = *(v101 + 40);

      v243 = v102;
    }

    v103 = 0;
    --v255;
    v104 = v242;
    v265 = v99;
    do
    {
      if (v103 >= *(v269 + 2))
      {
        __break(1u);
        goto LABEL_203;
      }

      v271 = v104;
      v272 = v103;
      v106 = *(v104 - 1);
      v105 = *v104;
      if (*(v62 + 16))
      {

        v107 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v105);
        if (v108)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v62 + 56) + 72 * v107, &v299);
          if (!*(v99 + 16))
          {
            goto LABEL_113;
          }
        }

        else
        {
          v303 = 0;
          v301 = 0u;
          v302 = 0u;
          v299 = 0u;
          v300 = 0u;
          if (!*(v99 + 16))
          {
LABEL_113:

            goto LABEL_114;
          }
        }
      }

      else
      {
        v303 = 0;
        v301 = 0u;
        v302 = 0u;
        v299 = 0u;
        v300 = 0u;

        if (!*(v99 + 16))
        {
          goto LABEL_113;
        }
      }

      v109 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v105);
      v111 = v110;

      if (v111)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v99 + 56) + 72 * v109, &v294);
        goto LABEL_115;
      }

LABEL_114:
      v298 = 0;
      v296 = 0u;
      v297 = 0u;
      v294 = 0u;
      v295 = 0u;
LABEL_115:
      outlined init with copy of AttributedString._AttributeValue?(&v299, &v284);
      outlined init with copy of AttributedString._AttributeValue?(&v294, &v289);
      if (v286)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v284, &v278);
        if (!*(&v290 + 1))
        {
          outlined destroy of TermOfAddress?(&v294, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v299, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v278);
LABEL_131:
          outlined destroy of TermOfAddress?(&v284, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_133:

          v56 = v241;
          goto LABEL_134;
        }

        v275 = v291;
        v276 = v292;
        v277 = v293;
        v273 = v289;
        v274 = v290;
        v112 = v281;
        v267 = v282;
        v266 = __swift_project_boxed_opaque_existential_1(&v278, v281);
        v113 = __swift_project_boxed_opaque_existential_1(&v273, *(&v274 + 1));
        v270 = &v236;
        v114 = *(v112 - 8);
        MEMORY[0x1EEE9AC00](v113);
        v116 = &v236 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
        v268 = &v236;
        v118 = MEMORY[0x1EEE9AC00](v117);
        (*(v120 + 16))(&v236 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0), v118);
        v121 = type metadata accessor for Optional();
        v122 = *(v121 - 8);
        MEMORY[0x1EEE9AC00](v121);
        v124 = &v236 - v123;
        v125 = swift_dynamicCast();
        v126 = *(v114 + 56);
        if (!v125)
        {
          v126(v124, 1, 1, v112);
          outlined destroy of TermOfAddress?(&v294, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v299, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v122 + 8))(v124, v121);
          outlined destroy of AttributedString._AttributeValue(&v273);
          outlined destroy of AttributedString._AttributeValue(&v278);
          outlined destroy of TermOfAddress?(&v284, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_133;
        }

        v126(v124, 0, 1, v112);
        (*(v114 + 32))(v116, v124, v112);
        v127 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v114 + 8))(v116, v112);
        outlined destroy of TermOfAddress?(&v294, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v299, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v273);
        outlined destroy of AttributedString._AttributeValue(&v278);
        outlined destroy of TermOfAddress?(&v284, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v62 = v261;
        if ((v127 & 1) == 0)
        {
          goto LABEL_133;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v294, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v299, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v290 + 1))
        {
          goto LABEL_131;
        }

        outlined destroy of TermOfAddress?(&v284, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v103 = v272 + 1;
      v104 = (v271 + 16);
      v99 = v265;
    }

    while (v264 != v272 + 1);

    v15 = v238;
    v56 = v238;
    if (v237 < v255)
    {
      continue;
    }

    break;
  }

LABEL_201:

  v56 = v15;
LABEL_134:
  v128 = *(&v254 + 1);
  v129 = v254;
  v130 = v259;
  v131 = v252;
  v132 = v253;
  if (v56 >= (v254 >> 11))
  {
    v159 = *(v259 + 40);
    v317 = *(v259 + 24);
    v318 = v159;
    v319 = *(v259 + 56);
    v160 = v259;
    swift_unknownObjectRetain();
    v129 = BigString.UTF8View.index(_:offsetBy:)();
    v128 = v161;
    v132 = v162;
    v131 = v163;
    result = swift_unknownObjectRelease();
    v164 = *v249;
    v165 = v249[2];
    v315 = v249[1];
    v316 = v165;
    v314 = v164;
    v135 = v251 >> 10;
    if (v251 >> 10 < v129 >> 10)
    {
LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    v166 = v160[3];
    v167 = v160[4];
    v168 = v160[5];
    v169 = v160[6];
    v170 = v160[7];
    v171 = v160[8];
    *&v294 = v129;
    *(&v294 + 1) = v128;
    *&v295 = v132;
    *(&v295 + 1) = v131;
    v296 = v263;
    v297 = v258;
    if (v129 >> 10 != v135)
    {
      v267 = v171;
      v268 = v170;
      v269 = v169;
      v270 = v168;
      v271 = v167;
      v272 = v166;
      v172 = v131;
      v173 = v128;
      v174 = v249[1];
      v323[0] = *v249;
      v323[1] = v174;
      v324 = *(v249 + 4);
      outlined init with copy of Rope<BigString._Chunk>._Node?(v323, &v284);
      if ((specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]) & 1) != 0 && v135 > BigString.startIndex.getter() >> 10)
      {
        v308 = v272;
        v309 = v271;
        v310 = v270;
        v311 = v269;
        v312 = v268;
        v313 = v267;
        v175 = BigString.UTF8View.index(before:)();
        v177 = v176;
        v266 = v178;
        v180 = v179;
        result = BigString.UTF8View.subscript.getter();
        if (v135 < v175 >> 10)
        {
          goto LABEL_222;
        }

        v278 = v175;
        v279 = v177;
        v280 = v266;
        v281 = v180;
        v282 = v263;
        v283 = v258;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v278, &v284);
        result = outlined destroy of BigSubstring.UTF8View(&v299);
        v181 = v263;
        v182 = v258;
        v183 = v129;
        v184 = v173;
        v185 = v132;
        if (v286 != 2)
        {
          v183 = v284;
          if (v135 < v284 >> 10)
          {
            goto LABEL_225;
          }

          v184 = *(&v284 + 1);
          v185 = v285;
          v172 = v286;
        }
      }

      else
      {
        v183 = v129;
        v184 = v128;
        v185 = v132;
        v182 = v258;
        v181 = v263;
      }

      v129 = v183;
      *&v273 = v183;
      *(&v273 + 1) = v184;
      *(&v254 + 1) = v184;
      v132 = v185;
      *&v274 = v185;
      *(&v274 + 1) = v172;
      v131 = v172;
      v275 = v181;
      v276 = v182;
      v205 = MEMORY[0x1E69E7CD0];
      if (specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]))
      {
        v206 = 0;
        v207 = 1 << *(v205 + 32);
        v208 = -1;
        if (v207 < 64)
        {
          v208 = ~(-1 << v207);
        }

        v209 = v208 & *(v205 + 56);
        v210 = (v207 + 63) >> 6;
        v128 = MEMORY[0x1E69E7CC0];
        while (v209)
        {
LABEL_179:
          v212 = __clz(__rbit64(v209));
          v209 &= v209 - 1;
          v213 = (*(v205 + 48) + ((v206 << 10) | (16 * v212)));
          v214 = v213[1];
          if (v214 >= 2)
          {
            v215 = specialized Collection.first.getter(*v213, v214);
            if ((v215 & 0x100000000) == 0)
            {
              v266 = v215;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v128 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v128 + 2) + 1, 1, v128);
              }

              v217 = *(v128 + 2);
              v216 = *(v128 + 3);
              v218 = v217 + 1;
              v219 = v266;
              if (v217 >= v216 >> 1)
              {
                v265 = v217 + 1;
                v220 = v128;
                v221 = v217;
                v222 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v216 > 1), v217 + 1, 1, v220);
                v218 = v265;
                v219 = v266;
                v217 = v221;
                v128 = v222;
              }

              *(v128 + 2) = v218;
              *&v128[4 * v217 + 32] = v219;
            }
          }
        }

        while (1)
        {
          v211 = v206 + 1;
          if (__OFADD__(v206, 1))
          {
            break;
          }

          if (v211 >= v210)
          {
LABEL_192:

            *&v304 = v272;
            *(&v304 + 1) = v271;
            *&v305 = v270;
            *(&v305 + 1) = v269;
            v306 = v268;
            v307 = v267;
            BigString.UnicodeScalarView.subscript.getter();
            v224 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v128);
            v226 = v231;
            v228 = v232;
            v230 = v233;
            outlined destroy of BigString(&v314);

            result = outlined destroy of BigSubstring.UnicodeScalarView(&v284);
            v130 = v259;
            v128 = *(&v254 + 1);
            if (v230 == 2)
            {
              goto LABEL_195;
            }

            if (v135 >= v224 >> 10)
            {
LABEL_194:
              v129 = v224;
              v128 = v226;
              v132 = v228;
              v131 = v230;
              goto LABEL_195;
            }

            goto LABEL_223;
          }

          v209 = *(v205 + 8 * v211 + 56);
          ++v206;
          if (v209)
          {
            v206 = v211;
            goto LABEL_179;
          }
        }

LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
        goto LABEL_208;
      }

      v223 = &v314;
      goto LABEL_188;
    }

    v130 = v160;
LABEL_195:
    v234 = v130[2];
    v235 = v250;
    *v250 = v129;
    v235[1] = v128;
    v235[2] = v132;
    v235[3] = v131;
    v235[4] = v234;
    return result;
  }

  v133 = *v249;
  v134 = v249[2];
  v318 = v249[1];
  v319 = v134;
  v317 = v133;
  v135 = v251 >> 10;
  if (v251 >> 10 < v254 >> 10)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v136 = *(v259 + 24);
  v137 = *(v259 + 32);
  v139 = *(v259 + 40);
  v138 = *(v259 + 48);
  v140 = *(v259 + 56);
  v141 = *(v259 + 64);
  v294 = v254;
  *&v295 = v253;
  *(&v295 + 1) = v252;
  v296 = v263;
  v297 = v258;
  if (v254 >> 10 == v135)
  {
    goto LABEL_195;
  }

  v270 = v141;
  v271 = v140;
  v272 = v138;
  v142 = v249[1];
  v304 = *v249;
  v305 = v142;
  v306 = *(v249 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v304, &v284);
  if ((specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]) & 1) == 0 || v135 <= BigString.startIndex.getter() >> 10)
  {
    v156 = *(&v254 + 1);
    v155 = v254;
    v158 = v252;
    v157 = v253;
    v154 = v258;
    v153 = v263;
LABEL_153:
    v129 = v155;
    *&v273 = v155;
    *(&v273 + 1) = v156;
    *(&v254 + 1) = v156;
    v132 = v157;
    *&v274 = v157;
    *(&v274 + 1) = v158;
    v131 = v158;
    v275 = v153;
    v276 = v154;
    v186 = MEMORY[0x1E69E7CD0];
    if (specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]))
    {
      v267 = v139;
      v268 = v137;
      v269 = v136;
      v187 = 0;
      v188 = 1 << *(v186 + 32);
      v189 = -1;
      if (v188 < 64)
      {
        v189 = ~(-1 << v188);
      }

      v190 = v189 & *(v186 + 56);
      v191 = (v188 + 63) >> 6;
      v192 = MEMORY[0x1E69E7CC0];
      while (v190)
      {
LABEL_162:
        v194 = __clz(__rbit64(v190));
        v190 &= v190 - 1;
        v195 = (*(v186 + 48) + ((v187 << 10) | (16 * v194)));
        v196 = v195[1];
        if (v196 >= 2)
        {
          v197 = specialized Collection.first.getter(*v195, v196);
          if ((v197 & 0x100000000) == 0)
          {
            v266 = v197;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v192 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v192 + 2) + 1, 1, v192);
            }

            v199 = *(v192 + 2);
            v198 = *(v192 + 3);
            v200 = v199 + 1;
            v201 = v266;
            if (v199 >= v198 >> 1)
            {
              v265 = v199 + 1;
              v202 = v192;
              v203 = v199;
              v204 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v198 > 1), v199 + 1, 1, v202);
              v200 = v265;
              v201 = v266;
              v199 = v203;
              v192 = v204;
            }

            *(v192 + 2) = v200;
            *&v192[4 * v199 + 32] = v201;
          }
        }
      }

      while (1)
      {
        v193 = v187 + 1;
        if (__OFADD__(v187, 1))
        {
          break;
        }

        if (v193 >= v191)
        {

          v308 = v269;
          v309 = v268;
          v310 = v267;
          v311 = v272;
          v312 = v271;
          v313 = v270;
          BigString.UnicodeScalarView.subscript.getter();
          v224 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v192);
          v226 = v225;
          v228 = v227;
          v230 = v229;
          outlined destroy of BigString(&v317);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v284);
          v130 = v259;
          v128 = *(&v254 + 1);
          if (v230 == 2)
          {
            goto LABEL_195;
          }

          if (v135 < v224 >> 10)
          {
            __break(1u);
            goto LABEL_192;
          }

          goto LABEL_194;
        }

        v190 = *(v186 + 8 * v193 + 56);
        ++v187;
        if (v190)
        {
          v187 = v193;
          goto LABEL_162;
        }
      }

LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    v223 = &v317;
LABEL_188:
    result = outlined destroy of BigString(v223);
    v130 = v259;
    v128 = *(&v254 + 1);
    goto LABEL_195;
  }

  v143 = v136;
  *&v314 = v136;
  v144 = v137;
  *(&v314 + 1) = v137;
  v145 = v139;
  *&v315 = v139;
  *(&v315 + 1) = v272;
  *&v316 = v271;
  *(&v316 + 1) = v270;
  v146 = BigString.UTF8View.index(before:)();
  v148 = v147;
  v150 = v149;
  v152 = v151;
  result = BigString.UTF8View.subscript.getter();
  if (v135 < v146 >> 10)
  {
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  v278 = v146;
  v279 = v148;
  v280 = v150;
  v281 = v152;
  v282 = v263;
  v283 = v258;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v278, &v284);
  result = outlined destroy of BigSubstring.UTF8View(&v299);
  v153 = v263;
  v154 = v258;
  v156 = *(&v254 + 1);
  v155 = v254;
  v158 = v252;
  v157 = v253;
  v136 = v143;
  v137 = v144;
  v139 = v145;
  if (v286 == 2)
  {
    goto LABEL_153;
  }

  v155 = v284;
  if (v135 >= v284 >> 10)
  {
    v156 = *(&v284 + 1);
    v157 = v285;
    v158 = v286;
    goto LABEL_153;
  }

LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.NSAttributesSlice.subscript.getter(uint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = v3;
  v320 = a2;
  v321 = a1;
  v455 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v312 - v8;
  v11 = *a3;
  v10 = a3[1];
  v13 = a3[2];
  v12 = a3[3];
  v352 = *(v4 + *(type metadata accessor for AttributedString.Runs.NSAttributesSlice(0) + 20));
  v341 = *(v352 + 16);
  if (!v341)
  {
    goto LABEL_307;
  }

  v14 = *v4;
  v340 = v11;
  v335 = v10;
  v337 = v13;
  v338 = v12;
  AttributedString.Guts.findRun(at:)(v11, v12, &v361);
  v336 = v361;
  v331 = v363;
  v332 = v362;
  v333 = v365;
  v334 = v364;
  v329 = v367;
  v330 = v366;
  v327 = v369;
  v328 = v368;
  v15 = *(type metadata accessor for AttributedString.Runs() + 24);
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v359 = v15;
  RangeSet.ranges.getter();
  v16 = RangeSet.Ranges.count.getter();
  v17 = *(v7 + 8);
  v7 += 8;
  v357 = v17;
  v17(v9, v6);
  if (v16 >= 1)
  {
    v19 = v7;
    v20 = 0;
    v7 = v340 >> 10;
    v356 = v19;
    while (1)
    {
      if (__OFADD__(v20, v16))
      {
        goto LABEL_292;
      }

      v21 = (v20 + v16) / 2;
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      v357(v9, v6);
      v18 = v361;
      if (v7 < v361 >> 10)
      {
        goto LABEL_4;
      }

      if (v7 < v365 >> 10)
      {
        break;
      }

      v20 = v21 + 1;
      v21 = v16;
LABEL_4:
      v16 = v21;
      if (v20 >= v21)
      {
        goto LABEL_290;
      }
    }

    v325 = v361 >> 10;
    v326 = v361;
    v354 = v6;
    v355 = v7;
    v323 = v363;
    v324 = v362;
    v322 = v364;
    v22 = *(v14 + 72);
    v23 = *(v14 + 80);
    v24 = *(v14 + 88);
    v7 = *(v14 + 96);
    swift_unknownObjectRetain();
    v26 = v331;
    v25 = v332;
    specialized Rope.subscript.getter(v336, v332, v331, v22, v23, v24, v7);
    v28 = v27;
    v11 = v29;
    swift_unknownObjectRelease();
    v30 = v4[1];
    v348 = v4;
    v353 = v14;
    if (v30 >= v334)
    {

      v345 = 0;
      goto LABEL_89;
    }

    v345 = 0;
    v315 = v11;
    v316 = (v352 + 40);
    v31 = v25;
    v7 = v26;
    v339 = v28;
    v313 = v30;
    while (1)
    {
      v32 = *(v14 + 72);
      v34 = *(v14 + 88);
      v33 = *(v14 + 96);
      v361 = v336;
      v362 = v31;
      v363 = v7;
      if (v336 != v33)
      {
        goto LABEL_316;
      }

      v351 = v34;
      if (v32)
      {
        v35 = *(v32 + 18);
        v11 = v31;
        swift_unknownObjectRetain();
        v31 = v11;
      }

      else
      {
        v35 = 0;
      }

      if (v35 >= v31)
      {
        goto LABEL_317;
      }

      if (v7)
      {
        v36 = (4 * *(v7 + 18) + 8) & 0x3C;
        if (((v31 >> v36) & 0xF) != 0)
        {
          v37 = ((((v31 >> v36) & 0xF) - 1) << v36) | ((-15 << v36) - 1) & v31;
          v362 = v37;
LABEL_37:
          v55 = (4 * *(v7 + 18) + 8) & 0x3C;
          v319 = v37;
          v317 = v7;
          v56 = (v7 + 24 * ((v37 >> v55) & 0xF));
          v51 = v56[3];
          v11 = v56[4];
          v7 = v56[5];

          swift_unknownObjectRelease();
          v54 = 0;
          goto LABEL_38;
        }
      }

      v38 = (4 * *(v32 + 18) + 8) & 0x3C;
      v39 = (v31 >> v38) & 0xF;
      if (*(v32 + 18))
      {
        break;
      }

      if (!v39)
      {
        goto LABEL_326;
      }

      v37 = ((v39 - 1) << v38) | v31 & 0xFFFFFFFFFFFFF0FFLL;
      v362 = v37;
      v363 = v32;
      v7 = v32;
      if (v32)
      {
        goto LABEL_37;
      }

LABEL_30:
      v319 = v37;
      v51 = specialized Rope._Node.subscript.getter(v37, v32);
      v11 = v52;
      v7 = v53;
      swift_unknownObjectRelease();
      v317 = 0;
      v54 = 1;
LABEL_38:

      if (__OFSUB__(v333, v51))
      {
        goto LABEL_319;
      }

      if (v336 != *(v14 + 96))
      {
        goto LABEL_320;
      }

      v314 = v333 - v51;
      if (v54)
      {
        v57 = *(v14 + 72);
        v11 = *(v14 + 88);
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v319, v57);
        v344 = v58;
        v318 = v59;
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = v317 + 24 * ((v319 >> ((4 * *(v317 + 18) + 8) & 0x3C)) & 0xF);
        v61 = *(v60 + 40);
        v344 = *(v60 + 32);

        v318 = v61;
      }

      v62 = v339;
      v63 = 0;
      --v334;
      v64 = v316;
      do
      {
        if (v63 >= *(v352 + 16))
        {
          goto LABEL_303;
        }

        v350 = v64;
        v351 = v63;
        v11 = *(v64 - 1);
        v65 = *v64;
        if (v62[2])
        {

          v66 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v65);
          if (v67)
          {
            outlined init with copy of AttributedString._AttributeValue(v62[7] + 72 * v66, &v393);
          }

          else
          {
            v397 = 0;
            v396 = 0u;
            v395 = 0u;
            v393 = 0u;
            v394 = 0u;
          }
        }

        else
        {
          v397 = 0;
          v396 = 0u;
          v395 = 0u;
          v393 = 0u;
          v394 = 0u;
        }

        if (*(v344 + 16))
        {
          v7 = v14;
          v68 = v344;
          v69 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v65);
          v11 = v70;

          if (v11)
          {
            outlined init with copy of AttributedString._AttributeValue(*(v68 + 56) + 72 * v69, &v388);
          }

          else
          {
            v392 = 0;
            v390 = 0u;
            v391 = 0u;
            v388 = 0u;
            v389 = 0u;
          }

          v14 = v7;
        }

        else
        {

          v392 = 0;
          v390 = 0u;
          v391 = 0u;
          v388 = 0u;
          v389 = 0u;
        }

        outlined init with copy of AttributedString._AttributeValue?(&v393, &v361);
        outlined init with copy of AttributedString._AttributeValue?(&v388, &v370);
        if (v364)
        {
          outlined init with copy of AttributedString._AttributeValue?(&v361, v385);
          if (!*(&v371 + 1))
          {
            outlined destroy of TermOfAddress?(&v388, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of TermOfAddress?(&v393, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of AttributedString._AttributeValue(v385);
LABEL_86:
            outlined destroy of TermOfAddress?(&v361, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_88:

            goto LABEL_89;
          }

          v377 = v372;
          v378 = v373;
          v379 = v374;
          v375 = v370;
          v376 = v371;
          v71 = v386;
          v343 = v387;
          v342 = __swift_project_boxed_opaque_existential_1(v385, v386);
          v72 = __swift_project_boxed_opaque_existential_1(&v375, *(&v376 + 1));
          v349 = &v312;
          v73 = *(v71 - 8);
          MEMORY[0x1EEE9AC00](v72);
          v75 = &v312 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
          v347 = &v312;
          v77 = MEMORY[0x1EEE9AC00](v76);
          (*(v79 + 16))(&v312 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0), v77);
          v80 = type metadata accessor for Optional();
          v346 = &v312;
          v81 = *(v80 - 8);
          MEMORY[0x1EEE9AC00](v80);
          v7 = &v312 - v82;
          v83 = swift_dynamicCast();
          v84 = *(v73 + 56);
          if (!v83)
          {
            v84(v7, 1, 1, v71);
            outlined destroy of TermOfAddress?(&v388, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of TermOfAddress?(&v393, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            (*(v81 + 8))(v7, v80);
            outlined destroy of AttributedString._AttributeValue(&v375);
            outlined destroy of AttributedString._AttributeValue(v385);
            outlined destroy of TermOfAddress?(&v361, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            v14 = v353;
            goto LABEL_88;
          }

          v84(v7, 0, 1, v71);
          (*(v73 + 32))(v75, v7, v71);
          v85 = dispatch thunk of static Equatable.== infix(_:_:)();
          v86 = *(v73 + 8);
          v11 = v73 + 8;
          v86(v75, v71);
          outlined destroy of TermOfAddress?(&v388, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v393, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v375);
          outlined destroy of AttributedString._AttributeValue(v385);
          outlined destroy of TermOfAddress?(&v361, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v14 = v353;
          v62 = v339;
          if ((v85 & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v388, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v393, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          if (*(&v371 + 1))
          {
            goto LABEL_86;
          }

          outlined destroy of TermOfAddress?(&v361, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        }

        v63 = v351 + 1;
        v64 = v350 + 2;
      }

      while (v341 != v351 + 1);

      v18 = v314;
      v333 = v314;
      v7 = v317;
      v31 = v319;
      if (v313 >= v334)
      {
        goto LABEL_295;
      }
    }

    if (v39 < *(v32 + 16))
    {
      v11 = *(v32 + 24 * ((v31 >> v38) & 0xF) + 24);
      v40 = (4 * *(v11 + 18) + 8) & 0x3C;
      v41 = (v31 >> v40) & 0xF;
      if (*(v11 + 18))
      {
        if (v41 >= *(v11 + 16))
        {
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        else
        {
          v42 = *(v11 + 24 * ((v31 >> v40) & 0xF) + 24);
          v43 = ((4 * *(v42 + 18) + 8) & 0x3C);
          v44 = (v31 >> v43) & 0xF;
          if (*(v42 + 18))
          {
            v45 = *(v42 + 16);
            v350 = *(v11 + 24 * ((v31 >> v40) & 0xF) + 24);
            if (v44 >= v45)
            {
              v347 = v43;
              v349 = (v31 >> v43) & 0xF;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
            }

            else
            {
              v346 = v11;
              v46 = *(v42 + 24 * ((v31 >> v43) & 0xF) + 24);
              v47 = *(v46 + 18);
              v48 = (4 * v47 + 8) & 0x3C;
              v49 = (v31 >> v48) & 0xF;
              *&v393 = v49;
              if (v47)
              {
                v347 = v43;
                v349 = (v31 >> v43) & 0xF;
                LODWORD(v344) = v47;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v50 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v46 + 16), v46 + 24, &v393, &v361, v344);
                v11 = v346;
                swift_unknownObjectRelease();
                if (v50)
                {
                  v7 = v363;
LABEL_81:
                  swift_unknownObjectRelease();
                  goto LABEL_82;
                }

                goto LABEL_75;
              }

              if (v49)
              {
                v362 = ((v49 - 1) << v48) | v31 & 0xFFFFFFFFFFFFF0FFLL;
                v363 = v46;
                v7 = v46;
                swift_unknownObjectRetain();
                v11 = v346;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                goto LABEL_81;
              }

              v347 = v43;
              v349 = (v31 >> v43) & 0xF;
              swift_unknownObjectRetain();
              v11 = v346;
              swift_unknownObjectRetain();
            }

            swift_unknownObjectRetain();
LABEL_75:
            if (v349)
            {
              v362 = v362 & ((-15 << v347) - 1) | ((v349 - 1) << v347);
              v87 = v11;
              v88 = v350[3 * v349];
              swift_unknownObjectRetain();
              v7 = specialized Rope._Node.descendToLastItem(under:)(&v362, v88);
              v11 = v87;
              swift_unknownObjectRelease();
              v363 = v7;
              goto LABEL_81;
            }

            swift_unknownObjectRelease();
            v14 = v353;
            goto LABEL_67;
          }

          if (v44)
          {
            v362 = ((v44 - 1) << v43) | v31 & 0xFFFFFFFFFFFFF0FFLL;
            v363 = v42;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v7 = v42;
LABEL_82:
            v14 = v353;
            swift_unknownObjectRelease();
LABEL_35:
            swift_unknownObjectRelease();
            if (v361 != v336)
            {
              goto LABEL_318;
            }

            v37 = v362;
            if (v7)
            {
              goto LABEL_37;
            }

            goto LABEL_30;
          }

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v14 = v353;
        }

LABEL_67:
        if (v41)
        {
          v362 = v362 & ((-15 << v40) - 1) | ((v41 - 1) << v40);
          v11 = *(v11 + 24 * v41);
          swift_unknownObjectRetain();
          v7 = specialized Rope._Node.descendToLastItem(under:)(&v362, v11);
          swift_unknownObjectRelease();
          v363 = v7;
          swift_unknownObjectRelease();
          goto LABEL_35;
        }

        swift_unknownObjectRelease();
        if (!v39)
        {
LABEL_325:
          swift_unknownObjectRelease();
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
          goto LABEL_332;
        }

LABEL_34:
        v362 = v362 & ((-15 << v38) - 1) | ((v39 - 1) << v38);
        v11 = *(v32 + 24 * v39);
        swift_unknownObjectRetain();
        v7 = specialized Rope._Node.descendToLastItem(under:)(&v362, v11);
        swift_unknownObjectRelease();
        v363 = v7;
        goto LABEL_35;
      }

      if (v41)
      {
        v362 = ((v41 - 1) << v40) | v31 & 0xFFFFFFFFFFFFF0FFLL;
        v363 = v11;
        swift_unknownObjectRetain();
        v7 = v11;
        goto LABEL_35;
      }
    }

    swift_unknownObjectRetain();
    if (!v39)
    {
      goto LABEL_325;
    }

    goto LABEL_34;
  }

LABEL_290:
  __break(1u);
  do
  {
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    v307 = v18;

    v333 = v307;
LABEL_89:
    v89 = v14 + 24;
    v90 = *(v14 + 40);
    v91 = *(v14 + 56);
    v452[6] = *(v14 + 24);
    v452[7] = v90;
    v452[8] = v91;
    v11 = v330;
    if (__OFSUB__(v333, v330 >> 11))
    {
      goto LABEL_308;
    }

    swift_unknownObjectRetain();
    v92 = BigString.UTF8View.index(_:offsetBy:)();
    v94 = v93;
    v96 = v95;
    v98 = v97;
    swift_unknownObjectRelease();
    if (v325 >= v92 >> 10)
    {
      v99 = v326;
    }

    else
    {
      v99 = v92;
    }

    v100 = v324;
    if (v325 < v92 >> 10)
    {
      v100 = v94;
    }

    v346 = v100;
    v347 = v99;
    if (v325 >= v92 >> 10)
    {
      v101 = v323;
    }

    else
    {
      v101 = v96;
    }

    v102 = v322;
    if (v325 < v92 >> 10)
    {
      v102 = v98;
    }

    v343 = v102;
    v344 = v101;
    v103 = *(v14 + 40);
    v452[3] = *(v14 + 24);
    v452[4] = v103;
    v452[5] = *(v14 + 56);
    swift_unknownObjectRetain();
    v104 = BigString.UnicodeScalarView.index(after:)();
    v106 = v105;
    v7 = v107;
    v11 = v108;
    swift_unknownObjectRelease();
    v109 = *v89;
    v110 = *(v14 + 40);
    v452[2] = *(v14 + 56);
    v452[1] = v110;
    v452[0] = v109;
    v111 = v104 >> 10;
    if (v104 >> 10 < v347 >> 10)
    {
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
      goto LABEL_311;
    }

    v112 = v14;
    v113 = *(v14 + 24);
    v114 = *(v14 + 32);
    v116 = v112[5];
    v115 = v112[6];
    v118 = v112[7];
    v117 = v112[8];
    v451[8] = v347;
    v451[9] = v346;
    v451[10] = v344;
    v451[11] = v343;
    v451[12] = v104;
    v451[13] = v106;
    v451[14] = v7;
    v451[15] = v11;
    if (v347 >> 10 == v111)
    {
      goto LABEL_102;
    }

    v342 = v113;
    v349 = v117;
    v350 = v118;
    v351 = v115;
    v119 = *(v89 + 16);
    v453[0] = *v89;
    v453[1] = v119;
    v454 = *(v89 + 32);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v453, &v361);
    v120 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
    v341 = v116;
    if ((v120 & 1) != 0 && v111 > BigString.startIndex.getter() >> 10)
    {
      v451[16] = v342;
      v451[17] = v114;
      v451[18] = v341;
      v451[19] = v351;
      v451[20] = v350;
      v451[21] = v349;
      v121 = BigString.UTF8View.index(before:)();
      v339 = v11;
      v122 = v7;
      v123 = v121;
      v333 = v125;
      v334 = v124;
      v127 = v126;
      BigString.UTF8View.subscript.getter();
      if (v111 < v123 >> 10)
      {
        goto LABEL_327;
      }

      v451[0] = v123;
      v451[1] = v334;
      v451[2] = v127;
      v451[3] = v333;
      v451[4] = v104;
      v451[5] = v106;
      v128 = v122;
      v451[6] = v122;
      v11 = v339;
      v451[7] = v339;
      specialized BidirectionalCollection<>._getBlock(for:in:)(1, v451, &v361);
      outlined destroy of BigSubstring.UTF8View(v385);
      v7 = v340;
      v130 = v346;
      v129 = v347;
      v132 = v343;
      v131 = v344;
      if (v364 != 2)
      {
        v129 = v361;
        if (v111 < v361 >> 10)
        {
          goto LABEL_331;
        }

        v130 = v362;
        v131 = v363;
        v132 = v364;
      }
    }

    else
    {
      v128 = v7;
      v7 = v340;
      v130 = v346;
      v129 = v347;
      v132 = v343;
      v131 = v344;
    }

    v346 = v130;
    v347 = v129;
    v437 = v129;
    v438 = v130;
    v343 = v132;
    v344 = v131;
    v439 = v131;
    v440 = v132;
    v441 = v104;
    v442 = v106;
    v443 = v128;
    v444 = v11;
    v133 = MEMORY[0x1E69E7CD0];
    if (specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]))
    {
      v339 = v114;
      v7 = 0;
      v134 = 1 << *(v133 + 32);
      v135 = -1;
      if (v134 < 64)
      {
        v135 = ~(-1 << v134);
      }

      v136 = v135 & *(v133 + 56);
      v137 = (v134 + 63) >> 6;
      v138 = MEMORY[0x1E69E7CC0];
      while (v136)
      {
LABEL_120:
        v140 = __clz(__rbit64(v136));
        v136 &= v136 - 1;
        v141 = (*(v133 + 48) + ((v7 << 10) | (16 * v140)));
        v142 = v141[1];
        if (v142 >= 2)
        {
          v143 = specialized Collection.first.getter(*v141, v142);
          if ((v143 & 0x100000000) == 0)
          {
            v334 = v143;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v138 + 2) + 1, 1, v138);
            }

            v11 = *(v138 + 2);
            v144 = *(v138 + 3);
            v145 = v334;
            if (v11 >= v144 >> 1)
            {
              v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v11 + 1, 1, v138);
              v145 = v334;
            }

            *(v138 + 2) = v11 + 1;
            *&v138[4 * v11 + 32] = v145;
          }
        }
      }

      while (1)
      {
        v139 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_301;
        }

        if (v139 >= v137)
        {
          break;
        }

        v136 = *(v133 + 8 * v139 + 56);
        ++v7;
        if (v136)
        {
          v7 = v139;
          goto LABEL_120;
        }
      }

      v445 = v342;
      v446 = v339;
      v447 = v341;
      v448 = v351;
      v449 = v350;
      v450 = v349;
      BigString.UnicodeScalarView.subscript.getter();
      v154 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v138);
      v11 = v155;
      v157 = v156;
      v159 = v158;
      outlined destroy of BigString(v452);

      outlined destroy of BigSubstring.UnicodeScalarView(&v388);
      if (v159 == 2)
      {
LABEL_102:
        v14 = v348;
      }

      else
      {
        v14 = v348;
        if (v111 < v154 >> 10)
        {
          goto LABEL_328;
        }

        v346 = v11;
        v347 = v154;
        v343 = v159;
        v344 = v157;
      }

      v7 = v340;
      goto LABEL_128;
    }

    outlined destroy of BigString(v452);
    v14 = v348;
LABEL_128:
    if (!*(v352 + 16))
    {
      goto LABEL_310;
    }

    v330 = v353[2];
    AttributedString.Guts.findRun(at:)(v7, v338, &v361);
    v146 = v361;
    v11 = v363;
    v350 = v364;
    v351 = v362;
    v349 = v365;
    v341 = v366;
    v339 = v367;
    v333 = v369;
    v334 = v368;
    RangeSet.ranges.getter();
    v147 = v354;
    v148 = RangeSet.Ranges.count.getter();
    v357(v9, v147);
  }

  while (v148 < 1);
  v149 = 0;
  v150 = v354;
  while (1)
  {
    if (__OFADD__(v149, v148))
    {
      goto LABEL_293;
    }

    v7 = (v149 + v148) / 2;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v357(v9, v150);
    v18 = v355;
    if (v355 >= v361 >> 10)
    {
      break;
    }

LABEL_131:
    v148 = v7;
    if (v149 >= v7)
    {
      goto LABEL_291;
    }
  }

  if (v355 >= v365 >> 10)
  {
    v149 = v7 + 1;
    v7 = v148;
    goto LABEL_131;
  }

  v354 = v367;
  v327 = v366;
  v328 = v368;
  v151 = *(v14 + 120);
  v152 = v350;
  v329 = v365;
  v342 = (v365 >> 10);
  if (v350 != v151)
  {
    goto LABEL_145;
  }

  v153 = *(v14 + 176);
  if (*(v14 + 208) != 2)
  {
    if (v153 == 2 || (*(v14 + 152) ^ *(v14 + 184)) >= 1024)
    {
      goto LABEL_180;
    }

    goto LABEL_145;
  }

  if (v153 == 2)
  {
LABEL_145:
    if (v350 >= v151)
    {
      goto LABEL_321;
    }

    v160 = v353[9];
    v161 = v353[10];
    v162 = v353[11];
    v163 = v353[12];
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v146, v351, v11, v160, v161, v162, v163);
    v356 = v164;
    v326 = v165;
    swift_unknownObjectRelease();
    while (1)
    {
      v359 = v349;
      v9 = v11;
      v7 = v351;
      v168 = v146;
      v169 = v353[9];
      v11 = v353[10];
      v170 = v353[12];
      v361 = v168;
      v362 = v351;
      v363 = v9;
      v171 = (v152 + 1);
      if (__OFADD__(v152, 1))
      {
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
        goto LABEL_309;
      }

      if (v168 != v170)
      {
        goto LABEL_297;
      }

      v357 = v168;
      v358 = v351;
      v350 = v152;
      if (v9)
      {
        v7 = *(v9 + 24 * ((v351 >> ((4 * *(v9 + 18) + 8) & 0x3C)) & 0xF) + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v7 = specialized Rope._Node.subscript.getter(v7, v169);
      }

      if (__OFADD__(v359, v7))
      {
        goto LABEL_298;
      }

      v349 = v359 + v7;
      if (v169)
      {
        v172 = ((-15 << ((4 * *(v169 + 18) + 8) & 0x3C)) - 1) & *(v169 + 18) | (*(v169 + 16) << ((4 * *(v169 + 18) + 8) & 0x3C));
      }

      else
      {
        v172 = 0;
      }

      v173 = v348;
      if (v358 >= v172)
      {
        goto LABEL_299;
      }

      if (v9 && (v174 = (4 * *(v9 + 18) + 8) & 0x3C, v175 = ((v358 >> v174) & 0xF) + 1, v175 < *(v9 + 16)))
      {
        v176 = (v175 << v174) | ((-15 << v174) - 1) & v358;
        swift_unknownObjectRelease();
      }

      else
      {
        if ((specialized Rope._Node.formSuccessor(of:)(&v361, v169) & 1) == 0)
        {
          if (v169)
          {
            v7 = *(v169 + 18);
            v177 = *(v169 + 16);
            swift_unknownObjectRelease();
            v11 = 0;
            v176 = ((-15 << ((4 * v7 + 8) & 0x3C)) - 1) & v7 | (v177 << ((4 * v7 + 8) & 0x3C));
          }

          else
          {
            v176 = 0;
            v11 = 0;
          }

          v146 = v357;
          if (v151 < v171)
          {
            goto LABEL_179;
          }

          goto LABEL_170;
        }

        swift_unknownObjectRelease();
        v176 = v362;
      }

      v11 = v363;
      v146 = v361;
      if (v151 < v171)
      {
        goto LABEL_179;
      }

LABEL_170:
      if (v171 == v151)
      {
        v178 = v173[22];
        if (v173[26] == 2)
        {
          if (v178 == 2)
          {
            goto LABEL_179;
          }
        }

        else if (v178 != 2 && (v173[19] ^ v173[23]) < 0x400)
        {
          goto LABEL_179;
        }
      }

      if (v146 != v353[12])
      {
        goto LABEL_300;
      }

      v351 = v176;
      if (v11)
      {
        v166 = *(v11 + 24 * ((v176 >> ((4 * *(v11 + 18) + 8) & 0x3C)) & 0xF) + 32);
      }

      else
      {
        v179 = v353[9];
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v176, v179);
        v166 = v180;
        swift_unknownObjectRelease();
      }

      v167 = specialized AttributedString._AttributeStorage.isEqual(to:comparing:)(v166, v352, v356);

      v152 = (v350 + 1);
      if ((v167 & 1) == 0)
      {
LABEL_179:

        v14 = v348;
        goto LABEL_181;
      }
    }
  }

LABEL_180:
  v357 = v146;
  v358 = v351;
  v9 = v11;
  v359 = v349;
LABEL_181:
  v181 = v353;
  v182 = v353[9];
  v11 = v353[10];
  v7 = v353[11];
  v183 = v353[12];
  swift_unknownObjectRetain();
  v184 = specialized Rope.subscript.getter(v357, v358, v9, v182, v11, v7, v183);
  v9 = v185;
  swift_unknownObjectRelease();

  if (__OFADD__(v359, v184))
  {
LABEL_311:
    __break(1u);
    goto LABEL_312;
  }

  v186 = *(v181 + 5);
  v434 = *(v181 + 3);
  v435 = v186;
  v436 = *(v181 + 7);
  if (__OFSUB__(v359 + v184, v341 >> 11))
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  swift_unknownObjectRetain();
  v7 = BigString.UTF8View.index(_:offsetBy:)();
  v357 = v188;
  v358 = v187;
  v356 = v189;
  swift_unknownObjectRelease();
  v190 = v7 >> 10;
  v191 = v181[3];
  v193 = v181[5];
  v192 = v181[6];
  v349 = v181[4];
  v350 = v193;
  v351 = v192;
  v194 = v181[8];
  v359 = v181[7];
  if (v7 >> 10 >= v342)
  {
    v341 = v194;
    v209 = v340;
    v420 = v340;
    v210 = v335;
    v421 = v335;
    v212 = v337;
    v211 = v338;
    v422 = v337;
    v423 = v338;
    v213 = v328;
    v214 = v329;
    v424 = v329;
    v215 = v327;
    v425 = v327;
    v216 = v354;
    v426 = v354;
    v427 = v328;
    swift_unknownObjectRetain();
    v217 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
    v339 = v191;
    if (v217)
    {
      v428 = v191;
      v429 = v349;
      v430 = v350;
      v431 = v351;
      v432 = v359;
      v433 = v341;
      BigString.UTF8View.subscript.getter();
      v412 = v209;
      v413 = v210;
      v414 = v212;
      v415 = v338;
      v416 = v209;
      v417 = v210;
      v418 = v212;
      v419 = v338;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v412, &v361);
      v211 = v338;
      outlined destroy of BigSubstring.UTF8View(&v393);
      v218 = v214;
      v219 = v215;
      v220 = v213;
      if (v368 != 2)
      {
        v218 = v365;
        if (v355 > v365 >> 10)
        {
          goto LABEL_329;
        }

        v219 = v366;
        v216 = v367;
        v220 = v368;
      }
    }

    else
    {
      v218 = v214;
      v219 = v215;
      v220 = v213;
    }

    v398 = v340;
    v399 = v210;
    v400 = v337;
    v401 = v211;
    v402 = v218;
    v403 = v219;
    v404 = v216;
    v405 = v220;
    v221 = MEMORY[0x1E69E7CD0];
    if (specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]))
    {
      v358 = v219;
      v7 = 0;
      v222 = 1 << *(v221 + 32);
      v223 = -1;
      if (v222 < 64)
      {
        v223 = ~(-1 << v222);
      }

      v11 = v223 & *(v221 + 56);
      v9 = (v222 + 63) >> 6;
      v224 = MEMORY[0x1E69E7CC0];
      while (v11)
      {
LABEL_220:
        v226 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v227 = (*(v221 + 48) + ((v7 << 10) | (16 * v226)));
        v228 = v227[1];
        if (v228 >= 2)
        {
          v229 = specialized Collection.first.getter(*v227, v228);
          if ((v229 & 0x100000000) == 0)
          {
            v357 = v229;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v224 + 2) + 1, 1, v224);
            }

            v231 = *(v224 + 2);
            v230 = *(v224 + 3);
            v232 = v231 + 1;
            v233 = v357;
            if (v231 >= v230 >> 1)
            {
              v356 = v231 + 1;
              v234 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v230 > 1), v231 + 1, 1, v224);
              v232 = v356;
              v233 = v357;
              v224 = v234;
            }

            *(v224 + 2) = v232;
            *&v224[4 * v231 + 32] = v233;
          }
        }
      }

      while (1)
      {
        v225 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_304;
        }

        if (v225 >= v9)
        {
          break;
        }

        v11 = *(v221 + 8 * v225 + 56);
        ++v7;
        if (v11)
        {
          v7 = v225;
          goto LABEL_220;
        }
      }

      v406 = v339;
      v407 = v349;
      v408 = v350;
      v409 = v351;
      v410 = v359;
      v411 = v341;
      BigString.UnicodeScalarView.subscript.getter();
      v236 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v224);
      v238 = v237;
      v240 = v239;
      v242 = v241;

      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v361);
      if (v242 == 2)
      {
        v213 = v328;
        v235 = v329;
        v215 = v327;
        v219 = v358;
      }

      else
      {
        v235 = v329;
        if (v355 > v236 >> 10)
        {
          goto LABEL_330;
        }

        v218 = v236;
        v216 = v240;
        v219 = v238;
        v220 = v242;
        v215 = v327;
        v213 = v328;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v235 = v329;
    }

    if ((v218 >> 10) == v342)
    {
      v7 = v235;
    }

    else
    {
      v7 = v218;
    }

    if ((v218 >> 10) == v342)
    {
      v243 = v215;
    }

    else
    {
      v243 = v219;
    }

    v244 = v354;
    if ((v218 >> 10) != v342)
    {
      v244 = v216;
    }

    v357 = v244;
    v358 = v243;
    if ((v218 >> 10) == v342)
    {
      v245 = v213;
    }

    else
    {
      v245 = v220;
    }

    v356 = v245;
    v14 = v348;
    goto LABEL_245;
  }

  v195 = v355;
  v196 = v338;
  v9 = v335;
  v11 = v340;
  if (v190 < v355)
  {
    goto LABEL_322;
  }

  v420 = v340;
  v421 = v335;
  v422 = v337;
  v423 = v338;
  v424 = v7;
  v425 = v358;
  v426 = v357;
  v427 = v356;
  if (v355 != v190)
  {
    swift_unknownObjectRetain();
    if (specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]))
    {
      v428 = v191;
      v429 = v349;
      v430 = v350;
      v431 = v351;
      v432 = v359;
      v433 = v194;
      BigString.UTF8View.subscript.getter();
      v412 = v11;
      v413 = v9;
      v414 = v337;
      v415 = v338;
      v416 = v11;
      v417 = v9;
      v418 = v337;
      v419 = v338;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v412, &v361);
      v196 = v338;
      outlined destroy of BigSubstring.UTF8View(&v393);
      if (v368 != 2)
      {
        v7 = v365;
        if (v195 <= v365 >> 10)
        {
          v357 = v367;
          v358 = v366;
          v356 = v368;
          goto LABEL_190;
        }

LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
      }
    }

LABEL_190:
    v398 = v11;
    v399 = v9;
    v400 = v337;
    v401 = v196;
    v402 = v7;
    v403 = v358;
    v404 = v357;
    v405 = v356;
    v197 = MEMORY[0x1E69E7CD0];
    if (specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]))
    {
      v354 = v7;
      v198 = 0;
      v199 = 1 << *(v197 + 32);
      v200 = -1;
      if (v199 < 64)
      {
        v200 = ~(-1 << v199);
      }

      v7 = v200 & *(v197 + 56);
      v9 = (v199 + 63) >> 6;
      v201 = MEMORY[0x1E69E7CC0];
      while (v7)
      {
LABEL_199:
        v203 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v204 = (*(v197 + 48) + ((v198 << 10) | (16 * v203)));
        v205 = v204[1];
        if (v205 >= 2)
        {
          v206 = specialized Collection.first.getter(*v204, v205);
          if ((v206 & 0x100000000) == 0)
          {
            v341 = v194;
            v11 = v206;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v201 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v201 + 2) + 1, 1, v201);
            }

            v208 = *(v201 + 2);
            v207 = *(v201 + 3);
            if (v208 >= v207 >> 1)
            {
              v201 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v207 > 1), v208 + 1, 1, v201);
            }

            *(v201 + 2) = v208 + 1;
            *&v201[4 * v208 + 32] = v11;
            v14 = v348;
            v194 = v341;
          }
        }
      }

      while (1)
      {
        v202 = v198 + 1;
        if (__OFADD__(v198, 1))
        {
          goto LABEL_306;
        }

        if (v202 >= v9)
        {
          break;
        }

        v7 = *(v197 + 8 * v202 + 56);
        ++v198;
        if (v7)
        {
          v198 = v202;
          goto LABEL_199;
        }
      }

      v406 = v191;
      v407 = v349;
      v408 = v350;
      v409 = v351;
      v410 = v359;
      v411 = v194;
      BigString.UnicodeScalarView.subscript.getter();
      v300 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v201);
      v302 = v301;
      v304 = v303;
      v306 = v305;

      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v361);
      if (v306 == 2)
      {
        v7 = v354;
      }

      else
      {
        if (v355 > v300 >> 10)
        {
          goto LABEL_333;
        }

        v357 = v304;
        v358 = v302;
        v7 = v300;
        v356 = v306;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

LABEL_245:
  v350 = v353[2];
  v246 = v353[9];
  v247 = v353[10];
  v248 = v353[11];
  v249 = v353[12];
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v336, v332, v331, v246, v247, v248, v249);
  v11 = v250;
  v353 = v251;
  v252 = swift_unknownObjectRelease();
  v351 = &v312;
  MEMORY[0x1EEE9AC00](v252);
  *(&v312 - 2) = v14;
  MEMORY[0x1EEE9AC00](v253);
  *(&v312 - 2) = closure #1 in AttributedString.Runs.NSAttributesSlice.buildContainer(from:)partial apply;
  *(&v312 - 1) = v255;
  v256 = *(v11 + 32);
  v9 = ((1 << v256) + 63) >> 6;
  if ((v256 & 0x3Fu) > 0xD)
  {
LABEL_313:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_323;
    }
  }

  v342 = v9;
  v354 = v7;
  v349 = &v312;
  MEMORY[0x1EEE9AC00](v254);
  v348 = (&v312 - ((v257 + 15) & 0x3FFFFFFFFFFFFFF0));
  bzero(v348, v257);
  v355 = 0;
  v7 = 0;
  v359 = v11;
  v9 = v11 + 64;
  v18 = 1 << *(v11 + 32);
  v258 = -1;
  if (v18 < 64)
  {
    v258 = ~(-1 << v18);
  }

  v14 = v258 & *(v11 + 64);
  v259 = (v18 + 63) >> 6;
  while (1)
  {
    if (v14)
    {
      v260 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v261 = v260 | (v7 << 6);
      v11 = v359;
    }

    else
    {
      v262 = v7;
      v11 = v359;
      v261 = v355;
      do
      {
        v7 = v262 + 1;
        if (__OFADD__(v262, 1))
        {
          goto LABEL_294;
        }

        if (v7 >= v259)
        {
          goto LABEL_260;
        }

        v18 = *(v9 + 8 * v7);
        ++v262;
      }

      while (!v18);
      v14 = (v18 - 1) & v18;
      v261 = __clz(__rbit64(v18)) | (v7 << 6);
    }

    v263 = (*(v11 + 48) + 16 * v261);
    v264 = *v263;
    v265 = v263[1];
    outlined init with copy of AttributedString._AttributeValue(*(v11 + 56) + 72 * v261, &v380);
    *&v375 = v264;
    *(&v375 + 1) = v265;
    v266 = outlined init with copy of AttributedString._AttributeValue(&v380, &v376);
    v11 = &v312;
    v360[0] = v264;
    v360[1] = v265;
    MEMORY[0x1EEE9AC00](v266);
    *(&v312 - 2) = v360;
    swift_bridgeObjectRetain_n();
    v267 = v345;
    v268 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v312 - 4), v352);
    v345 = v267;
    outlined destroy of TermOfAddress?(&v375, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
    outlined destroy of AttributedString._AttributeValue(&v380);

    if (v268)
    {
      v269 = (v261 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v18 = *(v348 + v269) | (1 << v261);
      *(v348 + v269) = v18;
      if (__OFADD__(v355++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_260:
  if (v261)
  {
    if (v261 == *(v11 + 16))
    {

      v271 = v11;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v271 = static _DictionaryStorage.allocate(capacity:)();
      v7 = 0;
      v9 = *v348;
      v281 = v271 + 64;
      do
      {
        if (v9)
        {
          v285 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
        }

        else
        {
          v286 = v7;
          do
          {
            v7 = v286 + 1;
            if (__OFADD__(v286, 1))
            {
              goto LABEL_302;
            }

            if (v7 >= v342)
            {
              goto LABEL_264;
            }

            v287 = v348[v7];
            ++v286;
          }

          while (!v287);
          v285 = __clz(__rbit64(v287));
          v9 = (v287 - 1) & v287;
        }

        v288 = v285 | (v7 << 6);
        v289 = (*(v11 + 48) + 16 * v288);
        v290 = *v289;
        v291 = v289[1];
        outlined init with copy of AttributedString._AttributeValue(*(v11 + 56) + 72 * v288, &v375);
        v382 = v377;
        v383 = v378;
        v384 = v379;
        v380 = v375;
        v381 = v376;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v292 = Hasher._finalize()();
        v293 = -1 << *(v271 + 32);
        v294 = v292 & ~v293;
        v295 = v294 >> 6;
        if (((-1 << v294) & ~*(v281 + 8 * (v294 >> 6))) != 0)
        {
          v282 = __clz(__rbit64((-1 << v294) & ~*(v281 + 8 * (v294 >> 6)))) | v294 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v296 = 0;
          v297 = (63 - v293) >> 6;
          do
          {
            if (++v295 == v297 && (v296 & 1) != 0)
            {
              goto LABEL_305;
            }

            v298 = v295 == v297;
            if (v295 == v297)
            {
              v295 = 0;
            }

            v296 |= v298;
            v299 = *(v281 + 8 * v295);
          }

          while (v299 == -1);
          v282 = __clz(__rbit64(~v299)) + (v295 << 6);
        }

        *(v281 + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v282;
        v283 = (*(v271 + 48) + 16 * v282);
        *v283 = v290;
        v283[1] = v291;
        v284 = *(v271 + 56) + 72 * v282;
        *(v284 + 16) = v381;
        *(v284 + 32) = v382;
        *(v284 + 48) = v383;
        *(v284 + 64) = v384;
        *v284 = v380;
        ++*(v271 + 16);
        --v261;
      }

      while (v261);
    }
  }

  else
  {
    v271 = MEMORY[0x1E69E7CC8];
  }

LABEL_264:
  v7 = v354;
  while (1)
  {

    v273 = v321;
    v274 = v353;
    *v321 = v271;
    v273[1] = v274;
    v275 = v346;
    v277 = v343;
    v276 = v344;
    if (v7 >> 10 >= v347 >> 10)
    {
      v278 = v320;
      *v320 = v347;
      v278[1] = v275;
      v278[2] = v276;
      v278[3] = v277;
      v278[4] = v330;
      v278[5] = v7;
      v279 = v357;
      v278[6] = v358;
      v278[7] = v279;
      v280 = v350;
      v278[8] = v356;
      v278[9] = v280;
      return result;
    }

    __break(1u);
LABEL_316:
    __break(1u);
LABEL_317:
    __break(1u);
LABEL_318:
    __break(1u);
LABEL_319:
    __break(1u);
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
LABEL_322:
    __break(1u);
LABEL_323:
    v308 = v9;
    v9 = swift_slowAlloc();

    v309 = v308;
    v310 = v345;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v9, v309, v11, thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error)partial apply);
    if (v310)
    {
      break;
    }

    v271 = v311;

    MEMORY[0x1865D2690](v9, -1, -1);
  }

  result = MEMORY[0x1865D2690](v9, -1, -1);
  __break(1u);
  return result;
}

uint64_t closure #1 in AttributedString.Runs.NSAttributesSlice.buildContainer(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a1;
  v11[1] = a2;
  outlined init with copy of AttributedString._AttributeValue(a3, &v12);
  v7 = *(a4 + *(type metadata accessor for AttributedString.Runs.NSAttributesSlice(0) + 20));
  v10[0] = a1;
  v10[1] = a2;
  v9[2] = v10;

  LOBYTE(v7) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, v7);
  outlined destroy of TermOfAddress?(v11, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
  return v7 & 1;
}

void protocol witness for BidirectionalCollection.formIndex(before:) in conformance AttributedString.Runs.NSAttributesSlice(unint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v210 - v8;
  v244 = *(v4 + *(a2 + 20));
  v240 = *(v244 + 16);
  if (!v240)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v10 = *(a1 + 1);
  v235 = *a1;
  v236 = v10;
  v224 = a1;
  v11 = v4[23];
  v12 = v4[26];
  v13 = v235;
  v14 = *(type metadata accessor for AttributedString.Runs() + 24);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v246 = v14;
  RangeSet.ranges.getter();
  v15 = RangeSet.Ranges.count.getter();
  v17 = *(v7 + 8);
  v16 = (v7 + 8);
  v247 = v17;
  (v17)(v9, v6);
  if (v12 != 2 && (v11 ^ v13) < 0x400)
  {
    v12 = v15;
LABEL_14:
    if (v12 < 1)
    {
      goto LABEL_139;
    }

    type metadata accessor for AttributedString.Runs();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v247)(v9, v6);
    v229 = v261;
    v230 = v259;
    v233 = v260;
    v234 = v262;
    v235 = v263;
    v236 = v264;
    goto LABEL_17;
  }

  v243 = v13;
  if (v15 >= 1)
  {
    v16 = v4;
    v19 = 0;
    v20 = v243 >> 10;
    while (!__OFADD__(v19, v15))
    {
      v12 = (v19 + v15) / 2;
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      (v247)(v9, v6);
      v18 = v259;
      if (v20 < v259 >> 10)
      {
        v15 = (v19 + v15) / 2;
        if (v19 >= v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (v20 < v263 >> 10)
        {
          goto LABEL_13;
        }

        v19 = v12 + 1;
        if (v12 + 1 >= v15)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v4 = v16;
  if ((v18 ^ v243) <= 0x3FF)
  {
    goto LABEL_14;
  }

  v229 = v261;
  v230 = v18;
  v233 = v260;
  v234 = v262;
LABEL_17:
  v21 = *v4;
  v22 = *(*v4 + 24);
  v222 = (*v4 + 24);
  v23 = *(v21 + 5);
  v296 = v22;
  v297 = v23;
  v298 = *(v21 + 7);
  swift_unknownObjectRetain();
  v213 = *(&v235 + 1);
  v223 = v235;
  v214 = v236;
  v24 = BigString.UTF8View.index(before:)();
  v218 = v26;
  v219 = v25;
  v217 = v27;
  swift_unknownObjectRelease();
  v28 = v21[9];
  v29 = v21[10];
  v220 = v24;
  v30 = v21[11];
  v31 = v21[12];
  swift_unknownObjectRetain();
  v227 = v24 >> 11;
  if (specialized Rope.find<A>(at:in:preferEnd:)(v24 >> 11, 0, v28, v29, v30, v31) != v31)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v35 = v34;
  v231 = v33;
  v232 = v32;
  if (v28)
  {
    v36 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v31, v32, v33, v28, v29);
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0;
  }

  if (__OFSUB__(v227, v35))
  {
    goto LABEL_138;
  }

  v228 = v227 - v35;
  v37 = v21[9];
  v38 = v21[10];
  v39 = v21[11];
  v40 = v21[12];
  swift_unknownObjectRetain();
  v226 = v31;
  specialized Rope.subscript.getter(v31, v232, v231, v37, v38, v39, v40);
  v42 = v41;
  v44 = v43;
  swift_unknownObjectRelease();
  v45 = v4[1];
  if (v45 >= v36)
  {

    goto LABEL_52;
  }

  v215 = (v244 + 40);
  v221 = v21;
  v237 = v44;
  v238 = v42;
  v211 = v45;
LABEL_24:
  v225 = v36;
  v46 = v21;
  v47 = v21[9];
  v48 = v21[10];
  v247 = v48;
  v49 = v46[11];
  v50 = v46[12];
  v259 = v226;
  v260 = v232;
  v261 = v231;
  swift_unknownObjectRetain();
  specialized Rope.formIndex(before:)(&v259, v47, v48, v49, v50);
  v51 = v259;
  v52 = v260;
  v53 = v261;
  v247 = specialized Rope.subscript.getter(v259, v260, v261, v47, v247, v49, v50);
  swift_unknownObjectRelease();

  if (__OFSUB__(v228, v247))
  {
    goto LABEL_140;
  }

  v212 = v228 - v247;
  --v225;
  v54 = v46[9];
  v247 = v46[10];
  v55 = v46[11];
  v56 = v46[12];
  swift_unknownObjectRetain();
  v226 = v51;
  v231 = v53;
  v232 = v52;
  specialized Rope.subscript.getter(v51, v52, v53, v54, v247, v55, v56);
  v58 = v57;
  v216 = v59;
  swift_unknownObjectRelease();
  v60 = 0;
  v61 = v215;
  v239 = v58;
  while (1)
  {
    if (v60 >= *(v244 + 16))
    {
      goto LABEL_133;
    }

    v246 = v61;
    v247 = v60;
    v62 = *(v61 - 1);
    v63 = *v61;
    if (*(v42 + 16))
    {

      v64 = specialized __RawDictionaryStorage.find<A>(_:)(v62, v63);
      if (v65)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v42 + 56) + 72 * v64, &v275);
        if (!*(v58 + 16))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v279 = 0;
        v277 = 0u;
        v278 = 0u;
        v275 = 0u;
        v276 = 0u;
        if (!*(v58 + 16))
        {
LABEL_38:

          goto LABEL_39;
        }
      }
    }

    else
    {
      v279 = 0;
      v277 = 0u;
      v278 = 0u;
      v275 = 0u;
      v276 = 0u;

      if (!*(v58 + 16))
      {
        goto LABEL_38;
      }
    }

    v66 = specialized __RawDictionaryStorage.find<A>(_:)(v62, v63);
    v68 = v67;

    if (v68)
    {
      outlined init with copy of AttributedString._AttributeValue(*(v58 + 56) + 72 * v66, &v270);
      goto LABEL_40;
    }

LABEL_39:
    v274 = 0;
    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
LABEL_40:
    outlined init with copy of AttributedString._AttributeValue?(&v275, &v259);
    outlined init with copy of AttributedString._AttributeValue?(&v270, &v265);
    if (v262)
    {
      break;
    }

    outlined destroy of TermOfAddress?(&v270, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v275, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v266 + 1))
    {
      goto LABEL_49;
    }

    outlined destroy of TermOfAddress?(&v259, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
LABEL_28:
    v60 = v247 + 1;
    v61 = (v246 + 16);
    if (v240 == v247 + 1)
    {

      v83 = v212;
      v228 = v212;
      v36 = v225;
      v21 = v221;
      if (v211 >= v225)
      {

        v84 = v83;
        goto LABEL_53;
      }

      goto LABEL_24;
    }
  }

  outlined init with copy of AttributedString._AttributeValue?(&v259, &v253);
  if (*(&v266 + 1))
  {
    v250 = v267;
    v251 = v268;
    v252 = v269;
    v248 = v265;
    v249 = v266;
    v69 = v256;
    v242 = v257;
    v241 = __swift_project_boxed_opaque_existential_1(&v253, v256);
    v70 = __swift_project_boxed_opaque_existential_1(&v248, *(&v249 + 1));
    v245 = &v210;
    v71 = *(v69 - 8);
    MEMORY[0x1EEE9AC00](v70);
    v73 = &v210 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    v243 = &v210;
    v75 = MEMORY[0x1EEE9AC00](v74);
    (*(v77 + 16))(&v210 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0), v75);
    v78 = type metadata accessor for Optional();
    v79 = *(v78 - 8);
    MEMORY[0x1EEE9AC00](v78);
    v81 = &v210 - v80;
    if ((swift_dynamicCast() & 1) == 0)
    {
      outlined destroy of TermOfAddress?(&v270, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v275, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      (*(v71 + 56))(v81, 1, 1, v69);
      (*(v79 + 8))(v81, v78);
      outlined destroy of AttributedString._AttributeValue(&v248);
      outlined destroy of AttributedString._AttributeValue(&v253);
      outlined destroy of TermOfAddress?(&v259, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      goto LABEL_51;
    }

    (*(v71 + 56))(v81, 0, 1, v69);
    (*(v71 + 32))(v73, v81, v69);
    v82 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v71 + 8))(v73, v69);
    outlined destroy of TermOfAddress?(&v270, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v275, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of AttributedString._AttributeValue(&v248);
    outlined destroy of AttributedString._AttributeValue(&v253);
    outlined destroy of TermOfAddress?(&v259, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v42 = v238;
    v58 = v239;
    if ((v82 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_28;
  }

  outlined destroy of TermOfAddress?(&v270, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of TermOfAddress?(&v275, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of AttributedString._AttributeValue(&v253);
LABEL_49:
  outlined destroy of TermOfAddress?(&v259, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_51:

  v21 = v221;
LABEL_52:
  v84 = v228;
LABEL_53:
  v86 = v229;
  v85 = v230;
  if (v84 >= (v230 >> 11))
  {
    v109 = *(v21 + 5);
    v293 = *(v21 + 3);
    v294 = v109;
    v295 = *(v21 + 7);
    v110 = v21;
    swift_unknownObjectRetain();
    v85 = BigString.UTF8View.index(_:offsetBy:)();
    v112 = v111;
    v114 = v113;
    v116 = v115;
    swift_unknownObjectRelease();
    v117 = *v222;
    v118 = v222[2];
    v291 = v222[1];
    v292 = v118;
    v290 = v117;
    if (v223 >> 10 < v85 >> 10)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v119 = v110[3];
    v120 = v110[4];
    v121 = v110[5];
    v122 = v110[6];
    v123 = v110[7];
    v124 = v110[8];
    *&v270 = v85;
    v233 = v112;
    v234 = v116;
    *(&v270 + 1) = v112;
    *&v271 = v114;
    *(&v271 + 1) = v116;
    v272 = v235;
    v273 = v236;
    v21 = v110;
    v86 = v114;
    if (v85 >> 10 != v223 >> 10)
    {
      v243 = v124;
      v244 = v223 >> 10;
      v245 = v123;
      v246 = v122;
      v247 = v121;
      v125 = v114;
      v126 = v85;
      v127 = v222[1];
      v299[0] = *v222;
      v299[1] = v127;
      v300 = *(v222 + 4);
      outlined init with copy of Rope<BigString._Chunk>._Node?(v299, &v259);
      if (specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]))
      {
        v128 = v119;
        v129 = BigString.startIndex.getter();
        v130 = v244;
        if (v244 <= v129 >> 10)
        {
          v139 = v234;
          v138 = v235;
          v137 = v236;
          v119 = v128;
        }

        else
        {
          v221 = v21;
          v284 = v128;
          v285 = v120;
          v286 = v247;
          v287 = v246;
          v288 = v245;
          v289 = v243;
          v131 = BigString.UTF8View.index(before:)();
          v133 = v132;
          v135 = v134;
          v242 = v136;
          BigString.UTF8View.subscript.getter();
          if (v130 < v131 >> 10)
          {
LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

          v253 = v131;
          v254 = v133;
          v255 = v135;
          v256 = v242;
          v257 = v235;
          v258 = v236;
          specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v253, &v259);
          outlined destroy of BigSubstring.UTF8View(&v275);
          v138 = v235;
          v137 = v236;
          v21 = v221;
          v139 = v234;
          v119 = v128;
          if (v262 != 2)
          {
            v126 = v259;
            if (v244 < v259 >> 10)
            {
              goto LABEL_146;
            }

            v125 = v261;
            v233 = v260;
            v139 = v262;
          }
        }
      }

      else
      {
        v139 = v234;
        v138 = v235;
        v137 = v236;
      }

      v229 = v125;
      v230 = v126;
      *&v248 = v126;
      *(&v248 + 1) = v233;
      *&v249 = v125;
      *(&v249 + 1) = v139;
      v234 = v139;
      v250 = v138;
      v251 = v137;
      v159 = MEMORY[0x1E69E7CD0];
      if ((specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]) & 1) == 0)
      {
LABEL_110:
        v158 = &v290;
LABEL_111:
        outlined destroy of BigString(v158);
LABEL_112:
        v86 = v229;
        v85 = v230;
        goto LABEL_113;
      }

      v160 = 0;
      v161 = 1 << *(v159 + 32);
      v162 = -1;
      if (v161 < 64)
      {
        v162 = ~(-1 << v161);
      }

      v163 = v162 & *(v159 + 56);
      v164 = (v161 + 63) >> 6;
      v90 = MEMORY[0x1E69E7CC0];
      while (v163)
      {
LABEL_101:
        v166 = __clz(__rbit64(v163));
        v163 &= v163 - 1;
        v167 = (*(v159 + 48) + ((v160 << 10) | (16 * v166)));
        v168 = v167[1];
        if (v168 >= 2)
        {
          v169 = specialized Collection.first.getter(*v167, v168);
          if ((v169 & 0x100000000) == 0)
          {
            v242 = v169;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v221 = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 2) + 1, 1, v90);
            }

            v172 = *(v90 + 2);
            v171 = *(v90 + 3);
            v173 = v242;
            if (v172 >= v171 >> 1)
            {
              v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v171 > 1), v172 + 1, 1, v90);
              v173 = v242;
            }

            *(v90 + 2) = v172 + 1;
            *&v90[4 * v172 + 32] = v173;
            v21 = v221;
          }
        }
      }

      while (1)
      {
        v165 = v160 + 1;
        if (__OFADD__(v160, 1))
        {
          goto LABEL_135;
        }

        if (v165 >= v164)
        {
          break;
        }

        v163 = *(v159 + 8 * v165 + 56);
        ++v160;
        if (v163)
        {
          v160 = v165;
          goto LABEL_101;
        }
      }

      *&v280 = v119;
      *(&v280 + 1) = v120;
      *&v281 = v247;
      *(&v281 + 1) = v246;
      v282 = v245;
      v283 = v243;
      BigString.UnicodeScalarView.subscript.getter();
      v247 = (v264 >> 10);
      if (v264 >> 10 == *(&v265 + 1) >> 10)
      {

        outlined destroy of BigSubstring.UnicodeScalarView(&v259);
        goto LABEL_110;
      }

LABEL_121:
      v221 = v21;
      v194 = BigSubstring.UnicodeScalarView.index(before:)();
      v196 = v195;
      v86 = v197;
      v199 = v198;
      v200 = BigSubstring.UnicodeScalarView.subscript.getter();
      if (specialized Sequence<>.contains(_:)(v200, v90))
      {

        outlined destroy of BigSubstring.UnicodeScalarView(&v259);
        outlined destroy of BigString(&v290);
        v201 = (v194 >> 10);
LABEL_127:
        v85 = v194;
        v233 = v196;
        v234 = v199;
        v21 = v221;
        if (v244 >= v201)
        {
          goto LABEL_113;
        }

        __break(1u);
LABEL_129:
        outlined destroy of BigString(&v293);
      }

      else
      {
        v246 = v90;
        while (v247 < v194 >> 10)
        {
          v202 = v86;
          v203 = v196;
          v204 = v194;
          v245 = (v194 >> 10);
          v205 = v199;
          v194 = BigSubstring.UnicodeScalarView.index(before:)();
          v196 = v206;
          v86 = v207;
          v199 = v208;
          v209 = BigSubstring.UnicodeScalarView.subscript.getter();
          if (specialized Sequence<>.contains(_:)(v209, v246))
          {
            outlined destroy of BigString(&v290);

            outlined destroy of BigSubstring.UnicodeScalarView(&v259);
            v194 = v204;
            v196 = v203;
            v86 = v202;
            v199 = v205;
            v201 = v245;
            goto LABEL_127;
          }
        }

        outlined destroy of BigString(&v290);
      }

      outlined destroy of BigSubstring.UnicodeScalarView(&v259);
      v21 = v221;
      goto LABEL_112;
    }

LABEL_113:
    v174 = v21[2];
    v175 = v224;
    v177 = v233;
    v176 = v234;
    *v224 = v85;
    v175[1] = v177;
    v175[2] = v86;
    v175[3] = v176;
    v175[4] = v174;
    return;
  }

  v87 = *v222;
  v88 = v222[2];
  v294 = v222[1];
  v295 = v88;
  v293 = v87;
  v89 = v223 >> 10;
  if (v223 >> 10 < v230 >> 10)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  v90 = v21[3];
  v91 = v21[4];
  v92 = v21[5];
  v93 = v21[6];
  v94 = v21[7];
  v95 = v21[8];
  *&v270 = v230;
  *(&v270 + 1) = v233;
  *&v271 = v229;
  *(&v271 + 1) = v234;
  v272 = v235;
  v273 = v236;
  if (v230 >> 10 == v89)
  {
    goto LABEL_113;
  }

  v245 = v95;
  v246 = v94;
  v96 = v222[1];
  v280 = *v222;
  v281 = v96;
  v282 = *(v222 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v280, &v259);
  if ((specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]) & 1) == 0 || v89 <= BigString.startIndex.getter() >> 10)
  {
    v107 = v229;
    v106 = v230;
    v108 = v234;
    v105 = v235;
    v104 = v236;
LABEL_71:
    v229 = v107;
    v230 = v106;
    *&v248 = v106;
    *(&v248 + 1) = v233;
    *&v249 = v107;
    *(&v249 + 1) = v108;
    v234 = v108;
    v250 = v105;
    v251 = v104;
    v140 = MEMORY[0x1E69E7CD0];
    if (specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]))
    {
      v244 = v89;
      v141 = 0;
      v142 = 1 << *(v140 + 32);
      v143 = -1;
      if (v142 < 64)
      {
        v143 = ~(-1 << v142);
      }

      v144 = v143 & *(v140 + 56);
      v145 = (v142 + 63) >> 6;
      v247 = MEMORY[0x1E69E7CC0];
      while (v144)
      {
LABEL_80:
        v147 = __clz(__rbit64(v144));
        v144 &= v144 - 1;
        v148 = (*(v140 + 48) + ((v141 << 10) | (16 * v147)));
        v149 = v148[1];
        if (v149 >= 2)
        {
          v150 = specialized Collection.first.getter(*v148, v149);
          if ((v150 & 0x100000000) == 0)
          {
            v243 = v150;
            v151 = swift_isUniquelyReferenced_nonNull_native();
            v221 = v21;
            if ((v151 & 1) == 0)
            {
              v247 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v247 + 2) + 1, 1, v247);
            }

            v153 = *(v247 + 2);
            v152 = *(v247 + 3);
            v154 = v153 + 1;
            v155 = v243;
            if (v153 >= v152 >> 1)
            {
              v242 = v153 + 1;
              v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v153 + 1, 1, v247);
              v154 = v242;
              v155 = v243;
              v247 = v157;
            }

            v156 = v247;
            *(v247 + 2) = v154;
            *&v156[4 * v153 + 32] = v155;
            v21 = v221;
          }
        }
      }

      while (1)
      {
        v146 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          break;
        }

        if (v146 >= v145)
        {

          v284 = v90;
          v285 = v91;
          v286 = v92;
          v287 = v93;
          v288 = v246;
          v289 = v245;
          BigString.UnicodeScalarView.subscript.getter();
          v246 = v264 >> 10;
          if (v264 >> 10 == *(&v265 + 1) >> 10)
          {

            outlined destroy of BigSubstring.UnicodeScalarView(&v259);
            goto LABEL_90;
          }

          v221 = v21;
          v178 = BigSubstring.UnicodeScalarView.index(before:)();
          v180 = v179;
          v86 = v181;
          v183 = v182;
          v184 = BigSubstring.UnicodeScalarView.subscript.getter();
          if (!specialized Sequence<>.contains(_:)(v184, v247))
          {
            while (v246 < v178 >> 10)
            {
              v187 = v86;
              v188 = v180;
              v189 = v178;
              v245 = (v178 >> 10);
              v90 = v183;
              v178 = BigSubstring.UnicodeScalarView.index(before:)();
              v180 = v190;
              v86 = v191;
              v183 = v192;
              v193 = BigSubstring.UnicodeScalarView.subscript.getter();
              if (specialized Sequence<>.contains(_:)(v193, v247))
              {
                outlined destroy of BigString(&v293);

                outlined destroy of BigSubstring.UnicodeScalarView(&v259);
                v178 = v189;
                v180 = v188;
                v86 = v187;
                v183 = v90;
                v186 = v244;
                v185 = v245;
                goto LABEL_119;
              }
            }

            goto LABEL_129;
          }

          outlined destroy of BigSubstring.UnicodeScalarView(&v259);
          outlined destroy of BigString(&v293);
          v185 = (v178 >> 10);
          v186 = v244;
LABEL_119:
          v85 = v178;
          v233 = v180;
          v234 = v183;
          v21 = v221;
          if (v186 < v185)
          {
            __break(1u);
            goto LABEL_121;
          }

          goto LABEL_113;
        }

        v144 = *(v140 + 8 * v146 + 56);
        ++v141;
        if (v144)
        {
          v141 = v146;
          goto LABEL_80;
        }
      }

LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

LABEL_90:
    v158 = &v293;
    goto LABEL_111;
  }

  v221 = v21;
  v247 = v90;
  *&v290 = v90;
  *(&v290 + 1) = v91;
  *&v291 = v92;
  *(&v291 + 1) = v93;
  *&v292 = v246;
  *(&v292 + 1) = v245;
  v97 = BigString.UTF8View.index(before:)();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  BigString.UTF8View.subscript.getter();
  v244 = v89;
  if (v89 < v97 >> 10)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v253 = v97;
  v254 = v99;
  v255 = v101;
  v256 = v103;
  v257 = v235;
  v258 = v236;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v253, &v259);
  outlined destroy of BigSubstring.UTF8View(&v275);
  v105 = v235;
  v104 = v236;
  v21 = v221;
  v107 = v229;
  v106 = v230;
  v108 = v234;
  v89 = v244;
  v90 = v247;
  if (v262 == 2)
  {
    goto LABEL_71;
  }

  v106 = v259;
  if (v244 >= v259 >> 10)
  {
    v107 = v261;
    v233 = v260;
    v108 = v262;
    goto LABEL_71;
  }

LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.Runs.NSAttributesSlice(uint64_t *a1, unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x180uLL);
  }

  v5 = v4;
  *a1 = v4;
  AttributedString.Runs.NSAttributesSlice.subscript.getter((v4 + 96), (v4 + 112), a2);
  v6 = *(v5 + 104);
  *(v5 + 192) = *(v5 + 96);
  *(v5 + 200) = v6;
  v7 = *(v5 + 144);
  v8 = *(v5 + 160);
  v9 = *(v5 + 112);
  *(v5 + 32) = *(v5 + 128);
  *(v5 + 48) = v7;
  v10 = *(v5 + 176);
  *(v5 + 64) = v8;
  *(v5 + 80) = v10;
  *v5 = *(v5 + 96);
  *(v5 + 16) = v9;

  outlined destroy of TermOfAddress?(v5, &_s10Foundation18AttributeContainerV_SnyAA16AttributedStringV5IndexVGtMd);
  v11 = *(v5 + 160);
  *(v5 + 240) = *(v5 + 144);
  *(v5 + 256) = v11;
  *(v5 + 272) = *(v5 + 176);
  v12 = *(v5 + 128);
  *(v5 + 208) = *(v5 + 112);
  *(v5 + 224) = v12;
  return protocol witness for Collection.subscript.read in conformance AttributedString.Runs.NSAttributesSlice;
}

void protocol witness for Collection.subscript.read in conformance AttributedString.Runs.NSAttributesSlice(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 240);
  v1[20] = *(*a1 + 224);
  v1[21] = v2;
  v3 = v1[17];
  v1[22] = v1[16];
  v1[23] = v3;
  v4 = v1[13];
  v1[18] = v1[12];
  v1[19] = v4;
  outlined destroy of TermOfAddress?((v1 + 18), &_s10Foundation18AttributeContainerV_SnyAA16AttributedStringV5IndexVGtMd);

  free(v1);
}

void *protocol witness for Collection.subscript.getter in conformance AttributedString.Runs.NSAttributesSlice@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return specialized Collection<>.subscript.getter(v5, a2);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance AttributedString.Runs.NSAttributesSlice()
{
  if (v0[12] == 2)
  {
    __break(1u);
  }

  else if (v0[26] != 2)
  {
    return (v0[23] ^ v0[9]) < 0x400uLL;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.index(after:) in conformance AttributedString.Runs.NSAttributesSlice(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v5;
  v7 = v4;
  AttributedString.Runs._slicedRunBoundary(after:attributeNames:constraints:endOfCurrent:)(v6, *(v3 + *(a2 + 20)), MEMORY[0x1E69E7CD0], 0, a3);
}

void protocol witness for Collection.formIndex(after:) in conformance AttributedString.Runs.NSAttributesSlice(unint64_t *a1, uint64_t a2)
{
  v6 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v183 - v10;
  v216 = *(v6 + *(a2 + 20));
  v215 = v216[2];
  if (!v215)
  {
    goto LABEL_134;
  }

  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v202 = a1;
  v16 = *v6;
  *(&v205 + 1) = v15;
  v206 = v12;
  v198 = v13;
  *&v205 = v14;
  AttributedString.Guts.findRun(at:)(v12, v15, &v244);
  v208 = v244;
  v209 = v245;
  v210 = v246;
  v222 = v247;
  v207 = v248;
  v195 = v250;
  v196 = v249;
  v193 = v252;
  v194 = v251;
  v17 = *(type metadata accessor for AttributedString.Runs() + 24);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v228 = v6;
  v225 = v18;
  v226 = v17;
  RangeSet.ranges.getter();
  v19 = RangeSet.Ranges.count.getter();
  v21 = *(v9 + 8);
  v20 = v9 + 8;
  v227 = v11;
  v224 = v21;
  v21(v11, v8);
  if (v19 < 1)
  {
LABEL_127:
    __break(1u);
LABEL_128:

    v8 = v214;
    goto LABEL_53;
  }

  v22 = 0;
  v23 = v206 >> 10;
  while (1)
  {
    if (__OFADD__(v22, v19))
    {
      __break(1u);
LABEL_130:

LABEL_53:
      v76 = *(v16 + 72);
      v77 = *(v16 + 80);
      v78 = *(v16 + 88);
      v79 = *(v16 + 96);
      swift_unknownObjectRetain();
      v80 = specialized Rope.subscript.getter(v208, v209, v210, v76, v77, v78, v79);
      swift_unknownObjectRelease();

      if (__OFADD__(v207, v80))
      {
        goto LABEL_136;
      }

      v81 = *(v16 + 40);
      v278 = *(v16 + 24);
      v279 = v81;
      v280 = *(v16 + 56);
      if (__OFSUB__(v207 + v80, v196 >> 11))
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      swift_unknownObjectRetain();
      v82 = BigString.UTF8View.index(_:offsetBy:)();
      v84 = v83;
      v86 = v85;
      v88 = v87;
      swift_unknownObjectRelease();
      v89 = v82 >> 10;
      v90 = *(v16 + 24);
      v92 = *(v16 + 40);
      v91 = *(v16 + 48);
      v219 = *(v16 + 32);
      *&v220 = v92;
      *(&v220 + 1) = v91;
      v93 = *(v16 + 64);
      v221 = *(v16 + 56);
      v222 = v93;
      if (v82 >> 10 < v3)
      {
        v94 = v197;
        if (v89 < v197)
        {
          goto LABEL_139;
        }

        v95 = *(&v205 + 1);
        v96 = v206;
        *&v258 = v206;
        v97 = v198;
        *(&v258 + 1) = v198;
        v98 = v88;
        v99 = v205;
        v259 = v205;
        *&v260 = v82;
        *(&v260 + 1) = v84;
        *&v261 = v86;
        v228 = v98;
        *(&v261 + 1) = v98;
        if (v197 == v89)
        {
          v100 = v202;
          v101 = v228;
        }

        else
        {
          v226 = v86;
          v129 = v84;
          v130 = v90;
          swift_unknownObjectRetain();
          v131 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
          v223 = v130;
          if (v131)
          {
            *&v240 = v130;
            *(&v240 + 1) = v219;
            v241 = v220;
            v242 = v221;
            v243 = v222;
            BigString.UTF8View.subscript.getter();
            v234 = v96;
            v235 = v97;
            *&v236 = v99;
            *(&v236 + 1) = v95;
            v237 = v96;
            v238 = v97;
            *&v239 = v99;
            *(&v239 + 1) = v95;
            specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v234, &v244);
            outlined destroy of BigSubstring.UTF8View(&v263);
            if (v251 != 2)
            {
              v82 = v248;
              if (v94 > v248 >> 10)
              {
                goto LABEL_142;
              }

              v129 = v249;
              v226 = v250;
              v228 = v251;
            }
          }

          *&v229 = v96;
          *(&v229 + 1) = v97;
          *&v230 = v99;
          *(&v230 + 1) = v95;
          *&v231 = v82;
          *(&v231 + 1) = v129;
          v225 = v129;
          v86 = v226;
          v101 = v228;
          *&v232 = v226;
          *(&v232 + 1) = v228;
          v132 = MEMORY[0x1E69E7CD0];
          if (specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]))
          {
            v133 = 0;
            v134 = 1 << *(v132 + 32);
            v135 = -1;
            if (v134 < 64)
            {
              v135 = ~(-1 << v134);
            }

            v136 = v135 & *(v132 + 56);
            v137 = (v134 + 63) >> 6;
            v227 = MEMORY[0x1E69E7CC0];
            while (v136)
            {
LABEL_92:
              v139 = __clz(__rbit64(v136));
              v136 &= v136 - 1;
              v140 = (*(v132 + 48) + ((v133 << 10) | (16 * v139)));
              v141 = v140[1];
              if (v141 >= 2)
              {
                v142 = specialized Collection.first.getter(*v140, v141);
                if ((v142 & 0x100000000) == 0)
                {
                  v143 = v142;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v227 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v227 + 2) + 1, 1, v227);
                  }

                  v145 = *(v227 + 2);
                  v144 = *(v227 + 3);
                  if (v145 >= v144 >> 1)
                  {
                    v227 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v145 + 1, 1, v227);
                  }

                  v146 = v227;
                  *(v227 + 2) = v145 + 1;
                  *&v146[4 * v145 + 32] = v143;
                }
              }
            }

            while (1)
            {
              v138 = v133 + 1;
              if (__OFADD__(v133, 1))
              {
                goto LABEL_133;
              }

              if (v138 >= v137)
              {
                break;
              }

              v136 = *(v132 + 8 * v138 + 56);
              ++v133;
              if (v136)
              {
                v133 = v138;
                goto LABEL_92;
              }
            }

            v273 = v223;
            v274 = v219;
            v275 = v220;
            v276 = v221;
            v277 = v222;
            BigString.UnicodeScalarView.subscript.getter();
            v169 = *(&v253 + 1) >> 10;
            if (*(&v253 + 1) >> 10 > v250 >> 10)
            {
              v170 = BigSubstring.UnicodeScalarView.subscript.getter();
              if (specialized Sequence<>.contains(_:)(v170, v227))
              {

                v171 = BigSubstring.UnicodeScalarView.index(after:)();
                v173 = v172;
                v175 = v174;
                v101 = v176;
                outlined destroy of BigSubstring.UnicodeScalarView(&v244);
                swift_unknownObjectRelease();
                v177 = v171 >> 10;
LABEL_121:
                v82 = v171;
                v84 = v173;
                v86 = v175;
                v100 = v202;
                v16 = v212;
                if (v177 >= v197)
                {
                  goto LABEL_125;
                }

                __break(1u);
              }

              else
              {
                while (1)
                {
                  v178 = BigSubstring.UnicodeScalarView.index(after:)();
                  v177 = v178 >> 10;
                  if (v178 >> 10 >= v169)
                  {
                    break;
                  }

                  v171 = v178;
                  v173 = v179;
                  v175 = v180;
                  v101 = v181;
                  v182 = BigSubstring.UnicodeScalarView.subscript.getter();
                  if (specialized Sequence<>.contains(_:)(v182, v227))
                  {

                    outlined destroy of BigSubstring.UnicodeScalarView(&v244);
                    swift_unknownObjectRelease();
                    goto LABEL_121;
                  }
                }
              }
            }

            outlined destroy of BigSubstring.UnicodeScalarView(&v244);
            v16 = v212;
            v101 = v228;
          }

          swift_unknownObjectRelease();
          v100 = v202;
          v84 = v225;
        }

LABEL_125:
        v165 = *(v16 + 16);
        *v100 = v82;
        v100[1] = v84;
        v100[2] = v86;
        v100[3] = v101;
LABEL_126:
        v100[4] = v165;
        return;
      }

      v102 = v206;
      *&v258 = v206;
      v103 = v198;
      *(&v258 + 1) = v198;
      v259 = v205;
      v104 = v190;
      v105 = v191;
      *&v260 = v191;
      *(&v260 + 1) = v190;
      v107 = v188;
      v106 = v189;
      *&v261 = v189;
      *(&v261 + 1) = v188;
      v223 = v90;
      swift_unknownObjectRetain();
      v108 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
      v109 = v105;
      v110 = v106;
      v111 = v107;
      v112 = v197;
      v113 = v227;
      if (v108)
      {
        v273 = v223;
        v274 = v219;
        v275 = v220;
        v276 = v221;
        v277 = v222;
        BigString.UTF8View.subscript.getter();
        v234 = v102;
        v235 = v103;
        v236 = v205;
        v237 = v102;
        v238 = v103;
        v239 = v205;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v234, &v244);
        outlined destroy of BigSubstring.UTF8View(&v263);
        v104 = v190;
        v109 = v191;
        v111 = v188;
        v110 = v189;
        if (v251 != 2)
        {
          v109 = v248;
          if (v112 > v248 >> 10)
          {
            goto LABEL_141;
          }

          v104 = v249;
          v110 = v250;
          v111 = v251;
          v102 = v206;
          v103 = v198;
        }
      }

      *&v229 = v102;
      *(&v229 + 1) = v103;
      v230 = v205;
      *&v231 = v109;
      v217 = v104;
      v218 = v109;
      *(&v231 + 1) = v104;
      *&v232 = v110;
      v215 = v110;
      v216 = v111;
      *(&v232 + 1) = v111;
      v114 = MEMORY[0x1E69E7CD0];
      if (specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]))
      {
        v115 = 0;
        v116 = 1 << *(v114 + 32);
        v117 = -1;
        if (v116 < 64)
        {
          v117 = ~(-1 << v116);
        }

        v118 = v117 & *(v114 + 56);
        v119 = (v116 + 63) >> 6;
        v120 = MEMORY[0x1E69E7CC0];
        while (v118)
        {
LABEL_72:
          v122 = __clz(__rbit64(v118));
          v118 &= v118 - 1;
          v123 = (*(v114 + 48) + ((v115 << 10) | (16 * v122)));
          v124 = v123[1];
          if (v124 >= 2)
          {
            v125 = specialized Collection.first.getter(*v123, v124);
            if ((v125 & 0x100000000) == 0)
            {
              v126 = v125;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v120 + 2) + 1, 1, v120);
              }

              v128 = *(v120 + 2);
              v127 = *(v120 + 3);
              if (v128 >= v127 >> 1)
              {
                v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v120);
              }

              *(v120 + 2) = v128 + 1;
              *&v120[4 * v128 + 32] = v126;
            }
          }
        }

        while (1)
        {
          v121 = v115 + 1;
          if (__OFADD__(v115, 1))
          {
            goto LABEL_132;
          }

          if (v121 >= v119)
          {
            break;
          }

          v118 = *(v114 + 8 * v121 + 56);
          ++v115;
          if (v118)
          {
            v115 = v121;
            goto LABEL_72;
          }
        }

        v268 = v223;
        v269 = v219;
        v270 = v220;
        v271 = v221;
        v272 = v222;
        BigString.UnicodeScalarView.subscript.getter();
        v147 = *(&v253 + 1) >> 10;
        if (*(&v253 + 1) >> 10 <= v250 >> 10)
        {
LABEL_107:

          outlined destroy of BigSubstring.UnicodeScalarView(&v244);
          v16 = v212;
          v8 = v214;
          v113 = v227;
          goto LABEL_108;
        }

        v148 = BigSubstring.UnicodeScalarView.subscript.getter();
        if (!specialized Sequence<>.contains(_:)(v148, v120))
        {
          while (1)
          {
            v157 = BigSubstring.UnicodeScalarView.index(after:)();
            v156 = v157 >> 10;
            if (v157 >> 10 >= v147)
            {
              goto LABEL_107;
            }

            v149 = v157;
            v151 = v158;
            v153 = v159;
            v155 = v160;
            v161 = BigSubstring.UnicodeScalarView.subscript.getter();
            if (specialized Sequence<>.contains(_:)(v161, v120))
            {

              outlined destroy of BigSubstring.UnicodeScalarView(&v244);
              swift_unknownObjectRelease();
              goto LABEL_105;
            }
          }
        }

        v149 = BigSubstring.UnicodeScalarView.index(after:)();
        v151 = v150;
        v153 = v152;
        v155 = v154;
        outlined destroy of BigSubstring.UnicodeScalarView(&v244);
        swift_unknownObjectRelease();
        v156 = v149 >> 10;
LABEL_105:
        v162 = v151;
        v215 = v153;
        v163 = v155;
        v100 = v202;
        v16 = v212;
        v8 = v214;
        v113 = v227;
        if (v156 < v197)
        {
          __break(1u);
          goto LABEL_107;
        }
      }

      else
      {
LABEL_108:
        swift_unknownObjectRelease();
        v100 = v202;
        v162 = v217;
        v149 = v218;
        v163 = v216;
      }

      if (v204 == (v149 >> 10))
      {
        RangeSet.ranges.getter();
        v164 = RangeSet.Ranges.count.getter();
        v224(v113, v8);
        if (__OFSUB__(v164, 1))
        {
          goto LABEL_140;
        }

        if (v4 == v164 - 1)
        {
          v165 = *(v16 + 16);
          v100 = v202;
          v166 = v190;
          *v202 = v191;
          v100[1] = v166;
          v167 = v188;
          v100[2] = v189;
          v100[3] = v167;
        }

        else
        {
          RangeSet.ranges.getter();
          RangeSet.Ranges.subscript.getter();
          v224(v113, v8);
          v165 = *(v16 + 16);
          v168 = v241;
          v100 = v202;
          *v202 = v240;
          *(v100 + 1) = v168;
        }
      }

      else
      {
        v165 = *(v16 + 16);
        *v100 = v149;
        v100[1] = v162;
        v100[2] = v215;
        v100[3] = v163;
      }

      goto LABEL_126;
    }

    v4 = (v22 + v19) / 2;
    v3 = v227;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    v224(v3, v8);
    if (v23 >= v244 >> 10)
    {
      break;
    }

LABEL_4:
    v19 = v4;
    if (v22 >= v4)
    {
      goto LABEL_127;
    }
  }

  v3 = (v248 >> 10);
  if (v23 >= v248 >> 10)
  {
    v22 = v4 + 1;
    v4 = v19;
    goto LABEL_4;
  }

  v189 = v250;
  v190 = v249;
  v188 = v251;
  v24 = v228[15];
  v212 = v16;
  v197 = v23;
  v214 = v8;
  v183 = v20;
  v191 = v248;
  v204 = (v248 >> 10);
  if (v222 == v24)
  {
    v25 = v228[22];
    if (v228[26] == 2)
    {
      if (v25 != 2)
      {
        goto LABEL_53;
      }
    }

    else if (v25 == 2 || (v228[19] ^ v228[23]) >= 1024)
    {
      goto LABEL_53;
    }
  }

  if (v222 < v24)
  {
    v187 = v24;
    v26 = *(v16 + 72);
    v27 = *(v16 + 80);
    v28 = *(v16 + 88);
    v29 = *(v16 + 96);
    swift_unknownObjectRetain();
    v31 = v208;
    v30 = v209;
    v32 = v29;
    v33 = v210;
    specialized Rope.subscript.getter(v208, v209, v210, v26, v27, v28, v32);
    v213 = v34;
    v185 = v35;
    swift_unknownObjectRelease();
    v36 = v31;
    v37 = *(v16 + 72);
    v223 = *(v16 + 80);
    v38 = v222 + 1;
    v39 = *(v16 + 88);
    v8 = *(v16 + 96);
    v186 = v216 + 5;
    v244 = v36;
    v245 = v30;
    v246 = v33;
    v211 = v4;
LABEL_17:
    v203 = v38;
    swift_unknownObjectRetain();
    v208 = v36;
    v209 = v30;
    v210 = v33;
    v40 = specialized Rope.subscript.getter(v36, v30, v33, v37, v223, v39, v8);

    v41 = v207 + v40;
    if (__OFADD__(v207, v40))
    {
      goto LABEL_135;
    }

    specialized Rope.formIndex(after:)(&v244, v37, v223, v39, v8);
    swift_unknownObjectRelease();
    if (v187 < v203)
    {
      goto LABEL_128;
    }

    v199 = v245;
    v200 = v246;
    v201 = v244;
    v42 = v213;
    v8 = v214;
    if (v203 == v187)
    {
      v43 = v228[22];
      if (v228[26] == 2)
      {
        if (v43 == 2)
        {
          goto LABEL_130;
        }
      }

      else if (v43 != 2 && (v228[19] ^ v228[23]) < 1024)
      {
        goto LABEL_130;
      }
    }

    v184 = v41;
    v44 = *(v16 + 72);
    v45 = *(v16 + 80);
    v46 = *(v16 + 88);
    v47 = *(v16 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v201, v199, v200, v44, v45, v46, v47);
    v219 = v48;
    v192 = v49;
    swift_unknownObjectRelease();
    v50 = 0;
    v51 = v186;
    while (v50 < v216[2])
    {
      v222 = v51;
      v223 = v50;
      v53 = *(v51 - 1);
      v52 = *v51;
      if (*(v42 + 16))
      {

        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v52);
        if (v55)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v42 + 56) + 72 * v54, &v263);
        }

        else
        {
          v267 = 0;
          v265 = 0u;
          v266 = 0u;
          v263 = 0u;
          v264 = 0u;
        }
      }

      else
      {
        v267 = 0;
        v265 = 0u;
        v266 = 0u;
        v263 = 0u;
        v264 = 0u;
      }

      v56 = v219;
      if (*(v219 + 16))
      {
        v57 = v42;
        v58 = v16;
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v52);
        v61 = v60;

        if (v61)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v56 + 56) + 72 * v59, &v258);
        }

        else
        {
          v262 = 0;
          v260 = 0u;
          v261 = 0u;
          v258 = 0u;
          v259 = 0u;
        }

        v16 = v58;
        v42 = v57;
        v4 = v211;
      }

      else
      {

        v262 = 0;
        v260 = 0u;
        v261 = 0u;
        v258 = 0u;
        v259 = 0u;
      }

      outlined init with copy of AttributedString._AttributeValue?(&v263, &v244);
      outlined init with copy of AttributedString._AttributeValue?(&v258, &v253);
      if (v247)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v244, &v234);
        if (!*(&v254 + 1))
        {
          goto LABEL_49;
        }

        v231 = v255;
        v232 = v256;
        v233 = v257;
        v229 = v253;
        v230 = v254;
        v62 = *(&v236 + 1);
        v218 = v237;
        v217 = __swift_project_boxed_opaque_existential_1(&v234, *(&v236 + 1));
        v63 = __swift_project_boxed_opaque_existential_1(&v229, *(&v230 + 1));
        v221 = &v183;
        v64 = *(v62 - 8);
        MEMORY[0x1EEE9AC00](v63);
        v66 = &v183 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        *(&v220 + 1) = &v183;
        v68 = MEMORY[0x1EEE9AC00](v67);
        (*(v70 + 16))(&v183 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), v68);
        v71 = type metadata accessor for Optional();
        *&v220 = &v183;
        v72 = *(v71 - 8);
        MEMORY[0x1EEE9AC00](v71);
        v74 = &v183 - v73;
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of TermOfAddress?(&v258, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v263, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v64 + 56))(v74, 1, 1, v62);
          (*(v72 + 8))(v74, v71);
          outlined destroy of AttributedString._AttributeValue(&v229);
          outlined destroy of AttributedString._AttributeValue(&v234);
          outlined destroy of TermOfAddress?(&v244, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v16 = v212;
          v8 = v214;
          goto LABEL_52;
        }

        (*(v64 + 56))(v74, 0, 1, v62);
        (*(v64 + 32))(v66, v74, v62);
        v75 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v64 + 8))(v66, v62);
        outlined destroy of TermOfAddress?(&v258, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v263, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v229);
        outlined destroy of AttributedString._AttributeValue(&v234);
        outlined destroy of TermOfAddress?(&v244, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v16 = v212;
        v42 = v213;
        v8 = v214;
        if ((v75 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v258, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v263, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v254 + 1))
        {
          goto LABEL_50;
        }

        outlined destroy of TermOfAddress?(&v244, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v50 = v223 + 1;
      v51 = v222 + 2;
      if (v215 == v223 + 1)
      {

        v37 = *(v16 + 72);
        v223 = *(v16 + 80);
        v39 = *(v16 + 88);
        v8 = *(v16 + 96);
        v207 = v184;
        v36 = v201;
        v33 = v200;
        v244 = v201;
        v30 = v199;
        v245 = v199;
        v246 = v200;
        v3 = v204;
        v38 = v203 + 1;
        if (__OFADD__(v203, 1))
        {
          __break(1u);
LABEL_49:
          outlined destroy of TermOfAddress?(&v258, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v263, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v234);
LABEL_50:
          outlined destroy of TermOfAddress?(&v244, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_52:

          v3 = v204;
          goto LABEL_53;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

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
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AttributedString.Runs.NSAttributesSlice@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v2, v5, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  result = outlined init with copy of AttributedString.Runs(v5, a2, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  v7 = *(v5 + 12);
  if (v7 == 2)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v5 + 11);
    v11 = *(v5 + 72);
    outlined destroy of AttributedString.Runs(v2, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
    v9 = *(*v5 + 16);
    outlined destroy of AttributedString.Runs(v5, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
    result = type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator(0);
    v10 = a2 + *(result + 20);
    *v10 = v11;
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;
    *(v10 + 32) = v9;
  }

  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString.Runs.NSAttributesSlice()
{
  specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  v2 = v1;
  outlined destroy of AttributedString.Runs(v0, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  return v2;
}

uint64_t AttributedString.Runs.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44[4] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v2, v7, type metadata accessor for AttributedString.Runs);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v38 = a2;
    v43 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v43;
    v10 = (a1 + 32);
    while (1)
    {
      v11 = *v10;
      isTaggedPointer = _objc_isTaggedPointer(*v10);
      v13 = v11;
      v14 = v13;
      if (!isTaggedPointer)
      {
        goto LABEL_8;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v13);
      switch(TaggedPointerTag)
      {
        case 0:
          v41 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v25 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v26)
          {
            [v14 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v16 = v39;
            v18 = v40;
            goto LABEL_39;
          }

          goto LABEL_21;
        case 0x16:
          v24 = [v14 UTF8String];
          if (!v24)
          {
            goto LABEL_45;
          }

          v25 = String.init(utf8String:)(v24);
          if (!v26)
          {
            __break(1u);
LABEL_45:
            __break(1u);
          }

LABEL_21:
          v16 = v25;
          v18 = v26;
LABEL_22:

          goto LABEL_39;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v38 - 2) = v14;
          v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v18 = v17;

          break;
        default:
LABEL_8:
          LOBYTE(v39) = 0;
          v44[0] = 0;
          LOBYTE(v41) = 0;
          v42 = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            v20 = v44[0];
            if (v44[0])
            {
              if (v42 == 1)
              {
                if (v39)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v27 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_38:
                v16 = v27;
                v18 = v28;
LABEL_39:

                break;
              }

              if (v41)
              {
                if (v39 == 1)
                {
                  MEMORY[0x1EEE9AC00](IsCF);
                  *(&v38 - 4) = v14;
                  *(&v38 - 3) = v44;
                  *(&v38 - 4) = 1536;
                  *(&v38 - 1) = v20;
                }

                else
                {
                  v29 = [v14 lengthOfBytesUsingEncoding_];
                  MEMORY[0x1EEE9AC00](v29);
                  *(&v38 - 4) = v14;
                  *(&v38 - 3) = v44;
                  *(&v38 - 4) = 134217984;
                  *(&v38 - 1) = v30;
                }

                v31 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v18 = v32;
                v33 = HIBYTE(v32) & 0xF;
                if ((v32 & 0x2000000000000000) == 0)
                {
                  v33 = v31 & 0xFFFFFFFFFFFFLL;
                }

                if (v33)
                {
                  v16 = v31;
                  goto LABEL_22;
                }
              }

LABEL_37:
              v27 = String.init(_cocoaString:)();
              goto LABEL_38;
            }

            goto LABEL_16;
          }

          v21 = v14;
          v22 = String.init(_nativeStorage:)();
          if (!v23)
          {
            v44[0] = [v21 length];
            if (v44[0])
            {
              goto LABEL_37;
            }

LABEL_16:
            v16 = 0;
            v18 = 0xE000000000000000;
            break;
          }

          v16 = v22;
          v18 = v23;

          break;
      }

      v43 = v9;
      v35 = *(v9 + 16);
      v34 = *(v9 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v9 = v43;
      }

      *(v9 + 16) = v35 + 1;
      v36 = v9 + 16 * v35;
      *(v36 + 32) = v16;
      *(v36 + 40) = v18;
      ++v10;
      if (!--v8)
      {
        a2 = v38;
        break;
      }
    }
  }

  outlined init with take of AttributedString.Runs(v7, a2);
  result = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  *(a2 + *(result + 20)) = v9;
  return result;
}

{
  v44[4] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v2, v7, type metadata accessor for AttributedString.Runs);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v38 = a2;
    v43 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v43;
    v10 = (a1 + 32);
    while (1)
    {
      v11 = *v10;
      isTaggedPointer = _objc_isTaggedPointer(*v10);
      v13 = v11;
      v14 = v13;
      if (!isTaggedPointer)
      {
        goto LABEL_8;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v13);
      switch(TaggedPointerTag)
      {
        case 0:
          v41 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v25 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v26)
          {
            [v14 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v16 = v39;
            v18 = v40;
            goto LABEL_39;
          }

          goto LABEL_21;
        case 0x16:
          v24 = [v14 UTF8String];
          if (!v24)
          {
            goto LABEL_45;
          }

          v25 = String.init(utf8String:)(v24);
          if (!v26)
          {
            __break(1u);
LABEL_45:
            __break(1u);
          }

LABEL_21:
          v16 = v25;
          v18 = v26;
LABEL_22:

          goto LABEL_39;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v38 - 2) = v14;
          v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v18 = v17;

          break;
        default:
LABEL_8:
          LOBYTE(v39) = 0;
          v44[0] = 0;
          LOBYTE(v41) = 0;
          v42 = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            v20 = v44[0];
            if (v44[0])
            {
              if (v42 == 1)
              {
                if (v39)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v27 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_38:
                v16 = v27;
                v18 = v28;
LABEL_39:

                break;
              }

              if (v41)
              {
                if (v39 == 1)
                {
                  MEMORY[0x1EEE9AC00](IsCF);
                  *(&v38 - 4) = v14;
                  *(&v38 - 3) = v44;
                  *(&v38 - 4) = 1536;
                  *(&v38 - 1) = v20;
                }

                else
                {
                  v29 = [v14 lengthOfBytesUsingEncoding_];
                  MEMORY[0x1EEE9AC00](v29);
                  *(&v38 - 4) = v14;
                  *(&v38 - 3) = v44;
                  *(&v38 - 4) = 134217984;
                  *(&v38 - 1) = v30;
                }

                v31 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v18 = v32;
                v33 = HIBYTE(v32) & 0xF;
                if ((v32 & 0x2000000000000000) == 0)
                {
                  v33 = v31 & 0xFFFFFFFFFFFFLL;
                }

                if (v33)
                {
                  v16 = v31;
                  goto LABEL_22;
                }
              }

LABEL_37:
              v27 = String.init(_cocoaString:)();
              goto LABEL_38;
            }

            goto LABEL_16;
          }

          v21 = v14;
          v22 = String.init(_nativeStorage:)();
          if (!v23)
          {
            v44[0] = [v21 length];
            if (v44[0])
            {
              goto LABEL_37;
            }

LABEL_16:
            v16 = 0;
            v18 = 0xE000000000000000;
            break;
          }

          v16 = v22;
          v18 = v23;

          break;
      }

      v43 = v9;
      v35 = *(v9 + 16);
      v34 = *(v9 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v9 = v43;
      }

      *(v9 + 16) = v35 + 1;
      v36 = v9 + 16 * v35;
      *(v36 + 32) = v16;
      *(v36 + 40) = v18;
      ++v10;
      if (!--v8)
      {
        a2 = v38;
        break;
      }
    }
  }

  outlined init with take of AttributedString.Runs(v7, a2);
  result = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  *(a2 + *(result + 20)) = v9;
  return result;
}

unint64_t specialized BidirectionalCollection<>._matchesSeparators(_:from:reverse:)(uint64_t a1, unint64_t a2, char a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  result = Substring.UTF8View.subscript.getter();
  if (result == 10)
  {
    goto LABEL_7;
  }

  if (result != 13)
  {
    if (a3)
    {
      if ((result + 86) < 0xDBu)
      {
        return 0;
      }
    }

    else if ((result + 29) < 0xDFu)
    {
      return 0;
    }

    v44 = *(a1 + 16);
    if (v44)
    {
      v19 = 0;
      v47 = a2 & 0xC;
      v48 = a1 + 32;
      v20 = a4 >> 14;
      v55 = a5 >> 14;
      v21 = (a6 >> 59) & 1;
      if ((a7 & 0x1000000000000000) == 0)
      {
        LOBYTE(v21) = 1;
      }

      v43 = a5 & 0xC;
      v22 = 4 << v21;
      v23 = HIBYTE(a7) & 0xF;
      if ((a7 & 0x2000000000000000) == 0)
      {
        v23 = a6 & 0xFFFFFFFFFFFFLL;
      }

      v51 = v23;
      v49 = a2;
      v45 = a4;
      v46 = a5;
      while (1)
      {
        v54 = *(v48 + 8 * v19);
        if (a3)
        {
          v56 = 0;
          v24 = *(*(v48 + 8 * v19) + 16);
          v25 = v24 - 1;
          v26 = a4;
          v27 = -1;
          v52 = v26;
        }

        else
        {
          result = a5;
          if (v43 == v22)
          {
            result = _StringGuts._slowEnsureMatchingEncoding(_:)(a5, a6, a7);
            if (result < 0x4000)
            {
              goto LABEL_105;
            }
          }

          else if (a5 < 0x4000)
          {
            goto LABEL_105;
          }

          if ((a7 & 0x1000000000000000) != 0)
          {
            if (v51 < result >> 16)
            {
              goto LABEL_107;
            }

            result = String.UTF8View._foreignIndex(before:)();
            v52 = result;
          }

          else
          {
            v52 = (result & 0xFFFFFFFFFFFF0000) - 65532;
          }

          v25 = 0;
          v24 = *(v54 + 16);
          v56 = v24 - 1;
          v27 = 1;
        }

        if (v25 >= v24)
        {
          goto LABEL_103;
        }

        v50 = v19;
        v28 = v54;
        v29 = *(v54 + 32 + v25);
        result = a2;
        if (v47 == v22)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a6, a7);
        }

        if (result >> 14 < v20 || result >> 14 >= v55)
        {
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          result = String.UTF8View._foreignSubscript(position:)();
          if (v29 == result)
          {
            goto LABEL_49;
          }
        }

        else if ((a7 & 0x2000000000000000) != 0)
        {
          v57 = a6;
          v58 = a7 & 0xFFFFFFFFFFFFFFLL;
          result = *(&v57 + (result >> 16));
          if (v29 == result)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v30 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a6 & 0x1000000000000000) == 0)
          {
            v40 = v20;
            v41 = result;
            v30 = _StringObject.sharedUTF8.getter();
            result = v41;
            v20 = v40;
            v28 = v54;
          }

          result = *(v30 + (result >> 16));
          if (v29 == result)
          {
LABEL_49:
            v53 = v52 >> 16;
            a5 = v49;
            do
            {
              v31 = v56 - v25;
              if (__OFSUB__(v56, v25))
              {
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
                __break(1u);
LABEL_99:
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
LABEL_103:
                __break(1u);
                goto LABEL_104;
              }

              if (a3)
              {
                if (v31 <= 0 && v27 < v31)
                {
                  goto LABEL_91;
                }
              }

              else if (!v31)
              {
                goto LABEL_93;
              }

              v32 = v25 + v27;
              if (__OFADD__(v25, v27))
              {
                goto LABEL_97;
              }

              if ((a5 & 0xC) == v22)
              {
                result = _StringGuts._slowEnsureMatchingEncoding(_:)(a5, a6, a7);
                a5 = result;
                if ((a7 & 0x1000000000000000) != 0)
                {
LABEL_71:
                  result = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)();
                  if (v35)
                  {
                    break;
                  }

                  a5 = result;
                  goto LABEL_73;
                }
              }

              else if ((a7 & 0x1000000000000000) != 0)
              {
                goto LABEL_71;
              }

              v33 = a5 >> 16;
              v34 = (a5 >> 16) + v27;
              if (a3)
              {
                if (v33 >= v53 && v34 < v53)
                {
                  break;
                }
              }

              else if (v53 >= v33 && v53 < v34)
              {
                break;
              }

              if (v34 < 0)
              {
                goto LABEL_101;
              }

              if (v51 < v34)
              {
                goto LABEL_102;
              }

              a5 = (v34 << 16) | 4;
LABEL_73:
              if ((v32 & 0x8000000000000000) != 0)
              {
                goto LABEL_98;
              }

              if (v32 >= *(v28 + 16))
              {
                goto LABEL_99;
              }

              v36 = *(v54 + 32 + v32);
              result = a5;
              if ((a5 & 0xC) == v22)
              {
                result = _StringGuts._slowEnsureMatchingEncoding(_:)(a5, a6, a7);
              }

              if (result >> 14 < v20 || result >> 14 >= v55)
              {
                goto LABEL_100;
              }

              if ((a7 & 0x1000000000000000) != 0)
              {
                result = String.UTF8View._foreignSubscript(position:)();
              }

              else
              {
                v37 = v20;
                v38 = result >> 16;
                if ((a7 & 0x2000000000000000) != 0)
                {
                  v57 = a6;
                  v58 = a7 & 0xFFFFFFFFFFFFFFLL;
                  result = *(&v57 + v38);
                }

                else
                {
                  v39 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
                  if ((a6 & 0x1000000000000000) == 0)
                  {
                    v39 = _StringObject.sharedUTF8.getter();
                  }

                  result = *(v39 + v38);
                }

                v20 = v37;
                v28 = v54;
              }

              v25 += v27;
            }

            while (v36 == result);
          }
        }

        result = 0;
        v19 = v50 + 1;
        a4 = v45;
        a2 = v49;
        a5 = v46;
        if (v50 + 1 == v44)
        {
          return result;
        }
      }
    }

    return 0;
  }

  if (Substring.UTF8View.index(after:)() >> 14 >= a5 >> 14 || Substring.UTF8View.subscript.getter() != 10)
  {
    if (Substring.UTF8View.index(after:)() >> 14 >= a2 >> 14)
    {
      return a2;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (Substring.UTF8View.index(after:)() >> 14 >= a2 >> 14)
  {
    return a2;
  }

  __break(1u);
LABEL_7:
  v7 = a2 >> 14;
  if (a2 >> 14 <= a4 >> 14)
  {
LABEL_16:
    result = Substring.UTF8View.index(after:)();
    if (v7 <= result >> 14)
    {
      return a2;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    return result;
  }

  v16 = Substring.UTF8View.index(before:)();
  v17 = Substring.UTF8View.subscript.getter();
  result = Substring.UTF8View.index(after:)();
  v18 = result >> 14;
  if (v17 == 13)
  {
    if (v18 >= v16 >> 14)
    {
      return v16;
    }

    goto LABEL_108;
  }

  if (v18 >= v7)
  {
    return a2;
  }

  __break(1u);
LABEL_91:
  v42 = a5;
  if (v49 >> 14 < a5 >> 14)
  {
    __break(1u);
LABEL_93:
    v42 = v49;
    result = a5;
    if (a5 >> 14 < v49 >> 14)
    {
      goto LABEL_109;
    }
  }

  Substring.UTF8View.index(after:)();
  return v42;
}

uint64_t specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1)
{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized ContiguousArray.reserveCapacity(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized ContiguousArray.reserveCapacity(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS10FoundationE22_BlockSearchingOptionsV_Tt1g5(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t specialized closure #1 in Rope._Node.formPredecessor(of:)(unsigned __int16 *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = *a3;
  if (*a3 < *a1)
  {
    v10 = (a2 + 24 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    swift_unknownObjectRetain();
    LOBYTE(v12) = specialized Rope._Node.formPredecessor(of:)(a4, v11, v12, v13);
    swift_unknownObjectRelease();
    if (v12)
    {
      return 1;
    }

    v9 = *a3;
  }

  v14 = v9 < 1;
  v15 = v9 - 1;
  if (!v14)
  {
    *a3 = v15;
    v17 = *(a4 + 8);
    v16 = (a4 + 8);
    *v16 = v17 & ((-15 << ((4 * a5 + 8) & 0x3C)) - 1) | (v15 << ((4 * a5 + 8) & 0x3C));
    v18 = *(a2 + 24 * *a3);
    swift_unknownObjectRetain();
    v19 = specialized Rope._Node.descendToLastItem(under:)(v16, v18);
    swift_unknownObjectRelease();
    v16[1] = v19;
    return 1;
  }

  return 0;
}

uint64_t *specialized Rope._Node.descendToLastItem(under:)(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v3 = result;
    v4 = *(a2 + 18);
    *result = ((-15 << ((4 * v4 + 8) & 0x3C)) - 1) & *result | ((v2 - 1) << ((4 * v4 + 8) & 0x3C));
    if (v4)
    {
      v5 = (a2 + 24 * v2);
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = specialized Rope._Node.descendToLastItem(under:)(v3, v6, v7, v8);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v9;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, _OWORD *))
{
  if (a2 < 0)
  {
    goto LABEL_52;
  }

  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v50 = a2;
  v51 = a1;
  v52 = 0;
  v8 = 0;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v62 = a3;
  while (1)
  {
    if (!v12)
    {
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v13)
        {
          goto LABEL_19;
        }

        v16 = *(v9 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v12 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_50;
    }

    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = v14 | (v8 << 6);
    v18 = *(a3 + 56);
    v19 = (*(a3 + 48) + 16 * v17);
    v20 = v19[1];
    *&v55 = *v19;
    *(&v55 + 1) = v20;
    outlined init with copy of AttributedString._AttributeValue(v18 + 72 * v17, v60);

    v21 = a4(&v55, v60);
    outlined destroy of AttributedString._AttributeValue(v60);
    if (v4)
    {

      return;
    }

    a3 = v62;
    if (v21)
    {
      *(v51 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v22 = __OFADD__(v52++, 1);
      if (v22)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_19:
  v23 = v52;
  if (!v52)
  {
LABEL_22:

    return;
  }

  if (v52 == *(a3 + 16))
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v24 = static _DictionaryStorage.allocate(capacity:)();
  v25 = v24;
  if (v50)
  {
    v26 = v51;
    v27 = *v51;
  }

  else
  {
    v27 = 0;
    v26 = v51;
  }

  v28 = 0;
  v29 = v24 + 64;
  if (!v27)
  {
LABEL_29:
    v31 = v28;
    while (1)
    {
      v28 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v28 >= v50)
      {
        goto LABEL_22;
      }

      v32 = v26[v28];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v53 = (v32 - 1) & v32;
        goto LABEL_34;
      }
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  while (1)
  {
    v30 = __clz(__rbit64(v27));
    v53 = (v27 - 1) & v27;
LABEL_34:
    v33 = v30 | (v28 << 6);
    v34 = (*(v62 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    outlined init with copy of AttributedString._AttributeValue(*(v62 + 56) + 72 * v33, v60);
    v57 = v60[2];
    v58 = v60[3];
    v59 = v61;
    v55 = v60[0];
    v56 = v60[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v37 = Hasher._finalize()();
    v38 = -1 << *(v25 + 32);
    v39 = v37 & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v29 + 8 * (v39 >> 6))) == 0)
    {
      break;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v29 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_44:
    *(v29 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v46 = (*(v25 + 48) + 16 * v41);
    *v46 = v35;
    v46[1] = v36;
    v47 = *(v25 + 56) + 72 * v41;
    v48 = v58;
    *(v47 + 32) = v57;
    *(v47 + 48) = v48;
    *(v47 + 64) = v59;
    v49 = v56;
    *v47 = v55;
    *(v47 + 16) = v49;
    ++*(v25 + 16);
    v22 = __OFSUB__(v23--, 1);
    if (v22)
    {
      goto LABEL_53;
    }

    if (!v23)
    {
      goto LABEL_22;
    }

    v27 = v53;
    if (!v53)
    {
      goto LABEL_29;
    }
  }

  v42 = 0;
  v43 = (63 - v38) >> 6;
  while (++v40 != v43 || (v42 & 1) == 0)
  {
    v44 = v40 == v43;
    if (v40 == v43)
    {
      v40 = 0;
    }

    v42 |= v44;
    v45 = *(v29 + 8 * v40);
    if (v45 != -1)
    {
      v41 = __clz(__rbit64(~v45)) + (v40 << 6);
      goto LABEL_44;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type AttributedString.Runs.NSAttributesSlice and conformance AttributedString.Runs.NSAttributesSlice(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type DefaultIndices<AttributedString.Runs.NSAttributesSlice> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type AttributedString.Runs.NSAttributesSlice and conformance AttributedString.Runs.NSAttributesSlice(&lazy protocol witness table cache variable for type AttributedString.Runs.NSAttributesSlice and conformance AttributedString.Runs.NSAttributesSlice, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for AttributedString.Runs.AttributesSlice1()
{
  type metadata accessor for AttributedString.Runs();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Set<AttributedString.AttributeRunBoundaries?>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

void type metadata accessor for Set<AttributedString.AttributeRunBoundaries?>()
{
  if (!lazy cache variable for type metadata for Set<AttributedString.AttributeRunBoundaries?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
    lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries? and conformance <A> A?();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<AttributedString.AttributeRunBoundaries?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
    lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries()
{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries;
  if (!lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AttributeRunBoundaries and conformance AttributedString.AttributeRunBoundaries);
  }

  return result;
}

uint64_t type metadata completion function for AttributedString.Runs.AttributesSlice1.Iterator()
{
  result = type metadata accessor for AttributedString.Runs.AttributesSlice1();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AttributedString.Runs.AttributesSlice2()
{
  type metadata accessor for AttributedString.Runs();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Set<AttributedString.AttributeRunBoundaries?>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for AttributedString.Runs.AttributesSlice2.Iterator()
{
  result = type metadata accessor for AttributedString.Runs.AttributesSlice2();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AttributedString.Runs.AttributesSlice3()
{
  type metadata accessor for AttributedString.Runs();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Set<AttributedString.AttributeRunBoundaries?>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for AttributedString.Runs.AttributesSlice3.Iterator()
{
  result = type metadata accessor for AttributedString.Runs.AttributesSlice3();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AttributedString.Runs.AttributesSlice4()
{
  type metadata accessor for AttributedString.Runs();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Set<AttributedString.AttributeRunBoundaries?>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for AttributedString.Runs.AttributesSlice4.Iterator()
{
  result = type metadata accessor for AttributedString.Runs.AttributesSlice4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AttributedString.Runs.AttributesSlice5()
{
  type metadata accessor for AttributedString.Runs();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String]();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Set<AttributedString.AttributeRunBoundaries?>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for AttributedString.Runs.AttributesSlice5.Iterator()
{
  result = type metadata accessor for AttributedString.Runs.AttributesSlice5();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AttributedString.Runs.NSAttributesSlice()
{
  type metadata accessor for AttributedString.Runs();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AttributedString.Runs.NSAttributesSlice.Iterator()
{
  result = type metadata accessor for AttributedString.Runs.NSAttributesSlice(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AttributedString.Runs.Run.attributes.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 AttributedString.Runs.Run.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*(v1 + 80) + 16);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
  result = *(v1 + 48);
  v5 = *(v1 + 64);
  *(a1 + 40) = result;
  *(a1 + 56) = v5;
  *(a1 + 72) = v2;
  return result;
}

uint64_t AttributedString.Runs.Run.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - v3;
  v5 = *(v0 + 32);
  v19 = *(v0 + 16);
  v20 = v5;
  v6 = *(v0 + 64);
  v21 = *(v0 + 48);
  v22 = v6;
  v7 = *(v0 + 80);
  v8 = *(v7 + 40);
  v23 = *(v7 + 24);
  v24 = v8;
  v25 = *(v7 + 56);
  swift_unknownObjectRetain();

  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  outlined destroy of BigSubstring.UnicodeScalarView(&v14);
  v13[4] = v15;
  v13[5] = v16;
  v13[6] = v17;
  v13[7] = v18;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v26 = v7;
  v31 = 0;
  v13[0] = v15;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v18;
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v9 = AttributedString.Guts.description(in:)(v4);
  v11 = v10;
  (*(v2 + 8))(v4, v1, v9);
  outlined destroy of AttributedSubstring(&v26);
  return v11;
}

uint64_t AttributedString.Runs.Run.subscript.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v2;
  a1[1] = v3;
}

uint64_t specialized static AttributedString.Runs.Run.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((a1[6] >> 11) - (a1[2] >> 11) != (a2[6] >> 11) - (a2[2] >> 11))
  {
    return 0;
  }

  v2 = a2[1];
  v3 = a1[1];
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v3, v2);
}

uint64_t storeEnumTagSinglePayload for AttributedString.Runs.Run(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection.init(repeating:count:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = AttributedString.CharacterView.init()(v41);
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v34 = a4;
      v35 = a3;
      v8 = 0;
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v10 = *(&v42 + 1);
        if (*(&v42 + 1) >> 10 < *(&v41[0] + 1) >> 10)
        {
          goto LABEL_11;
        }

        v12 = *(&v43 + 1);
        v11 = v44;
        v13 = v43;
        v14 = *&v41[0];
        v15 = *(*&v41[0] + 24);
        v16 = *(*&v41[0] + 56);
        v47[1] = *(*&v41[0] + 40);
        v47[2] = v16;
        v47[0] = v15;

        outlined init with copy of BigString(v47, v40);
        v17 = MEMORY[0x1865CA460](v10, v13, v12, v11);
        v38 = v19;
        v39 = v18;
        v37 = v20;
        outlined destroy of BigString(v47);
        v21 = *(v14 + 24);
        v22 = *(v14 + 56);
        v46[1] = *(v14 + 40);
        v46[2] = v22;
        v46[0] = v21;
        v23 = *(v14 + 24);
        v49 = *(v14 + 56);
        v24 = *(v14 + 40);
        v48[0] = v23;
        v48[1] = v24;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v48, v40);
        v25 = MEMORY[0x1865CA460](v10, v13, v12, v11);
        v27 = v26;
        v29 = v28;
        v31 = v30;
        outlined destroy of BigString(v46);
        v45[0] = v17;
        v45[1] = v39;
        v45[2] = v38;
        v45[3] = v37;
        v45[4] = v25;
        v45[5] = v27;
        v45[6] = v29;
        v45[7] = v31;
        specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v45, a1, a2);

        ++v8;
        if (v9 == v35)
        {

          a4 = v34;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    v32 = v43;
    a4[2] = v42;
    a4[3] = v32;
    a4[4] = v44;
    v33 = v41[1];
    *a4 = v41[0];
    a4[1] = v33;
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection.init(repeating:count:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  BigString.init()();
  v37 = v41;
  v38 = v40;
  v5 = *(&v42 + 1);
  v4 = v42;
  v43[0] = 0;
  MEMORY[0x1865D26B0](v43, 8);
  v6 = v43[0];
  type metadata accessor for AttributedString.Guts();
  v7 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v9 = v41;
    *(v7 + 24) = v40;
    *(v7 + 16) = add_explicit;
    *(v7 + 40) = v9;
    *(v7 + 56) = v42;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    *(v7 + 88) = 0;
    *(v7 + 96) = v6;
    *(v7 + 104) = MEMORY[0x1E69E7CC0];
    v10 = BigString.startIndex.getter();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = BigString.endIndex.getter();
    v55 = v10;
    v56 = v12;
    v57 = v14;
    v58 = v16;
    v59 = v17;
    v60 = v18;
    v61 = v19;
    v62 = v20;
    v64 = v37;
    v63 = v38;
    v65 = v4;
    v66 = v5;

    outlined init with copy of BigString(&v40, v43);
    BigString.UnicodeScalarView.subscript.getter();

    outlined destroy of BigString(&v40);
    result = outlined destroy of BigSubstring.UnicodeScalarView(v43);
    *v39 = v7;
    *&v39[8] = v44;
    *&v39[24] = v45;
    *&v39[40] = v46;
    *&v39[56] = v47;
    *&v39[72] = 0;
    if (!a2)
    {
LABEL_7:
      a3[2] = *&v39[32];
      a3[3] = *&v39[48];
      a3[4] = *&v39[64];
      *a3 = *v39;
      a3[1] = *&v39[16];
      return result;
    }

    if (a2 < 0)
    {
      break;
    }

    while (1)
    {
      v7 = *&v39[40];
      if (*&v39[40] >> 10 < *&v39[8] >> 10)
      {
        break;
      }

      v4 = *v39;
      v22 = *(*v39 + 40);
      v52 = *(*v39 + 24);
      v53 = v22;
      v54 = *(*v39 + 56);
      swift_unknownObjectRetain();
      *&v38 = a2;
      v23 = BigString.UnicodeScalarView.index(roundingDown:)();
      *&v37 = v24;
      v6 = v25;
      v5 = v26;
      swift_unknownObjectRelease();
      v27 = *(*v39 + 40);
      v49 = *(*v39 + 24);
      v50 = v27;
      v51 = *(*v39 + 56);
      swift_unknownObjectRetain();
      v28 = BigString.UnicodeScalarView.index(roundingDown:)();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      swift_unknownObjectRelease();
      v48[0] = v23;
      v48[1] = v37;
      v48[2] = v6;
      v48[3] = v5;
      v48[4] = v28;
      v48[5] = v30;
      v48[6] = v32;
      v48[7] = v34;
      result = specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v48, a1);
      a2 = v38 - 1;
      if (v38 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
  }

  __break(1u);
  return result;
}

void *specialized RangeReplaceableCollection.append(_:)(int a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = *(*v1 + 16);
  v7[0] = v1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v7[0];
  v7[6] = v2;
  v7[7] = v3;
  v7[8] = v4;
  v7[9] = v5;
  return specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(v7, a1);
}

uint64_t specialized RangeReplaceableCollection.append<A>(contentsOf:)()
{
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = v22 - v3;
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = v4;
  v24 = AssociatedTypeWitness;
  v22[1] = AssociatedConformanceWitness;
  result = dispatch thunk of IteratorProtocol.next()();
  if (v29)
  {
    return (*(v22[0] + 8))(v23, v24);
  }

  while (v1[5] >> 10 >= v1[1] >> 10)
  {
    v27 = v28;
    v7 = *v1;
    v34 = *(*v1 + 24);
    v8 = *(v7 + 56);
    v35 = *(v7 + 40);
    v36 = v8;
    swift_unknownObjectRetain();
    v26 = BigString.UnicodeScalarView.index(roundingDown:)();
    v10 = v9;
    v12 = v11;
    v25 = v13;
    swift_unknownObjectRelease();
    v14 = *(v7 + 40);
    v31 = *(v7 + 24);
    v32 = v14;
    v33 = *(v7 + 56);
    swift_unknownObjectRetain();
    v15 = BigString.UnicodeScalarView.index(roundingDown:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();
    v30[0] = v26;
    v30[1] = v10;
    v30[2] = v12;
    v30[3] = v25;
    v30[4] = v15;
    v30[5] = v17;
    v30[6] = v19;
    v30[7] = v21;
    specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v30, v27);
    result = dispatch thunk of IteratorProtocol.next()();
    if (v29 == 1)
    {
      return (*(v22[0] + 8))(v23, v24);
    }
  }

  __break(1u);
  return result;
}

{
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = v32 - v3;
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v4;
  v34 = AssociatedTypeWitness;
  v32[1] = AssociatedConformanceWitness;
  result = dispatch thunk of IteratorProtocol.next()();
  v7 = v41;
  if (!v41)
  {
    return (*(v32[0] + 8))(v33, v34);
  }

  while (1)
  {
    v8 = v1[5];
    if (v8 >> 10 < v1[1] >> 10)
    {
      break;
    }

    v39 = v40[5];
    v9 = v1[7];
    v10 = v1[8];
    v11 = v1[6];
    v12 = *v1;
    v13 = *(*v1 + 24);
    v14 = *(*v1 + 56);
    v44[1] = *(*v1 + 40);
    v44[2] = v14;
    v44[0] = v13;
    v15 = *(v12 + 24);
    v46 = *(v12 + 56);
    v16 = *(v12 + 40);
    v45[0] = v15;
    v45[1] = v16;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v45, v40);
    v17 = MEMORY[0x1865CA460](v8, v11, v9, v10);
    v37 = v18;
    v38 = v17;
    v35 = v20;
    v36 = v19;
    outlined destroy of BigString(v44);
    v21 = *(v12 + 24);
    v22 = *(v12 + 56);
    v43[1] = *(v12 + 40);
    v43[2] = v22;
    v43[0] = v21;
    v23 = *(v12 + 24);
    v48 = *(v12 + 56);
    v24 = *(v12 + 40);
    v47[0] = v23;
    v47[1] = v24;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v47, v40);
    v25 = MEMORY[0x1865CA460](v8, v11, v9, v10);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    outlined destroy of BigString(v43);
    v42[0] = v38;
    v42[1] = v37;
    v42[2] = v36;
    v42[3] = v35;
    v42[4] = v25;
    v42[5] = v27;
    v42[6] = v29;
    v42[7] = v31;
    specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v42, v39, v7);

    result = dispatch thunk of IteratorProtocol.next()();
    v7 = v41;
    if (!v41)
    {
      return (*(v32[0] + 8))(v33, v34);
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection.removeFirst(_:)(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      v3 = v1[5];
      if (v3 >> 10 >= v2 >> 10)
      {
        v23 = v3 >> 10;
        v4 = *v1;
        v5 = v1[2];
        v6 = v1[3];
        v7 = v1[4];
        v8 = *(*v1 + 24);
        v9 = *(*v1 + 56);
        v25[1] = *(*v1 + 40);
        v25[2] = v9;
        v25[0] = v8;
        v10 = *(v4 + 24);
        v27 = *(v4 + 56);
        v11 = *(v4 + 40);
        v26[0] = v10;
        v26[1] = v11;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v26, v24);
        v12 = v5;
        v13 = v6;
        v14 = v7;
        v15 = BigString.index(_:offsetBy:limitedBy:)();
        v17 = v16;
        v19 = v18;
        v21 = v20;
        result = outlined destroy of BigString(v25);
        if (v21 == 2)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        if (v15 >> 10 >= v2 >> 10 && v23 >= v15 >> 10)
        {
          v22 = *(v4 + 16);
          v24[0] = v2;
          v24[1] = v12;
          v24[2] = v13;
          v24[3] = v14;
          v24[4] = v22;
          v24[5] = v15;
          v24[6] = v17;
          v24[7] = v19;
          v24[8] = v21;
          v24[9] = v22;
          return specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v24);
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      v3 = v1[5];
      if (v3 >> 10 >= v2 >> 10)
      {
        v17 = v3 >> 10;
        v4 = *v1;
        v5 = v1[2];
        v6 = v1[4];
        v18 = v1[3];
        v7 = *(*v1 + 40);
        v20 = *(*v1 + 24);
        v21 = v7;
        v22 = *(v4 + 56);
        swift_unknownObjectRetain();
        v16 = v6;
        v8 = BigString.UnicodeScalarView.index(_:offsetBy:limitedBy:)();
        v10 = v9;
        v12 = v11;
        v14 = v13;
        result = swift_unknownObjectRelease();
        if (v14 == 2)
        {
LABEL_12:
          __break(1u);
          return result;
        }

        if (v8 >> 10 >= v2 >> 10 && v17 >= v8 >> 10)
        {
          v15 = *(v4 + 16);
          v19[0] = v2;
          v19[1] = v5;
          v19[2] = v18;
          v19[3] = v16;
          v19[4] = v15;
          v19[5] = v8;
          v19[6] = v10;
          v19[7] = v12;
          v19[8] = v14;
          v19[9] = v15;
          return specialized AttributedString.UnicodeScalarView.replaceSubrange<A>(_:with:)(v19);
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return String.removeSubrange(_:)();
}

uint64_t specialized RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(void *))
{
  v3 = v2;
  v4 = v1[3];
  v84 = v1[2];
  v85 = v4;
  v86 = v1[4];
  v5 = v1[1];
  v83[0] = *v1;
  v83[1] = v5;
  outlined init with copy of AttributedString.CharacterView(v83, &v60);
  result = AttributedString.CharacterView.init()(&v65);
  v7 = *&v83[0];
  v58 = *(&v83[0] + 1) >> 10;
  v87 = *(&v84 + 1) >> 10;
  if (*(&v83[0] + 1) >> 10 == *(&v84 + 1) >> 10)
  {
LABEL_2:
    v8 = v49[3];
    v62 = v49[2];
    v63 = v8;
    v64 = v49[4];
    v9 = v49[1];
    v60 = *v49;
    v61 = v9;
    outlined destroy of AttributedString.CharacterView(&v60);

    v10 = v68;
    v49[2] = v67;
    v49[3] = v10;
    v49[4] = v69;
    v11 = v66;
    *v49 = v65;
    v49[1] = v11;
  }

  else
  {
    v12 = *(&v83[0] + 1) >> 10;
    while (v12 >= v58 && v12 < v87)
    {
      v35 = *(v7 + 24);
      v36 = *(v7 + 56);
      v74[1] = *(v7 + 40);
      v74[2] = v36;
      v74[0] = v35;
      v37 = *(v7 + 24);
      v38 = *(v7 + 40);
      v76 = *(v7 + 56);
      v75[0] = v37;
      v75[1] = v38;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v75, &v60);
      v39 = BigString.subscript.getter();
      v41 = v40;
      outlined destroy of BigString(v74);
      v42 = *(v7 + 24);
      v43 = *(v7 + 56);
      v73[1] = *(v7 + 40);
      v73[2] = v43;
      v73[0] = v42;
      v44 = *(v7 + 24);
      v78 = *(v7 + 56);
      v45 = *(v7 + 40);
      v77[0] = v44;
      v77[1] = v45;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v77, &v60);
      v46 = BigString.index(after:)();
      result = outlined destroy of BigString(v73);
      v12 = v46 >> 10;
      if (v87 < v46 >> 10)
      {
        goto LABEL_15;
      }

      v59[0] = v39;
      v59[1] = v41;
      v47 = a1(v59);
      if (v3)
      {
        goto LABEL_13;
      }

      if ((v47 & 1) == 0)
      {
        v56 = v39;
        v48 = *(&v67 + 1);
        if (*(&v67 + 1) >> 10 < *(&v65 + 1) >> 10)
        {
          __break(1u);
LABEL_13:

          v62 = v67;
          v63 = v68;
          v64 = v69;
          v60 = v65;
          v61 = v66;
          outlined destroy of AttributedString.CharacterView(&v60);
        }

        v13 = *(&v68 + 1);
        v50 = v69;
        v51 = *(&v68 + 1);
        v14 = v68;
        v15 = v65;
        v16 = *(v65 + 24);
        v17 = *(v65 + 56);
        v72[1] = *(v65 + 40);
        v72[2] = v17;
        v72[0] = v16;
        v18 = *(v65 + 24);
        v80 = *(v65 + 56);
        v19 = *(v65 + 40);
        v79[0] = v18;
        v79[1] = v19;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v79, &v60);
        v20 = MEMORY[0x1865CA460](v48, v14, v13, v50);
        v54 = v21;
        v55 = v20;
        v52 = v23;
        v53 = v22;
        outlined destroy of BigString(v72);
        v24 = *(v15 + 24);
        v25 = *(v15 + 56);
        v71[1] = *(v15 + 40);
        v71[2] = v25;
        v71[0] = v24;
        v26 = *(v15 + 24);
        v82 = *(v15 + 56);
        v27 = *(v15 + 40);
        v81[0] = v26;
        v81[1] = v27;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v81, &v60);
        v28 = MEMORY[0x1865CA460](v48, v14, v51, v50);
        v30 = v29;
        v32 = v31;
        v34 = v33;
        outlined destroy of BigString(v71);
        v70[0] = v55;
        v70[1] = v54;
        v70[2] = v53;
        v70[3] = v52;
        v70[4] = v28;
        v70[5] = v30;
        v70[6] = v32;
        v70[7] = v34;
        v3 = 0;
        specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v70, v56, v41);
      }

      if (v12 == v87)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t specialized RangeReplaceableCollection.removeAll(where:)(uint64_t (*a1)(int *))
{
  v3 = v1[3];
  v106 = v1[2];
  v107 = v3;
  v108 = v1[4];
  v4 = v1[1];
  v104 = *v1;
  v105 = v4;
  outlined init with copy of AttributedString.UnicodeScalarView(&v104, &v65);
  BigString.init()();
  v58 = v72;
  v59 = v71;
  v6 = *(&v73 + 1);
  v5 = v73;
  *&v65 = 0;
  MEMORY[0x1865D26B0](&v65, 8);
  v7 = v65;
  type metadata accessor for AttributedString.Guts();
  v8 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
    goto LABEL_18;
  }

  v48 = v1;
  v55 = v2;
  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v10 = v72;
    *(v8 + 24) = v71;
    *(v8 + 16) = add_explicit;
    *(v8 + 40) = v10;
    *(v8 + 56) = v73;
    *(v8 + 72) = 0;
    *(v8 + 80) = 0;
    *(v8 + 88) = 0;
    *(v8 + 96) = v7;
    *(v8 + 104) = MEMORY[0x1E69E7CC0];
    v7 = BigString.startIndex.getter();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = BigString.endIndex.getter();
    v92 = v7;
    v93 = v12;
    v94 = v14;
    v95 = v16;
    v96 = v17;
    v97 = v18;
    v98 = v19;
    v99 = v20;
    v100 = v59;
    v101 = v58;
    v102 = v5;
    v103 = v6;

    outlined init with copy of BigString(&v71, &v65);
    BigString.UnicodeScalarView.subscript.getter();

    outlined destroy of BigString(&v71);
    outlined destroy of BigSubstring.UnicodeScalarView(v74);
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    *&v70[0] = v8;
    *(v70 + 8) = v75;
    *(&v70[1] + 8) = v76;
    *(&v70[2] + 8) = v77;
    *(&v70[3] + 8) = v78;
    *(&v70[4] + 1) = 0;
    v56 = v104;
    v54 = *(&v104 + 1) >> 10;
    *&v59 = *(&v106 + 1) >> 10;
    if (*(&v104 + 1) >> 10 == *(&v106 + 1) >> 10)
    {
      break;
    }

    *&v58 = *(&v104 + 1);
    v109 = v106;
    v26 = *(&v104 + 1) >> 10;
    v8 = v55;
    v6 = v105;
    while (v26 >= v54 && v26 < v59)
    {
      v42 = *(v56 + 40);
      v89 = *(v56 + 24);
      v90 = v42;
      v91 = *(v56 + 56);
      swift_unknownObjectRetain();
      v5 = BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      v43 = *(v56 + 40);
      v86 = *(v56 + 24);
      v87 = v43;
      v88 = *(v56 + 56);
      v7 = v86;
      swift_unknownObjectRetain();
      v44 = BigString.UnicodeScalarView.index(after:)();
      v6 = v45;
      v109 = v46;
      swift_unknownObjectRelease();
      *&v58 = v44;
      v26 = v44 >> 10;
      if (v59 < v44 >> 10)
      {
        goto LABEL_17;
      }

      v60 = v5;
      v47 = a1(&v60);
      if (v8)
      {
        goto LABEL_15;
      }

      if ((v47 & 1) == 0)
      {
        if (*(&v70[2] + 1) >> 10 < *(&v70[0] + 1) >> 10)
        {
          __break(1u);
LABEL_15:
          v67 = v70[2];
          v68 = v70[3];
          v69 = v70[4];
          v65 = v70[0];
          v66 = v70[1];
          outlined destroy of AttributedString.UnicodeScalarView(&v65);
        }

        v27 = v5;
        v55 = 0;
        v28 = *&v70[0];
        v29 = *(*&v70[0] + 40);
        v83 = *(*&v70[0] + 24);
        v84 = v29;
        v85 = *(*&v70[0] + 56);
        swift_unknownObjectRetain();
        v30 = BigString.UnicodeScalarView.index(roundingDown:)();
        v51 = v31;
        v52 = v30;
        v49 = v33;
        v50 = v32;
        swift_unknownObjectRelease();
        v34 = *(v28 + 40);
        v80 = *(v28 + 24);
        v81 = v34;
        v82 = *(v28 + 56);
        v5 = v80;
        swift_unknownObjectRetain();
        v35 = BigString.UnicodeScalarView.index(roundingDown:)();
        v7 = v36;
        v57 = v27;
        v37 = v6;
        v39 = v38;
        v41 = v40;
        swift_unknownObjectRelease();
        v79[0] = v52;
        v79[1] = v51;
        v79[2] = v50;
        v79[3] = v49;
        v79[4] = v35;
        v79[5] = v7;
        v79[6] = v39;
        v79[7] = v41;
        v6 = v37;
        specialized AttributedString.UnicodeScalarView._replaceSubrange<A>(_:with:)(v79, v57);
      }

      if (v26 == v59)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_4:
  v21 = v48[3];
  v67 = v48[2];
  v68 = v21;
  v69 = v48[4];
  v22 = v48[1];
  v65 = *v48;
  v66 = v22;
  outlined destroy of AttributedString.UnicodeScalarView(&v65);

  v24 = v70[3];
  v48[2] = v70[2];
  v48[3] = v24;
  v48[4] = v70[4];
  v25 = v70[1];
  *v48 = v70[0];
  v48[1] = v25;
  return result;
}

__n128 AttributedString.UnicodeScalarView.init()@<Q0>(uint64_t a1@<X8>)
{
  BigString.init()();
  v22 = v25;
  v23 = v24;
  v2 = v26;
  v27[0] = 0;
  MEMORY[0x1865D26B0](v27, 8);
  v3 = v27[0];
  type metadata accessor for AttributedString.Guts();
  v4 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_5:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v6 = v25;
  *(v4 + 24) = v24;
  *(v4 + 16) = add_explicit;
  *(v4 + 40) = v6;
  *(v4 + 56) = v26;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = v3;
  *(v4 + 104) = MEMORY[0x1E69E7CC0];
  v7 = BigString.startIndex.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = BigString.endIndex.getter();
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = v23;
  v41 = v22;
  v42 = v2;

  outlined init with copy of BigString(&v24, v27);
  BigString.UnicodeScalarView.subscript.getter();

  outlined destroy of BigString(&v24);
  outlined destroy of BigSubstring.UnicodeScalarView(v27);
  result = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 24) = v19;
  *(a1 + 40) = v20;
  *(a1 + 56) = v21;
  *(a1 + 72) = 0;
  return result;
}