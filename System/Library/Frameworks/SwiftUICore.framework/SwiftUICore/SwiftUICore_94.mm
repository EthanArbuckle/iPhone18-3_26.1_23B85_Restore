uint64_t (*protocol witness for Collection.subscript.read in conformance RemovedElementsCollection<A>(uint64_t **a1))()
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
  v2[4] = RemovedElementsCollection.subscript.read(v2);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

uint64_t (*RemovedElementsCollection.subscript.read(uint64_t *a1))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v3 = *(AssociatedTypeWitness - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  RemovedElementsCollection.subscript.getter(v4);
  return CountingIndexCollection.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance RemovedElementsCollection<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RemovedElementsCollection.Index();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance RemovedElementsCollection<A>(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemovedElementsCollection.Index();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 32))(&v10 - v7, a1, v4, v6);
  RemovedElementsCollection.index(after:)(v8, a2, a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance RemovedElementsCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance RemovedElementsCollection<A>()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t RemovedElementsCollection<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a1;
  v64 = a4;
  v61 = a3;
  v5 = *(a3 + 8);
  v56 = a2;
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Range();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v42 - v10;
  v11 = type metadata accessor for RangeSet.Ranges();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v42 - v12;
  v13 = type metadata accessor for RemovedElementsCollection.Index();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v65 = v4;
  v62 = v6;
  v51 = v5;
  dispatch thunk of Collection.startIndex.getter();
  v63 = AssociatedConformanceWitness;
  v21 = dispatch thunk of static Comparable.> infix(_:_:)();
  v50 = v17;
  v22 = *(v17 + 8);
  v52 = v20;
  v22(v20, AssociatedTypeWitness);
  v60 = v14;
  v23 = v14 + 16;
  v24 = *(v14 + 16);
  if ((v21 & 1) == 0)
  {
    return v24(v64, v66, v13);
  }

  v47 = v22;
  v25 = v66;
  v46 = v23;
  v24(v16, v66, v13);
  v26 = *(v25 + *(v13 + 36));
  v27 = *(v56 + 36);
  v28 = type metadata accessor for RangeSet();
  v56 = v27;
  v29 = v57;
  v49 = v28;
  RangeSet.ranges.getter();
  v30 = v59;
  v31 = RangeSet.Ranges.startIndex.getter();
  v58 = *(v58 + 8);
  (v58)(v29, v30);
  v48 = v26;
  if (v31 < v26)
  {
    v43 = v24;
    v45 = v16;
    v44 = v13;
    RangeSet.ranges.getter();
    v67 = v48;
    swift_getWitnessTable();
    RandomAccessCollection<>.index(before:)();
    v32 = v58;
    (v58)(v29, v30);
    v33 = v68;
    RangeSet.ranges.getter();
    v56 = v33;
    v34 = v53;
    RangeSet.Ranges.subscript.getter();
    v32(v29, v30);
    v35 = v55;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v36 = v52;
      dispatch thunk of Collection.startIndex.getter();
      v37 = dispatch thunk of static Comparable.> infix(_:_:)();
      v47(v36, AssociatedTypeWitness);
      if (v37)
      {
        v38 = v52;
        dispatch thunk of BidirectionalCollection.index(before:)();
        (*(v54 + 8))(v34, v35);
        v39 = v45;
        (*(v50 + 40))(v45, v38, AssociatedTypeWitness);
        v40 = v44;
        *&v39[*(v44 + 36)] = v56;
        v43(v64, v39, v40);
        return (*(v60 + 8))(v39, v40);
      }
    }

    (*(v54 + 8))(v34, v35);
    v13 = v44;
    v16 = v45;
  }

  dispatch thunk of BidirectionalCollection.formIndex(before:)();
  return (*(v60 + 32))(v64, v16, v13);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> RemovedElementsCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = type metadata accessor for RemovedElementsCollection.Index();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v7 + 32))(&v12 - v9, a1, v6, v8);
  RemovedElementsCollection<>.index(before:)(v10, a2, v5, a1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.transform.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RemovedElementsCollection();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.transform.setter(uint64_t a1)
{
  v3 = type metadata accessor for RemovedElementsCollection();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.init(base:removedIndices:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for RangeSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, a3, v16);
  (*(v11 + 16))(v13, a2, v10);
  RemovedElementsCollection.init(base:removedIndices:)(v18, v13, a3, v9, a5);
  (*(v11 + 8))(a2, v10);
  return (*(v14 + 8))(a1, a3);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemovedElementsCollection() + 40);
  v4 = type metadata accessor for RemovedElementsCollection.Index();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.endIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemovedElementsCollection() + 44);
  v4 = type metadata accessor for RemovedElementsCollection.Index();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for RemovedElementsCollection();

  return a3(a1, v4);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 + 24) + 8);
  v6 = type metadata accessor for RemovedElementsCollection();

  return RemovedElementsCollection<>.index(before:)(a1, v6, v5, a3);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v85 = a1;
  v76 = a4;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v74[1] = a3;
  v97 = v7;
  v9 = *(*(v7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Range();
  v108 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v90 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v74 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v96 = v74 - v18;
  v112 = AssociatedConformanceWitness;
  v19 = type metadata accessor for RangeSet.Ranges();
  WitnessTable = swift_getWitnessTable();
  v20 = type metadata accessor for Slice();
  v105 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v81 = v74 - v21;
  v107 = v19;
  v111 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v106 = v74 - v23;
  swift_getWitnessTable();
  v98 = v20;
  v83 = type metadata accessor for IndexingIterator();
  v24 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v100 = v74 - v25;
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v27);
  v94 = v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v74 - v30;
  v110 = v8;
  v102 = v9;
  v32 = type metadata accessor for RemovedElementsCollection.Index();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v75 = v34;
  v35 = *(v34 + 16);
  v88 = v74 - v36;
  v84 = v37;
  v35(v33);
  if (!a2)
  {
    return (*(v75 + 32))(v76, v88, v84);
  }

  v93 = (v26 + 8);
  ++v111;
  v103 = (v108 + 8);
  v79 = (v105 + 16);
  v78 = (v105 + 8);
  v95 = (v108 + 32);
  v77 = (v24 + 8);
  v82 = (v26 + 40);
  v80 = v16;
  v109 = v31;
  v91 = v12;
  while (1)
  {
    v87 = a2;
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v38 = v94;
    dispatch thunk of Collection.startIndex.getter();
    v39 = dispatch thunk of static Comparable.> infix(_:_:)();
    v40 = *v93;
    (*v93)(v38, AssociatedTypeWitness);
    if ((v39 & 1) == 0)
    {
      v40(v31, AssociatedTypeWitness);
      RemovedElementsCollection<>.RandomAccessAdaptor.startIndex.getter(v76);
      return (*(v75 + 8))(v88, v84);
    }

    dispatch thunk of Collection.endIndex.getter();
    v41 = dispatch thunk of static Comparable.< infix(_:_:)();
    v40(v38, AssociatedTypeWitness);
    if ((v41 & 1) == 0)
    {
      v40(v31, AssociatedTypeWitness);
      RemovedElementsCollection<>.RandomAccessAdaptor.endIndex.getter(v76);
      return (*(v75 + 8))(v88, v84);
    }

    v92 = v40;
    v86 = *(v84 + 36);
    v42 = *&v88[v86];
    v115 = v42;
    v43 = dispatch thunk of static Comparable.> infix(_:_:)();
    v44 = *(type metadata accessor for RemovedElementsCollection() + 36);
    v45 = type metadata accessor for RangeSet();
    v46 = v106;
    v108 = v45;
    RangeSet.ranges.getter();
    if (v43)
    {
      break;
    }

    v60 = v5;
    v61 = v107;
    v62 = RangeSet.Ranges.startIndex.getter();
    v63 = *v111;
    result = (*v111)(v46, v61);
    if (v62 >= v42)
    {
      v104 = 0;
    }

    else
    {
      v104 = 0;
      v105 = v44;
      v64 = AssociatedTypeWitness;
      v89 = v63;
      while (1)
      {
        RangeSet.ranges.getter();
        v113 = v42;
        swift_getWitnessTable();
        RandomAccessCollection<>.index(before:)();
        (v63)(v46, v61);
        v65 = v114;
        RangeSet.ranges.getter();
        v66 = v90;
        v101 = v65;
        RangeSet.Ranges.subscript.getter();
        (v63)(v46, v61);
        v67 = v91;
        AssociatedTypeWitness = v64;
        if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
        {
          break;
        }

        v68 = v94;
        dispatch thunk of Collection.startIndex.getter();
        v69 = dispatch thunk of static Comparable.> infix(_:_:)();
        v92(v68, v64);
        if ((v69 & 1) == 0)
        {
          break;
        }

        v70 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
        result = (*v103)(v66, v67);
        if (__OFADD__(v104, v70))
        {
          goto LABEL_32;
        }

        v104 += v70;
        v42 = v101;
        v115 = v101;
        v46 = v106;
        RangeSet.ranges.getter();
        v61 = v107;
        v71 = RangeSet.Ranges.startIndex.getter();
        v63 = v89;
        result = (v89)(v46, v61);
        if (v71 >= v42)
        {
          goto LABEL_24;
        }
      }

      result = (*v103)(v66, v67);
    }

LABEL_23:
    v64 = AssociatedTypeWitness;
LABEL_24:
    v72 = v104;
    a2 = &v104[v87];
    if (__OFADD__(v87, v104))
    {
      goto LABEL_33;
    }

    v73 = v88;
    v31 = v109;
    AssociatedTypeWitness = v64;
    (*v82)(v88, v109, v64);
    *&v73[v86] = v115;
    v5 = v60;
    if (!v72)
    {
      return (*(v75 + 32))(v76, v88, v84);
    }
  }

  v105 = v44;
  v114 = v42;
  type metadata accessor for PartialRangeFrom<Int>();
  lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>();
  v47 = v81;
  v48 = v107;
  Collection.subscript.getter();
  v104 = *v111;
  (v104)(v46, v48);
  v49 = v100;
  v50 = v98;
  (*v79)(v100, v47, v98);
  v51 = *(v83 + 36);
  MEMORY[0x193AC10F0](v50);
  (*v78)(v47, v50);
  DefaultIndices.startIndex.getter();
  v52 = 0;
  v53 = v91;
  v54 = v80;
  if (*&v49[v51] == v114)
  {
LABEL_11:
    v104 = v52;
    result = (*v77)(v49, v83);
LABEL_22:
    v60 = v5;
    goto LABEL_23;
  }

  v52 = 0;
  while (1)
  {
    v55 = v96;
    Slice.subscript.getter();
    Slice.formIndex(after:)();
    (*v95)(v54, v55, v53);
    if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
    {
      v104 = v52;
      (*v103)(v54, v53);
      result = (*v77)(v100, v83);
      goto LABEL_22;
    }

    result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v57 = __OFADD__(v52, result);
    v52 += result;
    v58 = v107;
    if (v57)
    {
      break;
    }

    v59 = v106;
    RangeSet.ranges.getter();
    v114 = v115;
    dispatch thunk of Collection.index(after:)();
    (v104)(v59, v58);
    (*v103)(v54, v53);
    v49 = v100;
    DefaultIndices.startIndex.getter();
    if (*&v49[v51] == v114)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void type metadata accessor for PartialRangeFrom<Int>()
{
  if (!lazy cache variable for type metadata for PartialRangeFrom<Int>)
  {
    v0 = type metadata accessor for PartialRangeFrom();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PartialRangeFrom<Int>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>)
  {
    type metadata accessor for PartialRangeFrom<Int>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>);
  }

  return result;
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v26[2] = swift_getAssociatedTypeWitness();
  v26[0] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RangeSet.Ranges();
  v26[1] = swift_getWitnessTable();
  v9 = type metadata accessor for Slice();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  v30 = v7;
  v31 = v3;
  v27 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  v16 = type metadata accessor for RemovedElementsCollection.Index();
  swift_getWitnessTable();
  result = static Comparable.> infix(_:_:)();
  v18 = *(v16 + 36);
  if (result)
  {
    v19 = *(a1 + v18);
    a2 = *(a2 + v18);
    if (a2 >= v19)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v19 = *(a2 + v18);
  a2 = *(a1 + v18);
  if (a2 < v19)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_5:
  type metadata accessor for RemovedElementsCollection();
  type metadata accessor for RangeSet();
  v20 = v31;
  RangeSet.ranges.getter();
  v33 = v19;
  v34 = a2;
  Collection<>.subscript.getter();
  v21 = (*(v12 + 8))(v15, v8);
  v32 = 0;
  MEMORY[0x1EEE9AC00](v21);
  v22 = v30;
  v26[-4] = v6;
  v26[-3] = v22;
  v26[-2] = v20;
  v23 = v29;
  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();
  (*(v28 + 8))(v11, v23);
  v24 = v33;
  v25 = v27;
  if (v27 >= 1)
  {
    result = v27 - v33;
    if (!__OFSUB__(v27, v33))
    {
      return result;
    }

    __break(1u);
  }

  result = v25 + v24;
  if (__OFADD__(v25, v24))
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in RemovedElementsCollection<>.RandomAccessAdaptor.distance(from:to:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Range();
  result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  if (__OFADD__(v3, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + result;
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t **a1))()
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
  v2[4] = RemovedElementsCollection<>.RandomAccessAdaptor.subscript.read(v2);
  return protocol witness for Collection.subscript.read in conformance CollectionOfTwo<A>;
}

uint64_t (*RemovedElementsCollection<>.RandomAccessAdaptor.subscript.read(uint64_t *a1))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v3 = *(AssociatedTypeWitness - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  v5 = v4;
  a1[2] = v4;
  type metadata accessor for RemovedElementsCollection();
  RemovedElementsCollection.subscript.getter(v5);
  return CollectionOfTwo.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance RemovedElementsCollection<A><>.RandomAccessAdaptor@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RemovedElementsCollection.Index();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v7 = type metadata accessor for RemovedElementsCollection.Index();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, v7, v9);
  a4(v11, a2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance RemovedElementsCollection<A><>.RandomAccessAdaptor()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t RemovedElementsCollection.baseIndex(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t InsertedPlaceholderCollection.insertionIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t InsertedPlaceholderCollection.insertionIndex.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t InsertedPlaceholderCollection.init(base:placeholder:insertionIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for InsertedPlaceholderCollection();
  v13 = *(v12 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a6 + v13, 1, 1, AssociatedTypeWitness);
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  (*(*(a5 - 8) + 32))(a6 + *(v12 + 52), a2, a5);
  v15 = type metadata accessor for Optional();
  return (*(*(v15 - 8) + 40))(a6 + v13, a3, v15);
}

uint64_t InsertedPlaceholderCollection.placeholderIndices.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v70 = *(a1 + 16);
  v6 = v70;
  v71 = v5;
  v72 = v8;
  v73 = v7;
  v9 = type metadata accessor for InsertedPlaceholderCollection.Index();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  v58 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v59 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v56 = v52 - v13;
  v65 = v7;
  v63 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v62 = v52 - v15;
  v67 = v9;
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v64 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = v52 - v19;
  v66 = v8;
  v61 = v6;
  v20 = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v52 - v23;
  v25 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v52 - v31;
  (*(v22 + 16))(v24, v3 + *(a1 + 56), v21, v30);
  if ((*(v25 + 48))(v24, 1, v20) == 1)
  {
    (*(v22 + 8))(v24, v21);
    swift_getWitnessTable();
    v33 = type metadata accessor for Range();
    return (*(*(v33 - 8) + 56))(v68, 1, 1, v33);
  }

  else
  {
    v54 = v25;
    v35 = *(v25 + 32);
    v60 = v32;
    v35(v32, v24, v20);
    v53 = *(v25 + 16);
    v53(v28, v32, v20);
    v52[1] = *(a1 + 52);
    v36 = v62;
    dispatch thunk of Collection.startIndex.getter();
    InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v28, v36, v69);
    v53(v28, v60, v20);
    dispatch thunk of Collection.endIndex.getter();
    v37 = v64;
    InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v28, v36, v64);
    v38 = v67;
    WitnessTable = swift_getWitnessTable();
    v40 = static Comparable.<= infix(_:_:)();
    result = (*(v54 + 8))(v60, v20);
    if (v40)
    {
      v41 = v55;
      v42 = *(v55 + 32);
      v66 = WitnessTable;
      v43 = v56;
      v42(v56, v69, v38);
      v44 = v58;
      v42(&v43[*(v58 + 48)], v37, v38);
      v45 = v57;
      v46 = v59;
      (*(v57 + 16))(v59, v43, v44);
      v47 = *(v44 + 48);
      v42(v68, v46, v38);
      v48 = *(v41 + 8);
      v48(&v46[v47], v38);
      (*(v45 + 32))(v46, v43, v44);
      v49 = *(v44 + 48);
      v50 = type metadata accessor for Range();
      v51 = v68;
      v42(&v68[*(v50 + 36)], &v46[v49], v38);
      v48(v46, v38);
      return (*(*(v50 - 8) + 56))(v51, 0, 1, v50);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v7 = *(type metadata accessor for InsertedPlaceholderCollection.Index() + 52);
  v8 = swift_getAssociatedTypeWitness();
  return (*(*(v8 - 8) + 32))(a3 + v7, a2, v8);
}

uint64_t static InsertedPlaceholderCollection.Index.< infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for InsertedPlaceholderCollection.Index();
    swift_getAssociatedConformanceWitness();
  }

  return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
}

uint64_t static InsertedPlaceholderCollection.Index.== infix(_:_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for InsertedPlaceholderCollection.Index();
    swift_getAssociatedConformanceWitness();
    v0 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t InsertedPlaceholderCollection.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v4 = &v9 - v3;
  v5 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.startIndex.getter();
  return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v7, v4, a1);
}

uint64_t InsertedPlaceholderCollection.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v42 - v6;
  v7 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v42 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v17 = *(a1 + 40);
  v47 = *(a1 + 24);
  v48 = v17;
  v18 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v46 = &v42 - v19;
  v50 = a1;
  v20 = *(a1 + 56);
  v53 = v5;
  v54 = v4;
  dispatch thunk of Collection.endIndex.getter();
  v21 = v56;
  v22 = AssociatedTypeWitness;
  (*(v56 + 56))(v16, 0, 1, AssociatedTypeWitness);
  v43 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v45 = v11;
  v24 = *(v11 + 16);
  v51 = v2;
  v24(v10, v2 + v20, v7);
  v25 = v7;
  v24(&v10[v23], v16, v7);
  v26 = *(v21 + 48);
  v57 = v10;
  v27 = v22;
  if (v26(v10, 1, v22) == 1)
  {
    v28 = *(v45 + 8);
    v28(v16, v25);
    v29 = v57;
    v30 = v26(&v57[v23], 1, v22) == 1;
    v31 = v29;
    if (!v30)
    {
      goto LABEL_7;
    }

    v28(v29, v25);
    v32 = v49;
LABEL_10:
    v36 = v46;
    dispatch thunk of Collection.endIndex.getter();
    goto LABEL_11;
  }

  v33 = v16;
  v34 = v57;
  v35 = v25;
  v24(v55, v57, v25);
  if (v26(&v34[v23], 1, v27) != 1)
  {
    v37 = v56;
    v38 = &v57[v23];
    v32 = v49;
    (*(v56 + 32))(v49, v38, v27);
    swift_getAssociatedConformanceWitness();
    LODWORD(v43) = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *(v37 + 8);
    v39(v32, v27);
    v40 = *(v45 + 8);
    v40(v33, v35);
    v39(v55, v27);
    v40(v57, v35);
    if ((v43 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  (*(v45 + 8))(v33, v25);
  (*(v56 + 8))(v55, v27);
  v31 = v57;
LABEL_7:
  (*(v42 + 8))(v31, v43);
  v32 = v49;
LABEL_8:
  v36 = v46;
  dispatch thunk of Collection.startIndex.getter();
LABEL_11:
  dispatch thunk of Collection.endIndex.getter();
  return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v36, v52);
}

uint64_t InsertedPlaceholderCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = *(a2 + 40);
  v57 = *(a2 + 24);
  v58 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v48 - v7;
  v8 = *(a2 + 16);
  v59 = *(a2 + 32);
  v60 = v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v48 - v11;
  v12 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v48 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = *(v10 + 16);
  v61 = a1;
  v23(&v48 - v21, a1, v9, v20);
  (*(v10 + 56))(v22, 0, 1, v9);
  v51 = a2;
  v24 = *(a2 + 56);
  v55 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = *(v16 + 16);
  v26(v15, v22, v12);
  v26(&v15[v25], (v64 + v24), v12);
  v56 = v10;
  v27 = *(v10 + 48);
  if (v27(v15, 1, v9) == 1)
  {
    v28 = *(v16 + 8);
    v28(v22, v12);
    v29 = v27(&v15[v25], 1, v9);
    v30 = v59;
    if (v29 == 1)
    {
      v28(v15, v12);
      v31 = v60;
      v33 = v57;
      v32 = v58;
LABEL_8:
      *&v39 = v31;
      *(&v39 + 1) = v33;
      *&v40 = v30;
      *(&v40 + 1) = v32;
      v65[1] = v40;
      v65[0] = v39;
      type metadata accessor for InsertedPlaceholderCollection.Index();
      v41 = v50;
      dispatch thunk of Collection.endIndex.getter();
      v42 = v53;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v52 + 8))(v41, v42);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v26(v63, v15, v12);
  if (v27(&v15[v25], 1, v9) == 1)
  {
    (*(v16 + 8))(v22, v12);
    (*(v56 + 8))(v63, v9);
LABEL_6:
    (*(v54 + 8))(v15, v55);
    goto LABEL_9;
  }

  v34 = v56;
  v35 = &v15[v25];
  v36 = v49;
  (*(v56 + 32))(v49, v35, v9);
  v30 = v59;
  v31 = v60;
  swift_getAssociatedConformanceWitness();
  LODWORD(v55) = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v34 + 8);
  v37(v36, v9);
  v38 = *(v16 + 8);
  v38(v22, v12);
  v37(v63, v9);
  v38(v15, v12);
  v33 = v57;
  v32 = v58;
  if (v55)
  {
    goto LABEL_8;
  }

LABEL_9:
  v43 = dispatch thunk of Collection.subscript.read();
  v45 = v44;
  v46 = swift_getAssociatedTypeWitness();
  (*(*(v46 - 8) + 16))(v62, v45, v46);
  return v43(v65, 0);
}

uint64_t InsertedPlaceholderCollection.index(after:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v6 = *(a2 + 40);
  v81 = *(a2 + 24);
  v82 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = *(a2 + 16);
  v77 = *(a2 + 32);
  v78 = &v65 - v8;
  v85 = v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v65 - v13;
  v14 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v65 - v16;
  v18 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v65 - v23;
  v25 = *(v10 + 16);
  v87 = a1;
  v74 = v25;
  v75 = v10 + 16;
  (v25)(&v65 - v23, a1, v9, v22);
  v26 = v10;
  (*(v10 + 56))(v24, 0, 1, v9);
  v83 = a2;
  v27 = *(a2 + 56);
  v68 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v70 = v18;
  v29 = *(v18 + 16);
  v29(v17, v24, v14);
  v71 = v28;
  v72 = v14;
  v79 = v3;
  v30 = (v3 + v27);
  v31 = v9;
  v32 = v14;
  v33 = v17;
  v29(&v17[v28], v30, v32);
  v86 = v26;
  v34 = *(v26 + 48);
  v35 = v34(v17, 1, v31);
  v76 = v31;
  if (v35 == 1)
  {
    v36 = v31;
    v37 = *(v70 + 8);
    v38 = v24;
    v39 = v72;
    v37(v38, v72);
    v40 = v34(&v17[v71], 1, v36);
    v41 = v82;
    v43 = v77;
    v42 = v78;
    v44 = v85;
    if (v40 == 1)
    {
      v37(v17, v39);
      v45 = v81;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v46 = v70;
  v47 = v72;
  v29(v73, v17, v72);
  v48 = v71;
  if (v34(&v17[v71], 1, v31) == 1)
  {
    (*(v46 + 8))(v24, v47);
    (*(v86 + 8))(v73, v31);
    v42 = v78;
LABEL_6:
    (*(v67 + 8))(v17, v68);
LABEL_10:
    v61 = v84;
    dispatch thunk of Collection.index(after:)();
    v62 = v69;
    v63 = v76;
    v74(v69, v61, v76);
    dispatch thunk of Collection.startIndex.getter();
    (*(v86 + 8))(v61, v63);
    v60 = v62;
    return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v60, v42, v80);
  }

  v49 = v86;
  v50 = v84;
  (*(v86 + 32))(v84, &v17[v48], v31);
  v43 = v77;
  swift_getAssociatedConformanceWitness();
  v51 = v73;
  LODWORD(v71) = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v49 + 8);
  v52(v50, v31);
  v53 = *(v46 + 8);
  v53(v24, v47);
  v52(v51, v31);
  v53(v33, v47);
  v44 = v85;
  v45 = v81;
  v41 = v82;
  v42 = v78;
  if ((v71 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  *&v54 = v44;
  *(&v54 + 1) = v45;
  *&v55 = v43;
  *(&v55 + 1) = v41;
  v89 = v55;
  v88 = v54;
  type metadata accessor for InsertedPlaceholderCollection.Index();
  dispatch thunk of Collection.endIndex.getter();
  v56 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v57 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v65 + 8))(v42, v56);
  if ((v57 & 1) == 0)
  {
    goto LABEL_10;
  }

  v58 = v87;
  dispatch thunk of Collection.index(after:)();
  v59 = v84;
  v74(v84, v58, v76);
  v60 = v59;
  return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v60, v42, v80);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance InsertedPlaceholderCollection<A, B>(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = InsertedPlaceholderCollection.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

uint64_t (*InsertedPlaceholderCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  InsertedPlaceholderCollection.subscript.getter(a2, a3, v8);
  return CountingIndexCollection.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance InsertedPlaceholderCollection<A, B>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for InsertedPlaceholderCollection.Index();
  v2 = type metadata accessor for Optional();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance InsertedPlaceholderCollection<A, B>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v11[0] = *(a2 + 16);
  v11[1] = v4;
  v5 = type metadata accessor for InsertedPlaceholderCollection.Index();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  (*(v6 + 32))(v11 - v8, a1, v5, v7);
  InsertedPlaceholderCollection.index(after:)(v9, a2, a1);
  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance RemovedElementsCollection<A>@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v8 = *(a1 - 8);
  (*(v8 + 16))(a3, v3, a1);
  swift_getWitnessTable();
  type metadata accessor for IndexingIterator();
  a2(a1);
  v6 = *(v8 + 8);

  return v6(v3, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance InsertedPlaceholderCollection<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance InsertedPlaceholderCollection<A, B>()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t InsertedPlaceholderCollection<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a5;
  v80 = a4;
  v8 = *(a2 + 24);
  v105 = *(a4 + 8);
  v107 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v96 = &v78[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v78[-v11];
  v94 = a3;
  v12 = *(a3 + 8);
  v110 = *(a2 + 16);
  v111 = v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v78[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v78[-v17];
  v18 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v97 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v95 = &v78[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v78[-v22];
  v24 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v83 = &v78[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v78[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v104 = &v78[-v30];
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v78[-v33];
  v35 = v14[2];
  v106 = a1;
  v98 = v35;
  v99 = v14 + 2;
  (v35)(&v78[-v33], a1, v13, v32);
  v36 = v14[7];
  v88 = v14 + 7;
  v87 = v36;
  v36(v34, 0, 1, v13);
  v102 = a2;
  v37 = *(a2 + 56);
  v109 = TupleTypeMetadata2;
  v38 = *(TupleTypeMetadata2 + 48);
  v93 = v24;
  v39 = *(v24 + 16);
  v39(v23, v34, v18);
  v89 = v37;
  v39(&v23[v38], v112 + v37, v18);
  v101 = v14;
  v40 = v14[6];
  v41 = v40(v23, 1, v13);
  v92 = v40;
  v90 = v39;
  v86 = v24 + 16;
  if (v41 == 1)
  {
    v42 = *(v24 + 8);
    v42(v34, v18);
    v43 = v40(&v23[v38], 1, v13);
    v91 = v42;
    if (v43 == 1)
    {
      v44 = v18;
      v42(v23, v18);
      v45 = v105;
      v46 = v110;
      v47 = v84;
      goto LABEL_9;
    }

    v44 = v18;
LABEL_7:
    (*(v97 + 8))(v23, v109);
    goto LABEL_11;
  }

  v39(v104, v23, v18);
  if (v40(&v23[v38], 1, v13) == 1)
  {
    v44 = v18;
    v91 = *(v24 + 8);
    v91(v34, v18);
    (v101[1])(v104, v13);
    goto LABEL_7;
  }

  v48 = v85;
  (v101[4])(v85, &v23[v38], v13);
  v46 = v110;
  swift_getAssociatedConformanceWitness();
  v79 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = v101[1];
  v49(v48, v13);
  v50 = *(v24 + 8);
  v50(v34, v18);
  v49(v104, v13);
  v44 = v18;
  v91 = v50;
  v50(v23, v18);
  v45 = v105;
  v47 = v84;
  if ((v79 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v113 = v46;
  v114 = v107;
  v115 = v111;
  v116 = v45;
  type metadata accessor for InsertedPlaceholderCollection.Index();
  dispatch thunk of Collection.startIndex.getter();
  v51 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v52 = dispatch thunk of static Comparable.> infix(_:_:)();
  (*(v81 + 8))(v47, v51);
  if ((v52 & 1) == 0)
  {
LABEL_11:
    v58 = v108;
    v59 = v112;
    dispatch thunk of BidirectionalCollection.index(before:)();
    v60 = v103;
    v98(v103, v58, v13);
    v87(v60, 0, 1, v13);
    v61 = *(v109 + 48);
    v62 = v95;
    v63 = v90;
    v90(v95, v60, v44);
    v106 = v44;
    v63(&v62[v61], v59 + v89, v44);
    v64 = v92;
    if (v92(v62, 1, v13) == 1)
    {
      v65 = v91;
      v91(v60, v106);
      if (v64(&v62[v61], 1, v13) == 1)
      {
        v65(v62, v106);
LABEL_19:
        v67 = v96;
        dispatch thunk of Collection.endIndex.getter();
        goto LABEL_20;
      }
    }

    else
    {
      v66 = v83;
      v63(v83, v62, v106);
      if (v64(&v62[v61], 1, v13) != 1)
      {
        v68 = v101;
        v69 = &v62[v61];
        v70 = v62;
        v71 = v85;
        (v101[4])(v85, v69, v13);
        swift_getAssociatedConformanceWitness();
        v72 = dispatch thunk of static Equatable.== infix(_:_:)();
        v73 = v66;
        v74 = v68[1];
        v74(v71, v13);
        v75 = v106;
        v76 = v91;
        v91(v103, v106);
        v74(v73, v13);
        v76(v70, v75);
        if (v72)
        {
          goto LABEL_19;
        }

LABEL_17:
        v67 = v96;
        dispatch thunk of Collection.startIndex.getter();
LABEL_20:
        v55 = v100;
        v56 = v108;
        v57 = v67;
        return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v56, v57, v55);
      }

      v91(v103, v106);
      (v101[1])(v66, v13);
    }

    (*(v97 + 8))(v62, v109);
    goto LABEL_17;
  }

  v53 = v106;
  dispatch thunk of BidirectionalCollection.index(before:)();
  v54 = v85;
  v98(v85, v53, v13);
  v55 = v100;
  v56 = v54;
  v57 = v47;
  return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v56, v57, v55);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> InsertedPlaceholderCollection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 16);
  v5 = *(a3 - 8);
  v7 = *(v5 + 8);
  v8 = *(v6 + 8);
  v15 = *(a2 + 16);
  v16 = v7;
  v17 = v8;
  v9 = type metadata accessor for InsertedPlaceholderCollection.Index();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v10 + 32))(&v15 - v12, a1, v9, v11);
  InsertedPlaceholderCollection<>.index(before:)(v13, a2, v5, v6, a1);
  return (*(v10 + 8))(v13, v9);
}

uint64_t InsertedPlaceholderCollection<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v120 = a1;
  v121 = a2;
  v119 = a6;
  v114 = a5;
  v8 = *(*(a5 + 8) + 8);
  v117 = *(a3 + 24);
  v118 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v112 = *(AssociatedTypeWitness - 8);
  v113 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v110 = (&v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v115 = a4;
  v116 = &v104 - v12;
  v13 = *(*(a4 + 8) + 8);
  v122 = *(a3 + 16);
  v123 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v104 - v17;
  v19 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v104 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v104 - v28;
  (*(v16 + 16))(v18, v124 + *(a3 + 56), v15, v27);
  if ((*(v19 + 6))(v18, 1, v14) != 1)
  {
    v108 = a3;
    v109 = v25;
    v111 = v22;
    v34 = v122;
    v35 = v123;
    v36 = *(v19 + 4);
    v36(v29, v18, v14);
    v37 = v121;
    if (v121 >= 1)
    {
      v106 = v36;
      v38 = v35;
      swift_getAssociatedConformanceWitness();
      v39 = v120;
      if (dispatch thunk of static Comparable.> infix(_:_:)())
      {
        v40 = v29;
        v41 = v109;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v42 = v111;
        (*(v19 + 2))(v111, v41, v14);
        v43 = v116;
        dispatch thunk of Collection.startIndex.getter();
        v44 = *(v19 + 1);
        v44(v41, v14);
        v44(v40, v14);
        v31 = v119;
        v32 = v42;
        v33 = v43;
        return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
      }

      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = v116;
      if (v48)
      {
        v107 = v29;
        v105 = v14;
        v110 = v19;
        v125 = v34;
        v126 = v117;
        v127 = v38;
        v128 = v118;
        type metadata accessor for InsertedPlaceholderCollection.Index();
        dispatch thunk of Collection.endIndex.getter();
        v50 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
        result = (*(v112 + 8))(v49, v113);
        if (v50 >= v37)
        {
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v68 = v110;
          v69 = v105;
          v110[1](v107, v105);
          v70 = v109;
          (v68[2])(v109, v39, v69);
          v31 = v119;
          v32 = v70;
          v33 = v49;
          return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
        }

        if (!__OFSUB__(v37, v50))
        {
          v51 = v49;
          v52 = v109;
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v53 = v110;
          v54 = v105;
          (v110[2])(v111, v52, v105);
          dispatch thunk of Collection.startIndex.getter();
          v55 = v53[1];
          v55(v52, v54);
          v55(v107, v54);
          v31 = v119;
          v32 = v111;
          v33 = v51;
          return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
        }

        __break(1u);
        goto LABEL_41;
      }

      result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
      v56 = v109;
      v57 = v29;
      v58 = v111;
      if (result > v37)
      {
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        (*(v19 + 2))(v58, v56, v14);
        v59 = v116;
        dispatch thunk of Collection.startIndex.getter();
        v60 = *(v19 + 1);
        v60(v56, v14);
        v60(v57, v14);
        v31 = v119;
        v32 = v58;
        v33 = v59;
        return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
      }

      v107 = v57;
      v105 = v14;
      v71 = v37 - result;
      if (__OFSUB__(v37, result))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (dispatch thunk of Collection.count.getter() < v71)
      {
        result = dispatch thunk of Collection.count.getter();
        if (!__OFSUB__(v71, result))
        {
          v72 = v109;
          v73 = v107;
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v74 = v105;
          (*(v19 + 2))(v111, v72, v105);
          v75 = v116;
          dispatch thunk of Collection.startIndex.getter();
          v76 = *(v19 + 1);
          v76(v72, v74);
          v76(v73, v74);
          v31 = v119;
          v32 = v111;
          v33 = v75;
          return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
        }

        goto LABEL_42;
      }

      v84 = v116;
      Collection.index(atOffset:)();
      v86 = v109;
      v106(v109, v107, v105);
      v31 = v119;
      v32 = v86;
LABEL_28:
      v33 = v84;
      return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
    }

    v107 = v29;
    v45 = v111;
    if ((v121 & 0x8000000000000000) == 0)
    {
      (*(v19 + 1))(v107, v14);
      v125 = v34;
      v126 = v117;
      v127 = v35;
      v128 = v118;
      v46 = type metadata accessor for InsertedPlaceholderCollection.Index();
      return (*(*(v46 - 8) + 16))(v119, v120, v46);
    }

    v106 = v36;
    swift_getAssociatedConformanceWitness();
    v61 = v120;
    v62 = dispatch thunk of static Comparable.< infix(_:_:)();
    v63 = v119;
    if (v62)
    {
      v64 = v109;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      (*(v19 + 2))(v45, v64, v14);
      v65 = v116;
      v66 = v45;
      dispatch thunk of Collection.startIndex.getter();
      v67 = *(v19 + 1);
      v67(v64, v14);
      v67(v107, v14);
      v31 = v63;
    }

    else
    {
      v77 = v107;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v105 = v14;
        v110 = v19;
        v125 = v34;
        v126 = v117;
        v127 = v123;
        v128 = v118;
        type metadata accessor for InsertedPlaceholderCollection.Index();
        v78 = v116;
        dispatch thunk of Collection.startIndex.getter();
        v79 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
        result = (*(v112 + 8))(v78, v113);
        if (v79 <= v121)
        {
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v89 = v110;
          v90 = v105;
          v110[1](v107, v105);
          v91 = v109;
          (v89[2])(v109, v61, v90);
          v31 = v119;
          v32 = v91;
          v33 = v78;
          return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
        }

        if (__OFSUB__(v121, v79))
        {
          goto LABEL_43;
        }

        v80 = v109;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v81 = v110;
        v82 = v111;
        v83 = v105;
        (v110[2])(v111, v80, v105);
        v84 = v116;
        dispatch thunk of Collection.startIndex.getter();
        v85 = v81[1];
        v85(v80, v83);
        v85(v107, v83);
        v31 = v119;
        v32 = v82;
        goto LABEL_28;
      }

      result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
      if (result >= v121)
      {
        v92 = v121 - result;
        if (!__OFSUB__(v121, result))
        {
          result = dispatch thunk of Collection.count.getter();
          if (!__OFSUB__(0, result))
          {
            v105 = v14;
            if (v92 >= -result)
            {
              v101 = v110;
              dispatch thunk of Collection.endIndex.getter();
              v102 = v116;
              dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
              (*(v112 + 8))(v101, v113);
              v103 = v109;
              v106(v109, v107, v105);
              v31 = v119;
              v32 = v103;
              v33 = v102;
              return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
            }

            result = dispatch thunk of Collection.count.getter();
            if (!__OFADD__(v92, result))
            {
              v93 = v109;
              v94 = v107;
              dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
              v95 = v19;
              v96 = *(v19 + 2);
              v97 = v111;
              v98 = v105;
              v96(v111, v93, v105);
              v99 = v116;
              dispatch thunk of Collection.startIndex.getter();
              v100 = *(v95 + 1);
              v100(v93, v98);
              v100(v94, v98);
              v31 = v119;
              v32 = v97;
              v33 = v99;
              return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
            }

LABEL_46:
            __break(1u);
            return result;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v87 = v109;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      (*(v19 + 2))(v45, v87, v14);
      v65 = v116;
      v66 = v45;
      dispatch thunk of Collection.startIndex.getter();
      v88 = *(v19 + 1);
      v88(v87, v14);
      v88(v77, v14);
      v31 = v119;
    }

    v32 = v66;
    v33 = v65;
    return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
  }

  (*(v16 + 8))(v18, v15);
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  (*(v19 + 2))(v22, v25, v14);
  v30 = v116;
  dispatch thunk of Collection.startIndex.getter();
  (*(v19 + 1))(v25, v14);
  v31 = v119;
  v32 = v22;
  v33 = v30;
  return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v32, v33, v31);
}

uint64_t InsertedPlaceholderCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v8 = *(a3 + 24);
  v54 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v48 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v44 - v10;
  v52 = a4;
  v11 = *(*(a4 + 8) + 8);
  v12 = *(a3 + 16);
  v13 = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v53 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v44 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 8);
  v57 = a1;
  v58 = v13;
  v49 = v20;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v59 = v12;
    v60 = v8;
    v61 = v11;
    v62 = v54;
    type metadata accessor for InsertedPlaceholderCollection.Index();
    return dispatch thunk of RandomAccessCollection.distance(from:to:)();
  }

  v45 = v11;
  v22 = v54;
  v23 = v56;
  v52 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v53 + 16))(v16, v23 + *(a3 + 56), v14);
  if ((*(v17 + 48))(v16, 1, v58) == 1)
  {
    (*(v53 + 8))(v16, v14);
    return v52;
  }

  v24 = v51;
  (*(v17 + 32))(v51, v16, v58);
  v44 = v12;
  v53 = v8;
  v25 = v22;
  if (static InsertedPlaceholderCollection.Index.< infix(_:_:)())
  {
    if (dispatch thunk of static Comparable.> infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      goto LABEL_14;
    }

    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_21;
    }

    v59 = v44;
    v60 = v53;
    v61 = v45;
    v62 = v22;
    type metadata accessor for InsertedPlaceholderCollection.Index();
    v25 = v46;
    dispatch thunk of Collection.endIndex.getter();
    v26 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    (*(v47 + 8))(v25, v48);
    v27 = *(v17 + 8);
    v17 += 8;
    v27(v24, v58);
    result = v52 + v26;
    if (!__OFADD__(v52, v26))
    {
      return result;
    }

    __break(1u);
  }

  if (dispatch thunk of static Comparable.> infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
  {
LABEL_14:
    (*(v17 + 8))(v24, v58);
    return v52;
  }

  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v28 = v46;
  v29 = v53;
  dispatch thunk of Collection.endIndex.getter();
  v59 = v44;
  v60 = v29;
  v61 = v45;
  v62 = v25;
  type metadata accessor for InsertedPlaceholderCollection.Index();
  v30 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v47 + 8))(v28, v48);
  v31 = *(v17 + 8);
  v17 += 8;
  v31(v24, v58);
  result = v52 + v30;
  if (!__OFADD__(v52, v30))
  {
    return result;
  }

  __break(1u);
LABEL_21:
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = v45;
  if ((v32 & 1) == 0)
  {
    goto LABEL_29;
  }

  v34 = v46;
  v35 = v53;
  dispatch thunk of Collection.startIndex.getter();
  v59 = v44;
  v60 = v35;
  v61 = v33;
  v62 = v25;
  type metadata accessor for InsertedPlaceholderCollection.Index();
  v36 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v47 + 8))(v34, v48);
  v37 = *(v17 + 8);
  v17 += 8;
  v37(v24, v58);
  result = v52 + v36;
  if (!__OFADD__(v52, v36))
  {
    return result;
  }

  __break(1u);
LABEL_25:
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_32;
  }

  v59 = v44;
  v60 = v53;
  v61 = v45;
  v62 = v25;
  type metadata accessor for InsertedPlaceholderCollection.Index();
  v38 = v46;
  dispatch thunk of Collection.startIndex.getter();
  v39 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v47 + 8))(v38, v48);
  v40 = *(v17 + 8);
  v17 += 8;
  v40(v24, v58);
  result = v52 + v39;
  if (!__OFADD__(v52, v39))
  {
    return result;
  }

  __break(1u);
LABEL_29:
  v41 = dispatch thunk of Collection.count.getter();
  v42 = *(v17 + 8);
  v17 += 8;
  v42(v24, v58);
  result = v52 + v41;
  if (!__OFADD__(v52, v41))
  {
    return result;
  }

  __break(1u);
LABEL_32:
  v43 = dispatch thunk of Collection.count.getter();
  (*(v17 + 8))(v24, v58);
  result = v52 - v43;
  if (__OFSUB__(v52, v43))
  {
    __break(1u);
  }

  return result;
}

uint64_t InsertedPlaceholderCollection.source(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v5 = *(a2 + 24);
  v63 = *(a2 + 40);
  v61 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v57 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v49 - v7;
  v8 = *(a2 + 16);
  v60 = *(a2 + 32);
  *&v66 = v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v49 - v11;
  v12 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v49 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  *&v65 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - v21;
  v23 = *(v10 + 16);
  v62 = a1;
  v58 = v23;
  v59 = v10 + 16;
  (v23)(&v49 - v21, a1, v9, v20);
  (*(v10 + 56))(v22, 0, 1, v9);
  v51 = a2;
  v24 = *(a2 + 56);
  v54 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = *(v16 + 16);
  v26(v15, v22, v12);
  v26(&v15[v25], (v67 + v24), v12);
  v55 = v10;
  v27 = *(v10 + 48);
  if (v27(v15, 1, v9) != 1)
  {
    v26(v65, v15, v12);
    if (v27(&v15[v25], 1, v9) != 1)
    {
      v35 = v55;
      v36 = v50;
      (*(v55 + 32))(v50, &v15[v25], v9);
      v34 = v60;
      swift_getAssociatedConformanceWitness();
      LODWORD(v54) = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v35 + 8);
      v38 = v36;
      v30 = v66;
      v37(v38, v9);
      v39 = *(v16 + 8);
      v39(v22, v12);
      v37(v65, v9);
      v39(v15, v12);
      v32 = v62;
      v31 = v63;
      v33 = v61;
      if ((v54 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    (*(v16 + 8))(v22, v12);
    (*(v55 + 8))(v65, v9);
    v30 = v66;
LABEL_6:
    (*(v53 + 8))(v15, v54);
    v32 = v62;
    v31 = v63;
    v34 = v60;
    v33 = v61;
    goto LABEL_9;
  }

  v28 = *(v16 + 8);
  v28(v22, v12);
  v29 = v27(&v15[v25], 1, v9);
  v30 = v66;
  if (v29 != 1)
  {
    goto LABEL_6;
  }

  v28(v15, v12);
  v32 = v62;
  v31 = v63;
  v34 = v60;
  v33 = v61;
LABEL_8:
  *&v40 = v30;
  *(&v40 + 1) = v33;
  *&v41 = v34;
  *(&v41 + 1) = v31;
  v65 = v41;
  v66 = v40;
  v69 = v41;
  v68 = v40;
  v42 = *(type metadata accessor for InsertedPlaceholderCollection.Index() + 52);
  v43 = v52;
  dispatch thunk of Collection.endIndex.getter();
  v44 = v57;
  swift_getAssociatedConformanceWitness();
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v56 + 8))(v43, v44);
  if ((v45 & 1) == 0)
  {
    (*(v56 + 16))(v64, v32 + v42, v57);
    v69 = v65;
    v68 = v66;
    type metadata accessor for InsertedPlaceholderCollection.Source();
    return swift_storeEnumTagMultiPayload();
  }

LABEL_9:
  v58(v64, v32, v9);
  *&v46 = v30;
  *(&v46 + 1) = v33;
  *&v47 = v34;
  *(&v47 + 1) = v31;
  v69 = v47;
  v68 = v46;
  type metadata accessor for InsertedPlaceholderCollection.Source();
  return swift_storeEnumTagMultiPayload();
}

uint64_t associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> RemovedElementsCollection<A>()
{
  return associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> RemovedElementsCollection<A>();
}

{
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> InsertedPlaceholderCollection<A, B>()
{
  return associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> InsertedPlaceholderCollection<A, B>();
}

{
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for RemovedElementsCollection()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = type metadata accessor for RangeSet();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RemovedElementsCollection.Index();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for RemovedElementsCollection(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v18 = *a2;
    *v3 = *a2;
    v3 = (v18 + ((v4 + 16) & ~v4));
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1, a2, *(a3 + 16));
    v7 = *(a3 + 36);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v9 = type metadata accessor for RangeSet();
    (*(*(v9 - 8) + 16))(&v3[v7], &a2[v7], v9);
    v10 = *(a3 + 40);
    v11 = &v3[v10];
    v12 = &a2[v10];
    v13 = *(*(AssociatedTypeWitness - 8) + 16);
    v13(&v3[v10], &a2[v10], AssociatedTypeWitness);
    v14 = type metadata accessor for RemovedElementsCollection.Index();
    *&v11[*(v14 + 36)] = *&v12[*(v14 + 36)];
    v15 = *(a3 + 44);
    v16 = &v3[v15];
    v17 = &a2[v15];
    v13(&v3[v15], v17, AssociatedTypeWitness);
    *&v16[*(v14 + 36)] = *&v17[*(v14 + 36)];
  }

  return v3;
}

uint64_t destroy for RemovedElementsCollection(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))(a1, *(a2 + 16));
  v4 = *(a2 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for RangeSet();
  (*(*(v6 - 8) + 8))(a1 + v4, v6);
  v9 = *(*(AssociatedTypeWitness - 8) + 8);
  v9(a1 + *(a2 + 40), AssociatedTypeWitness);
  v7 = a1 + *(a2 + 44);

  return (v9)(v7, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for RemovedElementsCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 16))(a1, a2, *(a3 + 16));
  v6 = *(a3 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RangeSet();
  (*(*(v8 - 8) + 16))(a1 + v6, a2 + v6, v8);
  v9 = *(a3 + 40);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(*(AssociatedTypeWitness - 8) + 16);
  v12(a1 + v9, a2 + v9, AssociatedTypeWitness);
  v13 = type metadata accessor for RemovedElementsCollection.Index();
  *(v10 + *(v13 + 36)) = *(v11 + *(v13 + 36));
  v14 = *(a3 + 44);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v12(a1 + v14, v16, AssociatedTypeWitness);
  *(v15 + *(v13 + 36)) = *(v16 + *(v13 + 36));
  return a1;
}

uint64_t assignWithCopy for RemovedElementsCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 24))(a1, a2, *(a3 + 16));
  v6 = *(a3 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RangeSet();
  (*(*(v8 - 8) + 24))(a1 + v6, a2 + v6, v8);
  v9 = *(a3 + 40);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(*(AssociatedTypeWitness - 8) + 24);
  v12(a1 + v9, a2 + v9, AssociatedTypeWitness);
  v13 = type metadata accessor for RemovedElementsCollection.Index();
  *(v10 + *(v13 + 36)) = *(v11 + *(v13 + 36));
  v14 = *(a3 + 44);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v12(a1 + v14, v16, AssociatedTypeWitness);
  *(v15 + *(v13 + 36)) = *(v16 + *(v13 + 36));
  return a1;
}

uint64_t initializeWithTake for RemovedElementsCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 32))(a1, a2, *(a3 + 16));
  v6 = *(a3 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RangeSet();
  (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
  v9 = *(a3 + 40);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(*(AssociatedTypeWitness - 8) + 32);
  v12(a1 + v9, a2 + v9, AssociatedTypeWitness);
  v13 = type metadata accessor for RemovedElementsCollection.Index();
  *(v10 + *(v13 + 36)) = *(v11 + *(v13 + 36));
  v14 = *(a3 + 44);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v12(a1 + v14, v16, AssociatedTypeWitness);
  *(v15 + *(v13 + 36)) = *(v16 + *(v13 + 36));
  return a1;
}

uint64_t assignWithTake for RemovedElementsCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 40))(a1, a2, *(a3 + 16));
  v6 = *(a3 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RangeSet();
  (*(*(v8 - 8) + 40))(a1 + v6, a2 + v6, v8);
  v9 = *(a3 + 40);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(*(AssociatedTypeWitness - 8) + 40);
  v12(a1 + v9, a2 + v9, AssociatedTypeWitness);
  v13 = type metadata accessor for RemovedElementsCollection.Index();
  *(v10 + *(v13 + 36)) = *(v11 + *(v13 + 36));
  v14 = *(a3 + 44);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v12(a1 + v14, v16, AssociatedTypeWitness);
  *(v15 + *(v13 + 36)) = *(v16 + *(v13 + 36));
  return a1;
}

uint64_t type metadata completion function for RemovedElementsCollection.Index()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RemovedElementsCollection.Index(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if ((v7 & 0x1000F8) != 0 || ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for RemovedElementsCollection.Index(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for RemovedElementsCollection.Index(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for RemovedElementsCollection.Index(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for RemovedElementsCollection.Index(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for RemovedElementsCollection.Index(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RemovedElementsCollection.Index(_DWORD *a1, unsigned int a2)
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
LABEL_25:
    v15 = *(v5 + 48);

    return v15(a1);
  }

  v7 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a2 - v6 + 1;
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

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v7);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v7);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v6)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v6 + (v8 | v13) + 1;
}

void storeEnumTagSinglePayload for RemovedElementsCollection.Index(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v11 = 0;
    v12 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (((*(v6 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = a3 - v7 + 1;
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

    v12 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(a1 + v8) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_30;
        }

        *(a1 + v8) = 0;
      }

      else if (v11)
      {
        *(a1 + v8) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return;
      }

LABEL_30:
      v15 = *(v6 + 56);

      v15(a1, a2);
      return;
    }
  }

  if (((*(v6 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v6 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v7 + a2;
    bzero(a1, v8);
    *a1 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(a1 + v8) = v13;
    }

    else
    {
      *(a1 + v8) = v13;
    }
  }

  else if (v11)
  {
    *(a1 + v8) = v13;
  }
}

uint64_t type metadata completion function for RemovedElementsCollection<>.RandomAccessAdaptor()
{
  result = type metadata accessor for RemovedElementsCollection();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for RemovedElementsCollection<>.RandomAccessAdaptor(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for RemovedElementsCollection();
  v7 = *(*(v6 - 8) + 80);
  if ((v7 & 0x20000) != 0)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + ((v7 + 16) & ~v7));
  }

  else
  {
    v8 = v6;
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    v9 = v8[9];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v11 = type metadata accessor for RangeSet();
    (*(*(v11 - 8) + 16))(&a1[v9], &a2[v9], v11);
    v12 = v8[10];
    v13 = &a1[v12];
    v14 = &a2[v12];
    v15 = *(*(AssociatedTypeWitness - 8) + 16);
    v15(&a1[v12], &a2[v12], AssociatedTypeWitness);
    v16 = type metadata accessor for RemovedElementsCollection.Index();
    *&v13[*(v16 + 36)] = *&v14[*(v16 + 36)];
    v17 = v8[11];
    v18 = &a1[v17];
    v19 = &a2[v17];
    v15(&a1[v17], v19, AssociatedTypeWitness);
    *&v18[*(v16 + 36)] = *&v19[*(v16 + 36)];
  }

  return a1;
}

uint64_t destroy for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))(a1, *(a2 + 16));
  v3 = type metadata accessor for RemovedElementsCollection();
  v4 = v3[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for RangeSet();
  (*(*(v6 - 8) + 8))(a1 + v4, v6);
  v9 = *(*(AssociatedTypeWitness - 8) + 8);
  v9(a1 + v3[10], AssociatedTypeWitness);
  v7 = a1 + v3[11];

  return (v9)(v7, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 16))(a1, a2, *(a3 + 16));
  v5 = type metadata accessor for RemovedElementsCollection();
  v6 = v5[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RangeSet();
  (*(*(v8 - 8) + 16))(a1 + v6, a2 + v6, v8);
  v9 = v5[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(*(AssociatedTypeWitness - 8) + 16);
  v12(a1 + v9, a2 + v9, AssociatedTypeWitness);
  v13 = type metadata accessor for RemovedElementsCollection.Index();
  *(v10 + *(v13 + 36)) = *(v11 + *(v13 + 36));
  v14 = v5[11];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v12(a1 + v14, v16, AssociatedTypeWitness);
  *(v15 + *(v13 + 36)) = *(v16 + *(v13 + 36));
  return a1;
}

uint64_t assignWithCopy for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 24))(a1, a2, *(a3 + 16));
  v5 = type metadata accessor for RemovedElementsCollection();
  v6 = v5[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RangeSet();
  (*(*(v8 - 8) + 24))(a1 + v6, a2 + v6, v8);
  v9 = v5[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(*(AssociatedTypeWitness - 8) + 24);
  v12(a1 + v9, a2 + v9, AssociatedTypeWitness);
  v13 = type metadata accessor for RemovedElementsCollection.Index();
  *(v10 + *(v13 + 36)) = *(v11 + *(v13 + 36));
  v14 = v5[11];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v12(a1 + v14, v16, AssociatedTypeWitness);
  *(v15 + *(v13 + 36)) = *(v16 + *(v13 + 36));
  return a1;
}

uint64_t initializeWithTake for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 32))(a1, a2, *(a3 + 16));
  v5 = type metadata accessor for RemovedElementsCollection();
  v6 = v5[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RangeSet();
  (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
  v9 = v5[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(*(AssociatedTypeWitness - 8) + 32);
  v12(a1 + v9, a2 + v9, AssociatedTypeWitness);
  v13 = type metadata accessor for RemovedElementsCollection.Index();
  *(v10 + *(v13 + 36)) = *(v11 + *(v13 + 36));
  v14 = v5[11];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v12(a1 + v14, v16, AssociatedTypeWitness);
  *(v15 + *(v13 + 36)) = *(v16 + *(v13 + 36));
  return a1;
}

uint64_t assignWithTake for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 40))(a1, a2, *(a3 + 16));
  v5 = type metadata accessor for RemovedElementsCollection();
  v6 = v5[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for RangeSet();
  (*(*(v8 - 8) + 40))(a1 + v6, a2 + v6, v8);
  v9 = v5[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(*(AssociatedTypeWitness - 8) + 40);
  v12(a1 + v9, a2 + v9, AssociatedTypeWitness);
  v13 = type metadata accessor for RemovedElementsCollection.Index();
  *(v10 + *(v13 + 36)) = *(v11 + *(v13 + 36));
  v14 = v5[11];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v12(a1 + v14, v16, AssociatedTypeWitness);
  *(v15 + *(v13 + 36)) = *(v16 + *(v13 + 36));
  return a1;
}

uint64_t type metadata completion function for InsertedPlaceholderCollection()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for InsertedPlaceholderCollection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v27 = *(a3 + 24);
  v6 = *(v27 - 8);
  v7 = *(v6 + 80);
  v8 = *(v5 + 64) + v7;
  v9 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  v12 = v9 + v11;
  if (*(v10 + 84))
  {
    v13 = *(v10 + 64);
  }

  else
  {
    v13 = *(v10 + 64) + 1;
  }

  v14 = (v7 | *(v5 + 80) | *(v10 + 80));
  if (v14 <= 7 && v13 + ((v12 + (v8 & ~v7)) & ~v11) <= 0x18 && ((v7 | *(v5 + 80) | *(v10 + 80)) & 0x100000) == 0)
  {
    __n = v13;
    v19 = ~v7;
    v20 = ~v11;
    v18 = a1;
    (*(v5 + 16))(a1, a2, v4);
    v21 = (a1 + v8) & v19;
    v22 = (a2 + v8) & v19;
    (*(v6 + 16))(v21, v22, v27);
    v23 = v21 + v12;
    v24 = v22 + v12;
    if ((*(v10 + 48))(v24 & v20, 1, AssociatedTypeWitness))
    {
      memcpy((v23 & v20), (v24 & v20), __n);
    }

    else
    {
      (*(v10 + 16))(v23 & v20, v24 & v20, AssociatedTypeWitness);
      (*(v10 + 56))(v23 & v20, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    v17 = *a2;
    *a1 = *a2;
    v18 = (v17 + ((v14 + 16) & ~v14));
  }

  return v18;
}

uint64_t destroy for InsertedPlaceholderCollection(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)(a1, *(a2 + 16));
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 24) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v13 = v8 + v9 + v12;
  v16 = v11;
  result = (*(v11 + 48))(v13 & ~v12, 1, AssociatedTypeWitness);
  if (!result)
  {
    v15 = *(v16 + 8);

    return v15(v13 & ~v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t initializeWithCopy for InsertedPlaceholderCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)(a1, a2, *(a3 + 16));
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16 + v11;
  v18 = v13 + v16 + v12;
  if ((*(v15 + 48))(v18 & ~v16, 1, AssociatedTypeWitness))
  {
    if (*(v15 + 84))
    {
      v19 = *(v15 + 64);
    }

    else
    {
      v19 = *(v15 + 64) + 1;
    }

    memcpy((v17 & ~v16), (v18 & ~v16), v19);
  }

  else
  {
    (*(v15 + 16))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
    (*(v15 + 56))(v17 & ~v16, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t assignWithCopy for InsertedPlaceholderCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)(a1, a2, *(a3 + 16));
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16 + v11;
  v18 = v13 + v16 + v12;
  v19 = *(v15 + 48);
  LODWORD(v12) = v19(v17 & ~v16, 1, AssociatedTypeWitness);
  v20 = v19(v18 & ~v16, 1, AssociatedTypeWitness);
  if (v12)
  {
    if (!v20)
    {
      (*(v15 + 16))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
      (*(v15 + 56))(v17 & ~v16, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v21 = *(v15 + 84);
    v22 = *(v15 + 64);
  }

  else
  {
    if (!v20)
    {
      (*(v15 + 24))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
      return a1;
    }

    v24 = *(v15 + 8);
    v23 = v15 + 8;
    v24(v17 & ~v16, AssociatedTypeWitness);
    v21 = *(v23 + 76);
    v22 = *(v23 + 56);
  }

  if (v21)
  {
    v25 = v22;
  }

  else
  {
    v25 = v22 + 1;
  }

  memcpy((v17 & ~v16), (v18 & ~v16), v25);
  return a1;
}

uint64_t initializeWithTake for InsertedPlaceholderCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)(a1, a2, *(a3 + 16));
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(v8 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16 + v11;
  v18 = v13 + v16 + v12;
  if ((*(v15 + 48))(v18 & ~v16, 1, AssociatedTypeWitness))
  {
    if (*(v15 + 84))
    {
      v19 = *(v15 + 64);
    }

    else
    {
      v19 = *(v15 + 64) + 1;
    }

    memcpy((v17 & ~v16), (v18 & ~v16), v19);
  }

  else
  {
    (*(v15 + 32))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
    (*(v15 + 56))(v17 & ~v16, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t assignWithTake for InsertedPlaceholderCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)(a1, a2, *(a3 + 16));
  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16 + v11;
  v18 = v13 + v16 + v12;
  v19 = *(v15 + 48);
  LODWORD(v12) = v19(v17 & ~v16, 1, AssociatedTypeWitness);
  v20 = v19(v18 & ~v16, 1, AssociatedTypeWitness);
  if (v12)
  {
    if (!v20)
    {
      (*(v15 + 32))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
      (*(v15 + 56))(v17 & ~v16, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v21 = *(v15 + 84);
    v22 = *(v15 + 64);
  }

  else
  {
    if (!v20)
    {
      (*(v15 + 40))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
      return a1;
    }

    v24 = *(v15 + 8);
    v23 = v15 + 8;
    v24(v17 & ~v16, AssociatedTypeWitness);
    v21 = *(v23 + 76);
    v22 = *(v23 + 56);
  }

  if (v21)
  {
    v25 = v22;
  }

  else
  {
    v25 = v22 + 1;
  }

  memcpy((v17 & ~v16), (v18 & ~v16), v25);
  return a1;
}

uint64_t getEnumTagSinglePayload for InsertedPlaceholderCollection(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v34 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v34 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v13)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + v15;
  if (a2 > v14)
  {
    v21 = v19 + ((v16 + v17 + (v20 & ~v15)) & ~v17);
    v22 = 8 * v21;
    if (v21 <= 3)
    {
      v24 = ((a2 - v14 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v24))
      {
        v23 = *(a1 + v21);
        if (!v23)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      if (v24 > 0xFF)
      {
        v23 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      if (v24 < 2)
      {
LABEL_34:
        if (v14)
        {
          goto LABEL_35;
        }

        return 0;
      }
    }

    v23 = *(a1 + v21);
    if (!*(a1 + v21))
    {
      goto LABEL_34;
    }

LABEL_21:
    v25 = (v23 - 1) << v22;
    if (v21 > 3)
    {
      v25 = 0;
    }

    if (v21)
    {
      if (v21 <= 3)
      {
        v26 = v21;
      }

      else
      {
        v26 = 4;
      }

      if (v26 > 2)
      {
        if (v26 == 3)
        {
          v27 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v27 = *a1;
        }
      }

      else if (v26 == 1)
      {
        v27 = *a1;
      }

      else
      {
        v27 = *a1;
      }
    }

    else
    {
      v27 = 0;
    }

    return v14 + (v27 | v25) + 1;
  }

LABEL_35:
  if (v7 == v14)
  {
    v28 = *(v6 + 48);
    v29 = a1;
    v30 = v7;
    v31 = v5;
  }

  else
  {
    v29 = ((a1 + v20) & ~v15);
    if (v9 != v14)
    {
      v33 = (*(v12 + 48))((v29 + v16 + v17) & ~v17);
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }

    v28 = *(v8 + 48);
    v30 = v9;
    v31 = v34;
  }

  return v28(v29, v30, v31);
}

void storeEnumTagSinglePayload for InsertedPlaceholderCollection(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v43 = *(a4 + 24);
  v44 = v6;
  v7 = *(v6 + 84);
  v8 = *(v43 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v6 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = v15 + v18;
  v20 = (v15 + v18) & ~v18;
  v21 = *(v8 + 64);
  v22 = *(v12 + 80);
  v23 = (v21 + v22 + v20) & ~v22;
  v24 = *(v12 + 64);
  if (v14)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  v26 = v23 + v25;
  if (a3 > v17)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v17 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
      if (HIWORD(v27))
      {
        v11 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v11 = v28;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    if (v26 < 4)
    {
      v30 = (v29 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v29 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v11 > 1)
            {
LABEL_64:
              if (v11 == 2)
              {
                *&a1[v26] = v30;
              }

              else
              {
                *&a1[v26] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v11 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v11 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v29;
      v30 = 1;
      if (v11 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v11)
    {
      a1[v26] = v30;
    }

    return;
  }

  v31 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v26] = 0;
  }

  else if (v11)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v7 == v17)
  {
    v33 = *(v44 + 56);
    v34 = a2;
    v35 = v7;
    v36 = v5;
LABEL_43:

    v33(v31, v34, v35, v36);
    return;
  }

  v31 = (&a1[v19] & ~v18);
  if (v9 == v17)
  {
    v33 = *(v8 + 56);
    v34 = a2;
    v35 = v9;
    v36 = v43;
    goto LABEL_43;
  }

  v37 = &v31[v21 + v22] & ~v22;
  if (v16 >= a2)
  {
    v41 = *(v13 + 56);
    v42 = &v31[v21 + v22] & ~v22;

    v41(v42, a2 + 1);
  }

  else
  {
    if (v25 <= 3)
    {
      v38 = ~(-1 << (8 * v25));
    }

    else
    {
      v38 = -1;
    }

    if (v25)
    {
      v39 = v38 & (~v16 + a2);
      if (v25 <= 3)
      {
        v40 = v25;
      }

      else
      {
        v40 = 4;
      }

      bzero((&v31[v21 + v22] & ~v22), v25);
      if (v40 > 2)
      {
        if (v40 == 3)
        {
          *v37 = v39;
          *(v37 + 2) = BYTE2(v39);
        }

        else
        {
          *v37 = v39;
        }
      }

      else if (v40 == 1)
      {
        *v37 = v39;
      }

      else
      {
        *v37 = v39;
      }
    }
  }
}

uint64_t type metadata completion function for InsertedPlaceholderCollection.Index()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for InsertedPlaceholderCollection.Index(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9;
  v11 = (*(v5 + 80) | *(v8 + 80));
  if (v11 > 7 || ((*(v5 + 80) | *(v8 + 80)) & 0x100000) != 0 || ((v6 + v9) & ~v9) + *(*(v7 - 8) + 64) > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = v7;
    v16 = ~v9;
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v8 + 16))((a1 + v10) & v16, (a2 + v10) & v16, v15);
  }

  return a1;
}

uint64_t destroy for InsertedPlaceholderCollection.Index(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8) + 8;
  (*v3)(a1, AssociatedTypeWitness);
  v4 = *(v3 + 56) + a1;
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8, v5);
}

uint64_t initializeWithCopy for InsertedPlaceholderCollection.Index(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  (*(v8 + 16))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t assignWithCopy for InsertedPlaceholderCollection.Index(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t initializeWithTake for InsertedPlaceholderCollection.Index(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  (*(v8 + 32))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t assignWithTake for InsertedPlaceholderCollection.Index(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  (*(v8 + 40))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for InsertedPlaceholderCollection.Index(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v5 + 64) + v10;
  if (a2 <= v11)
  {
    goto LABEL_28;
  }

  v13 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v11)
      {
LABEL_28:
        if (v6 >= v9)
        {
          v22 = *(v5 + 48);

          return v22(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v20 = *(v8 + 48);

          return v20((a1 + v12) & ~v10);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v11 + (v19 | v17) + 1;
}

void storeEnumTagSinglePayload for InsertedPlaceholderCollection.Index(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v7 + 64) + v12;
  v14 = (v13 & ~v12) + *(v9 + 64);
  if (a3 <= v11)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v11 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v11 < a2)
  {
    v16 = ~v11 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_46:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
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
  if (v8 >= v10)
  {
    v22 = *(v7 + 56);

    v22(a1, a2, v8, AssociatedTypeWitness);
  }

  else
  {
    v21 = *(v9 + 56);

    v21(&a1[v13] & ~v12, a2);
  }
}

uint64_t type metadata completion function for InsertedPlaceholderCollection.Source()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for InsertedPlaceholderCollection.Source(void *a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  if (*(v8 + 64) <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(*(v7 - 8) + 64);
  }

  v10 = (*(v8 + 80) | *(v5 + 80));
  if (v10 > 7 || v9 + 1 > 0x18 || ((*(v8 + 80) | *(v5 + 80)) & 0x100000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v10 + 16) & ~v10));

    return a1;
  }

  v14 = *(a2 + v9);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v9 <= 3)
    {
      v16 = v9;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a2;
      }

      else if (v16 == 3)
      {
        v17 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v17 = *a2;
      }

LABEL_24:
      v18 = (v17 | (v15 << (8 * v9))) + 2;
      v14 = v17 + 2;
      if (v9 < 4)
      {
        v14 = v18;
      }

      goto LABEL_26;
    }

    if (v16)
    {
      v17 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v14 == 1)
  {
    (*(v8 + 16))(a1, a2, v7);
    *(a1 + v9) = 1;
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v9) = 0;
  }

  return a1;
}

uint64_t destroy for InsertedPlaceholderCollection.Source(unsigned __int8 *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(*(v5 - 8) + 64);
  if (v6 <= v4)
  {
    v6 = v4;
  }

  v7 = a1[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = *a1;
    }

    else if (v9 == 2)
    {
      v10 = *a1;
    }

    else if (v9 == 3)
    {
      v10 = *a1 | (a1[2] << 16);
    }

    else
    {
      v10 = *a1;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_17:
  if (v7 == 1)
  {
    v12 = *(v5 - 8);
  }

  else
  {
    v12 = v3;
  }

  if (v7 == 1)
  {
    v13 = v5;
  }

  else
  {
    v13 = AssociatedTypeWitness;
  }

  v14 = *(v12 + 8);

  return v14(a1, v13);
}

uint64_t initializeWithCopy for InsertedPlaceholderCollection.Source(uint64_t a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = a2;
  v9 = *(v7 - 8);
  if (*(v9 + 64) <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(*(v7 - 8) + 64);
  }

  v11 = a2[v10];
  v12 = v11 - 2;
  if (v11 < 2)
  {
    goto LABEL_18;
  }

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
      goto LABEL_18;
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

  v15 = (v14 | (v12 << (8 * v10))) + 2;
  v11 = v14 + 2;
  if (v10 < 4)
  {
    v11 = v15;
  }

LABEL_18:
  v16 = v11 == 1;
  if (v11 == 1)
  {
    v17 = v7;
  }

  else
  {
    v9 = v5;
    v17 = AssociatedTypeWitness;
  }

  (*(v9 + 16))(a1, v8, v17);
  *(a1 + v10) = v16;
  return a1;
}

unsigned __int8 *assignWithCopy for InsertedPlaceholderCollection.Source(unsigned __int8 *a1, unsigned __int16 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = v7;
  v9 = *(v7 - 8);
  if (*(v9 + 64) <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(*(v7 - 8) + 64);
  }

  v11 = a1[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
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
        goto LABEL_19;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 2;
    v11 = v14 + 2;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_19:
  if (v11 == 1)
  {
    v16 = *(v7 - 8);
  }

  else
  {
    v16 = v5;
  }

  if (v11 == 1)
  {
    v17 = v7;
  }

  else
  {
    v17 = AssociatedTypeWitness;
  }

  (*(v16 + 8))(a1, v17);
  v18 = *(a2 + v10);
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a2;
      }

      else if (v20 == 3)
      {
        v21 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v21 = *a2;
      }

LABEL_37:
      v22 = (v21 | (v19 << (8 * v10))) + 2;
      v18 = v21 + 2;
      if (v10 < 4)
      {
        v18 = v22;
      }

      goto LABEL_39;
    }

    if (v20)
    {
      v21 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v23 = v18 == 1;
  if (v18 == 1)
  {
    v24 = v9;
  }

  else
  {
    v24 = v5;
  }

  if (v18 == 1)
  {
    v25 = v8;
  }

  else
  {
    v25 = AssociatedTypeWitness;
  }

  (*(v24 + 16))(a1, a2, v25);
  a1[v10] = v23;
  return a1;
}

uint64_t initializeWithTake for InsertedPlaceholderCollection.Source(uint64_t a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = a2;
  v9 = *(v7 - 8);
  if (*(v9 + 64) <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(*(v7 - 8) + 64);
  }

  v11 = a2[v10];
  v12 = v11 - 2;
  if (v11 < 2)
  {
    goto LABEL_18;
  }

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
      goto LABEL_18;
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

  v15 = (v14 | (v12 << (8 * v10))) + 2;
  v11 = v14 + 2;
  if (v10 < 4)
  {
    v11 = v15;
  }

LABEL_18:
  v16 = v11 == 1;
  if (v11 == 1)
  {
    v17 = v7;
  }

  else
  {
    v9 = v5;
    v17 = AssociatedTypeWitness;
  }

  (*(v9 + 32))(a1, v8, v17);
  *(a1 + v10) = v16;
  return a1;
}

unsigned __int8 *assignWithTake for InsertedPlaceholderCollection.Source(unsigned __int8 *a1, unsigned __int16 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = v7;
  v9 = *(v7 - 8);
  if (*(v9 + 64) <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(*(v7 - 8) + 64);
  }

  v11 = a1[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
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
        goto LABEL_19;
      }

      v14 = *a1;
    }

    else if (v13 == 2)
    {
      v14 = *a1;
    }

    else if (v13 == 3)
    {
      v14 = *a1 | (a1[2] << 16);
    }

    else
    {
      v14 = *a1;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 2;
    v11 = v14 + 2;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_19:
  if (v11 == 1)
  {
    v16 = *(v7 - 8);
  }

  else
  {
    v16 = v5;
  }

  if (v11 == 1)
  {
    v17 = v7;
  }

  else
  {
    v17 = AssociatedTypeWitness;
  }

  (*(v16 + 8))(a1, v17);
  v18 = *(a2 + v10);
  v19 = v18 - 2;
  if (v18 >= 2)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a2;
      }

      else if (v20 == 3)
      {
        v21 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v21 = *a2;
      }

LABEL_37:
      v22 = (v21 | (v19 << (8 * v10))) + 2;
      v18 = v21 + 2;
      if (v10 < 4)
      {
        v18 = v22;
      }

      goto LABEL_39;
    }

    if (v20)
    {
      v21 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v23 = v18 == 1;
  if (v18 == 1)
  {
    v24 = v9;
  }

  else
  {
    v24 = v5;
  }

  if (v18 == 1)
  {
    v25 = v8;
  }

  else
  {
    v25 = AssociatedTypeWitness;
  }

  (*(v24 + 32))(a1, a2, v25);
  a1[v10] = v23;
  return a1;
}

uint64_t getEnumTagSinglePayload for InsertedPlaceholderCollection.Source(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v11 < 2)
    {
LABEL_26:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_26;
  }

LABEL_15:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 255;
}

void storeEnumTagSinglePayload for InsertedPlaceholderCollection.Source(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = v7 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
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

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
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

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for InsertedPlaceholderCollection.Source(unsigned __int8 *a1)
{
  v2 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v3 <= v2)
  {
    v3 = v2;
  }

  result = a1[v3];
  if (result >= 2)
  {
    if (v3 <= 3)
    {
      v5 = v3;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return result;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | ((result - 2) << (8 * v3))) + 2;
    v8 = v6 + 2;
    if (v3 >= 4)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

void destructiveInjectEnumTag for InsertedPlaceholderCollection.Source(_BYTE *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  if (a2 > 1)
  {
    v7 = *(v4 + 64);
    v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = a2 - 2;
    if (v9 < 4)
    {
      a1[v9] = (v10 >> (8 * v9)) + 2;
      if (v9)
      {
        v11 = v10 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v11;
          a1[2] = BYTE2(v11);
        }

        else if (v9 == 2)
        {
          *a1 = v11;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      a1[v9] = 2;
      bzero(a1, v9);
      *a1 = v10;
    }
  }

  else
  {
    v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    if (v6 <= *(v5 + 64))
    {
      v6 = *(v5 + 64);
    }

    a1[v6] = a2;
  }
}

uint64_t (*default argument 1 of Gesture.delayed(by:filter:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return protocol witness for static Equatable.== infix(_:_:) in conformance _DisplayList_Identity.CodingKeys;
}

uint64_t Gesture.delayed(by:filter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  swift_getAssociatedTypeWitness();
  *v12 = a5;
  v12[1] = a1;
  v12[2] = a2;
  v10 = type metadata accessor for DelayedGesture();
  swift_getWitnessTable();
  Gesture.modifier<A>(_:)(v12, a3, v10, a4);
}

uint64_t key path setter for DelayedGesture.filter : <A>DelayedGesture<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out Bool);
  *(a2 + 16) = v8;
  return result;
}

uint64_t DelayedGesture.filter.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DelayedGesture.filter.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static DelayedGesture._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[2];
  v7 = a2[4];
  v26 = a2[3];
  v27 = v7;
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  v25 = v6;
  v9 = *(a2 + 20);
  v10 = *(a2 + 21);
  v30 = *(a2 + 88);
  v31 = *(a2 + 13);
  v11 = *(a2 + 30);
  v28 = v9;
  v29 = v10;
  v32 = *(a2 + 14);
  v17 = v32;
  v33 = v11;
  a3(&v18, &v23);
  v12 = v18;

  *&v23 = __PAIR64__(v12, v5);
  *(&v23 + 1) = __PAIR64__(v17, v10);
  LOBYTE(v24) = (v11 & 0x10) != 0;
  *(&v24 + 1) = 0;
  LOBYTE(v25) = 1;
  DWORD1(v25) = 0;
  v20 = type metadata accessor for GesturePhase();
  v13 = type metadata accessor for DelayedPhase();
  v21 = v13;
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v23, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v19, v13, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  return _GestureOutputs.init(phase:)(v18, a4);
}

uint64_t DelayedPhase.modifier.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for DelayedGesture();
  Value = AGGraphGetValue();
  v3 = *Value;
  v5 = Value[1];
  v4 = Value[2];
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v4;
}

uint64_t DelayedPhase.childPhase.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t DelayedPhase.updateValue()(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GesturePhase();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v48 - v17;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v19 = v1[1];
    v55 = *v1;
    v56 = v19;
    v57 = *(v1 + 4);
    DelayedPhase.modifier.getter(&v53);
    v20 = *&v53;

    if (v20 <= 0.0 || (swift_beginAccess(), (static CoreTesting.isRunning & 1) != 0))
    {
      v21 = v1[1];
      v55 = *v1;
      v56 = v21;
      v57 = *(v1 + 4);
      v22 = DelayedPhase.childPhase.getter(v9);
      MEMORY[0x1EEE9AC00](v22);
      *(&v48 - 2) = a1;
      *(&v48 - 1) = swift_getWitnessTable();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in StatefulRule.value.setter, (&v48 - 4), v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v23);
      return (*(v7 + 8))(v9, v6);
    }

    v24 = v1[1];
    v55 = *v1;
    v56 = v24;
    v57 = *(v1 + 4);
    DelayedPhase.childPhase.getter(v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 16))(v9, v15, v6);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
LABEL_9:
        v27 = v1[1];
        v53 = *v1;
        *v54 = v27;
        *&v54[16] = *(v1 + 4);
        v28 = v51;
        DelayedPhase.childPhase.getter(v51);
        v29 = *(v7 + 8);
        v30 = v29(v15, v6);
LABEL_28:
        MEMORY[0x1EEE9AC00](v30);
        *(&v48 - 2) = a1;
        *(&v48 - 1) = swift_getWitnessTable();
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, closure #1 in StatefulRule.value.setterpartial apply, (&v48 - 4), v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v47);
        return v29(v28, v6);
      }

      (*(v7 + 16))(v12, v15, v6);
      if ((*(v50 + 48))(v12, 1, v3) == 1)
      {
        v26 = type metadata accessor for Optional();
        (*(*(v26 - 8) + 8))(v12, v26);
        goto LABEL_9;
      }

      v9 = v12;
    }

    v31 = v50;
    (*(v50 + 32))(v5, v9, v3);
    v49 = *(v7 + 8);
    v49(v15, v6);
    v32 = v1[1];
    v53 = *v1;
    *v54 = v32;
    *&v54[16] = *(v1 + 4);
    DelayedPhase.modifier.getter(v52);
    v33 = (*&v52[1])(v5);

    if (v33)
    {
      v34 = *AGGraphGetValue();
      if (v1[2])
      {
LABEL_14:
        *(v1 + 3) = v34;
        *(v1 + 32) = 0;
        (*(v31 + 56))(v51, 1, 1, v3);
        result = swift_storeEnumTagMultiPayload();
        if (v1[2])
        {
          __break(1u);
          return result;
        }

        v35 = *(v1 + 3);
        (*(v31 + 8))(v5, v3);
        v53 = *v1;
        v54[0] = *(v1 + 16);
        v36 = v54[0];
        *&v54[1] = *(v1 + 17);
        *&v54[16] = *(v1 + 4);
        DelayedPhase.modifier.getter(v52);
        v37 = v52[0];

        v38 = v35 + v37;
        specialized static GraphHost.currentHost.getter();
        if (v36)
        {
          type metadata accessor for GestureGraph();
          v39 = swift_dynamicCastClassUnconditional();
          v40 = *(v39 + 272);
          if (v38 < v40)
          {
            v40 = v38;
          }

          *(v39 + 272) = v40;
        }

        else
        {
          type metadata accessor for ViewGraph();
          v45 = swift_dynamicCastClassUnconditional();
          swift_beginAccess();
          v46 = *(v45 + 408);
          if (v38 < v46)
          {
            v46 = v38;
          }

          *(v45 + 408) = v46;
        }

        v28 = v51;
        goto LABEL_27;
      }

      v42 = v34 - *(v1 + 3);
      v43 = v1[1];
      v53 = *v1;
      *v54 = v43;
      *&v54[16] = *(v1 + 4);
      DelayedPhase.modifier.getter(v52);
      v44 = v52[0];

      if (v44 > v42)
      {
        if (*(v1 + 32) != 1)
        {
          v34 = *(v1 + 3);
        }

        goto LABEL_14;
      }
    }

    (*(v31 + 8))(v5, v3);
    v41 = v1[1];
    v53 = *v1;
    *v54 = v41;
    *&v54[16] = *(v1 + 4);
    v28 = v51;
    v30 = DelayedPhase.childPhase.getter(v51);
LABEL_27:
    v29 = v49;
    goto LABEL_28;
  }

  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance DelayedPhase<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void *assignWithCopy for DelayedGesture(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

uint64_t assignWithTake for DelayedGesture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t storeEnumTagSinglePayload for DelayedGesture(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelayedPhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for DelayedPhase<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result & 1;
  return result;
}

SwiftUI::Spring __swiftcall Spring.init(duration:bounce:)(Swift::Double duration, Swift::Double bounce)
{
  if (bounce <= -1.0)
  {
    v3 = INFINITY;
  }

  else if (bounce >= 0.0)
  {
    v3 = 1.0;
    if (bounce != 0.0)
    {
      if (bounce > 1.0)
      {
        bounce = 1.0;
      }

      v3 = 1.0 - bounce;
    }
  }

  else
  {
    v3 = 1.0 / (bounce + 1.0);
  }

  *&v4.f64[0] = qword_18DDBD080[v3 > 1.0];
  v4.f64[1] = v3;
  v5 = &qword_18DDA9270;
  v6 = sqrt(vabdd_f64(1.0, v3 * v3));
  v7 = vld1q_dup_f64(v5);
  v7.f64[0] = v6;
  v8 = vmulq_f64(v4, v7);
  v9 = vdivq_f64(v8, vdupq_lane_s64(*&duration, 0));
  *v2 = v9;
  *(v2 + 16) = 0x3FF0000000000000;
  result._mass = v7.f64[0];
  result.decayConstant = v8.f64[0];
  result.angularFrequency = v9.f64[0];
  return result;
}

double Spring.bounce.getter()
{
  v1 = v0[1];
  v2 = v1 * 0.5;
  v3 = v1 * v1;
  v4 = *v0 * *v0;
  if (*v0 >= 0.0)
  {
    v5 = v2 * (-6.28318531 / sqrt(v4 + v3)) / 3.14159265;
    v6 = 1.0;
  }

  else
  {
    v5 = 1.0 / (v2 * (6.28318531 / sqrt(v3 - v4)) / 3.14159265);
    v6 = -1.0;
  }

  return v5 + v6;
}

void specialized Spring.settlingDuration<A>(target:initialVelocity:epsilon:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a5 != 0.0)
  {
    v8 = a1 * a5;
    if (a4 > 0.0)
    {
      fmax(-log(a3 / (sqrt(a1 * a1) + sqrt((v8 - a2) * (v8 - a2)))) / a5, 0.0);
      return;
    }

    v22 = v8 - a2;
    v20 = -a4 - a5;
    v21 = -a5;
    v18 = a5 - a4;
    v19 = a4 - a5;
    v17 = a4 + a4;
    v9 = 0.0;
    v10 = -1.0;
    v11 = INFINITY;
    for (i = 1023; ; --i)
    {
      if (a4 >= 0.0)
      {
        v15 = a1 - (v22 * v9 + a1) * exp(v9 * v21);
      }

      else
      {
        v13 = exp(v20 * v9);
        v14 = exp(v19 * v9);
        v15 = ((v18 * v13 + v20 * v14) / v17 + 1.0) * a1 - (v13 - v14) / v17 * a2;
      }

      v16 = sqrt((a1 - v15) * (a1 - v15));
      if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        return;
      }

      if (v11 >= a3)
      {
        break;
      }

      if (v16 < a3)
      {
        if (v9 - v10 > 1.0)
        {
          return;
        }

        goto LABEL_8;
      }

      if (!i)
      {
        return;
      }

      v11 = INFINITY;
LABEL_9:
      v9 = v9 + 0.1;
    }

    if (v16 < v11)
    {
      v10 = v9;
      v11 = v16;
    }

LABEL_8:
    if (!i)
    {
      return;
    }

    goto LABEL_9;
  }
}

double Spring.settlingDuration<A>(target:initialVelocity:epsilon:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v37 - v18;
  v20 = *(v5 + 8);
  if (*&v20 == 0.0)
  {
    return INFINITY;
  }

  v22 = *v5;
  v23 = *v5 <= 0.0;
  v38 = *(v5 + 8);
  if (v23)
  {
    v29 = (v10 + 8);
    v37[1] = a5 + 24;
    v21 = -1.0;
    v30 = INFINITY;
    v31 = 1024;
    v32 = 0.0;
    do
    {
      v39 = v22;
      v40 = v20;
      v33 = v17;
      Spring.value<A>(target:initialVelocity:time:)(a1, v32, v17, a4, a5);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v34 = *v29;
      (*v29)(v19, a4);
      v35 = sqrt((*(a5 + 24))(a4, a5));
      v34(v12, a4);
      if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v30 >= a2)
      {
        if (v35 < v30)
        {
          v21 = v32;
          v30 = v35;
        }

        v20 = v38;
        v17 = v33;
      }

      else
      {
        v17 = v33;
        if (v35 >= a2)
        {
          v30 = INFINITY;
          v20 = v38;
        }

        else
        {
          v20 = v38;
          if (v32 - v21 > 1.0)
          {
            return v21;
          }
        }
      }

      v32 = v32 + 0.1;
      --v31;
    }

    while (v31);
    return 0.0;
  }

  else
  {
    VectorArithmetic.scaled(by:)(a4, a5, v15, *&v20);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v24 = *(v10 + 8);
    v24(v15, a4);
    v25 = *(a5 + 24);
    v26 = sqrt(v25(a4, a5));
    v27 = v25(a4, a5);
    v28 = log(a2 / (v26 + sqrt(v27)));
    v21 = fmax(-v28 / *&v38, 0.0);
    v24(v19, a4);
  }

  return v21;
}

uint64_t Spring.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x193AC11E0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x193AC11E0](*&v5);
}

Swift::Int Spring.hashValue.getter()
{
  Hasher.init(_seed:)();
  Spring.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Spring()
{
  Hasher.init(_seed:)();
  Spring.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Spring()
{
  Hasher.init(_seed:)();
  Spring.hash(into:)();
  return Hasher._finalize()();
}

SwiftUI::Spring __swiftcall Spring.init(response:dampingRatio:)(Swift::Double response, Swift::Double dampingRatio)
{
  *&v3.f64[0] = qword_18DDBD080[dampingRatio > 1.0];
  v3.f64[1] = dampingRatio;
  v4 = &qword_18DDA9270;
  v5 = vld1q_dup_f64(v4);
  v5.f64[0] = sqrt(vabdd_f64(1.0, dampingRatio * dampingRatio));
  v6 = vmulq_f64(v3, v5);
  v7 = vdivq_f64(v6, vdupq_lane_s64(*&response, 0));
  *v2 = v7;
  *(v2 + 16) = 0x3FF0000000000000;
  result._mass = v5.f64[0];
  result.decayConstant = v6.f64[0];
  result.angularFrequency = v7.f64[0];
  return result;
}

long double Spring.dampingRatio.getter()
{
  v1 = v0[1];
  v2 = v1 * 0.5;
  v3 = v1 * v1;
  v4 = -*v0;
  if (*v0 >= 0.0)
  {
    v4 = *v0;
  }

  return v2 * (6.28318531 / sqrt(v3 + *v0 * v4)) / 3.14159265;
}

SwiftUI::Spring __swiftcall Spring.init(mass:stiffness:damping:allowOverDamping:)(Swift::Double mass, Swift::Double stiffness, Swift::Double damping, Swift::Bool allowOverDamping)
{
  v5 = stiffness / mass;
  v6 = sqrt(stiffness / mass);
  v7 = damping / (mass + mass);
  if (allowOverDamping || (v8 = 0.0, v6 >= v7))
  {
    v8 = sqrt(vabdd_f64(v5, v7 * v7));
    if (v6 < v7)
    {
      v8 = -v8;
    }
  }

  else
  {
    v7 = v6;
  }

  *v4 = v8;
  v4[1] = v7;
  v4[2] = mass;
  result._mass = v8;
  result.decayConstant = v7;
  result.angularFrequency = mass;
  return result;
}

SwiftUI::Spring __swiftcall Spring.init(settlingDuration:dampingRatio:epsilon:)(Swift::Double settlingDuration, Swift::Double dampingRatio, Swift::Double epsilon)
{
  v5 = v3;
  v6 = fmax(dampingRatio, 2.22044605e-16);
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = fmax(settlingDuration, 0.01);
  if (v8 <= 10.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 10.0;
  }

  if (v7 >= 1.0)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #5 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    *(v18 + 24) = v17;
    *(v18 + 32) = epsilon;
    *(v18 + 40) = v9;
    v19 = swift_allocObject();
    *(v19 + 16) = v9 * v9;
    *(v19 + 24) = 0;
    *(v19 + 32) = v9;
    v15 = partial apply for closure #6 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    v16 = partial apply for closure #7 in Spring.init(settlingDuration:dampingRatio:epsilon:);
  }

  else
  {
    v10 = sqrt(1.0 - v7 * v7);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = 0;
    *(v12 + 32) = partial apply for closure #1 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    *(v12 + 40) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = epsilon;
    *(v13 + 24) = v9 * v7;
    *(v13 + 32) = partial apply for closure #2 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    *(v13 + 40) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v9 * v7;
    *(v14 + 24) = partial apply for closure #2 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    *(v14 + 32) = v12;
    *(v14 + 40) = 0;
    *(v14 + 48) = v9 * v7 * 0.0;
    *(v14 + 56) = v9 * (v7 * v7);
    *(v14 + 64) = v10;

    v15 = partial apply for closure #3 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    v16 = partial apply for closure #4 in Spring.init(settlingDuration:dampingRatio:epsilon:);
  }

  v20 = v16;
  v21 = 1.0 / v9;
  v22 = 1.0 / v9 * 5.0;

  v24 = (v15)(v23, v22);
  v25 = v22 - v24 / v20(v22);
  if ((~*&v25 & 0x7FF0000000000000) != 0 || (*&v25 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v27 = v15(v25);
    v28 = v25 - v27 / v20(v25);
    if ((~*&v28 & 0x7FF0000000000000) != 0 || (*&v28 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v30 = v25 - v28;
      v31 = 10;
      while (1)
      {
        v32 = v15(v28);
        v33 = v28 - v32 / v20(v28);
        if ((~*&v33 & 0x7FF0000000000000) == 0 && (*&v33 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          break;
        }

        if (vabdd_f64(v33, v28) <= epsilon)
        {
          if (epsilon * 100000.0 >= v30)
          {
            goto LABEL_51;
          }

          break;
        }

        v30 = v28 - v33;
        v28 = v33;
        if (!--v31)
        {
          goto LABEL_51;
        }
      }
    }
  }

  v35 = v15(v21);
  v36 = v35 / v20(v21);
  v33 = v21 - v36;
  if ((~COERCE__INT64(v21 - v36) & 0x7FF0000000000000) != 0 || (COERCE_UNSIGNED_INT64(v21 - v36) & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v38 = v15(v21 - v36);
    v39 = v38 / v20(v33);
    v40 = v33 - v39;
    if ((~COERCE__INT64(v33 - v39) & 0x7FF0000000000000) != 0 || (COERCE_UNSIGNED_INT64(v33 - v39) & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v42 = 17;
      do
      {
        v43 = v15(v40);
        v33 = v40 - v43 / v20(v40);
        if ((~*&v33 & 0x7FF0000000000000) == 0 && (*&v33 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          break;
        }

        v45 = vabdd_f64(v33, v40) <= epsilon || v42-- == 0;
        v40 = v33;
      }

      while (!v45);
    }

    else
    {
      v33 = v33 - v39;
    }
  }

LABEL_51:
  v46 = v33 * v33;
  v47 = sqrt(v33 * v33);
  v48 = v7 * (v47 + v47) * 0.5;

  v49 = sqrt(vabdd_f64(v46, v48 * v48));
  if (v47 >= v48)
  {
    v50 = v7 * (v47 + v47) * 0.5;
  }

  else
  {
    v50 = v47;
  }

  v51 = 0.0;
  if (v47 < v48)
  {
    v49 = 0.0;
  }

  *v5 = v49;
  *(v5 + 8) = v50;
  *(v5 + 16) = 0x3FF0000000000000;
  result._mass = v51;
  result.decayConstant = v50;
  result.angularFrequency = v49;
  return result;
}

uint64_t Spring.force<A>(target:position:velocity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v23[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  v16 = *v4;
  v17 = v4[1];
  v18 = v4[2];
  VectorArithmetic.scaled(by:)(v19, v20, v23 - v14, v17 * -2.0 * v18);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(a2, a3, v12, v18 * (v16 * v16 + v17 * v17));
  v21 = *(v7 + 8);
  v21(v9, a2);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v21(v12, a2);
  return (v21)(v15, a2);
}

double Spring.settlingDuration<A>(fromValue:toValue:initialVelocity:epsilon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  AssociatedConformanceWitness = a1;
  v27 = a3;
  v25[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v25[0] = v25 - v18;
  v19 = *(v6 + 2);
  v28 = *v6;
  v29 = v19;
  v20 = *(a5 + 24);
  v20(a4, a5);
  v20(a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v21 = *(v11 + 8);
  v21(v13, AssociatedTypeWitness);
  v21(v16, AssociatedTypeWitness);
  v20(a4, a5);
  v22 = v25[0];
  v23 = Spring.settlingDuration<A>(target:initialVelocity:epsilon:)(v25[0], a6, v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  v21(v16, AssociatedTypeWitness);
  v21(v22, AssociatedTypeWitness);
  return v23;
}

uint64_t Spring.value<A>(fromValue:toValue:initialVelocity:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v45 = a6;
  v46 = a3;
  v40 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v37 = &v36 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v36 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v41 = &v36 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v44 = &v36 - v25;
  v38 = *v7;
  v26 = *(v7 + 2);
  v27 = *(*(a4 - 8) + 16);
  v47 = a4;
  v27(a6, a2, a4);
  v28 = *(a5 + 24);
  v28(a4, a5);
  v48 = v38;
  v49 = v26;
  v28(a4, a5);
  v29 = v39;
  v28(a4, a5);
  *&v38 = swift_getAssociatedConformanceWitness();
  v40 = *(v38 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v30 = *(v42 + 8);
  v30(v29, AssociatedTypeWitness);
  v30(v17, AssociatedTypeWitness);
  v28(v47, a5);
  v31 = v43;
  v32 = v37;
  Spring.value<A>(target:initialVelocity:time:)(v37, a7, v17, AssociatedTypeWitness, v38);
  v30(v17, AssociatedTypeWitness);
  v30(v32, AssociatedTypeWitness);
  v33 = v44;
  v34 = v41;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v30(v31, AssociatedTypeWitness);
  v30(v34, AssociatedTypeWitness);
  return (*(a5 + 32))(v33, v47, a5);
}

uint64_t Spring.velocity<A>(fromValue:toValue:initialVelocity:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v34 = a6;
  v35 = a3;
  AssociatedConformanceWitness = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v31 = &v30 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v33 = &v30 - v23;
  v30 = *v7;
  v24 = *(v7 + 2);
  (*(*(a4 - 8) + 16))(a6, a2, a4);
  v36 = v30;
  v37 = v24;
  v25 = *(a5 + 24);
  v25(a4, a5);
  v25(a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v26 = *(v14 + 8);
  v26(v16, AssociatedTypeWitness);
  v26(v19, AssociatedTypeWitness);
  v25(a4, a5);
  v27 = v33;
  v28 = v31;
  Spring.velocity<A>(target:initialVelocity:time:)(v31, AssociatedTypeWitness, AssociatedConformanceWitness, v33, a7);
  v26(v19, AssociatedTypeWitness);
  v26(v28, AssociatedTypeWitness);
  return (*(a5 + 32))(v27, a4, a5);
}

uint64_t Spring.force<A>(fromValue:toValue:position:velocity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a3;
  v35 = a4;
  AssociatedConformanceWitness = a1;
  v33 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v30 = &v29 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v32 = &v29 - v22;
  v29 = *v7;
  v23 = *(v7 + 2);
  (*(*(a5 - 8) + 16))(a7, a2, a5);
  v36 = v29;
  v37 = v23;
  v24 = *(a6 + 24);
  v24(a5, a6);
  v24(a5, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v25 = *(v13 + 8);
  v25(v15, AssociatedTypeWitness);
  v25(v18, AssociatedTypeWitness);
  v24(a5, a6);
  v24(a5, a6);
  v26 = v32;
  v27 = v30;
  Spring.force<A>(target:position:velocity:)(v30, AssociatedTypeWitness, AssociatedConformanceWitness, v32);
  v25(v15, AssociatedTypeWitness);
  v25(v18, AssociatedTypeWitness);
  v25(v27, AssociatedTypeWitness);
  return (*(a6 + 32))(v26, a5, a6);
}

uint64_t static Animation.interpolatingSpring(_:initialVelocity:)(double *a1, double a2)
{
  v3 = -*a1;
  if (*a1 >= 0.0)
  {
    v3 = *a1;
  }

  v4 = 6.28318531 / sqrt(a1[1] * a1[1] + *a1 * v3);
  v5 = Spring.bounce.getter();

  return specialized static Animation.interpolatingSpring(duration:bounce:initialVelocity:)(v4, v5, a2);
}

BOOL Spring.isValid.getter()
{
  if ((~*v0 & 0x7FF0000000000000) == 0 && (*v0 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  if ((~v0[1] & 0x7FF0000000000000) != 0)
  {
    return (~v0[2] & 0x7FF0000000000000) != 0;
  }

  return 0;
}

double *specialized static Animation.spring(_:blendDuration:)(uint64_t a1, double a2)
{
  v3 = *a1;
  v13 = *(a1 + 8);
  v4 = Spring.bounce.getter();
  v5 = 1.0;
  if (v4 <= 1.0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = 1.0 - v6;
  if (v4 != 0.0)
  {
    v5 = v7;
  }

  if (v4 < 0.0)
  {
    v5 = 1.0 / (v4 + 1.0);
  }

  if (v4 > -1.0)
  {
    v8 = v5;
  }

  else
  {
    v8 = INFINITY;
  }

  *&v9 = *&vmulq_f64(v13, v13);
  v10 = -v3;
  if (v3 >= 0.0)
  {
    v10 = v3;
  }

  v11 = 6.28318531 / sqrt(v9 + v3 * v10);
  type metadata accessor for InternalAnimationBox<FluidSpringAnimation>();
  result = swift_allocObject();
  result[2] = v11;
  result[3] = v8;
  result[4] = a2;
  return result;
}

long double partial apply for closure #6 in Spring.init(settlingDuration:dampingRatio:epsilon:)(double a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = (*(v1 + 16))();
  if (v5 < 0.0)
  {
    v3 = -v3;
  }

  return exp(-(v4 * a1)) * (v4 * v5 + 1.0) - v3;
}

double partial apply for closure #3 in Spring.init(settlingDuration:dampingRatio:epsilon:)(double a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = exp(-(*(v1 + 24) * a1));
  return v3 - fabs(v5 * v4(a1));
}

long double partial apply for closure #4 in Spring.init(settlingDuration:dampingRatio:epsilon:)(double a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = a1 * a1;
  v10 = exp(-(v3 * a1));
  if (v10 * v4(a1) <= 0.0)
  {
    v11 = v5 + v6 * a1 - v9 * v7;
  }

  else
  {
    v11 = -(v5 + v6 * a1 - v9 * v7);
  }

  return v11 / (exp(v3 * a1) * (v9 * v8));
}

unint64_t lazy protocol witness table accessor for type Spring and conformance Spring()
{
  result = lazy protocol witness table cache variable for type Spring and conformance Spring;
  if (!lazy protocol witness table cache variable for type Spring and conformance Spring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spring and conformance Spring);
  }

  return result;
}

void type metadata accessor for InternalAnimationBox<FluidSpringAnimation>()
{
  if (!lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>)
  {
    lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation();
    v0 = type metadata accessor for InternalAnimationBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>);
    }
  }
}

uint64_t CodableByProtobuf.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    v19 = a4;
    v20 = v10;
    v18 = v8;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v22.super.isa;
    v13 = v23;
    outlined copy of Data._Representation(v22.super.isa, v23);
    ProtobufDecoder.init(_:)(isa, v13, &v22);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = dispatch thunk of Decoder.userInfo.getter();

    v24 = v14;
    v15 = v20;
    (*(*(v21 + 24) + 8))(&v22, a2);
    outlined consume of Data._Representation(isa, v13);
    (*(v18 + 32))(v19, v15, a2);
    v16 = v22.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableByProtobuf.encode(to:)(void *a1)
{
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for closure #1 in CodableByProtobuf.encode(to:));
  if (!v1)
  {
    v5 = a1[3];
    v6 = result;
    v7 = a1;
    v8 = v4;
    __swift_project_boxed_opaque_existential_1(v7, v5);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v6, v8);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

uint64_t ProtobufEnum<>.protobufValue.getter()
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v1 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v16 - v5;
  v8 = v7;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v9 = dispatch thunk of static Comparable.>= infix(_:_:)(), result = (*(v8 + 8))(v3, v1), (v9))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
    {
      v16[1] = -1;
      v11 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v12 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v11)
      {
        if (v12 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v13 = dispatch thunk of static Comparable.> infix(_:_:)();
          (*(v8 + 8))(v3, v1);
          if ((v13 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else if (v12 < 65)
      {
LABEL_11:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_12;
      }

      lazy protocol witness table accessor for type UInt and conformance UInt();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v14 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v8 + 8))(v3, v1);
      if (v14)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    v15 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v8 + 8))(v6, v1);
    return v15;
  }

  __break(1u);
  return result;
}

unint64_t specialized ProtobufEnum<>.init(protobufValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t ProtobufEnum<>.init(protobufValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = type metadata accessor for Optional();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v28 - v8;
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  v34 = a1;
  lazy protocol witness table accessor for type UInt and conformance UInt();
  dispatch thunk of Numeric.init<A>(exactly:)();
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v21 = *(a2 - 8);
  }

  else
  {
    (*(v14 + 32))(v20, v13, AssociatedTypeWitness);
    (*(v14 + 16))(v17, v20, AssociatedTypeWitness);
    v22 = v32;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    (*(v14 + 8))(v20, AssociatedTypeWitness);
    v21 = *(a2 - 8);
    v23 = v21;
    if (!(*(v21 + 48))(v22, 1, a2))
    {
      v27 = v33;
      (*(v21 + 32))(v33, v22, a2);
      v25 = v27;
      v24 = 0;
      return (*(v23 + 56))(v25, v24, 1, a2);
    }

    (*(v29 + 8))(v22, v30);
  }

  v23 = v21;
  v24 = 1;
  v25 = v33;
  return (*(v23 + 56))(v25, v24, 1, a2);
}

uint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance Image.Orientation@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 <= 0xFF)
  {
    result = specialized Image.Orientation.init(rawValue:)(a1);
  }

  else
  {
    result = 8;
  }

  *a2 = result;
  return result;
}

uint64_t closure #1 in CodableByProtobuf.encode(to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v8;
  return (*(*(a5 + 32) + 8))(a1, a4);
}

uint64_t ProtobufCodable.encode(to:)(void *a1)
{
  result = specialized static ProtobufEncoder.encoding(_:)(partial apply for closure #1 in ProtobufCodable.encode(to:));
  if (!v1)
  {
    v5 = a1[3];
    v6 = result;
    v7 = a1;
    v8 = v4;
    __swift_project_boxed_opaque_existential_1(v7, v5);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    outlined consume of Data._Representation(v6, v8);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

uint64_t closure #1 in ProtobufCodable.encode(to:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = dispatch thunk of Encoder.userInfo.getter();

  *(a1 + 32) = v9;
  return (*(a6 + 8))(a1, a4, a6);
}

uint64_t ProtobufCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v25 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProtobufCodable();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v31;
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v12)
  {
    v22 = v9;
    v23 = a3;
    v31 = v8;
    v21 = v11;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v27.super.isa;
    v14 = v28;
    outlined copy of Data._Representation(v27.super.isa, v28);
    ProtobufDecoder.init(_:)(isa, v14, &v27);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = dispatch thunk of Decoder.userInfo.getter();

    v29 = v15;
    v16 = v31;
    v17 = a2;
    (*(v23 + 8))(&v27, a2);
    outlined consume of Data._Representation(isa, v14);
    v19 = v21;
    (*(v25 + 32))(v21, v16, v17);
    v20 = v27.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v30);
    (*(v24 + 32))(v26, v19, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance RBSymbolScaleLevel@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result >> 31)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  *(a2 + 4) = result >> 31 != 0;
  return result;
}

uint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance DisplayGamut@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result < 0)
  {
LABEL_5:
    *a2 = 2;
    return result;
  }

  if (result)
  {
    if (result == 1)
    {
      *a2 = 1;
      return result;
    }

    goto LABEL_5;
  }

  *a2 = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

uint64_t SecondaryLayerGeometryQuery.init(alignment:layoutDirection:primaryPosition:primarySize:primaryLayoutComputer:secondaryLayoutComputer:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, _DWORD *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t SecondaryLayerGeometryQuery.$secondaryLayoutComputer.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 20) = v2;
  return result;
}

uint64_t _OverlayModifier.alignment.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 36));
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t _OverlayModifier.init(overlay:alignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for _OverlayModifier();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

BOOL static _OverlayModifier<>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for _OverlayModifier() + 36);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

uint64_t _OverlayStyleModifier.init(style:ignoresSafeAreaEdges:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for _OverlayStyleModifier();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t static _OverlayStyleModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v13;
  v17[4] = *(a2 + 64);
  v18 = *(a2 + 80);
  v14 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v14;
  v16[1] = v12;
  type metadata accessor for _BackgroundStyleModifier();
  type metadata accessor for _OverlayStyleModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.unsafeBitCast<A>(to:)(v16);
  return static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(v16, v17, 0, a3, a4, a5, a6, a7);
}

uint64_t _OverlayShapeModifier.fillStyle.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t _OverlayShapeModifier.fillStyle.setter(uint64_t result, uint64_t a2)
{
  v3 = (v2 + *(a2 + 56));
  *v3 = result & 1;
  v3[1] = BYTE1(result) & 1;
  return result;
}

uint64_t _OverlayShapeModifier.init(style:shape:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v10 = type metadata accessor for _OverlayShapeModifier();
  result = (*(*(a5 - 8) + 32))(a6 + *(v10 + 52), a2, a5);
  v12 = (a6 + *(v10 + 56));
  *v12 = a3 & 1;
  v12[1] = HIBYTE(a3) & 1;
  return result;
}

uint64_t static _OverlayShapeModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a1;
  v17 = *(a2 + 48);
  v24[2] = *(a2 + 32);
  v24[3] = v17;
  v24[4] = *(a2 + 64);
  v25 = *(a2 + 80);
  v18 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v18;
  v23 = v16;
  type metadata accessor for _BackgroundShapeModifier();
  v22[0] = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  type metadata accessor for _OverlayShapeModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.unsafeBitCast<A>(to:)(v22);
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  *&v21 = a7;
  *(&v21 + 1) = a8;
  static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(v22, v24, 0, a3, a4, partial apply for closure #1 in default argument 4 of static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:), v19, a5, a9, a6, v21);
}

uint64_t (*default argument 4 of static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return partial apply for closure #1 in default argument 4 of static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:);
}

uint64_t View.border<A>(_:width:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for _StrokedShape<Rectangle._Inset>();
  v19[0] = v12;
  v19[1] = a3;
  v19[2] = lazy protocol witness table accessor for type _StrokedShape<Rectangle._Inset> and conformance _StrokedShape<A>();
  v19[3] = a5;
  v13 = type metadata accessor for _ShapeView();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - v15;
  v17 = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  InsettableShape.strokeBorder<A>(_:lineWidth:antialiased:)(a1, 1, &type metadata for Rectangle, a3, v17, a5, v16, a6);
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  View.overlay<A>(_:alignment:)(v16, static Alignment.center, *(&static Alignment.center + 1), a2, v13, a4);
  return (*(v14 + 8))(v16, v13);
}

uint64_t View.overlay<A>(_:ignoresSafeAreaEdges:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _OverlayStyleModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  View.modifier<A>(_:)(v16, a3, v12);
  return (*(v13 + 8))(v16, v12);
}

uint64_t View.overlay<A, B>(_:in:fillStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a7;
  v29 = a8;
  v30 = a1;
  v33 = a9;
  v34 = a4;
  v32 = a3;
  v31 = a2;
  v12 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = a10;
  v23 = type metadata accessor for _OverlayShapeModifier();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v29 - v26;
  (*(v16 + 16))(v19, v30, a5, v25);
  (*(v12 + 16))(v14, v31, a6);
  _OverlayShapeModifier.init(style:shape:fillStyle:)(v19, v14, v32 & 0x101, a5, a6, v27);
  View.modifier<A>(_:)(v27, v34, v23);
  return (*(v24 + 8))(v27, v23);
}

uint64_t SecondaryLayerGeometryQuery.alignment.getter()
{
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    return 0;
  }

  else
  {
    return *AGGraphGetValue();
  }
}

unint64_t SecondaryLayerGeometryQuery.$alignment.getter()
{
  LODWORD(v1) = *v0;
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | ((*v0 == *MEMORY[0x1E698D3F8]) << 32);
}

uint64_t SecondaryLayerGeometryQuery.$alignment.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *v1 = v2;
  return result;
}

uint64_t (*SecondaryLayerGeometryQuery.$alignment.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return SecondaryLayerGeometryQuery.$alignment.modify;
}

uint64_t SecondaryLayerGeometryQuery.$alignment.modify(uint64_t result)
{
  v1 = (result + 8);
  if (*(result + 12))
  {
    v1 = (result + 16);
  }

  **result = *v1;
  return result;
}

_BYTE *SecondaryLayerGeometryQuery.layoutDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t (*SecondaryLayerGeometryQuery.layoutDirection.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 4);
  *(a1 + 4) = *AGGraphGetValue();
  return SecondaryLayerGeometryQuery.layoutDirection.modify;
}

_DWORD *(*SecondaryLayerGeometryQuery.$layoutDirection.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return SecondaryLayerGeometryQuery.$layoutDirection.modify;
}

void (*SecondaryLayerGeometryQuery.primaryPosition.modify(uint64_t *a1))(_OWORD **a1)
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
  *(v3 + 40) = *(v1 + 8);
  type metadata accessor for CGPoint(0);
  *(v4 + 32) = v5;
  *v4 = *AGGraphGetValue();
  return SecondaryLayerGeometryQuery.primaryPosition.modify;
}

void SecondaryLayerGeometryQuery.primaryPosition.modify(_OWORD **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  AGGraphSetValue();

  free(v1);
}

_DWORD *(*SecondaryLayerGeometryQuery.$primaryPosition.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return _ViewInputs.time.modify;
}

__n128 SecondaryLayerGeometryQuery.primarySize.getter@<Q0>(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  v4 = *(Value + 16);
  *a1 = *Value;
  a1[1] = v4;
  return result;
}

void (*SecondaryLayerGeometryQuery.primarySize.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x44uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = *(v1 + 12);
  Value = AGGraphGetValue();
  v6 = Value[1];
  *v4 = *Value;
  v4[1] = v6;
  return SecondaryLayerGeometryQuery.primarySize.modify;
}

void SecondaryLayerGeometryQuery.primarySize.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v1[2] = *v1;
  v1[3] = v2;
  AGGraphSetValue();

  free(v1);
}

_DWORD *(*SecondaryLayerGeometryQuery.$primarySize.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return SecondaryLayerGeometryQuery.$primarySize.modify;
}

uint64_t SecondaryLayerGeometryQuery.primaryLayoutComputer.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 16) == *MEMORY[0x1E698D3F8])
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(AGGraphGetValue() + 8);
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t SecondaryLayerGeometryQuery.$primaryLayoutComputer.getter()
{
  LODWORD(v1) = *(v0 + 16);
  v2 = v1 == *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t SecondaryLayerGeometryQuery.$primaryLayoutComputer.setter(uint64_t result)
{
  v2 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v2 = result;
  }

  *(v1 + 16) = v2;
  return result;
}

_BYTE *(*SecondaryLayerGeometryQuery.$primaryLayoutComputer.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return SecondaryLayerGeometryQuery.$primaryLayoutComputer.modify;
}

_BYTE *SecondaryLayerGeometryQuery.$primaryLayoutComputer.modify(_BYTE *result)
{
  v1 = result + 8;
  if (result[12])
  {
    v1 = result + 16;
  }

  *(*result + 16) = *v1;
  return result;
}

uint64_t SecondaryLayerGeometryQuery.secondaryLayoutComputer.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 20) == *MEMORY[0x1E698D3F8])
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(AGGraphGetValue() + 8);
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t SecondaryLayerGeometryQuery.$secondaryLayoutComputer.getter()
{
  LODWORD(v1) = *(v0 + 20);
  v2 = v1 == *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

_BYTE *(*SecondaryLayerGeometryQuery.$secondaryLayoutComputer.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 20);
  v3 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v4 = v2 == v3;
  if (v2 == v3)
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  v5 = v4;
  *(a1 + 12) = v5;
  return SecondaryLayerGeometryQuery.$secondaryLayoutComputer.modify;
}

_BYTE *SecondaryLayerGeometryQuery.$secondaryLayoutComputer.modify(_BYTE *result)
{
  v1 = result + 8;
  if (result[12])
  {
    v1 = result + 16;
  }

  *(*result + 20) = *v1;
  return result;
}

void type metadata accessor for _StrokedShape<Rectangle._Inset>()
{
  if (!lazy cache variable for type metadata for _StrokedShape<Rectangle._Inset>)
  {
    lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset();
    v0 = type metadata accessor for _StrokedShape();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _StrokedShape<Rectangle._Inset>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _StrokedShape<Rectangle._Inset> and conformance _StrokedShape<A>()
{
  result = lazy protocol witness table cache variable for type _StrokedShape<Rectangle._Inset> and conformance _StrokedShape<A>;
  if (!lazy protocol witness table cache variable for type _StrokedShape<Rectangle._Inset> and conformance _StrokedShape<A>)
  {
    type metadata accessor for _StrokedShape<Rectangle._Inset>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _StrokedShape<Rectangle._Inset> and conformance _StrokedShape<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SecondaryLayerGeometryQuery(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery();
  *(a1 + 8) = result;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _OverlayModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
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

uint64_t initializeWithTake for _OverlayModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _OverlayModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

void *initializeBufferWithCopyOfBuffer for _OverlayStyleModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 <= 7 && (v5 + 1) <= 0x18 && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));
  }

  return v3;
}

uint64_t initializeWithTake for _OverlayStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *(*(v5 + 32) + a1) = *(*(v5 + 32) + a2);
  return a1;
}

uint64_t assignWithTake for _OverlayStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *(*(v5 + 24) + a1) = *(*(v5 + 24) + a2);
  return a1;
}

uint64_t type metadata completion function for _OverlayShapeModifier()
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

uint64_t *initializeBufferWithCopyOfBuffer for _OverlayShapeModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = v10 + ((v5 + v8) & ~v8) + 2;
  v12 = (*(v4 + 80) | *(v7 + 80));
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *(((v3 + v9) & v16) + v10) = *(v18 + v10);
  }

  return v3;
}

uint64_t initializeWithTake for _OverlayShapeModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *(*(v9 + 32) + v12) = *(*(v9 + 32) + v13);
  return a1;
}

uint64_t assignWithTake for _OverlayShapeModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24);
  v15 = (v14 + v12);
  v16 = (v14 + v13);
  *v15 = *v16;
  v15[1] = v16[1];
  return a1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA16_OverlayModifierVyqd__GGAaBHPxAaBHD1__AgA0cG0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void Font.ResolvedTraits.init(pointSize:weight:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t Font.ResolvedTraits.init(textStyle:weight:dynamicTypeSize:)@<X0>(double a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  specialized Font.TextStyle.ctTextStyle.getter();
  specialized DynamicTypeSize.ctTextSize.getter();
  result = CTFontDescriptorGetTextStyleSize();
  v8 = 0.0;
  if ((a2 & 1) == 0)
  {
    v8 = a1;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t Font.ResolvedTraits.init(textStyle:weight:sizeCategory:)@<X0>(double a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  specialized Font.TextStyle.ctTextStyle.getter();
  specialized DynamicTypeSize.ctTextSize.getter();
  result = CTFontDescriptorGetTextStyleSize();
  v8 = 0.0;
  if ((a2 & 1) == 0)
  {
    v8 = a1;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void Font.ResolvedTraits.init(textStyle:weight:dynamicTypeSize:)(void **a1@<X0>, double a2@<X1>, char a3@<W2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  BYTE8(v13) = 0;
  *&v13 = *a4;
  v9 = specialized DynamicTypeSize.ctTextSize.getter();
  CTFontDescriptorGetTextStyleSize();
  v11 = v10;

  v12 = *(&v13 + 1);
  if ((a3 & 1) == 0)
  {
    v12 = a2;
  }

  *a5 = v11;
  *(a5 + 8) = v12;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
}

uint64_t Font.resolveDescriptor(in:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return (*(*a2 + 96))(v4);
}

uint64_t Font.resolveTraits(in:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return (*(*a2 + 104))(v4);
}

Swift::Int Font.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v3);
  return Hasher._finalize()();
}

uint64_t FontProvider.removing<A>(modifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

uint64_t FontBox.provider.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v4 = *(*v1 + 144);
  a1[3] = v4;
  a1[4] = *(v3 + 152);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_1, &v1[v2], v4);
}

uint64_t Font.FontCache.Key.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  (*(**v1 + 120))();
  if (!(v3 >> 62))
  {
    result = MEMORY[0x193AC11A0](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return Font.Context.hash(into:)(a1);
  }

  v8 = __CocoaSet.count.getter();
  MEMORY[0x193AC11A0](v8);
  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    return Font.Context.hash(into:)(a1);
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      (*(*v7 + 104))(a1);
    }

    return Font.Context.hash(into:)(a1);
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.FontCache.Key()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  Hasher.init(_seed:)();
  (*(*v2 + 120))(v9);
  if (!(v3 >> 62))
  {
    result = MEMORY[0x193AC11A0](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    Font.Context.hash(into:)(v9);
    return Hasher._finalize()();
  }

  v8 = __CocoaSet.count.getter();
  MEMORY[0x193AC11A0](v8);
  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      (*(*v7 + 104))(v9);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t Font.Context.effectiveFont.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Font.Context.fontModifiers.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

Swift::Int Font.Context.hashValue.getter()
{
  Hasher.init(_seed:)();
  Font.Context.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font.Context()
{
  Hasher.init(_seed:)();
  Font.Context.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.Context()
{
  Hasher.init(_seed:)();
  Font.Context.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t Font.platformFont(in:modifiers:overrideContextModifiers:)(__int128 *a1, unint64_t a2, char a3, uint64_t a4)
{
  v6 = a1[2];
  v22 = a1[1];
  v23 = v6;
  v21 = *a1;
  if (a3)
  {
  }

  else
  {
    *&v20[0] = *(&v23 + 1);

    specialized Array.append<A>(contentsOf:)(a2);
    a2 = *(&v23 + 1);
  }

  v12 = v21;
  v13 = v22;
  v14 = v23;
  outlined init with copy of Font.Context(&v21, v20);

  v15[0] = v12;
  v15[1] = v13;
  v7 = MEMORY[0x1E69E7CC0];
  *&v16 = v14;
  *(&v16 + 1) = MEMORY[0x1E69E7CC0];
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v16;
  *&v20[0] = a4;
  *(&v20[0] + 1) = a2;
  outlined init with copy of Font.Context(v15, v17);
  v8 = one-time initialization token for shared;

  if (v8 != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(v20);
  v10 = v9;
  outlined destroy of Font.FontCache.Key(v20);
  v17[0] = v12;
  v17[1] = v13;
  v18 = v14;
  v19 = v7;
  outlined destroy of Font.Context(v17);
  return v10;
}

uint64_t Font.RatioKey.hash(into:)()
{
  v1 = v0[1];
  switch(*v0)
  {
    case 0xB:
    case 0xC:
    case 0xD:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      break;
    default:
      MEMORY[0x193AC11A0]();
      result = MEMORY[0x193AC11A0](v1);
      break;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font.RatioKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 1:
      v1 = 1;
      goto LABEL_12;
    case 2:
      v1 = 2;
      goto LABEL_12;
    case 3:
      v1 = 3;
      goto LABEL_12;
    case 4:
      v1 = 4;
      goto LABEL_12;
    case 5:
      v1 = 5;
      goto LABEL_12;
    case 6:
      v1 = 6;
      goto LABEL_12;
    case 7:
      v1 = 7;
      goto LABEL_12;
    case 8:
      v1 = 8;
      goto LABEL_12;
    case 9:
      v1 = 9;
      goto LABEL_12;
    case 10:
      v1 = 10;
      goto LABEL_12;
    case 11:
    case 12:
    case 13:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
LABEL_12:
      MEMORY[0x193AC11A0](v1);
      MEMORY[0x193AC11A0](v2);
      return Hasher._finalize()();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.RatioKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 1:
      v1 = 1;
      goto LABEL_12;
    case 2:
      v1 = 2;
      goto LABEL_12;
    case 3:
      v1 = 3;
      goto LABEL_12;
    case 4:
      v1 = 4;
      goto LABEL_12;
    case 5:
      v1 = 5;
      goto LABEL_12;
    case 6:
      v1 = 6;
      goto LABEL_12;
    case 7:
      v1 = 7;
      goto LABEL_12;
    case 8:
      v1 = 8;
      goto LABEL_12;
    case 9:
      v1 = 9;
      goto LABEL_12;
    case 10:
      v1 = 10;
      goto LABEL_12;
    case 11:
    case 12:
    case 13:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
LABEL_12:
      MEMORY[0x193AC11A0](v1);
      MEMORY[0x193AC11A0](v2);
      return Hasher._finalize()();
  }
}

uint64_t Font.Context.debugDescription.getter()
{
  v1 = *(v0 + 25);
  _StringGuts.grow(_:)(140);
  MEMORY[0x193ABEDD0](0xD000000000000020, 0x800000018DD794C0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD794F0);
  type metadata accessor for LegibilityWeight?();
  v2 = Optional.debugDescription.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD79510);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD79530);
  MEMORY[0x193ABEDD0](45, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD79550);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v3, v4);

  MEMORY[0x193ABEDD0](10506, 0xE200000000000000);
  return 0;
}

CTFontDescriptorRef __swiftcall Font.resolve(in:)(SwiftUI::DynamicTypeSize in)
{
  v2 = v1;
  v3 = *in;
  EnvironmentValues.init()(v13);
  v4 = v13[0];
  if (v13[1])
  {

    v5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV013EffectiveFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v4);
  }

  else
  {
    v10 = v13[0];

    v5 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(&v10);
  }

  LOBYTE(v10) = v3;
  BYTE1(v10) = 2;
  *(&v10 + 1) = &type metadata for DefaultFontDefinition;
  *&v11 = &protocol witness table for DefaultFontDefinition;
  WORD4(v11) = 2;
  *&v12 = v5;
  *(&v12 + 1) = MEMORY[0x1E69E7CC0];
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  v6 = *(*v2 + 96);

  v7 = v6(v9);

  outlined destroy of Font.Context(&v10);
  return v7;
}

uint64_t Font.CodingProxy.base.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Font.CodingProxy.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c4FontE0C_Tt1g5(a1);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Font.CodingProxy@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = _s7SwiftUI13AnyCodableBoxPAAE6decode4from0E0Qzs7Decoder_p_tKFZAA0c4FontE0C_Tt1g5(a1);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV012FallbackFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(unint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v15[0] = _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>, lazy protocol witness table accessor for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey);
  v6 = v5;
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v15);
    outlined init with take of AnyTrackedValue(v15, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (v11[1])(v15, &type metadata for Font, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    *&v15[0] = _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(a1);
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>>();
    v17 = v12;
    v18 = &protocol witness table for DerivedValue<A>;
    v16[0] = *&v15[0];

    specialized Dictionary.subscript.setter(v16, v6);
  }

LABEL_9:
  v13 = *&v15[0];
  os_unfair_lock_unlock((v3 + 16));

  return v13;
}

double _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesVAAE013ReadableWidthJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v17 = *&a1;
    v18 = 0;

    v12 = specialized static EnvironmentValues.ReadableWidthKey.value(in:)(&v17);

    *v16 = v12;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>, lazy protocol witness table accessor for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey);
  v6 = v5;
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v16);
    outlined init with take of AnyTrackedValue(v16, &v17);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v17, v19);
    (v11[1])(v16, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v17 = *&a1;
    v18 = 0;

    v13 = specialized static EnvironmentValues.ReadableWidthKey.value(in:)(&v17);

    *v16 = v13;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>>();
    v19 = v14;
    v20 = &protocol witness table for DerivedValue<A>;
    v17 = v13;
    specialized Dictionary.subscript.setter(&v17, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *v16;
}

void protocol witness for FontProvider.resolveTraits(in:) in conformance Font.NamedProvider(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v12 = *(a1 + 3);
  v13 = a1[5];
  v7 = *v2;
  v8 = *(v2 + 1);
  v9 = v2[2];
  v14 = *(v2 + 24);
  v11[0] = v5;
  v11[1] = v4;
  v11[2] = v6;
  v10 = (*(v6 + 32))(COERCE_DOUBLE(*&v7), v8, &v14, v11, v9);

  Font.ResolvedTraits.init(_:)(v10, a2);
}

uint64_t specialized static Font.RatioKey.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = 1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  switch(v2)
  {
    case 1:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 1;
      goto LABEL_12;
    case 2:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v16 = 0;
      v6 = 0;
      v15 = 1;
      goto LABEL_12;
    case 3:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v14 = 1;
      goto LABEL_12;
    case 4:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v13 = 1;
      goto LABEL_12;
    case 5:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v12 = 1;
      goto LABEL_12;
    case 6:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v11 = 1;
      goto LABEL_12;
    case 7:
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v10 = 1;
      goto LABEL_12;
    case 8:
      v7 = 0;
      v8 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v9 = 1;
      goto LABEL_12;
    case 9:
      v7 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v8 = 1;
      goto LABEL_12;
    case 10:
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v6 = 0;
      v7 = 1;
      goto LABEL_12;
    case 11:
    case 12:
    case 13:
LABEL_35:
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    default:
LABEL_12:
      switch(v4)
      {
        case 1:
          if ((v16 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        case 2:
          if (v15)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 3:
          if (v14)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 4:
          if (v13)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 5:
          if (v12)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 6:
          if (v11)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 7:
          if (v10)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 8:
          if (v9)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 9:
          if ((v8 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        case 10:
          if (v7)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        case 11:
        case 12:
        case 13:
          goto LABEL_35;
        default:
          if (v6)
          {
LABEL_16:
            result = v3 == v5;
          }

          else
          {
LABEL_18:
            result = 0;
          }

          break;
      }

      return result;
  }
}

void type metadata accessor for LegibilityWeight?()
{
  if (!lazy cache variable for type metadata for LegibilityWeight?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LegibilityWeight?);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for Font.CodingProxy(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Font.CodingProxy and conformance Font.CodingProxy();
  result = lazy protocol witness table accessor for type Font.CodingProxy and conformance Font.CodingProxy();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Font.CodingProxy and conformance Font.CodingProxy()
{
  result = lazy protocol witness table cache variable for type Font.CodingProxy and conformance Font.CodingProxy;
  if (!lazy protocol witness table cache variable for type Font.CodingProxy and conformance Font.CodingProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.CodingProxy and conformance Font.CodingProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.CodingProxy and conformance Font.CodingProxy;
  if (!lazy protocol witness table cache variable for type Font.CodingProxy and conformance Font.CodingProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.CodingProxy and conformance Font.CodingProxy);
  }

  return result;
}

uint64_t destroy for Font.Context()
{
}

uint64_t assignWithCopy for Font.Context(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for Font.Context(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for Font.FontCache.Key(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for Font.FontCache.Key(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t specialized static Font.FontCache.Key.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v25[0] = *(a1 + 1);
  v25[1] = v6;
  v7 = *(a1 + 3);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v25[2] = v7;
  v26[0] = v10;
  v12 = *(a2 + 3);
  v26[1] = v11;
  v26[2] = v12;
  if ((*(*v4 + 112))(v8) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(v5, v9))
  {
    v13 = *(a1 + 2);
    v20 = *(a1 + 1);
    v21 = v13;
    v22 = *(a1 + 3);
    v14 = *(a2 + 2);
    v17 = *(a2 + 1);
    v18 = v14;
    v19 = *(a2 + 3);
    outlined init with copy of Font.Context(v25, v24);
    outlined init with copy of Font.Context(v26, v24);
    v15 = specialized static Font.Context.== infix(_:_:)(&v20, &v17);
    v23[0] = v17;
    v23[1] = v18;
    v23[2] = v19;
    outlined destroy of Font.Context(v23);
    v24[0] = v20;
    v24[1] = v21;
    v24[2] = v22;
    outlined destroy of Font.Context(v24);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey);
  }

  return result;
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>>()
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>, lazy protocol witness table accessor for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey);
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v0 = type metadata accessor for DerivedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey> and conformance DerivedEnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>, lazy protocol witness table accessor for type EnvironmentValues.ReadableWidthKey and conformance EnvironmentValues.ReadableWidthKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized Font.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FontBox();
  (*(v4 + 16))(v6, a1, a2);
  return FontBox.__allocating_init(_:)(v6);
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey);
  }

  return result;
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>>()
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>, lazy protocol witness table accessor for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey);
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v0 = type metadata accessor for DerivedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey> and conformance DerivedEnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey>, lazy protocol witness table accessor for type EnvironmentValues.FallbackFontKey and conformance EnvironmentValues.FallbackFontKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.FallbackFontKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Font.RatioKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 65291 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65291 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65291;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65291;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65291;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Font.RatioKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65291 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65291 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 16) + 1;
    *result = a2 - 245;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.Fill(_OWORD *a1, _OWORD *a2)
{
  v3[0] = *a1;
  *(v3 + 12) = *(a1 + 12);
  v4[0] = *a2;
  *(v4 + 12) = *(a2 + 12);
  return specialized static SDFStyle.Fill.== infix(_:_:)(v3, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.Stroke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static SDFStyle.Stroke.== infix(_:_:)(v5, v7);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.Gradient(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorVACE11ResolvedHDRV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZs5SIMD4VySfG_Tt1g5(v3, v5);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.Shadow(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  return specialized static SDFStyle.Shadow.== infix(_:_:)(v5, v7) & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.GlassHighlight(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static SDFStyle.GlassHighlight.== infix(_:_:)(v7, v9) & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SDFStyle.Mask(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((static SDFStyle.== infix(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return static SDFStyle.== infix(_:_:)(v2, v3);
}

void SDFStyle.encode(to:)(uint64_t a1, unint64_t a2)
{
  v8 = a2 >> 60;
  if ((a2 >> 60) <= 4)
  {
    if (v8 <= 1)
    {
      v9 = v2;
      if (v8)
      {
        v35 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v52[2] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v52[3] = v35;
        v53 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        ProtobufEncoder.encodeVarint(_:)(0x12uLL);
        v12 = *(a1 + 8);
        v13 = *(a1 + 24);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_51:
          v37 = *(v13 + 2);
          v36 = *(v13 + 3);
          if (v37 >= v36 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v13);
          }

          *(v13 + 2) = v37 + 1;
          *&v13[8 * v37 + 32] = v12;
          *(a1 + 24) = v13;
          if (!__OFADD__(v12, 1))
          {
            *(a1 + 8) = v12 + 1;
            SDFStyle.Stroke.encode(to:)(a1);
            if (v9)
            {
              return;
            }

            goto LABEL_62;
          }

          __break(1u);
LABEL_73:
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_6:
          v15 = *(v13 + 2);
          v14 = *(v13 + 3);
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
          }

          *(v13 + 2) = v16;
          *&v13[8 * v15 + 32] = v12;
          *(a1 + 24) = v13;
          if (!__OFADD__(v12, 1))
          {
            *(a1 + 8) = v12 + 1;
            SDFStyle.GlassHighlight.encode(to:)(a1);
            if (v9)
            {
              return;
            }

            goto LABEL_62;
          }

          __break(1u);
LABEL_75:
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
          goto LABEL_23;
        }

LABEL_71:
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
        goto LABEL_51;
      }

      v52[0] = *(a2 + 16);
      *(v52 + 12) = *(a2 + 28);
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_31:
        v26 = *(v13 + 2);
        v25 = *(v13 + 3);
        if (v26 >= v25 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v13);
        }

        *(v13 + 2) = v26 + 1;
        *&v13[8 * v26 + 32] = v12;
        *(a1 + 24) = v13;
        if (!__OFADD__(v12, 1))
        {
          *(a1 + 8) = v12 + 1;
          SDFStyle.Fill.encode(to:)(a1);
          if (v9)
          {
            return;
          }

          goto LABEL_62;
        }

        __break(1u);
        goto LABEL_71;
      }

LABEL_69:
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      goto LABEL_31;
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        return;
      }

      v9 = v2;
      v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v54 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v55 = v17;
      v56[0] = v18;
      *(v56 + 10) = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x3A);
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_15;
      }

      goto LABEL_67;
    }

    v27 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    v3 = *(a1 + 8);
    v13 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    }

    v28 = *(v13 + 2);
    v29 = *(v13 + 3);
    v30 = v28 + 1;
    if (v28 >= v29 >> 1)
    {
      v65 = v28 + 1;
      v45 = v13;
      v46 = v28;
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v28 + 1, 1, v45);
      v28 = v46;
      v30 = v65;
      v13 = v47;
    }

    *(v13 + 2) = v30;
    *&v13[8 * v28 + 32] = v3;
    *(a1 + 24) = v13;
    if (!__OFADD__(v3, 1))
    {
      *(a1 + 8) = v3 + 1;
      SDFStyle.Gradient.encode(to:)(a1, v27, v9, v12);

      if (v2)
      {
        return;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_65:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_44:
    v33 = *(v13 + 2);
    v32 = *(v13 + 3);
    if (v33 >= v32 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v13);
    }

    *(v13 + 2) = v33 + 1;
    *&v13[8 * v33 + 32] = v12;
    *(a1 + 24) = v13;
    if (!__OFADD__(v12, 1))
    {
      *(a1 + 8) = v12 + 1;
      SDFStyle.GlassDisplacement.encode(to:)(a1);
      if (v9)
      {
        return;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_67:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_15:
    v20 = *(v13 + 2);
    v19 = *(v13 + 3);
    if (v20 >= v19 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v13);
    }

    *(v13 + 2) = v20 + 1;
    *&v13[8 * v20 + 32] = v12;
    *(a1 + 24) = v13;
    if (!__OFADD__(v12, 1))
    {
      *(a1 + 8) = v12 + 1;
      SDFStyle.Shadow.encode(to:)(a1);
      if (v9)
      {
        return;
      }

      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_69;
  }

  if (v8 <= 7)
  {
    if (v8 != 5)
    {
      if (v8 != 6)
      {
        v38 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v61[8] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v61[9] = v38;
        v62 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
        v39 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v61[4] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v61[5] = v39;
        v40 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v61[6] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v61[7] = v40;
        v41 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v61[2] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v61[3] = v41;
        specialized ProtobufEncoder.messageField<A>(_:_:)(10);
        return;
      }

      v9 = v2;
      v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v60 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v61[0] = v10;
      *(v61 + 9) = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x49);
      v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v58 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v59 = v11;
      ProtobufEncoder.encodeVarint(_:)(0x32uLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_73;
    }

    v9 = v2;
    v31 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v56[2] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v56[3] = v31;
    v57 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
    v12 = *(a1 + 8);
    v13 = *(a1 + 24);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_44;
    }

    goto LABEL_65;
  }

  if (v8 == 8)
  {
    v34 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v63[0] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v63[1] = v34;
    v64 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    outlined init with copy of SDFStyle.Group(v63, v51);
    specialized ProtobufEncoder.messageField<A>(_:_:)(7);
    outlined destroy of SDFStyle.Group(v63);
    return;
  }

  v15 = v2;
  if (v8 != 9)
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
    v9 = *(a1 + 8);
    v13 = *(a1 + 24);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_58;
    }

    goto LABEL_77;
  }

  v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

  ProtobufEncoder.encodeVarint(_:)(0x42uLL);
  v3 = *(a1 + 8);
  v13 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_23:
  v21 = v15;
  v22 = *(v13 + 2);
  v23 = *(v13 + 3);
  v24 = v22 + 1;
  if (v22 >= v23 >> 1)
  {
    v48 = v13;
    v49 = *(v13 + 2);
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v22 + 1, 1, v48);
    v22 = v49;
    v21 = v15;
    v13 = v50;
  }

  *(v13 + 2) = v24;
  *&v13[8 * v22 + 32] = v3;
  *(a1 + 24) = v13;
  if (!__OFADD__(v3, 1))
  {
    *(a1 + 8) = v3 + 1;
    SDFStyle.Mask.encode(to:)(a1, v16, v9);
    if (!v21)
    {
      ProtobufEncoder.endLengthDelimited()();
    }

    return;
  }

  __break(1u);
LABEL_77:
  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
LABEL_58:
  v42 = v15;
  v44 = *(v13 + 2);
  v43 = *(v13 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = v15;
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v13);
  }

  *(v13 + 2) = v44 + 1;
  *&v13[8 * v44 + 32] = v9;
  *(a1 + 24) = v13;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    return;
  }

  *(a1 + 8) = v9 + 1;
  SDFStyle.OutputSDF.encode(to:)(a1, v4, v5, v6);
  if (!v42)
  {
LABEL_62:
    ProtobufEncoder.endLengthDelimited()();
  }
}

char *protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = specialized SDFStyle.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SDFStyle.OutputSDF.encode(to:)(void *a1, double a2, double a3, double a4)
{
  if (a2 == 0.0)
  {
    goto LABEL_12;
  }

  v8 = a2;
  v9 = fabs(a2);
  if (v9 >= 65536.0)
  {
    v10 = 9;
  }

  else
  {
    v10 = 13;
  }

  ProtobufEncoder.encodeVarint(_:)(v10);
  if (v9 >= 65536.0)
  {
    v13 = a1[1];
    v12 = v13 + 8;
    if (!__OFADD__(v13, 8))
    {
      if (a1[2] < v12)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v12) = v8;
      }

      else
      {
        a1[1] = v12;
        *(*a1 + v13) = v8;
      }

      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v11 = a1[1];
  v12 = v11 + 4;
  if (__OFADD__(v11, 4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *&v8 = v8;
  if (a1[2] >= v12)
  {
    a1[1] = v12;
    *(*a1 + v11) = LODWORD(v8);
    goto LABEL_12;
  }

LABEL_17:
  *ProtobufEncoder.growBufferSlow(to:)(v12) = LODWORD(v8);
LABEL_12:
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  result = specialized ProtobufEncoder.binaryPlistData<A>(for:)(a3, a4);
  if (!v4)
  {
    v16 = result;
    v17 = v15;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(result, v15);
    return outlined consume of Data._Representation(v16, v17);
  }

  return result;
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.OutputSDF@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized SDFStyle.OutputSDF.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
  }

  return result;
}

int64_t SDFStyle.Fill.encode(to:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 != 0.0)
  {
    v4 = fabs(v3);
    if (v4 >= 65536.0)
    {
      v5 = 9;
    }

    else
    {
      v5 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v5);
    if (v4 >= 65536.0)
    {
      v8 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v8 + 8;
      if (__OFADD__(v8, 8))
      {
        goto LABEL_20;
      }

      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v3;
      }

      else
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v8) = v3;
      }
    }

    else
    {
      v6 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v6 + 4;
      if (__OFADD__(v6, 4))
      {
        goto LABEL_19;
      }

      *&v3 = v3;
      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      *(a1 + 8) = isUniquelyReferenced_nonNull_native;
      *(*a1 + v6) = LODWORD(v3);
    }
  }

  while (1)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + 8 * v12 + 32) = v9;
    *(a1 + 24) = v10;
    if (!__OFADD__(v9, 1))
    {
      break;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v3);
  }

  *(a1 + 8) = v9 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  return ProtobufEncoder.endLengthDelimited()();
}

double protocol witness for ProtobufDecodableMessage.init(from:) in conformance SDFStyle.Fill@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  specialized SDFStyle.Fill.init(from:)(a1, v5);
  if (!v2)
  {
    *a2 = v5[0];
    result = *(v5 + 12);
    *(a2 + 12) = *(v5 + 12);
  }

  return result;
}

int64_t SDFStyle.Stroke.encode(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (*v1 != 0.0)
  {
    v5 = fabs(v4);
    if (v5 >= 65536.0)
    {
      v6 = 9;
    }

    else
    {
      v6 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v6);
    if (v5 >= 65536.0)
    {
      v9 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v9 + 8;
      if (__OFADD__(v9, 8))
      {
        goto LABEL_31;
      }

      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v4;
      }

      else
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v9) = v4;
      }
    }

    else
    {
      v7 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v7 + 4;
      if (__OFADD__(v7, 4))
      {
        goto LABEL_30;
      }

      *&v4 = v4;
      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = isUniquelyReferenced_nonNull_native;
      *(*a1 + v7) = LODWORD(v4);
    }
  }

  while (1)
  {
    v4 = v2[1];
    if (v4 == 0.0)
    {
      goto LABEL_23;
    }

    v10 = fabs(v4);
    if (v10 >= 65536.0)
    {
      v11 = 17;
    }

    else
    {
      v11 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v11);
    if (v10 < 65536.0)
    {
      v12 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v12 + 4;
      if (!__OFADD__(v12, 4))
      {
        *&v4 = v4;
        if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v4);
        }

        else
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v12) = LODWORD(v4);
        }

        goto LABEL_23;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v13 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v13 + 8;
    if (!__OFADD__(v13, 8))
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v4);
  }

  if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
  {
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v4;
  }

  else
  {
    *(a1 + 8) = isUniquelyReferenced_nonNull_native;
    *(*a1 + v13) = v4;
  }

LABEL_23:
  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v14 = *(a1 + 8);
  v15 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    v15 = isUniquelyReferenced_nonNull_native;
  }

  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  v2 = (v17 + 1);
  if (v17 >= v16 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
    v15 = isUniquelyReferenced_nonNull_native;
  }

  *(v15 + 16) = v2;
  *(v15 + 8 * v17 + 32) = v14;
  *(a1 + 24) = v15;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(a1 + 8) = v14 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  return ProtobufEncoder.endLengthDelimited()();
}