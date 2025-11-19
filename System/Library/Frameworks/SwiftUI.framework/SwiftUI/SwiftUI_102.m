uint64_t destroy for TableColumnCollection.Backing(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 != 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t initializeWithCopy for TableColumnCollection.Backing(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    *a1 = *a2;

    v4 = 1;
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1);
    v4 = 0;
  }

  *(a1 + 40) = v4;
  return a1;
}

uint64_t assignWithCopy for TableColumnCollection.Backing(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 32);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for TableColumnCollection.Backing(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 40);
    if (v3 >= 2)
    {
      v3 = *result + 2;
    }

    v4 = result;
    if (v3 == 1)
    {
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(result);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    result = v4;
    if (v5 == 1)
    {
      *v4 = *a2;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v7;
      *(v4 + 32) = *(a2 + 32);
    }

    *(v4 + 40) = v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TableColumnCollection.Backing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TableColumnCollection.Backing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t specialized Collection.underestimatedCount.getter()
{
  outlined init with copy of TableColumnCollection.Backing(v0, v8);
  if (v9)
  {
    v1 = *(*&v8[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v8, v5);
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v1 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return specialized RandomAccessCollection<>.distance(from:to:)(0, v1);
}

uint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t result)
{
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of TableColumnCollection.Backing(v1, v9);
    if (v10)
    {
      v3 = *(*&v9[0] + 16);
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v9, v6);
      v4 = v7;
      v5 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      v3 = (*(v5 + 8))(v4, v5);
      result = __swift_destroy_boxed_opaque_existential_1(v6);
    }

    if ((v2 & 0x8000000000000000) == 0 && v2 < v3)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t TableColumnCollection.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for TableColumnCollection.Entry?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TableColumnCollection.Visitor(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = outlined init with copy of TableColumnCollection.Backing(v3, v24);
  if (v25)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *&v24[0];
      if (*(*&v24[0] + 16) > a1)
      {
        v14 = *(type metadata accessor for TableColumnCollection.Entry(0) - 8);
        outlined init with copy of TableColumnCollection.Entry(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a1, a2, type metadata accessor for TableColumnCollection.Entry);
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v24, v21);
  v15 = *(v9 + 20);
  v16 = type metadata accessor for TableColumnCollection.Entry(0);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v11 + v15, 1, 1, v16);
  *v11 = a1;
  v18 = v22;
  v19 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  TableColumnList.visitColumns<A>(applying:from:)(v11, a1, v18, v9, v19, &protocol witness table for TableColumnCollection.Visitor);
  outlined init with copy of TableColumnCollection.Entry(v11 + v15, v8, type metadata accessor for TableColumnCollection.Entry?);
  result = (*(v17 + 48))(v8, 1, v16);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  outlined destroy of TableColumnCollection.Visitor(v11, type metadata accessor for TableColumnCollection.Visitor);
  outlined init with take of TableColumnCollection.Entry(v8, a2);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t protocol witness for Identifiable.id.getter in conformance TableColumnCollection.Entry@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TableColumnCollection.Visitor.visit<A, B, C, D>(_:id:label:configuration:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v13 = v12;
  *&v63 = a5;
  v54 = a3;
  v64 = a12;
  v69 = *(a7 - 8);
  v59 = a9;
  *&v60 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for TableColumnCollection.Entry?(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v51[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = *a4;
  v24 = *(a4 + 1);
  v25 = *(a4 + 2);
  v26 = *(a4 + 3);
  v27 = *(a4 + 4);
  v28 = a4[40];
  v65 = a4[56];
  v66 = a4[57];
  v58 = v27;
  v57 = v25;
  v56 = v26;
  v55 = v24;
  if (v28 == 255)
  {
    v29 = UUID.uuidString.getter();
    v61 = v30;
    v62 = v29;
    v31 = [v54 string];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v32;

    v52 = 1;
  }

  else
  {
    v54 = v24;
    v53 = v25;
    v61 = v27;
    v62 = v26;
    v52 = v28;
  }

  v33 = type metadata accessor for UUID();
  (*(*(v33 - 8) + 16))(v23, a2, v33);
  v34 = *v13;
  v70 = v63;
  v71 = a6;
  v72 = a8;
  v73 = a7;
  v74 = v59;
  v75 = v60;
  v76 = v64;
  v77 = a11;
  v35 = type metadata accessor for TableColumn();
  v36 = *(v35 + 92);
  v37 = a1;
  v38 = (a1 + *(v35 + 88));
  v64 = v13;
  v39 = *(v38 + 32);
  v40 = type metadata accessor for TableColumnCollection.Entry(0);
  v41 = v40[11];
  v42 = v38[1];
  v63 = *v38;
  v60 = v42;
  outlined init with copy of TableColumnCollection.Entry(v37 + v36, &v23[v41], type metadata accessor for SwiftUIAnySortComparator?);
  (*(v69 + 16))(v67, v37, a7);
  outlined copy of TableColumnCustomizationID?(v55, v57, v56, v58, v28);
  v43 = AnyView.init<A>(_:)();
  v44 = &v23[v40[5]];
  v45 = v53;
  *v44 = v54;
  *(v44 + 1) = v45;
  v46 = v61;
  *(v44 + 2) = v62;
  *(v44 + 3) = v46;
  v44[32] = v52 & 1;
  *&v23[v40[6]] = v34;
  v47 = &v23[v40[7]];
  v48 = v60;
  *v47 = v63;
  *(v47 + 1) = v48;
  v47[32] = v39;
  LOBYTE(v46) = v66;
  v23[v40[8]] = v65;
  v23[v40[9]] = v46;
  v23[v40[10]] = v68;
  *&v23[v40[12]] = v43;
  (*(*(v40 - 1) + 56))(v23, 0, 1, v40);
  v49 = type metadata accessor for TableColumnCollection.Visitor(0);
  outlined assign with take of TableColumnCollection.Entry?(v23, v64 + *(v49 + 20));
  return 0;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance TableColumnCollection@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance TableColumnCollection(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance TableColumnCollection@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of TableColumnCollection.Backing(v1, v10);
  if (v11)
  {
    v3 = *(*&v10[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v10, v7);
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v6 + 8))(v5, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v7);
  }

  *a1 = v3;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance TableColumnCollection(uint64_t *a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = *(*(type metadata accessor for TableColumnCollection.Entry(0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *a1 = v5;
  TableColumnCollection.subscript.getter(*a2, v5);
  return protocol witness for Collection.subscript.read in conformance TableColumnCollection;
}

void protocol witness for Collection.subscript.read in conformance TableColumnCollection(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of TableColumnCollection.Visitor(*a1, type metadata accessor for TableColumnCollection.Entry);

  free(v1);
}

uint64_t protocol witness for Collection.indices.getter in conformance TableColumnCollection@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RandomAccessCollection<>.indices.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance TableColumnCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3);
  if (a2 < 1)
  {
    if (v7 <= 0 && v7 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v6, a2);
    v9 = 0;
    goto LABEL_11;
  }

  if (v7 < 0 || v7 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v9 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v9;
  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance TableColumnCollection@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance TableColumnCollection(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *a1 = result;
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance TableColumnCollection@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 25);
  *(a1 + 25) = result;
  *(a1 + 48) = 0;
  return result;
}

uint64_t outlined init with copy of TableColumnCollection.Entry(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TableColumnCollection.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableColumnCollection.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TableColumnCollection.Visitor(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableColumnCollection.Visitor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v6 = a1 + v5;
    v7 = a2 + v5;
    v8 = type metadata accessor for TableColumnCollection.Entry(0);
    v9 = *(v8 - 1);
    if ((*(v9 + 48))(v7, 1, v8))
    {
      type metadata accessor for TableColumnCollection.Entry?(0);
      memcpy(v6, v7, *(*(v10 - 8) + 64));
    }

    else
    {
      v37 = v9;
      v12 = type metadata accessor for UUID();
      (*(*(v12 - 8) + 16))(v6, v7, v12);
      v13 = v8[5];
      v14 = &v6[v13];
      v15 = &v7[v13];
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      v19 = *(v15 + 3);
      v20 = v15[32];
      outlined copy of TableColumnCustomizationID.Base(*v15, v17, v18, v19, v20);
      *v14 = v16;
      *(v14 + 1) = v17;
      *(v14 + 2) = v18;
      *(v14 + 3) = v19;
      v14[32] = v20;
      *&v6[v8[6]] = *&v7[v8[6]];
      v21 = v8[7];
      v22 = &v6[v21];
      v23 = &v7[v21];
      v24 = *(v23 + 1);
      *v22 = *v23;
      *(v22 + 1) = v24;
      v22[32] = v23[32];
      v6[v8[8]] = v7[v8[8]];
      v6[v8[9]] = v7[v8[9]];
      v6[v8[10]] = v7[v8[10]];
      v25 = v8[11];
      v26 = &v6[v25];
      v27 = &v7[v25];
      v28 = *&v7[v25 + 24];
      if (v28)
      {
        *(v26 + 3) = v28;
        (**(v28 - 8))(v26, v27);
        v29 = *(v27 + 56);
        *(v26 + 56) = v29;
        (**(v29 - 8))((v26 + 32), (v27 + 32));
        *(v26 + 9) = *(v27 + 9);
        v30 = *(v27 + 14);
        v31 = *(v27 + 6);
        *(v26 + 5) = *(v27 + 5);
        *(v26 + 6) = v31;
        *(v26 + 14) = v30;
      }

      else
      {
        v32 = *(v27 + 5);
        *(v26 + 4) = *(v27 + 4);
        *(v26 + 5) = v32;
        *(v26 + 6) = *(v27 + 6);
        *(v26 + 14) = *(v27 + 14);
        v33 = *(v27 + 1);
        *v26 = *v27;
        *(v26 + 1) = v33;
        v34 = *(v27 + 3);
        *(v26 + 2) = *(v27 + 2);
        *(v26 + 3) = v34;
      }

      *&v6[v8[12]] = *&v7[v8[12]];
      v35 = *(v37 + 56);

      v35(v6, 0, 1, v8);
    }
  }

  return v3;
}

uint64_t destroy for TableColumnCollection.Visitor(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = type metadata accessor for TableColumnCollection.Entry(0);
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (!result)
  {
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 8))(v2, v5);
    v6 = v2 + *(v3 + 20);
    outlined consume of TableColumnCustomizationID.Base(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));
    v7 = v2 + *(v3 + 44);
    if (*(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v2 + *(v3 + 44));
      __swift_destroy_boxed_opaque_existential_1(v7 + 32);
    }
  }

  return result;
}

void *initializeWithCopy for TableColumnCollection.Visitor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = *(v7 - 1);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    type metadata accessor for TableColumnCollection.Entry?(0);
    memcpy(v5, v6, *(*(v9 - 8) + 64));
  }

  else
  {
    v35 = v8;
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 16))(v5, v6, v10);
    v11 = v7[5];
    v12 = &v5[v11];
    v13 = &v6[v11];
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    v17 = *(v13 + 3);
    v18 = v13[32];
    outlined copy of TableColumnCustomizationID.Base(*v13, v15, v16, v17, v18);
    *v12 = v14;
    *(v12 + 1) = v15;
    *(v12 + 2) = v16;
    *(v12 + 3) = v17;
    v12[32] = v18;
    *&v5[v7[6]] = *&v6[v7[6]];
    v19 = v7[7];
    v20 = &v5[v19];
    v21 = &v6[v19];
    v22 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 1) = v22;
    v20[32] = v21[32];
    v5[v7[8]] = v6[v7[8]];
    v5[v7[9]] = v6[v7[9]];
    v5[v7[10]] = v6[v7[10]];
    v23 = v7[11];
    v24 = &v5[v23];
    v25 = &v6[v23];
    v26 = *&v6[v23 + 24];
    if (v26)
    {
      *(v24 + 3) = v26;
      (**(v26 - 8))(v24, v25);
      v27 = *(v25 + 56);
      *(v24 + 56) = v27;
      (**(v27 - 8))((v24 + 32), (v25 + 32));
      *(v24 + 9) = *(v25 + 9);
      v28 = *(v25 + 14);
      v29 = *(v25 + 6);
      *(v24 + 5) = *(v25 + 5);
      *(v24 + 6) = v29;
      *(v24 + 14) = v28;
    }

    else
    {
      v30 = *(v25 + 5);
      *(v24 + 4) = *(v25 + 4);
      *(v24 + 5) = v30;
      *(v24 + 6) = *(v25 + 6);
      *(v24 + 14) = *(v25 + 14);
      v31 = *(v25 + 1);
      *v24 = *v25;
      *(v24 + 1) = v31;
      v32 = *(v25 + 3);
      *(v24 + 2) = *(v25 + 2);
      *(v24 + 3) = v32;
    }

    *&v5[v7[12]] = *&v6[v7[12]];
    v33 = *(v35 + 56);

    v33(v5, 0, 1, v7);
  }

  return a1;
}

void *assignWithCopy for TableColumnCollection.Visitor(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 48);
  v10 = v9(v5, 1, v7);
  v11 = v9(v6, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      v87 = v3;
      v12 = type metadata accessor for UUID();
      (*(*(v12 - 8) + 16))(v5, v6, v12);
      v13 = v7[5];
      v14 = &v5[v13];
      v15 = &v6[v13];
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      v19 = *(v15 + 3);
      v20 = v15[32];
      outlined copy of TableColumnCustomizationID.Base(*v15, v17, v18, v19, v20);
      *v14 = v16;
      *(v14 + 1) = v17;
      *(v14 + 2) = v18;
      *(v14 + 3) = v19;
      v14[32] = v20;
      *&v5[v7[6]] = *&v6[v7[6]];
      v21 = v7[7];
      v22 = &v5[v21];
      v23 = &v6[v21];
      v24 = *v23;
      v25 = *(v23 + 1);
      v22[32] = v23[32];
      *v22 = v24;
      *(v22 + 1) = v25;
      v5[v7[8]] = v6[v7[8]];
      v5[v7[9]] = v6[v7[9]];
      v5[v7[10]] = v6[v7[10]];
      v26 = v7[11];
      v27 = &v5[v26];
      v28 = &v6[v26];
      v29 = *&v6[v26 + 24];
      if (v29)
      {
        *(v27 + 3) = v29;
        (**(v29 - 8))(v27, v28);
        v30 = *(v28 + 7);
        *(v27 + 7) = v30;
        *(v27 + 8) = *(v28 + 8);
        (**(v30 - 8))((v27 + 32), (v28 + 32));
        v31 = *(v28 + 10);
        *(v27 + 9) = *(v28 + 9);
        *(v27 + 10) = v31;
        v32 = *(v28 + 12);
        *(v27 + 11) = *(v28 + 11);
        *(v27 + 12) = v32;
        v33 = *(v28 + 13);
        v34 = *(v28 + 14);
        *(v27 + 13) = v33;
        *(v27 + 14) = v34;
      }

      else
      {
        v62 = *v28;
        v63 = *(v28 + 1);
        v64 = *(v28 + 3);
        *(v27 + 2) = *(v28 + 2);
        *(v27 + 3) = v64;
        *v27 = v62;
        *(v27 + 1) = v63;
        v65 = *(v28 + 4);
        v66 = *(v28 + 5);
        v67 = *(v28 + 6);
        *(v27 + 14) = *(v28 + 14);
        *(v27 + 5) = v66;
        *(v27 + 6) = v67;
        *(v27 + 4) = v65;
      }

      *&v5[v7[12]] = *&v6[v7[12]];
      v68 = *(v8 + 56);

      v68(v5, 0, 1, v7);
      return v87;
    }

LABEL_7:
    type metadata accessor for TableColumnCollection.Entry?(0);
    memcpy(v5, v6, *(*(v35 - 8) + 64));
    return v3;
  }

  if (v11)
  {
    outlined destroy of TableColumnCollection.Visitor(v5, type metadata accessor for TableColumnCollection.Entry);
    goto LABEL_7;
  }

  v36 = type metadata accessor for UUID();
  (*(*(v36 - 8) + 24))(v5, v6, v36);
  v37 = v7[5];
  v38 = &v5[v37];
  v39 = &v6[v37];
  v40 = *v39;
  v41 = *(v39 + 1);
  v42 = *(v39 + 2);
  v43 = *(v39 + 3);
  v44 = v39[32];
  outlined copy of TableColumnCustomizationID.Base(*v39, v41, v42, v43, v44);
  v45 = *v38;
  v46 = *(v38 + 1);
  v47 = *(v38 + 2);
  v48 = *(v38 + 3);
  v49 = v38[32];
  *v38 = v40;
  *(v38 + 1) = v41;
  *(v38 + 2) = v42;
  *(v38 + 3) = v43;
  v38[32] = v44;
  outlined consume of TableColumnCustomizationID.Base(v45, v46, v47, v48, v49);
  *&v5[v7[6]] = *&v6[v7[6]];
  v50 = v7[7];
  v51 = &v5[v50];
  v52 = &v6[v50];
  v53 = v52[32];
  v54 = *(v52 + 1);
  *v51 = *v52;
  *(v51 + 1) = v54;
  v51[32] = v53;
  v5[v7[8]] = v6[v7[8]];
  v5[v7[9]] = v6[v7[9]];
  v5[v7[10]] = v6[v7[10]];
  v55 = v7[11];
  v56 = &v5[v55];
  v57 = &v6[v55];
  v58 = *&v6[v55 + 24];
  if (*&v5[v55 + 24])
  {
    if (v58)
    {
      __swift_assign_boxed_opaque_existential_0(v56, v57);
      __swift_assign_boxed_opaque_existential_1((v56 + 32), v57 + 4);
      v59 = v57[10];
      *(v56 + 72) = v57[9];
      *(v56 + 80) = v59;

      v60 = v57[12];
      *(v56 + 88) = v57[11];
      *(v56 + 96) = v60;

      v61 = v57[14];
      *(v56 + 104) = v57[13];
      *(v56 + 112) = v61;
    }

    else
    {
      outlined destroy of SwiftUIAnySortComparator(v56);
      v74 = *(v57 + 3);
      v76 = *v57;
      v75 = *(v57 + 1);
      *(v56 + 32) = *(v57 + 2);
      *(v56 + 48) = v74;
      *v56 = v76;
      *(v56 + 16) = v75;
      v78 = *(v57 + 5);
      v77 = *(v57 + 6);
      v79 = *(v57 + 4);
      *(v56 + 112) = v57[14];
      *(v56 + 80) = v78;
      *(v56 + 96) = v77;
      *(v56 + 64) = v79;
    }
  }

  else if (v58)
  {
    *(v56 + 24) = v58;
    (**(v58 - 8))(v56, v57);
    v69 = v57[7];
    *(v56 + 56) = v69;
    *(v56 + 64) = v57[8];
    (**(v69 - 8))(v56 + 32, (v57 + 4));
    v70 = v57[10];
    *(v56 + 72) = v57[9];
    *(v56 + 80) = v70;
    v71 = v57[12];
    *(v56 + 88) = v57[11];
    *(v56 + 96) = v71;
    v72 = v57[13];
    v73 = v57[14];
    *(v56 + 104) = v72;
    *(v56 + 112) = v73;
  }

  else
  {
    v80 = *v57;
    v81 = *(v57 + 1);
    v82 = *(v57 + 3);
    *(v56 + 32) = *(v57 + 2);
    *(v56 + 48) = v82;
    *v56 = v80;
    *(v56 + 16) = v81;
    v83 = *(v57 + 4);
    v84 = *(v57 + 5);
    v85 = *(v57 + 6);
    *(v56 + 112) = v57[14];
    *(v56 + 80) = v84;
    *(v56 + 96) = v85;
    *(v56 + 64) = v83;
  }

  *&v5[v7[12]] = *&v6[v7[12]];

  return v3;
}

void *initializeWithTake for TableColumnCollection.Visitor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = *(v7 - 1);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    type metadata accessor for TableColumnCollection.Entry?(0);
    memcpy(v5, v6, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 32))(v5, v6, v10);
    v11 = v7[5];
    v12 = &v5[v11];
    v13 = &v6[v11];
    v14 = *(v13 + 1);
    *v12 = *v13;
    *(v12 + 1) = v14;
    v12[32] = v13[32];
    *&v5[v7[6]] = *&v6[v7[6]];
    v15 = v7[7];
    v16 = &v5[v15];
    v17 = &v6[v15];
    v18 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v18;
    v16[32] = v17[32];
    v5[v7[8]] = v6[v7[8]];
    v5[v7[9]] = v6[v7[9]];
    v5[v7[10]] = v6[v7[10]];
    v19 = v7[11];
    v20 = &v5[v19];
    v21 = &v6[v19];
    v22 = *(v21 + 1);
    *v20 = *v21;
    *(v20 + 1) = v22;
    v23 = *(v21 + 3);
    *(v20 + 2) = *(v21 + 2);
    *(v20 + 3) = v23;
    *(v20 + 14) = *(v21 + 14);
    v24 = *(v21 + 6);
    *(v20 + 5) = *(v21 + 5);
    *(v20 + 6) = v24;
    *(v20 + 4) = *(v21 + 4);
    *&v5[v7[12]] = *&v6[v7[12]];
    (*(v8 + 56))(v5, 0, 1, v7);
  }

  return a1;
}

void *assignWithTake for TableColumnCollection.Visitor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 48);
  v10 = v9(v5, 1, v7);
  v11 = v9(v6, 1, v7);
  if (!v10)
  {
    if (v11)
    {
      outlined destroy of TableColumnCollection.Visitor(v5, type metadata accessor for TableColumnCollection.Entry);
      goto LABEL_6;
    }

    v29 = type metadata accessor for UUID();
    (*(*(v29 - 8) + 40))(v5, v6, v29);
    v30 = v7[5];
    v31 = &v5[v30];
    v32 = &v6[v30];
    v33 = v32[32];
    v34 = *v31;
    v35 = *(v31 + 1);
    v36 = *(v31 + 2);
    v37 = *(v31 + 3);
    v38 = v31[32];
    v39 = *(v32 + 1);
    *v31 = *v32;
    *(v31 + 1) = v39;
    v31[32] = v33;
    outlined consume of TableColumnCustomizationID.Base(v34, v35, v36, v37, v38);
    *&v5[v7[6]] = *&v6[v7[6]];
    v40 = v7[7];
    v41 = &v5[v40];
    v42 = &v6[v40];
    v43 = *(v42 + 1);
    *v41 = *v42;
    *(v41 + 1) = v43;
    v41[32] = v42[32];
    v5[v7[8]] = v6[v7[8]];
    v5[v7[9]] = v6[v7[9]];
    v5[v7[10]] = v6[v7[10]];
    v44 = v7[11];
    v45 = &v5[v44];
    v46 = &v6[v44];
    if (*&v5[v44 + 24])
    {
      if (*(v46 + 3))
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
        v47 = *(v46 + 1);
        *v45 = *v46;
        *(v45 + 16) = v47;
        __swift_destroy_boxed_opaque_existential_1(v45 + 32);
        v48 = *(v46 + 3);
        *(v45 + 32) = *(v46 + 2);
        *(v45 + 48) = v48;
        *(v45 + 64) = *(v46 + 8);
        *(v45 + 72) = *(v46 + 72);

        *(v45 + 88) = *(v46 + 88);

        *(v45 + 104) = *(v46 + 104);

LABEL_13:
        *&v5[v7[12]] = *&v6[v7[12]];

        return a1;
      }

      outlined destroy of SwiftUIAnySortComparator(v45);
    }

    v49 = *(v46 + 5);
    *(v45 + 64) = *(v46 + 4);
    *(v45 + 80) = v49;
    *(v45 + 96) = *(v46 + 6);
    *(v45 + 112) = *(v46 + 14);
    v50 = *(v46 + 1);
    *v45 = *v46;
    *(v45 + 16) = v50;
    v51 = *(v46 + 3);
    *(v45 + 32) = *(v46 + 2);
    *(v45 + 48) = v51;
    goto LABEL_13;
  }

  if (v11)
  {
LABEL_6:
    type metadata accessor for TableColumnCollection.Entry?(0);
    memcpy(v5, v6, *(*(v27 - 8) + 64));
    return a1;
  }

  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 32))(v5, v6, v12);
  v13 = v7[5];
  v14 = &v5[v13];
  v15 = &v6[v13];
  v16 = *(v15 + 1);
  *v14 = *v15;
  *(v14 + 1) = v16;
  v14[32] = v15[32];
  *&v5[v7[6]] = *&v6[v7[6]];
  v17 = v7[7];
  v18 = &v5[v17];
  v19 = &v6[v17];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;
  v18[32] = v19[32];
  v5[v7[8]] = v6[v7[8]];
  v5[v7[9]] = v6[v7[9]];
  v5[v7[10]] = v6[v7[10]];
  v21 = v7[11];
  v22 = &v5[v21];
  v23 = &v6[v21];
  v24 = *(v23 + 1);
  *v22 = *v23;
  *(v22 + 1) = v24;
  v25 = *(v23 + 3);
  *(v22 + 2) = *(v23 + 2);
  *(v22 + 3) = v25;
  *(v22 + 14) = *(v23 + 14);
  v26 = *(v23 + 6);
  *(v22 + 5) = *(v23 + 5);
  *(v22 + 6) = v26;
  *(v22 + 4) = *(v23 + 4);
  *&v5[v7[12]] = *&v6[v7[12]];
  (*(v8 + 56))(v5, 0, 1, v7);
  return a1;
}

void type metadata completion function for TableColumnCollection.Visitor()
{
  type metadata accessor for TableColumnCollection.Entry?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void *initializeBufferWithCopyOfBuffer for TableColumnCollection.Entry(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v28 = *a2;
    *a1 = *a2;
    a1 = (v28 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = *(v10 + 2);
    v14 = *(v10 + 3);
    v15 = v10[32];
    outlined copy of TableColumnCustomizationID.Base(*v10, v12, v13, v14, v15);
    *v9 = v11;
    *(v9 + 1) = v12;
    *(v9 + 2) = v13;
    *(v9 + 3) = v14;
    v9[32] = v15;
    v16 = a3[7];
    *(a1 + a3[6]) = *(a2 + a3[6]);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = *(v18 + 1);
    *v17 = *v18;
    *(v17 + 1) = v19;
    v17[32] = v18[32];
    v20 = a3[9];
    *(a1 + a3[8]) = *(a2 + a3[8]);
    *(a1 + v20) = *(a2 + v20);
    v21 = a3[11];
    *(a1 + a3[10]) = *(a2 + a3[10]);
    v22 = a1 + v21;
    v23 = a2 + v21;
    v24 = *(a2 + v21 + 24);
    if (v24)
    {
      *(v22 + 3) = v24;
      (**(v24 - 8))(v22, v23);
      v25 = *(v23 + 56);
      *(v22 + 56) = v25;
      (**(v25 - 8))((v22 + 32), (v23 + 32));
      *(v22 + 9) = *(v23 + 9);
      v26 = *(v23 + 14);
      v27 = *(v23 + 6);
      *(v22 + 5) = *(v23 + 5);
      *(v22 + 6) = v27;
      *(v22 + 14) = v26;
    }

    else
    {
      v29 = *(v23 + 5);
      *(v22 + 4) = *(v23 + 4);
      *(v22 + 5) = v29;
      *(v22 + 6) = *(v23 + 6);
      *(v22 + 14) = *(v23 + 14);
      v30 = *(v23 + 1);
      *v22 = *v23;
      *(v22 + 1) = v30;
      v31 = *(v23 + 3);
      *(v22 + 2) = *(v23 + 2);
      *(v22 + 3) = v31;
    }

    *(a1 + a3[12]) = *(a2 + a3[12]);
  }

  return a1;
}

uint64_t destroy for TableColumnCollection.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a1 + *(a2 + 20);
  outlined consume of TableColumnCustomizationID.Base(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32));
  v6 = a1 + *(a2 + 44);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + *(a2 + 44));
    __swift_destroy_boxed_opaque_existential_1(v6 + 32);
  }
}

uint64_t initializeWithCopy for TableColumnCollection.Entry(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = *(v9 + 32);
  outlined copy of TableColumnCustomizationID.Base(*v9, v11, v12, v13, v14);
  *v8 = v10;
  *(v8 + 8) = v11;
  *(v8 + 16) = v12;
  *(v8 + 24) = v13;
  *(v8 + 32) = v14;
  v15 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(v17 + 16);
  *v16 = *v17;
  *(v16 + 16) = v18;
  *(v16 + 32) = *(v17 + 32);
  v19 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v19) = *(a2 + v19);
  v20 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = *(a2 + v20 + 24);
  if (v23)
  {
    *(v21 + 24) = v23;
    (**(v23 - 8))(v21, v22);
    v24 = *(v22 + 56);
    *(v21 + 56) = v24;
    (**(v24 - 8))(v21 + 32, v22 + 32);
    *(v21 + 72) = *(v22 + 72);
    v25 = *(v22 + 112);
    v26 = *(v22 + 96);
    *(v21 + 80) = *(v22 + 80);
    *(v21 + 96) = v26;
    *(v21 + 112) = v25;
  }

  else
  {
    v27 = *(v22 + 80);
    *(v21 + 64) = *(v22 + 64);
    *(v21 + 80) = v27;
    *(v21 + 96) = *(v22 + 96);
    *(v21 + 112) = *(v22 + 112);
    v28 = *(v22 + 16);
    *v21 = *v22;
    *(v21 + 16) = v28;
    v29 = *(v22 + 48);
    *(v21 + 32) = *(v22 + 32);
    *(v21 + 48) = v29;
  }

  *(a1 + a3[12]) = *(a2 + a3[12]);

  return a1;
}

uint64_t assignWithCopy for TableColumnCollection.Entry(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = *(v9 + 32);
  outlined copy of TableColumnCustomizationID.Base(*v9, v11, v12, v13, v14);
  v15 = *v8;
  v16 = *(v8 + 8);
  v17 = *(v8 + 16);
  v18 = *(v8 + 24);
  v19 = *(v8 + 32);
  *v8 = v10;
  *(v8 + 8) = v11;
  *(v8 + 16) = v12;
  *(v8 + 24) = v13;
  *(v8 + 32) = v14;
  outlined consume of TableColumnCustomizationID.Base(v15, v16, v17, v18, v19);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v20 = a3[7];
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = *(v22 + 32);
  v24 = *(v22 + 16);
  *v21 = *v22;
  *(v21 + 16) = v24;
  *(v21 + 32) = v23;
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v25 = a3[11];
  v26 = a1 + v25;
  v27 = (a2 + v25);
  v28 = *(a2 + v25 + 24);
  if (*(a1 + v25 + 24))
  {
    if (v28)
    {
      __swift_assign_boxed_opaque_existential_0(v26, v27);
      __swift_assign_boxed_opaque_existential_1((v26 + 32), v27 + 4);
      v29 = v27[10];
      *(v26 + 72) = v27[9];
      *(v26 + 80) = v29;

      v30 = v27[12];
      *(v26 + 88) = v27[11];
      *(v26 + 96) = v30;

      v31 = v27[14];
      *(v26 + 104) = v27[13];
      *(v26 + 112) = v31;
    }

    else
    {
      outlined destroy of SwiftUIAnySortComparator(v26);
      v37 = *(v27 + 3);
      v39 = *v27;
      v38 = *(v27 + 1);
      *(v26 + 32) = *(v27 + 2);
      *(v26 + 48) = v37;
      *v26 = v39;
      *(v26 + 16) = v38;
      v41 = *(v27 + 5);
      v40 = *(v27 + 6);
      v42 = *(v27 + 4);
      *(v26 + 112) = v27[14];
      *(v26 + 80) = v41;
      *(v26 + 96) = v40;
      *(v26 + 64) = v42;
    }
  }

  else if (v28)
  {
    *(v26 + 24) = v28;
    (**(v28 - 8))(v26, v27);
    v32 = v27[7];
    *(v26 + 56) = v32;
    *(v26 + 64) = v27[8];
    (**(v32 - 8))(v26 + 32, (v27 + 4));
    v33 = v27[10];
    *(v26 + 72) = v27[9];
    *(v26 + 80) = v33;
    v34 = v27[12];
    *(v26 + 88) = v27[11];
    *(v26 + 96) = v34;
    v35 = v27[13];
    v36 = v27[14];
    *(v26 + 104) = v35;
    *(v26 + 112) = v36;
  }

  else
  {
    v43 = *v27;
    v44 = *(v27 + 1);
    v45 = *(v27 + 3);
    *(v26 + 32) = *(v27 + 2);
    *(v26 + 48) = v45;
    *v26 = v43;
    *(v26 + 16) = v44;
    v46 = *(v27 + 4);
    v47 = *(v27 + 5);
    v48 = *(v27 + 6);
    *(v26 + 112) = v27[14];
    *(v26 + 80) = v47;
    *(v26 + 96) = v48;
    *(v26 + 64) = v46;
  }

  *(a1 + a3[12]) = *(a2 + a3[12]);

  return a1;
}

uint64_t initializeWithTake for TableColumnCollection.Entry(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = a1 + v7;
  v10 = a2 + v7;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(v10 + 32);
  *(a1 + v8) = *(a2 + v8);
  v12 = a3[7];
  v13 = a3[8];
  v14 = a1 + v12;
  v15 = a2 + v12;
  v16 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v16;
  *(v14 + 32) = *(v15 + 32);
  *(a1 + v13) = *(a2 + v13);
  v17 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v17) = *(a2 + v17);
  v18 = a3[11];
  v19 = a3[12];
  v20 = a1 + v18;
  v21 = a2 + v18;
  v22 = *(v21 + 16);
  *v20 = *v21;
  *(v20 + 16) = v22;
  v23 = *(v21 + 48);
  *(v20 + 32) = *(v21 + 32);
  *(v20 + 48) = v23;
  *(v20 + 112) = *(v21 + 112);
  v24 = *(v21 + 96);
  *(v20 + 80) = *(v21 + 80);
  *(v20 + 96) = v24;
  *(v20 + 64) = *(v21 + 64);
  *(a1 + v19) = *(a2 + v19);
  return a1;
}

uint64_t assignWithTake for TableColumnCollection.Entry(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 32);
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = *(v8 + 16);
  v14 = *(v8 + 24);
  v15 = *(v8 + 32);
  v16 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v16;
  *(v8 + 32) = v10;
  outlined consume of TableColumnCustomizationID.Base(v11, v12, v13, v14, v15);
  v17 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(v19 + 16);
  *v18 = *v19;
  *(v18 + 16) = v20;
  *(v18 + 32) = *(v19 + 32);
  v21 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  v23 = a1 + v22;
  v24 = a2 + v22;
  if (!*(a1 + v22 + 24))
  {
    goto LABEL_5;
  }

  if (!*(v24 + 24))
  {
    outlined destroy of SwiftUIAnySortComparator(a1 + v22);
LABEL_5:
    v27 = *(v24 + 80);
    *(v23 + 64) = *(v24 + 64);
    *(v23 + 80) = v27;
    *(v23 + 96) = *(v24 + 96);
    *(v23 + 112) = *(v24 + 112);
    v28 = *(v24 + 16);
    *v23 = *v24;
    *(v23 + 16) = v28;
    v29 = *(v24 + 48);
    *(v23 + 32) = *(v24 + 32);
    *(v23 + 48) = v29;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + v22);
  v25 = *(v24 + 16);
  *v23 = *v24;
  *(v23 + 16) = v25;
  __swift_destroy_boxed_opaque_existential_1(v23 + 32);
  v26 = *(v24 + 48);
  *(v23 + 32) = *(v24 + 32);
  *(v23 + 48) = v26;
  *(v23 + 64) = *(v24 + 64);
  *(v23 + 72) = *(v24 + 72);

  *(v23 + 88) = *(v24 + 88);

  *(v23 + 104) = *(v24 + 104);

LABEL_6:
  *(a1 + a3[12]) = *(a2 + a3[12]);

  return a1;
}

uint64_t type metadata completion function for TableColumnCollection.Entry()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for TableColumnCollection(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t initializeWithCopy for TableColumnCollection(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    *a1 = *a2;
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
  }

  *(a1 + 40) = v3;
  return a1;
}

uint64_t assignWithCopy for TableColumnCollection(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of TableColumnCollection.Backing(a1);
    if (*(a2 + 40))
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 32);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for TableColumnCollection(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of TableColumnCollection.Backing(result);
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TableColumnCollection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TableColumnCollection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_1(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Range<Int>();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<TableColumnCollection>(255, &lazy cache variable for type metadata for Slice<TableColumnCollection>, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<TableColumnCollection>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Slice<TableColumnCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection();
    v7 = a3(a1, &type metadata for TableColumnCollection, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

size_t protocol witness for Sequence._copyToContiguousArray() in conformance TableColumnCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  outlined destroy of TableColumnCollection(v0);
  return v1;
}

uint64_t outlined copy of TableColumnCustomizationID?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined copy of TableColumnCustomizationID.Base(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t outlined assign with take of TableColumnCollection.Entry?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TableColumnCollection.Entry?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SearchFieldPlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 7)
  {
    v7 = 7;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 8;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t lazy protocol witness table accessor for type SearchFieldPlacement.DrawerDisplayMode and conformance SearchFieldPlacement.DrawerDisplayMode()
{
  result = lazy protocol witness table cache variable for type SearchFieldPlacement.DrawerDisplayMode and conformance SearchFieldPlacement.DrawerDisplayMode;
  if (!lazy protocol witness table cache variable for type SearchFieldPlacement.DrawerDisplayMode and conformance SearchFieldPlacement.DrawerDisplayMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchFieldPlacement.DrawerDisplayMode and conformance SearchFieldPlacement.DrawerDisplayMode);
  }

  return result;
}

__n128 _ProjectionEffect.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 _ProjectionEffect.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

__n128 _ProjectionEffect.init(transform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 _ProjectionEffect.effectValue(size:)@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t static _ProjectionEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v10 = *(a1 + 64);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v8 = *(a2 + 64);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return MEMORY[0x18D007680](v9, v7) & 1;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance _ProjectionEffect@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _ProjectionEffect(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return MEMORY[0x18D007680](v7, v9) & 1;
}

uint64_t View.projectionEffect(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v7 = *(a1 + 64);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return MEMORY[0x18D00A570](v6, a2, &type metadata for _ProjectionEffect, a3);
}

unint64_t instantiation function for generic protocol witness table for _ProjectionEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ProjectionEffect and conformance _ProjectionEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ProjectionEffect and conformance _ProjectionEffect()
{
  result = lazy protocol witness table cache variable for type _ProjectionEffect and conformance _ProjectionEffect;
  if (!lazy protocol witness table cache variable for type _ProjectionEffect and conformance _ProjectionEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ProjectionEffect and conformance _ProjectionEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ProjectionEffect and conformance _ProjectionEffect;
  if (!lazy protocol witness table cache variable for type _ProjectionEffect and conformance _ProjectionEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ProjectionEffect and conformance _ProjectionEffect);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ProjectionEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ProjectionEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t type metadata completion function for SettingsLink()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SettingsLink(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 18 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 17);
    v15 = *(v11 + 16);
    outlined copy of Environment<OpenSettingsAction>.Content(*v11, v13, v15, v14);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v15;
    *(v10 + 17) = v14;
  }

  return v3;
}

uint64_t outlined copy of Environment<OpenSettingsAction>.Content(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return outlined copy of SceneList.Namespace(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t destroy for SettingsLink(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 17);
  v8 = *(v4 + 16);

  return outlined consume of Environment<OpenSettingsAction>.Content(v5, v6, v8, v7);
}

uint64_t outlined consume of Environment<OpenSettingsAction>.Content(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return outlined consume of SceneList.Namespace(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t initializeWithCopy for SettingsLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 17);
  v12 = *(v8 + 16);
  outlined copy of Environment<OpenSettingsAction>.Content(*v8, v10, v12, v11);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v12;
  *(v7 + 17) = v11;
  return a1;
}

uint64_t assignWithCopy for SettingsLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 17);
  v12 = *(v8 + 16);
  outlined copy of Environment<OpenSettingsAction>.Content(*v8, v10, v12, v11);
  v13 = *v7;
  v14 = *(v7 + 8);
  v15 = *(v7 + 17);
  *v7 = v9;
  *(v7 + 8) = v10;
  v16 = *(v7 + 16);
  *(v7 + 16) = v12;
  *(v7 + 17) = v11;
  outlined consume of Environment<OpenSettingsAction>.Content(v13, v14, v16, v15);
  return a1;
}

uint64_t initializeWithTake for SettingsLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  return a1;
}

uint64_t assignWithTake for SettingsLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  v10 = *(v8 + 17);
  v11 = *v7;
  v12 = *(v7 + 8);
  v13 = *(v7 + 17);
  *v7 = *v8;
  v14 = *(v7 + 16);
  *(v7 + 16) = v9;
  *(v7 + 17) = v10;
  outlined consume of Environment<OpenSettingsAction>.Content(v11, v12, v14, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for SettingsLink(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
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
      v13 = *(a1 + v8);
      if (*(a1 + v8))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
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

void storeEnumTagSinglePayload for SettingsLink(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 16) = 0;
          *v18 = a2 - 255;
          *(v18 + 8) = 0;
        }

        else
        {
          *(v18 + 17) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

double ToolbarToggleStyle.makeCommonBody(configuration:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1[3];
  v26 = a1[2];
  v27 = v4;
  v5 = a1[5];
  v28 = a1[4];
  v29 = v5;
  v6 = a1[1];
  v24 = *a1;
  v25 = v6;
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = v2[3];
  v32 = v2[2];
  v33 = v10;
  v11 = v2[5];
  v34 = v2[4];
  v35 = v11;
  v12 = v2[1];
  v30 = *v2;
  v31 = v12;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v19 = v24;
  v20 = v25;
  outlined init with copy of ToggleStyleConfiguration(&v24, v18);
  type metadata accessor for Binding<ToggleState>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v18);
  LOBYTE(v2) = v18[0];
  v13 = swift_getKeyPath();
  v14 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v14;
  v15 = v35;
  *(a2 + 64) = v34;
  *(a2 + 80) = v15;
  result = *&v30;
  v17 = v31;
  *a2 = v30;
  *(a2 + 16) = v17;
  *(a2 + 96) = KeyPath;
  *(a2 + 104) = 0;
  *(a2 + 105) = v18[0];
  *(a2 + 108) = *(v18 + 3);
  *(a2 + 112) = v8;
  *(a2 + 120) = 0;
  *(a2 + 126) = WORD2(v19);
  *(a2 + 122) = v19;
  *(a2 + 128) = v9;
  *(a2 + 136) = 0;
  *(a2 + 144) = v2;
  *(a2 + 152) = v13;
  *(a2 + 160) = 0;
  return result;
}

__n128 *closure #1 in ToolbarToggleStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v13 = v19;
  LOBYTE(v14) = v20;
  v3 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = v3;
  v18 = *(a1 + 80);
  v4 = *(&v3 + 1);
  if (*(&v3 + 1))
  {
    v5 = v16.n128_u64[1];
    v6 = v16.n128_u64[0];
    v7 = *(&v18 + 1);
    v8 = v18;
    v9 = v17 & 1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  KeyPath = swift_getKeyPath();
  v15 = 0;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = v4;
  *(a2 + 56) = v8;
  *(a2 + 64) = v7;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  outlined init with copy of Binding<ToggleState>(&v19, v12);
  return outlined init with copy of ToggleStyleConfiguration.Effect(&v16, v12);
}

__n128 closure #2 in ToolbarToggleStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v29 = *(a1 + 40);
  v22 = v4;
  LOBYTE(v23) = v29;
  v5 = *(a1 + 64);
  v25 = *(a1 + 48);
  v26 = v5;
  v27 = *(a1 + 80);
  v28 = v4;
  v6 = *(&v5 + 1);
  if (*(&v5 + 1))
  {
    v7 = v25.n128_u64[1];
    v8 = v25.n128_u64[0];
    v9 = *(&v27 + 1);
    v10 = v27;
    v11 = v26 & 1;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
  }

  KeyPath = swift_getKeyPath();
  v24 = 0;
  outlined init with copy of Binding<ToggleState>(&v28, v20);
  outlined init with copy of ToggleStyleConfiguration.Effect(&v25, v20);
  ToolbarToggleStyle.makeCommonBody(configuration:)(a1, v20);
  *a2 = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
  *(a2 + 40) = v11;
  *(a2 + 48) = v6;
  *(a2 + 56) = v10;
  *(a2 + 64) = v9;
  *(a2 + 72) = KeyPath;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v13 = v20[5];
  *(a2 + 160) = v20[4];
  *(a2 + 176) = v13;
  v14 = v20[1];
  *(a2 + 96) = v20[0];
  *(a2 + 112) = v14;
  v15 = v20[3];
  *(a2 + 128) = v20[2];
  *(a2 + 144) = v15;
  result = v20[6];
  v17 = v20[7];
  v18 = v20[8];
  v19 = v20[9];
  *(a2 + 256) = v21;
  *(a2 + 224) = v18;
  *(a2 + 240) = v19;
  *(a2 + 192) = result;
  *(a2 + 208) = v17;
  return result;
}

void ToolbarToggleStyle.ResolvedBody.body.getter(uint64_t a1@<X8>)
{
  v70 = a1;
  type metadata accessor for Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabel(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, To();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarS();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPr();
  v65 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAre( 0,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>,,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPr,  &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v68 = &v62 - v17;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>();
  v66 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1[6];
  v21 = v1[7];
  v22 = v1[4];
  v96 = v1[5];
  v97 = v20;
  v98[0] = v21;
  *(v98 + 9) = *(v1 + 121);
  v23 = v1[3];
  v93 = v1[2];
  v94 = v23;
  v95 = v22;
  v24 = v1[1];
  v91 = *v1;
  v92 = v24;
  v25 = swift_allocObject();
  v26 = v1[3];
  v25[3] = v1[2];
  v25[4] = v26;
  *(v25 + 137) = *(v1 + 121);
  v27 = v1[7];
  v25[7] = v1[6];
  v25[8] = v27;
  v28 = v1[5];
  v25[5] = v1[4];
  v25[6] = v28;
  v29 = v1[1];
  v25[1] = *v1;
  v25[2] = v29;
  *v5 = 4;
  v30 = &v5[*(v3 + 44)];
  *v30 = partial apply for implicit closure #2 in implicit closure #1 in ToolbarToggleStyle.ResolvedBody.body.getter;
  v30[1] = v25;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v88 = v96;
  v89 = v97;
  v90[0] = v98[0];
  *(v90 + 9) = *(v98 + 9);
  v85 = v93;
  v86 = v94;
  v87 = v95;
  v83 = v91;
  v84 = v92;
  outlined init with copy of ToolbarToggleStyle.ResolvedBody(&v91, &v76);
  ToolbarToggleStyle.ResolvedBody.label.getter();
  v99 = v91;
  v100 = v92;
  v83 = v91;
  LOBYTE(v84) = v92;
  type metadata accessor for Binding<ToggleState>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v32 = v31;
  MEMORY[0x18D00ACC0](&v76);
  if (v76)
  {
    v33 = 0;
  }

  else
  {
    v33 = 8;
  }

  outlined init with take of Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabel(v5, v9, type metadata accessor for Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabel);
  v34 = &v9[*(v7 + 44)];
  *v34 = 2;
  *(v34 + 1) = v33;
  KeyPath = swift_getKeyPath();
  v83 = v99;
  LOBYTE(v84) = v100;
  MEMORY[0x18D00ACC0](&v76, v32);
  v36 = v76;
  outlined init with take of Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabel(v9, v13, type metadata accessor for ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, To);
  v37 = *(v11 + 44);
  v38 = v13;
  v39 = &v13[v37];
  *v39 = KeyPath;
  v39[8] = v36;
  v83 = v99;
  LOBYTE(v84) = v100;
  MEMORY[0x18D00ACC0](&v76, v32);
  if (v76 == 1)
  {
    if (one-time initialization token for lift != -1)
    {
      swift_once();
    }

    v40 = &static HoverEffect.lift;
  }

  else
  {
    if (one-time initialization token for highlight != -1)
    {
      swift_once();
    }

    v40 = &static HoverEffect.highlight;
  }

  v41 = *v40;
  v42 = swift_getKeyPath();
  v64 = v42;
  v43 = swift_getKeyPath();
  v63 = v43;
  v75 = 0;
  v74 = 0;
  v73 = 1;
  v72 = 1;
  v44 = swift_getKeyPath();
  v71[128] = 0;
  *&v76 = v41;
  BYTE8(v76) = 1;
  *&v77 = v42;
  v45 = v75;
  BYTE8(v77) = v75;
  *&v79 = 0;
  v78 = v43;
  v46 = v74;
  WORD4(v79) = v74;
  *&v80 = 0;
  v47 = v73;
  BYTE8(v80) = v73;
  *&v81 = 0;
  v48 = v72;
  BYTE8(v81) = v72;
  BYTE9(v81) = 2;
  *&v82[0] = 0;
  *(&v82[0] + 1) = v44;
  *&v82[1] = 0;
  BYTE8(v82[1]) = 0;
  v49 = v69;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>(v38, v69, type metadata accessor for ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarS);
  v50 = (v49 + *(v65 + 36));
  v51 = v81;
  v50[4] = v80;
  v50[5] = v51;
  v50[6] = v82[0];
  *(v50 + 105) = *(v82 + 9);
  v52 = v77;
  *v50 = v76;
  v50[1] = v52;
  v53 = v79;
  v50[2] = v78;
  v50[3] = v53;
  *&v83 = v41;
  BYTE8(v83) = 1;
  *&v84 = v64;
  BYTE8(v84) = v45;
  *&v86 = 0;
  v85 = v63;
  WORD4(v86) = v46;
  *&v87 = 0;
  BYTE8(v87) = v47;
  *&v88 = 0;
  BYTE8(v88) = v48;
  BYTE9(v88) = 2;
  *&v89 = 0;
  *(&v89 + 1) = v44;
  *&v90[0] = 0;
  BYTE8(v90[0]) = 0;

  outlined init with copy of CustomHoverEffectModifier<HoverEffect>(&v76, v71);
  outlined destroy of CustomHoverEffectModifier<HoverEffect>(&v83);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>(v38, type metadata accessor for ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarS);
  v54 = v68;
  outlined init with take of Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabel(v49, v68, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPr);
  v55 = v67;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<Style(v54, v67);
  v56 = v55 + *(v66 + 36);
  *v56 = 1;
  *(v56 + 8) = 2;
  v57 = swift_getKeyPath();
  v58 = v55;
  v59 = v70;
  outlined init with take of Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabel(v58, v70, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAre( 0,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<Create,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>,  &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>);
  v61 = v59 + *(v60 + 36);
  *v61 = v57;
  *(v61 + 8) = 0;
}

uint64_t implicit closure #2 in implicit closure #1 in ToolbarToggleStyle.ResolvedBody.body.getter()
{
  type metadata accessor for Binding<ToggleState>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v1);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t ToolbarToggleStyle.ResolvedBody.label.getter()
{
  v1 = v0[7];
  v52 = v0[6];
  v53[0] = v1;
  *(v53 + 9) = *(v0 + 121);
  v2 = v0[3];
  v48 = v0[2];
  v49 = v2;
  v3 = v0[5];
  v50 = v0[4];
  v51 = v3;
  v4 = v0[1];
  v46 = *v0;
  v47 = v4;
  specialized View.toolbarButtonLabel()(v29);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = v53[0];
  v6[7] = v52;
  v6[8] = v7;
  *(v6 + 137) = *(v53 + 9);
  v8 = v49;
  v6[3] = v48;
  v6[4] = v8;
  v9 = v51;
  v6[5] = v50;
  v6[6] = v9;
  v10 = v47;
  v6[1] = v46;
  v6[2] = v10;
  v30 = KeyPath;
  v31 = partial apply for implicit closure #2 in implicit closure #1 in ToolbarToggleStyle.ResolvedBody.label.getter;
  v32 = v6;
  v33 = swift_getKeyPath();
  v34 = 0;
  v36 = 0;
  v35 = 0;
  v37 = 0;
  outlined init with copy of ToolbarToggleStyle.ResolvedBody(&v46, &v21);
  v11 = static Alignment.center.getter();
  v13 = v12;
  v27 = v52;
  v28[0] = v53[0];
  *(v28 + 9) = *(v53 + 9);
  v23 = v48;
  v24 = v49;
  v25 = v50;
  v26 = v51;
  v21 = v46;
  v22 = v47;
  ToolbarToggleStyle.ResolvedBody.backgroundContent.getter(&v54);
  LODWORD(v20) = v58;
  v59[2] = v56;
  v59[3] = v57;
  *&v60 = v20;
  *(&v60 + 1) = v11;
  v41 = v57;
  v42 = v60;
  v18 = v56;
  v19 = v57;
  v16 = v54;
  v17 = v55;
  v59[0] = v54;
  v59[1] = v55;
  v61 = v13;
  v43 = v13;
  v39 = v55;
  v38 = v54;
  v40 = v56;
  v23 = v56;
  v24 = v57;
  v21 = v54;
  v22 = v55;
  *&v25 = v20;
  *(&v25 + 1) = v11;
  *&v26 = v13;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>(v59, v15, type metadata accessor for _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>(&v21, type metadata accessor for _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>);
  v44 = swift_getKeyPath();
  v45 = 2;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>);
  View.staticIf<A, B>(_:then:)();
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>(v29, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>);
}

void *implicit closure #2 in implicit closure #1 in ToolbarToggleStyle.ResolvedBody.label.getter(void *a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  type metadata accessor for Binding<ToggleState>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  result = MEMORY[0x18D00ACC0](&v4);
  if (v4 == 1)
  {

    result = AnyShapeStyle.init<A>(_:)();
    *a1 = result;
  }

  return result;
}

void *ToolbarToggleStyle.ResolvedBody.backgroundContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[12];
  v7 = *(v1 + 104);
  v8 = v1[14];
  v9 = *(v1 + 120);
  v10 = *(v1 + 121);
  v11 = v1[16];
  v12 = *(v1 + 136);
  specialized Environment.wrappedValue.getter(v6, v7, &v32);
  v28 = v32;
  specialized Environment.wrappedValue.getter(v8, v9 | (v10 << 8), &v29);
  v13 = v29;
  v14 = v30;
  static EdgeInsets.zero.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (!specialized Environment.wrappedValue.getter(v11, v12))
  {
    static Color.accentColor.getter();
  }

  v29 = v3;
  v30 = v4;
  v31 = v5;
  type metadata accessor for Binding<ToggleState>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v24 = v23;
  MEMORY[0x18D00ACC0](&v32);
  v25 = Color.opacity(_:)();

  v29 = v3;
  v30 = v4;
  v31 = v5;
  result = MEMORY[0x18D00ACC0](&v32, v24);
  v27 = 0.0;
  LOBYTE(v29) = v14;
  if (v32)
  {
    v27 = 1.0;
  }

  *a1 = v28;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v22;
  *(a1 + 56) = v25;
  *(a1 + 64) = v27;
  return result;
}

uint64_t closure #2 in ToolbarToggleStyle.ResolvedBody.label.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 16);
  type metadata accessor for Binding<ToggleState>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v7);
  v5 = v7;
  result = outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>(a1, a3, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>);
  *(a3 + 320) = 0;
  *(a3 + 328) = v5;
  return result;
}

void *protocol witness for ToggleStyle.makeBody(configuration:) in conformance ToolbarToggleStyle@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v4 = a1[5];
  v8[4] = a1[4];
  v8[5] = v4;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  closure #1 in ToolbarToggleStyle.makeBody(configuration:)(v8, __src);
  closure #2 in ToolbarToggleStyle.makeBody(configuration:)(v8, &__src[112]);
  return memcpy(a2, __src, 0x171uLL);
}

uint64_t outlined init with copy of Binding<ToggleState>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<ToggleState>(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static BackgroundContentShapeView._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2[1];
  v15 = a2[3];
  v29 = a2[2];
  v30 = v15;
  v31 = a2[4];
  v16 = a2[1];
  v27 = *a2;
  v28 = v16;
  v20 = v27;
  v21 = v14;
  v17 = *a1;
  v32 = *(a2 + 20);
  v22 = v29;
  outlined init with copy of _GraphInputs(&v27, v33);
  v18 = MEMORY[0x18D00B1E0](&v20);
  v33[0] = v20;
  v33[1] = v21;
  v33[2] = v22;
  outlined destroy of _GraphInputs(v33);
  if (v18)
  {
    *&v20 = a3;
    *(&v20 + 1) = a4;
    *&v21 = a6;
    *(&v21 + 1) = a7;
    type metadata accessor for _ShapeView();
    v26 = v17;
    *&v20 = a3;
    *(&v20 + 1) = a4;
    *&v21 = a5;
    *(&v21 + 1) = a6;
    *&v22 = a7;
    *(&v22 + 1) = a8;
    type metadata accessor for BackgroundContentShapeView();
    type metadata accessor for _GraphValue();
    v26 = _GraphValue.value.getter();
    *&v20 = a3;
    *(&v20 + 1) = a4;
    *&v21 = a5;
    *(&v21 + 1) = a6;
    *&v22 = a7;
    *(&v22 + 1) = a8;
    type metadata accessor for BackgroundContentShapeView.SolariumChild();
  }

  else
  {
    *&v20 = a3;
    *(&v20 + 1) = a5;
    *&v21 = a6;
    *(&v21 + 1) = a8;
    type metadata accessor for _ShapeView();
    v26 = v17;
    *&v20 = a3;
    *(&v20 + 1) = a4;
    *&v21 = a5;
    *(&v21 + 1) = a6;
    *&v22 = a7;
    *(&v22 + 1) = a8;
    type metadata accessor for BackgroundContentShapeView();
    type metadata accessor for _GraphValue();
    v26 = _GraphValue.value.getter();
    *&v20 = a3;
    *(&v20 + 1) = a4;
    *&v21 = a5;
    *(&v21 + 1) = a6;
    *&v22 = a7;
    *(&v22 + 1) = a8;
    type metadata accessor for BackgroundContentShapeView.NonSolariumChild();
  }

  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v25 = v32;
  v20 = v27;
  v21 = v28;
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t BackgroundContentShapeView.SolariumChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v33 = a5;
  v37 = a6;
  v38 = a4;
  v31[3] = a1;
  v36 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v12;
  v40 = v13;
  v41 = v14;
  v42 = v15;
  v43 = v16;
  v32 = v15;
  v44 = v17;
  v45 = v18;
  v19 = type metadata accessor for BackgroundContentShapeView();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v31 - v24;
  BackgroundContentShapeView.SolariumChild.shapeView.getter(v31 - v24);
  (*(v39 + 16))(v12, v25, a2);
  v26 = *(v20 + 8);
  v26(v25, v19);
  BackgroundContentShapeView.SolariumChild.shapeView.getter(v22);
  v27 = v35;
  v28 = v36;
  (*(v36 + 16))(v35, &v22[*(v19 + 68)], a3);
  v26(v22, v19);
  v29 = v34;
  Shape.fill<A>(_:style:)(v27, 256, a2, a3);
  (*(v28 + 8))(v27, a3);
  return (*(v39 + 8))(v29, a2);
}

uint64_t BackgroundContentShapeView.SolariumChild.shapeView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BackgroundContentShapeView();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t BackgroundContentShapeView.NonSolariumChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v34 = a5;
  v35 = a4;
  v37 = a1;
  v33 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v12;
  v31 = v11;
  v38 = v13;
  v39 = v12;
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v18 = type metadata accessor for BackgroundContentShapeView();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  BackgroundContentShapeView.SolariumChild.shapeView.getter(&v30 - v23);
  (*(v36 + 16))(v11, v24, a2);
  v25 = *(v19 + 8);
  v25(v24, v18);
  BackgroundContentShapeView.SolariumChild.shapeView.getter(v21);
  v26 = v32;
  v27 = v33;
  (*(v33 + 16))(v32, &v21[*(v18 + 72)], a3);
  v25(v21, v18);
  v28 = v31;
  Shape.fill<A>(_:style:)(v26, 256, a2, a3);
  (*(v27 + 8))(v26, a3);
  return (*(v36 + 8))(v28, a2);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BackgroundContentShapeView<A, B, C>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t destroy for ToolbarToggleStyle.ResolvedBody(uint64_t a1)
{

  v2 = *(a1 + 72);
  if (v2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  outlined consume of Environment<Bool>.Content(*(a1 + 96), *(a1 + 104));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 112), *(a1 + 120), *(a1 + 121));
  v3 = *(a1 + 128);
  v4 = *(a1 + 136);

  return outlined consume of Environment<Color?>.Content(v3, v4);
}

uint64_t initializeWithCopy for ToolbarToggleStyle.ResolvedBody(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 72);

  if (v6)
  {
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    v9 = *(a2 + 64);
    outlined copy of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
    *(a1 + 48) = v7;
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    v10 = *(a2 + 80);
    v11 = *(a2 + 88);
    *(a1 + 72) = v6;
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    v12 = v6;
  }

  else
  {
    v13 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v13;
    *(a1 + 80) = *(a2 + 80);
  }

  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  outlined copy of Environment<Bool>.Content(v14, v15);
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  v16 = *(a2 + 112);
  v17 = *(a2 + 121);
  v18 = *(a2 + 120);
  outlined copy of Environment<CGFloat?>.Content(v16, v18, v17);
  *(a1 + 112) = v16;
  *(a1 + 120) = v18;
  *(a1 + 121) = v17;
  v19 = *(a2 + 128);
  v20 = *(a2 + 136);
  outlined copy of Environment<Color?>.Content(v19, v20);
  *(a1 + 128) = v19;
  *(a1 + 136) = v20;
  return a1;
}

uint64_t assignWithCopy for ToolbarToggleStyle.ResolvedBody(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v4)
    {
      v5 = *(a2 + 48);
      v6 = *(a2 + 56);
      v7 = *(a2 + 64);
      outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v7);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      *(a1 + 48) = v5;
      *(a1 + 56) = v6;
      *(a1 + 64) = v7;
      outlined consume of Environment<AppIntentExecutor?>.Content(v8, v9, v10);
      v11 = *(a2 + 72);
      v12 = *(a1 + 72);
      *(a1 + 72) = v11;
      v13 = v11;

      v14 = *(a2 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v14;
    }

    else
    {
      outlined destroy of AppIntentAction(a1 + 48);
      v22 = *(a2 + 64);
      v21 = *(a2 + 80);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v22;
      *(a1 + 80) = v21;
    }
  }

  else if (v4)
  {
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    v17 = *(a2 + 64);
    outlined copy of Environment<AppIntentExecutor?>.Content(v15, v16, v17);
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    *(a1 + 64) = v17;
    v18 = *(a2 + 72);
    *(a1 + 72) = v18;
    v19 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v19;
    v20 = v18;
  }

  else
  {
    v23 = *(a2 + 48);
    v24 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v24;
    *(a1 + 48) = v23;
  }

  v25 = *(a2 + 96);
  v26 = *(a2 + 104);
  outlined copy of Environment<Bool>.Content(v25, v26);
  v27 = *(a1 + 96);
  v28 = *(a1 + 104);
  *(a1 + 96) = v25;
  *(a1 + 104) = v26;
  outlined consume of Environment<Bool>.Content(v27, v28);
  v29 = *(a2 + 112);
  v30 = *(a2 + 121);
  v31 = *(a2 + 120);
  outlined copy of Environment<CGFloat?>.Content(v29, v31, v30);
  v32 = *(a1 + 112);
  v33 = *(a1 + 121);
  *(a1 + 112) = v29;
  v34 = *(a1 + 120);
  *(a1 + 120) = v31;
  *(a1 + 121) = v30;
  outlined consume of Environment<CGFloat?>.Content(v32, v34, v33);
  v35 = *(a2 + 128);
  v36 = *(a2 + 136);
  outlined copy of Environment<Color?>.Content(v35, v36);
  v37 = *(a1 + 128);
  v38 = *(a1 + 136);
  *(a1 + 128) = v35;
  *(a1 + 136) = v36;
  outlined consume of Environment<Color?>.Content(v37, v38);
  return a1;
}

uint64_t assignWithTake for ToolbarToggleStyle.ResolvedBody(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = *(a1 + 72);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 72);
  if (!v5)
  {
    outlined destroy of AppIntentAction(a1 + 48);
LABEL_5:
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_6;
  }

  v6 = *(a2 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  *(a1 + 72) = v5;

  *(a1 + 80) = *(a2 + 80);

LABEL_6:
  v11 = *(a2 + 104);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v11;
  outlined consume of Environment<Bool>.Content(v12, v13);
  v14 = *(a2 + 120);
  v15 = *(a2 + 121);
  v16 = *(a1 + 112);
  v17 = *(a1 + 121);
  *(a1 + 112) = *(a2 + 112);
  v18 = *(a1 + 120);
  *(a1 + 120) = v14;
  *(a1 + 121) = v15;
  outlined consume of Environment<CGFloat?>.Content(v16, v18, v17);
  v19 = *(a2 + 136);
  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v19;
  outlined consume of Environment<Color?>.Content(v20, v21);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarToggleStyle.ResolvedBody(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t storeEnumTagSinglePayload for ToolbarToggleStyle.ResolvedBody(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, lazy protocol witness table accessor for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>();
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>, StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>();
    type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_0(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<ButtonToggleStyle>, lazy protocol witness table accessor for type ButtonToggleStyle and conformance ButtonToggleStyle, &type metadata for ButtonToggleStyle, type metadata accessor for ToggleStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
    type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>();
    type metadata accessor for ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>();
    lazy protocol witness table accessor for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>();
    lazy protocol witness table accessor for type ToolbarToggleStyle.ResolvedBody and conformance ToolbarToggleStyle.ResolvedBody();
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>, &type metadata for ToolbarButtonContentModifier, lazy protocol witness table accessor for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ToolbarToggleStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarToggleStyle.ResolvedBody and conformance ToolbarToggleStyle.ResolvedBody()
{
  result = lazy protocol witness table cache variable for type ToolbarToggleStyle.ResolvedBody and conformance ToolbarToggleStyle.ResolvedBody;
  if (!lazy protocol witness table cache variable for type ToolbarToggleStyle.ResolvedBody and conformance ToolbarToggleStyle.ResolvedBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarToggleStyle.ResolvedBody and conformance ToolbarToggleStyle.ResolvedBody);
  }

  return result;
}

void type metadata accessor for StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifie()
{
  if (!lazy cache variable for type metadata for StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarBut)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarBut);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>();
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_0(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>();
    type metadata accessor for _EnvironmentKeyTransformModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool?>, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>();
    type metadata accessor for _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>(255);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>)
  {
    type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>();
    type metadata accessor for _EnvironmentKeyTransformModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<AnyShapeStyle?>, &lazy cache variable for type metadata for AnyShapeStyle?, MEMORY[0x1E697E0B8], MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>)
  {
    type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabel(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAre(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4)
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>(255, a4);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>()
{
  if (!lazy cache variable for type metadata for BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_0(255, &lazy cache variable for type metadata for _OpacityShapeStyle<TintShapeStyle>, MEMORY[0x1E697E570], MEMORY[0x1E697E558], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape();
    lazy protocol witness table accessor for type _OpacityShapeStyle<TintShapeStyle> and conformance _OpacityShapeStyle<A>();
    v0 = type metadata accessor for BackgroundContentShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>(255);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>, &type metadata for ToolbarButtonEdgeOutsetModifier, lazy protocol witness table accessor for type ToolbarButtonEdgeOutsetModifier and conformance ToolbarButtonEdgeOutsetModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarButtonEdgeOutsetModifier and conformance ToolbarButtonEdgeOutsetModifier()
{
  result = lazy protocol witness table cache variable for type ToolbarButtonEdgeOutsetModifier and conformance ToolbarButtonEdgeOutsetModifier;
  if (!lazy protocol witness table cache variable for type ToolbarButtonEdgeOutsetModifier and conformance ToolbarButtonEdgeOutsetModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarButtonEdgeOutsetModifier and conformance ToolbarButtonEdgeOutsetModifier);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<AnyShapeStyle?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Binding<ToggleState>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for Binding<ToggleState>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, Toolba()
{
  result = lazy protocol witness table cache variable for type StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ;
  if (!lazy protocol witness table cache variable for type StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, )
  {
    type metadata accessor for StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifie();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>,);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type BarItemWidthModifier and conformance BarItemWidthModifier);
    lazy protocol witness table accessor for type Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>,(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>();
    lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<AnyShapeStyle?> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<AnyShapeStyle?> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<AnyShapeStyle?> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<AnyShapeStyle?>, &lazy cache variable for type metadata for AnyShapeStyle?, MEMORY[0x1E697E0B8], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<AnyShapeStyle?> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarItemWidthModifier and conformance BarItemWidthModifier()
{
  result = lazy protocol witness table cache variable for type BarItemWidthModifier and conformance BarItemWidthModifier;
  if (!lazy protocol witness table cache variable for type BarItemWidthModifier and conformance BarItemWidthModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarItemWidthModifier and conformance BarItemWidthModifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>,(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>()
{
  result = lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>;
  if (!lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_0(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, To()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarSt)
  {
    type metadata accessor for Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabel(255);
    type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<ToolbarButtonHoverShape>, lazy protocol witness table accessor for type ToolbarButtonHoverShape and conformance ToolbarButtonHoverShape, &type metadata for ToolbarButtonHoverShape, MEMORY[0x1E69805E0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarSt);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarS()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPre)
  {
    type metadata accessor for ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, To();
    type metadata accessor for _EnvironmentKeyTransformModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool?>, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPre);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPr()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleC)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarS();
    type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(255, &lazy cache variable for type metadata for CustomHoverEffectModifier<HoverEffect>, lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect, &type metadata for HoverEffect, type metadata accessor for CustomHoverEffectModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleC);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeArea)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAre( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>,,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPr,  &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>);
    type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeArea);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for ToggleStyleModifier<ButtonToggleStyle>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetPredicate and conformance CreatesToolbarSafeAreaInsetPredicate, &type metadata for CreatesToolbarSafeAreaInsetPredicate, MEMORY[0x1E6980680]);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for Binding<ToggleState>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA03MaccD0VGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>);
    }
  }
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<Style(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAre( 0,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>,,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPr,  &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<Cr()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredic;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredic)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAre( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<Create,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>,  &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafe();
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier, lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredic);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafe()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolb;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolb)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredica();
    lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredica()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetP;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetP)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAre( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>,,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPr,  &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, Stati,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPr,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAccept,  lazy protocol witness table accessor for type CustomHoverEffectModifier<HoverEffect> and conformance CustomHoverEffectModifier<A>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>, &type metadata for ToolbarButtonEdgeOutsetModifier, lazy protocol witness table accessor for type ToolbarButtonEdgeOutsetModifier and conformance ToolbarButtonEdgeOutsetModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetP);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<ButtonToggleStyle>>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<Toolb()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate)
  {
    type metadata accessor for ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, To();
    lazy protocol witness table accessor for type Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>,(&lazy protocol witness table cache variable for type Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleCon, type metadata accessor for Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabel);
    lazy protocol witness table accessor for type _ContentShapeKindModifier<ToolbarButtonHoverShape> and conformance _ContentShapeKindModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<StaticIf<Solarium, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>, _EnvironmentKeyTransformModifier<AnyShapeStyle?>>, BarItemWidthModifier>, _BackgroundModifier<ModifiedContent<BackgroundContentShapeView<ResolvedBorderShape, Color, _OpacityShapeStyle<TintShapeStyle>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonEdgeOutsetModifier, EmptyModifier>>>>, _EnvironmentKeyWritingModifier<Bool?>>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ToggleStyleConfiguration.Label, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t View.onFocus(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x18D00A570](v4, a3, &unk_1EFFC49A8);
}

uint64_t OnFocusModifier.Mutation.combine<A>(with:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  result = swift_dynamicCast();
  if (result)
  {
    *(v1 + 8) = v6[12];
  }

  return result;
}

uint64_t static OnFocusModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, __int128 *a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  v36 = a2[2];
  v37 = v7;
  v38 = a2[4];
  v39 = *(a2 + 20);
  v8 = a2[1];
  v34 = *a2;
  v35 = v8;
  *&v28 = v7;
  DWORD2(v28) = DWORD2(v7);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    type metadata accessor for ViewGraph();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v12 = *(v10 + 208);

      if (Strong)
      {
        ObjectType = swift_getObjectType();
        v14 = type metadata accessor for FocusHost();
        (*(v12 + 16))(&v28, v14, v14, ObjectType, v12);
        swift_unknownObjectRelease();
        if (v28)
        {
          swift_unknownObjectRelease();
          v31 = v37;
          v32 = v38;
          v33 = v39;
          v28 = v34;
          v29 = v35;
          v30 = v36;
          type metadata accessor for DefaultLayoutViewResponder();
          swift_allocObject();
          outlined init with copy of _ViewInputs(&v34, v27);
          v15 = DefaultLayoutViewResponder.init(inputs:)();
          LOBYTE(v28) = 0;
          Attribute.init<A>(body:value:flags:update:)();
          v16 = AGCreateWeakAttribute();
          v17 = HIDWORD(v16);
          v26 = v16;
          v18 = v16;
          v19 = DWORD2(v35);
          lazy protocol witness table accessor for type FocusedItemInputKey and conformance FocusedItemInputKey();

          PropertyList.subscript.getter();
          LODWORD(v28) = v6;
          *(&v28 + 1) = v15;
          LODWORD(v29) = v19;
          *(&v29 + 1) = __PAIR64__(v17, v18);
          LODWORD(v30) = 0;
          WORD2(v30) = 1;
          protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
          lazy protocol witness table accessor for type OnFocusObserver and conformance OnFocusObserver();
          Attribute.init<A>(body:value:flags:update:)();

          AGGraphSetFlags();
          v20 = swift_allocObject();
          MEMORY[0x18D00B7D0]();
          swift_weakInit();

          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = v26;
          *(v21 + 28) = v17;
          *(v21 + 32) = 1;
          v22 = swift_allocObject();
          MEMORY[0x18D00B7D0]();
          swift_weakInit();

          v23 = swift_allocObject();
          *(v23 + 16) = v22;
          *(v23 + 24) = v26;
          *(v23 + 28) = v17;
          *(v23 + 32) = 0;
          *&v28 = partial apply for closure #1 in static OnFocusModifier.appearanceHandler(_:_:);
          *(&v28 + 1) = v21;
          *&v29 = closure #1 in static OnFocusModifier.appearanceHandler(_:_:)partial apply;
          *(&v29 + 1) = v23;

          LODWORD(v17) = Attribute.init<A>(body:value:flags:update:)();

          v27[0] = v17;
          v31 = v37;
          v32 = v38;
          v33 = v39;
          v28 = v34;
          v29 = v35;
          v30 = v36;
          static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
          v28 = *a4;

          v24 = _ViewOutputs.viewResponders()();

          LODWORD(v28) = v24;
          *(&v28 + 1) = v15;
          protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
          type metadata accessor for [ViewResponder](0);
          lazy protocol witness table accessor for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter();

          Attribute.init<A>(body:value:flags:update:)();

          LOBYTE(v28) = 0;
          PreferencesOutputs.subscript.setter();
        }
      }
    }

    else
    {
    }
  }

  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  return a3();
}

uint64_t closure #1 in static OnFocusModifier.appearanceHandler(_:_:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static Transaction.current.getter();
    lazy protocol witness table accessor for type OnFocusModifier.Mutation and conformance OnFocusModifier.Mutation();
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
    GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
  }

  return result;
}

void OnFocusObserver.updateValue()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 36);
  Value = AGGraphGetValue();
  if ((v2 & 1) != 0 || v1 != *Value >> 1)
  {
    *(v0 + 32) = *AGGraphGetValue() >> 1;
    *(v0 + 36) = 0;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v7 = (v6 & 1) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v4 |= *WeakValue ^ 1;
  }

  if (*(v0 + 20) == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_20;
  }

  type metadata accessor for FocusItem?();
  v8 = AGGraphGetValue();
  outlined init with copy of FocusItem?(v8, v10);
  if (!v10[5] && v10[6] == 1)
  {
    outlined destroy of FocusItem?(v10);
    goto LABEL_20;
  }

  if (!swift_weakLoadStrong())
  {
    outlined destroy of FocusItem(v10);
    goto LABEL_20;
  }

  v9 = dispatch thunk of ResponderNode.isDescendant(of:)();

  outlined destroy of FocusItem(v10);
  if ((v9 & 1) == 0)
  {
LABEL_20:
    OnFocusObserver.lostFocus()();
    return;
  }

  if (v4)
  {
    OnFocusObserver.lostFocus()();
  }

  OnFocusObserver.gainedFocus()();
}

void OnFocusObserver.lostFocus()()
{
  if (*(v0 + 37) == 1 && (*(v0 + 36) & 1) == 0)
  {
    Value = AGGraphGetValue();
    v3 = *Value;
    v2 = Value[1];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    swift_retain_n();
    static Update.enqueueAction(reason:_:)();

    *(v0 + 37) = 0;
  }
}

void OnFocusObserver.gainedFocus()()
{
  if ((*(v0 + 37) & 1) == 0 && (*(v0 + 36) & 1) == 0)
  {
    Value = AGGraphGetValue();
    v3 = *Value;
    v2 = Value[1];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    swift_retain_n();
    static Update.enqueueAction(reason:_:)();

    *(v0 + 37) = 1;
  }
}

unint64_t lazy protocol witness table accessor for type OnFocusObserver and conformance OnFocusObserver()
{
  result = lazy protocol witness table cache variable for type OnFocusObserver and conformance OnFocusObserver;
  if (!lazy protocol witness table cache variable for type OnFocusObserver and conformance OnFocusObserver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnFocusObserver and conformance OnFocusObserver);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OnFocusModifier.Mutation and conformance OnFocusModifier.Mutation()
{
  result = lazy protocol witness table cache variable for type OnFocusModifier.Mutation and conformance OnFocusModifier.Mutation;
  if (!lazy protocol witness table cache variable for type OnFocusModifier.Mutation and conformance OnFocusModifier.Mutation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnFocusModifier.Mutation and conformance OnFocusModifier.Mutation);
  }

  return result;
}

uint64_t initializeWithCopy for OnFocusObserver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);

  return a1;
}

uint64_t assignWithCopy for OnFocusObserver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v4 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v4;
  *(a1 + 37) = *(a2 + 37);
  return a1;
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for OnFocusObserver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnFocusObserver(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 38))
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

uint64_t storeEnumTagSinglePayload for OnFocusObserver(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 38) = 1;
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

    *(result + 38) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static UIKitAnimationBridge.withAnimation<A>(_:_:completion:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (!a1)
  {
    return a2();
  }

  type metadata accessor for Error();
  v13 = type metadata accessor for Result();
  type metadata accessor for Optional();
  v14 = swift_allocBox();
  (*(*(v13 - 8) + 56))(v15, 1, 1, v13);
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a2;
  v16[4] = a3;

  closure #1 in static UIKitAnimationBridge.withAnimation<A>(_:_:completion:)(partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error), v16, a1, v14, a4, a5, a6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    partial apply for closure #2 in static UIKitAnimationBridge.withAnimation<A>(_:_:completion:)(a7);
  }

  return result;
}

uint64_t closure #1 in static UIKitAnimationBridge.withAnimation<A>(_:_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for UIView();
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;

  static UIView.animate(bridgedAnimation:animations:completion:)();
}

void specialized closure #1 in closure #1 in static UIKitAnimationBridge.withAnimation<A>(_:_:completion:)(uint64_t a1, void (*a2)(void *__return_ptr))
{
  a2(v6);
  v3 = v6[0];
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  outlined consume of Result<(), Error>?(v4, v5);
}

uint64_t closure #1 in closure #1 in static UIKitAnimationBridge.withAnimation<A>(_:_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Error();
  v7 = type metadata accessor for Result();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-v10];
  v12 = swift_projectBox();
  v15 = a4;
  v16 = a2;
  v17 = a3;
  _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC(partial apply for closure #1 in closure #1 in closure #1 in static UIKitAnimationBridge.withAnimation<A>(_:_:completion:), v11);
  (*(*(v7 - 8) + 56))(v11, 0, 1, v7);
  swift_beginAccess();
  return (*(v9 + 40))(v12, v11, v8);
}

uint64_t _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC@<X0>(void (*a1)(_BYTE *, double)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Result();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12[-v9];
  a1(v5, v8);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v10, v6);
}

uint64_t closure #2 in static UIKitAnimationBridge.withAnimation<A>(_:_:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Error();
  v4 = type metadata accessor for Result();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  swift_beginAccess();
  (*(v6 + 16))(v8, a1, v5);
  result = (*(*(v4 - 8) + 48))(v8, 1, v4);
  if (result != 1)
  {
    return _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v4, &v11, a2);
  }

  __break(1u);
  return result;
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

uint64_t static UIView.animate(_:changes:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[2] = a2;
  v15[3] = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = -1;
  v9 = swift_allocObject();
  *(v9 + 16) = _ss5Error_pIgzo_ytsAA_pIegrzo_TRTA_0;
  *(v9 + 24) = v15;
  type metadata accessor for UIView();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error);
  v10[4] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in static UIView.animate(_:changes:completion:);
  *(v11 + 24) = v7;

  outlined copy of AppIntentExecutor?(a4);
  static UIView.animate(bridgedAnimation:animations:completion:)();

  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_beginAccess();
  v12 = *(v8 + 24);
  if (v12 == 255)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v12 & 1) == 0)
  {
  }

LABEL_7:
  v16 = *(v8 + 16);
  v14 = v16;
  type metadata accessor for Error();
  result = swift_willThrowTypedImpl();
  __break(1u);
  return result;
}

uint64_t closure #1 in static UIView.animate(_:changes:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3)
  {
    return a3();
  }

  return result;
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t static UIView.animate(with:changes:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[2] = a2;
  v15[3] = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = -1;
  v9 = swift_allocObject();
  *(v9 + 16) = thunk for @callee_guaranteed () -> (@error @owned Error)partial apply;
  *(v9 + 24) = v15;
  type metadata accessor for UIView();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = thunk for @callee_guaranteed () -> (@out A, @error @owned Error)specialized partial apply;
  v10[4] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = closure #1 in static UIView.animate(_:changes:completion:)partial apply;
  *(v11 + 24) = v7;

  outlined copy of AppIntentExecutor?(a4);
  static UIView.animate(bridgedAnimation:animations:completion:)();

  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_beginAccess();
  v12 = *(v8 + 24);
  if (v12 == 255)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v12 & 1) == 0)
  {
  }

LABEL_7:
  v16 = *(v8 + 16);
  v14 = v16;
  type metadata accessor for Error();
  result = swift_willThrowTypedImpl();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static UIView.animate(_:changes:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t static UIView.animate(_:animations:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[2] = a2;
  v15[3] = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = -1;
  v9 = swift_allocObject();
  *(v9 + 16) = thunk for @callee_guaranteed () -> (@error @owned Error)partial apply;
  *(v9 + 24) = v15;
  type metadata accessor for UIView();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = thunk for @callee_guaranteed () -> (@out A, @error @owned Error)specialized partial apply;
  v10[4] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in static UIView.animate(_:animations:completion:);
  *(v11 + 24) = v7;

  static UIView.animate(bridgedAnimation:animations:completion:)();

  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_beginAccess();
  v12 = *(v8 + 24);
  if (v12 == 255)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v12 & 1) == 0)
  {
  }

LABEL_7:
  v16 = *(v8 + 16);
  v14 = v16;
  type metadata accessor for Error();
  result = swift_willThrowTypedImpl();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static UIView.animate(_:animations:completion:)(char a1, unsigned int a2)
{
  if (a1)
  {
    v3 = 2;
  }

  else
  {
    v3 = a2;
  }

  return (*(v2 + 16))(v3);
}

Swift::Int UIView.AnimationResult.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type UIView.AnimationResult and conformance UIView.AnimationResult()
{
  result = lazy protocol witness table cache variable for type UIView.AnimationResult and conformance UIView.AnimationResult;
  if (!lazy protocol witness table cache variable for type UIView.AnimationResult and conformance UIView.AnimationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIView.AnimationResult and conformance UIView.AnimationResult);
  }

  return result;
}

void outlined consume of Result<(), Error>?(void *a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<(), Error>(a1, a2 & 1);
  }
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static UIKitAnimationBridge.withAnimation<A>(_:_:completion:)(void *a1)
{
  result = (*(v1 + 24))();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.isHoverEffectEnabled : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isHoverEffectEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t View.hoverEffect(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect();
  return View.hoverEffect<A>(_:isEnabled:)(&v8, 1, a2, &type metadata for HoverEffect, a3, a4);
}

uint64_t View.hoverEffect(_:isEnabled:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect();
  return View.hoverEffect<A>(_:isEnabled:)(&v10, a2, a3, &type metadata for HoverEffect, a4, a5);
}

uint64_t View.defaultHoverEffect(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.defaultHoverEffect.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues.defaultHoverEffect.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.defaultHoverEffect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, a3);
  HoverEffect.init<A>(_:)(v7, a3, &v10);
  v9 = v10;
  View.environment<A>(_:_:)();
}

uint64_t HoverEffect.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyHoverEffectBox();
  (*(v6 + 16))(v8, a1, a2);
  v9 = TransformBox.__allocating_init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t View.hoverEffectDisabled(_:)(char a1)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  View.transformEnvironment<A>(_:transform:)();
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>);
    }
  }
}

uint64_t one-time initialization function for highlight(uint64_t a1, char a2, uint64_t *a3)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for CustomHoverEffectModifier<HoverEffect>(0, &lazy cache variable for type metadata for _InternalHoverEffectBox<SystemCustomHoverEffect>, lazy protocol witness table accessor for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect, &type metadata for SystemCustomHoverEffect, type metadata accessor for _InternalHoverEffectBox);
  result = swift_allocObject();
  *(result + 16) = KeyPath;
  *(result + 72) = 0;
  *(result + 73) = a2;
  *(result + 74) = 1;
  *a3 = result;
  return result;
}

uint64_t _AnyHoverEffectBox.systemHoverEffect.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(*v2 + 112);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(v14 - v8, v2 + *(v6 + 128), v4, v5);
  type metadata accessor for InternalCustomHoverEffect();
  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v14, v16);
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v10 + 32))(v14, v9, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    v12 = v14[0];
    v13 = BYTE1(v14[0]);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    result = outlined destroy of InternalCustomHoverEffect?(v14);
    v12 = 3;
    v13 = 1;
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

uint64_t _InternalHoverEffectBox.systemHoverEffect.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1 + *(v2 + 128), v3, v5);
  (*(*(v2 + 176) + 32))(v3);
  return (*(v4 + 8))(v7, v3);
}

void (*EnvironmentValues.defaultHoverEffect.modify(void *a1))(void **a1, char a2)
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
  v3[2] = v1;
  v3[3] = *v1;
  v4 = v1[1];
  v3[4] = v4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>);
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.defaultHoverEffect.modify;
}

void EnvironmentValues.defaultHoverEffect.modify(void **a1, char a2)
{
  v3 = *a1;
  (*a1)[1] = **a1;
  v4 = v3[4];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>);
  if (a2)
  {
    swift_retain_n();

    PropertyList.subscript.setter();
    if (v4)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  else
  {

    PropertyList.subscript.setter();
    if (v4)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }
  }

  free(v3);
}

uint64_t SystemHoverEffectViewModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 33);
    if (*(v1 + 34) == 1)
    {
      result = specialized Environment.wrappedValue.getter(*(v1 + 1), *(v1 + 16));
    }

    else
    {
      result = 0;
    }

    *a1 = 4;
    *(a1 + 8) = v2;
    *(a1 + 12) = v4;
    *(a1 + 16) = v2;
    *(a1 + 20) = result & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
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

void type metadata accessor for _EnvironmentKeyWritingModifier<HoverEffect?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<HoverEffect?>)
  {
    type metadata accessor for HoverEffect?(255, &lazy cache variable for type metadata for HoverEffect?, &type metadata for HoverEffect, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<HoverEffect?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t assignWithCopy for AnyHoverEffectContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  v4 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v4;

  v5 = *(a2 + 136);
  v6 = *(a1 + 136);
  *(a1 + 136) = v5;
  v7 = v5;

  v8 = *(a2 + 144);
  if (!*(a1 + 144))
  {
    if (v8)
    {
      *(a1 + 144) = v8;
      v12 = *(a2 + 152);
      *(a1 + 152) = v12;

      v13 = v12;
      return a1;
    }

LABEL_7:
    *(a1 + 144) = *(a2 + 144);
    return a1;
  }

  if (!v8)
  {
    outlined destroy of AnyHoverEffectContainer.ChildEffect(a1 + 144);
    goto LABEL_7;
  }

  *(a1 + 144) = v8;

  v9 = *(a2 + 152);
  v10 = *(a1 + 152);
  *(a1 + 152) = v9;
  v11 = v9;

  return a1;
}

uint64_t outlined destroy of AnyHoverEffectContainer.ChildEffect(uint64_t a1)
{

  return a1;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t assignWithTake for AnyHoverEffectContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  v5 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);

  v6 = *(a2 + 144);
  if (!*(a1 + 144))
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    outlined destroy of AnyHoverEffectContainer.ChildEffect(a1 + 144);
LABEL_5:
    *(a1 + 144) = *(a2 + 144);
    return a1;
  }

  *(a1 + 144) = v6;

  v7 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

void destroy for AnyHoverEffectContainer.ChildEffect(uint64_t a1)
{

  v2 = *(a1 + 8);
}

void *assignWithCopy for AnyHoverEffectContainer.ChildEffect(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for AnyHoverEffectContainer.ChildEffect(uint64_t a1, _OWORD *a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

id outlined copy of AnyHoverEffectContainer.ChildEffect?(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

unint64_t type metadata accessor for InternalCustomHoverEffect()
{
  result = lazy cache variable for type metadata for InternalCustomHoverEffect;
  if (!lazy cache variable for type metadata for InternalCustomHoverEffect)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for InternalCustomHoverEffect);
  }

  return result;
}

uint64_t outlined destroy of InternalCustomHoverEffect?(uint64_t a1)
{
  type metadata accessor for InternalCustomHoverEffect?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for InternalCustomHoverEffect?()
{
  if (!lazy cache variable for type metadata for InternalCustomHoverEffect?)
  {
    type metadata accessor for InternalCustomHoverEffect();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InternalCustomHoverEffect?);
    }
  }
}

uint64_t initializeWithCopy for SystemHoverEffectViewModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of Environment<Color?>.Content(v6, v7);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t assignWithCopy for SystemHoverEffectViewModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  outlined copy of Environment<Color?>.Content(v8, v9);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  outlined consume of Environment<Color?>.Content(v10, v11);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for SystemHoverEffectViewModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = *(a2 + 32);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v8;
  outlined consume of Environment<Color?>.Content(v9, v10);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t getEnumTagSinglePayload for SystemHoverEffectViewModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 35))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemHoverEffectViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SystemHoverEffectViewModifier>, PortalGroupRendererEffect>, PointerHoverEffectModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SystemHoverEffectViewModifier>, PortalGroupRendererEffect>, PointerHoverEffectModifier>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SystemHoverEffectViewModifier>, PortalGroupRendererEffect>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SystemHoverEffectViewModifier>, PortalGroupRendererEffect>, PointerHoverEffectModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<SystemHoverEffectViewModifier>, PortalGroupRendererEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SystemHoverEffectViewModifier>, PortalGroupRendererEffect>)
  {
    type metadata accessor for CustomHoverEffectModifier<HoverEffect>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SystemHoverEffectViewModifier>, lazy protocol witness table accessor for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier, &type metadata for SystemHoverEffectViewModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SystemHoverEffectViewModifier>, PortalGroupRendererEffect>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<SystemHoverEffectViewModifier>, PortalGroupRendererEffect>, PointerHoverEffectModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SystemHoverEffectViewModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<SystemHoverEffectViewModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<SystemHoverEffectViewModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for CustomHoverEffectModifier<HoverEffect>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SystemHoverEffectViewModifier>, lazy protocol witness table accessor for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier, &type metadata for SystemHoverEffectViewModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<SystemHoverEffectViewModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t View.repeatingRotationEffect(anchor:duration:)()
{
  static Animation.linear(duration:)();
  View.repeatingRotationEffect(from:to:anchor:animation:)();
}

uint64_t View.repeatingRotationEffect(from:to:anchor:animation:)()
{
  Animation.repeatForever(autoreverses:)();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  View.appearanceAnimation<A>(animation:strategy:modifier:)();
}

uint64_t View.repeatingScaleEffect(from:to:anchor:animation:)()
{
  return View.repeatingScaleEffect(from:to:anchor:animation:)();
}

{
  Animation.repeatForever(autoreverses:)();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  default argument 1 of View.appearanceAnimation<A>(animation:strategy:modifier:)();
  View.appearanceAnimation<A>(animation:strategy:modifier:)();
}

uint64_t partial apply for closure #1 in View.repeatingScaleEffect(from:to:anchor:animation:)(__n128 a1, double a2, __n128 a3, __n128 a4, uint64_t a5, char a6)
{
  v7 = v6 + 4;
  if ((a6 & 1) == 0)
  {
    v7 = v6 + 6;
  }

  a1.n128_u64[0] = *v7;
  if (a6)
  {
    v8 = (v6 + 5);
  }

  else
  {
    v8 = (v6 + 7);
  }

  a3.n128_u64[0] = v6[8];
  a4.n128_u64[0] = v6[9];
  return MEMORY[0x18D00A100](v6[2], v6[3], a1, *v8, a3, a4);
}

Swift::Void __swiftcall UIKitNavigationController.setViewControllers(_:animated:)(Swift::OpaquePointer _, Swift::Bool animated)
{
  if (v2[OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations])
  {
    type metadata accessor for UIViewController();
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v9.receiver = v2;
    v9.super_class = type metadata accessor for UIKitNavigationController();
    objc_msgSendSuper2(&v9, sel_setViewControllers_animated_, v4.super.isa, animated);
LABEL_8:

    return;
  }

  v5 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy;
  swift_beginAccess();
  outlined init with copy of _PresentationTransitionOutputs.Content(&v2[v5], &v13);
  if (!v14)
  {
    type metadata accessor for UIViewController();
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v10.receiver = v2;
    v10.super_class = type metadata accessor for UIKitNavigationController();
    objc_msgSendSuper2(&v10, sel_setViewControllers_animated_, v4.super.isa, animated);
    goto LABEL_8;
  }

  v6 = v2;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, v12);
  v7 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  if ((*(v7 + 16))())
  {
    type metadata accessor for UIViewController();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v11.receiver = v6;
    v11.super_class = type metadata accessor for UIKitNavigationController();
    objc_msgSendSuper2(&v11, sel_setViewControllers_animated_, isa, animated);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
}

id UIKitNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UIKitTabBarController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_popoverBridge;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for UIKitPopoverBridge()) init];
  v3 = OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_update;
  type metadata accessor for PlatformBarUpdater();
  v4 = swift_allocObject();
  v4[2] = specialized InferredToolbarState.init()();
  v4[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  v5 = MEMORY[0x1E69E7CD0];
  v4[7] = 0;
  v4[8] = 0;
  v4[6] = v5;
  *&v0[v3] = v4;
  *&v0[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_bottomAccessoryHost] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_backgroundHost] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectWeakAssign();
  return v6;
}

Swift::Void __swiftcall UIKitTabBarController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  v3 = v2;
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  [(UIWindow_optional *)&v11 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  v6 = OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_popoverBridge;
  v7 = *&v3[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_popoverBridge];
  if (*&v7[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_delayedPopoverPreferences])
  {
    v8 = to == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v10 = *&v7[OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_delayedPopoverPreferences];

    v9 = v7;
    UIKitPopoverBridge.preferencesDidChange(_:)(&v10);

    *(*&v3[v6] + OBJC_IVAR____TtC7SwiftUI18UIKitPopoverBridge_delayedPopoverPreferences) = 0;
  }
}

void @objc UIKitTabBarController._observeScrollViewDidScroll(_:)(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = a3;
  v8 = v10.receiver;
  objc_msgSendSuper2(&v10, v6, v7);
  v9 = v8;
  PlatformBarUpdater.callAsFunction(context:)(0, v8);
}

id @objc UIKitSplitViewController.init(coder:)(_BYTE *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  a1[*a4] = 0;
  v11.receiver = a1;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, v8);

  if (v9)
  {
  }

  return v9;
}

id @objc UIKitSplitViewController.init(nibName:bundle:)(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    a1[*a5] = 0;
    v13 = a4;
    v14 = MEMORY[0x18D00C850](v10, v12);
  }

  else
  {
    a1[*a5] = 0;
    v15 = a4;
    v14 = 0;
  }

  v18.receiver = a1;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, v14, a4);

  return v16;
}

id @objc UIKitSplitViewController.init(style:)(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  a1[*a4] = 0;
  v9.receiver = a1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_initWithStyle_, a3);
}

void specialized UIKitNavigationController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isDataDriven) = 0;
  v1 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_update;
  type metadata accessor for PlatformBarUpdater();
  v2 = swift_allocObject();
  v2[2] = specialized InferredToolbarState.init()();
  v2[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2[5] = 0;
  swift_unknownObjectWeakInit();
  v3 = MEMORY[0x1E69E7CD0];
  v2[8] = 0;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isTransitioningToSize) = 0;
  v4 = v0 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_navigationAuthority;
  *v4 = xmmword_18CD633F0;
  *(v4 + 16) = 0;
  v5 = v0 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_context;
  *v5 = xmmword_18CD67BC0;
  *(v5 + 16) = 0;
  v6 = v0 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_platformNavigationPresentationStrategy;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_isSecure) = 0;
  v2[6] = v3;
  v2[7] = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_backgroundHost) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized UIKitTabBarController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_popoverBridge;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for UIKitPopoverBridge()) init];
  v2 = OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_update;
  type metadata accessor for PlatformBarUpdater();
  v3 = swift_allocObject();
  v3[2] = specialized InferredToolbarState.init()();
  v3[3] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI16ToolbarPlacementV4RoleO_AC0E23AppearanceConfigurationVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x1E69E7CD0];
  *(v0 + v2) = v3;
  v3[7] = 0;
  v3[8] = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_bottomAccessoryHost) = 0;
  v3[6] = v4;
  *(v0 + OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_backgroundHost) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ButtonRole.Role and conformance ButtonRole.Role()
{
  result = lazy protocol witness table cache variable for type ButtonRole.Role and conformance ButtonRole.Role;
  if (!lazy protocol witness table cache variable for type ButtonRole.Role and conformance ButtonRole.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonRole.Role and conformance ButtonRole.Role);
  }

  return result;
}

uint64_t static _AppearanceActionModifier._makeScene(modifier:inputs:body:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *))
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(a2 + 2);
  v4 = *(a2 + 6);
  v10 = *(a2 + 28);
  v11 = *(a2 + 44);
  AppearanceEffect.init(modifier:phase:)();
  v12 = v16[0];
  v13 = v16[1];
  v14 = v16[2];
  v15 = v17;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type AppearanceEffect and conformance AppearanceEffect();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of AppearanceEffect(v16);
  v5 = AGGraphSetFlags();
  v9 = v4;
  return a3(v5, &v7);
}

unint64_t lazy protocol witness table accessor for type AppearanceEffect and conformance AppearanceEffect()
{
  result = lazy protocol witness table cache variable for type AppearanceEffect and conformance AppearanceEffect;
  if (!lazy protocol witness table cache variable for type AppearanceEffect and conformance AppearanceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppearanceEffect and conformance AppearanceEffect);
  }

  return result;
}

uint64_t static LegacyBaseModifier._makeView(modifier:inputs:body:)()
{
  type metadata accessor for NavigationLinkPresentedValue?(0, &lazy cache variable for type metadata for _GraphValue<LegacyBaseModifier>, &unk_1EFFC5740, MEMORY[0x1E697DDB8]);
  _GraphValue.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type LegacyBaseModifier.Child and conformance LegacyBaseModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type PlatformItemNavigationSelectionStyleModifier and conformance PlatformItemNavigationSelectionStyleModifier();
  return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
}

_BYTE *protocol witness for Rule.value.getter in conformance LegacyBaseModifier.Child@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t BaseModifier.SelectionStateBox.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for NavigationSelectionModifier(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(result + 32);
  v3 = *(a2 + 32);
  if (v2 == 1)
  {
    if (v3 <= 1)
    {
LABEL_3:
      v4 = *(a2 + 8);
      v5 = *(a2 + 24);
      *(result + 40) = *(a2 + 40);
      *(result + 24) = v5;
      *(result + 8) = v4;
      return result;
    }

    goto LABEL_11;
  }

  if (v3 == 1)
  {
    v6 = result;
    v7 = a2;
    outlined destroy of NavigationLinkPresentedValue(result + 8);
LABEL_6:
    result = v6;
    v8 = *(v7 + 40);
    v9 = *(v7 + 24);
    *(v6 + 8) = *(v7 + 8);
    *(v6 + 24) = v9;
    *(v6 + 40) = v8;
    return result;
  }

  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_11:
    *(result + 32) = v3;
    *(result + 40) = *(a2 + 40);
    v6 = result;
    (**(v3 - 8))(result + 8, a2 + 8);
    return v6;
  }

  v6 = result;
  v10 = (result + 8);
  if (!v3)
  {
    v7 = a2;
    outlined destroy of AnyNavigationLinkPresentedValue(v10);
    goto LABEL_6;
  }

  __swift_assign_boxed_opaque_existential_1(v10, (a2 + 8));
  return v6;
}

__n128 assignWithTake for NavigationSelectionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 32);
  if (v3 != 1)
  {
    v4 = *(a2 + 32);
    if (v4 == 1)
    {
      v5 = a1;
      outlined destroy of NavigationLinkPresentedValue(a1 + 8);
LABEL_8:
      a1 = v5;
      goto LABEL_9;
    }

    if (v3)
    {
      v5 = a1;
      v6 = a1 + 8;
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1(v6);
      }

      else
      {
        outlined destroy of AnyNavigationLinkPresentedValue(v6);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t getEnumTagSinglePayload for NavigationSelectionModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationSelectionModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for BaseModifier(uint64_t result, __int128 *a2)
{
  v3 = *(result + 24);
  v4 = *(a2 + 3);
  if (v3 != 1)
  {
    if (v4 == 1)
    {
      v7 = result;
      outlined destroy of NavigationLinkPresentedValue(result);
    }

    else
    {
      if (!v3)
      {
        if (!v4)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }

      v7 = result;
      if (v4)
      {
        __swift_assign_boxed_opaque_existential_1(result, a2);
LABEL_12:
        result = v7;
        goto LABEL_13;
      }

      outlined destroy of AnyNavigationLinkPresentedValue(result);
    }

    result = v7;
    v8 = *(a2 + 4);
    v9 = a2[1];
    *v7 = *a2;
    *(v7 + 16) = v9;
    *(v7 + 32) = v8;
    goto LABEL_13;
  }

  if (v4 > 1)
  {
LABEL_11:
    *(result + 24) = v4;
    *(result + 32) = *(a2 + 4);
    v7 = result;
    (**(v4 - 8))();
    goto LABEL_12;
  }

LABEL_3:
  v5 = *a2;
  v6 = a2[1];
  *(result + 32) = *(a2 + 4);
  *result = v5;
  *(result + 16) = v6;
LABEL_13:
  *(result + 40) = *(a2 + 40);
  return result;
}

__n128 assignWithTake for BaseModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3 != 1)
  {
    v4 = *(a2 + 24);
    if (v4 == 1)
    {
      v5 = a1;
      outlined destroy of NavigationLinkPresentedValue(a1);
LABEL_8:
      a1 = v5;
      goto LABEL_9;
    }

    if (v3)
    {
      v5 = a1;
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      else
      {
        outlined destroy of AnyNavigationLinkPresentedValue(a1);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  result = *a2;
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyNavigationLinkPresentedValueStorage<AnyHashable> and conformance AnyNavigationLinkPresentedValueStorage<A>()
{
  result = lazy protocol witness table cache variable for type AnyNavigationLinkPresentedValueStorage<AnyHashable> and conformance AnyNavigationLinkPresentedValueStorage<A>;
  if (!lazy protocol witness table cache variable for type AnyNavigationLinkPresentedValueStorage<AnyHashable> and conformance AnyNavigationLinkPresentedValueStorage<A>)
  {
    type metadata accessor for AnyNavigationLinkPresentedValueStorage<AnyHashable>(255, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValueStorage<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for AnyNavigationLinkPresentedValueStorage);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationLinkPresentedValueStorage<AnyHashable> and conformance AnyNavigationLinkPresentedValueStorage<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LegacyBaseModifier.Child and conformance LegacyBaseModifier.Child()
{
  result = lazy protocol witness table cache variable for type LegacyBaseModifier.Child and conformance LegacyBaseModifier.Child;
  if (!lazy protocol witness table cache variable for type LegacyBaseModifier.Child and conformance LegacyBaseModifier.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LegacyBaseModifier.Child and conformance LegacyBaseModifier.Child);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BaseModifier.Child(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

{
  if (a2 && *(a1 + 52))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BaseModifier.Child(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 52) = v3;
  return result;
}

uint64_t assignWithCopy for BaseModifier.SelectionObserver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t assignWithTake for BaseModifier.SelectionObserver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t _ArchivedViewStates.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v2 - 8);
  *a1 = 0;
  v3 = type metadata accessor for _ArchivedViewStates(0);
  *(a1 + v3[6]) = 0;
  v4 = v3[7];
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], MEMORY[0x1E697DAC0]);
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC8];
  *(a1 + v4) = v5;
  *(a1 + v3[8]) = 0;
  default argument 1 of ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  UUID.init()();
  default argument 6 of ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
  return ArchivedViewCore.Metadata.init(majorVersion:stateAttachments:stableIDAttachment:dataAttachment:archiveID:deploymentVersion:intelligenceContentAttachments:)();
}

uint64_t _ArchivedViewStates.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for DataArchiveReader();
  outlined copy of Data._Representation(a1, a2);
  v7 = DataArchiveReader.__allocating_init(data:)();
  if (!v3)
  {
    _ArchivedViewStates.init(reader:delegate:)(v7, 0, a3);
  }

  return outlined consume of Data._Representation(a1, a2);
}

void _ArchivedViewStates.init(contentsOf:)(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for FileArchiveReader();
  v5 = a1;
  v6 = FileArchiveReader.__allocating_init(file:)();
  if (!v2)
  {
    _ArchivedViewStates.init(reader:delegate:)(v6, 0, a2);
  }
}

uint64_t _ArchivedViewStates.init<A>(data:delegate:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v18[1] = a5;
  v19 = a6;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataArchiveReader();
  outlined copy of Data._Representation(a1, a2);
  v14 = DataArchiveReader.__allocating_init(data:)();
  if (!v6)
  {
    v15 = v14;
    type metadata accessor for _AnyArchivedViewDelegate();
    (*(v11 + 16))(v13, a3, a4);
    v16 = _AnyArchivedViewDelegate.__allocating_init(_:)(v13);
    _ArchivedViewStates.init(reader:delegate:)(v15, v16, v19);
  }

  (*(v11 + 8))(a3, a4);
  return outlined consume of Data._Representation(a1, a2);
}

char *_AnyArchivedViewDelegate.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + class metadata base offset for _AnyArchivedViewDelegate) - 8) + 32))(&v2[*(*v2 + class metadata base offset for _AnyArchivedViewDelegate + 16)], a1);
  return v2;
}

uint64_t _ArchivedViewStates.init<A>(contentsOf:delegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v19 = a4;
  v20 = a5;
  v21 = a2;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.isFileURL.getter())
  {
    type metadata accessor for FileArchiveReader();
    (*(v12 + 16))(v14, a1, v11);
    v15 = FileArchiveReader.__allocating_init(url:)();
    if (!v5)
    {
      v16 = v15;
      type metadata accessor for _AnyArchivedViewDelegate();
      (*(v8 + 16))(v10, v21, a3);
      v17 = _AnyArchivedViewDelegate.__allocating_init(_:)(v10);
      _ArchivedViewStates.init(reader:delegate:)(v16, v17, v20);
    }

    (*(v8 + 8))(v21, a3);
    return (*(v12 + 8))(a1, v11);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void _ArchivedViewStates.init<A>(contentsOf:delegate:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a4;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FileArchiveReader();
  v11 = a1;
  v12 = FileArchiveReader.__allocating_init(file:)();
  if (!v4)
  {
    v13 = v12;
    type metadata accessor for _AnyArchivedViewDelegate();
    (*(v8 + 16))(v10, a2, a3);
    v14 = _AnyArchivedViewDelegate.__allocating_init(_:)(v10);
    _ArchivedViewStates.init(reader:delegate:)(v13, v14, v16);
  }

  (*(v8 + 8))(a2, a3);
}

uint64_t _ArchivedViewStates.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for _ArchivedView?, type metadata accessor for _ArchivedView, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  _ArchivedViewStates.state(at:)(a1, &v9 - v5);
  v7 = type metadata accessor for _ArchivedView(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return outlined init with take of _ArchivedView(v6, a2, type metadata accessor for _ArchivedView);
}

__n128 _ArchivedView.init()@<Q0>(uint64_t a1@<X8>)
{
  DisplayList.init()();
  v2 = type metadata accessor for _ArchivedView(0);
  UUID.init()();
  v3 = v2[7];
  *(a1 + v3) = 0;
  *(a1 + v2[8]) = 0x40000000;
  v4 = a1 + v2[9];
  *v4 = xmmword_18CD77CA0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 28) = v8;
  *(a1 + 32) = 0;

  *(a1 + v3) = 0;
  outlined consume of Data?(*v4, *(v4 + 8));
  result = xmmword_18CD77CA0;
  *v4 = xmmword_18CD77CA0;
  return result;
}

uint64_t outlined destroy of _ArchivedView?(uint64_t a1)
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for _ArchivedView?, type metadata accessor for _ArchivedView, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 _ArchivedViewStates.State.init(from:)@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v14 = 0uLL;
  DisplayList.init()();
  v13 = 0uLL;
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = a1[1];
  if (v8 < a1[2])
  {
    while (1)
    {
      v9 = a1[3];
      if (!v9)
      {
        goto LABEL_6;
      }

      v10 = a1[4];
      if (v8 >= v10)
      {
        break;
      }

LABEL_8:
      if (v9 >> 3 == 2)
      {
        ProtobufDecoder.messageField<A>(_:)();
        if (v2)
        {
          goto LABEL_22;
        }

        v11 = v14.n128_u64[0];
        v6 = 0;
        v7 = 0 >> 96;

        v8 = a1[1];
        v5 = v14.n128_u64[0];
        if (v8 >= a1[2])
        {
          goto LABEL_24;
        }
      }

      else if (v9 >> 3 == 1)
      {
        type metadata accessor for CGSize(0);
        ProtobufDecoder.messageField<A>(_:)();
        if (v2)
        {
          goto LABEL_22;
        }

        v13 = v14;
        v8 = a1[1];
        if (v8 >= a1[2])
        {
LABEL_23:
          v11 = v5;
          goto LABEL_24;
        }
      }

      else
      {
        v14.n128_u64[0] = v9;
        ProtobufDecoder.skipField(_:)();
        if (v2)
        {
          goto LABEL_22;
        }

        v8 = a1[1];
        if (v8 >= a1[2])
        {
          goto LABEL_23;
        }
      }
    }

    if (v10 < v8)
    {
      goto LABEL_21;
    }

    a1[3] = 0;
LABEL_6:
    v9 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_22;
    }

    if (v9 <= 7)
    {
LABEL_21:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_22:

      return result;
    }

    goto LABEL_8;
  }

  v11 = v15;
LABEL_24:
  a1[3] = 0;
  result = v13;
  *a2 = v13;
  a2[1].n128_u64[0] = v11;
  a2[1].n128_u16[4] = v6;
  a2[1].n128_u32[3] = v7;
  return result;
}

uint64_t _ArchivedViewStates.attachment(at:)(uint64_t a1)
{
  if (*v1)
  {
    v8 = *v1;
    v9 = a1;
    if ((a1 & 0x8000000000000000) == 0)
    {

      if (ArchiveReader.endIndex.getter() > a1)
      {
        type metadata accessor for ArchiveReader();
        lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchiveReader and conformance ArchiveReader, MEMORY[0x1E697E0D0]);
        v3 = protocol witness for Collection.subscript.read in conformance ArchiveReader();
        v5 = *v4;
        outlined copy of Data._Representation(*v4, *(v4 + 8));
        v3(v7, 0);

        return v5;
      }
    }

    return 0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance _ArchivedViewStates@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v4 < *(*(v3 + *(a2 + 20) + 8) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _ArchivedViewStates(unint64_t *result, uint64_t a2)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*(v2 + *(a2 + 20) + 8) + 16))
  {
    *result = v3;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance _ArchivedViewStates(uint64_t *a1, unint64_t *a2))(uint64_t a1)
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for _ArchivedView?, type metadata accessor for _ArchivedView, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v5);
  }

  v8 = v7;
  *a1 = v7;
  v9 = type metadata accessor for _ArchivedView(0);
  v10 = *(v9 - 8);
  if (v6)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v9 - 8) + 64));
  }

  v12 = v11;
  a1[1] = v11;
  _ArchivedViewStates.state(at:)(*a2, v8);
  (*(v10 + 56))(v8, 0, 1, v9);
  outlined init with take of _ArchivedView(v8, v12, type metadata accessor for _ArchivedView);
  return protocol witness for Collection.subscript.read in conformance _ArchivedViewStates;
}

void protocol witness for Collection.subscript.read in conformance _ArchivedViewStates(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  outlined destroy of _ArchivedView(v1, type metadata accessor for _ArchivedView);
  free(v1);

  free(v2);
}

uint64_t *protocol witness for Collection.subscript.getter in conformance _ArchivedViewStates@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*result < 0 || (v6 = result[1], *(*(v3 + *(a2 + 20) + 8) + 16) < v6))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Slice<_ArchivedViewStates>(0);
    result = outlined init with copy of _ArchivedView(v3, a3 + *(v7 + 40), type metadata accessor for _ArchivedViewStates);
    *a3 = v4;
    a3[1] = v6;
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance _ArchivedViewStates@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(*(v2 + *(result + 20) + 8) + 16);
  *a2 = 0;
  a2[1] = v3;
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance _ArchivedViewStates@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v5 <= *(*(v4 + *(a3 + 20) + 8) + 16))
  {
    *a4 = v5;
    return result;
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.index(after:) in conformance _ArchivedViewStates@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*result >= *(*(v3 + *(a2 + 20) + 8) + 16))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance _ArchivedViewStates(void *result, uint64_t a2)
{
  if (*result >= *(*(v2 + *(a2 + 20) + 8) + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance _ArchivedViewStates(uint64_t a1@<X8>)
{
  outlined init with take of _ArchivedView(v1, a1, type metadata accessor for _ArchivedViewStates);
  type metadata accessor for IndexingIterator<_ArchivedViewStates>();
  *(a1 + *(v3 + 36)) = 0;
}

size_t protocol witness for Sequence._copyToContiguousArray() in conformance _ArchivedViewStates()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  outlined destroy of _ArchivedView(v0, type metadata accessor for _ArchivedViewStates);
  return v1;
}

uint64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _ArchivedViewStates.State()
{
  type metadata accessor for CGSize(0);
  result = ProtobufEncoder.messageField<A>(_:_:)();
  if (!v0)
  {
    return ProtobufEncoder.messageField<A>(_:_:)();
  }

  return result;
}

Swift::Int _ArchivedViewStates.DeploymentVersion.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance _ArchivedViewStates.DeploymentVersion@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _ArchivedViewStates.DeploymentVersion.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance _ArchivedViewStates.DeploymentVersion(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t _ArchivedViewStates.DeploymentVersion.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t static _ArchivedView.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for _ArchivedView(0);

  return static UUID.== infix(_:_:)();
}

uint64_t _ArchivedView.maxAnimationDuration.setter(double a1)
{
  v2 = a1;
  result = type metadata accessor for _ArchivedView(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

float (*_ArchivedView.maxAnimationDuration.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for _ArchivedView(0) + 32);
  *(a1 + 16) = v3;
  *a1 = *(v1 + v3);
  return _ArchivedView.maxAnimationDuration.modify;
}

float _ArchivedView.maxAnimationDuration.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + *(a1 + 16)) = result;
  return result;
}

uint64_t _AnyArchivedViewDelegate.resolveImage(uuid:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  (*(*(v3 + class metadata base offset for _AnyArchivedViewDelegate + 8) + 8))(a1, *(v3 + class metadata base offset for _AnyArchivedViewDelegate));
  return swift_endAccess();
}

uint64_t _AnyArchivedViewDelegate.__deallocating_deinit()
{
  (*(*(*(*v0 + class metadata base offset for _AnyArchivedViewDelegate) - 8) + 8))(&v0[*(*v0 + class metadata base offset for _AnyArchivedViewDelegate + 16)]);

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ArchivedViewState.ID()
{
  v1 = *(v0 + 20);
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ArchivedViewState.ID()
{
  v1 = *(v0 + 20);
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ArchivedViewState.ID()
{
  v1 = *(v0 + 20);
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t InterpolatableArchiveContent.Init.value.getter@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for _ArchivedView(0);
  v3 = *(AGGraphGetValue() + 32);
  Value = AGGraphGetValue();
  v5 = *(v2 + 24);
  v6 = type metadata accessor for InterpolatableArchiveContent(0);
  v7 = v6[5];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(&a1[v7], Value + v5, v8);
  v9 = *(AGGraphGetValue() + *(v2 + 28)) != 0;
  type metadata accessor for MutableBox<DisplayList.HostedViewState>(0, &lazy cache variable for type metadata for [ArchivedViewState], &type metadata for ArchivedViewState, MEMORY[0x1E69E62F8]);
  v10 = *AGGraphGetValue();
  *a1 = v3;
  a1[v6[6]] = v9;
  *&a1[v6[7]] = v10;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance InterpolatableArchiveContent.Init@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for InterpolatableArchiveContent(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t specialized getter of oldIDs #1 in InterpolatableArchiveContent.defaultAnimation(to:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {

    return v2;
  }

  v4 = *(a2 + *(type metadata accessor for InterpolatableArchiveContent(0) + 28));
  v5 = *(v4 + 16);
  v6 = lazy protocol witness table accessor for type ArchivedViewState.ID and conformance ArchivedViewState.ID();

  result = MEMORY[0x18D00D140](v5, &type metadata for ArchivedViewState.ID, v6);
  v12 = result;
  v8 = *(v4 + 16);
  if (!v8)
  {
    v2 = result;
LABEL_9:

    swift_beginAccess();
    *a1 = v2;

    return v2;
  }

  v9 = 0;
  v10 = (v4 + 48);
  while (v9 < *(v4 + 16))
  {
    ++v9;
    result = specialized Set._Variant.insert(_:)(v11, *(v10 - 2), *(v10 - 1), *v10);
    v10 += 4;
    if (v8 == v9)
    {
      v2 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static ArchivedDisplayList.scrapeContent(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ArchivedView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  AGGraphGetAttributeInfo();
  Value = AGGraphGetValue();
  outlined init with copy of _ArchivedView(Value, v4, type metadata accessor for _ArchivedView);
  v6 = &v4[*(v2 + 36)];
  v7 = v6[1];
  if (v7 >> 60 == 15)
  {
    result = outlined destroy of _ArchivedView(v4, type metadata accessor for _ArchivedView);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 1;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
  }

  else
  {
    v10 = *v6;
    v11 = v7;
    outlined copy of Data._Representation(v10, v7);
    closure #1 in static ArchivedDisplayList.scrapeContent(from:)(&v10);
    outlined destroy of _ArchivedView(v4, type metadata accessor for _ArchivedView);
    return outlined consume of Data._Representation(v10, v11);
  }

  return result;
}

uint64_t closure #1 in static ArchivedDisplayList.scrapeContent(from:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  outlined copy of Data._Representation(v1, v2);
  static ViewSize.zero.getter();
  ViewTransform.init()();
  return ScrapeableContent.Item.init(_:ids:_:position:size:transform:)();
}

uint64_t ArchivedAccessibilityAttachment.updateValue()()
{
  v1 = v0;
  v42 = *MEMORY[0x1E69E9840];
  if (*AGGraphGetValue() == 1)
  {
    if (*(v0 + 24) != *AGGraphGetValue() >> 1)
    {
      *(v0 + 24) = *AGGraphGetValue() >> 1;
      v2 = *(v0 + 32);
      DisplayList.AccessibilityUpdater.createRoot()();
      v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI11DisplayListV5IndexV2IDV_AeCE20AccessibilityUpdaterC10CacheValue33_F67A5B088801B75514018BB348F773CDLLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      swift_beginAccess();
      *(v2 + 48) = v3;
    }

    Value = AGGraphGetValue();
    v5 = *(Value + 8);
    v38 = *Value;
    v39 = v5;
    v6 = *(Value + 32);
    v40 = *(Value + 16);
    v41 = v6;
    type metadata accessor for CGPoint(0);

    v7 = AGGraphGetValue();
    ViewTransform.resetPosition(_:)(*v7);
    AGGraphGetValue();
    if (v8 & 1) != 0 || (AGGraphGetValue(), (v9))
    {
      v11 = 1;
    }

    else
    {
      AGGraphGetValue();
      v11 = v10 & 1;
    }

    v16 = *(v1 + 32);
    v17 = AGGraphGetValue();
    v18 = *(v17 + 8);
    v19 = *(v17 + 12);
    v31 = *v17;
    v32 = v18;
    v33 = v19;

    v20 = AGGraphGetValue();
    MEMORY[0x18D00B390](v20, v21, v22, v23, v24, v25);
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v37 = v41;

    v26 = specialized DisplayList.AccessibilityUpdater.update(list:size:transform:geometryChanged:)(&v31, &v34, v11);

    if ((v26 & 1) != 0 || !AGGraphGetOutputValue())
    {
      v27 = *(v16 + 40);
      if (v27)
      {
        type metadata accessor for MutableBox<DisplayList.HostedViewState>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_18CD69590;
        *(v28 + 32) = v27;
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      v29 = *(v16 + 56);
      v34 = v28;
      v35 = v29;
      v30 = v27;
      AGGraphSetOutputValue();
    }
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
    v39 = 0;
    AGGraphSetOutputValue();

    result = AGGraphGetValue();
    if (v13)
    {
      v14 = *(v0 + 32);
      DisplayList.AccessibilityUpdater.createRoot()();
      v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI11DisplayListV5IndexV2IDV_AeCE20AccessibilityUpdaterC10CacheValue33_F67A5B088801B75514018BB348F773CDLLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      swift_beginAccess();
      *(v14 + 48) = v15;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError()
{
  result = lazy protocol witness table cache variable for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError;
  if (!lazy protocol witness table cache variable for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ArchivedViewStates and conformance _ArchivedViewStates()
{
  return lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type _ArchivedViewStates and conformance _ArchivedViewStates, type metadata accessor for _ArchivedViewStates);
}

{
  return lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type _ArchivedViewStates and conformance _ArchivedViewStates, type metadata accessor for _ArchivedViewStates);
}

uint64_t lazy protocol witness table accessor for type Slice<_ArchivedViewStates> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<_ArchivedViewStates>(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Slice<_ArchivedViewStates>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for _ArchivedViewStates(255);
    v7 = lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type _ArchivedViewStates and conformance _ArchivedViewStates, type metadata accessor for _ArchivedViewStates);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ArchivedViewStates.DeploymentVersion and conformance _ArchivedViewStates.DeploymentVersion()
{
  result = lazy protocol witness table cache variable for type _ArchivedViewStates.DeploymentVersion and conformance _ArchivedViewStates.DeploymentVersion;
  if (!lazy protocol witness table cache variable for type _ArchivedViewStates.DeploymentVersion and conformance _ArchivedViewStates.DeploymentVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ArchivedViewStates.DeploymentVersion and conformance _ArchivedViewStates.DeploymentVersion);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for _ArchivedViewStates(void *a1, void *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = a3[5];
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = *(a2 + v6 + 8);
    *v7 = *(a2 + v6);
    *(v7 + 1) = v9;
    *(v7 + 2) = *(a2 + v6 + 16);
    v7[24] = *(a2 + v6 + 24);
    *(v7 + 4) = *(a2 + v6 + 32);
    v7[40] = *(a2 + v6 + 40);
    *(v7 + 6) = *(a2 + v6 + 48);
    v11 = type metadata accessor for ArchivedViewCore.Metadata();
    v12 = v11[9];
    v13 = type metadata accessor for UUID();
    v20 = *(*(v13 - 8) + 16);

    v20(&v7[v12], &v8[v12], v13);
    v7[v11[10]] = v8[v11[10]];
    v14 = v11[11];
    v15 = &v7[v14];
    v16 = &v8[v14];
    v17 = *(v16 + 1);
    *v15 = *v16;
    *(v15 + 1) = v17;
    v7[v11[12]] = v8[v11[12]];
    v18 = a3[7];
    *(v5 + a3[6]) = *(a2 + a3[6]);
    *(v5 + v18) = *(a2 + v18);
    *(v5 + a3[8]) = *(a2 + a3[8]);
  }

  return v5;
}

void *assignWithCopy for _ArchivedViewStates(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  *(v7 + 1) = *(a2 + v6 + 8);

  v9 = *(v8 + 2);
  v7[24] = v8[24];
  *(v7 + 2) = v9;
  LOBYTE(v9) = v8[40];
  *(v7 + 4) = *(v8 + 4);
  v7[40] = v9;
  *(v7 + 6) = *(v8 + 6);

  v10 = type metadata accessor for ArchivedViewCore.Metadata();
  v11 = v10[9];
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 24))(&v7[v11], &v8[v11], v12);
  v7[v10[10]] = v8[v10[10]];
  v13 = v10[11];
  v14 = &v7[v13];
  v15 = &v8[v13];
  *v14 = *v15;
  *(v14 + 1) = *(v15 + 1);

  v7[v10[12]] = v8[v10[12]];
  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

void *initializeWithTake for _ArchivedViewStates(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  v7[24] = *(a2 + v6 + 24);
  *(v7 + 2) = *(a2 + v6 + 16);
  v7[40] = *(a2 + v6 + 40);
  *(v7 + 4) = *(a2 + v6 + 32);
  *(v7 + 6) = *(a2 + v6 + 48);
  v9 = type metadata accessor for ArchivedViewCore.Metadata();
  v10 = v9[9];
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  v7[v9[10]] = v8[v9[10]];
  *&v7[v9[11]] = *&v8[v9[11]];
  v7[v9[12]] = v8[v9[12]];
  v12 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v12) = *(a2 + v12);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  return a1;
}

void *assignWithTake for _ArchivedViewStates(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 8);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;

  *(v7 + 2) = *(v8 + 2);
  v7[24] = v8[24];
  *(v7 + 4) = *(v8 + 4);
  v7[40] = v8[40];
  *(v7 + 6) = *(v8 + 6);

  v10 = type metadata accessor for ArchivedViewCore.Metadata();
  v11 = v10[9];
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 40))(&v7[v11], &v8[v11], v12);
  v7[v10[10]] = v8[v10[10]];
  v13 = v10[11];
  v14 = &v7[v13];
  v15 = &v8[v13];
  v17 = *v15;
  v16 = *(v15 + 1);
  *v14 = v17;
  *(v14 + 1) = v16;

  v7[v10[12]] = v8[v10[12]];
  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

char *initializeBufferWithCopyOfBuffer for _ArchivedView(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = a2[2];
    *(a1 + 24) = *(a2 + 12);
    *(a1 + 28) = *(a2 + 7);
    *(a1 + 32) = a2[4];
    v5 = a3[6];
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v5], a2 + v5, v8);
    v10 = a3[8];
    *&v3[a3[7]] = *(a2 + a3[7]);
    *&v3[v10] = *(a2 + v10);
    v11 = a3[9];
    v12 = &v3[v11];
    v13 = (a2 + v11);
    v14 = *(a2 + v11 + 8);

    if (v14 >> 60 == 15)
    {
      *v12 = *v13;
    }

    else
    {
      v16 = *v13;
      outlined copy of Data._Representation(v16, v14);
      *v12 = v16;
      *(v12 + 1) = v14;
    }
  }

  return v3;
}

uint64_t initializeWithTake for _ArchivedView(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = a3[6];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v9) = *(a2 + v9);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t assignWithTake for _ArchivedView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v6 = a3[6];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  v8 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = *(a1 + v8 + 8);
  if (v11 >> 60 != 15)
  {
    v12 = v10[1];
    if (v12 >> 60 != 15)
    {
      v13 = *v9;
      *v9 = *v10;
      v9[1] = v12;
      outlined consume of Data._Representation(v13, v11);
      return a1;
    }

    outlined destroy of Data(v9);
  }

  *v9 = *v10;
  return a1;
}

uint64_t type metadata completion function for _AnyArchivedViewDelegate()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _ArchivedViewStates.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);

  return a1;
}

uint64_t assignWithCopy for _ArchivedViewStates.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t assignWithTake for _ArchivedViewStates.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for InterpolatableArchiveContent(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a3[5];
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 16))(&v3[v5], &a2[v5], v8);
    v9 = a3[7];
    v3[a3[6]] = a2[a3[6]];
    *&v3[v9] = *&a2[v9];
  }

  return v3;
}

char *initializeWithTake for InterpolatableArchiveContent(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  *&a1[v8] = *&a2[v8];
  return a1;
}

char *assignWithTake for InterpolatableArchiveContent(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  *&a1[v8] = *&a2[v8];

  return a1;
}

uint64_t assignWithCopy for ArchivedViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for ArchivedViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for ArchivedDisplayList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for ArchivedDisplayList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

BOOL specialized static ArchivedViewState.ID.== infix(_:_:)(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0])
  {
    return a1[1].i32[1] == a2[1].i32[1];
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ArchivedViewStates.Error(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for _ArchivedViewStates.Error(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *initializeWithCopy for _ArchivedViewStates.Error(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *assignWithCopy for _ArchivedViewStates.Error(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *initializeWithTake for _ArchivedViewStates.Error(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *assignWithTake for _ArchivedViewStates.Error(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t getEnumTag for _ArchivedViewStates.Error(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t destructiveInjectEnumTag for _ArchivedViewStates.Error(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t type metadata completion function for _ArchivedViewStates.Error()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DialogActionContext(void *a1, void *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) == 0)
  {
    v5 = a3;
    v6 = a1;
    a1[1] = a2[1];
    v7 = a3[6];
    v8 = (a1 + v7);
    v9 = a2 + v7;
    v10 = type metadata accessor for DialogActionContext.CancelType(0);
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);

    if (v12(v9, 1, v10))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
      memcpy(v8, v9, *(*(v13 - 8) + 64));
      v14 = a2;
LABEL_123:
      v197 = v5[8];
      *(v6 + v5[7]) = *(v14 + v5[7]);
      *(v6 + v197) = *(v14 + v197);
      v198 = v5[9];
      v199 = *(v14 + v198);
      *(v6 + v198) = v199;

      v200 = v199;
      return v6;
    }

    v230 = v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v226 = v5;
      v15 = *v9;
      v16 = *(v9 + 1);
      *v8 = *v9;
      v8[1] = v16;
      v17 = *(v9 + 3);
      v8[2] = *(v9 + 2);
      v8[3] = v17;
      *(v8 + 32) = v9[32];
      v18 = *(v9 + 6);
      v8[5] = *(v9 + 5);
      v8[6] = v18;
      *(v8 + 56) = v9[56];
      v19 = *(v9 + 24);
      v20 = v15;
      v21 = v16;

      if (v19 >> 1 == 4294967294)
      {
        v22 = *(v9 + 13);
        *(v8 + 12) = *(v9 + 12);
        *(v8 + 13) = v22;
        *(v8 + 14) = *(v9 + 14);
        *(v8 + 235) = *(v9 + 235);
        v23 = *(v9 + 9);
        *(v8 + 8) = *(v9 + 8);
        *(v8 + 9) = v23;
        v24 = *(v9 + 11);
        *(v8 + 10) = *(v9 + 10);
        *(v8 + 11) = v24;
        v25 = *(v9 + 5);
        *(v8 + 4) = *(v9 + 4);
        *(v8 + 5) = v25;
        v26 = *(v9 + 7);
        *(v8 + 6) = *(v9 + 6);
        *(v8 + 7) = v26;
        v27 = *(v9 + 33);
        if (v27)
        {
LABEL_8:
          v8[32] = *(v9 + 32);
          v8[33] = v27;
          v28 = *(v9 + 34);

          if (v28 >= 2)
          {
            v29 = v28;
          }

          v8[34] = v28;
          *(v8 + 70) = *(v9 + 70);
          *(v8 + 284) = v9[284];
          *(v8 + 285) = *(v9 + 285);
          v30 = *(v9 + 37);
          v8[36] = *(v9 + 36);
          v8[37] = v30;

LABEL_23:
          v58 = *(v9 + 42);
          v228 = v6;
          v225 = v10;
          if (v58 >> 2 == 0xFFFFFFFF)
          {
            v59 = *(v9 + 24);
            *(v8 + 23) = *(v9 + 23);
            *(v8 + 24) = v59;
            v8[50] = *(v9 + 50);
            v60 = *(v9 + 20);
            *(v8 + 19) = *(v9 + 19);
            *(v8 + 20) = v60;
            v61 = *(v9 + 22);
            *(v8 + 21) = *(v9 + 21);
            *(v8 + 22) = v61;
          }

          else
          {
            v62 = *(v9 + 38);
            v63 = *(v9 + 39);
            v65 = *(v9 + 40);
            v64 = *(v9 + 41);
            v67 = *(v9 + 43);
            v66 = *(v9 + 44);
            v68 = *(v9 + 45);
            v204 = *(v9 + 46);
            v208 = *(v9 + 47);
            v213 = *(v9 + 48);
            v219 = *(v9 + 49);
            __dstb = *(v9 + 50);
            outlined copy of PlatformItemList.Item.SystemItem(v62, v63, v65, v64, v58, v67, v66, v68, v204, v208, v213, v219, __dstb);
            v8[38] = v62;
            v8[39] = v63;
            v8[40] = v65;
            v8[41] = v64;
            v8[42] = v58;
            v8[43] = v67;
            v8[44] = v66;
            v8[45] = v68;
            v8[46] = v204;
            v8[47] = v208;
            v8[48] = v213;
            v8[49] = v219;
            v8[50] = __dstb;
          }

          v69 = *(v9 + 52);
          if (v69 == 1)
          {
            v70 = *(v9 + 456);
            *(v8 + 55) = *(v9 + 440);
            *(v8 + 57) = v70;
            *(v8 + 472) = v9[472];
            v71 = *(v9 + 424);
            *(v8 + 51) = *(v9 + 408);
            *(v8 + 53) = v71;
            goto LABEL_38;
          }

          *(v8 + 102) = *(v9 + 102);
          *(v8 + 412) = v9[412];
          if (v69)
          {
            v72 = *(v9 + 53);
            v8[52] = v69;
            v8[53] = v72;

            v73 = *(v9 + 54);
            if (v73)
            {
              goto LABEL_30;
            }
          }

          else
          {
            *(v8 + 26) = *(v9 + 26);
            v73 = *(v9 + 54);
            if (v73)
            {
LABEL_30:
              v74 = *(v9 + 55);
              v8[54] = v73;
              v8[55] = v74;

              v75 = *(v9 + 56);
              if (v75)
              {
LABEL_31:
                v76 = *(v9 + 57);
                v8[56] = v75;
                v8[57] = v76;

LABEL_37:
                v8[58] = *(v9 + 58);
                *(v8 + 472) = v9[472];
LABEL_38:
                v79 = *(v9 + 61);
                v8[60] = *(v9 + 60);
                v8[61] = v79;
                v8[62] = *(v9 + 62);
                *(v8 + 504) = v9[504];
                v80 = *(v9 + 64);

                if (v80)
                {
                  v81 = *(v9 + 65);
                  v8[64] = v80;
                  v8[65] = v81;
                }

                else
                {
                  *(v8 + 32) = *(v9 + 32);
                }

                *(v8 + 528) = v9[528];
                if (!*(v9 + 102))
                {
                  memcpy(v8 + 67, v9 + 536, 0x130uLL);
                  goto LABEL_53;
                }

                v8[67] = *(v9 + 67);
                v8[68] = *(v9 + 68);
                *(v8 + 552) = v9[552];
                v8[70] = *(v9 + 70);
                *(v8 + 568) = v9[568];
                *(v8 + 36) = *(v9 + 36);
                *(v8 + 592) = v9[592];
                v82 = v8 + 75;
                v83 = v9 + 600;
                v84 = *(v9 + 78);

                if (v84)
                {
                  if (v84 == 1)
                  {
                    v85 = *(v9 + 616);
                    *v82 = *v83;
                    *(v8 + 77) = v85;
                    *(v8 + 79) = *(v9 + 632);
LABEL_49:
                    v8[81] = *(v9 + 81);
                    *(v8 + 656) = v9[656];
                    v87 = v8 + 83;
                    v88 = v9 + 664;
                    v89 = *(v9 + 97);
                    if (v89 == 1)
                    {
                      v90 = *(v9 + 776);
                      *(v8 + 95) = *(v9 + 760);
                      *(v8 + 97) = v90;
                      *(v8 + 99) = *(v9 + 792);
                      *(v8 + 808) = v9[808];
                      v91 = *(v9 + 712);
                      *(v8 + 87) = *(v9 + 696);
                      *(v8 + 89) = v91;
                      v92 = *(v9 + 744);
                      *(v8 + 91) = *(v9 + 728);
                      *(v8 + 93) = v92;
                      v93 = *(v9 + 680);
                      *v87 = *v88;
                      *(v8 + 85) = v93;
                    }

                    else
                    {
                      *v87 = *v88;
                      *(v8 + 672) = v9[672];
                      v8[85] = *(v9 + 85);
                      *(v8 + 688) = v9[688];
                      *(v8 + 689) = *(v9 + 689);
                      *(v8 + 691) = v9[691];
                      *(v8 + 692) = v9[692];
                      v8[87] = *(v9 + 87);
                      v94 = *(v9 + 45);
                      *(v8 + 44) = *(v9 + 44);
                      *(v8 + 45) = v94;
                      v8[92] = *(v9 + 92);
                      *(v8 + 372) = *(v9 + 372);
                      *(v8 + 47) = *(v9 + 47);
                      *(v8 + 768) = v9[768];
                      v8[97] = v89;
                      *(v8 + 49) = *(v9 + 49);
                      v8[100] = *(v9 + 100);
                      *(v8 + 808) = v9[808];
                    }

                    v8[102] = *(v9 + 102);
                    v8[103] = *(v9 + 103);
                    v8[104] = *(v9 + 104);

LABEL_53:
                    v95 = v8 + 105;
                    v96 = v9 + 840;
                    v97 = *(v9 + 108);
                    if (v97)
                    {
                      if (v97 == 1)
                      {
                        v98 = *(v9 + 856);
                        *v95 = *v96;
                        *(v8 + 107) = v98;
                        *(v8 + 109) = *(v9 + 872);
                        v8[111] = *(v9 + 111);
LABEL_60:
                        v102 = *(v9 + 112);
                        v8[112] = v102;
                        v8[113] = *(v9 + 113);
                        v8[114] = *(v9 + 114);
                        v8[115] = *(v9 + 115);
                        v8[116] = *(v9 + 116);
                        v8[117] = *(v9 + 117);
                        v8[118] = *(v9 + 118);
                        *(v8 + 476) = *(v9 + 476);
                        *(v8 + 954) = v9[954];
                        v103 = type metadata accessor for PlatformItemList.Item();
                        v104 = v103[28];
                        __dst = v8 + v104;
                        v105 = &v9[v104];
                        v106 = type metadata accessor for CommandOperation();
                        v209 = *(v106 - 8);
                        v214 = *(v209 + 48);
                        v107 = v102;

                        if (v214(v105, 1, v106))
                        {
                          _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                          memcpy(__dst, v105, *(*(v108 - 8) + 64));
                          v6 = v228;
                          v34 = v230;
                          v14 = a2;
                          v10 = v225;
                          v5 = v226;
                        }

                        else
                        {
                          *__dst = *v105;
                          v109 = *(v106 + 20);
                          v110 = v105;
                          v205 = v105;
                          v111 = &__dst[v109];
                          v220 = v106;
                          v112 = &v110[v109];
                          v113 = *&v110[v109];
                          v114 = *&v110[v109 + 8];
                          v115 = v110[v109 + 16];
                          outlined copy of Text.Storage(v113, v114, v115);
                          *v111 = v113;
                          *(v111 + 1) = v114;
                          v111[16] = v115;
                          *(v111 + 3) = *(v112 + 3);
                          v116 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v117 = type metadata accessor for UUID();
                          v215 = *(*(v117 - 8) + 16);

                          v215(&v111[v116], &v112[v116], v117);
                          v118 = *(v220 + 24);
                          v119 = &__dst[v118];
                          v120 = &v205[v118];
                          if (*v120)
                          {
                            v121 = *(v120 + 1);
                            *v119 = *v120;
                            *(v119 + 1) = v121;
                          }

                          else
                          {
                            *v119 = *v120;
                          }

                          v6 = v228;
                          v34 = v230;
                          v14 = a2;
                          v10 = v225;
                          v5 = v226;
                          (*(v209 + 56))(__dst, 0, 1, v220);
                        }

                        *(v8 + v103[29]) = v9[v103[29]];
                        *(v8 + v103[30]) = v9[v103[30]];
                        *(v8 + v103[31]) = v9[v103[31]];
                        *(v8 + v103[32]) = v9[v103[32]];
                        *(v8 + v103[33]) = v9[v103[33]];
                        *(v8 + v103[34]) = *&v9[v103[34]];

                        goto LABEL_122;
                      }

                      v8[108] = v97;
                      v8[109] = *(v9 + 109);
                      (**(v97 - 8))(v95, v96);
                      v100 = *(v9 + 110);
                      if (!v100)
                      {
LABEL_59:
                        *(v8 + 55) = *(v9 + 55);
                        goto LABEL_60;
                      }
                    }

                    else
                    {
                      v99 = *(v9 + 856);
                      *v95 = *v96;
                      *(v8 + 107) = v99;
                      v8[109] = *(v9 + 109);
                      v100 = *(v9 + 110);
                      if (!v100)
                      {
                        goto LABEL_59;
                      }
                    }

                    v101 = *(v9 + 111);
                    v8[110] = v100;
                    v8[111] = v101;

                    goto LABEL_60;
                  }

                  v8[78] = v84;
                  v8[79] = *(v9 + 79);
                  (**(v84 - 8))((v8 + 75), (v9 + 600), v84);
                }

                else
                {
                  v86 = *(v9 + 616);
                  *v82 = *v83;
                  *(v8 + 77) = v86;
                  v8[79] = *(v9 + 79);
                }

                v8[80] = *(v9 + 80);

                goto LABEL_49;
              }

LABEL_36:
              *(v8 + 28) = *(v9 + 28);
              goto LABEL_37;
            }
          }

          *(v8 + 27) = *(v9 + 27);
          v75 = *(v9 + 56);
          if (v75)
          {
            goto LABEL_31;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v35 = v9[72];
        if (v35 == 255)
        {
          v8[8] = *(v9 + 8);
          *(v8 + 72) = v9[72];
        }

        else
        {
          v36 = *(v9 + 8);
          outlined copy of GraphicsImage.Contents(v36, v9[72]);
          v8[8] = v36;
          *(v8 + 72) = v35;
          v19 = *(v9 + 24);
        }

        v8[10] = *(v9 + 10);
        *(v8 + 11) = *(v9 + 88);
        *(v8 + 104) = v9[104];
        *(v8 + 108) = *(v9 + 108);
        *(v8 + 121) = *(v9 + 121);
        *(v8 + 17) = *(v9 + 136);
        *(v8 + 19) = *(v9 + 152);
        *(v8 + 84) = *(v9 + 84);
        *(v8 + 170) = v9[170];
        *(v8 + 171) = v9[171];
        if (v19 >> 1 == 0xFFFFFFFF)
        {
          v49 = *(v9 + 12);
          *(v8 + 11) = *(v9 + 11);
          *(v8 + 12) = v49;
        }

        else
        {
          v50 = *(v9 + 22);
          v51 = *(v9 + 23);
          v52 = v10;
          v53 = *(v9 + 25);
          outlined copy of AccessibilityImageLabel(v50, v51, v19);
          v8[22] = v50;
          v8[23] = v51;
          v8[24] = v19;
          v8[25] = v53;
          v10 = v52;
        }

        v54 = *(v9 + 27);
        v8[26] = *(v9 + 26);
        v8[27] = v54;
        *(v8 + 112) = *(v9 + 112);
        *(v8 + 57) = *(v9 + 57);
        *(v8 + 232) = v9[232];
        v55 = *(v9 + 30);
        v8[30] = v55;
        *(v8 + 124) = *(v9 + 124);
        *(v8 + 250) = v9[250];
        swift_unknownObjectRetain();

        v56 = v55;
        v27 = *(v9 + 33);
        if (v27)
        {
          goto LABEL_8;
        }
      }

      v57 = *(v9 + 17);
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 17) = v57;
      *(v8 + 18) = *(v9 + 18);
      goto LABEL_23;
    }

    v31 = type metadata accessor for PlatformItemList.Item();
    v32 = *(v31 - 8);
    v14 = a2;
    if ((*(v32 + 48))(v9, 1, v31))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v8, v9, *(*(v33 - 8) + 64));
      v34 = v230;
LABEL_122:
      swift_storeEnumTagMultiPayload();
      (*(v34 + 56))(v8, 0, 1, v10);
      goto LABEL_123;
    }

    v218 = v32;
    v224 = v10;
    v227 = v5;
    v37 = *v9;
    v38 = *(v9 + 1);
    *v8 = *v9;
    v8[1] = v38;
    v39 = *(v9 + 3);
    v8[2] = *(v9 + 2);
    v8[3] = v39;
    *(v8 + 32) = v9[32];
    v40 = *(v9 + 6);
    v8[5] = *(v9 + 5);
    v8[6] = v40;
    *(v8 + 56) = v9[56];
    v41 = *(v9 + 24);
    v42 = v37;
    v43 = v38;

    if (v41 >> 1 == 4294967294)
    {
      v44 = *(v9 + 13);
      *(v8 + 12) = *(v9 + 12);
      *(v8 + 13) = v44;
      *(v8 + 14) = *(v9 + 14);
      *(v8 + 235) = *(v9 + 235);
      v45 = *(v9 + 9);
      *(v8 + 8) = *(v9 + 8);
      *(v8 + 9) = v45;
      v46 = *(v9 + 11);
      *(v8 + 10) = *(v9 + 10);
      *(v8 + 11) = v46;
      v47 = *(v9 + 5);
      *(v8 + 4) = *(v9 + 4);
      *(v8 + 5) = v47;
      v48 = *(v9 + 7);
      *(v8 + 6) = *(v9 + 6);
      *(v8 + 7) = v48;
    }

    else
    {
      v77 = v9[72];
      if (v77 == 255)
      {
        v8[8] = *(v9 + 8);
        *(v8 + 72) = v9[72];
      }

      else
      {
        v78 = *(v9 + 8);
        outlined copy of GraphicsImage.Contents(v78, v9[72]);
        v8[8] = v78;
        *(v8 + 72) = v77;
        v41 = *(v9 + 24);
      }

      v8[10] = *(v9 + 10);
      *(v8 + 11) = *(v9 + 88);
      *(v8 + 104) = v9[104];
      *(v8 + 108) = *(v9 + 108);
      *(v8 + 121) = *(v9 + 121);
      *(v8 + 17) = *(v9 + 136);
      *(v8 + 19) = *(v9 + 152);
      *(v8 + 84) = *(v9 + 84);
      *(v8 + 170) = v9[170];
      *(v8 + 171) = v9[171];
      if (v41 >> 1 == 0xFFFFFFFF)
      {
        v122 = *(v9 + 12);
        *(v8 + 11) = *(v9 + 11);
        *(v8 + 12) = v122;
      }

      else
      {
        v123 = *(v9 + 22);
        v124 = *(v9 + 23);
        v125 = *(v9 + 25);
        outlined copy of AccessibilityImageLabel(v123, v124, v41);
        v8[22] = v123;
        v8[23] = v124;
        v8[24] = v41;
        v8[25] = v125;
      }

      v126 = *(v9 + 27);
      v8[26] = *(v9 + 26);
      v8[27] = v126;
      *(v8 + 112) = *(v9 + 112);
      *(v8 + 57) = *(v9 + 57);
      *(v8 + 232) = v9[232];
      v127 = *(v9 + 30);
      v8[30] = v127;
      *(v8 + 124) = *(v9 + 124);
      *(v8 + 250) = v9[250];
      swift_unknownObjectRetain();

      v128 = v127;
    }

    v129 = *(v9 + 33);
    if (v129)
    {
      v8[32] = *(v9 + 32);
      v8[33] = v129;
      v130 = *(v9 + 34);

      if (v130 >= 2)
      {
        v131 = v130;
      }

      v8[34] = v130;
      *(v8 + 70) = *(v9 + 70);
      *(v8 + 284) = v9[284];
      *(v8 + 285) = *(v9 + 285);
      v132 = *(v9 + 37);
      v8[36] = *(v9 + 36);
      v8[37] = v132;
    }

    else
    {
      v133 = *(v9 + 17);
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 17) = v133;
      *(v8 + 18) = *(v9 + 18);
    }

    __dsta = v31;
    v134 = *(v9 + 42);
    v229 = v6;
    if (v134 >> 2 == 0xFFFFFFFF)
    {
      v135 = *(v9 + 24);
      *(v8 + 23) = *(v9 + 23);
      *(v8 + 24) = v135;
      v8[50] = *(v9 + 50);
      v136 = *(v9 + 20);
      *(v8 + 19) = *(v9 + 19);
      *(v8 + 20) = v136;
      v137 = *(v9 + 22);
      *(v8 + 21) = *(v9 + 21);
      *(v8 + 22) = v137;
    }

    else
    {
      v138 = *(v9 + 38);
      v139 = *(v9 + 39);
      v141 = *(v9 + 40);
      v140 = *(v9 + 41);
      v142 = *(v9 + 43);
      v143 = *(v9 + 44);
      v144 = *(v9 + 45);
      v202 = *(v9 + 46);
      v203 = *(v9 + 47);
      v206 = *(v9 + 48);
      v210 = *(v9 + 49);
      v216 = *(v9 + 50);
      outlined copy of PlatformItemList.Item.SystemItem(v138, v139, v141, v140, v134, v142, v143, v144, v202, v203, v206, v210, v216);
      v8[38] = v138;
      v8[39] = v139;
      v8[40] = v141;
      v8[41] = v140;
      v8[42] = v134;
      v8[43] = v142;
      v8[44] = v143;
      v8[45] = v144;
      v8[46] = v202;
      v8[47] = v203;
      v8[48] = v206;
      v8[49] = v210;
      v8[50] = v216;
    }

    v145 = *(v9 + 52);
    if (v145 == 1)
    {
      v146 = *(v9 + 456);
      *(v8 + 55) = *(v9 + 440);
      *(v8 + 57) = v146;
      *(v8 + 472) = v9[472];
      v147 = *(v9 + 424);
      *(v8 + 51) = *(v9 + 408);
      *(v8 + 53) = v147;
    }

    else
    {
      *(v8 + 102) = *(v9 + 102);
      *(v8 + 412) = v9[412];
      if (v145)
      {
        v148 = *(v9 + 53);
        v8[52] = v145;
        v8[53] = v148;
      }

      else
      {
        *(v8 + 26) = *(v9 + 26);
      }

      v149 = *(v9 + 54);
      if (v149)
      {
        v150 = *(v9 + 55);
        v8[54] = v149;
        v8[55] = v150;
      }

      else
      {
        *(v8 + 27) = *(v9 + 27);
      }

      v151 = *(v9 + 56);
      if (v151)
      {
        v152 = *(v9 + 57);
        v8[56] = v151;
        v8[57] = v152;
      }

      else
      {
        *(v8 + 28) = *(v9 + 28);
      }

      v8[58] = *(v9 + 58);
      *(v8 + 472) = v9[472];
    }

    v153 = *(v9 + 61);
    v8[60] = *(v9 + 60);
    v8[61] = v153;
    v8[62] = *(v9 + 62);
    *(v8 + 504) = v9[504];
    v154 = *(v9 + 64);

    if (v154)
    {
      v155 = *(v9 + 65);
      v8[64] = v154;
      v8[65] = v155;
    }

    else
    {
      *(v8 + 32) = *(v9 + 32);
    }

    *(v8 + 528) = v9[528];
    if (!*(v9 + 102))
    {
      memcpy(v8 + 67, v9 + 536, 0x130uLL);
      goto LABEL_107;
    }

    v8[67] = *(v9 + 67);
    v8[68] = *(v9 + 68);
    *(v8 + 552) = v9[552];
    v8[70] = *(v9 + 70);
    *(v8 + 568) = v9[568];
    *(v8 + 36) = *(v9 + 36);
    *(v8 + 592) = v9[592];
    v156 = v8 + 75;
    v157 = v9 + 600;
    v158 = *(v9 + 78);

    if (v158)
    {
      if (v158 == 1)
      {
        v159 = *(v9 + 616);
        *v156 = *v157;
        *(v8 + 77) = v159;
        *(v8 + 79) = *(v9 + 632);
LABEL_103:
        v8[81] = *(v9 + 81);
        *(v8 + 656) = v9[656];
        v161 = v8 + 83;
        v162 = v9 + 664;
        v163 = *(v9 + 97);
        if (v163 == 1)
        {
          v164 = *(v9 + 776);
          *(v8 + 95) = *(v9 + 760);
          *(v8 + 97) = v164;
          *(v8 + 99) = *(v9 + 792);
          *(v8 + 808) = v9[808];
          v165 = *(v9 + 712);
          *(v8 + 87) = *(v9 + 696);
          *(v8 + 89) = v165;
          v166 = *(v9 + 744);
          *(v8 + 91) = *(v9 + 728);
          *(v8 + 93) = v166;
          v167 = *(v9 + 680);
          *v161 = *v162;
          *(v8 + 85) = v167;
        }

        else
        {
          *v161 = *v162;
          *(v8 + 672) = v9[672];
          v8[85] = *(v9 + 85);
          *(v8 + 688) = v9[688];
          *(v8 + 689) = *(v9 + 689);
          *(v8 + 691) = v9[691];
          *(v8 + 692) = v9[692];
          v8[87] = *(v9 + 87);
          v168 = *(v9 + 45);
          *(v8 + 44) = *(v9 + 44);
          *(v8 + 45) = v168;
          v8[92] = *(v9 + 92);
          *(v8 + 372) = *(v9 + 372);
          *(v8 + 47) = *(v9 + 47);
          *(v8 + 768) = v9[768];
          v8[97] = v163;
          *(v8 + 49) = *(v9 + 49);
          v8[100] = *(v9 + 100);
          *(v8 + 808) = v9[808];
        }

        v8[102] = *(v9 + 102);
        v8[103] = *(v9 + 103);
        v8[104] = *(v9 + 104);

LABEL_107:
        v169 = v8 + 105;
        v170 = v9 + 840;
        v171 = *(v9 + 108);
        if (v171)
        {
          if (v171 == 1)
          {
            v172 = *(v9 + 856);
            *v169 = *v170;
            *(v8 + 107) = v172;
            *(v8 + 109) = *(v9 + 872);
            v8[111] = *(v9 + 111);
LABEL_115:
            v176 = *(v9 + 112);
            v8[112] = v176;
            v8[113] = *(v9 + 113);
            v8[114] = *(v9 + 114);
            v8[115] = *(v9 + 115);
            v8[116] = *(v9 + 116);
            v8[117] = *(v9 + 117);
            v8[118] = *(v9 + 118);
            *(v8 + 476) = *(v9 + 476);
            *(v8 + 954) = v9[954];
            v177 = __dsta[28];
            v217 = v8 + v177;
            v178 = &v9[v177];
            v179 = type metadata accessor for CommandOperation();
            v207 = *(v179 - 8);
            v211 = *(v207 + 48);
            v180 = v176;

            if (v211(v178, 1, v179))
            {
              _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
              memcpy(v217, v178, *(*(v181 - 8) + 64));
              v6 = v229;
              v34 = v230;
              v14 = a2;
              v10 = v224;
              v5 = v227;
              v182 = v218;
            }

            else
            {
              *v217 = *v178;
              v183 = *(v179 + 20);
              v184 = &v217[v183];
              v185 = &v178[v183];
              v212 = v179;
              v186 = *&v178[v183];
              v187 = *&v178[v183 + 8];
              v188 = v178[v183 + 16];
              outlined copy of Text.Storage(*v185, *(v185 + 1), v185[16]);
              *v184 = v186;
              *(v184 + 1) = v187;
              v184[16] = v188;
              *(v184 + 3) = *(v185 + 3);
              v189 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v190 = type metadata accessor for UUID();
              v191 = *(*(v190 - 8) + 16);

              v191(&v184[v189], &v185[v189], v190);
              v192 = *(v212 + 24);
              v193 = &v217[v192];
              v194 = &v178[v192];
              if (*v194)
              {
                v195 = *(v194 + 1);
                *v193 = *v194;
                *(v193 + 1) = v195;
              }

              else
              {
                *v193 = *v194;
              }

              v6 = v229;
              v34 = v230;
              v10 = v224;
              v5 = v227;
              v182 = v218;
              (*(v207 + 56))(v217, 0, 1, v212);
              v14 = a2;
            }

            *(v8 + __dsta[29]) = v9[__dsta[29]];
            *(v8 + __dsta[30]) = v9[__dsta[30]];
            *(v8 + __dsta[31]) = v9[__dsta[31]];
            *(v8 + __dsta[32]) = v9[__dsta[32]];
            *(v8 + __dsta[33]) = v9[__dsta[33]];
            *(v8 + __dsta[34]) = *&v9[__dsta[34]];
            v196 = *(v182 + 56);

            v196(v8, 0, 1, __dsta);
            goto LABEL_122;
          }

          v8[108] = v171;
          v8[109] = *(v9 + 109);
          (**(v171 - 8))(v169, v170);
        }

        else
        {
          v173 = *(v9 + 856);
          *v169 = *v170;
          *(v8 + 107) = v173;
          v8[109] = *(v9 + 109);
        }

        v174 = *(v9 + 110);
        if (v174)
        {
          v175 = *(v9 + 111);
          v8[110] = v174;
          v8[111] = v175;
        }

        else
        {
          *(v8 + 55) = *(v9 + 55);
        }

        goto LABEL_115;
      }

      v8[78] = v158;
      v8[79] = *(v9 + 79);
      (**(v158 - 8))((v8 + 75), (v9 + 600), v158);
    }

    else
    {
      v160 = *(v9 + 616);
      *v156 = *v157;
      *(v8 + 77) = v160;
      v8[79] = *(v9 + 79);
    }

    v8[80] = *(v9 + 80);

    goto LABEL_103;
  }

  v6 = (v4 + ((v3 + 16) & ~v3));

  return v6;
}

void destroy for DialogActionContext(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 24);
  v5 = type metadata accessor for DialogActionContext.CancelType(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    goto LABEL_78;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v6 = *(v4 + 192);
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v8 = *(v4 + 72);
      if (v8 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v4 + 64), v8);
        v6 = *(v4 + 192);
        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v7 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v4 + 176), *(v4 + 184), v6);
      }

      swift_unknownObjectRelease();
    }

    if (*(v4 + 264))
    {

      v9 = *(v4 + 272);
      if (v9 >= 2)
      {
      }
    }

    v10 = *(v4 + 336);
    if (v10 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v4 + 304), *(v4 + 312), *(v4 + 320), *(v4 + 328), v10, *(v4 + 344), *(v4 + 352), *(v4 + 360), *(v4 + 368), *(v4 + 376), *(v4 + 384), *(v4 + 392), *(v4 + 400));
    }

    v11 = *(v4 + 416);
    if (v11)
    {
      if (v11 == 1)
      {
        goto LABEL_22;
      }
    }

    if (*(v4 + 432))
    {
    }

    if (*(v4 + 448))
    {
    }

LABEL_22:

    if (*(v4 + 512))
    {
    }

    if (!*(v4 + 816))
    {
LABEL_32:
      v13 = *(v4 + 864);
      if (v13)
      {
        if (v13 == 1)
        {
LABEL_37:

          v14 = *(type metadata accessor for PlatformItemList.Item() + 112);
          goto LABEL_74;
        }

        __swift_destroy_boxed_opaque_existential_1(v4 + 840);
      }

      if (*(v4 + 880))
      {
      }

      goto LABEL_37;
    }

    v12 = *(v4 + 624);
    if (v12)
    {
      if (v12 == 1)
      {
LABEL_29:
        if (*(v4 + 776) != 1)
        {
        }

        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 600);
    }

    goto LABEL_29;
  }

  v15 = type metadata accessor for PlatformItemList.Item();
  if ((*(*(v15 - 8) + 48))(v4, 1, v15))
  {
    goto LABEL_78;
  }

  v16 = *(v4 + 192);
  v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
  if ((v16 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v18 = *(v4 + 72);
    if (v18 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(v4 + 64), v18);
      v16 = *(v4 + 192);
      v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v17 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(v4 + 176), *(v4 + 184), v16);
    }

    swift_unknownObjectRelease();
  }

  if (*(v4 + 264))
  {

    v19 = *(v4 + 272);
    if (v19 >= 2)
    {
    }
  }

  v20 = *(v4 + 336);
  if (v20 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(v4 + 304), *(v4 + 312), *(v4 + 320), *(v4 + 328), v20, *(v4 + 344), *(v4 + 352), *(v4 + 360), *(v4 + 368), *(v4 + 376), *(v4 + 384), *(v4 + 392), *(v4 + 400));
  }

  v21 = *(v4 + 416);
  if (v21)
  {
    if (v21 == 1)
    {
      goto LABEL_58;
    }
  }

  if (*(v4 + 432))
  {
  }

  if (*(v4 + 448))
  {
  }

LABEL_58:

  if (*(v4 + 512))
  {
  }

  if (*(v4 + 816))
  {

    v22 = *(v4 + 624);
    if (v22)
    {
      if (v22 == 1)
      {
LABEL_65:
        if (*(v4 + 776) != 1)
        {
        }

        goto LABEL_68;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 600);
    }

    goto LABEL_65;
  }

LABEL_68:
  v23 = *(v4 + 864);
  if (!v23)
  {
    goto LABEL_71;
  }

  if (v23 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 840);
LABEL_71:
    if (*(v4 + 880))
    {
    }
  }

  v14 = *(v15 + 112);
LABEL_74:
  v24 = v4 + v14;
  v25 = type metadata accessor for CommandOperation();
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v26 = v24 + *(v25 + 20);
    outlined consume of Text.Storage(*v26, *(v26 + 8), *(v26 + 16));

    v27 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 8))(v26 + v27, v28);
    if (*(v24 + *(v25 + 24)))
    {
    }
  }

LABEL_78:

  v29 = *(a1 + *(a2 + 36));
}

void *initializeWithCopy for DialogActionContext(void *a1, void *a2, int *a3)
{
  v3 = a3;
  v4 = a1;
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a3[6];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for DialogActionContext.CancelType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  if (!v11(v8, 1, v9))
  {
    v229 = v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v225 = v3;
      v14 = *v8;
      v15 = *(v8 + 1);
      *v7 = *v8;
      *(v7 + 1) = v15;
      v16 = *(v8 + 3);
      *(v7 + 2) = *(v8 + 2);
      *(v7 + 3) = v16;
      v7[32] = v8[32];
      v17 = *(v8 + 6);
      *(v7 + 5) = *(v8 + 5);
      *(v7 + 6) = v17;
      v7[56] = v8[56];
      v18 = *(v8 + 24);
      v19 = v14;
      v20 = v15;

      if (v18 >> 1 == 4294967294)
      {
        v21 = *(v8 + 13);
        *(v7 + 12) = *(v8 + 12);
        *(v7 + 13) = v21;
        *(v7 + 14) = *(v8 + 14);
        *(v7 + 235) = *(v8 + 235);
        v22 = *(v8 + 9);
        *(v7 + 8) = *(v8 + 8);
        *(v7 + 9) = v22;
        v23 = *(v8 + 11);
        *(v7 + 10) = *(v8 + 10);
        *(v7 + 11) = v23;
        v24 = *(v8 + 5);
        *(v7 + 4) = *(v8 + 4);
        *(v7 + 5) = v24;
        v25 = *(v8 + 7);
        *(v7 + 6) = *(v8 + 6);
        *(v7 + 7) = v25;
        v26 = *(v8 + 33);
        if (v26)
        {
LABEL_6:
          *(v7 + 32) = *(v8 + 32);
          *(v7 + 33) = v26;
          v27 = *(v8 + 34);

          if (v27 >= 2)
          {
            v28 = v27;
          }

          *(v7 + 34) = v27;
          *(v7 + 70) = *(v8 + 70);
          v7[284] = v8[284];
          *(v7 + 285) = *(v8 + 285);
          v29 = *(v8 + 37);
          *(v7 + 36) = *(v8 + 36);
          *(v7 + 37) = v29;

LABEL_24:
          v61 = *(v8 + 42);
          v227 = v4;
          v224 = v9;
          if (v61 >> 2 == 0xFFFFFFFF)
          {
            v62 = *(v8 + 24);
            *(v7 + 23) = *(v8 + 23);
            *(v7 + 24) = v62;
            *(v7 + 50) = *(v8 + 50);
            v63 = *(v8 + 20);
            *(v7 + 19) = *(v8 + 19);
            *(v7 + 20) = v63;
            v64 = *(v8 + 22);
            *(v7 + 21) = *(v8 + 21);
            *(v7 + 22) = v64;
          }

          else
          {
            v65 = *(v8 + 38);
            v66 = *(v8 + 39);
            v68 = *(v8 + 40);
            v67 = *(v8 + 41);
            v70 = *(v8 + 43);
            v69 = *(v8 + 44);
            v71 = *(v8 + 45);
            v203 = *(v8 + 46);
            v207 = *(v8 + 47);
            v212 = *(v8 + 48);
            v218 = *(v8 + 49);
            __dstb = *(v8 + 50);
            outlined copy of PlatformItemList.Item.SystemItem(v65, v66, v68, v67, v61, v70, v69, v71, v203, v207, v212, v218, __dstb);
            *(v7 + 38) = v65;
            *(v7 + 39) = v66;
            *(v7 + 40) = v68;
            *(v7 + 41) = v67;
            *(v7 + 42) = v61;
            *(v7 + 43) = v70;
            *(v7 + 44) = v69;
            *(v7 + 45) = v71;
            *(v7 + 46) = v203;
            *(v7 + 47) = v207;
            *(v7 + 48) = v212;
            *(v7 + 49) = v218;
            *(v7 + 50) = __dstb;
          }

          v72 = *(v8 + 52);
          if (v72 == 1)
          {
            v73 = *(v8 + 456);
            *(v7 + 440) = *(v8 + 440);
            *(v7 + 456) = v73;
            v7[472] = v8[472];
            v74 = *(v8 + 424);
            *(v7 + 408) = *(v8 + 408);
            *(v7 + 424) = v74;
            goto LABEL_39;
          }

          *(v7 + 102) = *(v8 + 102);
          v7[412] = v8[412];
          if (v72)
          {
            v75 = *(v8 + 53);
            *(v7 + 52) = v72;
            *(v7 + 53) = v75;

            v76 = *(v8 + 54);
            if (v76)
            {
              goto LABEL_31;
            }
          }

          else
          {
            *(v7 + 26) = *(v8 + 26);
            v76 = *(v8 + 54);
            if (v76)
            {
LABEL_31:
              v77 = *(v8 + 55);
              *(v7 + 54) = v76;
              *(v7 + 55) = v77;

              v78 = *(v8 + 56);
              if (v78)
              {
LABEL_32:
                v79 = *(v8 + 57);
                *(v7 + 56) = v78;
                *(v7 + 57) = v79;

LABEL_38:
                *(v7 + 58) = *(v8 + 58);
                v7[472] = v8[472];
LABEL_39:
                v82 = *(v8 + 61);
                *(v7 + 60) = *(v8 + 60);
                *(v7 + 61) = v82;
                *(v7 + 62) = *(v8 + 62);
                v7[504] = v8[504];
                v83 = *(v8 + 64);

                if (v83)
                {
                  v84 = *(v8 + 65);
                  *(v7 + 64) = v83;
                  *(v7 + 65) = v84;
                }

                else
                {
                  *(v7 + 32) = *(v8 + 32);
                }

                v7[528] = v8[528];
                if (!*(v8 + 102))
                {
                  memcpy(v7 + 536, v8 + 536, 0x130uLL);
                  goto LABEL_54;
                }

                *(v7 + 67) = *(v8 + 67);
                *(v7 + 68) = *(v8 + 68);
                v7[552] = v8[552];
                *(v7 + 70) = *(v8 + 70);
                v7[568] = v8[568];
                *(v7 + 36) = *(v8 + 36);
                v7[592] = v8[592];
                v85 = v7 + 600;
                v86 = v8 + 600;
                v87 = *(v8 + 78);

                if (v87)
                {
                  if (v87 == 1)
                  {
                    v88 = *(v8 + 616);
                    *v85 = *v86;
                    *(v7 + 616) = v88;
                    *(v7 + 632) = *(v8 + 632);
LABEL_50:
                    *(v7 + 81) = *(v8 + 81);
                    v7[656] = v8[656];
                    v90 = v7 + 664;
                    v91 = v8 + 664;
                    v92 = *(v8 + 97);
                    if (v92 == 1)
                    {
                      v93 = *(v8 + 776);
                      *(v7 + 760) = *(v8 + 760);
                      *(v7 + 776) = v93;
                      *(v7 + 792) = *(v8 + 792);
                      v7[808] = v8[808];
                      v94 = *(v8 + 712);
                      *(v7 + 696) = *(v8 + 696);
                      *(v7 + 712) = v94;
                      v95 = *(v8 + 744);
                      *(v7 + 728) = *(v8 + 728);
                      *(v7 + 744) = v95;
                      v96 = *(v8 + 680);
                      *v90 = *v91;
                      *(v7 + 680) = v96;
                    }

                    else
                    {
                      *v90 = *v91;
                      v7[672] = v8[672];
                      *(v7 + 85) = *(v8 + 85);
                      v7[688] = v8[688];
                      *(v7 + 689) = *(v8 + 689);
                      v7[691] = v8[691];
                      v7[692] = v8[692];
                      *(v7 + 87) = *(v8 + 87);
                      v97 = *(v8 + 45);
                      *(v7 + 44) = *(v8 + 44);
                      *(v7 + 45) = v97;
                      *(v7 + 92) = *(v8 + 92);
                      *(v7 + 372) = *(v8 + 372);
                      *(v7 + 47) = *(v8 + 47);
                      v7[768] = v8[768];
                      *(v7 + 97) = v92;
                      *(v7 + 49) = *(v8 + 49);
                      *(v7 + 100) = *(v8 + 100);
                      v7[808] = v8[808];
                    }

                    *(v7 + 102) = *(v8 + 102);
                    *(v7 + 103) = *(v8 + 103);
                    *(v7 + 104) = *(v8 + 104);

LABEL_54:
                    v98 = v7 + 840;
                    v99 = v8 + 840;
                    v100 = *(v8 + 108);
                    if (v100)
                    {
                      if (v100 == 1)
                      {
                        v101 = *(v8 + 856);
                        *v98 = *v99;
                        *(v7 + 856) = v101;
                        *(v7 + 872) = *(v8 + 872);
                        *(v7 + 111) = *(v8 + 111);
LABEL_61:
                        v105 = *(v8 + 112);
                        *(v7 + 112) = v105;
                        *(v7 + 113) = *(v8 + 113);
                        *(v7 + 114) = *(v8 + 114);
                        *(v7 + 115) = *(v8 + 115);
                        *(v7 + 116) = *(v8 + 116);
                        *(v7 + 117) = *(v8 + 117);
                        *(v7 + 118) = *(v8 + 118);
                        *(v7 + 476) = *(v8 + 476);
                        v7[954] = v8[954];
                        v106 = type metadata accessor for PlatformItemList.Item();
                        v107 = v106[28];
                        __dst = &v7[v107];
                        v108 = &v8[v107];
                        v109 = type metadata accessor for CommandOperation();
                        v208 = *(v109 - 8);
                        v213 = *(v208 + 48);
                        v110 = v105;

                        if (v213(v108, 1, v109))
                        {
                          _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                          memcpy(__dst, v108, *(*(v111 - 8) + 64));
                          v4 = v227;
                          v33 = v229;
                          v13 = a2;
                          v9 = v224;
                          v3 = v225;
                        }

                        else
                        {
                          *__dst = *v108;
                          v112 = *(v109 + 20);
                          v113 = &__dst[v112];
                          v214 = v108;
                          v219 = v109;
                          v114 = &v108[v112];
                          v115 = *&v108[v112];
                          v116 = *(v114 + 1);
                          v117 = v114[16];
                          outlined copy of Text.Storage(v115, v116, v117);
                          *v113 = v115;
                          *(v113 + 1) = v116;
                          v113[16] = v117;
                          *(v113 + 3) = *(v114 + 3);
                          v118 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v119 = type metadata accessor for UUID();
                          v204 = *(*(v119 - 8) + 16);

                          v204(&v113[v118], &v114[v118], v119);
                          v120 = *(v219 + 24);
                          v121 = &__dst[v120];
                          v122 = &v214[v120];
                          if (*v122)
                          {
                            v123 = *(v122 + 1);
                            *v121 = *v122;
                            *(v121 + 1) = v123;
                          }

                          else
                          {
                            *v121 = *v122;
                          }

                          v4 = v227;
                          v33 = v229;
                          v13 = a2;
                          v9 = v224;
                          v3 = v225;
                          (*(v208 + 56))(__dst, 0, 1, v219);
                        }

                        v7[v106[29]] = v8[v106[29]];
                        v7[v106[30]] = v8[v106[30]];
                        v7[v106[31]] = v8[v106[31]];
                        v7[v106[32]] = v8[v106[32]];
                        v7[v106[33]] = v8[v106[33]];
                        *&v7[v106[34]] = *&v8[v106[34]];

                        goto LABEL_119;
                      }

                      *(v7 + 108) = v100;
                      *(v7 + 109) = *(v8 + 109);
                      (**(v100 - 8))(v98, v99);
                      v103 = *(v8 + 110);
                      if (!v103)
                      {
LABEL_60:
                        *(v7 + 55) = *(v8 + 55);
                        goto LABEL_61;
                      }
                    }

                    else
                    {
                      v102 = *(v8 + 856);
                      *v98 = *v99;
                      *(v7 + 856) = v102;
                      *(v7 + 109) = *(v8 + 109);
                      v103 = *(v8 + 110);
                      if (!v103)
                      {
                        goto LABEL_60;
                      }
                    }

                    v104 = *(v8 + 111);
                    *(v7 + 110) = v103;
                    *(v7 + 111) = v104;

                    goto LABEL_61;
                  }

                  *(v7 + 78) = v87;
                  *(v7 + 79) = *(v8 + 79);
                  (**(v87 - 8))((v7 + 600), (v8 + 600), v87);
                }

                else
                {
                  v89 = *(v8 + 616);
                  *v85 = *v86;
                  *(v7 + 616) = v89;
                  *(v7 + 79) = *(v8 + 79);
                }

                *(v7 + 80) = *(v8 + 80);

                goto LABEL_50;
              }

LABEL_37:
              *(v7 + 28) = *(v8 + 28);
              goto LABEL_38;
            }
          }

          *(v7 + 27) = *(v8 + 27);
          v78 = *(v8 + 56);
          if (v78)
          {
            goto LABEL_32;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v34 = v8[72];
        if (v34 == 255)
        {
          *(v7 + 8) = *(v8 + 8);
          v7[72] = v8[72];
        }

        else
        {
          v35 = *(v8 + 8);
          outlined copy of GraphicsImage.Contents(v35, v8[72]);
          *(v7 + 8) = v35;
          v7[72] = v34;
          v18 = *(v8 + 24);
        }

        *(v7 + 10) = *(v8 + 10);
        *(v7 + 88) = *(v8 + 88);
        v7[104] = v8[104];
        *(v7 + 108) = *(v8 + 108);
        *(v7 + 121) = *(v8 + 121);
        *(v7 + 136) = *(v8 + 136);
        *(v7 + 152) = *(v8 + 152);
        *(v7 + 84) = *(v8 + 84);
        v7[170] = v8[170];
        v7[171] = v8[171];
        if (v18 >> 1 == 0xFFFFFFFF)
        {
          v52 = *(v8 + 12);
          *(v7 + 11) = *(v8 + 11);
          *(v7 + 12) = v52;
        }

        else
        {
          v53 = *(v8 + 22);
          v54 = *(v8 + 23);
          v55 = v9;
          v56 = *(v8 + 25);
          outlined copy of AccessibilityImageLabel(v53, v54, v18);
          *(v7 + 22) = v53;
          *(v7 + 23) = v54;
          *(v7 + 24) = v18;
          *(v7 + 25) = v56;
          v9 = v55;
        }

        v57 = *(v8 + 27);
        *(v7 + 26) = *(v8 + 26);
        *(v7 + 27) = v57;
        *(v7 + 112) = *(v8 + 112);
        *(v7 + 57) = *(v8 + 57);
        v7[232] = v8[232];
        v58 = *(v8 + 30);
        *(v7 + 30) = v58;
        *(v7 + 124) = *(v8 + 124);
        v7[250] = v8[250];
        swift_unknownObjectRetain();

        v59 = v58;
        v26 = *(v8 + 33);
        if (v26)
        {
          goto LABEL_6;
        }
      }

      v60 = *(v8 + 17);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 17) = v60;
      *(v7 + 18) = *(v8 + 18);
      goto LABEL_24;
    }

    v30 = type metadata accessor for PlatformItemList.Item();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v8, 1, v30))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v7, v8, *(*(v32 - 8) + 64));
      v33 = v229;
      v13 = a2;
LABEL_119:
      swift_storeEnumTagMultiPayload();
      (*(v33 + 56))(v7, 0, 1, v9);
      goto LABEL_120;
    }

    v217 = v31;
    v223 = v9;
    v226 = v3;
    v36 = *v8;
    v37 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v37;
    v38 = *(v8 + 3);
    *(v7 + 2) = *(v8 + 2);
    *(v7 + 3) = v38;
    v7[32] = v8[32];
    v39 = *(v8 + 6);
    *(v7 + 5) = *(v8 + 5);
    *(v7 + 6) = v39;
    v7[56] = v8[56];
    v40 = *(v8 + 24);
    v41 = v36;
    v42 = v37;

    if (v40 >> 1 == 4294967294)
    {
      v43 = *(v8 + 13);
      *(v7 + 12) = *(v8 + 12);
      *(v7 + 13) = v43;
      *(v7 + 14) = *(v8 + 14);
      *(v7 + 235) = *(v8 + 235);
      v44 = *(v8 + 9);
      *(v7 + 8) = *(v8 + 8);
      *(v7 + 9) = v44;
      v45 = *(v8 + 11);
      *(v7 + 10) = *(v8 + 10);
      *(v7 + 11) = v45;
      v46 = *(v8 + 5);
      *(v7 + 4) = *(v8 + 4);
      *(v7 + 5) = v46;
      v47 = *(v8 + 7);
      *(v7 + 6) = *(v8 + 6);
      *(v7 + 7) = v47;
      v48 = *(v8 + 33);
      if (v48)
      {
LABEL_15:
        *(v7 + 32) = *(v8 + 32);
        *(v7 + 33) = v48;
        v49 = *(v8 + 34);

        if (v49 >= 2)
        {
          v50 = v49;
        }

        *(v7 + 34) = v49;
        *(v7 + 70) = *(v8 + 70);
        v7[284] = v8[284];
        *(v7 + 285) = *(v8 + 285);
        v51 = *(v8 + 37);
        *(v7 + 36) = *(v8 + 36);
        *(v7 + 37) = v51;

LABEL_74:
        v132 = *(v8 + 42);
        v228 = v4;
        __dsta = v30;
        if (v132 >> 2 == 0xFFFFFFFF)
        {
          v133 = *(v8 + 24);
          *(v7 + 23) = *(v8 + 23);
          *(v7 + 24) = v133;
          *(v7 + 50) = *(v8 + 50);
          v134 = *(v8 + 20);
          *(v7 + 19) = *(v8 + 19);
          *(v7 + 20) = v134;
          v135 = *(v8 + 22);
          *(v7 + 21) = *(v8 + 21);
          *(v7 + 22) = v135;
        }

        else
        {
          v136 = *(v8 + 38);
          v137 = *(v8 + 39);
          v138 = *(v8 + 40);
          v139 = *(v8 + 43);
          v140 = *(v8 + 44);
          v141 = *(v8 + 45);
          v200 = *(v8 + 46);
          v201 = *(v8 + 47);
          v205 = *(v8 + 48);
          v209 = *(v8 + 49);
          v215 = *(v8 + 50);
          v142 = *(v8 + 41);
          outlined copy of PlatformItemList.Item.SystemItem(v136, v137, v138, v142, v132, v139, v140, v141, v200, v201, v205, v209, v215);
          *(v7 + 38) = v136;
          *(v7 + 39) = v137;
          *(v7 + 40) = v138;
          *(v7 + 41) = v142;
          *(v7 + 42) = v132;
          *(v7 + 43) = v139;
          *(v7 + 44) = v140;
          *(v7 + 45) = v141;
          *(v7 + 46) = v200;
          *(v7 + 47) = v201;
          *(v7 + 48) = v205;
          *(v7 + 49) = v209;
          v30 = __dsta;
          *(v7 + 50) = v215;
        }

        v143 = *(v8 + 52);
        if (v143 == 1)
        {
          v144 = *(v8 + 456);
          *(v7 + 440) = *(v8 + 440);
          *(v7 + 456) = v144;
          v7[472] = v8[472];
          v145 = *(v8 + 424);
          *(v7 + 408) = *(v8 + 408);
          *(v7 + 424) = v145;
        }

        else
        {
          *(v7 + 102) = *(v8 + 102);
          v7[412] = v8[412];
          if (v143)
          {
            v146 = *(v8 + 53);
            *(v7 + 52) = v143;
            *(v7 + 53) = v146;
          }

          else
          {
            *(v7 + 26) = *(v8 + 26);
          }

          v147 = *(v8 + 54);
          if (v147)
          {
            v148 = *(v8 + 55);
            *(v7 + 54) = v147;
            *(v7 + 55) = v148;
          }

          else
          {
            *(v7 + 27) = *(v8 + 27);
          }

          v149 = *(v8 + 56);
          if (v149)
          {
            v150 = *(v8 + 57);
            *(v7 + 56) = v149;
            *(v7 + 57) = v150;
          }

          else
          {
            *(v7 + 28) = *(v8 + 28);
          }

          *(v7 + 58) = *(v8 + 58);
          v7[472] = v8[472];
        }

        v151 = *(v8 + 61);
        *(v7 + 60) = *(v8 + 60);
        *(v7 + 61) = v151;
        *(v7 + 62) = *(v8 + 62);
        v7[504] = v8[504];
        v152 = *(v8 + 64);

        if (v152)
        {
          v153 = *(v8 + 65);
          *(v7 + 64) = v152;
          *(v7 + 65) = v153;
        }

        else
        {
          *(v7 + 32) = *(v8 + 32);
        }

        v7[528] = v8[528];
        if (!*(v8 + 102))
        {
          memcpy(v7 + 536, v8 + 536, 0x130uLL);
          goto LABEL_104;
        }

        *(v7 + 67) = *(v8 + 67);
        *(v7 + 68) = *(v8 + 68);
        v7[552] = v8[552];
        *(v7 + 70) = *(v8 + 70);
        v7[568] = v8[568];
        *(v7 + 36) = *(v8 + 36);
        v7[592] = v8[592];
        v154 = v7 + 600;
        v155 = v8 + 600;
        v156 = *(v8 + 78);

        if (v156)
        {
          if (v156 == 1)
          {
            v157 = *(v8 + 616);
            *v154 = *v155;
            *(v7 + 616) = v157;
            *(v7 + 632) = *(v8 + 632);
LABEL_100:
            *(v7 + 81) = *(v8 + 81);
            v7[656] = v8[656];
            v159 = v7 + 664;
            v160 = v8 + 664;
            v161 = *(v8 + 97);
            if (v161 == 1)
            {
              v162 = *(v8 + 776);
              *(v7 + 760) = *(v8 + 760);
              *(v7 + 776) = v162;
              *(v7 + 792) = *(v8 + 792);
              v7[808] = v8[808];
              v163 = *(v8 + 712);
              *(v7 + 696) = *(v8 + 696);
              *(v7 + 712) = v163;
              v164 = *(v8 + 744);
              *(v7 + 728) = *(v8 + 728);
              *(v7 + 744) = v164;
              v165 = *(v8 + 680);
              *v159 = *v160;
              *(v7 + 680) = v165;
            }

            else
            {
              *v159 = *v160;
              v7[672] = v8[672];
              *(v7 + 85) = *(v8 + 85);
              v7[688] = v8[688];
              *(v7 + 689) = *(v8 + 689);
              v7[691] = v8[691];
              v7[692] = v8[692];
              *(v7 + 87) = *(v8 + 87);
              v166 = *(v8 + 45);
              *(v7 + 44) = *(v8 + 44);
              *(v7 + 45) = v166;
              *(v7 + 92) = *(v8 + 92);
              *(v7 + 372) = *(v8 + 372);
              *(v7 + 47) = *(v8 + 47);
              v7[768] = v8[768];
              *(v7 + 97) = v161;
              *(v7 + 49) = *(v8 + 49);
              *(v7 + 100) = *(v8 + 100);
              v7[808] = v8[808];
            }

            *(v7 + 102) = *(v8 + 102);
            *(v7 + 103) = *(v8 + 103);
            *(v7 + 104) = *(v8 + 104);

LABEL_104:
            v167 = v7 + 840;
            v168 = v8 + 840;
            v169 = *(v8 + 108);
            if (v169)
            {
              if (v169 == 1)
              {
                v170 = v30;
                v171 = *(v8 + 856);
                *v167 = *v168;
                *(v7 + 856) = v171;
                *(v7 + 872) = *(v8 + 872);
                *(v7 + 111) = *(v8 + 111);
LABEL_112:
                v175 = *(v8 + 112);
                *(v7 + 112) = v175;
                *(v7 + 113) = *(v8 + 113);
                *(v7 + 114) = *(v8 + 114);
                *(v7 + 115) = *(v8 + 115);
                *(v7 + 116) = *(v8 + 116);
                *(v7 + 117) = *(v8 + 117);
                *(v7 + 118) = *(v8 + 118);
                *(v7 + 476) = *(v8 + 476);
                v7[954] = v8[954];
                v176 = *(v170 + 112);
                v216 = &v7[v176];
                v177 = &v8[v176];
                v178 = type metadata accessor for CommandOperation();
                v206 = *(v178 - 8);
                v210 = *(v206 + 48);
                v179 = v175;

                if (v210(v177, 1, v178))
                {
                  _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                  memcpy(v216, v177, *(*(v180 - 8) + 64));
                  v4 = v228;
                  v33 = v229;
                  v181 = a2;
                  v9 = v223;
                  v3 = v226;
                }

                else
                {
                  *v216 = *v177;
                  v182 = *(v178 + 20);
                  v183 = &v216[v182];
                  v184 = &v177[v182];
                  v211 = v178;
                  v185 = *&v177[v182];
                  v186 = *&v177[v182 + 8];
                  v187 = v177[v182 + 16];
                  outlined copy of Text.Storage(v185, v186, v187);
                  *v183 = v185;
                  *(v183 + 1) = v186;
                  v183[16] = v187;
                  *(v183 + 3) = *(v184 + 3);
                  v188 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                  v189 = type metadata accessor for UUID();
                  v202 = *(*(v189 - 8) + 16);

                  v202(&v183[v188], &v184[v188], v189);
                  v190 = *(v211 + 24);
                  v191 = &v216[v190];
                  v192 = &v177[v190];
                  if (*v192)
                  {
                    v193 = *(v192 + 1);
                    *v191 = *v192;
                    *(v191 + 1) = v193;
                  }

                  else
                  {
                    *v191 = *v192;
                  }

                  v4 = v228;
                  v33 = v229;
                  v181 = a2;
                  v9 = v223;
                  v3 = v226;
                  (*(v206 + 56))(v216, 0, 1, v211);
                }

                v7[__dsta[29]] = v8[__dsta[29]];
                v7[__dsta[30]] = v8[__dsta[30]];
                v7[__dsta[31]] = v8[__dsta[31]];
                v7[__dsta[32]] = v8[__dsta[32]];
                v7[__dsta[33]] = v8[__dsta[33]];
                *&v7[__dsta[34]] = *&v8[__dsta[34]];
                v194 = *(v217 + 56);

                v194(v7, 0, 1, __dsta);
                v13 = v181;
                goto LABEL_119;
              }

              *(v7 + 108) = v169;
              *(v7 + 109) = *(v8 + 109);
              (**(v169 - 8))(v167, v168);
            }

            else
            {
              v172 = *(v8 + 856);
              *v167 = *v168;
              *(v7 + 856) = v172;
              *(v7 + 109) = *(v8 + 109);
            }

            v173 = *(v8 + 110);
            v170 = v30;
            if (v173)
            {
              v174 = *(v8 + 111);
              *(v7 + 110) = v173;
              *(v7 + 111) = v174;
            }

            else
            {
              *(v7 + 55) = *(v8 + 55);
            }

            goto LABEL_112;
          }

          *(v7 + 78) = v156;
          *(v7 + 79) = *(v8 + 79);
          (**(v156 - 8))((v7 + 600), (v8 + 600), v156);
        }

        else
        {
          v158 = *(v8 + 616);
          *v154 = *v155;
          *(v7 + 616) = v158;
          *(v7 + 79) = *(v8 + 79);
        }

        *(v7 + 80) = *(v8 + 80);

        goto LABEL_100;
      }
    }

    else
    {
      v80 = v8[72];
      if (v80 == 255)
      {
        *(v7 + 8) = *(v8 + 8);
        v7[72] = v8[72];
      }

      else
      {
        v81 = *(v8 + 8);
        outlined copy of GraphicsImage.Contents(v81, v8[72]);
        *(v7 + 8) = v81;
        v7[72] = v80;
        v40 = *(v8 + 24);
      }

      *(v7 + 10) = *(v8 + 10);
      *(v7 + 88) = *(v8 + 88);
      v7[104] = v8[104];
      *(v7 + 108) = *(v8 + 108);
      *(v7 + 121) = *(v8 + 121);
      *(v7 + 136) = *(v8 + 136);
      *(v7 + 152) = *(v8 + 152);
      *(v7 + 84) = *(v8 + 84);
      v7[170] = v8[170];
      v7[171] = v8[171];
      if (v40 >> 1 == 0xFFFFFFFF)
      {
        v124 = *(v8 + 12);
        *(v7 + 11) = *(v8 + 11);
        *(v7 + 12) = v124;
      }

      else
      {
        v125 = *(v8 + 22);
        v126 = *(v8 + 23);
        v127 = *(v8 + 25);
        outlined copy of AccessibilityImageLabel(v125, v126, v40);
        *(v7 + 22) = v125;
        *(v7 + 23) = v126;
        *(v7 + 24) = v40;
        *(v7 + 25) = v127;
      }

      v128 = *(v8 + 27);
      *(v7 + 26) = *(v8 + 26);
      *(v7 + 27) = v128;
      *(v7 + 112) = *(v8 + 112);
      *(v7 + 57) = *(v8 + 57);
      v7[232] = v8[232];
      v129 = *(v8 + 30);
      *(v7 + 30) = v129;
      *(v7 + 124) = *(v8 + 124);
      v7[250] = v8[250];
      swift_unknownObjectRetain();

      v130 = v129;
      v48 = *(v8 + 33);
      if (v48)
      {
        goto LABEL_15;
      }
    }

    v131 = *(v8 + 17);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 17) = v131;
    *(v7 + 18) = *(v8 + 18);
    goto LABEL_74;
  }

  _s7SwiftUI16CommandOperationVSgMaTm_1(0, &lazy cache variable for type metadata for DialogActionContext.CancelType?, type metadata accessor for DialogActionContext.CancelType);
  memcpy(v7, v8, *(*(v12 - 8) + 64));
  v13 = a2;
LABEL_120:
  v195 = v3[8];
  *(v4 + v3[7]) = *(v13 + v3[7]);
  *(v4 + v195) = *(v13 + v195);
  v196 = v3[9];
  v197 = *(v13 + v196);
  *(v4 + v196) = v197;

  v198 = v197;
  return v4;
}