void (*ArrayWith2Inline.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  ArrayWith2Inline.subscript.getter(a2, a3, v13);
  return ArrayWith2Inline.subscript.modify;
}

void ArrayWith2Inline.subscript.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    ArrayWith2Inline.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ArrayWith2Inline.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Int __swiftcall ArrayWith2Inline.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ArrayWith2Inline.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t ArrayWith2Inline._copyToContiguousArray()(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for LazySequence();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = *(a1 + 16);
  v14 = type metadata accessor for LazyMapSequence();
  MEMORY[0x1EEE9AC00](v14);
  v8 = type metadata accessor for ArrayWith2Inline.Storage();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v1, v8, v10);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return ContiguousArray._copyToContiguousArray()();
  }

  (*(v9 + 8))(v12, v8);
  MEMORY[0x193ABEFB0](a1, WitnessTable);
  *(swift_allocObject() + 16) = v7;
  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  (*(v15 + 8))(v6, v4);
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>(void *a1, uint64_t *a2, uint64_t a3))()
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
  v6[4] = ArrayWith2Inline.subscript.modify(v6, *a2, a3);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance ArrayWith2Inline<A>(uint64_t a1)
{
  specialized MutableCollection<>.subscript.setter();
  swift_getWitnessTable();
  v2 = type metadata accessor for Slice();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance ArrayWith2Inline<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ArrayWith2Inline.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
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
  v6[4] = ArrayWith2Inline.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

void (*ArrayWith2Inline.subscript.read(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  ArrayWith2Inline.subscript.getter(a2, a3, v9);
  return ArrayWith2Inline.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance ArrayWith2Inline<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MutableCollection<>.subscript.getter(a1, a2, WitnessTable, a3);
}

uint64_t protocol witness for Collection.indices.getter in conformance ArrayWith2Inline<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ArrayWith2Inline<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = type metadata accessor for IndexingIterator();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ArrayWith2Inline<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ArrayWith2Inline<A>(uint64_t a1)
{
  v3 = ArrayWith2Inline._copyToContiguousArray()(a1);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

unint64_t ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:)@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a1;
  v90 = a2;
  v85 = a5;
  v96 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = *(TupleTypeMetadata2 - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v81 = &v72 - v8;
  v86 = a4;
  v82 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v72 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  v89 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - v21;
  v23 = type metadata accessor for ArrayWith2Inline.Storage();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = (&v72 - v25);
  v28 = v27;
  v29 = *(v27 + 16);
  v88 = v5;
  v29(&v72 - v25, v5, v23, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v94 = UnsafeMutableBufferPointer.init(start:count:)();
      v95 = v67;
      return v91(&v94);
    }

    v93 = *v26;
    v38 = *(v28 + 8);
    v39 = v88;
    v38(v88, v23);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v40 = v92;
    v41 = *(v93 + 16);
    v42 = v93 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
    v94 = v42;
    v95 = v41;
    v43 = v80;
    v91(&v94);
    result = type metadata accessor for Error();
    if (v40)
    {
      if (v94)
      {
        if (v42 == v94)
        {
          if (v95 == v41)
          {
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (v94)
    {
      if (v42 == v94)
      {
        v68 = v86;
        if (v95 == v41)
        {
          v38(v39, v23);
          *v39 = v93;
          swift_storeEnumTagMultiPayload();
          return (*(v82 + 32))(v85, v43, v68);
        }

LABEL_25:
        __break(1u);
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload)
  {
    v44 = TupleTypeMetadata2;
    v80 = *(TupleTypeMetadata2 + 12);
    v45 = v89;
    v46 = v89 + 32;
    v47 = *(v89 + 32);
    v48 = v84;
    v47(v84, v26, v7);
    v49 = v26 + v80;
    v80 = v23;
    v50 = v79;
    v76 = v46;
    v75 = v47;
    v47(v79, v49, v7);
    v51 = v45;
    v52 = v48;
    v53 = *(v44 + 48);
    v54 = *(v45 + 16);
    v55 = v81;
    v54(v81, v52, v7);
    v74 = v53;
    v56 = (v55 + v53);
    v57 = v50;
    v58 = v80;
    v54(v56, v57, v7);
    v59 = v88;
    v73 = *(v28 + 8);
    v73(v88, v58);
    v60 = swift_storeEnumTagMultiPayload();
    v77 = &v72;
    MEMORY[0x1EEE9AC00](v60);
    v61 = v86;
    *(&v72 - 4) = v7;
    *(&v72 - 3) = v61;
    v62 = v90;
    *(&v72 - 2) = v91;
    *(&v72 - 1) = v62;
    v63 = type metadata accessor for Error();
    v64 = TupleTypeMetadata2;
    v65 = v92;
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v55, partial apply for closure #2 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:), (&v72 - 6), TupleTypeMetadata2, v63, v61, MEMORY[0x1E69E7288], &v94);
    if (v65)
    {
      (*(v78 + 8))(v55, v64);
      v66 = *(v51 + 8);
      v66(v57, v7);
      return (v66)(v84, v7);
    }

    else
    {
      v69 = *(v51 + 8);
      v92 = 0;
      v69(v57, v7);
      v69(v84, v7);
      v73(v59, v58);
      v70 = *(TupleTypeMetadata2 + 12);
      v71 = v75;
      v75(v59, v55, v7);
      v71(&v59[v70], v55 + v74, v7);
      swift_storeEnumTagMultiPayload();
      return (*(v82 + 32))(v85, v83, v61);
    }
  }

  else
  {
    v84 = *(v89 + 32);
    (v84)(v22, v26, v7);
    v31 = v88;
    v83 = *(v28 + 8);
    (v83)(v88, v23);
    v32 = swift_storeEnumTagMultiPayload();
    TupleTypeMetadata2 = &v72;
    MEMORY[0x1EEE9AC00](v32);
    v33 = v86;
    *(&v72 - 4) = v7;
    *(&v72 - 3) = v33;
    v34 = v90;
    *(&v72 - 2) = v91;
    *(&v72 - 1) = v34;
    v35 = type metadata accessor for Error();
    v36 = v92;
    _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, partial apply for closure #1 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:), (&v72 - 6), v7, v35, v33, MEMORY[0x1E69E7288], &v94);
    if (v36)
    {
      return (*(v89 + 8))(v22, v7);
    }

    else
    {
      (v83)(v31, v23);
      (v84)(v31, v22, v7);
      swift_storeEnumTagMultiPayload();
      return (*(v82 + 32))(v85, v15, v33);
    }
  }
}

uint64_t closure #2 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Error();
  result = _sSpsRi_zrlE17withMemoryRebound2to8capacity_qd_1_qd__m_Siqd_1_Spyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lF(a4, 2, partial apply for closure #1 in closure #2 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:), v14, a1, TupleTypeMetadata2, a4, v12, a5, MEMORY[0x1E69E7288], &v19);
  if (v6)
  {
    *a6 = v19;
  }

  return result;
}

uint64_t ArrayWith2Inline.append(_:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for ArrayWith2Inline.Storage();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v38 - v18);
  (*(v13 + 16))(&v38 - v18, v3, v12, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v43 = *v19;
      v22 = *(v13 + 8);
      v22(v3, v12);
      swift_storeEnumTagMultiPayload();
      (*(v6 + 16))(v11, a1, v5);
      type metadata accessor for ContiguousArray();
      ContiguousArray.append(_:)();
      v22(v3, v12);
      *v3 = v43;
    }

    else
    {
      (*(v13 + 8))(v3, v12);
      (*(v6 + 16))(v3, a1, v5);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v24 = v11;
      v41 = v15;
      v42 = v11;
      v25 = *(TupleTypeMetadata2 + 48);
      v40 = a1;
      v26 = *(v6 + 32);
      v26(v24, v19, v5);
      v26(v8, (v19 + v25), v5);
      getContiguousArrayStorageType<A>(for:)(v5, v5);
      v27 = *(v6 + 72);
      v39 = 2 * v27;
      swift_allocObject();
      v38 = static Array._adoptStorage(_:count:)();
      v29 = v28;
      v30 = *(v6 + 16);
      v30(v28, v42, v5);
      v30(v29 + v27, v8, v5);
      v30(v29 + v39, v40, v5);
      v43 = v38;
      v31 = type metadata accessor for Array();
      _ViewInputs.base.modify(v31, v32);
      v33 = MEMORY[0x193AC0510](v43, v5);
      v34 = *(v6 + 8);
      v34(v8, v5);
      v34(v42, v5);
      v35 = v41;
      *v41 = v33;
      v36 = v35;
      swift_storeEnumTagMultiPayload();
      return (*(v13 + 40))(v3, v36, v12);
    }

    (*(v13 + 8))(v3, v12);
    v21 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v6 + 32))(v3, v19, v5);
    (*(v6 + 16))(v3 + v21, a1, v5);
  }

  return swift_storeEnumTagMultiPayload();
}

Swift::Void __swiftcall ArrayWith2Inline.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for ArrayWith2Inline.Storage();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v18 - v14);
  if (a1 >= 3)
  {
    (*(v12 + 16))(v15, v3, v11, v13);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v16 = MEMORY[0x193AC05D0](*v15, v10);

      if (v16 >= a1)
      {
        return;
      }
    }

    else
    {
      (*(v12 + 8))(v15, v11);
    }

    v17 = static Array._allocateUninitialized(_:)();
    v19 = MEMORY[0x193AC0510](v17, v10);
    type metadata accessor for ContiguousArray();
    ContiguousArray.reserveCapacity(_:)(a1);
    (*(v6 + 16))(v8, v3, v4);
    swift_getWitnessTable();
    ContiguousArray.append<A>(contentsOf:)();
    (*(v12 + 8))(v3, v11);
    *v3 = v19;
    swift_storeEnumTagMultiPayload();
  }
}

Swift::Void __swiftcall ArrayWith2Inline.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v2 = v1;
  v4 = type metadata accessor for ArrayWith2Inline.Storage();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v11 - v7);
  (*(v5 + 16))(&v11 - v7, v1, v4, v6);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v12 = *v8;
    if (keepingCapacity)
    {
      v9 = *(v5 + 8);
      v9(v1, v4);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ContiguousArray();
      ContiguousArray.removeAll(keepingCapacity:)(1);
      v9(v1, v4);
      *v1 = v12;
    }

    else
    {

      (*(v5 + 8))(v1, v4);
    }
  }

  else
  {
    v10 = *(v5 + 8);
    v10(v8, v4);
    v10(v2, v4);
  }

  swift_storeEnumTagMultiPayload();
}

uint64_t ArrayWith2Inline.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a1;
  v66 = a3;
  v69 = a2;
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Slice();
  v11 = swift_getWitnessTable();
  v68 = a6;
  v12 = type metadata accessor for ConcatenatedCollection();
  v71 = v12;
  v72 = v10;
  v56 = swift_getWitnessTable();
  v73 = v56;
  v74 = v11;
  v64 = v11;
  v57 = type metadata accessor for ConcatenatedCollection();
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v50 - v13;
  v62 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v61 = (&v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v50 - v17;
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v50 - v21;
  v67 = a5;
  v22 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 24);
  v28 = type metadata accessor for ArrayWith2Inline.Storage();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v31 = v6;
  v33 = (&v50 - v32);
  v34 = v31;
  (*(v29 + 16))(v30);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v71 = *v33;
    v35 = *(v29 + 8);
    v35(v34, v28);
    swift_storeEnumTagMultiPayload();
    (*(v22 + 16))(v25, v66, v67);
    type metadata accessor for ContiguousArray();
    ContiguousArray.replaceSubrange<A>(_:with:)();
    v35(v34, v28);
    *v34 = v71;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v51 = v33;
    v50 = v29;
    v52 = v27;
    v53 = v12;
    v71 = v65;
    v37 = MEMORY[0x1E69E6D20];
    type metadata accessor for PartialRangeUpTo<Int>(0, &lazy cache variable for type metadata for PartialRangeUpTo<Int>, MEMORY[0x1E69E6D20]);
    swift_getWitnessTable();
    lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>, &lazy cache variable for type metadata for PartialRangeUpTo<Int>, v37);
    v38 = v63;
    MutableCollection.subscript.getter();
    concatenate<A, B>(_:_:)(v38, v66, v10, v67, v70);
    v39 = *(v58 + 8);
    v39(v38, v10);
    v40 = a4;
    if (Collection.count.getter() == v69)
    {
      v41 = v60;
      v42 = v54;
      v43 = v53;
      (*(v60 + 16))(v54, v70, v53);
      swift_getWitnessTable();
      v44 = v61;
      ArrayWith2Inline.init<A>(_:)(v42, v52, v43, v61);
    }

    else
    {
      v71 = v69;
      v45 = MEMORY[0x1E69E6D08];
      type metadata accessor for PartialRangeUpTo<Int>(0, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
      lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>(&lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>, &lazy cache variable for type metadata for PartialRangeFrom<Int>, v45);
      v46 = v63;
      MutableCollection.subscript.getter();
      v47 = v55;
      v43 = v53;
      concatenate<A, B>(_:_:)(v70, v46, v53, v10, v55);
      v39(v46, v10);
      v48 = v57;
      swift_getWitnessTable();
      v44 = v61;
      ArrayWith2Inline.init<A>(_:)(v47, v52, v48, v61);
      v41 = v60;
    }

    v49 = v50;
    (*(v41 + 8))(v70, v43);
    (*(v62 + 40))(v34, v44, v40);
    return (*(v49 + 8))(v51, v28);
  }
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance ArrayWith2Inline<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ArrayWith2Inline.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance ArrayWith2Inline<A>(char *a1, uint64_t a2)
{
  ArrayWith2Inline.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t static ArrayWith2Inline<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v61 = a1;
  v62 = a2;
  v59 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v51 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v51 - v14;
  v60 = v15;
  v16 = type metadata accessor for ArrayWith2Inline.Storage();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  v28 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v30 = &v51 - v29;
  v32 = &v51 + *(v31 + 48) - v29;
  v58 = v17;
  v33 = *(v17 + 16);
  v33(&v51 - v29, v61, v16, v28);
  (v33)(v32, v62, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (v33)(v19, v30, v16);
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_15;
      }

      v35 = static ContiguousArray<A>.== infix(_:_:)();
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_15;
      }

      v35 = 1;
    }

LABEL_20:
    v27 = v58;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload)
  {
    (v33)(v22, v30, v16);
    v36 = v60;
    v37 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v42 = *(v59 + 8);
      v42(&v22[v37], v36);
      v42(v22, v36);
      goto LABEL_15;
    }

    v38 = v59;
    v39 = *(v59 + 32);
    v39(v57, v22, v36);
    v39(v54, v32, v36);
    v39(v55, &v22[v37], v36);
    v40 = v53;
    v39(v53, &v32[v37], v36);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v41 = v55;
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v35 = 0;
      v41 = v55;
    }

    v49 = *(v38 + 8);
    v49(v40, v36);
    v49(v41, v36);
    v49(v54, v36);
    v49(v57, v36);
    goto LABEL_20;
  }

  (v33)(v25, v30, v16);
  if (!swift_getEnumCaseMultiPayload())
  {
    v44 = v59;
    v43 = v60;
    v45 = *(v59 + 32);
    v46 = v51;
    v45(v51, v25, v60);
    v47 = v52;
    v45(v52, v32, v43);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48 = *(v44 + 8);
    v48(v47, v43);
    v48(v46, v43);
    goto LABEL_20;
  }

  (*(v59 + 8))(v25, v60);
LABEL_15:
  v35 = 0;
  v16 = TupleTypeMetadata2;
LABEL_21:
  (*(v27 + 8))(v30, v16);
  return v35 & 1;
}

uint64_t ArrayWith2Inline.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  v7[2] = a2;
  v4 = type metadata accessor for ArrayWith2Inline();
  _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ArrayWith2Inline.init(arrayLiteral:), v7, a1, a2, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410], v5);
}

uint64_t closure #1 in ArrayWith2Inline.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = type metadata accessor for UnsafeBufferPointer();
  swift_getWitnessTable();
  return ArrayWith2Inline.init<A>(_:)(v8, a3, v6, a4);
}

uint64_t _sSa23withUnsafeBufferPointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v14, v15, v16, v17, v18, v19, v20, v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a6);
  }

  return result;
}

void getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
  }

  else
  {

    type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t _ss12_ArrayBufferV010withUnsafeB7Pointeryqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v29 = a1;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v25 = v30;
    result = _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v29, a2, a3, a4, a5, a6, v27, v18);
    v15 = v18;
    if (v25)
    {
      return (*(v13 + 32))(v28, v15, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v19 = (((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v19 = (a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v21 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v21 = a3;
      }

      v22 = *(v21 + 16);
    }

    v23 = v30;
    result = v29(v19, v22, v15);
    if (v23)
    {
      return (*(v13 + 32))(v28, v15, a6);
    }
  }

  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedObject = _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(v14);
  v16 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v17 = *(AssociatedObject + 2);

  v18 = v22;
  result = a1(&AssociatedObject[v16], v17, v13);
  if (v18)
  {
    return (*(v11 + 32))(v21, v13, a6);
  }

  return result;
}

void *_ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v3 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v1);
    v4 = objc_getAssociatedObject(v1, MEMORY[0x1E69E7CC0]);
    if (v4)
    {
      v3 = v4;
      swift_retain_n();
    }

    else
    {
      type metadata accessor for _ArrayBuffer();
      swift_getWitnessTable();
      v3 = _copyCollectionToContiguousArray<A>(_:)();

      objc_setAssociatedObject(v1, MEMORY[0x1E69E7CC0], v3, 1);
    }

    objc_sync_exit(v1);
  }

  return v3;
}

uint64_t partial apply for closure #1 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in ArrayWith2Inline.withUnsafeMutableBufferPointer<A>(_:)(a1, a2);
}

{
  v5 = *(v2 + 32);
  v8[0] = UnsafeMutableBufferPointer.init(start:count:)();
  v8[1] = v6;
  result = v5(v8);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PartialRangeUpTo<Int>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for PartialRangeUpTo<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for ArrayWith2Inline()
{
  result = type metadata accessor for ArrayWith2Inline.Storage();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unsigned __int8 *destroy for ArrayWith2Inline(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 80);
  v6 = v4 + v5;
  if (((v4 + v5) & ~v5) + v4 > v4)
  {
    v4 += (v4 + v5) & ~v5;
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  v7 = result[v4];
  v8 = v7 - 3;
  if (v7 >= 3)
  {
    if (v4 <= 3)
    {
      v9 = v4;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_19;
      }

      v10 = *result;
    }

    else if (v9 == 2)
    {
      v10 = *result;
    }

    else if (v9 == 3)
    {
      v10 = *result | (result[2] << 16);
    }

    else
    {
      v10 = *result;
    }

    v11 = (v10 | (v8 << (8 * v4))) + 3;
    v7 = v10 + 3;
    if (v4 < 4)
    {
      v7 = v11;
    }
  }

LABEL_19:
  if (v7 == 2)
  {
  }

  else
  {
    if (v7 == 1)
    {
      v14 = ~v5;
      v16 = *(v3 + 8);
      v15 = result;
      v16();
      result = (&v15[v6] & v14);
      v13 = v2;
      v12 = v16;
    }

    else
    {
      if (v7)
      {
        return result;
      }

      v12 = *(v3 + 8);
      v13 = *(a2 + 16);
    }

    return (v12)(result, v13);
  }
}

_BYTE *initializeWithCopy for ArrayWith2Inline(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  if (((v6 + v7) & ~v7) + v6 > v6)
  {
    v6 += (v6 + v7) & ~v7;
  }

  if (v6 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v6;
  }

  v10 = a2[v9];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 3;
    v10 = v13 + 3;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_20:
  switch(v10)
  {
    case 2u:
      *__dst = *a2;
      __dst[v9] = 2;

      return __dst;
    case 1u:
      v15 = ~v7;
      v16 = *(v5 + 16);
      (v16)(__dst);
      v16(&__dst[v8] & v15, &a2[v8] & v15, v4);
      __dst[v9] = 1;
      return __dst;
    case 0u:
      (*(v5 + 16))(__dst);
      __dst[v9] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v9 + 1);
}

unsigned __int8 *assignWithCopy for ArrayWith2Inline(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v7 + v8;
  if (((v7 + v8) & ~v8) + v7 > v7)
  {
    v7 += (v7 + v8) & ~v8;
  }

  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = __dst[v10];
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
        goto LABEL_21;
      }

      v14 = *__dst;
    }

    else if (v13 == 2)
    {
      v14 = *__dst;
    }

    else if (v13 == 3)
    {
      v14 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v14 = *__dst;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_21:
  v16 = ~v8;
  switch(v11)
  {
    case 2u:

      break;
    case 1u:
      v17 = *(v6 + 8);
      v17(__dst, v5);
      v17((&__dst[v9] & v16), v5);
      break;
    case 0u:
      (*(v6 + 8))(__dst, v5);
      break;
  }

  v18 = __src[v10];
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_41;
      }

      v21 = *__src;
    }

    else if (v20 == 2)
    {
      v21 = *__src;
    }

    else if (v20 == 3)
    {
      v21 = *__src | (__src[2] << 16);
    }

    else
    {
      v21 = *__src;
    }

    v22 = (v21 | (v19 << (8 * v10))) + 3;
    v18 = v21 + 3;
    if (v10 < 4)
    {
      v18 = v22;
    }
  }

LABEL_41:
  switch(v18)
  {
    case 2u:
      *__dst = *__src;
      __dst[v10] = 2;

      return __dst;
    case 1u:
      v23 = *(v6 + 16);
      v23(__dst, __src, v5);
      v23((&__dst[v9] & v16), (&__src[v9] & v16), v5);
      __dst[v10] = 1;
      return __dst;
    case 0u:
      (*(v6 + 16))(__dst, __src, v5);
      __dst[v10] = 0;
      return __dst;
  }

  return memcpy(__dst, __src, v10 + 1);
}

void *initializeWithTake for ArrayWith2Inline(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  v7 = v5 + v6;
  if (((v5 + v6) & ~v6) + v5 > v5)
  {
    v5 += (v5 + v6) & ~v6;
  }

  if (v5 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v5;
  }

  v9 = a2[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_20:
  if (v9 == 2)
  {
    *result = *a2;
    *(result + v8) = 2;
  }

  else if (v9 == 1)
  {
    v15 = ~v6;
    v16 = *(v4 + 32);
    v17 = result;
    v16();
    (v16)((v17 + v7) & v15, &a2[v7] & v15, v3);
    result = v17;
    *(v17 + v8) = 1;
  }

  else if (v9)
  {

    return memcpy(result, a2, v8 + 1);
  }

  else
  {
    v14 = result;
    (*(v4 + 32))();
    result = v14;
    *(v14 + v8) = 0;
  }

  return result;
}

unsigned __int8 *assignWithTake for ArrayWith2Inline(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v7 + v8;
  if (((v7 + v8) & ~v8) + v7 > v7)
  {
    v7 += (v7 + v8) & ~v8;
  }

  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = __dst[v10];
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
        goto LABEL_21;
      }

      v14 = *__dst;
    }

    else if (v13 == 2)
    {
      v14 = *__dst;
    }

    else if (v13 == 3)
    {
      v14 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v14 = *__dst;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_21:
  v16 = ~v8;
  switch(v11)
  {
    case 2u:

      break;
    case 1u:
      v17 = *(v6 + 8);
      v17(__dst, v5);
      v17((&__dst[v9] & v16), v5);
      break;
    case 0u:
      (*(v6 + 8))(__dst, v5);
      break;
  }

  v18 = __src[v10];
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v10 <= 3)
    {
      v20 = v10;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_41;
      }

      v21 = *__src;
    }

    else if (v20 == 2)
    {
      v21 = *__src;
    }

    else if (v20 == 3)
    {
      v21 = *__src | (__src[2] << 16);
    }

    else
    {
      v21 = *__src;
    }

    v22 = (v21 | (v19 << (8 * v10))) + 3;
    v18 = v21 + 3;
    if (v10 < 4)
    {
      v18 = v22;
    }
  }

LABEL_41:
  switch(v18)
  {
    case 2u:
      *__dst = *__src;
      v24 = 2;
      goto LABEL_47;
    case 1u:
      v23 = *(v6 + 32);
      v23(__dst, __src, v5);
      v23((&__dst[v9] & v16), (&__src[v9] & v16), v5);
      v24 = 1;
LABEL_47:
      __dst[v10] = v24;
      return __dst;
    case 0u:
      (*(v6 + 32))(__dst, __src, v5);
      __dst[v10] = 0;
      return __dst;
  }

  return memcpy(__dst, __src, v10 + 1);
}

uint64_t getEnumTagSinglePayload for ArrayWith2Inline(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 > v4)
  {
    v4 = v5;
  }

  v6 = 8;
  if (v4 > 8)
  {
    v6 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_27;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 252) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_27:
      v13 = *(a1 + v6);
      if (v13 >= 4)
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
    goto LABEL_27;
  }

LABEL_16:
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

  return (v7 | v12) + 253;
}

void storeEnumTagSinglePayload for ArrayWith2Inline(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = v6 + 1;
  if (a3 < 0xFD)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 252) >> (8 * v8)) + 1;
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

  if (a2 > 0xFC)
  {
    v10 = a2 - 253;
    if (v8 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 != -1)
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
LABEL_41:
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
            goto LABEL_41;
          }
        }

LABEL_38:
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
      goto LABEL_41;
    }

    goto LABEL_38;
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

LABEL_27:
      a1[v6] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_26;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t type metadata completion function for ArrayWith2Inline.Storage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v4 = &v2;
    v5 = MEMORY[0x1E69E5D20] + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ArrayWith2Inline(_BYTE *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = v6 + v7;
  if (((v6 + v8) & ~v8) + v6 > v6)
  {
    v6 += (v6 + v7) & ~v7;
  }

  if (v6 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v6;
  }

  v11 = v7 & 0x100000;
  if (v8 > 7 || v11 != 0 || (v10 + 1) > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
LABEL_15:

    return v3;
  }

  v16 = a2[v10];
  v17 = v16 - 3;
  if (v16 >= 3)
  {
    if (v10 <= 3)
    {
      v18 = v10;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_31;
      }

      v19 = *a2;
    }

    else if (v18 == 2)
    {
      v19 = *a2;
    }

    else if (v18 == 3)
    {
      v19 = *a2 | (a2[2] << 16);
    }

    else
    {
      v19 = *a2;
    }

    v20 = (v19 | (v17 << (8 * v10))) + 3;
    v16 = v19 + 3;
    if (v10 < 4)
    {
      v16 = v20;
    }
  }

LABEL_31:
  switch(v16)
  {
    case 2u:
      *__dst = *a2;
      __dst[v10] = 2;
      goto LABEL_15;
    case 1u:
      v21 = ~v8;
      v22 = *(v5 + 16);
      (v22)(__dst);
      v22((v3 + v9) & v21, &a2[v9] & v21, v4);
      *(v3 + v10) = 1;
      return v3;
    case 0u:
      (*(v5 + 16))(__dst);
      *(v3 + v10) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v10 + 1);
}

uint64_t getEnumTag for ArrayWith2Inline.Storage(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  v4 = ((v3 + *(v2 + 80)) & ~*(v2 + 80)) + v3;
  if (v4 > v3)
  {
    v3 = v4;
  }

  v5 = 8;
  if (v3 > 8)
  {
    v5 = v3;
  }

  v6 = a1[v5];
  v7 = v6 - 3;
  if (v6 >= 3)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        return v6;
      }

      v9 = *a1;
    }

    else if (v8 == 2)
    {
      v9 = *a1;
    }

    else if (v8 == 3)
    {
      v9 = *a1 | (a1[2] << 16);
    }

    else
    {
      v9 = *a1;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 3;
    LODWORD(v6) = v9 + 3;
    if (v5 >= 4)
    {
      return v6;
    }

    else
    {
      return v10;
    }
  }

  return v6;
}

void destructiveInjectEnumTag for ArrayWith2Inline.Storage(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 > v4)
  {
    v4 = v5;
  }

  if (v4 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v4;
  }

  if (a2 > 2)
  {
    v7 = a2 - 3;
    if (v6 < 4)
    {
      a1[v6] = (v7 >> (8 * v6)) + 3;
      if (v6)
      {
        v9 = v7 & ~(-1 << (8 * v6));
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v6 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v7;
        }
      }
    }

    else
    {
      a1[v6] = 3;
      bzero(a1, v6);
      *a1 = v7;
    }
  }

  else
  {
    a1[v6] = a2;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Edge@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Edge.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

SwiftUI::Edge __swiftcall Edge.init(_horizontal:)(SwiftUI::HorizontalEdge _horizontal)
{
  if (_horizontal)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t Edge.Set.init(_:)(char a1)
{
  if ((a1 & 2) != 0)
  {
    v1 = 15;
  }

  else
  {
    v1 = 10;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return ((a1 << 6) >> 7) & 5;
  }
}

SwiftUI::VerticalEdge_optional __swiftcall VerticalEdge.init(rawValue:)(Swift::Int8 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = SwiftUI_VerticalEdge_bottom;
  }

  else
  {
    v1.value = SwiftUI_VerticalEdge_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void Edge.Set.viewDebugValue.getter(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = a1;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = outlined read-only object #0 of Edge.Set.viewDebugValue.getter[v3 + 32];
    if (v8 - 9 < 0xEF || (v8 & 0x80) != 0 || v8 > 7 || ((1 << v8) & ~v4) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1);
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v3;
  }

  while (v3 != 4);
  type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [Edge]);
  a2[3] = v9;
  *a2 = v5;
}

uint64_t static Edge.unwrap(codingProxy:)(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

unsigned __int8 *protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Edge@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 4)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t specialized Edge.init(rawValue:)(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

unint64_t lazy protocol witness table accessor for type Edge.Set and conformance Edge.Set()
{
  result = lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set;
  if (!lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set;
  if (!lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set;
  if (!lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set;
  if (!lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge.Set and conformance Edge.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HorizontalEdge.Set and conformance HorizontalEdge.Set()
{
  result = lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set;
  if (!lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set;
  if (!lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set;
  if (!lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set;
  if (!lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalEdge.Set and conformance HorizontalEdge.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VerticalEdge.Set and conformance VerticalEdge.Set()
{
  result = lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set;
  if (!lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set;
  if (!lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set;
  if (!lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set;
  if (!lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalEdge.Set and conformance VerticalEdge.Set);
  }

  return result;
}

double static ViewSize.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 ViewGeometry.init(origin:dimensions:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = a1->n128_u64[0];
  v5 = a1->n128_i64[1];
  a2->n128_f64[0] = a3;
  a2->n128_f64[1] = a4;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u64[1] = v5;
  result = a1[1];
  v7 = a1[2];
  a2[2] = result;
  a2[3] = v7;
  return result;
}

uint64_t ViewDimensions.guideComputer.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 ViewDimensions.size.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ViewDimensions.size.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return result;
}

__n128 ViewDimensions.init(guideComputer:size:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v5;
  return result;
}

void *ViewDimensions.init(guideComputer:size:proposal:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = result[1];
  v6 = *a2;
  v7 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = NAN;
  }

  if (*(a2 + 24))
  {
    v7 = NAN;
  }

  *a3 = *result;
  *(a3 + 8) = v5;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  return result;
}

uint64_t ViewSize.init(_:proposal:)@<X0>(uint64_t result@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *result;
  v5 = *(result + 16);
  if (*(result + 8))
  {
    v4 = NAN;
  }

  if (*(result + 24))
  {
    v5 = NAN;
  }

  *a2 = a3;
  a2[1] = a4;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

void static ViewSize.fixed(_:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a2;
  a1[3] = a3;
}

double (*ViewSize.width.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double ViewSize.width.modify(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

double (*ViewSize.height.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return ViewSize.height.modify;
}

double ViewSize.height.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

void key path getter for ViewSize.proposal : ViewSize(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v11 = *a1;
  v12 = v3;
  ViewSize.proposal.getter(&v7);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  *a2 = v7;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

uint64_t ViewSize.proposal.setter(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 16);
  if (*(result + 8))
  {
    v2 = NAN;
  }

  if (*(result + 24))
  {
    v3 = NAN;
  }

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

void (*ViewSize.proposal.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (~v4 & 0x7FF0000000000000) == 0 && (v4 & 0xFFFFFFFFFFFFFLL) != 0;
  if (v6)
  {
    v4 = 0;
  }

  v7 = (~v5 & 0x7FF0000000000000) == 0 && (v5 & 0xFFFFFFFFFFFFFLL) != 0;
  if (v7)
  {
    v5 = 0;
  }

  *v3 = v4;
  *(v3 + 8) = v6;
  *(v3 + 16) = v5;
  *(v3 + 24) = v7;
  return ViewSize.proposal.modify;
}

void ViewSize.proposal.modify(void **a1)
{
  v1 = *a1;
  v2 = *(v1 + 4);
  v3 = *v1;
  v4 = *(v1 + 2);
  if (*(v1 + 8))
  {
    v3 = NAN;
  }

  if (*(v1 + 24))
  {
    v4 = NAN;
  }

  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  free(v1);
}

__n128 static ViewSize.invalidValue.getter@<Q0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for invalidValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = static CGSize.invalidValue;
  *a1 = static CGSize.invalidValue;
  *(a1 + 16) = result;
  return result;
}

double ViewSize.subscript.getter(char a1)
{
  v2 = v1 + 8;
  if ((a1 & 1) == 0)
  {
    v2 = v1;
  }

  return *v2;
}

double (*ViewSize.subscript.modify(uint64_t a1, char a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  if ((a2 & 1) == 0)
  {
    v3 = v2;
  }

  *a1 = *v3;
  return CGPoint.subscript.modify;
}

int8x16_t ViewSize.inset(by:)@<Q0>(uint64_t a1@<X8>, float64_t a2@<D0>, float64x2_t a3@<Q1>, float64_t a4@<D2>, float64x2_t a5@<Q3>)
{
  v6 = v5->f64[0];
  a3.f64[1] = a2;
  a5.f64[1] = a4;
  v7 = vaddq_f64(a3, a5);
  v8 = v5->f64[1] - v7.f64[1];
  v9 = 0.0;
  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  if (v6 - v7.f64[0] >= 0.0)
  {
    v9 = v6 - v7.f64[0];
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  v10 = v5[1];
  v11 = vdupq_n_s64(0x7FF0000000000000uLL);
  v12 = vsubq_f64(v10, v7);
  result = vbslq_s8(vbicq_s8(vceqq_s64(vandq_s8(v10, v11), v11), vceqzq_s64(vandq_s8(v10, vdupq_n_s64(0xFFFFFFFFFFFFFuLL)))), vdupq_n_s64(0x7FF8000000000000uLL), vandq_s8(v12, vcgezq_f64(v12)));
  *(a1 + 16) = result;
  return result;
}

void ViewSize.animatableData.setter(double a1, double a2)
{
  *v2 = a1;
  v2[1] = a2;
  v2[2] = a1;
  v2[3] = a2;
}

__n128 (*ViewSize.animatableData.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return ViewSize.animatableData.modify;
}

__n128 ViewSize.animatableData.modify(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  result = *a1;
  *v1 = *a1;
  v1[1] = result;
  return result;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance ViewSize(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance ViewSize(uint64_t a1))()
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance ViewSize;
}

void ViewGeometry.animatableData.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[4] = a3;
  v4[5] = a4;
  v4[6] = a3;
  v4[7] = a4;
}

void (*ViewGeometry.animatableData.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[2];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return ViewGeometry.animatableData.modify;
}

void ViewGeometry.animatableData.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 1);
  *v2 = *v1;
  v2[2] = v3;
  v2[3] = v3;
  free(v1);
}

uint64_t ViewGeometry.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  v3 = *(v1 + 48);
  *(a1 + 16) = *(v1 + 32);
  *(a1 + 32) = v3;
}

__n128 ViewGeometry.dimensions.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_i64[1];

  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  result = a1[1];
  v6 = a1[2];
  v1[2] = result;
  v1[3] = v6;
  return result;
}

__n128 ViewGeometry.init(dimensions:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[0];
  v3 = a1->n128_i64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u64[1] = v3;
  result = a1[1];
  v5 = a1[2];
  a2[2] = result;
  a2[3] = v5;
  return result;
}

float64x2_t ViewGeometry.init(placement:dimensions:)@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = a2[1];
  v4 = a2[2];
  result = vsubq_f64(a1[3], vmulq_f64(a1[2], v3));
  v6 = a2->f64[0];
  v7 = a2->f64[1];
  *a3 = result;
  a3[1].f64[0] = v6;
  a3[1].f64[1] = v7;
  a3[2] = v3;
  a3[3] = v4;
  return result;
}

__n128 protocol witness for Animatable.animatableData.getter in conformance ViewGeometry@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance ViewGeometry(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[2] = v3;
  v1[3] = v3;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance ViewGeometry(uint64_t **a1))()
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
  v2[4] = ViewGeometry.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

void __swiftcall ViewFrame.init(origin:size:)(SwiftUI::ViewFrame *__return_ptr retstr, CGPoint origin, SwiftUI::ViewSize size)
{
  retstr->origin.x = origin.x;
  retstr->origin.y = origin.y;
  v4 = v3[1];
  retstr->size.value = *v3;
  retstr->size._proposal = v4;
}

void __swiftcall ViewFrame.init(size:)(SwiftUI::ViewFrame *__return_ptr retstr, SwiftUI::ViewSize size)
{
  retstr->origin.x = 0.0;
  retstr->origin.y = 0.0;
  v3 = v2[1];
  retstr->size.value = *v2;
  retstr->size._proposal = v3;
}

__C::CGRect __swiftcall CGRect.init(_:)(SwiftUI::ViewFrame *a1)
{
  x = a1->origin.x;
  y = a1->origin.y;
  width = a1->size.value.width;
  height = a1->size.value.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

void ViewFrame.animatableData.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void (*ViewFrame.animatableData.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return ViewFrame.animatableData.modify;
}

void ViewFrame.animatableData.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 1);
  *v2 = *v1;
  v2[1] = v3;
  free(v1);
}

__n128 protocol witness for Animatable.animatableData.getter in conformance ViewFrame@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 protocol witness for Animatable.animatableData.setter in conformance ViewFrame(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance ViewFrame(uint64_t **a1))()
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
  v2[4] = ViewFrame.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t static ViewDimensions.invalidValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for invalidValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = unk_1ED539E20;
  *a1 = static ViewDimensions.invalidValue;
  *(a1 + 8) = v2;
  v3 = unk_1ED539E38;
  *(a1 + 16) = xmmword_1ED539E28;
  *(a1 + 32) = v3;
}

uint64_t static ViewDimensions.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *algn_1EAB13A58;
  *a1 = static ViewDimensions.zero;
  *(a1 + 8) = v2;
  v3 = unk_1EAB13A70;
  *(a1 + 16) = xmmword_1EAB13A60;
  *(a1 + 32) = v3;
}

uint64_t ViewDimensions.at(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = *v3;
  v5 = v3[1];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v3 + 2);
  *(a1 + 32) = *(v3 + 1);
  *(a1 + 48) = v6;
}

uint64_t ViewDimensions.centered(in:)@<X0>(float64x2_t *a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>)
{
  a2.f64[1] = a3;
  v4 = v3[1];
  v5 = v3[2];
  __asm { FMOV            V3.2D, #0.5 }

  v11 = v3->f64[0];
  v12 = v3->f64[1];
  *a1 = vaddq_f64(vmulq_f64(vsubq_f64(a2, v4), _Q3), 0);
  a1[1].f64[0] = v11;
  a1[1].f64[1] = v12;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t static ViewGeometry.zero.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_1EAB13B40;
  v7[0] = static ViewGeometry.zero;
  v7[1] = *&qword_1EAB13B40;
  v2 = xmmword_1EAB13B50;
  v3 = unk_1EAB13B60;
  v7[2] = xmmword_1EAB13B50;
  v7[3] = unk_1EAB13B60;
  *a1 = static ViewGeometry.zero;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of ViewGeometry(v7, &v6);
}

Swift::Void __swiftcall ViewGeometry.finalizeLayoutDirection(_:parentSize:)(SwiftUI::LayoutDirection _, CGSize parentSize)
{
  if (*_ == 1)
  {
    width = parentSize.width;
    v4.origin.x = *v2;
    v4.origin.y = v2[1];
    v4.size.width = v2[4];
    v4.size.height = v2[5];
    *v2 = width - CGRectGetMaxX(v4);
  }
}

BOOL specialized static ViewFrame.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v6 = *(a1 + 32);
  v9[0] = *(a1 + 16);
  v9[1] = v6;
  v7 = *(a2 + 32);
  v8[0] = *(a2 + 16);
  v8[1] = v7;
  return specialized static ViewSize.== infix(_:_:)(v9, v8);
}

BOOL specialized static ViewFrame.shouldFinishEarly(in:)(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  EnvironmentValues.pixelLength.getter();
  if (fabs(v2 * v2 + v6 * v6) >= v9 * v9)
  {
    return 0;
  }

  if (fabs(v1 * v1 + v5 * v5) >= v9 * v9)
  {
    return 0;
  }

  v10 = (v9 + v9) * (v9 + v9);
  return fabs(v4 * v4 + v8 * v8) < v10 && fabs(v3 * v3 + v7 * v7) < v10;
}

unint64_t instantiation function for generic protocol witness table for ViewFrame(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame();
  result = lazy protocol witness table accessor for type ViewFrame and conformance ViewFrame();
  *(a1 + 16) = result;
  return result;
}

uint64_t initializeWithCopy for ViewDimensions(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;

  return a1;
}

void *assignWithCopy for ViewDimensions(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  return a1;
}

uint64_t assignWithTake for ViewDimensions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  return a1;
}

uint64_t assignWithTake for ViewGeometry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewGeometry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for ViewGeometry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SwiftUI::_FixedSizeLayout __swiftcall _FixedSizeLayout.init(horizontal:vertical:)(Swift::Bool horizontal, Swift::Bool vertical)
{
  if (vertical)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | horizontal);
}

_WORD *storeEnumTagSinglePayload for _FixedSizeLayout(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EnvironmentValues.gestureConstantsProvider.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(v3);
  return v4;
}

uint64_t one-time initialization function for gestureConstantsProvider()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.gestureConstantsProvider = result;
  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.gestureConstantsProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.gestureConstantsProvider.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall _GraphInputs.pushStableIndex(_:)(Swift::Int a1)
{
  if (*(v1 + 37))
  {
    specialized _GraphInputs.pushScope<A>(id:)(a1);
  }
}

uint64_t _DisplayList_StableIdentityMap.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(*result), (v5 & 1) != 0))
  {
    v6 = *(v4 + 56) + 24 * result;
    *a2 = *v6;
    *(a2 + 16) = *(v6 + 16);
    *(a2 + 24) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
  }

  return result;
}

__n128 _DisplayList_StableIdentity.hash.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u32[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u32[0] = v2;
  return result;
}

__n128 _DisplayList_StableIdentity.hash.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = v2;
  return result;
}

__n128 _DisplayList_StableIdentity.init(hash:serial:)@<Q0>(__n128 *a1@<X0>, unsigned __int32 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u32[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u32[0] = v3;
  a3[1].n128_u32[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance _DisplayList_StableIdentity.CodingKeys()
{
  if (*v0)
  {
    return 0x6C6169726573;
  }

  else
  {
    return 1752392040;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _DisplayList_StableIdentity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752392040 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6169726573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _DisplayList_StableIdentity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _DisplayList_StableIdentity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _DisplayList_StableIdentity.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>, lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys, &unk_1F0050358, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *(v2 + 4);
  v17 = *(v2 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[1];
  v14 = *v2;
  v15 = v10;
  v16 = v9;
  v18 = 0;
  lazy protocol witness table accessor for type StrongHash and conformance StrongHash();
  v11 = v13;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void _DisplayList_StableIdentity.hash(into:)()
{
  v1 = *(v0 + 20);
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
}

Swift::Int _DisplayList_StableIdentity.hashValue.getter()
{
  v1 = *(v0 + 20);
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t _DisplayList_StableIdentity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<_DisplayList_StableIdentity.CodingKeys>, lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys, &unk_1F0050358, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v14;
    v17 = 0;
    lazy protocol witness table accessor for type StrongHash and conformance StrongHash();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v15;
    v10 = v16;
    LOBYTE(v15) = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
    *(v9 + 16) = v10;
    *(v9 + 20) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _DisplayList_StableIdentity()
{
  v1 = *(v0 + 20);
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance _DisplayList_StableIdentity()
{
  v1 = *(v0 + 20);
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _DisplayList_StableIdentity()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 20);
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t _DisplayList_StableIdentityMap.map.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _DisplayList_StableIdentityMap.subscript.setter(uint64_t a1, Swift::UInt32 *a2)
{
  v3 = v2;
  v4 = *a2;
  if (*(a1 + 24))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(*a2);
    if (v6)
    {
      v7 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v9 = v14;
      }

      result = specialized _NativeDictionary._delete(at:)(v7, v9);
      *v3 = v9;
    }
  }

  else
  {
    v11 = *(a1 + 8);
    v10 = *(a1 + 16);
    v12 = *a1;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v11, v10, v4, v13);
    *v2 = v15;
  }

  return result;
}

void (*_DisplayList_StableIdentityMap.subscript.modify(void *a1, unsigned int *a2))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *a2;
  *(v6 + 9) = v7;
  v8 = *v2;
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v10 & 1) != 0))
  {
    v11 = 0;
    v12 = *(v8 + 56) + 24 * v9;
    v13 = *(v12 + 16);
    *(v6 + 1) = *v12;
    v6[3] = v13;
  }

  else
  {
    v6[1] = 0;
    v6[2] = 0;
    v11 = 1;
    v6[3] = 0;
  }

  *(v6 + 32) = v11;
  return _DisplayList_StableIdentityMap.subscript.modify;
}

void _DisplayList_StableIdentityMap.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  specialized Dictionary.subscript.setter(*(*a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(*a1 + 36));

  free(v1);
}

Swift::Void __swiftcall _DisplayList_StableIdentityMap.formUnion(_:)(SwiftUI::_DisplayList_StableIdentityMap a1)
{
  v2 = *a1.map._rawValue;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  *v1 = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v5);

  v4 = v5;

  *v1 = v4;
}

uint64_t _DisplayList_StableIdentityRoot.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = 0;
  return result;
}

uint64_t _DisplayList_StableIdentityRoot.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  return result;
}

uint64_t _DisplayList_StableIdentityRoot.subscript.getter@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = *a1;
  swift_beginAccess();
  if (!*(v2 + 24))
  {
    swift_beginAccess();
    v4 = *(*(v2 + 16) + 16);
    if (v4)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC8];
      v50 = *MEMORY[0x1E698D3F8];
      v48 = v3;
      while (1)
      {
        while (1)
        {
          swift_beginAccess();
          if (v5 < 0)
          {
            goto LABEL_54;
          }

          v7 = *(v3 + 16);
          v8 = *(v7 + 2);
          if (v5 >= v8)
          {
            goto LABEL_55;
          }

          v9 = *&v7[8 * v5 + 32];
          Attribute = AGWeakAttributeGetAttribute();
          swift_endAccess();
          if (Attribute != v50)
          {
            break;
          }

          if (v5 != --v4)
          {
            if (v4 >= v8)
            {
              goto LABEL_58;
            }

            v11 = *&v7[8 * v4 + 32];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v3 + 16) = v7;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            }

            v13 = *(v7 + 2);
            if (v5 >= v13)
            {
              goto LABEL_59;
            }

            *&v7[8 * v5 + 32] = v11;
            if (v4 >= v13)
            {
              goto LABEL_60;
            }

            *&v7[8 * v4 + 32] = v9;
          }

          if (!*(v7 + 2))
          {
            goto LABEL_56;
          }

          v14 = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 16) = v7;
          if (v14)
          {
            v15 = *(v7 + 2);
            if (!v15)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            v15 = *(v7 + 2);
            if (!v15)
            {
              goto LABEL_57;
            }
          }

          *(v7 + 2) = v15 - 1;
          *(v3 + 16) = v7;
          if (v5 >= v4)
          {
            goto LABEL_44;
          }
        }

        v49 = v5;
        v16 = *(AGGraphGetValue() + 32);
        swift_bridgeObjectRetain_n();
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v6;
        v18 = -1 << *(v16 + 32);
        if (-v18 < 64)
        {
          v19 = ~(-1 << -v18);
        }

        else
        {
          v19 = -1;
        }

        v20 = v19 & *(v16 + 64);
        v21 = (63 - v18) >> 6;

        for (i = 0; v20; i = v23)
        {
          while (1)
          {
            v23 = i;
LABEL_31:
            v25 = __clz(__rbit64(v20)) | (v23 << 6);
            v26 = *(*(v16 + 48) + 4 * v25);
            v27 = *(v16 + 56) + 24 * v25;
            v51 = *v27;
            v28 = *(v27 + 16);
            v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
            v31 = v6[2];
            v32 = (v29 & 1) == 0;
            v33 = v31 + v32;
            if (__OFADD__(v31, v32))
            {
              goto LABEL_52;
            }

            v34 = v29;
            if (v6[3] >= v33)
            {
              if ((v17 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v17 & 1);
              v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
              if ((v34 & 1) != (v36 & 1))
              {
                goto LABEL_62;
              }

              v30 = v35;
            }

            v20 &= v20 - 1;
            if ((v34 & 1) == 0)
            {
              break;
            }

            v17 = 1;
            v6 = v52;
            i = v23;
            if (!v20)
            {
              goto LABEL_27;
            }
          }

          v6 = v52;
          v52[(v30 >> 6) + 8] |= 1 << v30;
          *(v52[6] + 4 * v30) = v26;
          v37 = v52[7] + 24 * v30;
          *v37 = v51;
          *(v37 + 16) = v28;
          v38 = v52[2];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_53;
          }

          v52[2] = v40;
          v17 = 1;
        }

LABEL_27:
        v24 = i;
        while (1)
        {
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
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
            __break(1u);
LABEL_62:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          if (v23 >= v21)
          {
            break;
          }

          v20 = *(v16 + 64 + 8 * v23);
          ++v24;
          if (v20)
          {
            goto LABEL_31;
          }
        }

        outlined consume of Set<EventID>.Iterator._Variant();

        swift_bridgeObjectRelease_n();
        v5 = v49 + 1;
        v3 = v48;
        if (v49 + 1 >= v4)
        {
          goto LABEL_44;
        }
      }
    }

    v6 = MEMORY[0x1E69E7CC8];
LABEL_44:
    *(v3 + 24) = v6;
  }

  swift_beginAccess();
  v41 = *(v3 + 24);
  if (!v41)
  {
    goto LABEL_61;
  }

  if (*(v41 + 16) && (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v46), (v43 & 1) != 0))
  {
    v44 = *(v41 + 56) + 24 * v42;
    *a2 = *v44;
    *(a2 + 16) = *(v44 + 16);
    *(a2 + 24) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
  }

  return swift_endAccess();
}

uint64_t _DisplayList_StableIdentityRoot.deinit()
{

  return v0;
}

uint64_t _DisplayList_StableIdentityRoot.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static _DisplayList_StableIdentityScope.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return static _DisplayList_StableIdentityScope.defaultValue;
}

__n128 _DisplayList_StableIdentityScope.hash.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  return result;
}

uint64_t _DisplayList_StableIdentityScope.map.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
  return result;
}

double _DisplayList_StableIdentityScope.init(root:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a2 + 32) = MEMORY[0x1E69E7CC8];
  *(a2 + 40) = 0;
  *a2 = a1;
  memset(&v5, 0, sizeof(v5));

  CC_SHA1_Init(&v5);
  c = v5;
  specialized StrongHasher.combine<A>(_:)(1953460082, 0xE400000000000000);
  memset(&v5, 0, 20);
  CC_SHA1_Final(&v5, &c);

  h4 = v5.h4;
  result = *&v5.h0;
  *(a2 + 8) = *&v5.h0;
  *(a2 + 24) = h4;
  return result;
}

uint64_t specialized StrongHasher.combine<A>(_:)(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    result = String.utf8CString.getter();
    v4 = *(result + 16);
    if (HIDWORD(v4))
    {
      __break(1u);
    }

    else
    {
      CC_SHA1_Update(v2, (result + 32), v4);
    }
  }

  return result;
}

double _DisplayList_StableIdentityScope.init<A>(id:parent:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(a2 + 6);
  *(a5 + 32) = MEMORY[0x1E69E7CC8];
  *(a5 + 40) = 0;
  *a5 = v10;
  memset(&v15, 0, sizeof(v15));

  CC_SHA1_Init(&v15);
  c = v15;
  StrongHasher.combine<A>(_:)(a1, a3, a4);
  v12 = a2[2];
  *&v15.h0 = a2[1];
  *&v15.h2 = v12;
  v15.h4 = v11;
  CC_SHA1_Update(&c, &v15, 0x14u);

  memset(&v15, 0, 20);
  CC_SHA1_Final(&v15, &c);
  (*(*(a3 - 8) + 8))(a1, a3);
  h4 = v15.h4;
  result = *&v15.h0;
  *(a5 + 8) = *&v15.h0;
  *(a5 + 24) = h4;
  return result;
}

__n128 _DisplayList_StableIdentityScope.makeIdentity()@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40) + 1;
  *(v1 + 40) = v2;
  v3 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u32[0] = v3;
  a1[1].n128_u32[1] = v2;
  return result;
}

uint64_t _DisplayList_StableIdentityScope.pushIdentity(_:)(Swift::UInt32 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = (*(v1 + 10) + 1);
  *(v2 + 10) = v4;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v2[4];
  v2[4] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, v6, v7 | (v4 << 32), v3, isUniquelyReferenced_nonNull_native);

  v2[4] = v11;
  v9 = *v2;
  swift_beginAccess();
  *(v9 + 24) = 0;
}

double protocol witness for static _ViewTraitKey.defaultValue.getter in conformance _DisplayList_StableIdentityScope@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _DisplayList_StableIdentityScope.defaultValue;
  *a1 = static _DisplayList_StableIdentityScope.defaultValue;
  return result;
}

void _DisplayList_StableIdentity.encode(to:)(void *a1)
{
  v3 = *(v1 + 20);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v4 = a1[1];
  v5 = a1[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  a1[3] = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    a1[1] = v4 + 1;
    StrongHash.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
    if (v3)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v3);
    }
  }
}

int64_t _DisplayList_StableIdentityMap.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = (*v4 + 64);
  v7 = 1 << *(*v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *v6;
  v10 = (v7 + 63) >> 6;
  v30 = *v4;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = *(*(v30 + 48) + 4 * v14);
      v16 = (*(v30 + 56) + 24 * v14);
      v32 = v16[1];
      v33 = *v16;
      v31 = v16[2];
      v17 = a1[1];
      v18 = a1[2];
      v35 = v3;
      v34 = v15;
      if (v17 >= v18)
      {
        result = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_43;
        }

        if (v18 < result)
        {
          v27 = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          a1[1] = result;
          v27 = (*a1 + v17);
        }

        *v27 = 10;
        v19 = a1[1];
      }

      else
      {
        *(*a1 + v17) = 10;
        v19 = v17 + 1;
        a1[1] = v17 + 1;
      }

      v20 = a1[3];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 16) = v22 + 1;
      *(v20 + 8 * v22 + 32) = v19;
      a1[3] = v20;
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      a1[1] = v23;
      v24 = v34;
      if (v34)
      {
        v25 = a1[2];
        v3 = v35;
        if (v23 >= v25)
        {
          result = v19 + 2;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_45;
          }

          if (v25 < result)
          {
            v29 = ProtobufEncoder.growBufferSlow(to:)(result);
          }

          else
          {
            a1[1] = result;
            v29 = (*a1 + v23);
          }

          *v29 = 8;
          v24 = v34;
        }

        else
        {
          *(*a1 + v23) = 8;
          a1[1] = v19 + 2;
        }

        ProtobufEncoder.encodeVarint(_:)(v24);
        v23 = a1[1];
      }

      else
      {
        v3 = v35;
      }

      v26 = a1[2];
      if (v23 >= v26)
      {
        result = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_44;
        }

        if (v26 < result)
        {
          v28 = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          a1[1] = result;
          v28 = (*a1 + v23);
        }

        *v28 = 18;
      }

      else
      {
        *(*a1 + v23) = 18;
        a1[1] = v23 + 1;
      }

      specialized ProtobufEncoder.encodeMessage<A>(_:)(v33, v32, v31);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      result = ProtobufEncoder.endLengthDelimited()();
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = v6[v13];
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t _ViewInputs.configureStableIDs(root:)(uint64_t a1)
{
  v2 = v1;
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(v1 + 36);
  if ((v4 & 0x100) == 0)
  {
    *(v1 + 36) = v4 | 0x100;
  }

  _DisplayList_StableIdentityScope.init(root:)(v5, &v11);
  v12[2] = v11;
  v13[0] = v12[0];
  *(v13 + 12) = *(v12 + 12);
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of _DisplayList_StableIdentityScope(&v11);
  v6 = AGCreateWeakAttribute();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v2, v6);

  swift_beginAccess();
  v7 = *(a1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v7;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
    *(a1 + 16) = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  *(v7 + 8 * v10 + 32) = v6;
  *(a1 + 16) = v7;
  return result;
}

Swift::UInt32 *_ViewInputs.pushIdentity(_:)(Swift::UInt32 *result)
{
  if (*(v1 + 37))
  {
    v2 = *result;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*v1, v4);
    result = AGWeakAttributeGetAttribute();
    if (result == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    else
    {
      v5[0] = v2;
      v3 = Attribute<A>.subscript.modify();
      _DisplayList_StableIdentityScope.pushIdentity(_:)(v5);
      return v3(v4, 0);
    }
  }

  return result;
}

__n128 _ViewInputs.makeStableIdentity()@<Q0>(uint64_t a1@<X8>)
{
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*v1);
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for internalErrorsLog != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = static Log.internalErrorsLog;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18DDAF080;
    v5 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v6 = lazy protocol witness table accessor for type String and conformance String();
    *(v4 + 64) = v6;
    *(v4 + 32) = 0xD000000000000023;
    *(v4 + 40) = 0x800000018DD77510;
    v7 = v3;
    v8 = StaticString.description.getter();
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = v8;
    *(v4 + 80) = v9;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = v10;
    *(v4 + 120) = v11;
    os_log(_:dso:log:_:_:)();

    type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18DDA6EB0;
    _StringGuts.grow(_:)(38);

    v13 = StaticString.description.getter();
    MEMORY[0x193ABEDD0](v13);

    MEMORY[0x193ABEDD0](58, 0xE100000000000000);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v14);

    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
    *(v12 + 56) = v5;
    *(v12 + 32) = 0xD000000000000026;
    *(v12 + 40) = 0x800000018DD77540;
    print(_:separator:terminator:)();

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v17 = *(Value + 40) + 1;
    *(Value + 40) = v17;
    v18 = *(Value + 24);
    result = *(Value + 8);
    *a1 = result;
    *(a1 + 16) = v18;
    *(a1 + 20) = v17;
  }

  return result;
}

uint64_t _GraphInputs.pushScope<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v3;
  v11 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*v3);
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    Value = AGGraphGetValue();
    v13 = *(Value + 28);
    v14 = Value[1];
    v20 = *Value;
    v21[0] = v14;
    *(v21 + 12) = v13;
    (*(v7 + 16))(v9, a1, a2);
    v24 = v20;
    v25[0] = v21[0];
    *(v25 + 12) = *(v21 + 12);
    outlined init with copy of _DisplayList_StableIdentityScope(&v20, &v22);
    outlined init with copy of _DisplayList_StableIdentityScope(&v20, &v22);
    _DisplayList_StableIdentityScope.init<A>(id:parent:)(v9, &v24, a2, a3, &v22);
    v24 = v22;
    v25[0] = v23[0];
    *(v25 + 12) = *(v23 + 12);
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of _DisplayList_StableIdentityScope(&v22);
    a3 = AGCreateWeakAttribute();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(v3, a3);

    v11 = v20;
    swift_beginAccess();
    v10 = *(v11 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 16) = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
  *(v11 + 16) = v10;
LABEL_3:
  v17 = *(v10 + 16);
  v16 = *(v10 + 24);
  if (v17 >= v16 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v10);
  }

  *(v10 + 16) = v17 + 1;
  *(v10 + 8 * v17 + 32) = a3;
  *(v11 + 16) = v10;
  return outlined destroy of _DisplayList_StableIdentityScope(&v20);
}

uint64_t makeStableIDData<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v6);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Encodable);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(&v22, &v25);
    v9 = v27;
    v10 = __swift_project_boxed_opaque_existential_1(&v25, v27);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v11);
    StrongHash.init<A>(encodable:)(v13, v9, &v22);
    v15 = 0;
    v18 = *(&v22 + 1);
    v17 = v22;
    v19 = v23;
    result = __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    outlined destroy of StronglyHashable?(&v22, &lazy cache variable for type metadata for Encodable?, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78]);
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v25 = 0xD00000000000001ALL;
    v26 = 0x800000018DD77570;
    swift_getDynamicType();
    v16 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v16);

    specialized static Log.externalWarning(_:)(v25, v26);

    v17 = 0;
    v18 = 0;
    v19 = 0;
    v15 = 1;
  }

  *a3 = v17;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  *(a3 + 20) = v15;
  return result;
}

void _GraphInputs.pushStableType(_:)()
{
  if (*(v0 + 37))
  {
    AGTypeGetSignature();

    specialized _GraphInputs.pushScope<A>(id:)(v1, v2, v3);
  }
}

double makeStableTypeData(_:)@<D0>(uint64_t a1@<X8>)
{
  AGTypeGetSignature();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

unint64_t _GraphInputs.stableIDScope.getter()
{
  if ((*(v0 + 37) & 1) == 0)
  {
    return 0;
  }

  v2 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*v0);
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(&v20, 0, sizeof(v20));
  CC_SHA1_Init(&v20);
  c = v20;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      *(&v20.h1 + 2) = 0;
      *&v20.h0 = 0;
      v8 = &v20;
      LODWORD(v7) = 0;
      goto LABEL_24;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = __DataStorage._bytes.getter();
    if (v11)
    {
      v12 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_28;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (v13)
    {
      goto LABEL_26;
    }

    result = MEMORY[0x193ABC2C0]();
    if (result >= v14)
    {
      v7 = v14;
    }

    else
    {
      v7 = result;
    }

    if (!v11)
    {
      goto LABEL_31;
    }

    if (v7 <= 0xFFFFFFFFLL)
    {
LABEL_22:
      v8 = v11;
      goto LABEL_24;
    }

    __break(1u);
  }

  else if (!v6)
  {
    LOWORD(v20.h0) = a1;
    BYTE2(v20.h0) = BYTE2(a1);
    HIBYTE(v20.h0) = BYTE3(a1);
    LOBYTE(v20.h1) = BYTE4(a1);
    BYTE1(v20.h1) = BYTE5(a1);
    BYTE2(v20.h1) = BYTE6(a1);
    HIBYTE(v20.h1) = HIBYTE(a1);
    LOWORD(v20.h2) = a2;
    BYTE2(v20.h2) = BYTE2(a2);
    HIBYTE(v20.h2) = BYTE3(a2);
    LOBYTE(v20.h3) = BYTE4(a2);
    LODWORD(v7) = BYTE6(a2);
    BYTE1(v20.h3) = BYTE5(a2);
    v8 = &v20;
LABEL_24:
    CC_SHA1_Update(&c, v8, v7);
    outlined consume of Data._Representation(a1, a2);
    memset(&v20, 0, 20);
    result = CC_SHA1_Final(&v20, &c);
    h4 = v20.h4;
    *a3 = *&v20.h0;
    *(a3 + 16) = h4;
    return result;
  }

  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v17 = v16;
    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(a1, v18))
    {
      v11 = a1 - v18 + v17;
      result = MEMORY[0x193ABC2C0]();
      if (v11)
      {
        if (result >= (a1 >> 32) - a1)
        {
          v7 = (a1 >> 32) - a1;
        }

        else
        {
          LODWORD(v7) = result;
        }

        goto LABEL_22;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  result = MEMORY[0x193ABC2C0]();
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

double _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4UUIDV_Tt1g5@<D0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  c = v10;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_5;
  }

  v7 = v4;
  CC_SHA1_Update(&c, a1, v6);
  memset(&v10, 0, 20);
  CC_SHA1_Final(&v10, &c);
  (*(v5 + 8))(a1, v7);
  h4 = v10.h4;
  result = *&v10.h0;
  *a2 = *&v10.h0;
  *(a2 + 16) = h4;
  return result;
}

unint64_t specialized _NativeDictionary.copy()()
{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CUIDesignLibraryCacheKey, CUIDesignLibraryCacheKey.Entry>, lazy protocol witness table accessor for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = v3 + 64;
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v28 + 20) = result)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 9);
      v22 = *(v18 + 10);
      v23 = *(v18 + 16);
      v24 = *(v2 + 56) + v17;
      v25 = *(v24 + 16);
      result = *(v24 + 20);
      v26 = *(v4 + 48) + v17;
      v27 = *v24;
      *v26 = v19;
      *(v26 + 8) = v20;
      *(v26 + 9) = v21;
      *(v26 + 10) = v22;
      *(v26 + 16) = v23;
      v28 = *(v4 + 56) + v17;
      *v28 = v27;
      *(v28 + 16) = v25;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<StyleContextDescriptor>>(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 56) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 56) + 8 * v21) = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 4 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 4 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 56) + 16 * v15) = v18)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      v18 = *(*(v3 + 56) + 16 * v15);
      *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(_BYTE *, unint64_t))
{
  v6 = v4;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>(0, a1, a2);
  v7 = *v4;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = *(*(v7 + 48) + 8 * v22);
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v22, v24);
        *(*(v9 + 48) + 8 * v22) = v23;
        result = a4(v24, *(v9 + 56) + 40 * v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v9;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ProposedSize, CGSize>, type metadata accessor for CGSize, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v22) = v24)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 32 * v14;
      v18 = *(v2 + 48) + 32 * v14;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 24);
      v22 = 16 * v14;
      result = *(v4 + 48);
      v23 = &result[v17];
      v24 = *(*(v2 + 56) + v22);
      *v23 = v19;
      v23[8] = v20;
      *(v23 + 2) = v21;
      v23[24] = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(unint64_t *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  *(a2 + 24) = v2;
  return result;
}

BOOL specialized static _DisplayList_StableIdentity.== infix(_:_:)(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0])
  {
    return a1[1].i32[1] == a2[1].i32[1];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys;
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys;
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys;
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys;
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity.CodingKeys and conformance _DisplayList_StableIdentity.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StrongHash and conformance StrongHash()
{
  result = lazy protocol witness table cache variable for type StrongHash and conformance StrongHash;
  if (!lazy protocol witness table cache variable for type StrongHash and conformance StrongHash)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StrongHash and conformance StrongHash);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StrongHash and conformance StrongHash;
  if (!lazy protocol witness table cache variable for type StrongHash and conformance StrongHash)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StrongHash and conformance StrongHash);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StrongHash and conformance StrongHash;
  if (!lazy protocol witness table cache variable for type StrongHash and conformance StrongHash)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StrongHash and conformance StrongHash);
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(unsigned int *__return_ptr, int *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v14 = v11;
    v15 = __clz(__rbit64(v9)) | (v11 << 6);
    v16 = *(*(a1 + 48) + 4 * v15);
    v17 = *(a1 + 56) + 24 * v15;
    v39 = v16;
    v40 = *v17;
    v41 = *(v17 + 16);
    a2(&v42, &v39);
    v45 = 0;
    v18 = v42;
    v37 = v43;
    v19 = v44;
    v20 = *a5;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a4 & 1);
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_24;
      }

      v22 = v27;
    }

    v11 = v14;
    v9 &= v9 - 1;
    a4 = 1;
    if ((v26 & 1) == 0)
    {
      v29 = *a5;
      *(*a5 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v29[6] + 4 * v22) = v18;
      v30 = v29[7] + 24 * v22;
      *v30 = v37;
      *(v30 + 16) = v19;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_23;
      }

      v29[2] = v33;
    }
  }

  v12 = v11;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<EventID>.Iterator._Variant();
    }

    ++v12;
    if (*(v6 + 8 * v13))
    {
      v9 = *(v6 + 8 * v13);
      v11 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of StronglyHashable?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity()
{
  result = lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity;
  if (!lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_StableIdentity and conformance _DisplayList_StableIdentity);
  }

  return result;
}

uint64_t assignWithCopy for _DisplayList_StableIdentityScope(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for _DisplayList_StableIdentityScope(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for _DisplayList_StableIdentityScope(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _DisplayList_StableIdentityScope(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AGSubgraphRef, [(_:)]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef, [(_:)]>)
  {
    type metadata accessor for AGSubgraphRef(255);
    type metadata accessor for [(AbstractHomogeneousCollection, Int)](255, &lazy cache variable for type metadata for [(_:)], type metadata accessor for (_:), MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef, [(_:)]>);
    }
  }
}

uint64_t outlined init with copy of SeedValue<GlassContainer.EntryState>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for _ContiguousArrayStorage<Any>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<Bool>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<Bool>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for Attribute<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E698D388]);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<Bool>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<PlatformGlassInteractionState>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<PlatformGlassInteractionState>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for Attribute<PlatformGlassInteractionState>, &type metadata for PlatformGlassInteractionState, MEMORY[0x1E698D388]);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<PlatformGlassInteractionState>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>);
    }
  }
}

void type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item()
{
  if (!lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>();
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>, lazy protocol witness table accessor for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for ForEachState.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item);
    }
  }
}

void type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for _ValueTransactionModifier<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63E0], type metadata accessor for _ValueTransactionModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Axis and conformance Axis()
{
  result = lazy protocol witness table cache variable for type Axis and conformance Axis;
  if (!lazy protocol witness table cache variable for type Axis and conformance Axis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Axis and conformance Axis);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Axis and conformance Axis;
  if (!lazy protocol witness table cache variable for type Axis and conformance Axis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Axis and conformance Axis);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AGAttribute, AGAttribute>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, AGAttribute>)
  {
    type metadata accessor for AGAttribute(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, AGAttribute>);
    }
  }
}

void type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item()
{
  if (!lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(255, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
    lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v0 = type metadata accessor for ForEachState.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewDebug.Property and conformance _ViewDebug.Property()
{
  result = lazy protocol witness table cache variable for type _ViewDebug.Property and conformance _ViewDebug.Property;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Property and conformance _ViewDebug.Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Property and conformance _ViewDebug.Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ViewDebug.Property and conformance _ViewDebug.Property;
  if (!lazy protocol witness table cache variable for type _ViewDebug.Property and conformance _ViewDebug.Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewDebug.Property and conformance _ViewDebug.Property);
  }

  return result;
}

void type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item()
{
  if (!lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v0 = type metadata accessor for ForEachState.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item);
    }
  }
}

void type metadata accessor for _DictionaryStorage<EventID, EventType>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for EventType);
    lazy protocol witness table accessor for type EventID and conformance EventID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton()
{
  result = lazy protocol witness table cache variable for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton;
  if (!lazy protocol witness table cache variable for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton;
  if (!lazy protocol witness table cache variable for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey()
{
  result = lazy protocol witness table cache variable for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey;
  if (!lazy protocol witness table cache variable for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey;
  if (!lazy protocol witness table cache variable for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role()
{
  result = lazy protocol witness table cache variable for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role;
  if (!lazy protocol witness table cache variable for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role;
  if (!lazy protocol witness table cache variable for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AGSubgraphRef.Map.Key, [ScrapeableContent.Node]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef.Map.Key, [ScrapeableContent.Node]>)
  {
    type metadata accessor for [(AbstractHomogeneousCollection, Int)](255, &lazy cache variable for type metadata for [ScrapeableContent.Node], type metadata accessor for ScrapeableContent.Node, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AGSubgraphRef.Map.Key, [ScrapeableContent.Node]>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key()
{
  result = lazy protocol witness table cache variable for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key;
  if (!lazy protocol witness table cache variable for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key;
  if (!lazy protocol witness table cache variable for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AGSubgraphRef.Map.Key and conformance AGSubgraphRef.Map.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute()
{
  result = lazy protocol witness table cache variable for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute;
  if (!lazy protocol witness table cache variable for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute;
  if (!lazy protocol witness table cache variable for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index()
{
  result = lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index;
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index;
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index;
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(255, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<URL, WeakBox<CUICatalog>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<URL, WeakBox<CUICatalog>>)
  {
    type metadata accessor for URL();
    type metadata accessor for WeakBox<CUICatalog>(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<URL, WeakBox<CUICatalog>>);
    }
  }
}

uint64_t outlined destroy of NamedImage.VectorKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _DictionaryStorage<UUID, NamedImage.DecodedInfo>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UUID, NamedImage.DecodedInfo>)
  {
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UUID, NamedImage.DecodedInfo>);
    }
  }
}

void type metadata accessor for (Solarium.EnablementLevel, Solarium.EnablementCriteria)()
{
  if (!lazy cache variable for type metadata for (Solarium.EnablementLevel, Solarium.EnablementCriteria))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Solarium.EnablementLevel, Solarium.EnablementCriteria));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel()
{
  result = lazy protocol witness table cache variable for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel;
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel;
  if (!lazy protocol witness table cache variable for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel);
  }

  return result;
}

uint64_t outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(255, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, &type metadata for SizeThatFitsMeasurer, type metadata accessor for ViewGraphGeometryObservers.Observer);
    lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.AnimatorKey, _DisplayList_AnyEffectAnimator>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.AnimatorKey, _DisplayList_AnyEffectAnimator>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimator);
    lazy protocol witness table accessor for type DisplayList.GraphicsRenderer.Cache.AnimatorKey and conformance DisplayList.GraphicsRenderer.Cache.AnimatorKey();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.AnimatorKey, _DisplayList_AnyEffectAnimator>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item()
{
  if (!lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry, MEMORY[0x1E69E62F8]);
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>();
    lazy protocol witness table accessor for type [GlassContainer.Item] and conformance [A](&lazy protocol witness table cache variable for type [GlassContainer.Entry] and conformance [A], &lazy cache variable for type metadata for [GlassContainer.Entry], &type metadata for GlassContainer.Entry);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for ForEachState.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [GlassContainer.Item] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for SeedValue<GlassEffectContainerTintConfiguration.Element>, &type metadata for GlassEffectContainerTintConfiguration.Element, type metadata accessor for SeedValue);
    lazy protocol witness table accessor for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID()
{
  result = lazy protocol witness table cache variable for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID;
  if (!lazy protocol witness table cache variable for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID;
  if (!lazy protocol witness table cache variable for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.Entry.ModelID and conformance GlassContainer.Entry.ModelID);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for SeedValue<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID, type metadata accessor for SeedValue);
    lazy protocol witness table accessor for type ResolvedIDs.Key and conformance ResolvedIDs.Key();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [GlassContainer.Entry.StableID], &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item()
{
  if (!lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [GlassContainer.Item] and conformance [A](&lazy protocol witness table cache variable for type [GlassContainer.Item] and conformance [A], &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item);
    lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    lazy protocol witness table accessor for type GlassItemView and conformance GlassItemView();
    v0 = type metadata accessor for ForEachState.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item);
    }
  }
}

uint64_t static ForEach<>.create(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = a8;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return ForEach.init(_:idGenerator:content:)(v19, &KeyPath, a2, a3, a4, a9);
}

uint64_t static ForEach.create(_:id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v17 = a2;

  return ForEach.init(_:idGenerator:content:)(v13, &v17, a3, a4, a5, a6);
}

uint64_t static ForEach<>.create(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15[0] = a1;
  v15[1] = a2;
  v14 = 0;
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a3;
  v10[4] = a4;
  type metadata accessor for Range<Int>();
  v12 = v11;
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();

  return ForEach.init(_:idGenerator:content:)(v15, &v14, partial apply for thunk for @escaping @callee_guaranteed (@unowned Int) -> (@out C), v10, v12, a6);
}

void type metadata accessor for Range<Int>()
{
  if (!lazy cache variable for type metadata for Range<Int>)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Int>);
    }
  }
}

uint64_t static PrimitiveCustomHoverContextEffect._makeCustomHoverEffect(effect:inputs:body:)@<X0>(unsigned int *a1@<X0>, _OWORD *a2@<X1>, void (*a3)(__int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a5;
  v34 = a4;
  v35 = a3;
  v33 = a6;
  v66 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  *(v65 + 12) = *(a2 + 76);
  v7 = a2[3];
  v63 = a2[2];
  v64 = v7;
  v65[0] = a2[4];
  v8 = a2[1];
  v62[0] = *a2;
  v62[1] = v8;
  v9 = ++lastIdentity;
  v32 = *(&v8 + 1);
  v10 = v8;
  v11 = *(a2 + 52);
  v58 = *(a2 + 36);
  v59 = v11;
  v60 = *(a2 + 68);
  v61 = v62[0];
  v12 = DWORD1(v65[1]);
  v30 = v63;
  v31 = DWORD2(v65[1]);
  outlined init with copy of _CustomHoverEffectInputs(v62, &v49);
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v13 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v14 = specialized CachedEnvironment.attribute<A>(id:_:)(v13);
  v15 = swift_endAccess();
  *&v49 = __PAIR64__(v6, v9);
  *(&v49 + 1) = __PAIR64__(v14, v12);
  MEMORY[0x1EEE9AC00](v15);
  v27 = type metadata accessor for ApplyPrimitiveCustomHoverContextEffect();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<HoverEffectContext>(0, &lazy cache variable for type metadata for Attribute<HoverEffectContext>, &type metadata for HoverEffectContext, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v49, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, &v26, v27, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  v18 = v47[0];
  *&v49 = __PAIR64__(*(v10 + 16), v47[0]);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext();
  v19 = Attribute.init<A>(body:value:flags:update:)();
  v36 = 1;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Attribute<HoverEffectContext>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 256;
  *(v22 + 82) = v37;
  *(v22 + 86) = v38;
  *(v22 + 88) = v21;

  LODWORD(v20) = v31;
  v23 = v30 | 0x20;
  v24 = v32;
  *&v45 = v22;
  *(&v45 + 1) = v32;
  LODWORD(v46[0]) = v30 | 0x20;
  *(&v46[2] + 4) = v60;
  *(&v46[1] + 4) = v59;
  *(v46 + 4) = v58;
  v41 = v46[0];
  v42 = v46[1];
  *(&v46[3] + 4) = __PAIR64__(v31, v18);
  v43[0] = v46[2];
  *(v43 + 12) = *(&v46[2] + 12);
  v44 = v61;
  v39 = v61;
  v40 = v45;
  outlined init with copy of _CustomHoverEffectInputs(&v44, &v49);
  v35(&v39);
  v47[2] = v41;
  v47[3] = v42;
  v48[0] = v43[0];
  *(v48 + 12) = *(v43 + 12);
  v47[0] = v39;
  v47[1] = v40;
  outlined destroy of _CustomHoverEffectInputs(v47);
  v49 = v61;
  v50 = v22;
  v51 = v24;
  v52 = v23;
  v53 = v58;
  v54 = v59;
  v55 = v60;
  v56 = v18;
  v57 = v20;
  return outlined destroy of _CustomHoverEffectInputs(&v49);
}

void *PrimitiveCustomHoverContextEffect.systemHoverEffect.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 24))(&v5);
  v4 = (v5 & 1) == 0;
  if ((v5 & 0xFE) == 2)
  {
    v4 = 1;
  }

  *a2 = 3;
  a2[1] = v4;
  return result;
}

double ApplyPrimitiveCustomHoverContextEffect.value.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Value = AGGraphGetValue();
  v12 = *(Value + 16);
  v11 = *(Value + 32);
  v13 = *Value;
  v28 = *(Value + 48);
  v27[1] = v12;
  v27[2] = v11;
  v27[0] = v13;
  v14 = *(Value + 16);
  v22 = *Value;
  v23 = v14;
  v24 = *(Value + 32);
  v25 = *(Value + 48);
  outlined init with copy of HoverEffectContext(v27, v26);
  v15 = AGGraphGetValue();
  v16 = *(v6 + 16);
  v16(v8, v15, v5);
  LODWORD(v27[0]) = v9;
  v17 = *(a1 + 24);
  (*(v17 + 16))(&v22, v27, v5, v17);
  v18 = *(v6 + 8);
  v18(v8, v5);
  v19 = AGGraphGetValue();
  v16(v8, v19, v5);
  (*(v17 + 24))(v27, v5, v17);
  v18(v8, v5);
  if (LOBYTE(v27[0]) != 3 && LOBYTE(v27[0]) != 2 && (v27[0] & 1) != 0 && (v24 & 1) == 0)
  {
    LOBYTE(v24) = 1;
  }

  v20 = v23;
  *a2 = v22;
  *(a2 + 16) = v20;
  result = *&v24;
  *(a2 + 32) = v24;
  *(a2 + 48) = v25;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance ApplyPrimitiveCustomHoverContextEffect<A>@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

uint64_t DefaultAnimation.function.getter()
{
  if (one-time initialization token for base != -1)
  {
    swift_once();
  }

  return (*(*static DefaultAnimation.base + 96))();
}

uint64_t ForEachSectionCollection.init<A>(subviewOf:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v28 = a6;
  v29 = a1;
  v31 = a4;
  v32 = a2;
  v33 = a3;
  v34 = a8;
  v30 = *(a5 - 8);
  v13 = v30;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = lazy protocol witness table accessor for type SectionCollection and conformance SectionCollection();
  v17 = lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID();
  v37 = &type metadata for SectionCollection;
  v38 = &type metadata for SectionConfiguration.ID;
  v39 = a4;
  v40 = v16;
  v41 = v17;
  v18 = type metadata accessor for ForEach();
  v36 = a6;
  WitnessTable = swift_getWitnessTable();
  v37 = a5;
  v38 = v18;
  v39 = a7;
  v40 = WitnessTable;
  type metadata accessor for GroupSectionsOfContent();
  v20 = type metadata accessor for Group();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v28 - v22;
  (*(v13 + 16))(v15, a1, a5, v21);
  v24 = swift_allocObject();
  v24[2] = v31;
  v24[3] = a5;
  v24[4] = v28;
  v24[5] = a7;
  v25 = v33;
  v24[6] = v32;
  v24[7] = v25;

  Group.init<A, B>(sections:transform:)(v15, partial apply for closure #1 in ForEachSectionCollection.init<A>(subviewOf:content:), v24, a5, v18, a7, WitnessTable);
  v35 = swift_getWitnessTable();
  swift_getWitnessTable();
  v26 = AnyView.init<A>(_:)(v23, v20);

  result = (*(v30 + 8))(v29, a5);
  *v34 = v26;
  return result;
}

double ForEach.init<A>(sectionOf:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);

  ForEachSectionCollection.init<A>(subviewOf:content:)(v19, a2, a3, a4, a5, a6, a7, &v26);
  KeyPath = swift_getKeyPath();
  v21 = type metadata accessor for ForEachSectionCollection();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID();
  ForEach.init(_:idGenerator:content:)(&v26, &KeyPath, a2, a3, v21, &v27);
  (*(v16 + 8))(a1, a5);
  v22 = v28;
  v23 = v30;
  *a8 = v27;
  *(a8 + 16) = v22;
  result = *&v29;
  *(a8 + 24) = v29;
  *(a8 + 40) = v23;
  return result;
}

uint64_t closure #1 in ForEachSectionCollection.init<A>(subviewOf:content:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v28 = *a1;
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = lazy protocol witness table accessor for type SectionCollection and conformance SectionCollection();
  v15 = lazy protocol witness table accessor for type SectionConfiguration and conformance SectionConfiguration();

  ForEach<>.init(_:content:)(&v28, partial apply for closure #1 in closure #1 in ForEachSectionCollection.init<A>(subviewOf:content:), v13, &type metadata for SectionCollection, &type metadata for SectionConfiguration.ID, a4, v14, a6, &v24, v15);
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  v16 = lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID();
  *&v28 = &type metadata for SectionCollection;
  *(&v28 + 1) = &type metadata for SectionConfiguration.ID;
  v29 = a4;
  *&v30 = v14;
  *(&v30 + 1) = v16;
  v17 = type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v20, v17, WitnessTable);

  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  static ViewBuilder.buildExpression<A>(_:)(&v24, v17, WitnessTable);
}

uint64_t closure #1 in closure #1 in ForEachSectionCollection.init<A>(subviewOf:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15(v12);
  static ViewBuilder.buildExpression<A>(_:)(v10, a4, a6);
  v16 = *(v8 + 8);
  v16(v10, a4);
  static ViewBuilder.buildExpression<A>(_:)(v14, a4, a6);
  return (v16)(v14, a4);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance ForEachSectionCollection<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(before:)();
}

void protocol witness for Collection.subscript.read in conformance ForEachSectionCollection<A>(uint64_t *a1)
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
  ForEachSectionCollection.subscript.read();
}

uint64_t protocol witness for Collection.indices.getter in conformance ForEachSectionCollection<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance ForEachSectionCollection<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ForEachSectionCollection<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

void protocol witness for Sequence.makeIterator() in conformance ForEachSectionCollection<A>(void *a1@<X8>)
{
  *a1 = *v1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ForEachSectionCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ForEachSectionCollection<A>()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t lazy protocol witness table accessor for type SectionCollection and conformance SectionCollection()
{
  result = lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection;
  if (!lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection;
  if (!lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection;
  if (!lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection;
  if (!lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionCollection and conformance SectionCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SectionConfiguration and conformance SectionConfiguration()
{
  result = lazy protocol witness table cache variable for type SectionConfiguration and conformance SectionConfiguration;
  if (!lazy protocol witness table cache variable for type SectionConfiguration and conformance SectionConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionConfiguration and conformance SectionConfiguration);
  }

  return result;
}

uint64_t (*EnvironmentValues.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = EnvironmentValues.subscript.getter();
  return EnvironmentValues.subscript.modify;
}

{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = EnvironmentValues.subscript.getter();
  return EnvironmentValues.subscript.modify;
}

{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = specialized EnvironmentValues.subscript.getter();
  return EnvironmentValues.subscript.modify;
}

{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = EnvironmentValues.subscript.getter();
  return EnvironmentValues.subscript.modify;
}

{
  a1[1] = a3;
  a1[2] = v3;
  *a1 = EnvironmentValues.subscript.getter();
  return EnvironmentValues.subscript.modify;
}

uint64_t EnvironmentValues.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = swift_unknownObjectRetain();
    specialized EnvironmentValues.subscript.setter(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    specialized EnvironmentValues.subscript.setter(v2);
  }

  return swift_unknownObjectRelease();
}

{
  v2 = *a1;
  if (a2)
  {
    v3 = swift_unknownObjectRetain();
    specialized EnvironmentValues.subscript.setter(v3);
    swift_unknownObjectRelease();
  }

  else
  {
    specialized EnvironmentValues.subscript.setter(v2);
  }

  return swift_unknownObjectRelease();
}

uint64_t key path setter for EnvironmentValues.subscript<A>(_:) : <A>EnvironmentValuesA()
{
  v0 = swift_unknownObjectRetain();
  specialized EnvironmentValues.subscript.setter(v0);

  return swift_unknownObjectRelease();
}

{
  v0 = swift_unknownObjectRetain();
  specialized EnvironmentValues.subscript.setter(v0);

  return swift_unknownObjectRelease();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EnvironmentObjectKey<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  specialized EnvironmentObjectKey.hash(into:)(v4, *(a2 + 16));
  return Hasher._finalize()();
}

Swift::Int specialized EnvironmentObjectKey.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

unint64_t UnsafeBufferPointer.startAddress.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (!result)
  {
    return ~*(*(a3 - 8) + 80) | 0xFFFFFFFFFFFFFF00;
  }

  return result;
}

uint64_t static AccessibilityProperties.ActivationPointKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.ActivationPointKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityActivationPointStorage;
}

uint64_t key path setter for AccessibilityProperties.activationPointStorage : AccessibilityProperties(__int128 *a1)
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

void _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC17ChildBehaviorKindV_Tt0g5(char *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ChildBehaviorKind), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v10 + 1);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1((v10 + 1), v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorKind?, &type metadata for AccessibilityChildBehaviorKind, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    v9 = v10[0];
    __swift_destroy_boxed_opaque_existential_1(v10 + 1);
  }

  else
  {
    v9 = 2;
  }

  *a1 = v9;
}

void *_s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC023DataSeriesConfigurationG0V_Tt0g5@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    _s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOi0_(v10);
  }

  return memcpy(a1, v10, 0x138uLL);
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC05HintsG0V_Tt0g5()
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

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015LinkDestinationG0V_Tt0g5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LinkDestination.Configuration??(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 280);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.LinkDestinationKey), (v8 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v6 + 56) + 40 * v7, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    type metadata accessor for LinkDestination.Configuration?(0);
    v12 = v11;
    (*(v10 + 16))(v11, v11, v9, v10);
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if ((*(v13 + 48))(v5, 1, v12) != 1)
    {
      return outlined init with take of LinkDestination.Configuration?(v5, a1, type metadata accessor for LinkDestination.Configuration?);
    }
  }

  else
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    v12 = v14;
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  }

  v15 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  type metadata accessor for LinkDestination.Configuration?(0);
  result = (*(*(v12 - 8) + 48))(v5, 1, v12);
  if (result != 1)
  {
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v5, type metadata accessor for LinkDestination.Configuration??);
  }

  return result;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015RoleDescriptionG0V_Tt0g5()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.RoleDescriptionKey);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for Text?, &type metadata for Text, MEMORY[0x1E69E6720]);
  (*(v5 + 16))(&v9, v6, v6, v4, v5);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

void _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015TextContentTypeG0V_Tt0g5(char *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.TextContentTypeKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v10 + 1);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1((v10 + 1), v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityTextContentType?, &type metadata for AccessibilityTextContentType, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    v9 = v10[0];
    __swift_destroy_boxed_opaque_existential_1(v10 + 1);
  }

  else
  {
    v9 = 8;
  }

  *a1 = v9;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC06LocaleG0V_Tt0g5@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale??(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 280);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.LocaleKey), (v8 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v6 + 56) + 40 * v7, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    type metadata accessor for Locale?(0);
    v12 = v11;
    (*(v10 + 16))(v11, v11, v9, v10);
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if ((*(v13 + 48))(v5, 1, v12) != 1)
    {
      return outlined init with take of LinkDestination.Configuration?(v5, a1, type metadata accessor for Locale?);
    }
  }

  else
  {
    type metadata accessor for Locale?(0);
    v12 = v14;
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  }

  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  type metadata accessor for Locale?(0);
  result = (*(*(v12 - 8) + 48))(v5, 1, v12);
  if (result != 1)
  {
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v5, type metadata accessor for Locale??);
  }

  return result;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC06ImagesG0V_Tt0g5()
{
  v1 = *(v0 + 280);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ImagesKey), (v3 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for [Image], &type metadata for Image, MEMORY[0x1E69E62F8]);
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

    v7 = static AccessibilityProperties.ImagesKey.defaultValue;
  }

  return v7;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluisAC015LinkDestinationG0V_Tt0g5(uint64_t a1)
{
  type metadata accessor for LinkDestination.Configuration?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LinkDestination.Configuration?(a1, v4, type metadata accessor for LinkDestination.Configuration?);
  v5 = type metadata accessor for LinkDestination.Configuration(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.LinkDestinationKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v12);
    outlined destroy of AnyAccessibilityPropertiesEntry?(a1, type metadata accessor for LinkDestination.Configuration?);
    v6 = type metadata accessor for AnyAccessibilityPropertiesEntry?;
    v7 = v12;
  }

  else
  {
    outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for LinkDestination.Configuration?);
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<LinkDestination.Configuration?>, type metadata accessor for LinkDestination.Configuration?, type metadata accessor for AccessibilityPropertiesEntry);
    v12[3] = v8;
    v12[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    outlined init with copy of LinkDestination.Configuration?(a1, boxed_opaque_existential_1, type metadata accessor for LinkDestination.Configuration?);
    specialized Dictionary.subscript.setter(v12, &type metadata for AccessibilityProperties.LinkDestinationKey);
    v7 = a1;
    v6 = type metadata accessor for LinkDestination.Configuration?;
  }

  return outlined destroy of AnyAccessibilityPropertiesEntry?(v7, v6);
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluisAC06LocaleG0V_Tt0g5(uint64_t a1)
{
  type metadata accessor for Locale?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LinkDestination.Configuration?(a1, v4, type metadata accessor for Locale?);
  v5 = type metadata accessor for Locale();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.LocaleKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v12);
    outlined destroy of AnyAccessibilityPropertiesEntry?(a1, type metadata accessor for Locale?);
    v6 = type metadata accessor for AnyAccessibilityPropertiesEntry?;
    v7 = v12;
  }

  else
  {
    outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for Locale?);
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<Locale?>, type metadata accessor for Locale?, type metadata accessor for AccessibilityPropertiesEntry);
    v12[3] = v8;
    v12[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    outlined init with copy of LinkDestination.Configuration?(a1, boxed_opaque_existential_1, type metadata accessor for Locale?);
    specialized Dictionary.subscript.setter(v12, &type metadata for AccessibilityProperties.LocaleKey);
    v7 = a1;
    v6 = type metadata accessor for Locale?;
  }

  return outlined destroy of AnyAccessibilityPropertiesEntry?(v7, v6);
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluisAC06ImagesG0V_Tt0g5(uint64_t a1)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ImageV_Tt1g5(a1, static AccessibilityProperties.ImagesKey.defaultValue))
  {

    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ImagesKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<[Image]>();
    v4[3] = v3;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = a1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.ImagesKey);
  }
}

void AccessibilityProperties.activationPoint.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ActivationPointKey), (v5 & 1) != 0) && (outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v14), v6 = v15, v7 = v16, __swift_project_boxed_opaque_existential_1(v14, v15), type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, &type metadata for AccessibilityActivationPointStorage, MEMORY[0x1E69E6720]), (*(v7 + 16))(v13, v8, v8, v6, v7), v9 = v13[0], v10 = v13[1], v11 = v13[2], v12 = v13[3], __swift_destroy_boxed_opaque_existential_1(v14), v12))
  {
    outlined consume of AccessibilityActivationPointStorage?(v9, v10, v11, v12);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }
}

uint64_t one-time initialization function for valueType()
{
  result = type metadata accessor for AccessibilityChartDescriptorStorage();
  static AccessibilityProperties.ChartDescriptorKey.valueType = result;
  return result;
}

uint64_t static AccessibilityProperties.ChartDescriptorKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return static AccessibilityProperties.ChartDescriptorKey.valueType;
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.ChartDescriptorKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return static AccessibilityProperties.ChartDescriptorKey.valueType;
}

uint64_t key path setter for AccessibilityProperties.chartDescriptor : AccessibilityProperties(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityChartDescriptorStorage?>, type metadata accessor for AccessibilityChartDescriptorStorage?, type metadata accessor for AccessibilityPropertiesEntry);
    v4[3] = v2;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;

    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.ChartDescriptorKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChartDescriptorKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

void (*AccessibilityProperties.chartDescriptor.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015ChartDescriptorG0V_Tt0g5Tm(&type metadata for AccessibilityProperties.ChartDescriptorKey, type metadata accessor for AccessibilityChartDescriptorStorage?);
  return AccessibilityProperties.chartDescriptor.modify;
}

void AccessibilityProperties.chartDescriptor.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityChartDescriptorStorage?>, type metadata accessor for AccessibilityChartDescriptorStorage?, type metadata accessor for AccessibilityPropertiesEntry);
      v7 = v4;
      v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v6[0] = v3;

      specialized Dictionary.subscript.setter(v6, &type metadata for AccessibilityProperties.ChartDescriptorKey);
    }

    else
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChartDescriptorKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
      outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }
  }

  else if (v3)
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityChartDescriptorStorage?>, type metadata accessor for AccessibilityChartDescriptorStorage?, type metadata accessor for AccessibilityPropertiesEntry);
    v7 = v5;
    v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v6[0] = v3;
    specialized Dictionary.subscript.setter(v6, &type metadata for AccessibilityProperties.ChartDescriptorKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChartDescriptorKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  free(v2);
}

uint64_t static AccessibilityProperties.ChildBehaviorKind.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.ChildBehaviorKind()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityChildBehaviorKind;
}

void AccessibilityProperties.childBehaviorKind.getter(char *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ChildBehaviorKind), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v10 + 1);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1((v10 + 1), v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorKind?, &type metadata for AccessibilityChildBehaviorKind, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    v9 = v10[0];
    __swift_destroy_boxed_opaque_existential_1(v10 + 1);
  }

  else
  {
    v9 = 2;
  }

  *a1 = v9;
}

uint64_t key path setter for AccessibilityProperties.childBehaviorKind : AccessibilityProperties(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChildBehaviorKind, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>();
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.ChildBehaviorKind);
  }
}

uint64_t AccessibilityProperties.childBehaviorKind.setter(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChildBehaviorKind, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>();
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.ChildBehaviorKind);
  }
}

void (*AccessibilityProperties.childBehaviorKind.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 40) = v1;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC17ChildBehaviorKindV_Tt0g5((v3 + 48));
  return AccessibilityProperties.childBehaviorKind.modify;
}

void AccessibilityProperties.childBehaviorKind.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (v2 == 2)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.ChildBehaviorKind, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v1);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v1, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>();
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v2;
    specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.ChildBehaviorKind);
  }

  free(v1);
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluisAC017CustomContentListG0V_Tt0g5Tm(uint64_t a1)
{
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI31AccessibilityCustomContentEntryV_Tt1g5(a1, MEMORY[0x1E69E7CC0]))
  {

    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.CustomContentListKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<[AccessibilityCustomContentEntry]>();
    v4[3] = v3;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = a1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.CustomContentListKey);
  }
}

uint64_t static AccessibilityProperties.CustomAttributesKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.CustomAttributesKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityCustomAttributes;
}

uint64_t key path setter for AccessibilityProperties.customAttributes : AccessibilityProperties(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>();
    v4[3] = v2;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;

    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.CustomAttributesKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.CustomAttributesKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

uint64_t AccessibilityProperties.customAttributes.setter(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>();
    v4[3] = v2;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.CustomAttributesKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.CustomAttributesKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

uint64_t static AccessibilityProperties.DataSeriesConfigurationKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.DataSeriesConfigurationKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityDataSeriesConfiguration;
}

void *AccessibilityProperties.dataSeriesConfiguration.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    _s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOi0_(v10);
  }

  return memcpy(a1, v10, 0x138uLL);
}

uint64_t key path setter for AccessibilityProperties.dataSeriesConfiguration : AccessibilityProperties(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(__dst) == 1)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v6);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v6, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>();
    v5[3] = v3;
    v5[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v5[0] = swift_allocObject();
    memcpy((v5[0] + 16), __src, 0x138uLL);
    memcpy(v6, __src, sizeof(v6));
    outlined init with copy of AccessibilityDataSeriesConfiguration(v6, &v4);
    return specialized Dictionary.subscript.setter(v5, &type metadata for AccessibilityProperties.DataSeriesConfigurationKey);
  }
}

uint64_t AccessibilityProperties.dataSeriesConfiguration.setter(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(__dst) == 1)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>();
    v4[3] = v3;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = swift_allocObject();
    memcpy((v4[0] + 16), __src, 0x138uLL);
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.DataSeriesConfigurationKey);
  }
}

void (*AccessibilityProperties.dataSeriesConfiguration.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x4E8uLL);
  }

  *a1 = v3;
  v3[156] = v1;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC023DataSeriesConfigurationG0V_Tt0g5(v3);
  return AccessibilityProperties.dataSeriesConfiguration.modify;
}

void AccessibilityProperties.dataSeriesConfiguration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    memcpy(__dst, v2, sizeof(__dst));
    memcpy((v2 + 312), v2, 0x138uLL);
    if (_s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(v2 + 312) == 1)
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2 + 624);
      outlined destroy of AnyAccessibilityPropertiesEntry?(v2 + 624, type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }

    else
    {
      type metadata accessor for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>();
      v8 = v3;
      v9 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v7[0] = swift_allocObject();
      memcpy((v7[0] + 16), __dst, 0x138uLL);
      memcpy((v2 + 624), __dst, 0x138uLL);
      outlined init with copy of AccessibilityDataSeriesConfiguration(v2 + 624, v2 + 936);
      specialized Dictionary.subscript.setter(v7, &type metadata for AccessibilityProperties.DataSeriesConfigurationKey);
    }

    memcpy((v2 + 624), v2, 0x138uLL);
    outlined destroy of AccessibilityDataSeriesConfiguration?(v2 + 624);
  }

  else
  {
    memcpy(__src, v2, sizeof(__src));
    memcpy((v2 + 312), v2, 0x138uLL);
    if (_s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(v2 + 312) == 1)
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.DataSeriesConfigurationKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2 + 624);
      outlined destroy of AnyAccessibilityPropertiesEntry?(v2 + 624, type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }

    else
    {
      type metadata accessor for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>();
      v8 = v4;
      v9 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v7[0] = swift_allocObject();
      memcpy((v7[0] + 16), __src, 0x138uLL);
      specialized Dictionary.subscript.setter(v7, &type metadata for AccessibilityProperties.DataSeriesConfigurationKey);
    }
  }

  free(v2);
}

uint64_t static AccessibilityProperties.AutomationTypeKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t AccessibilityProperties.explicitAutomationType.getter()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.AutomationTypeKey);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  type metadata accessor for AXAutomationType?(0);
  (*(v5 + 16))(&v9, v6, v6, v4, v5);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t key path setter for AccessibilityProperties.explicitAutomationType : AccessibilityProperties(uint64_t *a1)
{
  if (a1[1])
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.AutomationTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), &v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(&v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    v2 = *a1;
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AXAutomationType?>, type metadata accessor for AXAutomationType?, type metadata accessor for AccessibilityPropertiesEntry);
    v6 = v3;
    v7 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4 = v2;
    v5 = 0;
    return specialized Dictionary.subscript.setter(&v4, &type metadata for AccessibilityProperties.AutomationTypeKey);
  }
}

uint64_t AccessibilityProperties.explicitAutomationType.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.AutomationTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), &v5);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(&v5, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AXAutomationType?>, type metadata accessor for AXAutomationType?, type metadata accessor for AccessibilityPropertiesEntry);
    v7 = v4;
    v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v5 = a1;
    v6 = 0;
    return specialized Dictionary.subscript.setter(&v5, &type metadata for AccessibilityProperties.AutomationTypeKey);
  }
}

void (*AccessibilityProperties.explicitAutomationType.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 40) = AccessibilityProperties.explicitAutomationType.getter();
  *(v4 + 48) = v5 & 1;
  return AccessibilityProperties.explicitAutomationType.modify;
}

void AccessibilityProperties.explicitAutomationType.modify(uint64_t a1)
{
  v1 = *a1;
  if (*(*a1 + 48))
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.AutomationTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v1);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v1, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    v2 = v1[5];
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AXAutomationType?>, type metadata accessor for AXAutomationType?, type metadata accessor for AccessibilityPropertiesEntry);
    v6 = v3;
    v7 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4 = v2;
    v5 = 0;
    specialized Dictionary.subscript.setter(&v4, &type metadata for AccessibilityProperties.AutomationTypeKey);
  }

  free(v1);
}

uint64_t (*AccessibilityProperties.hints.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC05HintsG0V_Tt0g5();
  return AccessibilityProperties.hints.modify;
}

uint64_t static AccessibilityProperties.InputLabelsKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

void protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.InputLabelsKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for [Text], &type metadata for Text, MEMORY[0x1E69E62F8]);
}

uint64_t key path setter for AccessibilityProperties.inputLabels : AccessibilityProperties(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Text]?>, type metadata accessor for [Text]?, type metadata accessor for AccessibilityPropertiesEntry);
    v4[3] = v2;
    v4[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;

    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.InputLabelsKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.InputLabelsKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

void (*AccessibilityProperties.inputLabels.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015ChartDescriptorG0V_Tt0g5Tm(&type metadata for AccessibilityProperties.InputLabelsKey, type metadata accessor for [Text]?);
  return AccessibilityProperties.inputLabels.modify;
}

void AccessibilityProperties.inputLabels.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    if (v3)
    {
      type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Text]?>, type metadata accessor for [Text]?, type metadata accessor for AccessibilityPropertiesEntry);
      v7 = v4;
      v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
      v6[0] = v3;

      specialized Dictionary.subscript.setter(v6, &type metadata for AccessibilityProperties.InputLabelsKey);
    }

    else
    {
      specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.InputLabelsKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
      outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
    }
  }

  else if (v3)
  {
    type metadata accessor for AnyAccessibilityPropertiesEntry?(0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Text]?>, type metadata accessor for [Text]?, type metadata accessor for AccessibilityPropertiesEntry);
    v7 = v5;
    v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v6[0] = v3;
    specialized Dictionary.subscript.setter(v6, &type metadata for AccessibilityProperties.InputLabelsKey);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.InputLabelsKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v2);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v2, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  free(v2);
}

uint64_t static AccessibilityProperties.LinkDestinationKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.AutomationTypeKey(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (*a3 == -1)
  {
  }

  else
  {
    v6 = a4;
    swift_once();
    a4 = v6;
  }

  return a4(0);
}

uint64_t AccessibilityProperties.linkDestination.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LinkDestination.Configuration??(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 280);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.LinkDestinationKey), (v8 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v6 + 56) + 40 * v7, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    type metadata accessor for LinkDestination.Configuration?(0);
    v12 = v11;
    (*(v10 + 16))(v11, v11, v9, v10);
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if ((*(v13 + 48))(v5, 1, v12) != 1)
    {
      return outlined init with take of LinkDestination.Configuration?(v5, a1, type metadata accessor for LinkDestination.Configuration?);
    }
  }

  else
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    v12 = v14;
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  }

  v15 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  type metadata accessor for LinkDestination.Configuration?(0);
  result = (*(*(v12 - 8) + 48))(v5, 1, v12);
  if (result != 1)
  {
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v5, type metadata accessor for LinkDestination.Configuration??);
  }

  return result;
}

void (*AccessibilityProperties.linkDestination.modify(void *a1))(void *a1, char a2)
{
  *a1 = v1;
  type metadata accessor for LinkDestination.Configuration?(0);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    a1[2] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    a1[2] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[3] = v5;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015LinkDestinationG0V_Tt0g5(v5);
  return AccessibilityProperties.linkDestination.modify;
}

uint64_t static AccessibilityProperties.RoleDescriptionKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.RoleDescriptionKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for Text;
}

uint64_t AccessibilityProperties.roleDescription.getter()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.RoleDescriptionKey);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for Text?, &type metadata for Text, MEMORY[0x1E69E6720]);
  (*(v5 + 16))(&v9, v6, v6, v4, v5);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t key path setter for AccessibilityProperties.roleDescription : AccessibilityProperties(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  outlined copy of Text?(*a1, v2, v3, v4);
  return AccessibilityProperties.roleDescription.setter(v1, v2, v3, v4);
}

uint64_t AccessibilityProperties.roleDescription.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text?(a1, a2, a3, a4);
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    outlined consume of Text.Storage(a1, a2, a3 & 1);

    type metadata accessor for AccessibilityPropertiesEntry<Text?>();
    v11[3] = v8;
    v11[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v9 = swift_allocObject();
    v11[0] = v9;
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = a3;
    v9[5] = a4;
    specialized Dictionary.subscript.setter(v11, &type metadata for AccessibilityProperties.RoleDescriptionKey);
    return outlined consume of Text?(a1, a2, a3, a4);
  }

  else
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.RoleDescriptionKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v11);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v11, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }
}

void (*AccessibilityProperties.roleDescription.modify(void *a1))(uint64_t **a1, char a2)
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
  v3[4] = v1;
  *v3 = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015RoleDescriptionG0V_Tt0g5();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return AccessibilityProperties.roleDescription.modify;
}

void AccessibilityProperties.roleDescription.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    outlined copy of Text?(**a1, v4, v5, v6);
    AccessibilityProperties.roleDescription.setter(v3, v4, v5, v6);
    outlined consume of Text?(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    AccessibilityProperties.roleDescription.setter(**a1, v4, v5, v6);
  }

  free(v2);
}

uint64_t static AccessibilityProperties.SortPriorityKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.SortPriorityKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return MEMORY[0x1E69E63B0];
}

uint64_t AccessibilityProperties.sortPriority.getter()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.SortPriorityKey);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  (*(v5 + 16))(&v9, v6, v6, v4, v5);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t key path setter for AccessibilityProperties.sortPriority : AccessibilityProperties(uint64_t *a1)
{
  if (a1[1])
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.SortPriorityKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), &v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(&v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    v2 = *a1;
    type metadata accessor for AccessibilityPropertiesEntry<Double?>();
    v6 = v3;
    v7 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4 = v2;
    v5 = 0;
    return specialized Dictionary.subscript.setter(&v4, &type metadata for AccessibilityProperties.SortPriorityKey);
  }
}

uint64_t AccessibilityProperties.sortPriority.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.SortPriorityKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), &v5);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(&v5, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<Double?>();
    v7 = v4;
    v8 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v5 = a1;
    v6 = 0;
    return specialized Dictionary.subscript.setter(&v5, &type metadata for AccessibilityProperties.SortPriorityKey);
  }
}

void (*AccessibilityProperties.sortPriority.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 40) = AccessibilityProperties.sortPriority.getter();
  *(v4 + 48) = v5 & 1;
  return AccessibilityProperties.sortPriority.modify;
}

void AccessibilityProperties.sortPriority.modify(uint64_t a1)
{
  v1 = *a1;
  if (*(*a1 + 48))
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.SortPriorityKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v1);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v1, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    v2 = v1[5];
    type metadata accessor for AccessibilityPropertiesEntry<Double?>();
    v6 = v3;
    v7 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4 = v2;
    v5 = 0;
    specialized Dictionary.subscript.setter(&v4, &type metadata for AccessibilityProperties.SortPriorityKey);
  }

  free(v1);
}

uint64_t static AccessibilityProperties.TextContentTypeKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.TextContentTypeKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityTextContentType;
}

void AccessibilityProperties.textContentType.getter(char *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.TextContentTypeKey), (v5 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v4, v10 + 1);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1((v10 + 1), v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityTextContentType?, &type metadata for AccessibilityTextContentType, MEMORY[0x1E69E6720]);
    (*(v7 + 16))(v10, v8, v8, v6, v7);
    v9 = v10[0];
    __swift_destroy_boxed_opaque_existential_1(v10 + 1);
  }

  else
  {
    v9 = 8;
  }

  *a1 = v9;
}

uint64_t key path setter for AccessibilityProperties.textContentType : AccessibilityProperties(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 8)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextContentTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityTextContentType?>();
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextContentTypeKey);
  }
}

uint64_t AccessibilityProperties.textContentType.setter(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 8)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextContentTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityTextContentType?>();
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextContentTypeKey);
  }
}

void (*AccessibilityProperties.textContentType.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 40) = v1;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015TextContentTypeG0V_Tt0g5((v3 + 48));
  return AccessibilityProperties.textContentType.modify;
}

void AccessibilityProperties.textContentType.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (v2 == 8)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextContentTypeKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v1);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v1, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityTextContentType?>();
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v2;
    specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextContentTypeKey);
  }

  free(v1);
}

uint64_t static AccessibilityProperties.TextHeadingLevelKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

ValueMetadata *protocol witness for static AccessibilityOptionalPropertiesKey.valueType.getter in conformance AccessibilityProperties.TextHeadingLevelKey()
{
  if (one-time initialization token for valueType != -1)
  {
    swift_once();
  }

  return &type metadata for AccessibilityHeadingLevel;
}

uint64_t AccessibilityProperties.textHeadingLevel.getter()
{
  v1 = *(v0 + 280);
  if (!*(v1 + 16))
  {
    return 7;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.TextHeadingLevelKey);
  if ((v3 & 1) == 0)
  {
    return 7;
  }

  outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v9 + 1);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1((v9 + 1), v10);
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityHeadingLevel?, &type metadata for AccessibilityHeadingLevel, MEMORY[0x1E69E6720]);
  (*(v5 + 16))(v9, v6, v6, v4, v5);
  v7 = LOBYTE(v9[0]);
  __swift_destroy_boxed_opaque_existential_1(v9 + 1);
  return v7;
}

uint64_t key path setter for AccessibilityProperties.textHeadingLevel : AccessibilityProperties(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 7)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextHeadingLevelKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>();
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextHeadingLevelKey);
  }
}

uint64_t AccessibilityProperties.textHeadingLevel.setter(char a1)
{
  if (a1 == 7)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextHeadingLevelKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v4);
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v4, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>();
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = a1;
    return specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextHeadingLevelKey);
  }
}

void (*AccessibilityProperties.textHeadingLevel.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 40) = v1;
  *(v3 + 48) = AccessibilityProperties.textHeadingLevel.getter();
  return AccessibilityProperties.textHeadingLevel.modify;
}

void AccessibilityProperties.textHeadingLevel.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  if (v2 == 7)
  {
    specialized Dictionary.removeValue(forKey:)(&type metadata for AccessibilityProperties.TextHeadingLevelKey, outlined init with take of _ViewList_Elements, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v1);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v1, type metadata accessor for AnyAccessibilityPropertiesEntry?);
  }

  else
  {
    type metadata accessor for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>();
    v5 = v3;
    v6 = &protocol witness table for AccessibilityPropertiesEntry<A>;
    v4[0] = v2;
    specialized Dictionary.subscript.setter(v4, &type metadata for AccessibilityProperties.TextHeadingLevelKey);
  }

  free(v1);
}

uint64_t static AccessibilityProperties.LocaleKey.valueType.getter()
{
  if (one-time initialization token for valueType != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t AccessibilityProperties.locale.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale??(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 280);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.LocaleKey), (v8 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v6 + 56) + 40 * v7, v18);
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    type metadata accessor for Locale?(0);
    v12 = v11;
    (*(v10 + 16))(v11, v11, v9, v10);
    v13 = *(v12 - 8);
    (*(v13 + 56))(v5, 0, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    if ((*(v13 + 48))(v5, 1, v12) != 1)
    {
      return outlined init with take of LinkDestination.Configuration?(v5, a1, type metadata accessor for Locale?);
    }
  }

  else
  {
    type metadata accessor for Locale?(0);
    v12 = v14;
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  }

  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  type metadata accessor for Locale?(0);
  result = (*(*(v12 - 8) + 48))(v5, 1, v12);
  if (result != 1)
  {
    return outlined destroy of AnyAccessibilityPropertiesEntry?(v5, type metadata accessor for Locale??);
  }

  return result;
}

uint64_t key path setter for AccessibilityProperties.linkDestination : AccessibilityProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(char *), uint64_t (*a8)(void))
{
  v12 = a5(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  outlined init with copy of LinkDestination.Configuration?(a1, &v19 - v16, a6);
  outlined init with copy of LinkDestination.Configuration?(v17, v14, a6);
  a7(v14);
  return outlined destroy of AnyAccessibilityPropertiesEntry?(v17, a8);
}

uint64_t AccessibilityProperties.linkDestination.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(char *), uint64_t (*a5)(void))
{
  v9 = a2(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  outlined init with copy of LinkDestination.Configuration?(a1, &v13 - v10, a3);
  a4(v11);
  return outlined destroy of AnyAccessibilityPropertiesEntry?(a1, a5);
}

void (*AccessibilityProperties.locale.modify(void *a1))(void *a1, char a2)
{
  *a1 = v1;
  type metadata accessor for Locale?(0);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    a1[2] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    a1[2] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[3] = v5;
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC06LocaleG0V_Tt0g5(v5);
  return AccessibilityProperties.locale.modify;
}

void AccessibilityProperties.linkDestination.modify(void *a1, char a2, uint64_t (*a3)(void), void (*a4)(void *), uint64_t (*a5)(void))
{
  v10 = a1[2];
  v11 = a1[3];
  outlined init with copy of LinkDestination.Configuration?(v11, v10, a3);
  v12 = a1[1];
  if (a2)
  {
    outlined init with copy of LinkDestination.Configuration?(v10, v12, a3);
    a4(v12);
    outlined destroy of AnyAccessibilityPropertiesEntry?(v10, a5);
  }

  else
  {
    a4(v10);
  }

  outlined destroy of AnyAccessibilityPropertiesEntry?(v11, a5);
  free(v11);
  free(v10);

  free(v12);
}

uint64_t static AccessibilityProperties.HintsKey.defaultValue.getter(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t protocol witness for static AccessibilityPropertiesKey.defaultValue.getter in conformance AccessibilityProperties.HintsKey@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t AccessibilityProperties.images.getter()
{
  v1 = *(v0 + 280);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for AccessibilityProperties.ImagesKey), (v3 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v1 + 56) + 40 * v2, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for [Image], &type metadata for Image, MEMORY[0x1E69E62F8]);
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

    v7 = static AccessibilityProperties.ImagesKey.defaultValue;
  }

  return v7;
}

uint64_t (*AccessibilityProperties.images.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC06ImagesG0V_Tt0g5();
  return AccessibilityProperties.images.modify;
}

uint64_t AccessibilityProperties.hints.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t AccessibilityProperties.subscript.getter(unsigned __int8 *a1)
{
  if (*(v1 + 56))
  {
    return 2;
  }

  v3 = *a1;
  if (v3 > 0x3F)
  {
    return 1;
  }

  v4 = 1 << v3;
  if ((v4 & *(v1 + 40)) != 0)
  {
    return 1;
  }

  else
  {
    return 2 * ((v4 & *(v1 + 48)) == 0);
  }
}

double (*AccessibilityProperties.subscript.modify(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, char a2)
{
  *a1 = v2;
  v3 = *a2;
  *(a1 + 9) = v3;
  if (*(v2 + 56))
  {
    v4 = 2;
  }

  else if (v3 <= 0x3F)
  {
    v5 = 1 << v3;
    if ((*(v2 + 40) & v5) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * ((*(v2 + 48) & v5) == 0);
    }
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 8) = v4;
  return AccessibilityProperties.subscript.modify;
}

double AccessibilityProperties.subscript.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 9);
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = v2;
    v4 = &v6;
  }

  else
  {
    v7 = v2;
    v4 = &v7;
  }

  return AccessibilityProperties.subscript.setter(v3, v4);
}

uint64_t AccessibilityProperties.subscript.getter(unsigned __int8 *a1, char a2)
{
  v3 = a2;
  if (*(v2 + 56))
  {
    return v3 & 1;
  }

  v4 = *a1;
  if (v4 > 0x3F)
  {
    return 1;
  }

  v3 = 1;
  v6 = 1 << v4;
  if ((v6 & *(v2 + 40)) != 0)
  {
    return v3 & 1;
  }

  else
  {
    return ((v6 & *(v2 + 48)) == 0) & a2;
  }
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v10;
  }

  outlined destroy of AnyHashable(*(v7 + 48) + 40 * v5);
  v8 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v5, v7);
  *v2 = v7;
  return v8;
}

double specialized Dictionary.removeValue(forKey:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3 & 0x1FF);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    *&v18[0] = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = *&v18[0];
    }

    memmove(a4, (*(v11 + 56) + (v9 << 7)), 0x80uLL);
    specialized _NativeDictionary._delete(at:)(v9, v11);
    *v5 = v11;
    _ViewInputs.base.modify(a4, v12);
  }

  else
  {
    _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(v18);
    v14 = v22;
    a4[4] = v21;
    a4[5] = v14;
    v15 = v24;
    a4[6] = v23;
    a4[7] = v15;
    v16 = v18[1];
    *a4 = v18[0];
    a4[1] = v16;
    result = *&v19;
    v17 = v20;
    a4[2] = v19;
    a4[3] = v17;
  }

  return result;
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityActivationPointStorage?>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityActivationPointStorage?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityActivationPointStorage?, &type metadata for AccessibilityActivationPointStorage, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityActivationPointStorage?>);
    }
  }
}

uint64_t outlined consume of AccessibilityActivationPointStorage?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityChildBehaviorKind?, &type metadata for AccessibilityChildBehaviorKind, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityChildBehaviorKind?>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<[AccessibilityCustomContentEntry]>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<[AccessibilityCustomContentEntry]>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for [AccessibilityCustomContentEntry], &type metadata for AccessibilityCustomContentEntry, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[AccessibilityCustomContentEntry]>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityCustomAttributes?, &type metadata for AccessibilityCustomAttributes, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityCustomAttributes?>);
    }
  }
}

uint64_t _s7SwiftUI36AccessibilityDataSeriesConfigurationVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityDataSeriesConfiguration?>);
    }
  }
}

uint64_t outlined destroy of AccessibilityDataSeriesConfiguration?(uint64_t a1)
{
  type metadata accessor for AccessibilityActivationPointStorage?(0, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for [Text]?()
{
  if (!lazy cache variable for type metadata for [Text]?)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for [Text], &type metadata for Text, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Text]?);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<Text?>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<Text?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for Text?, &type metadata for Text, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<Text?>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<Double?>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<Double?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<Double?>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityTextContentType?>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityTextContentType?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityTextContentType?, &type metadata for AccessibilityTextContentType, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityTextContentType?>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for AccessibilityHeadingLevel?, &type metadata for AccessibilityHeadingLevel, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<AccessibilityHeadingLevel?>);
    }
  }
}

uint64_t outlined init with copy of LinkDestination.Configuration?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for AccessibilityActivationPointStorage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for AccessibilityPropertiesEntry<[Image]>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Image]>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for [Image], &type metadata for Image, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Image]>);
    }
  }
}

void type metadata accessor for AccessibilityPropertiesEntry<[Text]>()
{
  if (!lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Text]>)
  {
    type metadata accessor for AccessibilityActivationPointStorage?(255, &lazy cache variable for type metadata for [Text], &type metadata for Text, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for AccessibilityPropertiesEntry();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityPropertiesEntry<[Text]>);
    }
  }
}

uint64_t _CustomHoverEffectInputs.updateContext(_:)(int a1)
{
  *(v1 + 84) = a1;
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext();
  v2 = Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter(v2);
}

SwiftUI::SystemHoverEffect __swiftcall SystemHoverEffect.init(info:isEnabled:)(SwiftUI::SystemHoverEffect::Info_optional info, Swift::Bool isEnabled)
{
  *v2 = *info.value.style;
  v2[1] = isEnabled;
  result.info = info;
  return result;
}

void _s7SwiftUI17CustomHoverEffectPAAE05_makecdE06effect6inputs4bodyAA01_cdE7OutputsVAA11_GraphValueVyxG_AA01_cdE6InputsVAiNctFZs5NeverO_Tt3B5(uint64_t a1, uint64_t a2)
{
  if (AGTypeGetKind() - 2 > 3)
  {
    _StringGuts.grow(_:)(44);

    v3 = 0xD00000000000002ALL;
    v4 = 0x800000018DD77700;
    MEMORY[0x193ABEDD0](0x726576654ELL, 0xE500000000000000);
  }

  else
  {
    static DynamicPropertyCache.fields(of:)(MEMORY[0x1E69E73E0], &v3);
    v5 = 0;
    v6 = 0xE000000000000000;
    outlined init with copy of _CustomHoverEffectInputs(a2, &v3);
    _StringGuts.grow(_:)(29);

    v3 = 0x726576654ELL;
    v4 = 0xE500000000000000;
    MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD77760);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static EmptyHoverEffect._makeCustomHoverEffect(effect:inputs:body:)(uint64_t a1, _OWORD *a2, uint64_t (*a3)(_OWORD *))
{
  v3 = a2[3];
  v6[2] = a2[2];
  v6[3] = v3;
  v7[0] = a2[4];
  *(v7 + 12) = *(a2 + 76);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return a3(v6);
}

uint64_t _CustomHoverEffectInputs.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

__n128 _CustomHoverEffectInputs.base.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  outlined destroy of _ViewInputs(v8);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

uint64_t _CustomHoverEffectInputs.init(base:context:inheritedTransform:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 24) = *(a1 + 24);
  *(a4 + 40) = *(a1 + 40);
  *(a4 + 56) = *(a1 + 56);
  *(a4 + 68) = *(a1 + 68);
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type UpdateEnvironmentCustomHoverEffectContext and conformance UpdateEnvironmentCustomHoverEffectContext();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  result = _GraphInputs.environment.setter(v8);
  *(a4 + 84) = a2;
  *(a4 + 88) = a3;
  return result;
}

double _CustomHoverEffectInputs.makeIndirectOutputs()@<D0>(double *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 16);
  v17 = *(v1 + 32);
  v18 = v3;
  v5 = *(v1 + 48);
  v19 = *(v1 + 64);
  v6 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v6;
  v10 = v17;
  v11 = v5;
  v12 = *(v1 + 64);
  v20 = *(v1 + 80);
  v13 = *(v1 + 80);
  v8 = v16[0];
  v9 = v4;
  outlined init with copy of _ViewInputs(v16, v21);
  _ViewInputs.makeIndirectOutputs()(&v14);
  v21[2] = v10;
  v21[3] = v11;
  v21[4] = v12;
  v22 = v13;
  v21[0] = v8;
  v21[1] = v9;
  outlined destroy of _ViewInputs(v21);
  *a1 = v14;
  result = v15;
  a1[1] = v15;
  return result;
}

double _CustomHoverEffectOutputs.init(base:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _CustomHoverEffectOutputs.base.getter@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = v1[1];
}

double _CustomHoverEffectOutputs.base.setter(double *a1)
{
  v3 = *a1;

  *v1 = v3;
  result = a1[1];
  *(v1 + 8) = result;
  return result;
}

void _s7SwiftUI17CustomHoverEffectPAAE9bodyErrors5NeverOyFAF_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0x726576654ELL, 0xE500000000000000);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI17CustomHoverEffectPAAE9bodyErrors5NeverOyFAA05EmptydE0V_Ttg5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DDAFE90);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void protocol witness for static CustomHoverEffect._makeCustomHoverEffect(effect:inputs:body:) in conformance Never(unsigned int *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v5[2] = a2[2];
  v5[3] = v3;
  v6[0] = a2[4];
  *(v6 + 12) = *(a2 + 76);
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  _s7SwiftUI17CustomHoverEffectPAAE05_makecdE06effect6inputs4bodyAA01_cdE7OutputsVAA11_GraphValueVyxG_AA01_cdE6InputsVAiNctFZs5NeverO_Tt3B5(v2, v5);
}

Swift::Int SystemHoverEffect.Style.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

SwiftUI::SystemHoverEffect::Resolved __swiftcall SystemHoverEffect.Resolved.init(info:isEnabled:)(SwiftUI::SystemHoverEffect::Info info, Swift::Bool isEnabled)
{
  *v2 = *info.style;
  v2[1] = isEnabled;
  result.info = info;
  return result;
}

SwiftUI::SystemHoverEffect::Resolved __swiftcall SystemHoverEffect.resolve()()
{
  v2 = *v1;
  v3 = v1[1];
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *v0 = v2;
  v0[1] = v3;
  return result;
}

SwiftUI::SystemHoverEffect __swiftcall SystemHoverEffect.merge(with:)(SwiftUI::SystemHoverEffect with)
{
  v3 = **&with.info.value.style;
  v4 = *(*&with.info.value.style + 1);
  v5 = v2[1];
  if (v3 == 3)
  {
    LOBYTE(v3) = *v2;
  }

  *v1 = v3;
  v1[1] = v4 & v5 & 1;
  return with;
}

uint64_t EnvironmentValues.hoverEffectContext.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = *v1;
  swift_retain_n();
  outlined init with copy of HoverEffectContext?(v6, v5);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(v1, v6);

  outlined destroy of HoverEffectContext?(v6);
  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v3, *v1);
  }

  return outlined destroy of HoverEffectContext?(v6);
}

uint64_t protocol witness for Rule.value.getter in conformance UpdateEnvironmentCustomHoverEffectContext@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  v5 = AGGraphGetValue();
  v7 = *(v5 + 16);
  v6 = *(v5 + 32);
  v8 = *v5;
  v14 = *(v5 + 48);
  v13[0] = v8;
  v13[1] = v7;
  v13[2] = v6;
  v11[0] = v8;
  v11[1] = v7;
  v11[2] = v6;
  v12 = v14;
  outlined init with copy of HoverEffectContext(v13, v10);
  swift_retain_n();
  outlined init with copy of HoverEffectContext(v13, v10);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(a1, v11);

  outlined destroy of HoverEffectContext(v13);
  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v4, *a1);
  }

  return outlined destroy of HoverEffectContext(v13);
}

uint64_t protocol witness for Rule.value.getter in conformance ClearCustomHoverEffectContextFromEnvironment@<X0>(uint64_t *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;
  memset(v6, 0, sizeof(v6));
  v7 = 1;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(a1, v6);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v4, *a1);
  }
}

void *EnvironmentValues.hoverEffectContext.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018HoverEffectContextI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v2, a1);
}

double key path getter for EnvironmentValues.hoverEffectContext : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018HoverEffectContextI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5(v3, v7);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(*a1, v7);
  }

  v4 = v9;
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.hoverEffectContext : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = *a2;
  swift_retain_n();
  outlined init with copy of HoverEffectContext?(v7, v6);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2B5(a2, v7);

  outlined destroy of HoverEffectContext?(v7);
  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018HoverEffectContextK033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Ttg5(v4, *a2);
  }
}