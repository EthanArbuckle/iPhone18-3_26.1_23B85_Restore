uint64_t _LazyLayout_EstimatedPlacements_V1.subview.setter(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    type metadata accessor for _LazyLayout_Subview_V1?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18DDA6EB0;
    *(v4 + 32) = v2;
    *(v4 + 56) = *(a1 + 3);
    *(v4 + 72) = *(a1 + 5);
    *(v4 + 88) = *(a1 + 7);
    *(v4 + 104) = a1[9];
    *(v4 + 40) = *(a1 + 1);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 16) = v4;
  return result;
}

void (*_LazyLayout_EstimatedPlacements_V1.subview.modify(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x150uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  *(v3 + 41) = v5;
  if (*(v5 + 2))
  {
    v3[5] = v5[2];
    v6 = v5[3];
    v7 = v5[4];
    v8 = v5[6];
    v3[8] = v5[5];
    v3[9] = v8;
    v3[6] = v6;
    v3[7] = v7;
    memmove(v3, v5 + 2, 0x50uLL);
    outlined init with copy of _LazyLayout_PlacedSubview((v4 + 5), (v4 + 10));
  }

  else
  {
    v3[3] = 0u;
    v3[4] = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    *v3 = 0u;
  }

  return _LazyLayout_EstimatedPlacements_V1.subview.modify;
}

void _LazyLayout_EstimatedPlacements_V1.subview.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[4];
    v2[8] = v2[3];
    v2[9] = v3;
    v4 = v2[2];
    v2[6] = v2[1];
    v2[7] = v4;
    v2[5] = *v2;
    if (*(v2 + 10))
    {
      type metadata accessor for _LazyLayout_Subview_V1?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      v5[1] = xmmword_18DDA6EB0;
      v5[2] = *v2;
      v6 = v2[4];
      v8 = v2[1];
      v7 = v2[2];
      v5[5] = v2[3];
      v5[6] = v6;
      v5[3] = v8;
      v5[4] = v7;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v14 = *(v2 + 40);
    outlined init with copy of _LazyLayout_Subview_V1?((v2 + 5), (v2 + 15), &lazy cache variable for type metadata for _LazyLayout_PlacedSubview_V1?, &type metadata for _LazyLayout_PlacedSubview_V1);

    *(v14 + 16) = v5;
    v15 = v2[3];
    v2[12] = v2[2];
    v2[13] = v15;
    v2[14] = v2[4];
    v16 = v2[1];
    v2[10] = *v2;
    v2[11] = v16;
    outlined destroy of _LazyLayout_Subview_V1?((v2 + 10), &lazy cache variable for type metadata for _LazyLayout_PlacedSubview_V1?, &type metadata for _LazyLayout_PlacedSubview_V1);
  }

  else
  {
    v9 = *v2;
    if (*v2)
    {
      type metadata accessor for _LazyLayout_Subview_V1?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_18DDA6EB0;
      *(v10 + 32) = v9;
      *(v10 + 40) = *(v2 + 8);
      v11 = *(v2 + 40);
      v12 = *(v2 + 56);
      v13 = *(v2 + 9);
      *(v10 + 56) = *(v2 + 24);
      *(v10 + 104) = v13;
      *(v10 + 88) = v12;
      *(v10 + 72) = v11;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    *(*(v2 + 40) + 16) = v10;
  }

  free(v2);
}

uint64_t _LazyLayout_EstimatedPlacements_V1.subviews.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v26;
    v4 = (v1 + 32);
    do
    {
      v21 = *v4;
      v5 = v4[1];
      v6 = v4[2];
      v7 = v4[4];
      v24 = v4[3];
      v25 = v7;
      v22 = v5;
      v23 = v6;
      outlined init with copy of _LazyLayout_PlacedSubview(&v21, &v16);
      v26 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v3 = v26;
      }

      v19 = v24;
      v20 = v25;
      v17 = v22;
      v18 = v23;
      v10 = v21;
      v16 = v21;
      *(v3 + 16) = v9 + 1;
      v11 = (v3 + 80 * v9);
      v11[2] = v10;
      v12 = v17;
      v13 = v18;
      v14 = v20;
      v11[5] = v19;
      v11[6] = v14;
      v11[3] = v12;
      v11[4] = v13;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t _LazyLayout_EstimatedPlacements_V1.subviews.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v23;
    v6 = v4 - 1;
    for (i = 32; ; i += 80)
    {
      v8 = *(a1 + i + 48);
      v20 = *(a1 + i + 32);
      v21 = v8;
      v22 = *(a1 + i + 64);
      v9 = *(a1 + i + 16);
      v18 = *(a1 + i);
      v19 = v9;
      outlined init with copy of _LazyLayout_PlacedSubview_V1(&v18, &v17);
      v23 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v5 = v23;
      }

      *(v5 + 16) = v11 + 1;
      v12 = (v5 + 80 * v11);
      v12[2] = v18;
      v13 = v19;
      v14 = v20;
      v15 = v22;
      v12[5] = v21;
      v12[6] = v15;
      v12[3] = v13;
      v12[4] = v14;
      if (!v6)
      {
        break;
      }

      --v6;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + 16) = v5;
  return result;
}

uint64_t (*_LazyLayout_EstimatedPlacements_V1.subviews.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = _LazyLayout_EstimatedPlacements_V1.subviews.getter();
  return _LazyLayout_EstimatedPlacements_V1.subviews.modify;
}

uint64_t _LazyLayout_EstimatedPlacements_V1.subviews.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return _LazyLayout_EstimatedPlacements_V1.subviews.setter(*a1);
  }

  _LazyLayout_EstimatedPlacements_V1.subviews.setter(v2);
}

uint64_t _LazyLayout_ProposedSizes_V1.subviews.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double _LazyLayout_Placement_V1.proposedSize.getter()
{
  result = *v0;
  if (*(v0 + 8))
  {
    return 10.0;
  }

  return result;
}

void _LazyLayout_Placement_V1.proposedSize.setter(double a1, double a2)
{
  *v2 = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = 0;
}

void *(*_LazyLayout_Placement_V1.proposedSize.modify(uint64_t a1))(void *result)
{
  *(a1 + 16) = v1;
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    v2 = 10.0;
  }

  if (*(v1 + 24))
  {
    v3 = 10.0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  return _Placement.proposedSize.modify;
}

__n128 (*_LazyLayout_Placement_V1.anchor.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 32);
  return _LazyLayout_Placement_V1.anchor.modify;
}

__n128 _LazyLayout_Placement_V1.anchor.modify(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 32) = *a1;
  return result;
}

__n128 (*_LazyLayout_Placement_V1.position.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 48);
  return _LazyLayout_Placement_V1.position.modify;
}

__n128 _LazyLayout_Placement_V1.position.modify(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 48) = *a1;
  return result;
}

void _LazyLayout_Placement_V1.init(proposedSize:anchor:position:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 56) = a7;
}

uint64_t static _LazyLayoutRoot_V1._makeView(root:inputs:body:)@<X0>(uint64_t a1@<X1>, void (*a2)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v19[4] = *(a1 + 64);
  v20 = *(a1 + 80);
  v7 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v7;
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static _LazyLayoutRoot_V1._makeView(root:inputs:body:)(1, a3);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v18 = OffsetAttribute2;
  MEMORY[0x1EEE9AC00](OffsetAttribute2);
  v9 = type metadata accessor for LazyLayoutAdaptor_V1();
  v14[2] = v9;
  Adaptor = type metadata accessor for _LazyLayoutRoot_V1.MakeAdaptor();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v18, partial apply for closure #1 in Attribute.init<A>(_:), v14, Adaptor, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  _GraphValue.init(_:)(v17, &v18);
  v12 = swift_getWitnessTable();
  return static LazyLayout._makeView(root:inputs:body:)(&v18, v19, a2, v9, v12, a4);
}

uint64_t closure #1 in static _LazyLayoutRoot_V1._makeView(root:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for _LazyLayoutRoot_V1();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t _LazyLayoutRoot_V1.MakeAdaptor.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a2);
  return (*(v5 + 32))(a3, v7, a2);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance _LazyLayoutRoot_V1<A>.MakeAdaptor@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LazyLayoutAdaptor_V1();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t View.lazyLayoutReuseIdle<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LazyLayoutReuseIdleModifier();

  return View.modifier<A>(_:)(v3, a2, v3);
}

Swift::Int LazySubviewMinorSizing.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t View.lazySubviewMinorSizing(_:animation:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  KeyPath = swift_getKeyPath();
  v10[0] = v7;
  v11 = a2;

  View.environment<A>(_:_:)(KeyPath, v10, a3, a4);
}

uint64_t outlined destroy of _LazyLayout_Subview_V1?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _LazyLayout_Subview_V1?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of _LazyLayout_PlacedSubview_V1(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v5;
  *(a2 + 24) = v4;
  *(a2 + 8) = v3;
  *(a2 + 72) = *(a1 + 72);

  return a2;
}

uint64_t outlined init with copy of _LazyLayout_Subview_V1?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for _LazyLayout_Subview_V1?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _LazyLayout_Subviews_V1.SubviewsIterator and conformance _LazyLayout_Subviews_V1.SubviewsIterator()
{
  result = lazy protocol witness table cache variable for type _LazyLayout_Subviews_V1.SubviewsIterator and conformance _LazyLayout_Subviews_V1.SubviewsIterator;
  if (!lazy protocol witness table cache variable for type _LazyLayout_Subviews_V1.SubviewsIterator and conformance _LazyLayout_Subviews_V1.SubviewsIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LazyLayout_Subviews_V1.SubviewsIterator and conformance _LazyLayout_Subviews_V1.SubviewsIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LazyLayout_Subview_V1.LengthAndSpacing and conformance _LazyLayout_Subview_V1.LengthAndSpacing()
{
  result = lazy protocol witness table cache variable for type _LazyLayout_Subview_V1.LengthAndSpacing and conformance _LazyLayout_Subview_V1.LengthAndSpacing;
  if (!lazy protocol witness table cache variable for type _LazyLayout_Subview_V1.LengthAndSpacing and conformance _LazyLayout_Subview_V1.LengthAndSpacing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LazyLayout_Subview_V1.LengthAndSpacing and conformance _LazyLayout_Subview_V1.LengthAndSpacing);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazySubviewMinorSizing and conformance LazySubviewMinorSizing()
{
  result = lazy protocol witness table cache variable for type LazySubviewMinorSizing and conformance LazySubviewMinorSizing;
  if (!lazy protocol witness table cache variable for type LazySubviewMinorSizing and conformance LazySubviewMinorSizing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazySubviewMinorSizing and conformance LazySubviewMinorSizing);
  }

  return result;
}

uint64_t initializeWithCopy for _LazyLayout_Subviews_V1.SubviewsSequence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 109);

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 109) = 2;
LABEL_9:

      goto LABEL_10;
    }

    *(a1 + 16) = *(a2 + 16);
    v11 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v11;
    *(a1 + 40) = *(a2 + 40);
    v10 = 3;
LABEL_8:
    *(a1 + 109) = v10;

    goto LABEL_9;
  }

  if (v4)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    v6 = *(a2 + 72);
    *(a1 + 72) = v6;
    v7 = v6;
    v8 = **(v6 - 8);

    v8(a1 + 48, a2 + 48, v7);
    v9 = *(a2 + 96);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = v9;
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    v10 = 1;
    goto LABEL_8;
  }

  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  (**(v5 - 8))(a1 + 16, a2 + 16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 109) = 0;
LABEL_10:
  v12 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v12;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 131) = *(a2 + 131);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

uint64_t assignWithCopy for _LazyLayout_Subviews_V1.SubviewsSequence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    outlined destroy of _ViewList_Node(a1 + 16);
    if (*(a2 + 109) > 1u)
    {
      if (*(a2 + 109) == 2)
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 109) = 2;
LABEL_10:

        goto LABEL_11;
      }

      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      v9 = 3;
    }

    else
    {
      if (!*(a2 + 109))
      {
        v4 = *(a2 + 40);
        *(a1 + 40) = v4;
        *(a1 + 48) = *(a2 + 48);
        (**(v4 - 8))(a1 + 16, a2 + 16);
        v5 = *(a2 + 60);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 60) = v5;
        *(a1 + 109) = 0;
        goto LABEL_11;
      }

      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 36) = *(a2 + 36);
      *(a1 + 40) = *(a2 + 40);
      v6 = *(a2 + 72);
      *(a1 + 72) = v6;
      *(a1 + 80) = *(a2 + 80);
      v7 = **(v6 - 8);

      v7(a1 + 48, a2 + 48, v6);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      v8 = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 104) = v8;
      v9 = 1;
    }

    *(a1 + 109) = v9;

    goto LABEL_10;
  }

LABEL_11:
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  v10 = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 128) = v10;
  *(a1 + 133) = *(a2 + 133);
  *(a1 + 134) = *(a2 + 134);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithTake for _LazyLayout_Subviews_V1.SubviewsSequence(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    outlined destroy of _ViewList_Node(a1 + 16);
    v4 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v4;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 94) = *(a2 + 94);
    v5 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v5;
  }

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 133) = *(a2 + 133);
  *(a1 + 134) = *(a2 + 134);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_Subviews_V1.SubviewsSequence(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t storeEnumTagSinglePayload for _LazyLayout_Subviews_V1.SubviewsSequence(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazySubviewMinorSizing.Role and conformance LazySubviewMinorSizing.Role()
{
  result = lazy protocol witness table cache variable for type LazySubviewMinorSizing.Role and conformance LazySubviewMinorSizing.Role;
  if (!lazy protocol witness table cache variable for type LazySubviewMinorSizing.Role and conformance LazySubviewMinorSizing.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazySubviewMinorSizing.Role and conformance LazySubviewMinorSizing.Role);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for LazyLayoutAdaptor_V1<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static LazyLayoutReuseIdleModifier._makeInputs(modifier:inputs:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8))(a2, a3);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(a1, v4, 0);
}

void type metadata accessor for _LazyLayout_Subview_V1?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for LazyLayoutAdaptor_V1.Cache()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for LazyLayoutAdaptor_V1.Cache(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 + 16) & ~v6));
  }

  return a1;
}

uint64_t destroy for LazyLayoutAdaptor_V1.Cache(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for LazyLayoutAdaptor_V1.Cache(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for LazyLayoutAdaptor_V1.Cache(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for LazyLayoutAdaptor_V1.Cache(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for LazyLayoutAdaptor_V1.Cache(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyLayoutAdaptor_V1.Cache(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void storeEnumTagSinglePayload for LazyLayoutAdaptor_V1.Cache(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
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

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
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

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
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

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t ProtobufEncoder.archiveOptions.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (one-time initialization token for archiveOptionsKey != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for CodingUserInfoKey();
  result = __swift_project_value_buffer(v4, static ArchivedViewCore.archiveOptionsKey);
  if (*(v3 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result), (v6 & 1) != 0) && (outlined init with copy of Any(*(v3 + 56) + 32 * result, v11), result = swift_dynamicCast(), result))
  {
    v7 = v9;
    v8 = v10;
  }

  else
  {
    v7 = 0;
    v8 = 3;
  }

  *a1 = v7;
  a1[1] = v8;
  return result;
}

double ProtobufEncoder.archiveHost.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  if (one-time initialization token for archivedViewHostKey != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = __swift_project_value_buffer(v4, static ArchivedViewCore.archivedViewHostKey);
  if (!*(v3 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v7 & 1) == 0) || (outlined init with copy of Any(*(v3 + 56) + 32 * v6, &v9), type metadata accessor for AnyArchivedViewHost(), (swift_dynamicCast() & 1) == 0))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t _ArchivedViewHostDelegate.failedToEncodeView(type:)()
{
  return _ArchivedViewHostDelegate.failedToEncodeView(type:)();
}

{
  _StringGuts.grow(_:)(36);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  specialized static Log.externalWarning(_:)(0xD000000000000022, 0x800000018DD82940);
}

CGImageRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _ArchivedViewHostDelegate.filteredImage(_:)(CGImageRef a1)
{
  result = _ViewInputs.base.modify(a1);
  if (!v1)
  {
    v3 = result;
    v4 = result;
    return v3;
  }

  return result;
}

{
  result = _ViewInputs.base.modify(a1);
  if (!v1)
  {
    v3 = result;
    v4 = result;
    return v3;
  }

  return result;
}

uint64_t _ArchivedViewHostDelegate.preferredImageType(for:)@<X0>(uint64_t a1@<X8>)
{
  return _ArchivedViewHostDelegate.preferredImageType(for:)(a1);
}

{
  v2 = type metadata accessor for UTType();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ArchivedViewStateProxy.addAttachment(data:)(uint64_t a1, char *a2)
{
  v5 = *v2;
  outlined copy of Data._Representation(a1, a2);
  _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(a1, a2, &v11);
  v6 = v13;
  v7 = v11;
  v8 = v12;
  result = specialized Collection<>.firstIndex(of:)(v11, v12, v13, v5[4]);
  if (v10)
  {
    v11 = v7;
    v12 = v8;
    v13 = v6;
    v14 = 0;
    outlined copy of Data._Representation(a1, a2);
    return specialized ArchiveWriter.addAttachment(hash:from:)(&v11, v5, a1, a2);
  }

  return result;
}

uint64_t ArchivedViewStateProxy.addAttachment(encoder:)(void (*a1)(void), unint64_t a2)
{
  v4 = *v2;
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  v8 = 1;
  return specialized ArchiveWriter.addAttachment(hash:from:)(v6, v4, a1, a2);
}

uint64_t _DisplayList_StableIdentityMap.addIDs(from:root:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = (v4 + 32);
    v9 = v5 - 1;
    while (v7 < *(v4 + 16))
    {
      v10 = v8[3];
      v14[2] = v8[2];
      v15[0] = v10;
      *(v15 + 12) = *(v8 + 60);
      v11 = v8[1];
      v14[0] = *v8;
      v14[1] = v11;

      v12 = specialized DisplayList.Item.forEachIdentity(_:)(v14, a2, v2);

      if (v12)
      {
        v8 += 5;
        if (v9 != v7++)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }

  return result;
}

uint64_t closure #1 in _DisplayList_StableIdentityMap.addIDs(from:root:)(_DWORD *a1)
{
  v1 = *a1;
  LODWORD(v9) = *a1;
  _DisplayList_StableIdentityRoot.subscript.getter(&v9, &v11);
  if (v14 != 1)
  {
    return specialized Dictionary.subscript.setter(v11, v12, v13, 0, v1);
  }

  type metadata accessor for _ContiguousArrayStorage<Any>();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDA6EB0;
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v11 = 0xD000000000000012;
  v12 = 0x800000018DD82970;
  v9 = 35;
  v10 = 0xE100000000000000;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](v9, v10);

  MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
  v4 = StaticString.description.getter();
  MEMORY[0x193ABEDD0](v4);

  MEMORY[0x193ABEDD0](58, 0xE100000000000000);
  v9 = 84;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v5);

  MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
  v6 = v11;
  v7 = v12;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v6;
  *(v2 + 40) = v7;
  print(_:separator:terminator:)();
}

uint64_t CombiningTransition._makeContentTransition(transition:)(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = *a1;
  if (v4 == 3)
  {
    if (Transition.hasContentTransition.getter(a2[2], a2[4]))
    {
      v5 = 1;
    }

    else
    {
      v5 = Transition.hasContentTransition.getter(a2[3], a2[5]) & 1;
    }

    result = outlined consume of _Transition_ContentTransition.Result(*(a1 + 3), a1[32]);
    *(a1 + 3) = v5;
    a1[32] = 0;
  }

  else
  {
    v7 = *(a1 + 1);
    v6 = *(a1 + 2);
    v12 = *a1;
    v13 = Transition.contentTransitionEffects(style:size:)(&v12, v7, v6, a2[2], a2[4]);
    v11 = v4;
    v8 = Transition.contentTransitionEffects(style:size:)(&v11, v7, v6, a2[3], a2[5]);
    specialized Array.append<A>(contentsOf:)(v8);
    v9 = v13;
    result = outlined consume of _Transition_ContentTransition.Result(*(a1 + 3), a1[32]);
    *(a1 + 3) = v9;
    a1[32] = 1;
  }

  return result;
}

unint64_t ContentTransition.numericValue.getter()
{
  v1 = *v0;
  if (*(v0 + 13))
  {
    v2 = 0;
  }

  else
  {
    v2 = (*v0 & 0xC100000000) == 0x4100000000;
  }

  v3 = !v2;
  v1 = v1;
  if (!v2)
  {
    v1 = 0;
  }

  return v1 | (v3 << 32);
}

uint64_t ContentTransition.NamedTransition.init(name:layoutDirection:style:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  v5 = *(result + 10);
  v6 = *a2;
  v7 = *a3;
  *a4 = *result;
  *(a4 + 10) = v5;
  *(a4 + 8) = v4;
  *(a4 + 11) = v6;
  *(a4 + 12) = v7;
  return result;
}

float static ContentTransition.EffectType.translation(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v3 = a2;
  *a1 = 3;
  *(a1 + 4) = v3;
  *(a1 + 8) = 0;
  result = a3;
  *(a1 + 12) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ContentTransition.Effect.init(_:timeline:appliesOnInsertion:appliesOnRemoval:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v6 = *(result + 8);
  v7 = *(result + 12);
  v8 = *(result + 16);
  v9 = a2 & 1;
  if (a2)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  if (a3)
  {
    v9 = v10;
  }

  *a4 = *result;
  *(a4 + 8) = v6;
  *(a4 + 12) = v7;
  *(a4 + 16) = v8;
  *(a4 + 20) = a5;
  *(a4 + 24) = a6 - a5;
  *(a4 + 28) = v9;
  *(a4 + 32) = 0;
  return result;
}

uint64_t _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(float a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  if (a1 > 255.0)
  {
    a1 = 255.0;
  }

  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SfTt1g5(v2, a1);
  if ((v2[0] & 0x100) == 0)
  {
    return LOBYTE(v2[0]);
  }

  v2[0] = 0;
  v2[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  MEMORY[0x193ABEDD0](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x193ABEDD0](0xD00000000000001ELL, 0x800000018DD829B0);
  MEMORY[0x193ABEDD0](0x38746E4955, 0xE500000000000000);
  MEMORY[0x193ABEDD0](0xD00000000000002ELL, 0x800000018DD829D0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs4Int8V_SfTt1g5(float a1)
{
  v1 = fmaxf(a1, -128.0);
  if (v1 > 127.0)
  {
    v1 = 127.0;
  }

  _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs4Int8V_SfTt1g5(v3, v1);
  if ((v3[0] & 0x100) == 0)
  {
    return LOBYTE(v3[0]);
  }

  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  MEMORY[0x193ABEDD0](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x193ABEDD0](0xD00000000000001ELL, 0x800000018DD829B0);
  MEMORY[0x193ABEDD0](947154505, 0xE400000000000000);
  MEMORY[0x193ABEDD0](0xD00000000000002ELL, 0x800000018DD829D0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double static ContentTransition.EffectType.opacity.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = 1;
  *(a1 + 8) = 2;
  *(a1 + 12) = 0;
  *(a1 + 16) = 2;
  return result;
}

uint64_t EnvironmentValues.contentTransitionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, a1);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(*v1);
    if (v5)
    {
      v6 = v5[9];
      v7 = *(v5 + 84);
      v8 = *(v5 + 20);
      v9 = v8 | (v7 << 32);
      v10 = *(v5 + 86);
      v11 = *(v5 + 87);
      v12 = v5[11];
      v13 = *(v5 + 24);
      *a1 = v6;
      *(a1 + 12) = v7;
      *(a1 + 8) = v8;
      v14 = *(v5 + 85);
      *(a1 + 13) = v14;
      *(a1 + 14) = v10;
      *(a1 + 15) = v11;
      *(a1 + 16) = v12;
      *(a1 + 24) = v13;
      v15 = v6;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v15 = static ContentTransition.State.defaultValue;
      v16 = BYTE12(static ContentTransition.State.defaultValue);
      v17 = DWORD2(static ContentTransition.State.defaultValue);
      v9 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v18 = BYTE14(static ContentTransition.State.defaultValue);
      v19 = HIBYTE(static ContentTransition.State.defaultValue);
      v20 = off_1ED536620;
      v21 = dword_1ED536628;
      *a1 = static ContentTransition.State.defaultValue;
      *(a1 + 12) = v16;
      *(a1 + 8) = v17;
      v14 = BYTE13(static ContentTransition.State.defaultValue);
      *(a1 + 13) = BYTE13(static ContentTransition.State.defaultValue);
      *(a1 + 14) = v18;
      *(a1 + 15) = v19;
      *(a1 + 16) = v20;
      *(a1 + 24) = v21;
    }

    outlined copy of ContentTransition.Storage(v15, v9, v14);
  }
}

uint64_t ContentTransition.isNamed(_:)(uint64_t *a1)
{
  if (*(v1 + 13))
  {
    return 0;
  }

  v3 = *a1;
  v4 = *v1;
  v5 = (*v1 >> 38) & 3;
  if (!v5)
  {
    return (v3 & 0xC000000000) == 0 && ((v4 ^ v3) & 1) == 0;
  }

  v6 = *(a1 + 4) | (*(a1 + 10) << 16);
  v7 = *(v1 + 8);
  if (v5 == 1)
  {
    v24 = BYTE4(v4) & 1;
    if ((v3 & 0xC000000000) == 0x4000000000)
    {
      v23 = BYTE4(v3) & 1;
      v16 = v4;
      v17 = v24;
      v18 = BYTE5(v4);
      v19 = BYTE6(v4);
      v20 = HIBYTE(v4);
      v21 = v7;
      v22 = BYTE2(v7);
      v9 = v3;
      v10 = BYTE4(v3) & 1;
      v11 = BYTE5(v3);
      v12 = BYTE6(v3);
      v13 = HIBYTE(v3);
      v14 = v6;
      v15 = BYTE2(v6);
      if (specialized static ContentTransition.NumericTextConfiguration.== infix(_:_:)(&v16, &v9))
      {
        return 1;
      }
    }

    return 0;
  }

  v8 = *(v1 + 8) & 0xFFFFFFLL;
  if (v4 <= 0x8000000001)
  {
    if (v4 ^ 0x8000000000 | v8)
    {
      if ((v3 & 0xC000000000) != 0x8000000000 || v3 != 0x8000000001)
      {
        return 0;
      }
    }

    else if ((v3 & 0xC000000000) != 0x8000000000 || v3 != 0x8000000000)
    {
      return 0;
    }
  }

  else if (v4 ^ 0x8000000002 | v8)
  {
    if (v4 ^ 0x8000000003 | v8)
    {
      if ((v3 & 0xC000000000) != 0x8000000000 || v3 != 0x8000000004)
      {
        return 0;
      }
    }

    else if ((v3 & 0xC000000000) != 0x8000000000 || v3 != 0x8000000003)
    {
      return 0;
    }
  }

  else if ((v3 & 0xC000000000) != 0x8000000000 || v3 != 0x8000000002)
  {
    return 0;
  }

  return !v6;
}

void static ContentTransition.differentText.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 12) = 3;
  *(a1 + 8) = 0x2000000;
  *(a1 + 13) = 0;
}

void static ContentTransition.text.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 12) = 3;
  *(a1 + 8) = 0x2000000;
  *(a1 + 13) = 0;
}

uint64_t EnvironmentValues.contentTransitionStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v10);

    v4 = v10;
    v5 = v11 | (v12 << 32);
    v6 = v13;
    v7 = v14;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v3);
    if (v8)
    {
      v4 = v8[9];
      v5 = *(v8 + 20) | (*(v8 + 84) << 32);
      v6 = *(v8 + 85);
      v7 = *(v8 + 87);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static ContentTransition.State.defaultValue;
      v5 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v6 = BYTE13(static ContentTransition.State.defaultValue);
      v7 = HIBYTE(static ContentTransition.State.defaultValue);
    }

    outlined copy of ContentTransition.Storage(v4, v5, v6);
  }

  outlined consume of ContentTransition.Storage(v4, v5, v6);

  *a1 = v7;
  return result;
}

void *ContentTransition.State.applyDynamicTextAnimation(in:)(void *result)
{
  if (!*(v1 + 16))
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(result);
    if ((!result || (result[9] & 1) == 0) && *(v1 + 15) - 1 <= 1)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      *(v1 + 16) = static Animation.default;
    }
  }

  return result;
}

int *ContentTransition.init(method:effects:)@<X0>(int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  *a3 = a2;
  *(a3 + 12) = 2;
  *(a3 + 8) = v3;
  *(a3 + 13) = 1;
  return result;
}

uint64_t ContentTransitionEffect.init(state:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  v4 = *(result + 14);
  v5 = *(result + 15);
  v6 = *(result + 16);
  v7 = *(result + 24);
  *a2 = *result;
  *(a2 + 12) = v3;
  *(a2 + 8) = v2;
  *(a2 + 14) = v4;
  *(a2 + 15) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t ContentTransition.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  v4 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v5 = *(v1 + 13);
  *(a1 + 13) = v5;
  return outlined copy of ContentTransition.Storage(v2, v4 | (v3 << 32), v5);
}

uint64_t ContentTransition.storage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 2);
  result = outlined consume of ContentTransition.Storage(*v1, *(v1 + 8) | (*(v1 + 12) << 32), *(v1 + 13));
  *v1 = v2;
  *(v1 + 8) = v4;
  *(v1 + 12) = v3;
  return result;
}

uint64_t *ContentTransition.init(storage:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 2);
  v4 = *(result + 6);
  *(a2 + 14) = 0;
  *a2 = v2;
  *(a2 + 12) = v4;
  *(a2 + 8) = v3;
  return result;
}

void ContentTransition.NamedTransition.Name.hash(into:)()
{
  v1 = *v0;
  v2 = (*v0 >> 38) & 3;
  if (v2)
  {
    v3 = *(v0 + 8) | (*(v0 + 10) << 16);
    if (v2 == 1)
    {
      MEMORY[0x193AC11A0](6);
      ContentTransition.NumericTextConfiguration.hash(into:)();
    }

    else
    {
      if (v1 <= 0x8000000001)
      {
        v4 = (v1 ^ 0x8000000000 | *&v3 & 0xFFFFFFLL) != 0;
      }

      else if (v1 ^ 0x8000000002 | *&v3 & 0xFFFFFFLL)
      {
        if (v1 ^ 0x8000000003 | *&v3 & 0xFFFFFFLL)
        {
          v4 = 4;
        }

        else
        {
          v4 = 3;
        }
      }

      else
      {
        v4 = 2;
      }

      MEMORY[0x193AC11A0](v4);
    }
  }

  else
  {
    MEMORY[0x193AC11A0](5);
    Hasher._combine(_:)(v1 & 1);
  }
}

Swift::Int ContentTransition.NamedTransition.Name.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  v4 = (v1 >> 38) & 3;
  if (v4)
  {
    v5 = v3 | (v2 << 16);
    if (v4 == 1)
    {
      MEMORY[0x193AC11A0](6);
      ContentTransition.NumericTextConfiguration.hash(into:)();
    }

    else
    {
      if (v1 <= 0x8000000001)
      {
        v6 = (v1 ^ 0x8000000000 | *&v5 & 0xFFFFFFLL) != 0;
      }

      else if (v1 ^ 0x8000000002 | *&v5 & 0xFFFFFFLL)
      {
        if (v1 ^ 0x8000000003 | *&v5 & 0xFFFFFFLL)
        {
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }

      MEMORY[0x193AC11A0](v6);
    }
  }

  else
  {
    MEMORY[0x193AC11A0](5);
    Hasher._combine(_:)(v1 & 1);
  }

  return Hasher._finalize()();
}

void ContentTransition.NamedTransition.name.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 10) = v3;
  *(a1 + 8) = v2;
}

uint64_t ContentTransition.NamedTransition.name.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *v1 = *result;
  *(v1 + 10) = v3;
  *(v1 + 8) = v2;
  return result;
}

void ContentTransition.NamedTransition.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 11);
  v3 = *(v0 + 12);
  v4 = (*v0 >> 38) & 3;
  if (v4)
  {
    v5 = *(v0 + 8) | (*(v0 + 10) << 16);
    if (v4 == 1)
    {
      MEMORY[0x193AC11A0](6);
      ContentTransition.NumericTextConfiguration.hash(into:)();
      if (v2 != 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v1 <= 0x8000000001)
      {
        v6 = (v1 ^ 0x8000000000 | *&v5 & 0xFFFFFFLL) != 0;
      }

      else if (v1 ^ 0x8000000002 | *&v5 & 0xFFFFFFLL)
      {
        if (v1 ^ 0x8000000003 | *&v5 & 0xFFFFFFLL)
        {
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }

      MEMORY[0x193AC11A0](v6);
      if (v2 != 2)
      {
LABEL_16:
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v2 & 1);
        if (v3 == 3)
        {
          goto LABEL_17;
        }

LABEL_7:
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v3);
        return;
      }
    }
  }

  else
  {
    MEMORY[0x193AC11A0](5);
    Hasher._combine(_:)(v1 & 1);
    if (v2 != 2)
    {
      goto LABEL_16;
    }
  }

  Hasher._combine(_:)(0);
  if (v3 != 3)
  {
    goto LABEL_7;
  }

LABEL_17:
  Hasher._combine(_:)(0);
}

Swift::Int ContentTransition.NamedTransition.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 8);
  v4 = *(v0 + 11);
  v5 = *(v0 + 12);
  Hasher.init(_seed:)();
  v6 = (v1 >> 38) & 3;
  if (v6)
  {
    v7 = v3 | (v2 << 16);
    if (v6 == 1)
    {
      MEMORY[0x193AC11A0](6);
      ContentTransition.NumericTextConfiguration.hash(into:)();
    }

    else
    {
      if (v1 <= 0x8000000001)
      {
        v8 = (v1 ^ 0x8000000000 | *&v7 & 0xFFFFFFLL) != 0;
      }

      else if (v1 ^ 0x8000000002 | *&v7 & 0xFFFFFFLL)
      {
        if (v1 ^ 0x8000000003 | *&v7 & 0xFFFFFFLL)
        {
          v8 = 4;
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 2;
      }

      MEMORY[0x193AC11A0](v8);
    }
  }

  else
  {
    MEMORY[0x193AC11A0](5);
    Hasher._combine(_:)(v1 & 1);
  }

  if (v4 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v4 & 1);
  }

  if (v5 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v5);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContentTransition.NamedTransition()
{
  Hasher.init(_seed:)();
  ContentTransition.NamedTransition.hash(into:)();
  return Hasher._finalize()();
}

BOOL static ContentTransition.NumericTextConfiguration.Direction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0 && v2 == v3;
  }

  v5 = LOBYTE(v3) ^ LOBYTE(v2) ^ 1;
  if (*(a2 + 4))
  {
    v5 = 0;
  }

  return v5 & 1;
}

void ContentTransition.NumericTextConfiguration.Direction.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4))
  {
    MEMORY[0x193AC11A0](1);
    if ((v1 & 0x7FFFFFFF) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    Hasher._combine(_:)(v2);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    Hasher._combine(_:)(v1 & 1);
  }
}

Swift::Int ContentTransition.NumericTextConfiguration.Direction.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    if ((v1 & 0x7FFFFFFF) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    Hasher._combine(_:)(v3);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    Hasher._combine(_:)(v1 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContentTransition.NumericTextConfiguration.Direction()
{
  Hasher.init(_seed:)();
  ContentTransition.NumericTextConfiguration.Direction.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ContentTransition.NumericTextConfiguration.Direction(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4))
  {
    return (*(a2 + 4) & 1) != 0 && v2 == v3;
  }

  v5 = LOBYTE(v3) ^ LOBYTE(v2) ^ 1;
  if (*(a2 + 4))
  {
    v5 = 0;
  }

  return v5 & 1;
}

void ContentTransition.NumericTextConfiguration.direction.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t ContentTransition.NumericTextConfiguration.direction.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

double ContentTransition.NumericTextConfiguration.init(direction:axis:options:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v4 = *(a1 + 4);
  *a4 = *a1;
  *(a4 + 4) = v4;
  *(a4 + 5) = a2;
  *(a4 + 6) = v5;
  *&result = 320877330;
  *(a4 + 7) = 320877330;
  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.delay.setter(float a1)
{
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a1 * 120.0);
  *(v1 + 7) = result;
  return result;
}

uint64_t (*ContentTransition.NumericTextConfiguration.delay.modify(uint64_t a1, float a2))(float *a1)
{
  *a1 = v2;
  LOBYTE(a2) = *(v2 + 7);
  *(a1 + 8) = LODWORD(a2) * 0.0083333;
  return ContentTransition.NumericTextConfiguration.delay.modify;
}

uint64_t ContentTransition.NumericTextConfiguration.delay.modify(float *a1)
{
  v1 = *a1;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a1[2] * 120.0);
  *(v1 + 7) = result;
  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.scale.setter(float a1)
{
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a1 * 128.0);
  *(v1 + 8) = result;
  return result;
}

uint64_t (*ContentTransition.NumericTextConfiguration.scale.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = vcvts_n_f32_u32(*(v1 + 8), 7uLL);
  return ContentTransition.NumericTextConfiguration.scale.modify;
}

uint64_t ContentTransition.NumericTextConfiguration.scale.modify(float *a1)
{
  v1 = *a1;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a1[2] * 128.0);
  *(v1 + 8) = result;
  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.blur.setter(float a1)
{
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a1 * 4.0);
  *(v1 + 9) = result;
  if ((*(v1 + 6) & 2) != 0)
  {
    *(v1 + 6) &= ~2u;
  }

  return result;
}

uint64_t (*ContentTransition.NumericTextConfiguration.blur.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = vcvts_n_f32_u32(*(v1 + 9), 2uLL);
  return ContentTransition.NumericTextConfiguration.blur.modify;
}

uint64_t ContentTransition.NumericTextConfiguration.blur.modify(float *a1)
{
  v1 = *a1;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a1[2] * 4.0);
  *(v1 + 9) = result;
  if ((*(v1 + 6) & 2) != 0)
  {
    *(v1 + 6) &= ~2u;
  }

  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.relativeBlur.setter(float a1)
{
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a1 * 128.0);
  *(v1 + 9) = result;
  if ((*(v1 + 6) & 2) == 0)
  {
    *(v1 + 6) |= 2u;
  }

  return result;
}

uint64_t (*ContentTransition.NumericTextConfiguration.relativeBlur.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = vcvts_n_f32_u32(*(v1 + 9), 7uLL);
  return ContentTransition.NumericTextConfiguration.relativeBlur.modify;
}

uint64_t ContentTransition.NumericTextConfiguration.relativeBlur.modify(float *a1)
{
  v1 = *a1;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(a1[2] * 128.0);
  *(v1 + 9) = result;
  if ((*(v1 + 6) & 2) == 0)
  {
    *(v1 + 6) |= 2u;
  }

  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.offset.setter(float a1)
{
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs4Int8V_SfTt1g5(a1 * 32.0);
  *(v1 + 10) = result;
  return result;
}

uint64_t (*ContentTransition.NumericTextConfiguration.offset.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = vcvts_n_f32_s32(*(v1 + 10), 5uLL);
  return ContentTransition.NumericTextConfiguration.offset.modify;
}

uint64_t ContentTransition.NumericTextConfiguration.offset.modify(float *a1)
{
  v1 = *a1;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs4Int8V_SfTt1g5(a1[2] * 32.0);
  *(v1 + 10) = result;
  return result;
}

Swift::Int ContentTransition.NumericTextConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  ContentTransition.NumericTextConfiguration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContentTransition.NumericTextConfiguration()
{
  Hasher.init(_seed:)();
  ContentTransition.NumericTextConfiguration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContentTransition.NamedTransition.Name(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t ContentTransition.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) | (*(result + 10) << 16) | 0x2000000;
  *a2 = *result;
  *(a2 + 12) = 3;
  *(a2 + 8) = v2;
  *(a2 + 13) = 0;
  return result;
}

uint64_t ContentTransition.CustomTransition.effects.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ContentTransition.CustomTransition.init(effects:method:layoutDirection:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *(a3 + 12) = 2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

BOOL static ContentTransition.EffectType.Arg.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (!*(a1 + 4))
  {
    return !*(a2 + 4) && v2 == v3;
  }

  if (*(a1 + 4) == 1)
  {
    if (v4 == 1)
    {
      return LODWORD(v2) == LODWORD(v3);
    }

    return 0;
  }

  return v4 == 2 && LODWORD(v3) == 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ContentTransition.EffectType.Arg(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (!*(a1 + 4))
  {
    return !*(a2 + 4) && v2 == v3;
  }

  if (*(a1 + 4) == 1)
  {
    if (v4 == 1)
    {
      return LODWORD(v2) == LODWORD(v3);
    }

    return 0;
  }

  return v4 == 2 && LODWORD(v3) == 0;
}

void ContentTransition.EffectType.arg0.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *(v1 + 4);
  *(a1 + 4) = v2;
}

uint64_t ContentTransition.EffectType.arg0.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 4) = *result;
  *(v1 + 8) = v2;
  return result;
}

void ContentTransition.EffectType.arg1.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 12);
  *(a1 + 4) = v2;
}

uint64_t ContentTransition.EffectType.arg1.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 12) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t ContentTransition.EffectType.init(type:arg0:arg1:)@<X0>(uint64_t result@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  v6 = *a3;
  v7 = *(a3 + 4);
  *a4 = result;
  *(a4 + 4) = v4;
  *(a4 + 8) = v5;
  *(a4 + 12) = v6;
  *(a4 + 16) = v7;
  return result;
}

double static ContentTransition.EffectType.opacity(_:)@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = 1;
  *(a1 + 8) = 2;
  *(a1 + 12) = 0;
  *(a1 + 16) = 2;
  return result;
}

float static ContentTransition.EffectType.blur(radius:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 4;
  result = a2;
  *(a1 + 4) = result;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 2;
  return result;
}

float static ContentTransition.EffectType.relativeBlur(scale:)@<S0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v3 = a2;
  *a1 = 16;
  *(a1 + 4) = v3;
  *(a1 + 8) = 0;
  result = a3;
  *(a1 + 12) = result;
  *(a1 + 16) = 0;
  return result;
}

float static ContentTransition.EffectType.scale(_:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 2;
  result = a2;
  *(a1 + 4) = result;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 2;
  return result;
}

float static ContentTransition.EffectType.translation(scale:)@<S0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v3 = a2;
  *a1 = 15;
  *(a1 + 4) = v3;
  *(a1 + 8) = 0;
  result = a3;
  *(a1 + 12) = result;
  *(a1 + 16) = 0;
  return result;
}

double static ContentTransition.EffectType.matchMove.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 5;
  *a1 = 5;
  *(a1 + 8) = 2;
  *(a1 + 12) = 0;
  *(a1 + 16) = 2;
  return result;
}

double ContentTransition.Effect.type.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  v4 = *(v1 + 16);
  result = *v1;
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v4;
  return result;
}

double ContentTransition.Effect.type.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  result = *a1;
  *v1 = *a1;
  *(v1 + 8) = v2;
  *(v1 + 12) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ContentTransition.Effect.init(type:begin:duration:events:flags:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v6 = *(result + 8);
  v7 = *(result + 12);
  v8 = *(result + 16);
  *a4 = *result;
  *(a4 + 8) = v6;
  *(a4 + 12) = v7;
  *(a4 + 16) = v8;
  *(a4 + 20) = a5;
  *(a4 + 24) = a6;
  *(a4 + 28) = a2;
  *(a4 + 32) = a3;
  return result;
}

double static ContentTransition.Effect.sequence(direction:delay:maxAllowedDurationMultiple:appliesOnInsertion:appliesOnRemoval:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = a4;
  v5 = a3;
  *a2 = dword_18DE11E90[*a1];
  *(a2 + 4) = 0;
  *(a2 + 8) = 2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 2;
  *(a2 + 20) = v5;
  *(a2 + 24) = 1.0 / v4;
  *&result = 3;
  *(a2 + 28) = 3;
  return result;
}

__n128 ContentTransition.Effect.removeInverts(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32) & 0xFFFFFFFE | a1 & 1;
  result = *v2;
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

uint64_t static ContentTransition.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static ContentTransition.default;
  v3 = byte_1ED53699C;
  v4 = dword_1ED536998;
  v5 = dword_1ED536998 | (byte_1ED53699C << 32);
  v6 = byte_1ED53699E;
  *a1 = static ContentTransition.default;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = byte_1ED53699D;
  *(a1 + 13) = byte_1ED53699D;
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

void one-time initialization function for fadeIfDifferent()
{
  static ContentTransition.fadeIfDifferent = 0x8000000004;
  byte_1ED527B44 = 3;
  dword_1ED527B40 = 0x2000000;
  *&byte_1ED527B45 = 0;
}

uint64_t static ContentTransition.fadeIfDifferent.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for fadeIfDifferent != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static ContentTransition.fadeIfDifferent;
  v3 = word_1ED527B44;
  v4 = dword_1ED527B40;
  v5 = dword_1ED527B40 | (word_1ED527B44 << 32);
  v6 = byte_1ED527B46;
  *a1 = static ContentTransition.fadeIfDifferent;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = HIBYTE(word_1ED527B44);
  *(a1 + 13) = HIBYTE(word_1ED527B44);
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

double static ContentTransition.NumericTextConfiguration.fixed(downwards:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1 & 1;
  *(a2 + 4) = 0;
  *&result = 856818178;
  *(a2 + 5) = 856818178;
  *(a2 + 9) = 4896;
  return result;
}

uint64_t static ContentTransition.numericText(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) | (*(result + 10) << 16) | 0x2000000;
  *a2 = *result & 0xFFFFFF01FFFFFFFFLL | 0x4000000000;
  *(a2 + 12) = 3;
  *(a2 + 8) = v2;
  *(a2 + 13) = 0;
  return result;
}

float static ContentTransition.numericText(value:)@<S0>(uint64_t a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = LODWORD(result) | 0x1202024100000000;
  *(a1 + 12) = 3;
  *(a1 + 8) = 34807859;
  *(a1 + 13) = 0;
  return result;
}

double static ContentTransition.NumericTextConfiguration.automatic(value:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = a2;
  *a1 = v2;
  *(a1 + 4) = 1;
  *&result = 856818178;
  *(a1 + 5) = 856818178;
  *(a1 + 9) = 4896;
  return result;
}

void ContentTransition.style.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 13))
  {
    *a1 = 3;
  }

  else
  {
    *a1 = *(v1 + 12);
  }
}

char *key path setter for ContentTransition.style : ContentTransition(char *result, uint64_t a2)
{
  if (!*(a2 + 13))
  {
    v2 = a2 + 8;
    v3 = *(a2 + 8);
    v4 = *a2;
    v5 = *result;
    result = outlined consume of ContentTransition.Storage(*a2, v3 | (*(a2 + 12) << 32), 0);
    *a2 = v4;
    *(v2 + 4) = v5;
    *v2 = v3;
    *(a2 + 13) = 0;
  }

  return result;
}

char *ContentTransition.style.setter(char *result)
{
  if (!*(v1 + 13))
  {
    v2 = *(v1 + 8);
    v3 = *v1;
    v4 = *result;
    result = outlined consume of ContentTransition.Storage(*v1, v2 | (*(v1 + 12) << 32), 0);
    *v1 = v3;
    *(v1 + 12) = v4;
    *(v1 + 8) = v2;
    *(v1 + 13) = 0;
  }

  return result;
}

char *(*ContentTransition.style.modify(uint64_t a1))(void *a1)
{
  *a1 = v1;
  if (*(v1 + 13))
  {
    v2 = 3;
  }

  else
  {
    v2 = *(v1 + 12);
  }

  *(a1 + 8) = v2;
  return ContentTransition.style.modify;
}

char *ContentTransition.style.modify(void *a1)
{
  v3 = *a1;
  result = (a1 + 1);
  v2 = v3;
  if (!*(v3 + 13))
  {
    v4 = *(v2 + 8);
    v5 = *v2;
    v6 = *result;
    result = outlined consume of ContentTransition.Storage(*v2, v4 | (*(v2 + 12) << 32), 0);
    *v2 = v5;
    *(v2 + 12) = v6;
    *(v2 + 8) = v4;
    *(v2 + 13) = 0;
  }

  return result;
}

void ContentTransition.NamedKey.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 11);
  v3 = *(v0 + 12);
  v4 = *(v0 + 13);
  v5 = (*v0 >> 38) & 3;
  if (v5)
  {
    v6 = *(v0 + 8) | (*(v0 + 10) << 16);
    if (v5 == 1)
    {
      MEMORY[0x193AC11A0](6);
      ContentTransition.NumericTextConfiguration.hash(into:)();
      if (v2 != 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v1 <= 0x8000000001)
      {
        v7 = (v1 ^ 0x8000000000 | *&v6 & 0xFFFFFFLL) != 0;
      }

      else if (v1 ^ 0x8000000002 | *&v6 & 0xFFFFFFLL)
      {
        if (v1 ^ 0x8000000003 | *&v6 & 0xFFFFFFLL)
        {
          v7 = 4;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v7 = 2;
      }

      MEMORY[0x193AC11A0](v7);
      if (v2 != 2)
      {
LABEL_16:
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v2 & 1);
        if (v3 == 3)
        {
          goto LABEL_17;
        }

        goto LABEL_7;
      }
    }
  }

  else
  {
    MEMORY[0x193AC11A0](5);
    Hasher._combine(_:)(v1 & 1);
    if (v2 != 2)
    {
      goto LABEL_16;
    }
  }

  Hasher._combine(_:)(0);
  if (v3 == 3)
  {
LABEL_17:
    Hasher._combine(_:)(0);
    goto LABEL_18;
  }

LABEL_7:
  Hasher._combine(_:)(1u);
  MEMORY[0x193AC11A0](v3);
LABEL_18:
  Hasher._combine(_:)(v4);
}

Swift::Int ContentTransition.NamedKey.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 8);
  v4 = *(v0 + 11);
  v5 = *(v0 + 12);
  v6 = *(v0 + 13);
  Hasher.init(_seed:)();
  v7 = (v1 >> 38) & 3;
  if (v7)
  {
    v8 = v3 | (v2 << 16);
    if (v7 == 1)
    {
      MEMORY[0x193AC11A0](6);
      ContentTransition.NumericTextConfiguration.hash(into:)();
    }

    else
    {
      if (v1 <= 0x8000000001)
      {
        v9 = (v1 ^ 0x8000000000 | *&v8 & 0xFFFFFFLL) != 0;
      }

      else if (v1 ^ 0x8000000002 | *&v8 & 0xFFFFFFLL)
      {
        if (v1 ^ 0x8000000003 | *&v8 & 0xFFFFFFLL)
        {
          v9 = 4;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }

      MEMORY[0x193AC11A0](v9);
    }
  }

  else
  {
    MEMORY[0x193AC11A0](5);
    Hasher._combine(_:)(v1 & 1);
  }

  if (v4 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v4 & 1);
  }

  if (v5 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v5);
  }

  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContentTransition.NamedKey()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[13];
  Hasher.init(_seed:)();
  ContentTransition.NamedTransition.Name.hash(into:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1 & 1);
  }

  if (v2 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v2);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ContentTransition.NamedKey(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 10);
  v4 = *(a1 + 11);
  v5 = *(a1 + 13);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  v10 = *(a2 + 13);
  v16 = *a1;
  v18 = v3;
  v17 = v2;
  v19 = v4;
  v12 = v6;
  v14 = v8;
  v13 = v7;
  v15 = v9;
  return specialized static ContentTransition.NamedTransition.== infix(_:_:)(&v16, &v12) & ~(v5 ^ v10) & 1;
}

uint64_t ContentTransition.State.init(transition:style:animation:options:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 2) | (*(a1 + 12) << 32);
  v9 = *(a1 + 13);
  v10 = *(a1 + 14);
  v11 = *a2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = static ContentTransition.default;
  v13 = dword_1ED536998 | (byte_1ED53699C << 32);
  v14 = byte_1ED53699D;
  outlined copy of ContentTransition.Storage(static ContentTransition.default, v13, byte_1ED53699D);
  result = outlined consume of ContentTransition.Storage(v12, v13, v14);
  *a5 = v7;
  *(a5 + 12) = BYTE4(v8);
  *(a5 + 8) = v8;
  *(a5 + 13) = v9;
  *(a5 + 14) = v10;
  *(a5 + 15) = v11;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t static ContentTransition.State.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static ContentTransition.State.defaultValue;
  v2 = BYTE12(static ContentTransition.State.defaultValue);
  v3 = DWORD2(static ContentTransition.State.defaultValue);
  v4 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
  v5 = BYTE14(static ContentTransition.State.defaultValue);
  v6 = HIBYTE(static ContentTransition.State.defaultValue);
  v7 = off_1ED536620;
  v8 = dword_1ED536628;
  *a1 = static ContentTransition.State.defaultValue;
  *(a1 + 12) = v2;
  *(a1 + 8) = v3;
  v9 = BYTE13(static ContentTransition.State.defaultValue);
  *(a1 + 13) = BYTE13(static ContentTransition.State.defaultValue);
  *(a1 + 14) = v5;
  *(a1 + 15) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  outlined copy of ContentTransition.Storage(v1, v4, v9);
}

uint64_t ContentTransition.State.animation.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.axis(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 4) = *(v2 + 4);
  *(a2 + 5) = result & 1;
  *(a2 + 6) = *(v2 + 6);
  *(a2 + 10) = *(v2 + 10);
  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.delay(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = a2;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(v4 * 120.0);
  *a1 = *v2;
  *(a1 + 3) = *(v2 + 3);
  *(a1 + 7) = result;
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 10) = *(v2 + 10);
  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.scale(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *v2;
  v5 = *(v2 + 9);
  v6 = a2;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(v6 * 128.0);
  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 9) = v5;
  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.blur(radius:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 6);
  v5 = *(v2 + 7);
  v6 = *(v2 + 10);
  v7 = a2;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs5UInt8V_SfTt1g5(v7 * 4.0);
  *a1 = *v2;
  *(a1 + 4) = *(v2 + 4);
  *(a1 + 6) = v4 & 0xFD;
  *(a1 + 7) = v5;
  *(a1 + 9) = result;
  *(a1 + 10) = v6;
  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.relativeOffset(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = a2;
  result = _ss17FixedWidthIntegerP7SwiftUIE8clampingxqd___tcSBRd__lufCs4Int8V_SfTt1g5(v4 * 32.0);
  *a1 = *v2;
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 10) = result;
  return result;
}

uint64_t ContentTransition.NumericTextConfiguration.reversed(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 7);
  v4 = *(v2 + 6) & 0xFE | result;
  *a2 = *v2;
  *(a2 + 4) = *(v2 + 4);
  *(a2 + 6) = v4;
  *(a2 + 7) = v3;
  return result;
}

uint64_t View.contentTransition(_:animation:options:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a1 + 12);
  v6 = *(a1 + 8);
  v7 = v6 | (v5 << 32);
  v8 = *(a1 + 14);
  v14 = *a1;
  v4 = v14;
  v16 = v5;
  v15 = v6;
  v17 = *(a1 + 13);
  v9 = v17;
  v18 = v8;
  v19 = a2;
  v20 = a3;
  View.modifier<A>(_:)(&v14, a4, &type metadata for _ContentTransitionModifier);
  v10 = v14;
  v11 = v15 | (v16 << 32);
  v12 = v17;
  outlined copy of ContentTransition.Storage(v4, v7, v9);

  outlined consume of ContentTransition.Storage(v10, v11, v12);
}

uint64_t _ContentTransitionModifier.init(transition:animation:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  v5 = *(result + 12);
  v6 = *(result + 14);
  *a4 = *result;
  *(a4 + 12) = v5;
  *(a4 + 8) = v4;
  *(a4 + 14) = v6;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t ContentTransition.State.transition.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  v4 = *(v1 + 8);
  v5 = *(v1 + 14);
  *a1 = *v1;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v6 = *(v1 + 13);
  *(a1 + 13) = v6;
  *(a1 + 14) = v5;
  return outlined copy of ContentTransition.Storage(v2, v4 | (v3 << 32), v6);
}

uint64_t ContentTransition.State.transition.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 2);
  v5 = *(a1 + 14);
  result = outlined consume of ContentTransition.Storage(*v1, *(v1 + 8) | (*(v1 + 12) << 32), *(v1 + 13));
  *v1 = v2;
  *(v1 + 8) = v4;
  *(v1 + 12) = v3;
  *(v1 + 14) = v5;
  return result;
}

uint64_t key path getter for EnvironmentValues.contentTransitionState : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v11);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2g5(*a1, &v11);
  }

  v5 = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  *a2 = v11;
  *(a2 + 12) = v6;
  *(a2 + 8) = v5;
  *(a2 + 14) = v7;
  *(a2 + 15) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return result;
}

uint64_t key path setter for EnvironmentValues.contentTransitionState : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) | (*(a1 + 12) << 32);
  v5 = *(a1 + 13);
  v6 = *(a1 + 14);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *a2;
  v10 = *(a1 + 15);
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v3, v4, v5);
  v11 = 0x1000000000000;
  if (!v6)
  {
    v11 = 0;
  }

  v12 = v4 | (v5 << 40) | v11 | (v10 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(a2, v3, v12, v7, v8);

  outlined consume of ContentTransition.Storage(v3, v4, v5);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v9, *a2);
  }
}

void (*EnvironmentValues.contentTransitionState.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[6] = v1;
  v5 = *v1;
  v3[7] = *v1;
  v6 = *(v1 + 8);
  v3[8] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v5, v4);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v5);
    if (v7)
    {
      v8 = v7[9];
      v9 = *(v7 + 84);
      v10 = *(v7 + 20);
      v11 = v10 | (v9 << 32);
      v12 = *(v7 + 86);
      v13 = *(v7 + 87);
      v14 = v7[11];
      v15 = *(v7 + 24);
      v16 = *(v7 + 85);
      *v4 = v8;
      *(v4 + 8) = v10;
      *(v4 + 12) = v9;
      *(v4 + 13) = v16;
      *(v4 + 14) = v12;
      *(v4 + 15) = v13;
      *(v4 + 16) = v14;
      *(v4 + 24) = v15;
      v17 = v8;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v17 = static ContentTransition.State.defaultValue;
      v18 = BYTE12(static ContentTransition.State.defaultValue);
      v19 = DWORD2(static ContentTransition.State.defaultValue);
      v11 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v20 = BYTE14(static ContentTransition.State.defaultValue);
      v21 = HIBYTE(static ContentTransition.State.defaultValue);
      v22 = off_1ED536620;
      v23 = dword_1ED536628;
      v16 = BYTE13(static ContentTransition.State.defaultValue);
      *v4 = static ContentTransition.State.defaultValue;
      *(v4 + 8) = v19;
      *(v4 + 12) = v18;
      *(v4 + 13) = v16;
      *(v4 + 14) = v20;
      *(v4 + 15) = v21;
      *(v4 + 16) = v22;
      *(v4 + 24) = v23;
    }

    outlined copy of ContentTransition.Storage(v17, v11, v16);
  }

  return EnvironmentValues.contentTransitionState.modify;
}

void EnvironmentValues.contentTransitionState.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 2) | (*(*a1 + 12) << 32);
  v6 = *(*a1 + 13);
  v7 = *(*a1 + 14);
  v8 = *(*a1 + 15);
  v9 = (*a1)[2];
  v18 = *(*a1 + 6);

  v19 = v3[8];
  v10 = v3[6];
  if (a2)
  {
    outlined copy of ContentTransition.Storage(v4, v5, v6);

    outlined copy of ContentTransition.Storage(v4, v5, v6);
    v11 = 0x1000000000000;
    if (!v7)
    {
      v11 = 0;
    }

    v12 = v5 & 0xFFFFFFFFFFLL | (v6 << 40) | v11 | (v8 << 56);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v10, v4, v12, v9, v18);

    outlined consume of ContentTransition.Storage(v4, v5, v6);

    if (v19)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v3[7], *v3[6]);
    }

    outlined consume of ContentTransition.Storage(v4, v5, v6);

    v13 = *v3;
    v14 = *(v3 + 2) | (*(v3 + 12) << 32);
    v15 = *(v3 + 13);
  }

  else
  {

    outlined copy of ContentTransition.Storage(v4, v5, v6);
    v16 = 0x1000000000000;
    if (!v7)
    {
      v16 = 0;
    }

    v17 = v5 & 0xFFFFFFFFFFLL | (v6 << 40) | v16 | (v8 << 56);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v10, v4, v17, v9, v18);

    outlined consume of ContentTransition.Storage(v4, v5, v6);

    if (v19)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v3[7], *v3[6]);
    }

    v13 = v4;
    v14 = v5;
    v15 = v6;
  }

  outlined consume of ContentTransition.Storage(v13, v14, v15);

  free(v3);
}

void (*EnvironmentValues.contentTransition.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v5, &v13);

    v7 = v13;
    v8 = v14 | (v15 << 32);
    v9 = v16;
    v10 = v17;
  }

  else
  {
    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v5);
    if (v11)
    {
      v7 = v11[9];
      v8 = *(v11 + 20) | (*(v11 + 84) << 32);
      v9 = *(v11 + 85);
      v10 = *(v11 + 86);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v7 = static ContentTransition.State.defaultValue;
      v8 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v9 = BYTE13(static ContentTransition.State.defaultValue);
      v10 = BYTE14(static ContentTransition.State.defaultValue);
    }

    outlined copy of ContentTransition.Storage(v7, v8, v9);
  }

  outlined copy of ContentTransition.Storage(v7, v8, v9);
  outlined consume of ContentTransition.Storage(v7, v8, v9);

  *v4 = v7;
  *(v4 + 12) = BYTE4(v8);
  *(v4 + 2) = v8;
  *(v4 + 13) = v9;
  *(v4 + 14) = v10;
  return EnvironmentValues.contentTransition.modify;
}

void EnvironmentValues.contentTransition.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 2) | (*(*a1 + 12) << 32);
  v5 = *(*a1 + 13);
  v35 = *(*a1 + 14);
  v6 = (*a1)[6];
  if (a2)
  {
    v7 = v2[5];
    if (v6)
    {

      outlined copy of ContentTransition.Storage(v3, v4, v5);
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v7, &v36);

      v8 = v36;
      v9 = v37 | (v38 << 32);
      v10 = v39;
      v30 = v40;
      v11 = v41;
      v32 = v42;
    }

    else
    {
      outlined copy of ContentTransition.Storage(v3, v4, v5);
      v17 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v7);
      if (v17)
      {
        v18 = v17[9];
        v9 = *(v17 + 20) | (*(v17 + 84) << 32);
        v10 = *(v17 + 85);
        v30 = *(v17 + 87);
        v11 = v17[11];
        v19 = *(v17 + 24);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v18 = static ContentTransition.State.defaultValue;
        v9 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
        v10 = BYTE13(static ContentTransition.State.defaultValue);
        v30 = HIBYTE(static ContentTransition.State.defaultValue);
        v11 = off_1ED536620;
        v19 = dword_1ED536628;
      }

      v32 = v19;
      outlined copy of ContentTransition.Storage(v18, v9, v10);

      v8 = v18;
    }

    v22 = v2[6];
    v23 = v2[4];
    outlined consume of ContentTransition.Storage(v8, v9, v10);
    swift_retain_n();
    outlined copy of ContentTransition.Storage(v3, v4, v5);
    v24 = 0x1000000000000;
    if (!v35)
    {
      v24 = 0;
    }

    v25 = v4 & 0xFFFFFFFFFFLL | (v5 << 40) | v24 | (v30 << 56);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v23, v3, v25, v11, v32);

    outlined consume of ContentTransition.Storage(v3, v4, v5);

    if (v22)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v2[5], *v2[4]);
    }

    outlined consume of ContentTransition.Storage(v3, v4, v5);

    outlined consume of ContentTransition.Storage(*v2, *(v2 + 2) | (*(v2 + 12) << 32), *(v2 + 13));
  }

  else
  {
    v12 = v2[5];
    v34 = *(*a1 + 13);
    if (v6)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v12, &v36);

      v13 = v36;
      v14 = v37 | (v38 << 32);
      v15 = v39;
      v31 = v40;
      v16 = v41;
      v33 = v42;
    }

    else
    {
      v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v12);
      if (v20)
      {
        v13 = v20[9];
        v14 = *(v20 + 20) | (*(v20 + 84) << 32);
        v15 = *(v20 + 85);
        v31 = *(v20 + 87);
        v16 = v20[11];
        v21 = *(v20 + 24);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v13 = static ContentTransition.State.defaultValue;
        v14 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
        v15 = BYTE13(static ContentTransition.State.defaultValue);
        v31 = HIBYTE(static ContentTransition.State.defaultValue);
        v16 = off_1ED536620;
        v21 = dword_1ED536628;
      }

      v33 = v21;
      outlined copy of ContentTransition.Storage(v13, v14, v15);
    }

    v26 = v2[6];
    v27 = v2[4];
    outlined consume of ContentTransition.Storage(v13, v14, v15);
    swift_retain_n();
    outlined copy of ContentTransition.Storage(v3, v4, v34);
    v28 = 0x1000000000000;
    if (!v35)
    {
      v28 = 0;
    }

    v29 = v4 & 0xFFFFFFFFFFLL | (v34 << 40) | v28 | (v31 << 56);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v27, v3, v29, v16, v33);

    outlined consume of ContentTransition.Storage(v3, v4, v34);

    if (v26)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v2[5], *v2[4]);
    }

    outlined consume of ContentTransition.Storage(v3, v4, v34);
  }

  free(v2);
}

void (*EnvironmentValues.contentTransitionStyle.modify(void *a1))(uint64_t *a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v5, &v13);

    v7 = v13;
    v8 = v14 | (v15 << 32);
    v9 = v16;
    v10 = v17;
  }

  else
  {
    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v5);
    if (v11)
    {
      v7 = v11[9];
      v8 = *(v11 + 20) | (*(v11 + 84) << 32);
      v9 = *(v11 + 85);
      v10 = *(v11 + 87);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v7 = static ContentTransition.State.defaultValue;
      v8 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v9 = BYTE13(static ContentTransition.State.defaultValue);
      v10 = HIBYTE(static ContentTransition.State.defaultValue);
    }

    outlined copy of ContentTransition.Storage(v7, v8, v9);
  }

  outlined consume of ContentTransition.Storage(v7, v8, v9);

  *(v4 + 40) = v10;
  return EnvironmentValues.contentTransitionStyle.modify;
}

void EnvironmentValues.contentTransitionStyle.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v21 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  if (a2)
  {
    v4 = *(v2 + 24);
    if (v3)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v4, &v22);

      v5 = v22;
      v6 = v23 | (v24 << 32);
      v7 = v25;
      v8 = v26;
      v9 = v27;
      v20 = v28;
    }

    else
    {
      v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(*(v2 + 24));
      if (v12)
      {
        v5 = v12[9];
        v6 = *(v12 + 20) | (*(v12 + 84) << 32);
        v7 = *(v12 + 85);
        v8 = *(v12 + 86);
        v9 = v12[11];
        v13 = *(v12 + 24);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v5 = static ContentTransition.State.defaultValue;
        v6 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
        v7 = BYTE13(static ContentTransition.State.defaultValue);
        v8 = BYTE14(static ContentTransition.State.defaultValue);
        v9 = off_1ED536620;
        v13 = dword_1ED536628;
      }

      v20 = v13;
      outlined copy of ContentTransition.Storage(v5, v6, v7);
    }

    v16 = *(v2 + 32);
    v17 = *(v2 + 16);
    swift_retain_n();
    outlined copy of ContentTransition.Storage(v5, v6, v7);
    v18 = 0x1000000000000;
    if (!v8)
    {
      v18 = 0;
    }
  }

  else
  {
    v10 = *(v2 + 24);
    if (v3)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v10, &v22);

      v5 = v22;
      v6 = v23 | (v24 << 32);
      v7 = v25;
      v11 = v26;
      v9 = v27;
      v20 = v28;
    }

    else
    {
      v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(*(v2 + 24));
      if (v14)
      {
        v5 = v14[9];
        v6 = *(v14 + 20) | (*(v14 + 84) << 32);
        v7 = *(v14 + 85);
        v11 = *(v14 + 86);
        v9 = v14[11];
        v15 = *(v14 + 24);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v5 = static ContentTransition.State.defaultValue;
        v6 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
        v7 = BYTE13(static ContentTransition.State.defaultValue);
        v11 = BYTE14(static ContentTransition.State.defaultValue);
        v9 = off_1ED536620;
        v15 = dword_1ED536628;
      }

      v20 = v15;
      outlined copy of ContentTransition.Storage(v5, v6, v7);
    }

    v16 = *(v2 + 32);
    v17 = *(v2 + 16);
    swift_retain_n();
    outlined copy of ContentTransition.Storage(v5, v6, v7);
    v18 = 0x1000000000000;
    if (!v11)
    {
      v18 = 0;
    }
  }

  v19 = v18 | (v21 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v17, v5, v6 & 0xFFFFFFFFFFLL | (v7 << 40) | v19, v9, v20);

  outlined consume of ContentTransition.Storage(v5, v6, v7);

  if (v16)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(*(v2 + 24), **(v2 + 16));
  }

  outlined consume of ContentTransition.Storage(v5, v6, v7);

  free(v2);
}

void *EnvironmentValues.contentTransitionAnimation.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v1, &v8);

    v2 = v8;
    v3 = v9 | (v10 << 32);
    v4 = v11;
    v5 = v12;
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v1);
    if (v6)
    {
      v2 = v6[9];
      v3 = *(v6 + 20) | (*(v6 + 84) << 32);
      v4 = *(v6 + 85);
      v5 = v6[11];
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v2 = static ContentTransition.State.defaultValue;
      v3 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v4 = BYTE13(static ContentTransition.State.defaultValue);
      v5 = off_1ED536620;
    }

    outlined copy of ContentTransition.Storage(v2, v3, v4);
  }

  outlined consume of ContentTransition.Storage(v2, v3, v4);

  return v5;
}

uint64_t key path getter for EnvironmentValues.contentTransitionAnimation : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v9);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2g5(*a1, &v9);
  }

  v4 = v9;
  v5 = v10 | (v11 << 32);
  v6 = v13;
  v7 = v12;

  outlined consume of ContentTransition.Storage(v4, v5, v7);

  *a2 = v6;
  return result;
}

uint64_t EnvironmentValues.contentTransitionAnimation.setter(uint64_t a1)
{
  specialized EnvironmentValues.contentTransitionAnimation.setter(a1);
}

uint64_t (*EnvironmentValues.contentTransitionAnimation.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v10);

    v4 = v10;
    v5 = v11 | (v12 << 32);
    v6 = v13;
    v7 = v14;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v3);
    if (v8)
    {
      v4 = v8[9];
      v5 = *(v8 + 20) | (*(v8 + 84) << 32);
      v6 = *(v8 + 85);
      v7 = v8[11];
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static ContentTransition.State.defaultValue;
      v5 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v6 = BYTE13(static ContentTransition.State.defaultValue);
      v7 = off_1ED536620;
    }

    outlined copy of ContentTransition.Storage(v4, v5, v6);
  }

  outlined consume of ContentTransition.Storage(v4, v5, v6);

  *a1 = v7;
  return EnvironmentValues.contentTransitionAnimation.modify;
}

uint64_t EnvironmentValues.contentTransitionAnimation.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    specialized EnvironmentValues.contentTransitionAnimation.setter(v3);
  }

  else
  {
    specialized EnvironmentValues.contentTransitionAnimation.setter(v2);
  }
}

uint64_t (*EnvironmentValues.contentTransitionAddsDrawingGroup.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v3, &v10);

    v4 = v10;
    v5 = v11 | (v12 << 32);
    v6 = v13;
    LOBYTE(v7) = v14;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v3);
    if (v8)
    {
      v4 = v8[9];
      v5 = *(v8 + 20) | (*(v8 + 84) << 32);
      v6 = *(v8 + 85);
      v7 = *(v8 + 24);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static ContentTransition.State.defaultValue;
      v5 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v6 = BYTE13(static ContentTransition.State.defaultValue);
      LOBYTE(v7) = dword_1ED536628;
    }

    outlined copy of ContentTransition.Storage(v4, v5, v6);
  }

  outlined consume of ContentTransition.Storage(v4, v5, v6);

  *(a1 + 8) = v7 & 1;
  return EnvironmentValues.contentTransitionAddsDrawingGroup.modify;
}

void EnvironmentValues.contentTransitionGroupEffect.getter(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  if (v3)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v4, &v26);

    v5 = v28;
    if ((v28 & 4) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v4);
  if (v7)
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 20);
    v10 = v9 | (v8 << 32);
    v11 = *(v7 + 86);
    v12 = *(v7 + 87);
    v13 = v7[11];
    v5 = *(v7 + 24);
    *&v26 = v7[9];
    BYTE12(v26) = v8;
    DWORD2(v26) = v9;
    v14 = *(v7 + 85);
    BYTE13(v26) = v14;
    BYTE14(v26) = v11;
    HIBYTE(v26) = v12;
    v27 = v13;
    v28 = v5;
    v15 = v26;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v15 = static ContentTransition.State.defaultValue;
    v10 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
    v5 = dword_1ED536628;
    v26 = static ContentTransition.State.defaultValue;
    v14 = BYTE13(static ContentTransition.State.defaultValue);
    v27 = off_1ED536620;
    v28 = dword_1ED536628;
  }

  outlined copy of ContentTransition.Storage(v15, v10, v14);

  if ((v5 & 4) == 0)
  {
LABEL_3:
    v28 = v5 | 4;
  }

LABEL_4:
  v25 = HIBYTE(v26);
  if (v3)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v4, &v24);

    v6 = v24;
  }

  else
  {
    v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v4);
    if (v16)
    {
      v6 = *(v16 + 72);
    }

    else
    {
      v6 = 0;
    }
  }

  v23 = v6;
  ContentTransition.applyEnvironmentValues(style:layoutDirection:)(&v25, &v23);
  v17 = DWORD2(v26);
  v18 = WORD6(v26);
  v19 = BYTE14(v26);
  v20 = HIBYTE(v26);
  v21 = v27;
  v22 = v28;
  *a1 = v26;
  *(a1 + 8) = v17;
  *(a1 + 12) = v18;
  *(a1 + 14) = v19;
  *(a1 + 15) = v20;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
}

uint64_t one-time initialization function for contentTransitionGroupEffect()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.contentTransitionGroupEffect = result;
  return result;
}

void specialized implicit closure #1 in _GraphInputs.contentTransitionGroupEffect.getter(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *a1;
  EnvironmentValues.contentTransitionGroupEffect.getter(&v9);
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  *a2 = v9;
  *(a2 + 12) = v4;
  *(a2 + 8) = v3;
  *(a2 + 14) = v5;
  *(a2 + 15) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
}

uint64_t static _ContentTransitionGroup._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v24 = a1[2];
  v25 = v5;
  v26 = a1[4];
  v27 = *(a1 + 20);
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  if (one-time initialization token for contentTransitionGroupEffect != -1)
  {
    swift_once();
  }

  v7 = static CachedEnvironment.ID.contentTransitionGroupEffect;
  swift_beginAccess();
  v8 = specialized CachedEnvironment.attribute<A>(id:_:)(v7);
  swift_endAccess();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v16 = v24;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v14 = v22;
  v15 = v23;
  v10 = v24;
  LODWORD(v16) = 0;
  v21 = v27;
  v20[3] = v25;
  v20[4] = v26;
  v20[0] = v22;
  v20[1] = v23;
  v20[2] = v16;
  outlined init with copy of _ViewInputs(&v22, v12);
  outlined init with copy of _ViewInputs(v20, v12);
  _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B5(v8, v20, a2, a3);
  outlined destroy of _ViewInputs(v20);
  LODWORD(v16) = v10;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v14);
    AGSubgraphEndTreeElement();
  }

  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  return outlined destroy of _ViewInputs(v12);
}

uint64_t ContentTransitionEffect.state.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  v4 = *(v1 + 8);
  v5 = *(v1 + 14);
  v6 = *(v1 + 15);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v9 = *(v1 + 13);
  *(a1 + 13) = v9;
  *(a1 + 14) = v5;
  *(a1 + 15) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  outlined copy of ContentTransition.Storage(v2, v4 | (v3 << 32), v9);
}

uint64_t ContentTransitionEffect.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 2);
  v5 = *(a1 + 14);
  v6 = *(a1 + 15);
  v7 = a1[2];
  v8 = *(a1 + 6);
  outlined consume of ContentTransition.Storage(*v1, *(v1 + 8) | (*(v1 + 12) << 32), *(v1 + 13));

  *v1 = v2;
  *(v1 + 8) = v4;
  *(v1 + 12) = v3;
  *(v1 + 14) = v5;
  *(v1 + 15) = v6;
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  return result;
}

uint64_t ContentTransitionEffect.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 12);
  v5 = *(v1 + 8);
  v6 = *(v1 + 14);
  v7 = *(v1 + 15);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 13);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 28) = v4;
  *(v11 + 24) = v5;
  *(v11 + 29) = v10;
  *(v11 + 30) = v6;
  *(v11 + 31) = v7;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *a1 = v11;
  *(a1 + 8) = 0;
  *(a1 + 12) = 12;
  outlined copy of ContentTransition.Storage(v3, v5 | (v4 << 32), v10);
}

uint64_t static ContentTransitionEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B5(v4, v8, a3, a4);
}

uint64_t ContentTransitionEffect.Init.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 20);
  v5 = *(v1 + 16);
  v6 = *(v1 + 21);
  Value = AGGraphGetValue();
  v8 = *Value;
  if (*(Value + 8))
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v8, &v39);

    v9 = v39;
    v10 = DWORD2(v39) | (BYTE12(v39) << 32);
    if (BYTE13(v39))
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v11);
  v35 = v5;
  if (v12)
  {
    v9 = v12[9];
    v13 = *(v12 + 84);
    v14 = *(v12 + 20);
    v10 = v14 | (v13 << 32);
    v15 = *(v12 + 85);
    v16 = *(v12 + 86);
    v17 = *(v12 + 87);
    v18 = v12[11];
    v19 = *(v12 + 24);
    *&v39 = v9;
    BYTE12(v39) = v13;
    DWORD2(v39) = v14;
    BYTE13(v39) = v15;
    BYTE14(v39) = v16;
    HIBYTE(v39) = v17;
    v40 = v18;
    v41 = v19;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v9 = static ContentTransition.State.defaultValue;
    v10 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
    v15 = BYTE13(static ContentTransition.State.defaultValue);
    v39 = static ContentTransition.State.defaultValue;
    v40 = off_1ED536620;
    v41 = dword_1ED536628;
  }

  outlined copy of ContentTransition.Storage(v9, v10, v15);

  v5 = v35;
  if (!v15)
  {
LABEL_10:
    if ((v9 & 0x8000000000) != 0 && !(v9 ^ 0x8000000000 | v10 & 0xFFFFFF))
    {
      outlined copy of ContentTransition.Storage(v3, v5 | (v4 << 32), v6);
      outlined consume of ContentTransition.Storage(v9, v10, 0);
      *&v39 = v3;
      BYTE12(v39) = (v5 | (v4 << 32)) >> 32;
      DWORD2(v39) = v5;
      BYTE13(v39) = v6;
      BYTE14(v39) = 1;
    }
  }

LABEL_13:
  v38 = HIBYTE(v39);
  v20 = AGGraphGetValue();
  v21 = *v20;
  if (*(v20 + 8))
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v21, &v37);

    v22 = v37;
  }

  else
  {

    v24 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v23);
    if (v24)
    {
      v22 = *(v24 + 72);
    }

    else
    {
      v22 = 0;
    }
  }

  v36 = v22;
  ContentTransition.applyEnvironmentValues(style:layoutDirection:)(&v38, &v36);
  v25 = v41 | 8;
  v26 = v39;
  v27 = BYTE12(v39);
  v28 = DWORD2(v39);
  v29 = DWORD2(v39) | (BYTE12(v39) << 32);
  v30 = BYTE14(v39);
  v31 = HIBYTE(v39);
  v32 = v40;
  *a1 = v39;
  *(a1 + 12) = v27;
  *(a1 + 8) = v28;
  v33 = BYTE13(v39);
  *(a1 + 13) = BYTE13(v39);
  *(a1 + 14) = v30;
  *(a1 + 15) = v31;
  *(a1 + 16) = v32;
  *(a1 + 24) = v25;
  outlined copy of ContentTransition.Storage(v26, v29, v33);

  outlined consume of ContentTransition.Storage(v26, v29, v33);
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance ContentTransitionEffect@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 12);
  v5 = *(v1 + 8);
  v6 = *(v1 + 14);
  v7 = *(v1 + 15);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 13);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 28) = v4;
  *(v11 + 24) = v5;
  *(v11 + 29) = v10;
  *(v11 + 30) = v6;
  *(v11 + 31) = v7;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *a1 = v11;
  *(a1 + 8) = 0;
  *(a1 + 12) = 12;
  outlined copy of ContentTransition.Storage(v3, v5 | (v4 << 32), v10);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ContentTransitionEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B5(v4, v8, a3, a4);
}

void ContentTransition.encode(to:)()
{
  v2 = *v0;
  v3 = *(v0 + 14);
  if (*(v0 + 13))
  {
    if (*(v0 + 13) == 1)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(2);
      if (v1)
      {
        return;
      }
    }

    else
    {
      v4 = *(v0 + 2);
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(v2 & 0x1FFFFFFFFLL, v4);
      if (v1)
      {
        return;
      }
    }
  }

  else
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(1);
    if (v1)
    {
      return;
    }
  }

  if (v3)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance ContentTransition()
{
  v2 = *v0;
  v3 = *(v0 + 14);
  if (*(v0 + 13))
  {
    if (*(v0 + 13) == 1)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(2);
      if (v1)
      {
        return;
      }
    }

    else
    {
      v4 = v0[2];
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(v2 & 0x1FFFFFFFFLL, v4);
      if (v1)
      {
        return;
      }
    }
  }

  else
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(1);
    if (v1)
    {
      return;
    }
  }

  if (v3)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

void ContentTransition.State.encode(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8) | (*(v2 + 12) << 32);
  v6 = *(v2 + 13);
  v7 = *(v2 + 14);
  v20 = *(v2 + 15);
  v18 = *(v2 + 24);
  v19 = *(v2 + 16);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = static ContentTransition.default;
  v9 = dword_1ED536998 | (byte_1ED53699C << 32);
  v10 = byte_1ED53699E;
  v11 = byte_1ED53699D;
  v25 = v4;
  v27 = BYTE4(v5);
  v26 = v5;
  v28 = v6;
  v21 = static ContentTransition.default;
  v23 = byte_1ED53699C;
  v22 = dword_1ED536998;
  v24 = byte_1ED53699D;
  outlined copy of ContentTransition.Storage(v4, v5, v6);
  outlined copy of ContentTransition.Storage(v8, v9, v11);
  LOBYTE(v9) = specialized static ContentTransition.Storage.== infix(_:_:)(&v25, &v21);
  outlined consume of ContentTransition.Storage(v21, v22 | (v23 << 32), v24);
  outlined consume of ContentTransition.Storage(v25, v26 | (v27 << 32), v28);
  if (v9 & 1) == 0 || ((v7 ^ v10))
  {
    v13 = 0x1000000000000;
    if (!v7)
    {
      v13 = 0;
    }

    v12 = v29;
    specialized ProtobufEncoder.messageField<A>(_:_:)(1, v4, v5 & 0xFFFFFFFFFFLL | (v6 << 40) | v13);
    if (v12)
    {
      return;
    }
  }

  else
  {
    v12 = v29;
  }

  if (!v20 || (specialized ProtobufEncoder.messageField<A>(_:_:)(2), !v12))
  {
    if (!v19)
    {
      goto LABEL_19;
    }

    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    v14 = *(a1 + 8);
    v15 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    *&v15[8 * v17 + 32] = v14;
    *(a1 + 24) = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    *(a1 + 8) = v14 + 1;
    CodableAnimation.encode(to:)(a1, v19);
    if (!v12)
    {
      ProtobufEncoder.endLengthDelimited()();
LABEL_19:
      if (v18)
      {
        ProtobufEncoder.encodeVarint(_:)(0x20uLL);
        ProtobufEncoder.encodeVarint(_:)(v18);
      }
    }
  }
}

int64_t ContentTransition.Style.encode(to:)(int64_t result)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = result;
    if (v2 == 1)
    {
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v4 = *(v3 + 8);
      v5 = *(v3 + 24);
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
      *(v3 + 24) = v5;
      v8 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
LABEL_15:
        *(v3 + 8) = v8;
        return ProtobufEncoder.endLengthDelimited()();
      }

      __break(1u);
    }

    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v9 = *(v3 + 8);
    v10 = *(v3 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + 8 * v12 + 32) = v9;
    *(v3 + 24) = v10;
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    goto LABEL_15;
  }

  return result;
}

void ContentTransition.NamedTransition.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 11);
  v7 = *(v3 + 12);
  v8 = (*v3 >> 38) & 3;
  if (!v8)
  {
    ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
    v10 = *(a1 + 8);
    v11 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    *&v11[8 * v13 + 32] = v10;
    *(a1 + 24) = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    *(a1 + 8) = v10 + 1;
    if (v5)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    goto LABEL_41;
  }

  v9 = *(v3 + 8) | (*(v3 + 10) << 16);
  if (v8 == 1)
  {
    specialized ProtobufEncoder.messageField<A>(_:_:)(6);
    if (v2)
    {
      return;
    }

    goto LABEL_42;
  }

  v14 = *&v9 & 0xFFFFFFLL;
  if (v5 <= 0x8000000001)
  {
    goto LABEL_22;
  }

  if (!(v5 ^ 0x8000000002 | v14))
  {
    goto LABEL_29;
  }

  if (v5 ^ 0x8000000003 | v14)
  {
    goto LABEL_35;
  }

  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v5 = *(a1 + 8);
  v15 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  *&v15[8 * v17 + 32] = v5;
  *(a1 + 24) = v15;
  v14 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
LABEL_22:
    if (!(v5 ^ 0x8000000000 | v14))
    {
      goto LABEL_42;
    }

    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v18 = *(a1 + 8);
    v19 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      *&v19[8 * v21 + 32] = v18;
      *(a1 + 24) = v19;
      v14 = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        break;
      }

      __break(1u);
LABEL_29:
      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v5 = *(a1 + 8);
      v11 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_50:
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v23 = *(v11 + 2);
      v22 = *(v11 + 3);
      if (v23 >= v22 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v11);
      }

      *(v11 + 2) = v23 + 1;
      *&v11[8 * v23 + 32] = v5;
      *(a1 + 24) = v11;
      v14 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        break;
      }

      __break(1u);
LABEL_35:
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      v18 = *(a1 + 8);
      v19 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      }

      v25 = *(v19 + 2);
      v24 = *(v19 + 3);
      if (v25 >= v24 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v19);
      }

      *(v19 + 2) = v25 + 1;
      *&v19[8 * v25 + 32] = v18;
      *(a1 + 24) = v19;
      v14 = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        break;
      }

      __break(1u);
LABEL_52:
      v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    }
  }

  *(a1 + 8) = v14;
LABEL_41:
  ProtobufEncoder.endLengthDelimited()();
LABEL_42:
  if (v6 != 2 && (v6 & 1) != 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x38uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (v7)
  {
    if (v7 != 3)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(8);
    }
  }
}

void ContentTransition.NumericTextConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 5);
  v6 = *(v2 + 6);
  v7 = *(v2 + 7);
  v8 = *(v2 + 8);
  v9 = *(v2 + 9);
  v10 = *(v2 + 10);
  if (v2[1])
  {
    ProtobufEncoder.encodeVarint(_:)(0x15uLL);
    v11 = a1[1];
    v12 = v11 + 4;
    if (__OFADD__(v11, 4))
    {
      __break(1u);
    }

    else if (a1[2] >= v12)
    {
      a1[1] = v12;
      v13 = (*a1 + v11);
      goto LABEL_5;
    }

    v13 = ProtobufEncoder.growBufferSlow(to:)(v12);
LABEL_5:
    *v13 = v4;
    if (v5 != 2)
    {
      goto LABEL_6;
    }

LABEL_10:
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v4)
  {
    if (v5 == 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
    if (v5 == 2)
    {
      goto LABEL_10;
    }
  }

LABEL_6:
  ProtobufEncoder.encodeVarint(_:)(0x18uLL);
  ProtobufEncoder.encodeVarint(_:)(v5 & 1);
  if (v6)
  {
LABEL_11:
    ProtobufEncoder.encodeVarint(_:)(0x20uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

LABEL_12:
  v14 = v7 * 0.0083333;
  if (v14 != 0.15)
  {
    ProtobufEncoder.encodeVarint(_:)(0x2DuLL);
    v15 = a1[1];
    v16 = v15 + 4;
    if (__OFADD__(v15, 4))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (a1[2] < v16)
    {
      goto LABEL_41;
    }

    a1[1] = v16;
    *(*a1 + v15) = v14;
  }

  while (1)
  {
    v14 = vcvts_n_f32_u32(v8, 7uLL);
    if (v14 == 0.39844)
    {
      v17 = v9;
      if ((v6 & 2) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    ProtobufEncoder.encodeVarint(_:)(0x35uLL);
    v22 = a1[1];
    v16 = v22 + 4;
    if (!__OFADD__(v22, 4))
    {
      break;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    *ProtobufEncoder.growBufferSlow(to:)(v16) = v14;
  }

  if (a1[2] < v16)
  {
    goto LABEL_43;
  }

  a1[1] = v16;
  *(*a1 + v22) = v14;
  v17 = v9;
  if ((v6 & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  v18 = v17 * 0.25;
  if ((v17 * 0.25) == 0.0)
  {
    goto LABEL_30;
  }

  ProtobufEncoder.encodeVarint(_:)(0x3DuLL);
  v19 = a1[1];
  v20 = v19 + 4;
  if (__OFADD__(v19, 4))
  {
    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
    if (a1[2] < v20)
    {
LABEL_45:
      v21 = ProtobufEncoder.growBufferSlow(to:)(v20);
    }

    else
    {
      a1[1] = v20;
      v21 = (*a1 + v19);
    }

    *v21 = v18;
LABEL_30:
    while (1)
    {
      v14 = vcvts_n_f32_s32(v10, 5uLL);
      if (v14 == 0.59375)
      {
        break;
      }

      ProtobufEncoder.encodeVarint(_:)(0x45uLL);
      v24 = a1[1];
      v16 = v24 + 4;
      if (!__OFADD__(v24, 4))
      {
        if (a1[2] < v16)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v16) = v14;
        }

        else
        {
          a1[1] = v16;
          *(*a1 + v24) = v14;
        }

        return;
      }

      __break(1u);
LABEL_43:
      *ProtobufEncoder.growBufferSlow(to:)(v16) = v14;
      v17 = v9;
      if ((v6 & 2) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      v18 = v17 * 0.0078125;
      if ((v17 * 0.0078125) != 0.25)
      {
        ProtobufEncoder.encodeVarint(_:)(0x3DuLL);
        v23 = a1[1];
        v20 = v23 + 4;
        if (__OFADD__(v23, 4))
        {
          goto LABEL_48;
        }

        if (a1[2] < v20)
        {
          goto LABEL_45;
        }

        a1[1] = v20;
        *(*a1 + v23) = v18;
      }
    }
  }
}

void ContentTransition.CustomTransition.encode(to:)(void *a1)
{
  v4 = *v1;
  v5 = *(v1 + 2);
  if (v5)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v5);
  }

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v4 + 32;
    v17 = v6 - 1;
    while (1)
    {
      v9 = a1[1];
      v10 = a1[2];
      if (v9 >= v10)
      {
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_24;
        }

        if (v10 < v15)
        {
          v16 = ProtobufEncoder.growBufferSlow(to:)(v15);
        }

        else
        {
          a1[1] = v15;
          v16 = (*a1 + v9);
        }

        *v16 = 18;
        v11 = a1[1];
      }

      else
      {
        *(*a1 + v9) = 18;
        v11 = v9 + 1;
        a1[1] = v9 + 1;
      }

      v12 = a1[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      *&v12[8 * v14 + 32] = v11;
      a1[3] = v12;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      a1[1] = v11 + 1;
      ContentTransition.Effect.encode(to:)(a1);
      if (v2)
      {
        return;
      }

      ProtobufEncoder.endLengthDelimited()();
      if (v17 == v7)
      {
        return;
      }

      ++v7;
      v8 += 36;
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void ContentTransition.Effect.encode(to:)(void *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 1);
  v6 = *(v2 + 8);
  v7 = *(v2 + 3);
  v8 = *(v2 + 16);
  v10 = v2[5];
  v9 = v2[6];
  v12 = *(v2 + 7);
  v11 = *(v2 + 8);
  if (v5 != 1)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v5);
  }

  if (v10 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x25uLL);
    v13 = a1[1];
    v14 = v13 + 4;
    if (__OFADD__(v13, 4))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (a1[2] < v14)
    {
      goto LABEL_29;
    }

    a1[1] = v14;
    *(*a1 + v13) = v10;
  }

  while (1)
  {
    if (v9 == 1.0)
    {
      goto LABEL_11;
    }

    ProtobufEncoder.encodeVarint(_:)(0x4DuLL);
    v15 = a1[1];
    v14 = v15 + 4;
    if (!__OFADD__(v15, 4))
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    *ProtobufEncoder.growBufferSlow(to:)(v14) = v10;
  }

  if (a1[2] >= v14)
  {
    a1[1] = v14;
    *(*a1 + v15) = v9;
LABEL_11:
    if (v12 == 3)
    {
      goto LABEL_13;
    }

LABEL_12:
    ProtobufEncoder.encodeVarint(_:)(0x30uLL);
    ProtobufEncoder.encodeVarint(_:)(v12);
    goto LABEL_13;
  }

  *ProtobufEncoder.growBufferSlow(to:)(v14) = v9;
  if (v12 != 3)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!v6)
  {
    if ((v4 & 0x7FFFFFFF) == 0)
    {
      goto LABEL_22;
    }

    ProtobufEncoder.encodeVarint(_:)(0x15uLL);
    v16 = a1[1];
    v17 = v16 + 4;
    if (__OFADD__(v16, 4))
    {
      __break(1u);
    }

    else if (a1[2] >= v17)
    {
      a1[1] = v17;
      *(*a1 + v16) = v4;
      goto LABEL_22;
    }

    *ProtobufEncoder.growBufferSlow(to:)(v17) = v4;
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_34:
    if ((v7 & 0x7FFFFFFF) == 0)
    {
      goto LABEL_38;
    }

    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v18 = a1[1];
    v19 = v18 + 4;
    if (__OFADD__(v18, 4))
    {
      __break(1u);
    }

    else if (a1[2] >= v19)
    {
      a1[1] = v19;
      *(*a1 + v18) = v7;
      goto LABEL_38;
    }

    *ProtobufEncoder.growBufferSlow(to:)(v19) = v7;
    if (!v11)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v6 != 1 || !v4)
  {
LABEL_22:
    if (v8)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  ProtobufEncoder.encodeVarint(_:)(0x38uLL);
  ProtobufEncoder.encodeVarint(_:)(v4);
  if (!v8)
  {
    goto LABEL_34;
  }

LABEL_23:
  if (v8 != 1 || !v7)
  {
LABEL_38:
    if (!v11)
    {
      return;
    }

    goto LABEL_39;
  }

  ProtobufEncoder.encodeVarint(_:)(0x40uLL);
  ProtobufEncoder.encodeVarint(_:)(v7);
  if (!v11)
  {
    return;
  }

LABEL_39:
  ProtobufEncoder.encodeVarint(_:)(0x50uLL);
  ProtobufEncoder.encodeVarint(_:)(v11);
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SfTt1g5(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_24;
  }

  LOBYTE(v6) = 0;
  v7 = 1;
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = Float.exponent.getter();
      if (v9 > 7)
      {
        LOBYTE(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_24;
      }

      v10 = v9;
      v11 = Float.significandWidth.getter();
      v12 = v11 + __clz(__rbit32(v5));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 7)
        {
          if (v13 < -8 || v13 > 8)
          {
LABEL_9:
            LOBYTE(v6) = 0;
            LOBYTE(v14) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (v13 < 0)
          {
            if (v13 == -8)
            {
              goto LABEL_9;
            }

            v6 = LOBYTE(a2) >> (v12 - v10);
          }

          else
          {
            if (v13 == 8)
            {
              goto LABEL_9;
            }

            v6 = LODWORD(a2) << v13;
          }

LABEL_20:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_22:
            v14 = 1 << v10;
            goto LABEL_23;
          }

          LOBYTE(v14) = 0;
LABEL_23:
          v7 = 0;
          LOBYTE(v6) = v6 | v14;
          result = v10 >= v11;
          goto LABEL_24;
        }

        if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_13:
          LOBYTE(v6) = 0;
          goto LABEL_20;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x20)
          {
            v6 = v5 << v13;
            goto LABEL_20;
          }

          goto LABEL_13;
        }
      }

      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs4Int8V_SfTt1g5(_BYTE *a1, float a2)
{
  v5 = (LODWORD(a2) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = v5 | LODWORD(a2) & 0x7FFFFF;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v5 == 255 || (v8 = Float.exponent.getter(), v8 > 7))
  {
LABEL_37:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = Float.significandWidth.getter();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit32(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 7)
  {
    if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
LABEL_12:
      LODWORD(v12) = 0;
      goto LABEL_19;
    }

    if (v13 < 0)
    {
      LODWORD(v12) = v6 >> (v12 - v9);
      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      if (v13 >= 0x20)
      {
        goto LABEL_12;
      }

      LODWORD(v12) = v6 << v13;
    }

LABEL_19:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_30:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LOBYTE(a2) >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LODWORD(a2) << v13;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_36;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v14 = 1 << v9;
  }

LABEL_23:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (a2 >= 0.0)
    {
      goto LABEL_37;
    }

LABEL_32:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_28;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_28:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

uint64_t specialized static ContentTransition.NamedTransition.Name.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a1 >> 38) & 3;
  if (!v4)
  {
    if ((v3 & 0xC000000000) == 0)
    {
      v7 = v3 ^ v2 ^ 1;
      return v7 & 1;
    }

    goto LABEL_6;
  }

  v5 = *(a1 + 8) | (*(a1 + 10) << 16);
  v6 = *(a2 + 4) | (*(a2 + 10) << 16);
  if (v4 != 1)
  {
    v9 = *&v5 & 0xFFFFFFLL;
    if (v2 <= 0x8000000001)
    {
      if (v2 ^ 0x8000000000 | v9)
      {
        if ((v3 & 0xC000000000) != 0x8000000000 || v3 != 0x8000000001)
        {
          goto LABEL_6;
        }
      }

      else if ((v3 & 0xC000000000) != 0x8000000000 || v3 != 0x8000000000)
      {
        goto LABEL_6;
      }
    }

    else if (v2 ^ 0x8000000002 | v9)
    {
      if (v2 ^ 0x8000000003 | v9)
      {
        if ((v3 & 0xC000000000) != 0x8000000000 || v3 != 0x8000000004)
        {
          goto LABEL_6;
        }
      }

      else if ((v3 & 0xC000000000) != 0x8000000000 || v3 != 0x8000000003)
      {
        goto LABEL_6;
      }
    }

    else if ((v3 & 0xC000000000) != 0x8000000000 || v3 != 0x8000000002)
    {
      goto LABEL_6;
    }

    if (!v6)
    {
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_6;
  }

  v25 = BYTE4(v2) & 1;
  if ((v3 & 0xC000000000) != 0x4000000000)
  {
LABEL_6:
    v7 = 0;
    return v7 & 1;
  }

  v24 = BYTE4(v3) & 1;
  v17 = v2;
  v18 = v25;
  v19 = BYTE5(v2);
  v20 = BYTE6(v2);
  v21 = HIBYTE(v2);
  v22 = v5;
  v23 = BYTE2(v5);
  v10 = v3;
  v11 = BYTE4(v3) & 1;
  v12 = BYTE5(v3);
  v13 = BYTE6(v3);
  v14 = HIBYTE(v3);
  v15 = v6;
  v16 = BYTE2(v6);
  v7 = specialized static ContentTransition.NumericTextConfiguration.== infix(_:_:)(&v17, &v10);
  return v7 & 1;
}

uint64_t specialized static ContentTransition.CustomTransition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI17ContentTransitionV6EffectV_Tt1g5(*a1, *a2);
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 2 || ((v5 ^ v3) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t specialized static ContentTransition.EffectType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a2 + 4);
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  v8 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v6 != 1 || LODWORD(v2) != LODWORD(v5))
      {
        return 0;
      }
    }

    else if (v6 != 2 || LODWORD(v5) != 0)
    {
      return 0;
    }

LABEL_17:
    if (v4)
    {
      if (v4 == 1)
      {
        if (v8 != 1 || LODWORD(v3) != LODWORD(v7))
        {
          return 0;
        }
      }

      else if (v8 != 2 || v7 != 0.0)
      {
        return 0;
      }
    }

    else if (*(a2 + 16) || v3 != v7)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (!*(a2 + 8) && v2 == v5)
  {
    goto LABEL_17;
  }

  return result;
}

BOOL specialized static ContentTransition.Effect.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 16);
  v6 = *(a1 + 5);
  v5 = *(a1 + 6);
  v7 = *(a1 + 7);
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  v10 = *(a2 + 3);
  v11 = *(a2 + 16);
  v13 = *(a2 + 5);
  v12 = *(a2 + 6);
  v14 = *(a2 + 7);
  v15 = *(a2 + 8);
  v22 = *a1;
  v23 = v2;
  v24 = v3;
  v25 = v4;
  v18 = *a2;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v16 = specialized static ContentTransition.EffectType.== infix(_:_:)(&v22, &v18);
  result = 0;
  if ((v16 & 1) != 0 && v6 == v13 && v5 == v12)
  {
    return v7 == v14 && v8 == v15;
  }

  return result;
}

uint64_t specialized EnvironmentValues.contentTransitionAnimation.setter(uint64_t a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  if (v4)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v5, &v17);

    v6 = v17;
    v7 = v18 | (v19 << 32);
    v8 = v20;
    v9 = v21;
    v10 = v22;
    v16 = v23;
  }

  else
  {
    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v5);
    if (v11)
    {
      v6 = v11[9];
      v7 = *(v11 + 20) | (*(v11 + 84) << 32);
      v8 = *(v11 + 85);
      v9 = *(v11 + 86);
      v10 = *(v11 + 87);
      v12 = *(v11 + 24);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = static ContentTransition.State.defaultValue;
      v7 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v8 = BYTE13(static ContentTransition.State.defaultValue);
      v9 = BYTE14(static ContentTransition.State.defaultValue);
      v10 = HIBYTE(static ContentTransition.State.defaultValue);
      v12 = dword_1ED536628;
    }

    v16 = v12;
    outlined copy of ContentTransition.Storage(v6, v7, v8);
  }

  swift_retain_n();
  outlined copy of ContentTransition.Storage(v6, v7, v8);
  v13 = 0x1000000000000;
  if (!v9)
  {
    v13 = 0;
  }

  v14 = v7 & 0xFFFFFFFFFFLL | (v8 << 40) | v13 | (v10 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v2, v6, v14, a1, v16);

  outlined consume of ContentTransition.Storage(v6, v7, v8);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v5, *v2);
  }

  outlined consume of ContentTransition.Storage(v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type ContentTransition.Style.Storage and conformance ContentTransition.Style.Storage()
{
  result = lazy protocol witness table cache variable for type ContentTransition.Style.Storage and conformance ContentTransition.Style.Storage;
  if (!lazy protocol witness table cache variable for type ContentTransition.Style.Storage and conformance ContentTransition.Style.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.Style.Storage and conformance ContentTransition.Style.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentTransition.Style and conformance ContentTransition.Style()
{
  result = lazy protocol witness table cache variable for type ContentTransition.Style and conformance ContentTransition.Style;
  if (!lazy protocol witness table cache variable for type ContentTransition.Style and conformance ContentTransition.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.Style and conformance ContentTransition.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentTransition.Style and conformance ContentTransition.Style;
  if (!lazy protocol witness table cache variable for type ContentTransition.Style and conformance ContentTransition.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.Style and conformance ContentTransition.Style);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentTransition.Style and conformance ContentTransition.Style;
  if (!lazy protocol witness table cache variable for type ContentTransition.Style and conformance ContentTransition.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.Style and conformance ContentTransition.Style);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentTransition.NamedTransition.Name and conformance ContentTransition.NamedTransition.Name()
{
  result = lazy protocol witness table cache variable for type ContentTransition.NamedTransition.Name and conformance ContentTransition.NamedTransition.Name;
  if (!lazy protocol witness table cache variable for type ContentTransition.NamedTransition.Name and conformance ContentTransition.NamedTransition.Name)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.NamedTransition.Name and conformance ContentTransition.NamedTransition.Name);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentTransition.NamedTransition and conformance ContentTransition.NamedTransition()
{
  result = lazy protocol witness table cache variable for type ContentTransition.NamedTransition and conformance ContentTransition.NamedTransition;
  if (!lazy protocol witness table cache variable for type ContentTransition.NamedTransition and conformance ContentTransition.NamedTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.NamedTransition and conformance ContentTransition.NamedTransition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentTransition.NumericTextConfiguration.Direction and conformance ContentTransition.NumericTextConfiguration.Direction()
{
  result = lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Direction and conformance ContentTransition.NumericTextConfiguration.Direction;
  if (!lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Direction and conformance ContentTransition.NumericTextConfiguration.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Direction and conformance ContentTransition.NumericTextConfiguration.Direction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options()
{
  result = lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options;
  if (!lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options;
  if (!lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options;
  if (!lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options;
  if (!lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration.Options and conformance ContentTransition.NumericTextConfiguration.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentTransition.NumericTextConfiguration and conformance ContentTransition.NumericTextConfiguration()
{
  result = lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration and conformance ContentTransition.NumericTextConfiguration;
  if (!lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration and conformance ContentTransition.NumericTextConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.NumericTextConfiguration and conformance ContentTransition.NumericTextConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentTransition.SequenceDirection and conformance ContentTransition.SequenceDirection()
{
  result = lazy protocol witness table cache variable for type ContentTransition.SequenceDirection and conformance ContentTransition.SequenceDirection;
  if (!lazy protocol witness table cache variable for type ContentTransition.SequenceDirection and conformance ContentTransition.SequenceDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.SequenceDirection and conformance ContentTransition.SequenceDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContentTransition.Options and conformance ContentTransition.Options()
{
  result = lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options;
  if (!lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options;
  if (!lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options;
  if (!lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options;
  if (!lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentTransition.Options and conformance ContentTransition.Options);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ContentTransition.Style(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ContentTransition.Style and conformance ContentTransition.Style();
  result = lazy protocol witness table accessor for type ContentTransition.Style and conformance ContentTransition.Style();
  *(a1 + 16) = result;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContentTransition.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 12);
  v5 = *(a2 + 8);
  v6 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v5 | (v4 << 32), v6);
  *a1 = v3;
  *(a1 + 12) = v4;
  *(a1 + 8) = v5;
  *(a1 + 13) = v6;
  return a1;
}

uint64_t assignWithCopy for ContentTransition.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 12);
  v5 = *(a2 + 8);
  v6 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v5 | (v4 << 32), v6);
  v7 = *a1;
  v8 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 12) = v4;
  v9 = *(a1 + 13);
  *(a1 + 13) = v6;
  outlined consume of ContentTransition.Storage(v7, v8, v9);
  return a1;
}

void *__swift_memcpy14_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t assignWithTake for ContentTransition.Storage(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 6);
  v5 = *(a2 + 2);
  v6 = *a1;
  v7 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v3;
  *(a1 + 8) = v5;
  v8 = *(a1 + 13);
  *(a1 + 12) = v4;
  outlined consume of ContentTransition.Storage(v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentTransition.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 14))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 13);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentTransition.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      *(result + 13) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentTransition.NamedTransition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 11);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 11);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentTransition.NamedTransition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 11) = a2 + 2;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentTransition.NamedTransition.Name(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 11))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 33) >> 5) & 3 | (4 * ((*a1 >> 33) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ContentTransition.NamedTransition.Name(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *result = ((((-a2 >> 2) & 0x1F) - 32 * a2) & 0x7F) << 33;
      *(result + 10) = 0;
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t getEnumTag for ContentTransition.NamedTransition.Name(void *a1)
{
  if (((*a1 >> 38) & 2) != 0)
  {
    return *a1 + 2;
  }

  else
  {
    return (*a1 >> 38) & 3;
  }
}

uint64_t destructiveInjectEnumTag for ContentTransition.NamedTransition.Name(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFF01FFFFFFFFLL | (a2 << 38);
  }

  else
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = (a2 - 2) | 0x8000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentTransition.NumericTextConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for ContentTransition.NumericTextConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContentTransition.CustomTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);

  return a1;
}

uint64_t assignWithCopy for ContentTransition.CustomTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t assignWithTake for ContentTransition.CustomTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentTransition.EffectType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentTransition.EffectType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentTransition.EffectType.Arg(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentTransition.EffectType.Arg(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ContentTransition.EffectType.Arg(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for ContentTransition.EffectType.Arg(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentTransition.Effect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 36))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentTransition.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t assignWithTake for _ContentTransitionModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 6);
  v6 = *(a2 + 2);
  v7 = *a1;
  v8 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v4;
  *(a1 + 8) = v6;
  v9 = *(a1 + 13);
  *(a1 + 12) = v5;
  outlined consume of ContentTransition.Storage(v7, v8, v9);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = a2[2];

  *(a1 + 24) = *(a2 + 6);
  return a1;
}

uint64_t assignWithCopy for ContentTransition.State(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v6 = *(a2 + 8);
  v7 = *(a2 + 13);
  outlined copy of ContentTransition.Storage(*a2, v6 | (v5 << 32), v7);
  v8 = *a1;
  v9 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v10 = *(a1 + 13);
  *(a1 + 13) = v7;
  outlined consume of ContentTransition.Storage(v8, v9, v10);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for ContentTransition.State(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 6);
  v6 = *(a2 + 2);
  v7 = *a1;
  v8 = *(a1 + 8) | (*(a1 + 12) << 32);
  *a1 = v4;
  *(a1 + 8) = v6;
  v9 = *(a1 + 13);
  *(a1 + 12) = v5;
  outlined consume of ContentTransition.Storage(v7, v8, v9);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = a2[2];

  *(a1 + 24) = *(a2 + 6);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for ContentTransitionEffect.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 20);
  v6 = *(a2 + 16);
  v7 = *(a2 + 21);
  outlined copy of ContentTransition.Storage(v4, v6 | (v5 << 32), v7);
  *(a1 + 8) = v4;
  *(a1 + 20) = v5;
  *(a1 + 16) = v6;
  *(a1 + 21) = v7;
  *(a1 + 22) = *(a2 + 22);
  return a1;
}

uint64_t assignWithCopy for ContentTransitionEffect.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 20);
  v6 = *(a2 + 16);
  v7 = *(a2 + 21);
  outlined copy of ContentTransition.Storage(v4, v6 | (v5 << 32), v7);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16) | (*(a1 + 20) << 32);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 20) = v5;
  v10 = *(a1 + 21);
  *(a1 + 21) = v7;
  outlined consume of ContentTransition.Storage(v8, v9, v10);
  *(a1 + 22) = *(a2 + 22);
  return a1;
}

__n128 __swift_memcpy23_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for ContentTransitionEffect.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 20);
  v6 = *(a2 + 16);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16) | (*(a1 + 20) << 32);
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  v9 = *(a1 + 21);
  *(a1 + 20) = v5;
  outlined consume of ContentTransition.Storage(v7, v8, v9);
  *(a1 + 22) = *(a2 + 22);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for ContentTransitionEffect.Init(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ContentTransitionEffect.Init and conformance ContentTransitionEffect.Init();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _ContentTransitionModifier.ChildEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ContentTransitionModifier.ChildEnvironment and conformance _ContentTransitionModifier.ChildEnvironment();
  *(a1 + 8) = result;
  return result;
}

void *__swift_memcpy14_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentTransition.NamedKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 14))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 13);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentTransition.NamedKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      *(result + 13) = a2 + 1;
    }
  }

  return result;
}

_BYTE *ArchivedViewInput.Value.init(flags:deploymentVersion:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

Swift::Int ArchivedViewInput.DeploymentVersion.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t ArchivedViewInput.DeploymentVersion.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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

uint64_t protocol witness for Encodable.encode(to:) in conformance ArchivedViewInput.DeploymentVersion(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t ArchivedViewInput.DeploymentVersion.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t lazy protocol witness table accessor for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags()
{
  result = lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags;
  if (!lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags;
  if (!lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags;
  if (!lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags;
  if (!lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewInput.Flags and conformance ArchivedViewInput.Flags);
  }

  return result;
}

BOOL protocol witness for InterpolatableContent.requiresTransition(to:) in conformance Image.Resolved(__int128 *a1)
{
  v2 = a1[9];
  v15[8] = a1[8];
  v15[9] = v2;
  v16[0] = a1[10];
  *(v16 + 11) = *(a1 + 171);
  v3 = a1[5];
  v15[4] = a1[4];
  v15[5] = v3;
  v4 = a1[7];
  v15[6] = a1[6];
  v15[7] = v4;
  v5 = a1[1];
  v15[0] = *a1;
  v15[1] = v5;
  v6 = a1[3];
  v15[2] = a1[2];
  v15[3] = v6;
  v7 = v1[9];
  v13[8] = v1[8];
  v13[9] = v7;
  v14[0] = v1[10];
  *(v14 + 11) = *(v1 + 171);
  v8 = v1[5];
  v13[4] = v1[4];
  v13[5] = v8;
  v9 = v1[7];
  v13[6] = v1[6];
  v13[7] = v9;
  v10 = v1[1];
  v13[0] = *v1;
  v13[1] = v10;
  v11 = v1[3];
  v13[2] = v1[2];
  v13[3] = v11;
  return !specialized static Image.Resolved.== infix(_:_:)(v13, v15);
}

uint64_t static InterpolatableContent.defaultTransition.getter@<X0>(uint64_t a1@<X8>)
{
  return static InterpolatableContent.defaultTransition.getter(a1);
}

{
  if (one-time initialization token for identity != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static ContentTransition.identity;
  v3 = word_1EAB144D4;
  v4 = dword_1EAB144D0;
  v5 = dword_1EAB144D0 | (word_1EAB144D4 << 32);
  v6 = byte_1EAB144D6;
  *a1 = static ContentTransition.identity;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = HIBYTE(word_1EAB144D4);
  *(a1 + 13) = HIBYTE(word_1EAB144D4);
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

uint64_t getter of transaction #1 in InterpolatedDisplayList.updateValue()(uint64_t a1)
{
  AGGraphClearUpdate();
  closure #1 in getter of transaction #1 in InterpolatedDisplayList.updateValue()(a1, &v3);
  AGGraphSetUpdate();
  return v3;
}

uint64_t closure #1 in getter of transaction #1 in InterpolatedDisplayList.updateValue()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for InterpolatedDisplayList();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = *AGGraphGetValue();
  v10 = *(v5 + 8);

  result = v10(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for InterpolatedDisplayList(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v9 + 7;
  v11 = ((((((v9 + 7 + ((v7 + 55) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v7 & 0x100000;
  v13 = *a2;
  *a1 = *a2;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    a1 = (v13 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    v16 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a2 + 11) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v20 = *v21;
    v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v22 = *v23;
    v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v25 = ((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v24 = *v25;
    v26 = ((v24 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v27 = ((v25 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v26 = *v27;
    v28 = ((v26 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v29 = ((v27 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v28 = *v29;
    v30 = ((v28 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v31 = ((v29 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v30 = *v31;
    v32 = ((v30 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v33 = ((v31 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v32 = *v33;
    v34 = ((v32 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v35 = ((v33 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v34 = *v35;
    v36 = (v34 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v37 = (v35 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    *v36 = *v37;
    *(v36 + 4) = *(v37 + 4);
    *(v36 + 5) = *(v37 + 5);
    *(v36 + 6) = *(v37 + 6);
    v38 = ((v36 + v8 + 7) & ~v8);
    v39 = ((v37 + v8 + 7) & ~v8);
    v40 = *(v5 + 48);

    if (v40(v39, 1, v4))
    {
      memcpy(v38, v39, v9);
    }

    else
    {
      (*(v6 + 16))(v38, v39, v4);
      (*(v6 + 56))(v38, 0, 1, v4);
    }

    v41 = ((v38 + v10) & 0xFFFFFFFFFFFFFFF8);
    v42 = ((v39 + v10) & 0xFFFFFFFFFFFFFFF8);
    *v41 = *v42;
    v43 = ((v41 + 19) & 0xFFFFFFFFFFFFFFF8);
    v44 = ((v42 + 19) & 0xFFFFFFFFFFFFFFF8);
    *v43 = *v44;
    *((v43 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v44 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

void *assignWithCopy for InterpolatedDisplayList(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 11;
  *a1 = *a2;
  v6 = a1 + 11;

  *(v6 & 0xFFFFFFFFFFFFFFFCLL) = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v5 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v6 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v7;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v9;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v11;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v13;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v15;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v17;
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v19;
  v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v22 = *v21;
  v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v24 = *v23;
  v25 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v26 = (v23 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v25 = *v26;
  *(v25 + 4) = *(v26 + 4);
  *(v25 + 5) = *(v26 + 5);
  *(v25 + 6) = *(v26 + 6);
  v27 = *(a3 + 16);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = ((v29 + 7 + v25) & ~v29);
  v31 = ((v29 + 7 + v26) & ~v29);
  v32 = *(v28 + 48);
  v33 = v32(v30, 1, v27);
  v34 = v32(v31, 1, v27);
  if (v33)
  {
    if (!v34)
    {
      (*(v28 + 16))(v30, v31, v27);
      (*(v28 + 56))(v30, 0, 1, v27);
      goto LABEL_12;
    }

    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  else
  {
    if (!v34)
    {
      (*(v28 + 24))(v30, v31, v27);
      goto LABEL_12;
    }

    (*(v28 + 8))(v30, v27);
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  if (v35)
  {
    v37 = v36;
  }

  else
  {
    v37 = v36 + 1;
  }

  memcpy(v30, v31, v37);
LABEL_12:
  if (*(v28 + 84))
  {
    v38 = *(v28 + 64);
  }

  else
  {
    v38 = *(v28 + 64) + 1;
  }

  v39 = ((v30 + v38 + 7) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v31 + v38 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v39[1] = v40[1];
  v41 = ((v39 + 19) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v40 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v41 = *v42;
  *((v41 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v42 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *initializeWithTake for InterpolatedDisplayList(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v7;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v9;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v11;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v13;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v15;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v17;
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v19;
  v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v22 = *v21;
  v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v24 = *v23;
  v25 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v26 = (v23 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v25 = *v26;
  *(v25 + 4) = *(v26 + 4);
  *(v25 + 5) = *(v26 + 5);
  *(v25 + 6) = *(v26 + 6);
  v27 = *(a3 + 16);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = ((v29 + 7 + v25) & ~v29);
  v31 = ((v29 + 7 + v26) & ~v29);
  if ((*(v28 + 48))(v31, 1, v27))
  {
    v32 = *(v28 + 84);
    v33 = *(v28 + 64);
    if (v32)
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 + 1;
    }

    memcpy(v30, v31, v34);
  }

  else
  {
    (*(v28 + 32))(v30, v31, v27);
    v36 = *(v28 + 56);
    v35 = v28 + 56;
    v36(v30, 0, 1, v27);
    v32 = *(v35 + 28);
    v33 = *(v35 + 8);
  }

  if (v32)
  {
    v37 = v33;
  }

  else
  {
    v37 = v33 + 1;
  }

  v38 = ((v30 + v37 + 7) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v31 + v37 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;
  v40 = ((v38 + 19) & 0xFFFFFFFFFFFFFFF8);
  v41 = ((v39 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v40 = *v41;
  *((v40 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v41 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for InterpolatedDisplayList(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 11;
  *a1 = *a2;
  v6 = a1 + 11;

  *(v6 & 0xFFFFFFFFFFFFFFFCLL) = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (((v5 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v6 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v7;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v9;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v11;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v14 = *v13;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v15;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v17;
  v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v19;
  v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v22 = *v21;
  v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v24 = *v23;
  v25 = (v24 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v26 = (v23 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v25 = *v26;
  *(v25 + 4) = *(v26 + 4);
  *(v25 + 5) = *(v26 + 5);
  *(v25 + 6) = *(v26 + 6);
  v27 = *(a3 + 16);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = ((v29 + 7 + v25) & ~v29);
  v31 = ((v29 + 7 + v26) & ~v29);
  v32 = *(v28 + 48);
  v33 = v32(v30, 1, v27);
  v34 = v32(v31, 1, v27);
  if (v33)
  {
    if (!v34)
    {
      (*(v28 + 32))(v30, v31, v27);
      (*(v28 + 56))(v30, 0, 1, v27);
      goto LABEL_12;
    }

    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  else
  {
    if (!v34)
    {
      (*(v28 + 40))(v30, v31, v27);
      goto LABEL_12;
    }

    (*(v28 + 8))(v30, v27);
    v35 = *(v28 + 84);
    v36 = *(v28 + 64);
  }

  if (v35)
  {
    v37 = v36;
  }

  else
  {
    v37 = v36 + 1;
  }

  memcpy(v30, v31, v37);
LABEL_12:
  if (*(v28 + 84))
  {
    v38 = *(v28 + 64);
  }

  else
  {
    v38 = *(v28 + 64) + 1;
  }

  v39 = ((v30 + v38 + 7) & 0xFFFFFFFFFFFFFFF8);
  v40 = ((v31 + v38 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v39 = *v40;
  v39[1] = v40[1];
  v41 = ((v39 + 19) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v40 + 19) & 0xFFFFFFFFFFFFFFF8);
  *v41 = *v42;
  *((v41 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v42 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for InterpolatedDisplayList(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 55) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
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
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((((((((((((((((((((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 7) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for InterpolatedDisplayList(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v11 + ((v10 + 55) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + ((v10 + 55) & ~v10) + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v11 + ((v10 + 55) & ~v10) + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + ((v10 + 55) & ~v10) + 7) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
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

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v20 = ((((((((((((((((((((((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 7) & ~v10);
    if (v8 >= a2)
    {
      v24 = *(v6 + 56);
      v25 = a2 + 1;
      v26 = (((((((((((((((((((((((a1 + 11) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 7) & ~v10;

      v24(v26, v25);
    }

    else
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (~v8 + a2);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t Animation.repeatForever(autoreverses:)(char a1, uint64_t a2)
{
  v5 = 0;
  v6 = 1;
  v7 = a1;
  v2 = *(*a2 + 144);
  v3 = lazy protocol witness table accessor for type RepeatAnimation and conformance RepeatAnimation();
  return v2(&v5, &type metadata for RepeatAnimation, v3);
}

uint64_t RepeatAnimation.animate<A, B>(base:value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v43 = a1;
  v44 = a7;
  v35 = a4;
  v41 = a9;
  v42 = a11;
  v17 = type metadata accessor for Optional();
  v39 = *(v17 - 8);
  v40 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AnimationContext();
  v24 = AnimationContext.repeatState.getter();
  v26 = v25;
  v38 = a5;
  v27 = ((v25 & 0x8000000000000001) == 1) & (a5 >> 8);
  v28 = *(v42 + 16);
  v36 = a2;
  v28(a2, a3, a6, a8, v44, a10 - v24);
  if ((*(v20 + 48))(v19, 1, a6) != 1)
  {
    v32 = *(v20 + 32);
    v32(v23, v19, a6);
    v31 = v41;
    if (v27)
    {
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      (*(v20 + 8))(v23, a6);
    }

    else
    {
      v32(v41, v23, a6);
    }

    goto LABEL_11;
  }

  result = (*(v39 + 8))(v19, v40);
  if (!__OFADD__(v26, 1))
  {
    AnimationState.init()(v46);
    v30 = v46[0];

    *a3 = v30;
    v45 = v26 + 1;
    AnimationContext.repeatState.setter(v26 + 1, a10);
    if ((v38 & 1) == 0)
    {
      swift_beginAccess();
      if (v45 >= v35)
      {
        v33 = 1;
        v31 = v41;
        return (*(v20 + 56))(v31, v33, 1, a6);
      }
    }

    v31 = v41;
    if (v27)
    {
      dispatch thunk of static AdditiveArithmetic.zero.getter();
    }

    else
    {
      (*(v20 + 16))(v41, v36, a6);
    }

LABEL_11:
    v33 = 0;
    return (*(v20 + 56))(v31, v33, 1, a6);
  }

  __break(1u);
  return result;
}

double AnimationContext.repeatState.getter()
{
  v0 = type metadata accessor for RepeatState();
  v1 = type metadata accessor for AnimationState();
  WitnessTable = swift_getWitnessTable();
  AnimationState.subscript.getter(v0, v1, v0, WitnessTable);
  return v4;
}

uint64_t AnimationContext.repeatState.setter(uint64_t a1, double a2)
{
  v5[0] = a1;
  *&v5[1] = a2;
  v2 = type metadata accessor for RepeatState();
  v3 = type metadata accessor for AnimationState();
  swift_getWitnessTable();
  return specialized AnimationState.subscript.setter(v5, v2, v3, v2);
}

uint64_t protocol witness for CustomAnimationModifier.animate<A, B>(base:value:time:context:) in conformance RepeatAnimation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>, double a9@<D0>)
{
  if (*(v9 + 9))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return RepeatAnimation.animate<A, B>(base:value:time:context:)(a1, a2, a3, *v9, v10 | *(v9 + 8), a4, a5, a6, a8, a9, a7);
}

uint64_t protocol witness for CustomAnimationModifier.function(base:) in conformance RepeatAnimation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 9);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *v2;
  v12 = *(a1 + 40);
  v13 = swift_allocObject();
  v14 = v11;
  if (v4)
  {
    v14 = INFINITY;
  }

  *(v13 + 16) = v14;
  *(v13 + 24) = v5;
  *(v13 + 32) = v6;
  *(v13 + 40) = v7;
  *(v13 + 48) = v8;
  *(v13 + 56) = v9;
  *(v13 + 64) = v10;
  *(v13 + 72) = v12;
  *a2 = v13;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 9;

  return outlined copy of Animation.Function(v6, v7, v8, v9, v10, v12);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RepeatAnimation()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance RepeatAnimation()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v0;
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v2);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RepeatAnimation()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RepeatAnimation(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 9) ^ *(a2 + 9) ^ 1u;
}

uint64_t Animation.repeatCount(_:autoreverses:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = a1;
  v7 = 0;
  v8 = a2;
  v3 = *(*a3 + 144);
  v4 = lazy protocol witness table accessor for type RepeatAnimation and conformance RepeatAnimation();
  return v3(&v6, &type metadata for RepeatAnimation, v4);
}

uint64_t getEnumTagSinglePayload for RepeatAnimation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

int64_t RepeatAnimation.encode(to:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
  v6 = *(a1 + 8);
  v7 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
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
  *(a1 + 24) = v7;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v6 + 1;
    if ((a3 & 1) == 0 && a2 != 0x8000000000000000)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)((2 * a2) ^ (a2 >> 63));
    }

    if ((a3 & 0x100) != 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

int64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance RepeatAnimation(uint64_t a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return RepeatAnimation.encode(to:)(a1, *v1, v2 | *(v1 + 8));
}

unint64_t instantiation function for generic protocol witness table for RepeatAnimation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RepeatAnimation and conformance RepeatAnimation();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static Animation.decodeRepeatMessage(from:)(void *a1)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v5 = 0;
    a1[3] = 0;
    return v5;
  }

  v5 = 0;
  while (1)
  {
    v6 = a1[3];
    if (v6)
    {
      v7 = a1[4];
      if (v3 < v7)
      {
        goto LABEL_11;
      }

      if (v7 < v3)
      {
        goto LABEL_43;
      }

      a1[3] = 0;
    }

    v6 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      return v5;
    }

    if (v6 <= 7)
    {
LABEL_43:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v5 = swift_allocError();
      swift_willThrow();
      return v5;
    }

LABEL_11:
    v8 = v6 & 7;
    if (v6 >> 3 == 2)
    {
      if ((v6 & 7) != 0)
      {
        if (v8 != 2)
        {
          goto LABEL_43;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          return v5;
        }

        if (result < 0)
        {
          goto LABEL_49;
        }

        v12 = a1[1] + result;
        if (v4 < v12)
        {
          goto LABEL_43;
        }

        a1[3] = 16;
        a1[4] = v12;
      }

      ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        return v5;
      }

      goto LABEL_4;
    }

    if (v6 >> 3 == 1)
    {
      break;
    }

    if ((v6 & 7) > 1)
    {
      if (v8 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          return v5;
        }

        if (result < 0)
        {
          goto LABEL_50;
        }

        v13 = a1[1] + result;
        if (v4 < v13)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v8 != 5)
        {
          goto LABEL_43;
        }

        v13 = a1[1] + 4;
        if (v4 < v13)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      if ((v6 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          return v5;
        }

        goto LABEL_4;
      }

      if (v8 != 1)
      {
        goto LABEL_43;
      }

      v13 = a1[1] + 8;
      if (v4 < v13)
      {
        goto LABEL_43;
      }
    }

    a1[1] = v13;
LABEL_4:
    v3 = a1[1];
    if (v3 >= v4)
    {
      a1[3] = 0;
      return v5;
    }
  }

  if ((v6 & 7) == 0)
  {
LABEL_19:
    v11 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      return v5;
    }

    v5 = -(v11 & 1) ^ (v11 >> 1);
    goto LABEL_4;
  }

  if (v8 != 2)
  {
    goto LABEL_43;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    return v5;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = a1[1] + result;
    if (v4 < v10)
    {
      goto LABEL_43;
    }

    a1[3] = 8;
    a1[4] = v10;
    goto LABEL_19;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

BOOL static DSLPreferenceKeys.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;
  v3 = specialized static PreferenceKeys.== infix(_:_:)(&v6, &v5);

  return v3;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DSLPreferenceKeys(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = v2;
  v3 = specialized static PreferenceKeys.== infix(_:_:)(&v6, &v5);

  return v3;
}

uint64_t DSLPreferencesInputs.init(inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 56);

  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = v3;
  return result;
}

uint64_t DSLPreferencesInputs.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  LOBYTE(a3) = PreferencesInputs.contains<A>(_:)(a1, a2, a3);

  return a3 & 1;
}

uint64_t DSLPreferencesInputs.forEachPreferenceKey(_:)(void (*a1)(void, void))
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {

    v5 = (v2 + 40);
    do
    {
      a1(*(v5 - 1), *v5);
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

uint64_t DSLPreferencesOutputs.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 2);
  v16 = *v4;
  v17 = v8;
  v9 = PreferencesOutputs.subscript.getter(a1, a2, a3);
  v14 = v9;
  v15 = BYTE4(v9) & 1;
  v13[2] = a2;
  v13[3] = a3;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Attribute();
  type metadata accessor for Optional();
  v10 = type metadata accessor for _GraphValue();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DSLPreferencesOutputs.subscript.getter, v13, MEMORY[0x1E69E73E0], v10, v11, a4);
}

unint64_t DSLPreferencesOutputs.subscript.setter(int *a1, ValueMetadata *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 4);
  v12 = *a1;
  v13 = v7;
  v11[2] = a3;
  v11[3] = a4;
  swift_getAssociatedTypeWitness();
  type metadata accessor for _GraphValue();
  type metadata accessor for Optional();
  v8 = type metadata accessor for Attribute();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(protocol witness for OptionSet.init(rawValue:) in conformance GestureMask, v11, MEMORY[0x1E69E73E0], v8, v9, &v14);
  LOBYTE(v12) = v15;
  return PreferencesOutputs.subscript.setter(v14 | (v15 << 32), a2, a3, a4);
}

void (*DSLPreferencesOutputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(ValueMetadata ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  DSLPreferencesOutputs.subscript.getter(a2, a3, a4, (v9 + 4));
  return DSLPreferencesOutputs.subscript.modify;
}

void DSLPreferencesOutputs.subscript.modify(ValueMetadata ***a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 36);
  v5 = (*a1)[2];
  v6 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    v9 = *(*a1 + 8);
    v10 = v4;
    v8 = &v9;
  }

  else
  {
    v11 = *(*a1 + 8);
    v12 = v4;
    v8 = &v11;
  }

  DSLPreferencesOutputs.subscript.setter(v8, v6, v7, v5);

  free(v3);
}

uint64_t DSLPreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v11[5] = a4;
  v12 = v8;
  v13 = v9;
  v11[2] = a5;
  v11[3] = a6;
  v11[4] = a3;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(&v12, a5, partial apply for implicit closure #1 in DSLPreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:), v11, a5, a6);
}

uint64_t DSLPreferencesOutputs.forEachPreferenceKey(_:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = result;

    v5 = (v2 + 40);
    do
    {
      v4(*(v5 - 1), *v5);
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t partial apply for closure #1 in DSLPreferencesOutputs.subscript.getter@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  return _GraphValue.init(_:)(v3, a2);
}

uint64_t EnvironmentValues.cuiAssetIdiom.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v1, &v3);
  }

  else
  {
    _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v1);
  }

  return ViewGraphHost.Idiom.cuiDeviceClass.getter();
}

_OWORD *static CatalogAssetMatchType.defaultValue(idiom:)(uint64_t a1)
{
  if (a1 != 8)
  {
    return &outlined read-only object #0 of static CatalogAssetMatchType.defaultValue(idiom:);
  }

  type metadata accessor for _ContiguousArrayStorage<Path>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CatalogAssetMatchType>, &type metadata for CatalogAssetMatchType, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  result[1] = xmmword_18DDAB4C0;
  *(result + 4) = 8;
  *(result + 40) = 0;
  *(result + 6) = 1;
  *(result + 56) = 1;
  return result;
}

SwiftUI::CatalogKey __swiftcall CatalogKey.init(colorScheme:contrast:)(SwiftUI::ColorScheme colorScheme, SwiftUI::ColorSchemeContrast contrast)
{
  v3 = *contrast;
  *v2 = *colorScheme;
  v2[1] = v3;
  result.colorScheme = colorScheme;
  return result;
}

uint64_t CatalogKey.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int CatalogKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CatalogKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CatalogKey()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CatalogKey()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void CatalogKey.encode(to:)()
{
  v1 = v0[1];
  if (*v0)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (v1)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

unint64_t CatalogKey.init(from:)@<X0>(unint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v8 = 0;
    v7 = 0;
LABEL_45:
    v3[3] = 0;
    *a2 = v7;
    a2[1] = v8;
    return result;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_43;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_43:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v10 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v10 != 2)
        {
          goto LABEL_43;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        v12 = v3[1] + result;
        if (v6 < v12)
        {
          goto LABEL_43;
        }

        v3[3] = 16;
        v3[4] = v12;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v8 = result == 1;
      goto LABEL_4;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v10 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        v13 = v3[1] + result;
        if (v6 < v13)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_43;
        }

        v13 = v3[1] + 4;
        if (v6 < v13)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v10 != 1)
      {
        goto LABEL_43;
      }

      v13 = v3[1] + 8;
      if (v6 < v13)
      {
        goto LABEL_43;
      }

LABEL_3:
      v3[1] = v13;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_45;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_19:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v7 = result == 1;
    goto LABEL_4;
  }

  if (v10 != 2)
  {
    goto LABEL_43;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v11 = v3[1] + result;
    if (v6 < v11)
    {
      goto LABEL_43;
    }

    v3[3] = 8;
    v3[4] = v11;
    goto LABEL_19;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance CatalogKey()
{
  v1 = v0[1];
  if (*v0 == 1)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (v1)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

uint64_t static CatalogAssetMatchType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CatalogAssetMatchType(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type CatalogKey and conformance CatalogKey()
{
  result = lazy protocol witness table cache variable for type CatalogKey and conformance CatalogKey;
  if (!lazy protocol witness table cache variable for type CatalogKey and conformance CatalogKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CatalogKey and conformance CatalogKey);
  }

  return result;
}

uint64_t specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, unsigned int a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (a5 >> 1 == a4)
  {
    return 0;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
    goto LABEL_65;
  }

  v18 = a14;
  v20 = a9;
  v19 = a10;
  v21 = a3 + 16 * a4;
  v22 = *v21;
  v23 = *(v21 + 8);
  v69 = v22;
  v68 = v23;
  if (v22 != 8)
  {
    LOBYTE(v23) = 1;
  }

  v60 = result;
  v64 = a5 >> 1;
  if ((result & 0x100) != 0)
  {
    if ((v23 & 1) == 0)
    {
      v27 = &outlined read-only object #0 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
      goto LABEL_14;
    }

    v29 = result;
    type metadata accessor for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_18DDACA80;
    *(v30 + 32) = v29 & 1;
    *(v30 + 33) = 1;
    *(v30 + 34) = v29 & 1;
    *(v30 + 35) = 512;
    *(v30 + 37) = 1;
    v26 = (v30 + 38);
    v27 = v30;
    v28 = (v30 + 39);
  }

  else
  {
    if ((v23 & 1) == 0)
    {
      v27 = &outlined read-only object #1 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
      goto LABEL_14;
    }

    v24 = result;
    type metadata accessor for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18DDAB4C0;
    *(v25 + 32) = v24 & 1;
    *(v25 + 33) = 0;
    v26 = (v25 + 34);
    v27 = v25;
    v28 = (v25 + 35);
  }

  *v26 = 2;
  *v28 = 0;
LABEL_14:
  v31 = *(v27 + 2);
  v67 = a10;

  v66 = a14;
  v70 = a7;

  if (!v31)
  {

    v53 = a11;
LABEL_59:
    if (!__OFSUB__(v64, a4))
    {
      v54 = a4 + 1;
      if (!__OFADD__(a4, 1))
      {
        if (v64 >= v54)
        {
          if (v54 >= a4)
          {
            v55 = v53 & 0x10101;
            v56 = v67;

            v57 = v66;
            v58 = v70;

            swift_unknownObjectRetain();
            v59 = specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(v60 & 0x101, a2, a3, v54, a5, a6, v58, a8, v20, v19, v55, a12, a13, v18, a15);
            swift_unknownObjectRelease();

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            return v59;
          }

          goto LABEL_68;
        }

LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        return result;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v15 = 0;
  v32 = v27 + 33;
  do
  {
    if (v15)
    {
      goto LABEL_17;
    }

    v33 = *(v32 - 1);
    v34 = 0xD00000000000001BLL;
    if (!*v32)
    {
      v34 = 0x7261657070414955;
    }

    v35 = 0x800000018DD7CA20;
    if (!*v32)
    {
      v35 = 0xEF796E4165636E61;
    }

    v36 = 0xD00000000000001CLL;
    if (!*v32)
    {
      v36 = 0xD000000000000010;
    }

    v37 = "UIAppearanceHighContrastAny";
    if (!*v32)
    {
      v37 = "UIAppearanceHighContrastDark";
    }

    v38 = v37 | 0x8000000000000000;
    if (*v32)
    {
      v39 = 0xD00000000000001DLL;
    }

    else
    {
      v39 = 0xD000000000000011;
    }

    v40 = "UIAppearanceDark";
    if (!*v32)
    {
      v40 = "UIAppearanceHighContrastLight";
    }

    v41 = v40 | 0x8000000000000000;
    if (v33)
    {
      v39 = v36;
      v42 = v38;
    }

    else
    {
      v42 = v41;
    }

    if (v33 == 2)
    {
      v43 = v34;
    }

    else
    {
      v43 = v39;
    }

    if (v33 == 2)
    {
      v44 = v35;
    }

    else
    {
      v44 = v42;
    }

    v45 = MEMORY[0x193ABEC20](a8, v20);
    v46 = MEMORY[0x193ABEC20](v43, v44);
    v15 = [v70 colorWithName:v45 displayGamut:HIWORD(a11) & 1 deviceIdiom:a15 appearanceName:v46];

    if (!v15)
    {
LABEL_16:

      goto LABEL_17;
    }

    if (!v68)
    {

      if ([v15 idiom] == v69)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }

    if (!v69)
    {
      goto LABEL_16;
    }

    v47 = [v15 appearance];
    if (!v47)
    {

LABEL_51:

      v15 = 0;
      goto LABEL_17;
    }

    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    if (v49 == v43 && v51 == v44)
    {

      v20 = a9;
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v52 & 1) == 0)
      {

        v15 = 0;
      }

      v20 = a9;
    }

LABEL_17:
    v32 += 2;
    --v31;
  }

  while (v31);

  v18 = a14;
  v19 = a10;
  v53 = a11;
  if (!v15)
  {
    goto LABEL_59;
  }

  return v15;
}

uint64_t UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Optional();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v24 - v13;
  v25 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v24 - v18;
  v27 = a2;
  v28 = a4;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a2;
  v36 = a3;
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (v38 != 1)
  {
    return v37;
  }

  (*(v25 + 16))(v16, a1, a5);
  v20 = dispatch thunk of Sequence._copyContents(initializing:)();
  swift_getAssociatedConformanceWitness();
  v21 = v29;
  dispatch thunk of IteratorProtocol.next()();
  (*(v26 + 8))(v19, AssociatedTypeWitness);
  v22 = (*(*(v28 - 8) + 48))(v21, 1);
  result = (*(v30 + 8))(v21, v31);
  if (v22 == 1)
  {
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t Sequence.breadthFirstSearch<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v45 = a1;
  v46 = a2;
  v41 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = a4;
  SearchEvaluation = type metadata accessor for BreadthFirstSearchEvaluation();
  MEMORY[0x1EEE9AC00](SearchEvaluation);
  v13 = (v40 - v12);
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v40 - v16;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v40 - v19;
  v51[0] = AssociatedTypeWitness;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v22 = static Array._adoptStorage(_:count:)();
  v23[3] = a3;
  v23[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v7, a3);
  _finalizeUninitializedArray<A>(_:)();
  v51[0] = v22;
  v25 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v27 = specialized Deque.init<A>(_:)(v51, ExtendedExistentialTypeMetadata, v25, WitnessTable);

  v51[5] = v27;
  v43 = type metadata accessor for Deque();
  Deque.popFirst()();
  if (v49)
  {
    v28 = (v14 + 48);
    v29 = (v14 + 32);
    v30 = (v14 + 8);
    while (2)
    {
      outlined init with take of AnyTrackedValue(&v48, v51);
      v31 = __swift_project_boxed_opaque_existential_1(v51, v51[3]);
      v40[2] = v40;
      v32 = MEMORY[0x1EEE9AC00](v31);
      v40[1] = v40 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v32);
      v49 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v48);
      dispatch thunk of Sequence.makeIterator()();
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(&v48, v49);
        dispatch thunk of IteratorProtocol.next()();
        if ((*v28)(v20, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        (*v29)(v17, v20, AssociatedTypeWitness);
        v45(v17);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload != 1)
        {
          if (EnumCaseMultiPayload)
          {
            (*v30)(v17, AssociatedTypeWitness);

            (*(*(v42 - 8) + 56))(v41, 1, 1);
          }

          else
          {
            (*v30)(v17, AssociatedTypeWitness);

            v37 = v42;
            v38 = *(v42 - 8);
            v39 = v41;
            (*(v38 + 32))(v41, v13, v42);
            (*(v38 + 56))(v39, 0, 1, v37);
          }

          __swift_destroy_boxed_opaque_existential_1(&v48);
          return __swift_destroy_boxed_opaque_existential_1(v51);
        }

        outlined init with take of AnyTrackedValue(v13, v47);
        Deque.append(_:)();
        __swift_destroy_boxed_opaque_existential_1(v47);
        (*v30)(v17, AssociatedTypeWitness);
      }

      __swift_destroy_boxed_opaque_existential_1(&v48);
      __swift_destroy_boxed_opaque_existential_1(v51);
      Deque.popFirst()();
      if (v49)
      {
        continue;
      }

      break;
    }
  }

  if (v49)
  {
    __swift_destroy_boxed_opaque_existential_1(&v48);
  }

  return (*(*(v42 - 8) + 56))(v41, 1, 1);
}

uint64_t static BreadthFirstSearchEvaluation.continue.getter@<X0>(uint64_t a1@<X8>)
{
  EmptyCollection.init()();
  *(a1 + 24) = type metadata accessor for EmptyCollection();
  *(a1 + 32) = swift_getWitnessTable();
  type metadata accessor for BreadthFirstSearchEvaluation();

  return swift_storeEnumTagMultiPayload();
}

void _ss20ManagedBufferPointerVsRi__rlE25withUnsafeMutablePointersyqd_0_qd_0_SpyxG_Spyq_Gtqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = *(v19 + 64);
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v24 = *(*(v13 - 8) + 80);
  v25 = __CFADD__(v23, v24 + 1);
  v26 = v23 + v24 + 1;
  if (v25)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14(v12 + v20, v12 + ((v26 - 1) & ~v24), v17, v15);
  if (v9)
  {
    (*(v11 + 32))(a9, v17, a6);
  }
}

uint64_t closure #1 in Deque.init<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v12 = Deque._UnsafeHandle.buffer(for:)();
    v13 = MEMORY[0x193ABFE40](v12);
    v15 = v14;
    MEMORY[0x1EEE9AC00](v13);
    result = dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
    if (v17 == 1)
    {
      result = UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(a4, v13, v15, a5, a6, a7);
    }

    *(v16 + 8) = a3;
  }

  return result;
}

uint64_t closure #1 in closure #1 in Deque.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[1] = a2;
  v11[0] = a1;
  v8 = type metadata accessor for UnsafeBufferPointer();
  WitnessTable = swift_getWitnessTable();
  return UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(v11, a3, a4, a5, v8, WitnessTable);
}

uint64_t specialized Deque.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = dispatch thunk of Collection.count.getter();
  if (v8 <= 0)
  {

    return MEMORY[0x1EEDF5A00](a2);
  }

  else
  {
    v9 = v8;
    v10 = Deque._Storage.init(minimumCapacity:)();
    MEMORY[0x1EEE9AC00](v10);
    v15[8] = a2;
    v15[9] = a3;
    v15[10] = a4;
    v15[11] = v9;
    v15[12] = a1;
    MEMORY[0x1EEE9AC00](v11);
    v15[2] = a2;
    v15[3] = partial apply for closure #1 in Deque.init<A>(_:);
    v15[4] = v12;
    v13 = type metadata accessor for Error();

    _ss20ManagedBufferPointerVsRi__rlE25withUnsafeMutablePointersyqd_0_qd_0_SpyxG_Spyq_Gtqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Deque._Storage.update<A>(_:), v15, v10, MEMORY[0x1E6995658], a2, v13, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v16);

    return v10;
  }
}

uint64_t type metadata completion function for BreadthFirstSearchEvaluation()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for BreadthFirstSearchEvaluation(char *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= 0x28uLL)
  {
    v5 = 40;
  }

  else
  {
    v5 = *(*(*(a3 + 24) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));

    return v3;
  }

  v9 = a2[v5];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_24;
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

    v13 = (v12 | (v10 << (8 * v5))) + 2;
    v9 = v12 + 2;
    if (v5 < 4)
    {
      v9 = v13;
    }
  }

LABEL_24:
  if (v9 == 1)
  {
    v14 = *(a2 + 24);
    *(__dst + 24) = v14;
    (**(v14 - 8))(__dst);
    v3[v5] = 1;
    return v3;
  }

  if (!v9)
  {
    (*(v4 + 16))(__dst);
    v3[v5] = 0;
    return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *destroy for BreadthFirstSearchEvaluation(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= 0x28)
  {
    v2 = 40;
  }

  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *result;
    }

    else if (v5 == 2)
    {
      v6 = *result;
    }

    else if (v5 == 3)
    {
      v6 = *result | (result[2] << 16);
    }

    else
    {
      v6 = *result;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  if (!v3)
  {
    return (*(*(*(a2 + 24) - 8) + 8))();
  }

  return result;
}